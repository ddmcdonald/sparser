

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
e38   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 by 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV952 :ISA POLAR-QUESTION :STATEMENT MV951)
 (:VAR MV951 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV949 :EVENT MV945)
 (:VAR MV949 :ISA WH-QUESTION :STATEMENT MV946 :WH IF)
 (:VAR MV946 :ISA INCREASE :AGENT-OR-CAUSE MV933 :CAUSE MV944
  :AFFECTED-PROCESS-OR-OBJECT MV937 :RAW-TEXT "increase")
 (:VAR MV933 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV944 :ISA MEASUREMENT :NUMBER MV941) (:VAR MV941 :ISA NUMBER :VALUE 10)
 (:VAR MV937 :ISA BIO-AMOUNT :MEASURED-ITEM MV928 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV928 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV945 :ISA VANISH :AGENT MV930 :RAW-TEXT "vanish")
 (:VAR MV930 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
104: "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"

                    SOURCE-START
e34   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
 (:VAR MV974 :ISA POLAR-QUESTION :STATEMENT MV973)
 (:VAR MV973 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV971 :EVENT MV968)
 (:VAR MV971 :ISA WH-QUESTION :STATEMENT MV969 :WH IF)
 (:VAR MV969 :ISA INCREASE :AGENT-OR-CAUSE MV959 :CAUSE MV967 :OBJECT MV954
  :RAW-TEXT "increase")
 (:VAR MV959 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV967 :ISA MEASUREMENT :NUMBER MV964) (:VAR MV964 :ISA NUMBER :VALUE 10)
 (:VAR MV954 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV968 :ISA VANISH :AGENT MV953 :RAW-TEXT "vanish")
 (:VAR MV953 :ISA PROTEIN :PREDICATION MV956 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV956 :ISA PHOSPHORYLATE :SUBSTRATE MV953 :RAW-TEXT "phosphorylated"))

___________________
105: "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e42   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV1000 :ISA POLAR-QUESTION :STATEMENT MV999)
 (:VAR MV999 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV997 :EVENT MV993)
 (:VAR MV997 :ISA WH-QUESTION :STATEMENT MV994 :WH IF)
 (:VAR MV994 :ISA INCREASE :AGENT-OR-CAUSE MV981 :CAUSE MV992
  :AFFECTED-PROCESS-OR-OBJECT MV985 :RAW-TEXT "increase")
 (:VAR MV981 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV992 :ISA MEASUREMENT :NUMBER MV989) (:VAR MV989 :ISA NUMBER :VALUE 10)
 (:VAR MV985 :ISA BIO-AMOUNT :MEASURED-ITEM MV976 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV976 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV993 :ISA VANISH :AGENT MV975 :RAW-TEXT "vanish")
 (:VAR MV975 :ISA PROTEIN :PREDICATION MV978 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV978 :ISA PHOSPHORYLATE :SUBSTRATE MV975 :RAW-TEXT "phosphorylated"))

___________________
106: "Does the amount of phosphorylated MAPK1 ever increase?"

                    SOURCE-START
e21   INCREASE      1 "Does the amount of phosphorylated MAPK1 ever increase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 ever increase?"
 (:VAR MV1012 :ISA POLAR-QUESTION :STATEMENT MV1010)
 (:VAR MV1010 :ISA INCREASE :CAUSE MV1004 :ADVERB MV1007 :RAW-TEXT "increase")
 (:VAR MV1004 :ISA BIO-AMOUNT :MEASURED-ITEM MV1001 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1001 :ISA PROTEIN :PREDICATION MV1006 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1006 :ISA PHOSPHORYLATE :SUBSTRATE MV1001 :RAW-TEXT "phosphorylated")
 (:VAR MV1007 :ISA EVER :NAME "ever"))

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
 (:VAR MV1034 :ISA POLAR-QUESTION :STATEMENT MV1033)
 (:VAR MV1033 :ISA SUSTAINED :PARTICIPANT MV1029 :PAST "PAST")
 (:VAR MV1029 :ISA PROTEIN :PREDICATION MV1031 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1031 :ISA BINDING :DIRECT-BINDEE MV1029 :BINDER MV1028 :RAW-TEXT
  "bound")
 (:VAR MV1028 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
110: "Is phosphorylated MAPK1 always high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 always high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 always high?"
 (:VAR MV1041 :ISA POLAR-QUESTION :STATEMENT MV1040)
 (:VAR MV1040 :ISA COPULAR-PREDICATION :ITEM MV1035 :VALUE MV1039 :PREDICATE
  MV1036)
 (:VAR MV1035 :ISA PROTEIN :PREDICATION MV1037 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1037 :ISA PHOSPHORYLATE :SUBSTRATE MV1035 :RAW-TEXT "phosphorylated")
 (:VAR MV1039 :ISA HIGH :ADVERB MV1038)
 (:VAR MV1038 :ISA ALWAYS :NAME "always") (:VAR MV1036 :ISA BE))

___________________
111: "Is phosphorylated MAPK1 eventually high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 eventually high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 eventually high?"
 (:VAR MV1048 :ISA POLAR-QUESTION :STATEMENT MV1047)
 (:VAR MV1047 :ISA COPULAR-PREDICATION :ITEM MV1042 :VALUE MV1046 :PREDICATE
  MV1043)
 (:VAR MV1042 :ISA PROTEIN :PREDICATION MV1044 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1044 :ISA PHOSPHORYLATE :SUBSTRATE MV1042 :RAW-TEXT "phosphorylated")
 (:VAR MV1046 :ISA HIGH :ADVERB MV1045)
 (:VAR MV1045 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1043 :ISA BE))

___________________
112: "Is phosphorylated MAPK1 ever high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 ever high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 ever high?"
 (:VAR MV1055 :ISA POLAR-QUESTION :STATEMENT MV1054)
 (:VAR MV1054 :ISA COPULAR-PREDICATION :ITEM MV1049 :VALUE MV1053 :PREDICATE
  MV1050)
 (:VAR MV1049 :ISA PROTEIN :PREDICATION MV1051 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1051 :ISA PHOSPHORYLATE :SUBSTRATE MV1049 :RAW-TEXT "phosphorylated")
 (:VAR MV1053 :ISA HIGH :ADVERB MV1052) (:VAR MV1052 :ISA EVER :NAME "ever")
 (:VAR MV1050 :ISA BE))

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
 (:VAR MV1071 :ISA POLAR-QUESTION :STATEMENT MV1070)
 (:VAR MV1070 :ISA COPULAR-PREDICATION :ITEM MV1066 :VALUE MV1069 :PREDICATE
  MV1067)
 (:VAR MV1066 :ISA PROTEIN :PREDICATION MV1068 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1068 :ISA PHOSPHORYLATE :SUBSTRATE MV1066 :RAW-TEXT "phosphorylated")
 (:VAR MV1069 :ISA HIGH) (:VAR MV1067 :ISA BE))

___________________
115: "Is phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e19   SUSTAINED     1 "Is phosphorylated MAPK1 sustained at a high level" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1083 :ISA POLAR-QUESTION :STATEMENT MV1082)
 (:VAR MV1082 :ISA SUSTAINED :LEVEL MV1080 :PAST "PAST")
 (:VAR MV1080 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1079 :RAW-TEXT
  "level")
 (:VAR MV1079 :ISA HIGH))

___________________
116: "Is phosphorylated MAPK1 sustained?"

                    SOURCE-START
e9    SUSTAINED     1 "Is phosphorylated MAPK1 sustained" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained?"
 (:VAR MV1089 :ISA POLAR-QUESTION :STATEMENT MV1088)
 (:VAR MV1088 :ISA SUSTAINED :PARTICIPANT MV1084 :PAST "PAST")
 (:VAR MV1084 :ISA PROTEIN :PREDICATION MV1086 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1086 :ISA PHOSPHORYLATE :SUBSTRATE MV1084 :RAW-TEXT "phosphorylated"))

___________________
117: "Is phosphorylated MAPK1 transient?"

                    SOURCE-START
e9    COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 transient" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 transient?"
 (:VAR MV1095 :ISA POLAR-QUESTION :STATEMENT MV1094)
 (:VAR MV1094 :ISA COPULAR-PREDICATION :ITEM MV1090 :VALUE MV1093 :PREDICATE
  MV1091)
 (:VAR MV1090 :ISA PROTEIN :PREDICATION MV1092 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1092 :ISA PHOSPHORYLATE :SUBSTRATE MV1090 :RAW-TEXT "phosphorylated")
 (:VAR MV1093 :ISA TRANSIENT) (:VAR MV1091 :ISA BE))

___________________
118: "Is the MAP2K1-MAPK1 complex ever high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the MAP2K1-MAPK1 complex ever high" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex ever high?"
 (:VAR MV1106 :ISA POLAR-QUESTION :STATEMENT MV1105)
 (:VAR MV1105 :ISA COPULAR-PREDICATION :ITEM MV1104 :VALUE MV1102 :PREDICATE
  MV1098)
 (:VAR MV1104 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV1097 :COMPONENT MV1096)
 (:VAR MV1097 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1096 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV1102 :ISA HIGH :ADVERB MV1101) (:VAR MV1101 :ISA EVER :NAME "ever")
 (:VAR MV1098 :ISA BE))

___________________
119: "Is the MAP2K1-MAPK1 complex formed?"

                    SOURCE-START
e14   BIO-FORM      1 "Is the MAP2K1-MAPK1 complex formed" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex formed?"
 (:VAR MV1115 :ISA POLAR-QUESTION :STATEMENT MV1112)
 (:VAR MV1112 :ISA BIO-FORM :AGENT MV1114 :PAST "PAST" :RAW-TEXT "formed")
 (:VAR MV1114 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV1108 :COMPONENT MV1107)
 (:VAR MV1108 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1107 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
120: "Is the amount of FOS always low if we increase ELK1 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Is the amount of FOS always low if we increase " 11
e24   MEASUREMENT   11 "ELK1 10 fold" 15
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
e37   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 by 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
 (:VAR MV1164 :ISA POLAR-QUESTION :STATEMENT MV1163)
 (:VAR MV1163 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1159 :EVENT MV1161)
 (:VAR MV1159 :ISA WH-QUESTION :STATEMENT MV1151 :WH IF)
 (:VAR MV1151 :ISA INCREASE :AGENT-OR-CAUSE MV1149 :CAUSE MV1157 :OBJECT MV1140
  :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1149 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1157 :ISA MEASUREMENT :NUMBER MV1154)
 (:VAR MV1154 :ISA NUMBER :VALUE 100)
 (:VAR MV1140 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1161 :ISA COPULAR-PREDICATION :ITEM MV1143 :VALUE MV1147 :PREDICATE
  MV1141)
 (:VAR MV1143 :ISA BIO-AMOUNT :MEASURED-ITEM MV1145 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1145 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1147 :ISA LOW :ADVERB MV1146) (:VAR MV1146 :ISA ALWAYS :NAME "always")
 (:VAR MV1141 :ISA BE))

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
e45   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
 (:VAR MV1221 :ISA POLAR-QUESTION :STATEMENT MV1220)
 (:VAR MV1220 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1216 :EVENT MV1218)
 (:VAR MV1216 :ISA WH-QUESTION :STATEMENT MV1204 :WH IF)
 (:VAR MV1204 :ISA INCREASE :AGENT-OR-CAUSE MV1202 :CAUSE MV1213
  :AFFECTED-PROCESS-OR-OBJECT MV1206 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1202 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1213 :ISA MEASUREMENT :NUMBER MV1210)
 (:VAR MV1210 :ISA NUMBER :VALUE 100)
 (:VAR MV1206 :ISA BIO-AMOUNT :MEASURED-ITEM MV1193 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1193 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1218 :ISA COPULAR-PREDICATION :ITEM MV1196 :VALUE MV1200 :PREDICATE
  MV1194)
 (:VAR MV1196 :ISA BIO-AMOUNT :MEASURED-ITEM MV1198 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1198 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1200 :ISA HIGH :ADVERB MV1199) (:VAR MV1199 :ISA EVER :NAME "ever")
 (:VAR MV1194 :ISA BE))

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
 (:VAR MV1242 :ISA POLAR-QUESTION :STATEMENT MV1241)
 (:VAR MV1241 :ISA COPULAR-PREDICATION :ITEM MV1235 :VALUE MV1239 :PREDICATE
  MV1233)
 (:VAR MV1235 :ISA BIO-AMOUNT :MEASURED-ITEM MV1232 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1232 :ISA PROTEIN :PREDICATION MV1237 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1237 :ISA PHOSPHORYLATE :SUBSTRATE MV1232 :RAW-TEXT "phosphorylated")
 (:VAR MV1239 :ISA HIGH :ADVERB MV1238)
 (:VAR MV1238 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1233 :ISA BE))

___________________
126: "Is the amount of phosphorylated MAPK1 ever high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 ever high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever high?"
 (:VAR MV1253 :ISA POLAR-QUESTION :STATEMENT MV1252)
 (:VAR MV1252 :ISA COPULAR-PREDICATION :ITEM MV1246 :VALUE MV1250 :PREDICATE
  MV1244)
 (:VAR MV1246 :ISA BIO-AMOUNT :MEASURED-ITEM MV1243 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1243 :ISA PROTEIN :PREDICATION MV1248 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1248 :ISA PHOSPHORYLATE :SUBSTRATE MV1243 :RAW-TEXT "phosphorylated")
 (:VAR MV1250 :ISA HIGH :ADVERB MV1249) (:VAR MV1249 :ISA EVER :NAME "ever")
 (:VAR MV1244 :ISA BE))

___________________
127: "Is the amount of phosphorylated MAPK1 ever increasing?"

                    SOURCE-START
e20   INCREASE      1 "Is the amount of phosphorylated MAPK1 ever increasing" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever increasing?"
 (:VAR MV1264 :ISA POLAR-QUESTION :STATEMENT MV1262)
 (:VAR MV1262 :ISA INCREASE :CAUSE MV1257 :ADVERB MV1260 :RAW-TEXT
  "increasing")
 (:VAR MV1257 :ISA BIO-AMOUNT :MEASURED-ITEM MV1254 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1254 :ISA PROTEIN :PREDICATION MV1259 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1259 :ISA PHOSPHORYLATE :SUBSTRATE MV1254 :RAW-TEXT "phosphorylated")
 (:VAR MV1260 :ISA EVER :NAME "ever"))

___________________
128: "Is the amount of phosphorylated MAPK1 high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 high" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 high?"
 (:VAR MV1274 :ISA POLAR-QUESTION :STATEMENT MV1273)
 (:VAR MV1273 :ISA COPULAR-PREDICATION :ITEM MV1268 :VALUE MV1271 :PREDICATE
  MV1266)
 (:VAR MV1268 :ISA BIO-AMOUNT :MEASURED-ITEM MV1265 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1265 :ISA PROTEIN :PREDICATION MV1270 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1270 :ISA PHOSPHORYLATE :SUBSTRATE MV1265 :RAW-TEXT "phosphorylated")
 (:VAR MV1271 :ISA HIGH) (:VAR MV1266 :ISA BE))

___________________
129: "Is the amount of phosphorylated MAPK1 sometimes high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 sometimes high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sometimes high?"
 (:VAR MV1285 :ISA POLAR-QUESTION :STATEMENT MV1284)
 (:VAR MV1284 :ISA COPULAR-PREDICATION :ITEM MV1278 :VALUE MV1282 :PREDICATE
  MV1276)
 (:VAR MV1278 :ISA BIO-AMOUNT :MEASURED-ITEM MV1275 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1275 :ISA PROTEIN :PREDICATION MV1280 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1280 :ISA PHOSPHORYLATE :SUBSTRATE MV1275 :RAW-TEXT "phosphorylated")
 (:VAR MV1282 :ISA HIGH :ADVERB MV1281) (:VAR MV1281 :ISA SOMETIMES)
 (:VAR MV1276 :ISA BE))

___________________
130: "Is the amount of phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e27   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained at a high level" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1300 :ISA POLAR-QUESTION :STATEMENT MV1293)
 (:VAR MV1293 :ISA SUSTAINED :THEME MV1289 :LEVEL MV1297 :PAST "PAST")
 (:VAR MV1289 :ISA BIO-AMOUNT :MEASURED-ITEM MV1286 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1286 :ISA PROTEIN :PREDICATION MV1291 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1291 :ISA PHOSPHORYLATE :SUBSTRATE MV1286 :RAW-TEXT "phosphorylated")
 (:VAR MV1297 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1296 :RAW-TEXT
  "level")
 (:VAR MV1296 :ISA HIGH))

___________________
131: "Is the amount of phosphorylated MAPK1 sustained?"

                    SOURCE-START
e17   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained?"
 (:VAR MV1310 :ISA POLAR-QUESTION :STATEMENT MV1308)
 (:VAR MV1308 :ISA SUSTAINED :PARTICIPANT MV1304 :PAST "PAST")
 (:VAR MV1304 :ISA BIO-AMOUNT :MEASURED-ITEM MV1301 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1301 :ISA PROTEIN :PREDICATION MV1306 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1306 :ISA PHOSPHORYLATE :SUBSTRATE MV1301 :RAW-TEXT "phosphorylated"))

___________________
132: "Is the amount of phosphorylated MAPK1 transient?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 transient" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 transient?"
 (:VAR MV1320 :ISA POLAR-QUESTION :STATEMENT MV1319)
 (:VAR MV1319 :ISA COPULAR-PREDICATION :ITEM MV1314 :VALUE MV1317 :PREDICATE
  MV1312)
 (:VAR MV1314 :ISA BIO-AMOUNT :MEASURED-ITEM MV1311 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1311 :ISA PROTEIN :PREDICATION MV1316 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1316 :ISA PHOSPHORYLATE :SUBSTRATE MV1311 :RAW-TEXT "phosphorylated")
 (:VAR MV1317 :ISA TRANSIENT) (:VAR MV1312 :ISA BE))

___________________
133: "Will the amount of phosphorylated MAPK1 be high?"

                    SOURCE-START
e20   COPULAR-PREDICATION 1 "Will the amount of phosphorylated MAPK1 be high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Will the amount of phosphorylated MAPK1 be high?"
 (:VAR MV1331 :ISA POLAR-QUESTION :STATEMENT MV1329)
 (:VAR MV1329 :ISA COPULAR-PREDICATION :ITEM MV1324 :VALUE MV1328 :PREDICATE
  MV1327)
 (:VAR MV1324 :ISA BIO-AMOUNT :MEASURED-ITEM MV1321 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1321 :ISA PROTEIN :PREDICATION MV1326 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1326 :ISA PHOSPHORYLATE :SUBSTRATE MV1321 :RAW-TEXT "phosphorylated")
 (:VAR MV1328 :ISA HIGH) (:VAR MV1327 :ISA BE :MODAL "WILL"))

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
e40   EVENT-RELATION  1 "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
 (:VAR MV1382 :ISA POLAR-QUESTION :STATEMENT MV1381)
 (:VAR MV1381 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1378 :EVENT MV1379)
 (:VAR MV1378 :ISA WH-QUESTION :STATEMENT MV1375 :WH IF)
 (:VAR MV1375 :ISA INCREASE :AFFECTED-PROCESS-OR-OBJECT MV1364 :CAUSE MV1373
  :RAW-TEXT "increased")
 (:VAR MV1364 :ISA BIO-AMOUNT :MEASURED-ITEM MV1357 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1357 :ISA MOLECULE :RAW-TEXT "SB525334" :NAME "sb525334" :UID
  "PCID:9967941")
 (:VAR MV1373 :ISA MEASUREMENT :NUMBER MV1370)
 (:VAR MV1370 :ISA NUMBER :VALUE 100)
 (:VAR MV1379 :ISA COPULAR-PREDICATION :ITEM MV1356 :VALUE MV1361 :PREDICATE
  MV1358)
 (:VAR MV1356 :ISA PROTEIN :PREDICATION MV1359 :RAW-TEXT "TGFBR1" :UID
  "UP:P36897" :NAME "TGFR1_HUMAN")
 (:VAR MV1359 :ISA ACTIVE) (:VAR MV1361 :ISA LOW :ADVERB MV1360)
 (:VAR MV1360 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1358 :ISA BE))

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
 (:VAR MV1449 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1443 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1443 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV1446 :THEME
  MV1447 :PRESENT "PRESENT")
 (:VAR MV1446 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173")
 (:VAR MV1447 :ISA COLLECTION :RAW-TEXT "AKT1 and MAPK1" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV1441 MV1442))
 (:VAR MV1441 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1442 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
139: "FEN1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "FEN1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("FEN1 phosphorylates AKT1."
 (:VAR MV1452 :ISA PHOSPHORYLATE :AGENT MV1450 :SUBSTRATE MV1451 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1450 :ISA PROTEIN :RAW-TEXT "FEN1" :UID "UP:P39748" :NAME
  "FEN1_HUMAN")
 (:VAR MV1451 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
140: "Move all into mitochondrion."

                    SOURCE-START
e7    MOVE-SOMETHING-SOMEWHERE  1 "Move all into mitochondrion" 5
                    PERIOD
                    END-OF-SOURCE
("Move all into mitochondrion."
 (:VAR MV1453 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV1456 :THEME
  MV1458 :PRESENT "PRESENT")
 (:VAR MV1456 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173")
 (:VAR MV1458 :ISA ALL :WORD "all"))

___________________
141: "AKT1 phosphorylates MAPK1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("AKT1 phosphorylates MAPK1."
 (:VAR MV1461 :ISA PHOSPHORYLATE :AGENT MV1459 :SUBSTRATE MV1460 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1459 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1460 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
142: "Let's highlight the upstream of phosphorylated MAPK1."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's highlight the upstream of phosphorylated MAPK1" 11
                    PERIOD
                    END-OF-SOURCE
("Let's highlight the upstream of phosphorylated MAPK1."
 (:VAR MV1471 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1464 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1464 :ISA HIGHLIGHT :THEME MV1466 :PRESENT "PRESENT")
 (:VAR MV1466 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1463 :HAS-DETERMINER
  "THE" :RAW-TEXT "upstream")
 (:VAR MV1463 :ISA PROTEIN :PREDICATION MV1469 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1469 :ISA PHOSPHORYLATE :SUBSTRATE MV1463 :RAW-TEXT "phosphorylated"))

___________________
143: "Let's show phosphorylated MAPK1 on the top."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's show phosphorylated MAPK1 on the top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show phosphorylated MAPK1 on the top."
 (:VAR MV1480 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1474 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1474 :ISA SHOW :AT-RELATIVE-LOCATION MV1478 :STATEMENT-OR-THEME MV1473
  :PRESENT "PRESENT")
 (:VAR MV1478 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV1473 :ISA PROTEIN :PREDICATION MV1475 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1475 :ISA PHOSPHORYLATE :SUBSTRATE MV1473 :RAW-TEXT "phosphorylated"))

___________________
144: "Let's show the downstream of AKT1 on the top."

                    SOURCE-START
e23   EXPLICIT-SUGGESTION 1 "Let's show the downstream of AKT1 on the top" 13
                    PERIOD
                    END-OF-SOURCE
("Let's show the downstream of AKT1 on the top."
 (:VAR MV1493 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1483 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1483 :ISA SHOW :AT-RELATIVE-LOCATION MV1490 :STATEMENT-OR-THEME MV1485
  :PRESENT "PRESENT")
 (:VAR MV1490 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV1485 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV1482 :HAS-DETERMINER
  "THE" :RAW-TEXT "downstream")
 (:VAR MV1482 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
145: "Let's move mitochondrion elements to the top."

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's move mitochondrion elements to the top" 10
                    PERIOD
                    END-OF-SOURCE
("Let's move mitochondrion elements to the top."
 (:VAR MV1502 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1495 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1495 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV1500 :THEME MV1497 :PRESENT
  "PRESENT")
 (:VAR MV1500 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV1497 :ISA ELEMENT :MODIFIER MV1496)
 (:VAR MV1496 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173"))

___________________
146: "How does BRAF affect MAPK1?"

                    SOURCE-START
e8    AFFECT        1 "How does BRAF affect MAPK1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does BRAF affect MAPK1?"
 (:VAR MV1507 :ISA AFFECT :MANNER MV1504 :AGENT MV1506 :OBJECT MV1503 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1504 :ISA HOW)
 (:VAR MV1506 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1503 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
147: "How does MAPK1 affect BRAF?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect BRAF?"
 (:VAR MV1511 :ISA AFFECT :MANNER MV1509 :AGENT MV1508 :OBJECT MV1512 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1509 :ISA HOW)
 (:VAR MV1508 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1512 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
148: "What is the path between BRAF and MAPK1?"

                    SOURCE-START
e15   BE            1 "What is the path between BRAF and MAPK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the path between BRAF and MAPK1?"
 (:VAR MV1515 :ISA BE :SUBJECT MV1514 :PREDICATE MV1517 :PRESENT "PRESENT")
 (:VAR MV1514 :ISA WHAT)
 (:VAR MV1517 :ISA PATH :ENDPOINTS MV1521 :HAS-DETERMINER "THE")
 (:VAR MV1521 :ISA COLLECTION :RAW-TEXT "BRAF and MAPK1" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV1519 MV1513))
 (:VAR MV1519 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1513 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
149: "How does MAPK1 affect JUND?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect JUND" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect JUND?"
 (:VAR MV1526 :ISA AFFECT :MANNER MV1524 :AGENT MV1523 :OBJECT MV1527 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1524 :ISA HOW)
 (:VAR MV1523 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1527 :ISA PROTEIN :RAW-TEXT "JUND" :UID "UP:P17535" :NAME
  "JUND_HUMAN"))

___________________
150: "How does SETDB1 affect ADAM17?"

                    SOURCE-START
e9    AFFECT        1 "How does SETDB1 affect ADAM17" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does SETDB1 affect ADAM17?"
 (:VAR MV1532 :ISA AFFECT :MANNER MV1530 :AGENT MV1528 :OBJECT MV1529 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1530 :ISA HOW)
 (:VAR MV1528 :ISA PROTEIN :RAW-TEXT "SETDB1" :UID "UP:Q15047" :NAME
  "SETB1_HUMAN")
 (:VAR MV1529 :ISA PROTEIN :RAW-TEXT "ADAM17" :UID "UP:P78536" :NAME
  "ADA17_HUMAN"))

___________________
151: "How does KRAS affect MAPK3?"

                    SOURCE-START
e8    AFFECT        1 "How does KRAS affect MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS affect MAPK3?"
 (:VAR MV1537 :ISA AFFECT :MANNER MV1534 :AGENT MV1536 :OBJECT MV1533 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1534 :ISA HOW)
 (:VAR MV1536 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV1533 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
152: "How does  ITGAV affect ILK?"

                    SOURCE-START
e7    AFFECT        1 "How does  ITGAV affect ILK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does  ITGAV affect ILK?"
 (:VAR MV1541 :ISA AFFECT :MANNER MV1538 :AGENT MV1540 :OBJECT MV1542 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1538 :ISA HOW)
 (:VAR MV1540 :ISA PROTEIN :RAW-TEXT "ITGAV" :UID "UP:P06756" :NAME
  "ITAV_HUMAN")
 (:VAR MV1542 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

___________________
153: "What genes does MAPK1 phosphorylate?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "What genes does MAPK1 phosphorylate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does MAPK1 phosphorylate?"
 (:VAR MV1547 :ISA PHOSPHORYLATE :AMINO-ACID MV1545 :AGENT MV1543 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV1545 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1543 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
154: "What pathways affect BRAF?"

                    SOURCE-START
e6    AFFECT        1 "What pathways affect BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways affect BRAF?"
 (:VAR MV1550 :ISA AFFECT :AGENT MV1549 :OBJECT MV1551 :PRESENT "PRESENT"
  :RAW-TEXT "affect")
 (:VAR MV1549 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV1551 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
155: "What genes activate ILK?"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "What genes activate ILK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes activate ILK?"
 (:VAR MV1554 :ISA BIO-ACTIVATE :AGENT MV1553 :OBJECT MV1555 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV1553 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1555 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

___________________
156: "Let's learn about AKT1 in ovarian cancer."

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's learn about AKT1 in ovarian cancer" 11
                    PERIOD
                    END-OF-SOURCE
("Let's learn about AKT1 in ovarian cancer."
 (:VAR MV1564 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1559 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1559 :ISA LEARNING :STATEMENT MV1557 :PRESENT "PRESENT")
 (:VAR MV1557 :ISA PROTEIN :CONTEXT MV1558 :RAW-TEXT "AKT1" :UID "UP:P31749"
  :NAME "AKT1_HUMAN")
 (:VAR MV1558 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223"))

___________________
157: "What is its relationship with BRAF?"

                    SOURCE-START
e10   BE            1 "What is its relationship with BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is its relationship with BRAF?"
 (:VAR MV1566 :ISA BE :SUBJECT MV1565 :PREDICATE MV1568 :PRESENT "PRESENT")
 (:VAR MV1565 :ISA WHAT)
 (:VAR MV1568 :ISA RELATIONSHIP :PATIENT MV1570 :MODIFIER MV1567)
 (:VAR MV1570 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1567 :ISA PRONOUN/INANIMATE :WORD "its"))

___________________
158: "What is its relationship with PTPN1?"

                    SOURCE-START
e11   BE            1 "What is its relationship with PTPN1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What is its relationship with PTPN1?"
 (:VAR MV1574 :ISA BE :SUBJECT MV1573 :PREDICATE MV1576 :PRESENT "PRESENT")
 (:VAR MV1573 :ISA WHAT)
 (:VAR MV1576 :ISA RELATIONSHIP :PATIENT MV1572 :MODIFIER MV1575)
 (:VAR MV1572 :ISA PROTEIN :RAW-TEXT "PTPN1" :UID "UP:P18031" :NAME
  "PTN1_HUMAN")
 (:VAR MV1575 :ISA PRONOUN/INANIMATE :WORD "its"))

___________________
159: "AKT1 phosphorylates IFT140. "

                    SOURCE-START
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates IFT140" 6
                    PERIOD
                    END-OF-SOURCE
("AKT1 phosphorylates IFT140."
 (:VAR MV1581 :ISA PHOSPHORYLATE :AGENT MV1579 :SUBSTRATE MV1580 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1579 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1580 :ISA PROTEIN :RAW-TEXT "IFT140" :UID "UP:Q96RY7" :NAME
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
 (:VAR MV1600 :ISA BE :SUBJECT MV1599 :PREDICATE MV1603 :PRESENT "PRESENT")
 (:VAR MV1599 :ISA WHAT)
 (:VAR MV1603 :ISA RESPONSE :BENEFICIARY MV1605 :HAS-DETERMINER "THE" :MODIFIER
  MV1602 :RAW-TEXT "response")
 (:VAR MV1605 :ISA CELL-TYPE :MUTATION MV1607)
 (:VAR MV1607 :ISA ALTER :OBJECT MV1598 :AGENT-OR-OBJECT MV1598 :RAW-TEXT
  "alterations")
 (:VAR MV1598 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1602 :ISA DRUG :RAW-TEXT "drug"))

___________________
163: "What is the drug response for cells with TP53 alterations?"

                    SOURCE-START
e21   BE            1 "What is the drug response for cells with TP53 alterations" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the drug response for cells with TP53 alterations?"
 (:VAR MV1612 :ISA BE :SUBJECT MV1611 :PREDICATE MV1615 :PRESENT "PRESENT")
 (:VAR MV1611 :ISA WHAT)
 (:VAR MV1615 :ISA RESPONSE :CELL-TYPE MV1617 :HAS-DETERMINER "THE" :MODIFIER
  MV1614 :RAW-TEXT "response")
 (:VAR MV1617 :ISA CELL-TYPE :MUTATION MV1619)
 (:VAR MV1619 :ISA ALTER :OBJECT MV1610 :AGENT-OR-OBJECT MV1610 :RAW-TEXT
  "alterations")
 (:VAR MV1610 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1614 :ISA DRUG :RAW-TEXT "drug"))

___________________
164: "What is the mutation frequency of EGFR in glioblastoma?"

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
165: "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1636 :ISA BE :SUBJECT MV1635 :PREDICATE MV1639 :PRESENT "PRESENT")
 (:VAR MV1635 :ISA WHAT)
 (:VAR MV1639 :ISA FREQUENCY :MEASURED-ITEM MV1633 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV1638 :RAW-TEXT "frequency")
 (:VAR MV1633 :ISA PROTEIN :CONTEXT MV1634 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV1634 :ISA CANCER :NAME "ovarian serous cystadenocarcinoma" :UID
  "NCIT:C7978")
 (:VAR MV1638 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
166: "Show me the mutations of PTEN and BRAF in ovarian cancer."

                    SOURCE-START
e21   SHOW          1 "Show me the mutations of PTEN and BRAF in ovarian cancer" 12
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN and BRAF in ovarian cancer."
 (:VAR MV1645 :ISA SHOW :STATEMENT-OR-THEME MV1648 :BENEFICIARY MV1646 :PRESENT
  "PRESENT")
 (:VAR MV1648 :ISA MUTATION :OBJECT MV1654 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1654 :ISA COLLECTION :CONTEXT MV1644 :RAW-TEXT "PTEN and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV1650 MV1652))
 (:VAR MV1644 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV1650 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV1652 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1646 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
167: "Show me the mutations of PTEN in ovarian cancer."

                    SOURCE-START
e18   SHOW          1 "Show me the mutations of PTEN in ovarian cancer" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN in ovarian cancer."
 (:VAR MV1658 :ISA SHOW :STATEMENT-OR-THEME MV1661 :BENEFICIARY MV1659 :PRESENT
  "PRESENT")
 (:VAR MV1661 :ISA MUTATION :OBJECT MV1663 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1663 :ISA PROTEIN :CONTEXT MV1657 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1657 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV1659 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
168: "What are the mutations of PTEN in ovarian cancer?"

                    SOURCE-START
e18   BE            1 "What are the mutations of PTEN in ovarian cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in ovarian cancer?"
 (:VAR MV1669 :ISA BE :SUBJECT MV1668 :PREDICATE MV1671 :PRESENT "PRESENT")
 (:VAR MV1668 :ISA WHAT)
 (:VAR MV1671 :ISA MUTATION :OBJECT MV1673 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1673 :ISA PROTEIN :CONTEXT MV1667 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1667 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223"))

___________________
169: "What is the most likely cellular location of AKT1 and BRAF?"

                    SOURCE-START
e23   BE            1 "What is the most likely cellular location of AKT1 and BRAF" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1 and BRAF?"
 (:VAR MV1679 :ISA BE :SUBJECT MV1678 :PREDICATE MV1691 :PRESENT "PRESENT")
 (:VAR MV1678 :ISA WHAT)
 (:VAR MV1691 :ISA QUALITY-PREDICATE :ITEM MV1689 :ATTRIBUTE MV1685)
 (:VAR MV1689 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1677 MV1688))
 (:VAR MV1677 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1688 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1685 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV1683
  :MODIFIER MV1684)
 (:VAR MV1683 :ISA LIKELY :COMPARATIVE MV1681)
 (:VAR MV1681 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV1684 :ISA CELLULAR :NAME "cellular"))

___________________
170: "Are there common upstreams of AKT1 and BRAF?"

                    SOURCE-START
e18   THERE-EXISTS  1 "Are there common upstreams of AKT1 and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1 and BRAF?"
 (:VAR MV1704 :ISA POLAR-QUESTION :STATEMENT MV1701)
 (:VAR MV1701 :ISA THERE-EXISTS :VALUE MV1697 :PREDICATE MV1694)
 (:VAR MV1697 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1702 :PREDICATION
  MV1696 :RAW-TEXT "upstreams")
 (:VAR MV1702 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1692 MV1700))
 (:VAR MV1692 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1700 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1696 :ISA COMMON) (:VAR MV1694 :ISA SYNTACTIC-THERE))

___________________
171: "What are the common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e21   BE            1 "What are the common upstreams of AKT1, BRAF and MAPK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV1708 :ISA BE :SUBJECT MV1707 :PREDICATE MV1711 :PRESENT "PRESENT")
 (:VAR MV1707 :ISA WHAT)
 (:VAR MV1711 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1715 :HAS-DETERMINER
  "THE" :PREDICATION MV1710 :RAW-TEXT "upstreams")
 (:VAR MV1715 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV1705 MV1713 MV1706))
 (:VAR MV1705 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1713 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1706 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1710 :ISA COMMON))

___________________
172: "What genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "What genes are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV1727 :ISA COPULAR-PREDICATION :ITEM MV1721 :VALUE MV1717 :PREDICATE
  MV1722)
 (:VAR MV1721 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1717 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV1719 :ALTERNATIVE MV1718)
 (:VAR MV1719 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV1718 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV1722 :ISA BE :PRESENT "PRESENT"))

___________________
173: "What are the mutually exclusive genes with TP53 for breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with TP53 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with TP53 for breast cancer?"
 (:VAR MV1732 :ISA BE :SUBJECT MV1731 :PREDICATE MV1739 :PRESENT "PRESENT")
 (:VAR MV1731 :ISA WHAT)
 (:VAR MV1739 :ISA GENE :DISEASE MV1730 :HAS-DETERMINER "THE" :PREDICATION
  MV1728 :RAW-TEXT "genes")
 (:VAR MV1730 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV1728 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV1729)
 (:VAR MV1729 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
174: "What is the mutation significance of TP53 for lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 for lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 for lung cancer?"
 (:VAR MV1743 :ISA BE :SUBJECT MV1742 :PREDICATE MV1746 :PRESENT "PRESENT")
 (:VAR MV1742 :ISA WHAT)
 (:VAR MV1746 :ISA SIGNIFICANCE :RESULT MV1741 :AGENT MV1740 :HAS-DETERMINER
  "THE" :MODIFIER MV1745)
 (:VAR MV1741 :ISA CANCER :NAME "lung cancer" :UID "TS-0571")
 (:VAR MV1740 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1745 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
175: "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1754 :ISA BE :SUBJECT MV1753 :PREDICATE MV1757 :PRESENT "PRESENT")
 (:VAR MV1753 :ISA WHAT)
 (:VAR MV1757 :ISA SIGNIFICANCE :AGENT MV1751 :HAS-DETERMINER "THE" :MODIFIER
  MV1756)
 (:VAR MV1751 :ISA PROTEIN :CONTEXT MV1752 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV1752 :ISA CANCER :NAME "ovarian serous cystadenocarcinoma" :UID
  "NCIT:C7978")
 (:VAR MV1756 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
176: "What is the mutation significance of PTEN in pancreatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of PTEN in pancreatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
 (:VAR MV1763 :ISA BE :SUBJECT MV1762 :PREDICATE MV1766 :PRESENT "PRESENT")
 (:VAR MV1762 :ISA WHAT)
 (:VAR MV1766 :ISA SIGNIFICANCE :AGENT MV1768 :HAS-DETERMINER "THE" :MODIFIER
  MV1765)
 (:VAR MV1768 :ISA PROTEIN :CONTEXT MV1771 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1771 :ISA CANCER :ORGAN MV1770 :NAME "adenocarcinoma" :UID
  "EFO:0000228")
 (:VAR MV1770 :ISA PANCREAS) (:VAR MV1765 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
177: "What is the mutation significance of BRAF in prostatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of BRAF in prostatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
 (:VAR MV1775 :ISA BE :SUBJECT MV1774 :PREDICATE MV1778 :PRESENT "PRESENT")
 (:VAR MV1774 :ISA WHAT)
 (:VAR MV1778 :ISA SIGNIFICANCE :AGENT MV1780 :HAS-DETERMINER "THE" :MODIFIER
  MV1777)
 (:VAR MV1780 :ISA PROTEIN :CONTEXT MV1783 :RAW-TEXT "BRAF" :UID "UP:P15056"
  :NAME "BRAF_HUMAN")
 (:VAR MV1783 :ISA CANCER :MODIFIER MV1782 :NAME "adenocarcinoma" :UID
  "EFO:0000228")
 (:VAR MV1782 :ISA PROTEIN :RAW-TEXT "prostatic" :UID "UP:P20151" :NAME
  "KLK2_HUMAN")
 (:VAR MV1777 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
178: "MEK phosphorylates ERK."

                    SOURCE-START
e4    PHOSPHORYLATE 1 "MEK phosphorylates ERK" 4
                    PERIOD
                    END-OF-SOURCE
("MEK phosphorylates ERK."
 (:VAR MV1787 :ISA PHOSPHORYLATE :AGENT MV1786 :SUBSTRATE MV1788 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1786 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV1788 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV1790 :ISA BINDING :BINDER MV1789 :DIRECT-BINDEE MV1791 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV1789 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1791 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
180: "EGFR bound to EGF binds GRB2."

                    SOURCE-START
e13   BINDING       1 "EGFR bound to EGF binds GRB2" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR bound to EGF binds GRB2."
 (:VAR MV1797 :ISA BINDING :BINDER MV1793 :DIRECT-BINDEE MV1792 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV1793 :ISA PROTEIN :PREDICATION MV1794 :RAW-TEXT "EGFR" :UID
  "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV1794 :ISA BINDING :DIRECT-BINDEE MV1793 :BINDEE MV1796 :PAST "PAST"
  :RAW-TEXT "bound")
 (:VAR MV1796 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1792 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN"))

___________________
181: "Phosphorylated ERK is active."

                    SOURCE-START
e7    COPULAR-PREDICATION 1 "Phosphorylated ERK is active" 5
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK is active."
 (:VAR MV1803 :ISA COPULAR-PREDICATION :ITEM MV1800 :VALUE MV1802 :PREDICATE
  MV1801)
 (:VAR MV1800 :ISA PROTEIN-FAMILY :PREDICATION MV1799 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1799 :ISA PHOSPHORYLATE :SUBSTRATE MV1800 :RAW-TEXT "Phosphorylated")
 (:VAR MV1802 :ISA ACTIVE) (:VAR MV1801 :ISA BE :PRESENT "PRESENT"))

___________________
182: "MAP2K1 phosphorylated at S220 phosphoryates MAPK1."

                    SOURCE-START
e17   PROTEIN       1 "MAP2K1 phosphorylated at S220 phosphoryates MAPK1" 12
                    PERIOD
                    END-OF-SOURCE
("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
 (:VAR MV1804 :ISA PROTEIN :PREDICATION MV1806 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1806 :ISA PHOSPHORYLATE :SUBSTRATE MV1804 :TARGET MV1805 :PAST "PAST"
  :RAW-TEXT "phosphorylated")
 (:VAR MV1805 :ISA PROTEIN :SITE MV1811 :MODIFIER MV1812 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1811 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S220" :POSITION MV1810
  :AMINO-ACID MV1809)
 (:VAR MV1810 :ISA NUMBER :VALUE 220)
 (:VAR MV1809 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV1812 :ISA BIO-ENTITY :NAME "phosphoryates"))

___________________
183: "Active TP53 transcribes MDM2."

                    SOURCE-START
e8    TRANSCRIBE    1 "Active TP53 transcribes MDM2" 7
                    PERIOD
                    END-OF-SOURCE
("Active TP53 transcribes MDM2."
 (:VAR MV1817 :ISA TRANSCRIBE :AGENT MV1814 :OBJECT MV1815 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV1814 :ISA PROTEIN :PREDICATION MV1816 :RAW-TEXT "TP53" :UID
  "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1816 :ISA ACTIVE)
 (:VAR MV1815 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME
  "MDM2_HUMAN"))

___________________
184: "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e45   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV1846 :ISA POLAR-QUESTION :STATEMENT MV1845)
 (:VAR MV1845 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1841 :EVENT MV1843)
 (:VAR MV1841 :ISA WH-QUESTION :STATEMENT MV1829 :WH IF)
 (:VAR MV1829 :ISA INCREASE :AGENT-OR-CAUSE MV1827 :CAUSE MV1838
  :AFFECTED-PROCESS-OR-OBJECT MV1831 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1827 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1838 :ISA MEASUREMENT :NUMBER MV1835)
 (:VAR MV1835 :ISA NUMBER :VALUE 10)
 (:VAR MV1831 :ISA BIO-AMOUNT :MEASURED-ITEM MV1818 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1818 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1843 :ISA COPULAR-PREDICATION :ITEM MV1821 :VALUE MV1825 :PREDICATE
  MV1819)
 (:VAR MV1821 :ISA BIO-AMOUNT :MEASURED-ITEM MV1823 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1823 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1825 :ISA HIGH :ADVERB MV1824) (:VAR MV1824 :ISA EVER :NAME "ever")
 (:VAR MV1819 :ISA BE))

___________________
185: "Does Vemurafenib decrease phosphorylated ERK in the model?"

                    SOURCE-START
e20   DECREASE      1 "Does Vemurafenib decrease phosphorylated ERK in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib decrease phosphorylated ERK in the model?"
 (:VAR MV1858 :ISA POLAR-QUESTION :STATEMENT MV1856)
 (:VAR MV1856 :ISA DECREASE :AGENT MV1848 :OBJECT MV1852 :RAW-TEXT "decrease")
 (:VAR MV1848 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV1852 :ISA PROTEIN-FAMILY :INFO-CONTEXT MV1855 :PREDICATION MV1851
  :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1855 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV1851 :ISA PHOSPHORYLATE :SUBSTRATE MV1852 :RAW-TEXT "phosphorylated"))

___________________
186: "Does Selumetinib decrease JUN in the model?"

                    SOURCE-START
e17   DECREASE      1 "Does Selumetinib decrease JUN in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib decrease JUN in the model?"
 (:VAR MV1869 :ISA POLAR-QUESTION :STATEMENT MV1867)
 (:VAR MV1867 :ISA DECREASE :AGENT MV1860 :OBJECT MV1863 :RAW-TEXT "decrease")
 (:VAR MV1860 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV1863 :ISA PROTEIN :INFO-CONTEXT MV1866 :RAW-TEXT "JUN" :UID
  "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV1866 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
187: "How does KRAS regulate MAP2K1?"

                    SOURCE-START
e8    REGULATE      1 "How does KRAS regulate MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS regulate MAP2K1?"
 (:VAR MV1874 :ISA REGULATE :MANNER MV1871 :AGENT MV1873 :OBJECT MV1870
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV1871 :ISA HOW)
 (:VAR MV1873 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV1870 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
188: "How does HRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does HRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does HRAS activate MAPK3?"
 (:VAR MV1879 :ISA BIO-ACTIVATE :MANNER MV1876 :AGENT MV1878 :OBJECT MV1875
  :PRESENT "PRESENT" :RAW-TEXT "activate")
 (:VAR MV1876 :ISA HOW)
 (:VAR MV1878 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV1875 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
189: "Does Vemurafenib inhibit BRAF?"

                    SOURCE-START
e8    INHIBIT       1 "Does Vemurafenib inhibit BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib inhibit BRAF?"
 (:VAR MV1885 :ISA POLAR-QUESTION :STATEMENT MV1884)
 (:VAR MV1884 :ISA INHIBIT :AGENT MV1881 :OBJECT MV1883 :RAW-TEXT "inhibit")
 (:VAR MV1881 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV1883 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
190: "What transcription factors are shared by SRF, HRAS, and ELK1?"

                    SOURCE-START
e19   SHARE         1 "What transcription factors are shared by SRF, HRAS, and ELK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by SRF, HRAS, and ELK1?"
 (:VAR MV1896 :ISA SHARE :OBJECT MV1886 :PARTICIPANT MV1895 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV1886 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV1895 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and ELK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV1892 MV1893 MV1887))
 (:VAR MV1892 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1893 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV1887 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
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
 (:VAR MV1908 :ISA BE :SUBJECT MV1907 :PREDICATE MV1909 :PRESENT "PRESENT")
 (:VAR MV1907 :ISA WHAT)
 (:VAR MV1909 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1906 :RAW-TEXT
  "upstream")
 (:VAR MV1906 :ISA PROTEIN :RAW-TEXT "CD3E" :UID "UP:P07766" :NAME
  "CD3E_HUMAN"))

___________________
193: "I want to find a treatment for pancreatic cancer."

                    SOURCE-START
e22   WANT          1 "I want to find a treatment for pancreatic cancer" 10
                    PERIOD
                    END-OF-SOURCE
("I want to find a treatment for pancreatic cancer."
 (:VAR MV1917 :ISA WANT :AGENT MV1914 :THEME MV1925 :PRESENT "PRESENT")
 (:VAR MV1914 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV1925 :ISA BIO-FIND :AGENT MV1914 :OBJECT MV1922 :PRESENT "PRESENT"
  :RAW-TEXT "find")
 (:VAR MV1922 :ISA TREATMENT :DISEASE MV1913 :HAS-DETERMINER "A" :RAW-TEXT
  "treatment")
 (:VAR MV1913 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
194: "What drug could I use?"

                    SOURCE-START
e11   BIO-USE       1 "What drug could I use" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use?"
 (:VAR MV1934 :ISA BIO-USE :OBJECT MV1927 :MODAL MV1928 :AGENT MV1929 :PRESENT
  "PRESENT" :RAW-TEXT "use")
 (:VAR MV1927 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV1928 :ISA COULD) (:VAR MV1929 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
195: "Are there any drugs for BRAF?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for BRAF?"
 (:VAR MV1944 :ISA POLAR-QUESTION :STATEMENT MV1942)
 (:VAR MV1942 :ISA THERE-EXISTS :VALUE MV1939 :PREDICATE MV1936)
 (:VAR MV1939 :ISA DRUG :TARGET MV1941 :QUANTIFIER MV1938 :RAW-TEXT "drugs")
 (:VAR MV1941 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1938 :ISA ANY :WORD "any") (:VAR MV1936 :ISA SYNTACTIC-THERE))

___________________
196: "Are they kinases?"

                    SOURCE-START
e5    BE            1 "Are they kinases" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("Are they kinases?" (:VAR MV1948 :ISA POLAR-QUESTION :STATEMENT MV1945)
 (:VAR MV1945 :ISA BE :SUBJECT MV1946 :PREDICATE MV1947)
 (:VAR MV1946 :ISA PRONOUN/PLURAL :WORD "they")
 (:VAR MV1947 :ISA KINASE :RAW-TEXT "kinases"))

___________________
197: "Can you find a drug for BRAF?"

                    SOURCE-START
e17   BIO-FIND      1 "Can you find a drug for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you find a drug for BRAF?"
 (:VAR MV1958 :ISA POLAR-QUESTION :STATEMENT MV1952)
 (:VAR MV1952 :ISA BIO-FIND :AGENT MV1950 :OBJECT MV1954 :MODAL "CAN" :RAW-TEXT
  "find")
 (:VAR MV1950 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1954 :ISA DRUG :TARGET MV1956 :HAS-DETERMINER "A" :RAW-TEXT "drug")
 (:VAR MV1956 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
198: "Can you tell me all the transcription factors that are shared by elk1 and srf?"

                    SOURCE-START
e35   TELL          1 "Can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me all the transcription factors that are shared by elk1 and srf?"
 (:VAR MV1976 :ISA POLAR-QUESTION :STATEMENT MV1963)
 (:VAR MV1963 :ISA TELL :AGENT MV1962 :THEME MV1959 :BENEFICIARY MV1964 :MODAL
  "CAN")
 (:VAR MV1962 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1959 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV1974 :QUANTIFIER MV1965
  :HAS-DETERMINER "THE" :RAW-TEXT "transcription factors")
 (:VAR MV1974 :ISA SHARE :OBJECT MV1959 :THAT-REL T :PARTICIPANT MV1973 :MODAL
  "CAN" :RAW-TEXT "shared")
 (:VAR MV1973 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1960 MV1972))
 (:VAR MV1960 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1972 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1965 :ISA ALL :WORD "all")
 (:VAR MV1964 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
199: "Can you tell me what transcription factors are shared by elk1 and srf?"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf?"
 (:VAR MV1992 :ISA POLAR-QUESTION :STATEMENT MV1981)
 (:VAR MV1981 :ISA TELL :AGENT MV1980 :THEME MV1990 :THEME MV1982 :MODAL "CAN")
 (:VAR MV1980 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1990 :ISA SHARE :OBJECT MV1977 :PARTICIPANT MV1989 :MODAL "CAN"
  :RAW-TEXT "shared")
 (:VAR MV1977 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV1989 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1978 MV1988))
 (:VAR MV1978 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1988 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1982 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
200: "Do you know any drugs for BRAF?"

                    SOURCE-START
e15   KNOW          1 "Do you know any drugs for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do you know any drugs for BRAF?"
 (:VAR MV2003 :ISA POLAR-QUESTION :STATEMENT MV2002)
 (:VAR MV2002 :ISA KNOW :AGENT MV1994 :STATEMENT MV1997)
 (:VAR MV1994 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1997 :ISA DRUG :TARGET MV1999 :QUANTIFIER MV1996 :RAW-TEXT "drugs")
 (:VAR MV1999 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1996 :ISA ANY :WORD "any"))

___________________
201: "Does STAT3 regulate the JUN gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the JUN gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the JUN gene in the lung?"
 (:VAR MV2015 :ISA POLAR-QUESTION :STATEMENT MV2013)
 (:VAR MV2013 :ISA REGULATE :AGENT MV2004 :OBJECT MV2009 :RAW-TEXT "regulate")
 (:VAR MV2004 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2009 :ISA GENE :ORGAN MV2012 :HAS-DETERMINER "THE" :EXPRESSES MV2008
  :RAW-TEXT "gene")
 (:VAR MV2012 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV2008 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN"))

___________________
202: "Does STAT3 regulate the c-fos gene in liver?"

                    SOURCE-START
e20   REGULATE      1 "Does STAT3 regulate the c-fos gene in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in liver?"
 (:VAR MV2026 :ISA POLAR-QUESTION :STATEMENT MV2024)
 (:VAR MV2024 :ISA REGULATE :AGENT MV2016 :OBJECT MV2021 :RAW-TEXT "regulate")
 (:VAR MV2016 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2021 :ISA GENE :ORGAN MV2023 :HAS-DETERMINER "THE" :EXPRESSES MV2017
  :RAW-TEXT "gene")
 (:VAR MV2023 :ISA LIVER)
 (:VAR MV2017 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
203: "Does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e15   REGULATE      1 "Does STAT3 regulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene?"
 (:VAR MV2034 :ISA POLAR-QUESTION :STATEMENT MV2033)
 (:VAR MV2033 :ISA REGULATE :AGENT MV2027 :OBJECT MV2032 :RAW-TEXT "regulate")
 (:VAR MV2027 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2032 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2028 :RAW-TEXT
  "gene")
 (:VAR MV2028 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
204: "Does STAT3 regulate the cfos gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the cfos gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the cfos gene in the lung?"
 (:VAR MV2046 :ISA POLAR-QUESTION :STATEMENT MV2044)
 (:VAR MV2044 :ISA REGULATE :AGENT MV2035 :OBJECT MV2040 :RAW-TEXT "regulate")
 (:VAR MV2035 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2040 :ISA GENE :ORGAN MV2043 :HAS-DETERMINER "THE" :EXPRESSES MV2039
  :RAW-TEXT "gene")
 (:VAR MV2043 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV2039 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
205: "Does TP53 target MDM2?"

                    SOURCE-START
e11   TARGET        1 "Does TP53 target MDM2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TP53 target MDM2?" (:VAR MV2053 :ISA POLAR-QUESTION :STATEMENT MV2052)
 (:VAR MV2052 :ISA TARGET :AGENT MV2047 :OBJECT MV2048 :RAW-TEXT "target")
 (:VAR MV2047 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV2048 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME
  "MDM2_HUMAN"))

___________________
206: "Does miR-2000-5p target stat3"

                    SOURCE-START
e11   TARGET        1 "Does miR-2000-5p target stat3" 11
                    END-OF-SOURCE
("Does miR-2000-5p target stat3"
 (:VAR MV2060 :ISA POLAR-QUESTION :STATEMENT MV2059)
 (:VAR MV2059 :ISA TARGET :AGENT MV2054 :OBJECT MV2055 :RAW-TEXT "target")
 (:VAR MV2054 :ISA MICRO-RNA :RAW-TEXT "miR-2000-5p" :NAME "microRNA 2000-5p"
  :UID "MIMAmiR-2000-5p")
 (:VAR MV2055 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
207: "Does miR-20b-5p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-20b-5p target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5p target STAT3?"
 (:VAR MV2067 :ISA POLAR-QUESTION :STATEMENT MV2066)
 (:VAR MV2066 :ISA TARGET :AGENT MV2061 :OBJECT MV2062 :RAW-TEXT "target")
 (:VAR MV2061 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV2062 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
208: "Does miR-222-3p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-222-3p target STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-222-3p target STAT3?"
 (:VAR MV2074 :ISA POLAR-QUESTION :STATEMENT MV2073)
 (:VAR MV2073 :ISA TARGET :AGENT MV2068 :OBJECT MV2069 :RAW-TEXT "target")
 (:VAR MV2068 :ISA MICRO-RNA :RAW-TEXT "miR-222-3p" :NAME "microRNA 222-3p"
  :UID "MIMAT0000279")
 (:VAR MV2069 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
209: "Does stat3 regulate cfors in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfors in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfors in liver"
 (:VAR MV2083 :ISA POLAR-QUESTION :STATEMENT MV2081)
 (:VAR MV2081 :ISA REGULATE :AGENT MV2075 :OBJECT MV2080 :RAW-TEXT "regulate")
 (:VAR MV2075 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2080 :ISA BIO-ENTITY :ORGAN MV2079 :NAME "cfors")
 (:VAR MV2079 :ISA LIVER))

___________________
210: "Does stat3 regulate cfos in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfos in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfos in liver"
 (:VAR MV2092 :ISA POLAR-QUESTION :STATEMENT MV2090)
 (:VAR MV2090 :ISA REGULATE :AGENT MV2084 :OBJECT MV2087 :RAW-TEXT "regulate")
 (:VAR MV2084 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2087 :ISA PROTEIN :ORGAN MV2089 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2089 :ISA LIVER))

___________________
211: "Does it regulate cfos in brain"

                    SOURCE-START
e14   REGULATE      1 "Does it regulate cfos in brain" 7
                    END-OF-SOURCE
("Does it regulate cfos in brain"
 (:VAR MV2101 :ISA POLAR-QUESTION :STATEMENT MV2099)
 (:VAR MV2099 :ISA REGULATE :AGENT-OR-CAUSE MV2094 :OBJECT MV2096 :RAW-TEXT
  "regulate")
 (:VAR MV2094 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2096 :ISA PROTEIN :ORGAN MV2098 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2098 :ISA BRAIN))

___________________
212: "Does stat3 regulate cfos?"

                    SOURCE-START
e9    REGULATE      1 "Does stat3 regulate cfos" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 regulate cfos?"
 (:VAR MV2107 :ISA POLAR-QUESTION :STATEMENT MV2106)
 (:VAR MV2106 :ISA REGULATE :AGENT MV2102 :OBJECT MV2105 :RAW-TEXT "regulate")
 (:VAR MV2102 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2105 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
213: "Does stat3 regulate the cfos gene in blood cells"

                    SOURCE-START
e21   REGULATE      1 "Does stat3 regulate the cfos gene in blood cells" 11
                    END-OF-SOURCE
("Does stat3 regulate the cfos gene in blood cells"
 (:VAR MV2119 :ISA POLAR-QUESTION :STATEMENT MV2117)
 (:VAR MV2117 :ISA REGULATE :AGENT MV2108 :OBJECT MV2113 :RAW-TEXT "regulate")
 (:VAR MV2108 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2113 :ISA GENE :CELL-TYPE MV2116 :HAS-DETERMINER "THE" :EXPRESSES
  MV2112 :RAW-TEXT "gene")
 (:VAR MV2116 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV2115)
 (:VAR MV2115 :ISA BIO-ORGAN :NAME "blood" :UID "BTO:0000089")
 (:VAR MV2112 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
214: "Does the il-12 pathway utilize SGK1?"

                    SOURCE-START
e17   UTILIZE       1 "Does the il-12 pathway utilize SGK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the il-12 pathway utilize SGK1?"
 (:VAR MV2129 :ISA POLAR-QUESTION :STATEMENT MV2128)
 (:VAR MV2128 :ISA UTILIZE :PARTICIPANT MV2125 :OBJECT MV2120 :RAW-TEXT
  "utilize")
 (:VAR MV2125 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2127 :RAW-TEXT
  "pathway")
 (:VAR MV2127 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV2120 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
215: "Does the mTor pathway utilize SGK1?"

                    SOURCE-START
e16   UTILIZE       1 "Does the mTor pathway utilize SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway utilize SGK1?"
 (:VAR MV2139 :ISA POLAR-QUESTION :STATEMENT MV2138)
 (:VAR MV2138 :ISA UTILIZE :PARTICIPANT MV2136 :OBJECT MV2130 :RAW-TEXT
  "utilize")
 (:VAR MV2136 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2133 :RAW-TEXT
  "pathway")
 (:VAR MV2133 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME
  "MTOR_HUMAN")
 (:VAR MV2130 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
216: "Give me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras decreases frizzled8."
 (:VAR MV2141 :ISA GIVE :THEME MV2148 :BENEFICIARY MV2142 :PRESENT "PRESENT")
 (:VAR MV2148 :ISA EVIDENCE :STATEMENT MV2147 :HAS-DETERMINER "THE")
 (:VAR MV2147 :ISA DECREASE :AGENT MV2146 :OBJECT MV2140 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2146 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2140 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2142 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
217: "Give me the evidence that kras regulates frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras regulates frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras regulates frizzled8."
 (:VAR MV2150 :ISA GIVE :THEME MV2157 :BENEFICIARY MV2151 :PRESENT "PRESENT")
 (:VAR MV2157 :ISA EVIDENCE :STATEMENT MV2156 :HAS-DETERMINER "THE")
 (:VAR MV2156 :ISA REGULATE :AGENT MV2155 :OBJECT MV2149 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2155 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2149 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2151 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
218: "Is MEK a kinase?"

                    SOURCE-START
e8    BE            1 "Is MEK a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK a kinase?" (:VAR MV2162 :ISA POLAR-QUESTION :STATEMENT MV2158)
 (:VAR MV2158 :ISA BE :SUBJECT MV2159 :PREDICATE MV2161)
 (:VAR MV2159 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2161 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
219: "Is MEK2 inhibited by Selumetinib?"

                    SOURCE-START
e10   INHIBIT       1 "Is MEK2 inhibited by Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK2 inhibited by Selumetinib?"
 (:VAR MV2169 :ISA POLAR-QUESTION :STATEMENT MV2165)
 (:VAR MV2165 :ISA INHIBIT :OBJECT MV2163 :AGENT MV2167 :PAST "PAST" :RAW-TEXT
  "inhibited")
 (:VAR MV2163 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN")
 (:VAR MV2167 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
220: "Is STAT3 a transcription factor for c-fos gene?"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene?"
 (:VAR MV2178 :ISA POLAR-QUESTION :STATEMENT MV2173)
 (:VAR MV2173 :ISA BE :SUBJECT MV2170 :PREDICATE MV2171)
 (:VAR MV2170 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2171 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV2176 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV2176 :ISA GENE :EXPRESSES MV2172 :RAW-TEXT "gene")
 (:VAR MV2172 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
221: "Is STAT3 one of the regulators of the c-fos gene?"

                    SOURCE-START
e27   BE            1 "Is STAT3 one of the regulators of the c-fos gene" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 one of the regulators of the c-fos gene?"
 (:VAR MV2193 :ISA POLAR-QUESTION :STATEMENT MV2181)
 (:VAR MV2181 :ISA BE :SUBJECT MV2179 :PREDICATE MV2187)
 (:VAR MV2179 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2187 :ISA REGULATOR :QUANTIFIER MV2184 :THEME MV2190 :HAS-DETERMINER
  "THE" :RAW-TEXT "regulators")
 (:VAR MV2184 :ISA NUMBER :VALUE 1)
 (:VAR MV2190 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2180 :RAW-TEXT
  "gene")
 (:VAR MV2180 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
222: "Is Selumetinib an inhibitor of MEK1?"

                    SOURCE-START
e13   BE            1 "Is Selumetinib an inhibitor of MEK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Selumetinib an inhibitor of MEK1?"
 (:VAR MV2201 :ISA POLAR-QUESTION :STATEMENT MV2195)
 (:VAR MV2195 :ISA BE :SUBJECT MV2196 :PREDICATE MV2198)
 (:VAR MV2196 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV2198 :ISA INHIBITOR :PROTEIN MV2194 :HAS-DETERMINER "AN" :RAW-TEXT
  "inhibitor")
 (:VAR MV2194 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
223: "Is Vemurafenib an inhibitor for BRAF?"

                    SOURCE-START
e12   BE            1 "Is Vemurafenib an inhibitor for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Vemurafenib an inhibitor for BRAF?"
 (:VAR MV2209 :ISA POLAR-QUESTION :STATEMENT MV2202)
 (:VAR MV2202 :ISA BE :SUBJECT MV2203 :PREDICATE MV2205)
 (:VAR MV2203 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV2205 :ISA INHIBITOR :TARGET-OR-PROTEIN MV2207 :HAS-DETERMINER "AN"
  :RAW-TEXT "inhibitor")
 (:VAR MV2207 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
224: "Is fakeprotein a kinase"

                    SOURCE-START
e8    BE            1 "Is fakeprotein a kinase" 5
                    END-OF-SOURCE
("Is fakeprotein a kinase" (:VAR MV2214 :ISA POLAR-QUESTION :STATEMENT MV2210)
 (:VAR MV2210 :ISA BE :SUBJECT MV2213 :PREDICATE MV2212)
 (:VAR MV2213 :ISA BIO-ENTITY :NAME "fakeprotein")
 (:VAR MV2212 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
225: "Is hmga2 a kinase"

                    SOURCE-START
e9    BE            1 "Is hmga2 a kinase" 6
                    END-OF-SOURCE
("Is hmga2 a kinase" (:VAR MV2219 :ISA POLAR-QUESTION :STATEMENT MV2216)
 (:VAR MV2216 :ISA BE :SUBJECT MV2215 :PREDICATE MV2218)
 (:VAR MV2215 :ISA PROTEIN :RAW-TEXT "hmga2" :UID "UP:P52926" :NAME
  "HMGA2_HUMAN")
 (:VAR MV2218 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
226: "Is stat3 an apoptotic regulator?"

                    SOURCE-START
e11   BE            1 "Is stat3 an apoptotic regulator" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 an apoptotic regulator?"
 (:VAR MV2226 :ISA POLAR-QUESTION :STATEMENT MV2221)
 (:VAR MV2221 :ISA BE :SUBJECT MV2220 :PREDICATE MV2225)
 (:VAR MV2220 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2225 :ISA REGULATOR :HAS-DETERMINER "AN" :CELLULAR-PROCESS MV2223
  :RAW-TEXT "regulator")
 (:VAR MV2223 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
227: "Is stat3 involved in any apoptotic pathways?"

                    SOURCE-START
e15   INVOLVE       1 "Is stat3 involved in any apoptotic pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in any apoptotic pathways?"
 (:VAR MV2237 :ISA POLAR-QUESTION :STATEMENT MV2236)
 (:VAR MV2236 :ISA INVOLVE :THEME MV2227 :CONTEXT MV2234 :PAST "PAST")
 (:VAR MV2227 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2234 :ISA PATHWAY :QUANTIFIER MV2231 :CELLULAR-PROCESS MV2232
  :RAW-TEXT "pathways")
 (:VAR MV2231 :ISA ANY :WORD "any")
 (:VAR MV2232 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
228: "Is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e13   INVOLVE       1 "Is stat3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in apoptotic regulation?"
 (:VAR MV2246 :ISA POLAR-QUESTION :STATEMENT MV2240)
 (:VAR MV2240 :ISA INVOLVE :THEME MV2238 :THEME MV2244 :PAST "PAST")
 (:VAR MV2238 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2244 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV2242 :RAW-TEXT
  "regulation")
 (:VAR MV2242 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
229: "Is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e12   INVOLVE       1 "Is stat3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in regulating apoptosis?"
 (:VAR MV2254 :ISA POLAR-QUESTION :STATEMENT MV2249)
 (:VAR MV2249 :ISA INVOLVE :THEME MV2247 :THEME MV2251 :PAST "PAST")
 (:VAR MV2247 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2251 :ISA REGULATE :AFFECTED-PROCESS MV2252 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV2252 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
230: "What proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "What proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does MEK phosphorylate?"
 (:VAR MV2259 :ISA PHOSPHORYLATE :AMINO-ACID MV2256 :AGENT MV2258 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV2256 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV2258 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV2268 :ISA POLAR-QUESTION :STATEMENT MV2260)
 (:VAR MV2260 :ISA BE :SUBJECT MV2265 :PREDICATE MV2267)
 (:VAR MV2265 :ISA NUMBER :QUANTIFIER MV2262 :VALUE 1)
 (:VAR MV2262 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV2267 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
232: "Is there a drug that targets BRAF?"

                    SOURCE-START
e19   THERE-EXISTS  1 "Is there a drug that targets BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there a drug that targets BRAF?"
 (:VAR MV2279 :ISA POLAR-QUESTION :STATEMENT MV2278)
 (:VAR MV2278 :ISA THERE-EXISTS :VALUE MV2273 :PREDICATE MV2270)
 (:VAR MV2273 :ISA DRUG :PREDICATION MV2276 :HAS-DETERMINER "A" :RAW-TEXT
  "drug")
 (:VAR MV2276 :ISA TARGET :AGENT MV2273 :THAT-REL T :OBJECT MV2277 :PRESENT
  "PRESENT" :RAW-TEXT "targets")
 (:VAR MV2277 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV2270 :ISA SYNTACTIC-THERE))

___________________
233: "Is there an apoptotic pathway regulated by stat3?"

                    SOURCE-START
e21   THERE-EXISTS  1 "Is there an apoptotic pathway regulated by stat3" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway regulated by stat3?"
 (:VAR MV2292 :ISA POLAR-QUESTION :STATEMENT MV2290)
 (:VAR MV2290 :ISA THERE-EXISTS :VALUE MV2287 :PREDICATE MV2282)
 (:VAR MV2287 :ISA PATHWAY :PREDICATION MV2288 :HAS-DETERMINER "AN"
  :CELLULAR-PROCESS MV2285 :RAW-TEXT "pathway")
 (:VAR MV2288 :ISA REGULATE :AFFECTED-PROCESS MV2287 :AGENT MV2280 :PAST "PAST"
  :RAW-TEXT "regulated")
 (:VAR MV2280 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2285 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2282 :ISA SYNTACTIC-THERE))

___________________
234: "Is there an apoptotic pathway that is regulated by stat3?"

                    SOURCE-START
e26   THERE-EXISTS  1 "Is there an apoptotic pathway that is regulated by stat3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway that is regulated by stat3?"
 (:VAR MV2308 :ISA POLAR-QUESTION :STATEMENT MV2305)
 (:VAR MV2305 :ISA THERE-EXISTS :VALUE MV2300 :PREDICATE MV2295)
 (:VAR MV2300 :ISA PATHWAY :PREDICATION MV2306 :HAS-DETERMINER "AN"
  :CELLULAR-PROCESS MV2298 :RAW-TEXT "pathway")
 (:VAR MV2306 :ISA REGULATE :AFFECTED-PROCESS MV2300 :THAT-REL T :AGENT MV2293
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2293 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2298 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2295 :ISA SYNTACTIC-THERE))

___________________
235: "Let me know if there are any apoptotic genes stat3 regulates"

                    SOURCE-START
e25   LET           1 "Let me know if there are any apoptotic genes stat3 regulates" 13
                    END-OF-SOURCE
("Let me know if there are any apoptotic genes stat3 regulates"
 (:VAR MV2310 :ISA LET :COMPLEMENT MV2324 :PRESENT "PRESENT")
 (:VAR MV2324 :ISA KNOW :AGENT MV2311 :STATEMENT MV2323 :PRESENT "PRESENT")
 (:VAR MV2311 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2323 :ISA WH-QUESTION :STATEMENT MV2322 :WH IF)
 (:VAR MV2322 :ISA THERE-EXISTS :VALUE MV2320 :PREDICATE MV2316)
 (:VAR MV2320 :ISA GENE :PREDICATION MV2321 :QUANTIFIER MV2317
  :CELLULAR-PROCESS MV2318 :RAW-TEXT "genes")
 (:VAR MV2321 :ISA REGULATE :OBJECT MV2320 :AGENT MV2309 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2309 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2317 :ISA ANY :WORD "any")
 (:VAR MV2318 :ISA APOPTOSIS :RAW-TEXT "apoptotic") (:VAR MV2316 :ISA BE))

___________________
236: "Let me know which genes stat3 regulates"

                    SOURCE-START
e14   LET           1 "Let me know which genes stat3 regulates" 9
                    END-OF-SOURCE
("Let me know which genes stat3 regulates"
 (:VAR MV2326 :ISA LET :COMPLEMENT MV2332 :PRESENT "PRESENT")
 (:VAR MV2332 :ISA KNOW :AGENT MV2327 :STATEMENT MV2330 :PRESENT "PRESENT")
 (:VAR MV2327 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2330 :ISA GENE :PREDICATION MV2331 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV2331 :ISA REGULATE :OBJECT MV2330 :AGENT MV2325 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2325 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
237: "List all the genes regulated by elk1 and srf?"

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf?"
 (:VAR MV2334 :ISA LIST :THEME MV2337 :PRESENT "PRESENT")
 (:VAR MV2337 :ISA GENE :PREDICATION MV2338 :QUANTIFIER MV2335 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV2338 :ISA REGULATE :OBJECT MV2337 :AGENT MV2342 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2342 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2333 MV2341))
 (:VAR MV2333 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2341 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2335 :ISA ALL :WORD "all"))

___________________
238: "List genes regulated by elk1 and srf"

                    SOURCE-START
e12   LIST          1 "List genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("List genes regulated by elk1 and srf"
 (:VAR MV2345 :ISA LIST :THEME MV2346 :PRESENT "PRESENT")
 (:VAR MV2346 :ISA GENE :PREDICATION MV2347 :RAW-TEXT "genes")
 (:VAR MV2347 :ISA REGULATE :OBJECT MV2346 :AGENT MV2351 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2351 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2344 MV2350))
 (:VAR MV2344 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2350 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
239: "List some genes that are regulated by elk1 and srf"

                    SOURCE-START
e21   LIST          1 "List some genes that are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("List some genes that are regulated by elk1 and srf"
 (:VAR MV2354 :ISA LIST :THEME MV2356 :PRESENT "PRESENT")
 (:VAR MV2356 :ISA GENE :PREDICATION MV2364 :QUANTIFIER MV2355 :RAW-TEXT
  "genes")
 (:VAR MV2364 :ISA REGULATE :OBJECT MV2356 :THAT-REL T :AGENT MV2363 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2363 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2353 MV2362))
 (:VAR MV2353 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2362 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2355 :ISA SOME :WORD "some"))

___________________
240: "List the evidence that kras decreases frizzled8."

                    SOURCE-START
e15   LIST          1 "List the evidence that kras decreases frizzled8" 9
                    PERIOD
                    END-OF-SOURCE
("List the evidence that kras decreases frizzled8."
 (:VAR MV2367 :ISA LIST :THEME MV2373 :PRESENT "PRESENT")
 (:VAR MV2373 :ISA EVIDENCE :STATEMENT MV2372 :HAS-DETERMINER "THE")
 (:VAR MV2372 :ISA DECREASE :AGENT MV2371 :OBJECT MV2366 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2371 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2366 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
241: "Name genes regulated by elk1 and srf"

                    SOURCE-START
e14   NAME-SOMETHING  1 "Name genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("Name genes regulated by elk1 and srf"
 (:VAR MV2375 :ISA NAME-SOMETHING :PATIENT MV2378 :PRESENT "PRESENT")
 (:VAR MV2378 :ISA GENE :PREDICATION MV2379 :RAW-TEXT "genes")
 (:VAR MV2379 :ISA REGULATE :OBJECT MV2378 :AGENT MV2383 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2383 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2374 MV2382))
 (:VAR MV2374 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2382 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
242: "Of the apoptotic genes regulated by stat3, which are active in the liver?"

                    SOURCE-START
e34   COPULAR-PREDICATION 1 "Of the apoptotic genes regulated by stat3, which are active in the liver" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes regulated by stat3, which are active in the liver?"
 (:VAR MV2400 :ISA COPULAR-PREDICATION :ITEM MV2390 :VALUE MV2395 :PREDICATE
  MV2394)
 (:VAR MV2390 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2391
  :HAS-DETERMINER "THE" :CELLULAR-PROCESS MV2388 :RAW-TEXT "genes")
 (:VAR MV2391 :ISA REGULATE :OBJECT MV2390 :AGENT MV2385 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2385 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2388 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2395 :ISA ACTIVE :ORGAN MV2398)
 (:VAR MV2398 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2394 :ISA BE :PRESENT "PRESENT"))

___________________
243: "Of the apoptotic genes stat3 regulates, which are active in the liver?"

                    SOURCE-START
e31   COPULAR-PREDICATION 1 "Of the apoptotic genes stat3 regulates, which are active in the liver" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes stat3 regulates, which are active in the liver?"
 (:VAR MV2418 :ISA COPULAR-PREDICATION :ITEM MV2409 :VALUE MV2413 :PREDICATE
  MV2412)
 (:VAR MV2409 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2410
  :HAS-DETERMINER "THE" :CELLULAR-PROCESS MV2407 :RAW-TEXT "genes")
 (:VAR MV2410 :ISA REGULATE :OBJECT MV2409 :AGENT MV2404 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2404 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2407 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2413 :ISA ACTIVE :ORGAN MV2416)
 (:VAR MV2416 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2412 :ISA BE :PRESENT "PRESENT"))

___________________
244: "Of the genes stat3 regulates in the liver, which are apoptotic?"

                    SOURCE-START
e29   COPULAR-PREDICATION 1 "Of the genes stat3 regulates in the liver, which are apoptotic" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the genes stat3 regulates in the liver, which are apoptotic?"
 (:VAR MV2433 :ISA COPULAR-PREDICATION :ITEM MV2424 :VALUE MV2431 :PREDICATE
  MV2430)
 (:VAR MV2424 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2425
  :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV2425 :ISA REGULATE :OBJECT MV2424 :AGENT MV2421 :ORGAN MV2428 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2421 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2428 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2431 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2430 :ISA BE :PRESENT "PRESENT"))

___________________
245: "Of the hepatic genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e23   COPULAR-PREDICATION 1 "Of the hepatic genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the hepatic genes stat3 regulates, which are apoptotic?"
 (:VAR MV2447 :ISA COPULAR-PREDICATION :ITEM MV2441 :VALUE MV2445 :PREDICATE
  MV2444)
 (:VAR MV2441 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2442
  :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2440 :RAW-TEXT "genes")
 (:VAR MV2442 :ISA REGULATE :OBJECT MV2441 :AGENT MV2437 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2437 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2440 :ISA LIVER) (:VAR MV2445 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2444 :ISA BE :PRESENT "PRESENT"))

___________________
246: "Of the liver genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e23   COPULAR-PREDICATION 1 "Of the liver genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the liver genes stat3 regulates, which are apoptotic?"
 (:VAR MV2460 :ISA COPULAR-PREDICATION :ITEM MV2454 :VALUE MV2458 :PREDICATE
  MV2457)
 (:VAR MV2454 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2455
  :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2453 :RAW-TEXT "genes")
 (:VAR MV2455 :ISA REGULATE :OBJECT MV2454 :AGENT MV2450 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2450 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2453 :ISA LIVER) (:VAR MV2458 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2457 :ISA BE :PRESENT "PRESENT"))

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
 (:VAR MV2470 :ISA SHOW :STATEMENT-OR-THEME MV2473 :BENEFICIARY MV2471 :PRESENT
  "PRESENT" :ADVERB MV2469)
 (:VAR MV2473 :ISA PATHWAY :PREDICATION MV2474 :MODIFIER MV2472 :RAW-TEXT
  "pathways")
 (:VAR MV2474 :ISA INVOLVE :THEME MV2473 :THEME MV2475 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2475 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2472 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV2471 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2469 :ISA PLEASE :NAME "please"))

___________________
249: "Please show me pathways involving SRF"

                    SOURCE-START
e11   SHOW          1 "Please show me pathways involving SRF" 7
                    END-OF-SOURCE
("Please show me pathways involving SRF"
 (:VAR MV2477 :ISA SHOW :STATEMENT-OR-THEME MV2479 :BENEFICIARY MV2478 :PRESENT
  "PRESENT" :ADVERB MV2476)
 (:VAR MV2479 :ISA PATHWAY :PREDICATION MV2480 :RAW-TEXT "pathways")
 (:VAR MV2480 :ISA INVOLVE :THEME MV2479 :THEME MV2481 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2481 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2478 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2476 :ISA PLEASE :NAME "please"))

___________________
250: "MEK activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "MEK activates ERK" 4
                    END-OF-SOURCE
("MEK activates ERK"
 (:VAR MV2483 :ISA BIO-ACTIVATE :AGENT MV2482 :OBJECT MV2484 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2482 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
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
251: "Remove the fact that MEK activates ERK"

                    SOURCE-START
e14   REMOVE        1 "Remove the fact that MEK activates ERK" 8
                    END-OF-SOURCE
("Remove the fact that MEK activates ERK"
 (:VAR MV2485 :ISA REMOVE :OBJECT MV2492 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2492 :ISA FACT :STATEMENT MV2490 :HAS-DETERMINER "THE")
 (:VAR MV2490 :ISA BIO-ACTIVATE :AGENT MV2489 :OBJECT MV2491 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2489 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2491 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV2495 :ISA BIO-ACTIVATE :AGENT MV2494 :OBJECT MV2496 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2494 :ISA PROTEIN-FAMILY :PREDICATION MV2493 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2493 :ISA INACTIVE)
 (:VAR MV2496 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV2497 :ISA REMOVE :OBJECT MV2505 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2505 :ISA FACT :STATEMENT MV2503 :HAS-DETERMINER "THE")
 (:VAR MV2503 :ISA BIO-ACTIVATE :AGENT MV2502 :OBJECT MV2504 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2502 :ISA PROTEIN-FAMILY :PREDICATION MV2501 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2501 :ISA INACTIVE)
 (:VAR MV2504 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV2507 :ISA SHOW :STATEMENT-OR-THEME MV2508 :PRESENT "PRESENT")
 (:VAR MV2508 :ISA PATHWAY :NON-CELLULAR-LOCATION MV2506 :RAW-TEXT "pathways")
 (:VAR MV2506 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405"))

___________________
255: "Show me pathways involving SRF"

                    SOURCE-START
e9    SHOW          1 "Show me pathways involving SRF" 6
                    END-OF-SOURCE
("Show me pathways involving SRF"
 (:VAR MV2509 :ISA SHOW :STATEMENT-OR-THEME MV2511 :BENEFICIARY MV2510 :PRESENT
  "PRESENT")
 (:VAR MV2511 :ISA PATHWAY :PREDICATION MV2512 :RAW-TEXT "pathways")
 (:VAR MV2512 :ISA INVOLVE :THEME MV2511 :THEME MV2513 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2513 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2510 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
256: "Show me pathways with SRF in them"

                    SOURCE-START
e13   SHOW          1 "Show me pathways with SRF in them" 8
                    END-OF-SOURCE
("Show me pathways with SRF in them"
 (:VAR MV2514 :ISA SHOW :STATEMENT-OR-THEME MV2516 :BENEFICIARY MV2515 :PRESENT
  "PRESENT")
 (:VAR MV2516 :ISA PATHWAY :PATHWAYCOMPONENT MV2518 :RAW-TEXT "pathways")
 (:VAR MV2518 :ISA PROTEIN
  :CELL-LINE-OR-CELL-TYPE-OR-CELLULAR-LOCATION-OR-CONTEXT-OR-INFO-CONTEXT-OR-ORGAN-OR-PREPARATION-OR-ORGANISM-OR-IN-EQUILIBRIUM-WITH-OR-COMPLEX-OR-EQUILIBRIUM-STATE-OR-STATE-OR-IN-PATHWAY
  MV2520 :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2520 :ISA PRONOUN/PLURAL :WORD "them")
 (:VAR MV2515 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
257: "Show me pathways with SRF"

                    SOURCE-START
e8    SHOW          1 "Show me pathways with SRF" 6
                    END-OF-SOURCE
("Show me pathways with SRF"
 (:VAR MV2523 :ISA SHOW :STATEMENT-OR-THEME MV2525 :BENEFICIARY MV2524 :PRESENT
  "PRESENT")
 (:VAR MV2525 :ISA PATHWAY :PATHWAYCOMPONENT MV2527 :RAW-TEXT "pathways")
 (:VAR MV2527 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2524 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
258: "Show me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras decreases frizzled8."
 (:VAR MV2530 :ISA SHOW :STATEMENT-OR-THEME MV2537 :BENEFICIARY MV2531 :PRESENT
  "PRESENT")
 (:VAR MV2537 :ISA EVIDENCE :STATEMENT MV2536 :HAS-DETERMINER "THE")
 (:VAR MV2536 :ISA DECREASE :AGENT MV2535 :OBJECT MV2529 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2535 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2529 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2531 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
259: "Show me the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   SHOW          1 "Show me the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV2539 :ISA SHOW :STATEMENT-OR-THEME MV2550 :BENEFICIARY MV2540 :PRESENT
  "PRESENT")
 (:VAR MV2550 :ISA EVIDENCE :STATEMENT MV2545 :HAS-DETERMINER "THE")
 (:VAR MV2545 :ISA DECREASE :AGENT MV2544 :AFFECTED-PROCESS-OR-OBJECT MV2547
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV2544 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2547 :ISA BIO-AMOUNT :MEASURED-ITEM MV2538 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV2538 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2540 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
260: "Show me the evidence that kras regulates frizzled8?"

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras regulates frizzled8?"
 (:VAR MV2552 :ISA SHOW :STATEMENT-OR-THEME MV2559 :BENEFICIARY MV2553 :PRESENT
  "PRESENT")
 (:VAR MV2559 :ISA EVIDENCE :STATEMENT MV2558 :HAS-DETERMINER "THE")
 (:VAR MV2558 :ISA REGULATE :AGENT MV2557 :OBJECT MV2551 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2557 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2551 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2553 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
261: "Show transcription factors shared by elk1 and srf"

                    SOURCE-START
e13   SHOW          1 "Show transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Show transcription factors shared by elk1 and srf"
 (:VAR MV2562 :ISA SHOW :STATEMENT-OR-THEME MV2560 :PRESENT "PRESENT")
 (:VAR MV2560 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2563 :RAW-TEXT
  "transcription factors")
 (:VAR MV2563 :ISA SHARE :OBJECT MV2560 :PARTICIPANT MV2567 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV2567 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2561 MV2566))
 (:VAR MV2561 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2566 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV2577 :ISA TELL :THEME MV2589 :THEME MV2578 :PRESENT "PRESENT")
 (:VAR MV2589 :ISA REGULATE :AFFECTED-PROCESS MV2582 :AGENT MV2576 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2582 :ISA PATHWAY :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2580
  :RAW-TEXT "pathways")
 (:VAR MV2580 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2576 :ISA PROTEIN :ORGAN MV2588 :RAW-TEXT "stat3" :UID "UP:P40763"
  :NAME "STAT3_HUMAN")
 (:VAR MV2588 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2578 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
264: "Tell me what genes elk1 and srf regulate"

                    SOURCE-START
e15   TELL          1 "Tell me what genes elk1 and srf regulate" 10
                    END-OF-SOURCE
("Tell me what genes elk1 and srf regulate"
 (:VAR MV2593 :ISA TELL :THEME MV2596 :BENEFICIARY MV2594 :PRESENT "PRESENT")
 (:VAR MV2596 :ISA GENE :PREDICATION MV2599 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2599 :ISA REGULATE :OBJECT MV2596 :AGENT MV2600 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2600 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2592 MV2598))
 (:VAR MV2592 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2598 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2594 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
265: "Tell me what pathways are regulated by stat3 in the liver"

                    SOURCE-START
e24   TELL          1 "Tell me what pathways are regulated by stat3 in the liver" 13
                    END-OF-SOURCE
("Tell me what pathways are regulated by stat3 in the liver"
 (:VAR MV2602 :ISA TELL :THEME MV2612 :THEME MV2603 :PRESENT "PRESENT")
 (:VAR MV2612 :ISA REGULATE :AFFECTED-PROCESS MV2605 :AGENT MV2601 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2605 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV2601 :ISA PROTEIN :ORGAN MV2611 :RAW-TEXT "stat3" :UID "UP:P40763"
  :NAME "STAT3_HUMAN")
 (:VAR MV2611 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2603 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
266: "What KEGG pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What KEGG pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve immune signaling?"
 (:VAR MV2618 :ISA INVOLVE :THEME MV2617 :THEME MV2620 :PRESENT "PRESENT")
 (:VAR MV2617 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV2616 :RAW-TEXT
  "pathways")
 (:VAR MV2616 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV2620 :ISA SIGNAL :MODIFIER MV2619 :RAW-TEXT "signaling")
 (:VAR MV2619 :ISA IMMUNE :NAME "immune"))

___________________
267: "What MAP kinase phosphatases are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatases are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatases are regulated by ELK1?"
 (:VAR MV2628 :ISA REGULATE :OBJECT MV2624 :AGENT MV2622 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2624 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV2621 :RAW-TEXT
  "phosphatases")
 (:VAR MV2621 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME
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
 (:VAR MV2622 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
268: "What apoptotic genes are downstream of stat3?"

                    SOURCE-START
e16   BE            1 "What apoptotic genes are downstream of stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes are downstream of stat3?"
 (:VAR MV2635 :ISA BE :SUBJECT MV2634 :PREDICATE MV2636 :PRESENT "PRESENT")
 (:VAR MV2634 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2632
  :RAW-TEXT "genes")
 (:VAR MV2632 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2636 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2630 :RAW-TEXT
  "downstream")
 (:VAR MV2630 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
269: "What apoptotic genes does stat3 regulate in the liver?"

                    SOURCE-START
e19   REGULATE      1 "What apoptotic genes does stat3 regulate in the liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate in the liver?"
 (:VAR MV2646 :ISA REGULATE :OBJECT MV2644 :AGENT MV2640 :ORGAN MV2649 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2644 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2642
  :RAW-TEXT "genes")
 (:VAR MV2642 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2640 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2649 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
270: "What apoptotic genes does stat3 regulate?"

                    SOURCE-START
e11   REGULATE      1 "What apoptotic genes does stat3 regulate" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate?"
 (:VAR MV2657 :ISA REGULATE :OBJECT MV2655 :AGENT MV2651 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2655 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2653
  :RAW-TEXT "genes")
 (:VAR MV2653 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2651 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
271: "What apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "What apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes is stat3 upstream of?"
 (:VAR MV2663 :ISA BE :SUBJECT MV2662 :PREDICATE MV2664 :PRESENT "PRESENT")
 (:VAR MV2662 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2660
  :RAW-TEXT "genes")
 (:VAR MV2660 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2664 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV2662 :MODIFIER MV2658
  :RAW-TEXT "upstream")
 (:VAR MV2658 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
272: "What apoptotic pathways involve stat3?"

                    SOURCE-START
e10   INVOLVE       1 "What apoptotic pathways involve stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic pathways involve stat3?"
 (:VAR MV2672 :ISA INVOLVE :THEME MV2671 :THEME MV2667 :PRESENT "PRESENT")
 (:VAR MV2671 :ISA PATHWAY :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2669
  :RAW-TEXT "pathways")
 (:VAR MV2669 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2667 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
273: "What are Selumetinib's targets?"

                    SOURCE-START
e9    BE            1 "What are Selumetinib's targets" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are Selumetinib's targets?"
 (:VAR MV2674 :ISA BE :SUBJECT MV2673 :PREDICATE MV2677 :PRESENT "PRESENT")
 (:VAR MV2673 :ISA WHAT)
 (:VAR MV2677 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV2676 :RAW-TEXT "targets")
 (:VAR MV2676 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
274: "What are some JAK1 inhibitors?"

                    SOURCE-START
e9    BE            1 "What are some JAK1 inhibitors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some JAK1 inhibitors?"
 (:VAR MV2681 :ISA BE :SUBJECT MV2680 :PREDICATE MV2683 :PRESENT "PRESENT")
 (:VAR MV2680 :ISA WHAT)
 (:VAR MV2683 :ISA INHIBITOR :QUANTIFIER MV2682 :PROTEIN MV2679 :RAW-TEXT
  "inhibitors")
 (:VAR MV2682 :ISA SOME :WORD "some")
 (:VAR MV2679 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
275: "What are some drugs that inhibit BRAF?"

                    SOURCE-START
e14   BE            1 "What are some drugs that inhibit BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs that inhibit BRAF?"
 (:VAR MV2685 :ISA BE :SUBJECT MV2684 :PREDICATE MV2687 :PRESENT "PRESENT")
 (:VAR MV2684 :ISA WHAT)
 (:VAR MV2687 :ISA DRUG :PREDICATION MV2689 :QUANTIFIER MV2686 :RAW-TEXT
  "drugs")
 (:VAR MV2689 :ISA INHIBIT :AGENT MV2687 :THAT-REL T :OBJECT MV2690 :PRESENT
  "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV2690 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV2686 :ISA SOME :WORD "some"))

___________________
276: "What are some genes in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some genes in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes in the MAPK signaling pathway?"
 (:VAR MV2693 :ISA BE :SUBJECT MV2692 :PREDICATE MV2695 :PRESENT "PRESENT")
 (:VAR MV2692 :ISA WHAT)
 (:VAR MV2695 :ISA GENE :CONTEXT MV2691 :QUANTIFIER MV2694 :RAW-TEXT "genes")
 (:VAR MV2691 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2698
  :RAW-TEXT "signaling pathway")
 (:VAR MV2698 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2694 :ISA SOME :WORD "some"))

___________________
277: "What are some proteins in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some proteins in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some proteins in the MAPK signaling pathway?"
 (:VAR MV2702 :ISA BE :SUBJECT MV2701 :PREDICATE MV2704 :PRESENT "PRESENT")
 (:VAR MV2701 :ISA WHAT)
 (:VAR MV2704 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV2700 :QUANTIFIER MV2703
  :RAW-TEXT "proteins")
 (:VAR MV2700 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2707
  :RAW-TEXT "signaling pathway")
 (:VAR MV2707 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2703 :ISA SOME :WORD "some"))

___________________
278: "What are the members of RAS?"

                    SOURCE-START
e12   BE            1 "What are the members of RAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of RAS?"
 (:VAR MV2710 :ISA BE :SUBJECT MV2709 :PREDICATE MV2712 :PRESENT "PRESENT")
 (:VAR MV2709 :ISA WHAT)
 (:VAR MV2712 :ISA MEMBER :SET MV2714 :HAS-DETERMINER "THE")
 (:VAR MV2714 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3
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
 (:VAR MV2720 :ISA BE :SUBJECT MV2719 :PREDICATE MV2722 :PRESENT "PRESENT")
 (:VAR MV2719 :ISA WHAT)
 (:VAR MV2722 :ISA MICRO-RNA :PREDICATION MV2724 :HAS-DETERMINER "THE"
  :RAW-TEXT "miRNAS")
 (:VAR MV2724 :ISA REGULATE :AGENT MV2722 :THAT-REL T :OBJECT MV2728 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2728 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2725 MV2726 MV2716 MV2717 MV2718))
 (:VAR MV2725 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2726 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2716 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2717 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2718 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
280: "What are the regulators of MAPPK14 in bladder"

                    SOURCE-START
e19   BE            1 "What are the regulators of MAPPK14 in bladder" 10
                    END-OF-SOURCE
("What are the regulators of MAPPK14 in bladder"
 (:VAR MV2730 :ISA BE :SUBJECT MV2729 :PREDICATE MV2732 :PRESENT "PRESENT")
 (:VAR MV2729 :ISA WHAT)
 (:VAR MV2732 :ISA REGULATOR :THEME MV2738 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2738 :ISA BIO-ENTITY :ORGAN MV2737 :NAME "MAPPK14")
 (:VAR MV2737 :ISA BIO-ORGAN :NAME "bladder" :UID "BTO:0001418"))

___________________
281: "What are the regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What are the regulators of SMURF2 in liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2 in liver?"
 (:VAR MV2743 :ISA BE :SUBJECT MV2742 :PREDICATE MV2745 :PRESENT "PRESENT")
 (:VAR MV2742 :ISA WHAT)
 (:VAR MV2745 :ISA REGULATOR :THEME MV2741 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2741 :ISA PROTEIN :ORGAN MV2748 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV2748 :ISA LIVER))

___________________
282: "What are the regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What are the regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2?"
 (:VAR MV2753 :ISA BE :SUBJECT MV2752 :PREDICATE MV2755 :PRESENT "PRESENT")
 (:VAR MV2752 :ISA WHAT)
 (:VAR MV2755 :ISA REGULATOR :THEME MV2751 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2751 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
283: "What are the regulators of c-fos in lung?"

                    SOURCE-START
e18   BE            1 "What are the regulators of c-fos in lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of c-fos in lung?"
 (:VAR MV2760 :ISA BE :SUBJECT MV2759 :PREDICATE MV2762 :PRESENT "PRESENT")
 (:VAR MV2759 :ISA WHAT)
 (:VAR MV2762 :ISA REGULATOR :THEME MV2758 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2758 :ISA PROTEIN :ORGAN MV2765 :RAW-TEXT "c-fos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2765 :ISA LUNG))

___________________
284: "What are the regulators of mapk14 in bladeeer"

                    SOURCE-START
e20   IN            1 "What are the regulators of mapk14 in bladeeer" 10
                    END-OF-SOURCE
("What are the regulators of mapk14 in bladeeer"
 (:VAR MV2781 :ISA WH-QUESTION :STATEMENT MV2779 :WH WHAT)
 (:VAR MV2779 :ISA PREPOSITIONAL-PHRASE :POBJ MV2778 :PREP "IN")
 (:VAR MV2778 :ISA BIO-ENTITY :NAME "bladeeer"))

___________________
285: "What are the regulators of mapk14"

                    SOURCE-START
e13   BE            1 "What are the regulators of mapk14" 8
                    END-OF-SOURCE
("What are the regulators of mapk14"
 (:VAR MV2784 :ISA BE :SUBJECT MV2783 :PREDICATE MV2786 :PRESENT "PRESENT")
 (:VAR MV2783 :ISA WHAT)
 (:VAR MV2786 :ISA REGULATOR :THEME MV2782 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2782 :ISA PROTEIN :RAW-TEXT "mapk14" :UID "UP:Q16539" :NAME
  "MK14_HUMAN"))

___________________
286: "What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e28   COPULAR-PREDICATION 1 "What are the transcription factors in common to the SRF, HRAS, and elk1 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
 (:VAR MV2803 :ISA COPULAR-PREDICATION :ITEM MV2792 :VALUE MV2790 :PREDICATE
  MV2793)
 (:VAR MV2792 :ISA WHAT) (:VAR MV2790 :ISA IN-COMMON :THEME MV2800)
 (:VAR MV2800 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2801 :RAW-TEXT
  "genes")
 (:VAR MV2801 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV2797 MV2798 MV2791))
 (:VAR MV2797 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2798 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV2791 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2793 :ISA BE :PREDICATE MV2789 :PRESENT "PRESENT")
 (:VAR MV2789 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :RAW-TEXT
  "transcription factors"))

___________________
287: "What are the transcription factors that regulate EELK1 and SRF?"

                    SOURCE-START
e21   BE            1 "What are the transcription factors that regulate EELK1 and SRF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EELK1 and SRF?"
 (:VAR MV2806 :ISA BE :SUBJECT MV2805 :PREDICATE MV2804 :PRESENT "PRESENT")
 (:VAR MV2805 :ISA WHAT)
 (:VAR MV2804 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2809 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2809 :ISA REGULATE :AGENT MV2804 :THAT-REL T :OBJECT MV2815 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2815 :ISA COLLECTION :RAW-TEXT "EELK1 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2814 MV2813))
 (:VAR MV2814 :ISA BIO-ENTITY :NAME "EELK1")
 (:VAR MV2813 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
288: "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"

                    SOURCE-START
e30   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
 (:VAR MV2820 :ISA BE :SUBJECT MV2819 :PREDICATE MV2816 :PRESENT "PRESENT")
 (:VAR MV2819 :ISA WHAT)
 (:VAR MV2816 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2823 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2823 :ISA REGULATE :AGENT MV2816 :THAT-REL T :OBJECT MV2830 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2830 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2824 MV2825 MV2829 MV2817 MV2818))
 (:VAR MV2824 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2825 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2829 :ISA BIO-ENTITY :NAME "STAAT3")
 (:VAR MV2817 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2818 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
289: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV2836 :ISA BE :SUBJECT MV2835 :PREDICATE MV2831 :PRESENT "PRESENT")
 (:VAR MV2835 :ISA WHAT)
 (:VAR MV2831 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2839 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2839 :ISA REGULATE :AGENT MV2831 :THAT-REL T :OBJECT MV2843 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2843 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2840 MV2841 MV2832 MV2833 MV2834))
 (:VAR MV2840 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2841 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2832 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2833 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2834 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
290: "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"

                    SOURCE-START
e26   BE            1 "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
 (:VAR MV2848 :ISA BE :SUBJECT MV2847 :PREDICATE MV2852 :PRESENT "PRESENT")
 (:VAR MV2847 :ISA WHAT)
 (:VAR MV2852 :ISA REGULATOR :THEME MV2856 :HAS-DETERMINER "THE" :CONTEXT
  MV2850 :RAW-TEXT "regulators")
 (:VAR MV2856 :ISA COLLECTION :RAW-TEXT "CCND1, FOXM1, DHFR, and KLF4" :TYPE
  PROTEIN :NUMBER 4 :ITEMS (MV2844 MV2845 MV2854 MV2846))
 (:VAR MV2844 :ISA PROTEIN :RAW-TEXT "CCND1" :UID "UP:P24385" :NAME
  "CCND1_HUMAN")
 (:VAR MV2845 :ISA PROTEIN :RAW-TEXT "FOXM1" :UID "UP:Q08050" :NAME
  "FOXM1_HUMAN")
 (:VAR MV2854 :ISA PROTEIN :RAW-TEXT "DHFR" :UID "UP:P00374" :NAME "DYR_HUMAN")
 (:VAR MV2846 :ISA PROTEIN :RAW-TEXT "KLF4" :UID "UP:O43474" :NAME
  "KLF4_HUMAN")
 (:VAR MV2850 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
291: "What cell cycle genes are regulated by FOS?"

                    SOURCE-START
e14   REGULATE      1 "What cell cycle genes are regulated by FOS" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What cell cycle genes are regulated by FOS?"
 (:VAR MV2865 :ISA REGULATE :OBJECT MV2860 :AGENT MV2864 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2860 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2858
  :RAW-TEXT "genes")
 (:VAR MV2858 :ISA CELLULAR-PROCESS :RAW-TEXT "cell cycle" :NAME "cell cycle"
  :UID "GO:0007049")
 (:VAR MV2864 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
292: "What does ERBB regulate?"

                    SOURCE-START
e5    REGULATE      1 "What does ERBB regulate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERBB regulate?"
 (:VAR MV2870 :ISA REGULATE :OBJECT MV2867 :AGENT MV2869 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2867 :ISA WHAT)
 (:VAR MV2869 :ISA PROTEIN :RAW-TEXT "ERBB" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
293: "What does it regulate in liver"

                    SOURCE-START
e11   REGULATE      1 "What does it regulate in liver" 7
                    END-OF-SOURCE
("What does it regulate in liver"
 (:VAR MV2874 :ISA REGULATE :OBJECT MV2871 :AGENT-OR-CAUSE MV2873 :ORGAN MV2876
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2871 :ISA WHAT) (:VAR MV2873 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2876 :ISA LIVER))

___________________
294: "What does miR-20b-5p target"

                    SOURCE-START
e7    TARGET        1 "What does miR-20b-5p target" 11
                    END-OF-SOURCE
("What does miR-20b-5p target"
 (:VAR MV2882 :ISA TARGET :OBJECT MV2879 :AGENT MV2878 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV2879 :ISA WHAT)
 (:VAR MV2878 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
295: "What does p53 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does p53 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does p53 regulate?"
 (:VAR MV2886 :ISA REGULATE :OBJECT MV2884 :AGENT MV2883 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2884 :ISA WHAT)
 (:VAR MV2883 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
296: "What does rb1 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does rb1 regulate" 6
                    END-OF-SOURCE
("What does rb1 regulate"
 (:VAR MV2890 :ISA REGULATE :OBJECT MV2888 :AGENT MV2887 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2888 :ISA WHAT)
 (:VAR MV2887 :ISA PROTEIN :RAW-TEXT "rb1" :UID "UP:P06400" :NAME "RB_HUMAN"))

___________________
297: "What does smad2 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does smad2 regulate" 6
                    END-OF-SOURCE
("What does smad2 regulate"
 (:VAR MV2894 :ISA REGULATE :OBJECT MV2892 :AGENT MV2891 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2892 :ISA WHAT)
 (:VAR MV2891 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
298: "What does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "What does stat regulate" 5
                    END-OF-SOURCE
("What does stat regulate"
 (:VAR MV2898 :ISA REGULATE :OBJECT MV2895 :AGENT MV2897 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2895 :ISA WHAT)
 (:VAR MV2897 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
299: "What downregulates fzd8?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates fzd8?"
 (:VAR MV2901 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV2900 :OBJECT MV2899 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV2900 :ISA WHAT)
 (:VAR MV2899 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
300: "What drug could I use to target pancreatic cancer?"

                    SOURCE-START
e20   BIO-USE       1 "What drug could I use to target pancreatic cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use to target pancreatic cancer?"
 (:VAR MV2915 :ISA BIO-USE :PATIENT MV2904 :MODAL MV2905 :AGENT MV2906 :THEME
  MV2914 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV2904 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV2905 :ISA COULD) (:VAR MV2906 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2914 :ISA TARGET :OBJECT MV2902 :RAW-TEXT "target")
 (:VAR MV2902 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
301: "What drug should I use for pancreatic cancer?"

                    SOURCE-START
e17   BIO-USE       1 "What drug should I use for pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug should I use for pancreatic cancer?"
 (:VAR MV2927 :ISA BIO-USE :OBJECT MV2918 :MODAL MV2919 :AGENT MV2920 :DISEASE
  MV2916 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV2918 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV2919 :ISA SHOULD) (:VAR MV2920 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2916 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
302: "What drugs are inhibitors of GRB2?"

                    SOURCE-START
e12   BE            1 "What drugs are inhibitors of GRB2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs are inhibitors of GRB2?"
 (:VAR MV2931 :ISA BE :SUBJECT MV2930 :PREDICATE MV2932 :PRESENT "PRESENT")
 (:VAR MV2930 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2932 :ISA INHIBITOR :PROTEIN MV2928 :RAW-TEXT "inhibitors")
 (:VAR MV2928 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN"))

___________________
303: "What drugs inhibit MAP2K1?"

                    SOURCE-START
e7    INHIBIT       1 "What drugs inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs inhibit MAP2K1?"
 (:VAR MV2938 :ISA INHIBIT :AGENT MV2937 :OBJECT MV2935 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV2937 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2935 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
304: "What drugs regulate BRAF?"

                    SOURCE-START
e6    REGULATE      1 "What drugs regulate BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs regulate BRAF?"
 (:VAR MV2941 :ISA REGULATE :AGENT MV2940 :OBJECT MV2942 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2940 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2942 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
305: "What drugs target BRAF?"

                    SOURCE-START
e7    TARGET        1 "What drugs target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target BRAF?"
 (:VAR MV2946 :ISA TARGET :AGENT MV2944 :OBJECT MV2947 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV2944 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2947 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
306: "What genes are downstream of stat3?"

                    SOURCE-START
e13   BE            1 "What genes are downstream of stat3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are downstream of stat3?"
 (:VAR MV2951 :ISA BE :SUBJECT MV2950 :PREDICATE MV2952 :PRESENT "PRESENT")
 (:VAR MV2950 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2952 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2948 :RAW-TEXT
  "downstream")
 (:VAR MV2948 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
307: "What genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathway?"
 (:VAR MV2966 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2958 :VALUE MV2965 :PREP
  "IN" :PREDICATE MV2959)
 (:VAR MV2958 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2965 :ISA GENE :CONTEXT MV2956 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2956 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2962
  :RAW-TEXT "signaling pathway")
 (:VAR MV2962 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2959 :ISA BE :PRESENT "PRESENT"))

___________________
308: "What genes are in the MAPK signaling pathways?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathways?"
 (:VAR MV2978 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2970 :VALUE MV2977 :PREP
  "IN" :PREDICATE MV2971)
 (:VAR MV2970 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2977 :ISA GENE :CONTEXT MV2968 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2968 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2974
  :RAW-TEXT "signaling pathways")
 (:VAR MV2974 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2971 :ISA BE :PRESENT "PRESENT"))

___________________
309: "What genes are in the immune system pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the immune system pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the immune system pathway?"
 (:VAR MV2990 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2982 :VALUE MV2989 :PREP
  "IN" :PREDICATE MV2983)
 (:VAR MV2982 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2989 :ISA GENE :CONTEXT MV2986 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2986 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2980
  :RAW-TEXT "pathway")
 (:VAR MV2980 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405")
 (:VAR MV2983 :ISA BE :PRESENT "PRESENT"))

___________________
310: "What genes are in the prolactin signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the prolactin signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the prolactin signaling pathway?"
 (:VAR MV3002 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2994 :VALUE MV3001 :PREP
  "IN" :PREDICATE MV2995)
 (:VAR MV2994 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3001 :ISA GENE :CONTEXT MV2992 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2992 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2998
  :RAW-TEXT "signaling pathway")
 (:VAR MV2998 :ISA PROTEIN :RAW-TEXT "prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN")
 (:VAR MV2995 :ISA BE :PRESENT "PRESENT"))

___________________
311: "What genes are involved in the IL-12 pathway?"

                    SOURCE-START
e18   INVOLVE       1 "What genes are involved in the IL-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the IL-12 pathway?"
 (:VAR MV3015 :ISA INVOLVE :THEME MV3007 :CONTEXT MV3012 :PRESENT "PRESENT")
 (:VAR MV3007 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3012 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3005 :RAW-TEXT
  "pathway")
 (:VAR MV3005 :ISA PROTEIN :RAW-TEXT "IL-12" :UID "NCIT:C20514" :NAME
  "NCIT:C20514"))

___________________
312: "What genes are involved in the Prolactin pathway?"

                    SOURCE-START
e16   INVOLVE       1 "What genes are involved in the Prolactin pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the Prolactin pathway?"
 (:VAR MV3026 :ISA INVOLVE :THEME MV3017 :CONTEXT MV3023 :PRESENT "PRESENT")
 (:VAR MV3017 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3023 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3022 :RAW-TEXT
  "pathway")
 (:VAR MV3022 :ISA PROTEIN :RAW-TEXT "Prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN"))

___________________
313: "What genes are involved in the il-12 pathway?"

                    SOURCE-START
e17   INVOLVE       1 "What genes are involved in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the il-12 pathway?"
 (:VAR MV3037 :ISA INVOLVE :THEME MV3029 :CONTEXT MV3034 :PRESENT "PRESENT")
 (:VAR MV3029 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3034 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3027 :RAW-TEXT
  "pathway")
 (:VAR MV3027 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
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
 (:VAR MV3048 :ISA INVOLVE :THEME MV3040 :CONTEXT MV3045 :PRESENT "PRESENT")
 (:VAR MV3040 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3045 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV3038
  :RAW-TEXT "pathway")
 (:VAR MV3038 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405"))

___________________
315: "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"

                    SOURCE-START
e23   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p" 28
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
 (:VAR MV3061 :ISA REGULATE :OBJECT MV3053 :AGENT MV3060 :PRESENT "PRESENT"
  :SUPERLATIVE MV3055 :ADVERB MV3056 :RAW-TEXT "regulated")
 (:VAR MV3053 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3060 :ISA COLLECTION :RAW-TEXT "miR-335-5p, miR-155-5p and miR-145-5p"
  :TYPE MICRO-RNA :NUMBER 3 :ITEMS (MV3049 MV3050 MV3051))
 (:VAR MV3049 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3050 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3051 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3055 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3056 :ISA FREQUENTLY :NAME "frequently"))

___________________
316: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"

                    SOURCE-START
e26   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" 36
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
 (:VAR MV3076 :ISA REGULATE :OBJECT MV3068 :AGENT MV3075 :PRESENT "PRESENT"
  :SUPERLATIVE MV3070 :ADVERB MV3071 :RAW-TEXT "regulated")
 (:VAR MV3068 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3075 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" :TYPE MICRO-RNA :NUMBER 4
  :ITEMS (MV3063 MV3064 MV3065 MV3066))
 (:VAR MV3063 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3064 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3065 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3066 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075")
 (:VAR MV3070 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3071 :ISA FREQUENTLY :NAME "frequently"))

___________________
317: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"

                    SOURCE-START
e27   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" 37
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
 (:VAR MV3091 :ISA REGULATE :OBJECT MV3083 :AGENT MV3090 :PRESENT "PRESENT"
  :SUPERLATIVE MV3085 :ADVERB MV3086 :RAW-TEXT "regulated")
 (:VAR MV3083 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3090 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" :TYPE MICRO-RNA :NUMBER
  4 :ITEMS (MV3078 MV3079 MV3080 MV3081))
 (:VAR MV3078 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3079 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3080 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3081 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075")
 (:VAR MV3085 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3086 :ISA FREQUENTLY :NAME "frequently"))

___________________
318: "What genes are regulated by FAKEPRTN"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by FAKEPRTN" 7
                    END-OF-SOURCE
("What genes are regulated by FAKEPRTN"
 (:VAR MV3099 :ISA REGULATE :OBJECT MV3094 :AGENT MV3098 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3094 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3098 :ISA BIO-ENTITY :NAME "FAKEPRTN"))

___________________
319: "What genes are regulated by elk1 and srf?"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by elk1 and srf" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by elk1 and srf?"
 (:VAR MV3110 :ISA REGULATE :OBJECT MV3103 :AGENT MV3109 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3103 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3109 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3101 MV3108))
 (:VAR MV3101 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV3108 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
320: "What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"

                    SOURCE-START
e16   REGULATE      1 "What genes are regulated by miR-20b-5p and MIR-29B-1-5P" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
 (:VAR MV3121 :ISA REGULATE :OBJECT MV3115 :AGENT MV3120 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3115 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3120 :ISA COLLECTION :RAW-TEXT "miR-20b-5p and MIR-29B-1-5P" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV3112 MV3113))
 (:VAR MV3112 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV3113 :ISA MICRO-RNA :RAW-TEXT "MIR-29B-1-5P" :NAME
  "microRNA 29b-1-5pm" :UID "MIMAT0004514"))

___________________
321: "What genes are regulated by smda2"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by smda2" 8
                    END-OF-SOURCE
("What genes are regulated by smda2"
 (:VAR MV3131 :ISA REGULATE :OBJECT MV3124 :AGENT MV3130 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3124 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3130 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
322: "What genes are regulated by srf"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by srf" 7
                    END-OF-SOURCE
("What genes are regulated by srf"
 (:VAR MV3139 :ISA REGULATE :OBJECT MV3134 :AGENT MV3138 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3134 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3138 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
323: "What genes are regulated by stat3 and srf"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by stat3 and srf" 10
                    END-OF-SOURCE
("What genes are regulated by stat3 and srf"
 (:VAR MV3150 :ISA REGULATE :OBJECT MV3143 :AGENT MV3149 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3143 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3149 :ISA COLLECTION :RAW-TEXT "stat3 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3141 MV3148))
 (:VAR MV3141 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3148 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
324: "What genes are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What genes are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are targeted by lung cancer?"
 (:VAR MV3158 :ISA TARGET :OBJECT MV3154 :CAUSE MV3152 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3154 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3152 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
325: "What genes are there in the MAPK signaling pathway?"

                    SOURCE-START
e21   COPULAR-PREDICATE 1 "What genes are there in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are there in the MAPK signaling pathway?"
 (:VAR MV3172 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3162 :VALUE MV3171 :PREP
  "IN" :PREDICATE MV3163)
 (:VAR MV3162 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3171 :ISA GENE :CONTEXT MV3160 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3160 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3168
  :RAW-TEXT "signaling pathway")
 (:VAR MV3168 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3163 :ISA BE :PRESENT "PRESENT"))

___________________
326: "What genes are used in the MAPK signaling pathway?"

                    SOURCE-START
e17   BIO-USE       1 "What genes are used in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are used in the MAPK signaling pathway?"
 (:VAR MV3182 :ISA BIO-USE :OBJECT MV3176 :CONTEXT MV3174 :PRESENT "PRESENT"
  :RAW-TEXT "used")
 (:VAR MV3176 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3174 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3181
  :RAW-TEXT "signaling pathway")
 (:VAR MV3181 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3189 :ISA TARGET :OBJECT MV3186 :CAUSE MV3184 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3186 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3184 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
328: "What genes does miR-20b-5p target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-20b-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-20b-5p target?"
 (:VAR MV3195 :ISA TARGET :OBJECT MV3192 :AGENT MV3190 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3192 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3190 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
329: "What genes does miR-562 target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-562 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-562 target?"
 (:VAR MV3201 :ISA TARGET :OBJECT MV3198 :AGENT MV3196 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3198 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3196 :ISA MICRO-RNA :RAW-TEXT "miR-562" :NAME "microRNA 562" :UID
  "MI0003569"))

___________________
330: "What genes does smad2 upregulate?"

                    SOURCE-START
e8    UPREGULATE    1 "What genes does smad2 upregulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does smad2 upregulate?"
 (:VAR MV3206 :ISA UPREGULATE :OBJECT MV3204 :AGENT MV3202 :PRESENT "PRESENT"
  :RAW-TEXT "upregulate")
 (:VAR MV3204 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3202 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
331: "What genes does stat3 regulate in liver cells?"

                    SOURCE-START
e15   REGULATE      1 "What genes does stat3 regulate in liver cells" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver cells?"
 (:VAR MV3211 :ISA REGULATE :OBJECT MV3209 :AGENT MV3207 :CELL-TYPE MV3214
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3209 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3207 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3214 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV3213)
 (:VAR MV3213 :ISA LIVER))

___________________
332: "What genes does stat3 regulate in liver?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver?"
 (:VAR MV3220 :ISA REGULATE :OBJECT MV3218 :AGENT MV3216 :ORGAN MV3222 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3218 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3216 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3222 :ISA LIVER))

___________________
333: "What genes does stat3 regulate in lung?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in lung" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in lung?"
 (:VAR MV3228 :ISA REGULATE :OBJECT MV3226 :AGENT MV3224 :ORGAN MV3230 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3226 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3224 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3230 :ISA LUNG))

___________________
334: "What genes does stat3 regulate"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    END-OF-SOURCE
("What genes does stat3 regulate"
 (:VAR MV3236 :ISA REGULATE :OBJECT MV3234 :AGENT MV3232 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3234 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3232 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
335: "What genes in the liver does stat3 regulate?"

                    SOURCE-START
e16   REGULATE      1 "What genes in the liver does stat3 regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes in the liver does stat3 regulate?"
 (:VAR MV3244 :ISA REGULATE :OBJECT MV3239 :AGENT MV3237 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3239 :ISA GENE :ORGAN MV3242 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3242 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV3237 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
336: "What genes is stat3 upstream from?"

                    SOURCE-START
e12   FROM          1 "What genes is stat3 upstream from" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes is stat3 upstream from?"
 (:VAR MV3253 :ISA WH-QUESTION :STATEMENT MV3252 :VAR NIL :WH WHAT)
 (:VAR MV3252 :ISA FROM :WORD "from"))

___________________
337: "What genes is stat3 upstream of?"

                    SOURCE-START
e12   BE            1 "What genes is stat3 upstream of" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes is stat3 upstream of?"
 (:VAR MV3257 :ISA BE :SUBJECT MV3256 :PREDICATE MV3258 :PRESENT "PRESENT")
 (:VAR MV3256 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3258 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3256 :MODIFIER MV3254
  :RAW-TEXT "upstream")
 (:VAR MV3254 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
338: "What genes regulated by FOS are kinases?"

                    SOURCE-START
e14   BE            1 "What genes regulated by FOS are kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by FOS are kinases?"
 (:VAR MV3266 :ISA BE :SUBJECT MV3262 :PREDICATE MV3267 :PRESENT "PRESENT")
 (:VAR MV3262 :ISA GENE :PREDICATION MV3263 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3263 :ISA REGULATE :OBJECT MV3262 :AGENT MV3265 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3265 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV3267 :ISA KINASE :RAW-TEXT "kinases"))

___________________
339: "What genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "What genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by stat3 are kinases?"
 (:VAR MV3274 :ISA BE :SUBJECT MV3271 :PREDICATE MV3275 :PRESENT "PRESENT")
 (:VAR MV3271 :ISA GENE :PREDICATION MV3272 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3272 :ISA REGULATE :OBJECT MV3271 :AGENT MV3269 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3269 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3275 :ISA KINASE :RAW-TEXT "kinases"))

___________________
340: "What immune pathways involve KRAS and ELK1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve KRAS and ELK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve KRAS and ELK1?"
 (:VAR MV3281 :ISA INVOLVE :THEME MV3280 :THEME MV3284 :PRESENT "PRESENT")
 (:VAR MV3280 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3279 :RAW-TEXT
  "pathways")
 (:VAR MV3279 :ISA IMMUNE :NAME "immune")
 (:VAR MV3284 :ISA COLLECTION :RAW-TEXT "KRAS and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3282 MV3277))
 (:VAR MV3282 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3277 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
341: "What immune pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "What immune pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve SRF?"
 (:VAR MV3288 :ISA INVOLVE :THEME MV3287 :THEME MV3289 :PRESENT "PRESENT")
 (:VAR MV3287 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3286 :RAW-TEXT
  "pathways")
 (:VAR MV3286 :ISA IMMUNE :NAME "immune")
 (:VAR MV3289 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
342: "What immune pathways involve kras and elk1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve kras and elk1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve kras and elk1?"
 (:VAR MV3294 :ISA INVOLVE :THEME MV3293 :THEME MV3297 :PRESENT "PRESENT")
 (:VAR MV3293 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3292 :RAW-TEXT
  "pathways")
 (:VAR MV3292 :ISA IMMUNE :NAME "immune")
 (:VAR MV3297 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3295 MV3290))
 (:VAR MV3295 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3290 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
343: "What immune pathways involve tap1 and jak1?"

                    SOURCE-START
e17   INVOLVE       1 "What immune pathways involve tap1 and jak1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve tap1 and jak1?"
 (:VAR MV3301 :ISA INVOLVE :THEME MV3300 :THEME MV3311 :PRESENT "PRESENT")
 (:VAR MV3300 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3299 :RAW-TEXT
  "pathways")
 (:VAR MV3299 :ISA IMMUNE :NAME "immune")
 (:VAR MV3311 :ISA COLLECTION :RAW-TEXT "tap1 and jak1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3309 MV3310))
 (:VAR MV3309 :ISA PROTEIN :RAW-TEXT "tap1" :UID "UP:Q03518" :NAME
  "TAP1_HUMAN")
 (:VAR MV3310 :ISA PROTEIN :RAW-TEXT "jak1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
344: "What inhibits BRAF?"

                    SOURCE-START
e4    INHIBIT       1 "What inhibits BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits BRAF?"
 (:VAR MV3313 :ISA INHIBIT :AGENT-OR-CAUSE MV3312 :OBJECT MV3314 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV3312 :ISA WHAT)
 (:VAR MV3314 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
345: "What is STAT3?"

                    SOURCE-START
e5    BE            1 "What is STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT3?"
 (:VAR MV3317 :ISA BE :SUBJECT MV3316 :PREDICATE MV3315 :PRESENT "PRESENT")
 (:VAR MV3316 :ISA WHAT)
 (:VAR MV3315 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
346: "What is STAT?"

                    SOURCE-START
e4    BE            1 "What is STAT" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT?"
 (:VAR MV3319 :ISA BE :SUBJECT MV3318 :PREDICATE MV3320 :PRESENT "PRESENT")
 (:VAR MV3318 :ISA WHAT)
 (:VAR MV3320 :ISA PROTEIN :RAW-TEXT "STAT" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
347: "What is downstream of stat3?"

                    SOURCE-START
e11   BE            1 "What is downstream of stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is downstream of stat3?"
 (:VAR MV3323 :ISA BE :SUBJECT MV3322 :PREDICATE MV3324 :PRESENT "PRESENT")
 (:VAR MV3322 :ISA WHAT)
 (:VAR MV3324 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV3321 :RAW-TEXT
  "downstream")
 (:VAR MV3321 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
348: "What is erbb?"

                    SOURCE-START
e4    BE            1 "What is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is erbb?"
 (:VAR MV3329 :ISA BE :SUBJECT MV3328 :PREDICATE MV3330 :PRESENT "PRESENT")
 (:VAR MV3328 :ISA WHAT)
 (:VAR MV3330 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
349: "What is errb?"

                    SOURCE-START
e4    BE            1 "What is errb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is errb?"
 (:VAR MV3332 :ISA BE :SUBJECT MV3331 :PREDICATE MV3333 :PRESENT "PRESENT")
 (:VAR MV3331 :ISA WHAT) (:VAR MV3333 :ISA BIO-ENTITY :NAME "errb"))

___________________
350: "What is regulated by elk1"

                    SOURCE-START
e10   REGULATE      1 "What is regulated by elk1" 7
                    END-OF-SOURCE
("What is regulated by elk1"
 (:VAR MV3339 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3335 :AGENT MV3334
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3335 :ISA WHAT)
 (:VAR MV3334 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
351: "What is the evidence that kras decreases frizzled8?"

                    SOURCE-START
e17   BE            1 "What is the evidence that kras decreases frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases frizzled8?"
 (:VAR MV3343 :ISA BE :SUBJECT MV3342 :PREDICATE MV3349 :PRESENT "PRESENT")
 (:VAR MV3342 :ISA WHAT)
 (:VAR MV3349 :ISA EVIDENCE :STATEMENT MV3348 :HAS-DETERMINER "THE")
 (:VAR MV3348 :ISA DECREASE :AGENT MV3347 :OBJECT MV3341 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV3347 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3341 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
352: "What is the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   BE            1 "What is the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV3352 :ISA BE :SUBJECT MV3351 :PREDICATE MV3362 :PRESENT "PRESENT")
 (:VAR MV3351 :ISA WHAT)
 (:VAR MV3362 :ISA EVIDENCE :STATEMENT MV3357 :HAS-DETERMINER "THE")
 (:VAR MV3357 :ISA DECREASE :AGENT MV3356 :AFFECTED-PROCESS-OR-OBJECT MV3359
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV3356 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3359 :ISA BIO-AMOUNT :MEASURED-ITEM MV3350 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV3350 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
353: "What is the target of Selumetinib?"

                    SOURCE-START
e13   BE            1 "What is the target of Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the target of Selumetinib?"
 (:VAR MV3364 :ISA BE :SUBJECT MV3363 :PREDICATE MV3366 :PRESENT "PRESENT")
 (:VAR MV3363 :ISA WHAT)
 (:VAR MV3366 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV3369 :HAS-DETERMINER "THE"
  :RAW-TEXT "target")
 (:VAR MV3369 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
354: "What kinases does smad2 regulate"

                    SOURCE-START
e8    REGULATE      1 "What kinases does smad2 regulate" 7
                    END-OF-SOURCE
("What kinases does smad2 regulate"
 (:VAR MV3375 :ISA REGULATE :OBJECT MV3373 :AGENT MV3371 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3373 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV3371 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
355: "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e23   REGULATE      1 "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3383 :ISA REGULATE :AGENT MV3380 :OBJECT MV3387 :PRESENT "PRESENT"
  :ADVERB MV3381 :ADVERB MV3382 :RAW-TEXT "regulate")
 (:VAR MV3380 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3387 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3384 MV3385 MV3376 MV3377 MV3378))
 (:VAR MV3384 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV3385 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3376 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3377 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV3378 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN")
 (:VAR MV3381 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3382 :ISA FREQUENTLY :NAME "frequently"))

___________________
356: "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3393 :ISA REGULATE :AGENT MV3392 :OBJECT MV3397 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3392 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3397 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3394 MV3395 MV3388 MV3389 MV3390))
 (:VAR MV3394 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV3395 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3388 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3389 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV3390 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
357: "What micrornas are regulated by p53?"

                    SOURCE-START
e12   REGULATE      1 "What micrornas are regulated by p53" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What micrornas are regulated by p53?"
 (:VAR MV3404 :ISA REGULATE :OBJECT MV3400 :AGENT MV3398 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3400 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3398 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
358: "What micrornas regulate genes in the mapk signaling pathways"

                    SOURCE-START
e17   REGULATE      1 "What micrornas regulate genes in the mapk signaling pathways" 10
                    END-OF-SOURCE
("What micrornas regulate genes in the mapk signaling pathways"
 (:VAR MV3409 :ISA REGULATE :AGENT MV3408 :OBJECT MV3410 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3408 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3410 :ISA GENE :CONTEXT MV3406 :RAW-TEXT "genes")
 (:VAR MV3406 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3413
  :RAW-TEXT "signaling pathways")
 (:VAR MV3413 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
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
 (:VAR MV3416 :ISA INVOLVE :THEME MV3418 :THEME MV3417 :PRESENT "PRESENT")
 (:VAR MV3418 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :NAME "pahtways")
 (:VAR MV3417 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
360: "What pathways are common to STAT3 and SRF?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What pathways are common to STAT3 and SRF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are common to STAT3 and SRF?"
 (:VAR MV3429 :ISA COPULAR-PREDICATION :ITEM MV3421 :VALUE MV3423 :PREDICATE
  MV3422)
 (:VAR MV3421 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3423 :ISA COMMON :THEME MV3427)
 (:VAR MV3427 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3419 MV3426))
 (:VAR MV3419 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3426 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3422 :ISA BE :PRESENT "PRESENT"))

___________________
361: "What pathways involve cfos?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve cfos" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve cfos?"
 (:VAR MV3432 :ISA INVOLVE :THEME MV3431 :THEME MV3433 :PRESENT "PRESENT")
 (:VAR MV3431 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3433 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
362: "What pathways involve kras and elk1?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve kras and elk1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve kras and elk1?"
 (:VAR MV3437 :ISA INVOLVE :THEME MV3436 :THEME MV3440 :PRESENT "PRESENT")
 (:VAR MV3436 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3440 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3438 MV3434))
 (:VAR MV3438 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3434 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
363: "What pathways involve the SRF transcription factor?"

                    SOURCE-START
e12   INVOLVE       1 "What pathways involve the SRF transcription factor" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the SRF transcription factor?"
 (:VAR MV3444 :ISA INVOLVE :THEME MV3443 :THEME MV3441 :PRESENT "PRESENT")
 (:VAR MV3443 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3441 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :MODIFIER MV3446
  :RAW-TEXT "transcription factor")
 (:VAR MV3446 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
364: "What pathways utilize srf and is srf a kinase"

                    SOURCE-START
e16   KINASE        1 "What pathways utilize srf and is srf a kinase" 10
                    END-OF-SOURCE
("What pathways utilize srf and is srf a kinase"
 (:VAR MV3457 :ISA WH-QUESTION :STATEMENT MV3455 :VAR NIL :WH WHAT)
 (:VAR MV3455 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
365: "What proteins are in the MAPK family?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What proteins are in the MAPK family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are in the MAPK family?"
 (:VAR MV3468 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3459 :VALUE MV3466 :PREP
  MV3461 :PREDICATE MV3460)
 (:VAR MV3459 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3466 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3461 :ISA IN :WORD "in") (:VAR MV3460 :ISA BE :PRESENT "PRESENT"))

___________________
366: "What proteins are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by lung cancer?"
 (:VAR MV3475 :ISA TARGET :OBJECT MV3471 :CAUSE MV3469 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3471 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3469 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
367: "What proteins does PLX-4720 target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does PLX-4720 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does PLX-4720 target?"
 (:VAR MV3482 :ISA TARGET :OBJECT MV3479 :AGENT MV3477 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3479 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3477 :ISA MOLECULE :RAW-TEXT "PLX-4720" :NAME "plx-4720" :UID
  "PCID:24180719"))

___________________
368: "What proteins does lung cancer target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does lung cancer target" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does lung cancer target?"
 (:VAR MV3488 :ISA TARGET :OBJECT MV3485 :CAUSE MV3483 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3485 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3483 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
369: "What proteins does vemurafenib target?"

                    SOURCE-START
e8    TARGET        1 "What proteins does vemurafenib target" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does vemurafenib target?"
 (:VAR MV3494 :ISA TARGET :OBJECT MV3490 :AGENT MV3492 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3490 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3492 :ISA DRUG :RAW-TEXT "vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257"))

___________________
370: "What proteins might lead to the development of lung cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of lung cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins might lead to the development of lung cancer?"
 (:VAR MV3499 :ISA LEAD :AGENT MV3497 :THEME MV3502 :MODAL MV3498 :RAW-TEXT
  "lead")
 (:VAR MV3497 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3502 :ISA DEVELOPMENT :DISEASE MV3495 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV3495 :ISA CANCER :NAME "lung cancer" :UID "TS-0571")
 (:VAR MV3498 :ISA MIGHT))

___________________
371: "What proteins might lead to the development of pancreatic cancer."

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE
("What proteins might lead to the development of pancreatic cancer."
 (:VAR MV3510 :ISA LEAD :AGENT MV3508 :THEME MV3513 :MODAL MV3509 :RAW-TEXT
  "lead")
 (:VAR MV3508 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3513 :ISA DEVELOPMENT :DISEASE MV3506 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV3506 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV3509 :ISA MIGHT))

___________________
372: "What reactome pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What reactome pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune signaling?"
 (:VAR MV3520 :ISA INVOLVE :THEME MV3519 :THEME MV3522 :PRESENT "PRESENT")
 (:VAR MV3519 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3518 :RAW-TEXT
  "pathways")
 (:VAR MV3518 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV3522 :ISA SIGNAL :MODIFIER MV3521 :RAW-TEXT "signaling")
 (:VAR MV3521 :ISA IMMUNE :NAME "immune"))

___________________
373: "What regulates HGF?"

                    SOURCE-START
e4    REGULATE      1 "What regulates HGF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates HGF?"
 (:VAR MV3524 :ISA REGULATE :AGENT-OR-CAUSE MV3523 :OBJECT MV3525 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3523 :ISA WHAT)
 (:VAR MV3525 :ISA PROTEIN :RAW-TEXT "HGF" :UID "UP:P14210" :NAME "HGF_HUMAN"))

___________________
374: "What regulates SMURF2?"

                    SOURCE-START
e5    REGULATE      1 "What regulates SMURF2" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates SMURF2?"
 (:VAR MV3528 :ISA REGULATE :AGENT-OR-CAUSE MV3527 :OBJECT MV3526 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3527 :ISA WHAT)
 (:VAR MV3526 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
375: "What regulates smurf2 in liver"

                    SOURCE-START
e10   REGULATE      1 "What regulates smurf2 in liver" 7
                    END-OF-SOURCE
("What regulates smurf2 in liver"
 (:VAR MV3531 :ISA REGULATE :AGENT-OR-CAUSE MV3530 :OBJECT MV3529 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3530 :ISA WHAT)
 (:VAR MV3529 :ISA PROTEIN :ORGAN MV3533 :RAW-TEXT "smurf2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3533 :ISA LIVER))

___________________
376: "What signaling pathways are shared by RELA and ELK1?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by RELA and ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by RELA and ELK1?"
 (:VAR MV3544 :ISA SHARE :OBJECT MV3535 :PARTICIPANT MV3543 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3535 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3543 :ISA COLLECTION :RAW-TEXT "RELA and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3541 MV3536))
 (:VAR MV3541 :ISA PROTEIN :RAW-TEXT "RELA" :UID "UP:Q04206" :NAME
  "TF65_HUMAN")
 (:VAR MV3536 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
377: "What signaling pathways are shared by STAT3 and SRF?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by STAT3 and SRF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3 and SRF?"
 (:VAR MV3555 :ISA SHARE :OBJECT MV3546 :PARTICIPANT MV3554 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3546 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3554 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3547 MV3553))
 (:VAR MV3547 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3553 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
378: "What signaling pathways are shared by STAT3, SOCS3 and SRF?"

                    SOURCE-START
e19   SHARE         1 "What signaling pathways are shared by STAT3, SOCS3 and SRF" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
 (:VAR MV3567 :ISA SHARE :OBJECT MV3557 :PARTICIPANT MV3566 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3557 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3566 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3 and SRF" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3558 MV3559 MV3565))
 (:VAR MV3558 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3559 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3565 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV3578 :ISA BIO-PRODUCE :AGENT MV3575 :OBJECT MV3576 :PRESENT "PRESENT"
  :RAW-TEXT "produces")
 (:VAR MV3575 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV3576 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
381: "What transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factor transcribes SMURF2?"
 (:VAR MV3582 :ISA TRANSCRIBE :AGENT MV3579 :OBJECT MV3580 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV3579 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV3580 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
382: "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e31   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3598 :ISA COPULAR-PREDICATION :ITEM MV3583 :VALUE MV3590 :PREDICATE
  MV3589)
 (:VAR MV3583 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3590 :ISA COMMON :THEME MV3595)
 (:VAR MV3595 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3596 :RAW-TEXT
  "genes")
 (:VAR MV3596 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3584 MV3585 MV3593 MV3586 MV3587))
 (:VAR MV3584 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3585 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3593 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3586 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3587 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3589 :ISA BE :PRESENT "PRESENT"))

___________________
383: "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e26   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3612 :ISA COPULAR-PREDICATION :ITEM MV3599 :VALUE MV3605 :PREDICATE
  MV3604)
 (:VAR MV3599 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3605 :ISA COMMON :THEME MV3609)
 (:VAR MV3609 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3610 :RAW-TEXT
  "genes")
 (:VAR MV3610 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3600 MV3601 MV3602))
 (:VAR MV3600 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3601 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3602 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3604 :ISA BE :PRESENT "PRESENT"))

___________________
384: "What genes does stat3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate?"
 (:VAR MV3617 :ISA REGULATE :OBJECT MV3615 :AGENT MV3613 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3615 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3613 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
385: "What transcription factors are common to these genes?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "What transcription factors are common to these genes" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to these genes?"
 (:VAR MV3626 :ISA COPULAR-PREDICATION :ITEM MV3618 :VALUE MV3621 :PREDICATE
  MV3620)
 (:VAR MV3618 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3621 :ISA COMMON :THEME MV3624)
 (:VAR MV3624 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV3620 :ISA BE :PRESENT "PRESENT"))

___________________
386: "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e32   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3642 :ISA COPULAR-PREDICATION :ITEM MV3627 :VALUE MV3628 :PREDICATE
  MV3634)
 (:VAR MV3627 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3628 :ISA IN-COMMON :THEME MV3639)
 (:VAR MV3639 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3640 :RAW-TEXT
  "genes")
 (:VAR MV3640 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3629 MV3630 MV3637 MV3631 MV3632))
 (:VAR MV3629 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3630 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3637 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3631 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3632 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3634 :ISA BE :PRESENT "PRESENT"))

___________________
387: "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3656 :ISA COPULAR-PREDICATION :ITEM MV3643 :VALUE MV3644 :PREDICATE
  MV3649)
 (:VAR MV3643 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3644 :ISA IN-COMMON :THEME MV3653)
 (:VAR MV3653 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3654 :RAW-TEXT
  "genes")
 (:VAR MV3654 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3645 MV3646 MV3647))
 (:VAR MV3645 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3646 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3647 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3649 :ISA BE :PRESENT "PRESENT"))

___________________
388: "What transcription factors are regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What transcription factors are regulators of SMURF2 in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2 in liver?"
 (:VAR MV3660 :ISA BE :SUBJECT MV3657 :PREDICATE MV3661 :PRESENT "PRESENT")
 (:VAR MV3657 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3661 :ISA REGULATOR :THEME MV3658 :RAW-TEXT "regulators")
 (:VAR MV3658 :ISA PROTEIN :ORGAN MV3664 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3664 :ISA LIVER))

___________________
389: "What transcription factors are regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What transcription factors are regulators of SMURF2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2?"
 (:VAR MV3670 :ISA BE :SUBJECT MV3667 :PREDICATE MV3671 :PRESENT "PRESENT")
 (:VAR MV3667 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3671 :ISA REGULATOR :THEME MV3668 :RAW-TEXT "regulators")
 (:VAR MV3668 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
390: "What transcription factors are shared by the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e24   SHARE         1 "What transcription factors are shared by the SRF, HRAS, and elk1 genes" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
 (:VAR MV3686 :ISA SHARE :OBJECT MV3674 :PARTICIPANT MV3684 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3674 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3684 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3685 :RAW-TEXT
  "genes")
 (:VAR MV3685 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3681 MV3682 MV3675))
 (:VAR MV3681 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3682 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV3675 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
391: "What transcription factors regulate SMURF2 in liver?"

                    SOURCE-START
e13   REGULATE      1 "What transcription factors regulate SMURF2 in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate SMURF2 in liver?"
 (:VAR MV3691 :ISA REGULATE :AGENT MV3688 :OBJECT MV3689 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3688 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3689 :ISA PROTEIN :ORGAN MV3693 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3693 :ISA LIVER))

___________________
392: "What transcription factors regulate ZEB1?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate ZEB1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate ZEB1?"
 (:VAR MV3698 :ISA REGULATE :AGENT MV3695 :OBJECT MV3696 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3695 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3696 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME
  "ZEB1_HUMAN"))

___________________
393: "What transcription factors regulate erk"

                    SOURCE-START
e7    REGULATE      1 "What transcription factors regulate erk" 6
                    END-OF-SOURCE
("What transcription factors regulate erk"
 (:VAR MV3701 :ISA REGULATE :AGENT MV3699 :OBJECT MV3702 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3699 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3702 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
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
 (:VAR MV3705 :ISA REGULATE :AGENT MV3703 :THEME MV3711 :OBJECT MV3706 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3703 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3711 :ISA BIO-ENTITY :HAS-DETERMINER "THE" :MODIFIER MV3709
  :CELLULAR-PROCESS MV3710 :NAME "pathwya")
 (:VAR MV3709 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
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
 (:VAR MV3710 :ISA SIGNAL :RAW-TEXT "signaling")
 (:VAR MV3706 :ISA GENE :RAW-TEXT "genes"))

___________________
395: "What transcription factors regulated frizzled8?"

                    SOURCE-START
e9    PROTEIN       1 "What transcription factors regulated frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulated frizzled8?"
 (:VAR MV3714 :ISA PROTEIN :HAS-DETERMINER "WHAT" :PREDICATION MV3716 :RAW-TEXT
  "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV3716 :ISA REGULATE :OBJECT MV3714 :AGENT MV3713 :RAW-TEXT "regulated")
 (:VAR MV3713 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
396: "What transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors transcribe SMURF2?"
 (:VAR MV3720 :ISA TRANSCRIBE :AGENT MV3717 :OBJECT MV3718 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV3717 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3718 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
397: "What upregulates fzd8?"

                    SOURCE-START
e5    UPREGULATE    1 "What upregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates fzd8?"
 (:VAR MV3723 :ISA UPREGULATE :AGENT-OR-CAUSE MV3722 :OBJECT MV3721 :PRESENT
  "PRESENT" :RAW-TEXT "upregulates")
 (:VAR MV3722 :ISA WHAT)
 (:VAR MV3721 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
398: "Where is STAT3 expressed?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Where is STAT3 expressed" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Where is STAT3 expressed?"
 (:VAR MV3729 :ISA GENE-TRANSCRIPT-EXPRESS :LOCATION MV3725 :OBJECT MV3724
  :PAST "PAST" :RAW-TEXT "expressed")
 (:VAR MV3725 :ISA WHERE)
 (:VAR MV3724 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
399: "Which KEGG pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve SRF?"
 (:VAR MV3733 :ISA INVOLVE :THEME MV3732 :THEME MV3734 :PRESENT "PRESENT")
 (:VAR MV3732 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3731 :RAW-TEXT
  "pathways")
 (:VAR MV3731 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3734 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
400: "Which KEGG pathways use SRF?"

                    SOURCE-START
e9    BIO-USE       1 "Which KEGG pathways use SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways use SRF?"
 (:VAR MV3739 :ISA BIO-USE :AGENT MV3737 :OBJECT MV3740 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3737 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3736 :RAW-TEXT
  "pathways")
 (:VAR MV3736 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3740 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
401: "What transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate frizzled8?"
 (:VAR MV3744 :ISA REGULATE :AGENT MV3741 :OBJECT MV3742 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3741 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3742 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
402: "Which also regulate srf"

                    SOURCE-START
e7    REGULATE      1 "Which also regulate srf" 5
                    END-OF-SOURCE
("Which also regulate srf"
 (:VAR MV3748 :ISA REGULATE :AGENT-OR-CAUSE MV3745 :OBJECT MV3749 :PRESENT
  "PRESENT" :ADVERB MV3746 :RAW-TEXT "regulate")
 (:VAR MV3745 :ISA WHICH)
 (:VAR MV3749 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3746 :ISA ALSO :NAME "also"))

___________________
403: "Which apoptotic genes are regulated by stat3?"

                    SOURCE-START
e15   REGULATE      1 "Which apoptotic genes are regulated by stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes are regulated by stat3?"
 (:VAR MV3758 :ISA REGULATE :OBJECT MV3754 :AGENT MV3750 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3754 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3752
  :RAW-TEXT "genes")
 (:VAR MV3752 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3750 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
404: "Which apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "Which apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes is stat3 upstream of?"
 (:VAR MV3765 :ISA BE :SUBJECT MV3764 :PREDICATE MV3766 :PRESENT "PRESENT")
 (:VAR MV3764 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3762
  :RAW-TEXT "genes")
 (:VAR MV3762 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3766 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3764 :MODIFIER MV3760
  :RAW-TEXT "upstream")
 (:VAR MV3760 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
405: "Which genes are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which genes are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are targeted by STAT3?"
 (:VAR MV3775 :ISA TARGET :OBJECT MV3771 :AGENT MV3769 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3771 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV3769 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
406: "Which genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "Which genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes regulated by stat3 are kinases?"
 (:VAR MV3782 :ISA BE :SUBJECT MV3779 :PREDICATE MV3783 :PRESENT "PRESENT")
 (:VAR MV3779 :ISA GENE :PREDICATION MV3780 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV3780 :ISA REGULATE :OBJECT MV3779 :AGENT MV3777 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3777 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3783 :ISA KINASE :RAW-TEXT "kinases"))

___________________
407: "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e29   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3799 :ISA SHARE :OBJECT MV3791 :PARTICIPANT MV3797 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3791 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3790 :RAW-TEXT
  "pathways")
 (:VAR MV3790 :ISA IMMUNE :NAME "immune")
 (:VAR MV3797 :ISA GENE :EXPRESSES MV3798 :RAW-TEXT "genes")
 (:VAR MV3798 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3785 MV3786 MV3795 MV3787 MV3788))
 (:VAR MV3785 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3786 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3795 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3787 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3788 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
408: "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3814 :ISA SHARE :OBJECT MV3806 :PARTICIPANT MV3812 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3806 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3805 :RAW-TEXT
  "pathways")
 (:VAR MV3805 :ISA IMMUNE :NAME "immune")
 (:VAR MV3812 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3813 :RAW-TEXT
  "genes")
 (:VAR MV3813 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3801 MV3802 MV3803))
 (:VAR MV3801 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3802 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3803 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
409: "Which kegg pathways utilize genes regulated by smad2"

                    SOURCE-START
e15   UTILIZE       1 "Which kegg pathways utilize genes regulated by smad2" 10
                    END-OF-SOURCE
("Which kegg pathways utilize genes regulated by smad2"
 (:VAR MV3820 :ISA UTILIZE :PARTICIPANT MV3819 :OBJECT MV3821 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3819 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3818 :RAW-TEXT
  "pathways")
 (:VAR MV3818 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3821 :ISA GENE :PREDICATION MV3822 :RAW-TEXT "genes")
 (:VAR MV3822 :ISA REGULATE :OBJECT MV3821 :AGENT MV3816 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3816 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
410: "Which Reactome pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which Reactome pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which Reactome pathways utilize SRF?"
 (:VAR MV3828 :ISA UTILIZE :PARTICIPANT MV3827 :OBJECT MV3829 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3827 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3826 :RAW-TEXT
  "pathways")
 (:VAR MV3826 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV3829 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
411: "Which kegg pathways utilize it"

                    SOURCE-START
e9    UTILIZE       1 "Which kegg pathways utilize it" 6
                    END-OF-SOURCE
("Which kegg pathways utilize it"
 (:VAR MV3833 :ISA UTILIZE :PARTICIPANT MV3832 :OBJECT MV3834 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3832 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3831 :RAW-TEXT
  "pathways")
 (:VAR MV3831 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3834 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
412: "Which of them are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of them are regulated by elk1" 9
                    END-OF-SOURCE
("Which of them are regulated by elk1"
 (:VAR MV3842 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3838 :AGENT MV3835
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3838 :ISA PRONOUN/PLURAL :QUANTIFIER MV3836 :WORD "them")
 (:VAR MV3836 :ISA WHICH)
 (:VAR MV3835 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
413: "Which of these are expressed in liver"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of these are expressed in liver" 8
                    END-OF-SOURCE
("Which of these are expressed in liver"
 (:VAR MV3852 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV3847 :ORGAN MV3851
  :PRESENT "PRESENT" :RAW-TEXT "expressed")
 (:VAR MV3847 :ISA THESE :QUANTIFIER MV3845 :WORD "these")
 (:VAR MV3845 :ISA WHICH) (:VAR MV3851 :ISA LIVER))

___________________
414: "Which of these are in immune pathways"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    END-OF-SOURCE
("Which of these are in immune pathways"
 (:VAR MV3863 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3857 :VALUE MV3861 :PREP
  MV3859 :PREDICATE MV3858)
 (:VAR MV3857 :ISA THESE :QUANTIFIER MV3855 :WORD "these")
 (:VAR MV3855 :ISA WHICH)
 (:VAR MV3861 :ISA PATHWAY :MODIFIER MV3860 :RAW-TEXT "pathways")
 (:VAR MV3860 :ISA IMMUNE :NAME "immune") (:VAR MV3859 :ISA IN :WORD "in")
 (:VAR MV3858 :ISA BE :PRESENT "PRESENT"))

___________________
415: "what proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "what proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("what proteins does MEK phosphorylate?"
 (:VAR MV3869 :ISA PHOSPHORYLATE :AMINO-ACID MV3866 :AGENT MV3868 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV3866 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3868 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV3873 :ISA BE :SUBJECT MV3872 :PREDICATE MV3874 :PRESENT "PRESENT")
 (:VAR MV3872 :ISA THESE :QUANTIFIER MV3870 :WORD "these")
 (:VAR MV3870 :ISA WHICH) (:VAR MV3874 :ISA KINASE :RAW-TEXT "kinases"))

___________________
417: "Which of those are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by elk1" 9
                    END-OF-SOURCE
("Which of those are regulated by elk1"
 (:VAR MV3883 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3879 :AGENT MV3876
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3879 :ISA THOSE :QUANTIFIER MV3877 :WORD "those")
 (:VAR MV3877 :ISA WHICH)
 (:VAR MV3876 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
418: "Which of these are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by elk1" 9
                    END-OF-SOURCE
("Which of these are regulated by elk1"
 (:VAR MV3893 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3889 :AGENT MV3886
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3889 :ISA THESE :QUANTIFIER MV3887 :WORD "these")
 (:VAR MV3887 :ISA WHICH)
 (:VAR MV3886 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
419: "Which of these are regulated by fakeprotein"

                    SOURCE-START
e14   REGULATE      1 "Which of these are regulated by fakeprotein" 8
                    END-OF-SOURCE
("Which of these are regulated by fakeprotein"
 (:VAR MV3903 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3898 :AGENT MV3902
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3898 :ISA THESE :QUANTIFIER MV3896 :WORD "these")
 (:VAR MV3896 :ISA WHICH) (:VAR MV3902 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
420: "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3919 :ISA SHARE :OBJECT MV3911 :PARTICIPANT MV3917 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3911 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3917 :ISA GENE :EXPRESSES MV3918 :RAW-TEXT "genes")
 (:VAR MV3918 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3906 MV3907 MV3915 MV3908 MV3909))
 (:VAR MV3906 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3907 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3915 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3908 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3909 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
421: "Which pathways are shared by stat3, socs3, and creb5"

                    SOURCE-START
e21   SHARE         1 "Which pathways are shared by stat3, socs3, and creb5" 15
                    END-OF-SOURCE
("Which pathways are shared by stat3, socs3, and creb5"
 (:VAR MV3933 :ISA SHARE :OBJECT MV3924 :PARTICIPANT MV3932 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3924 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3932 :ISA COLLECTION :RAW-TEXT "stat3, socs3, and creb5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3921 MV3922 MV3931))
 (:VAR MV3921 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3922 :ISA PROTEIN :RAW-TEXT "socs3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3931 :ISA PROTEIN :RAW-TEXT "creb5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
422: "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e30   SHARE         1 "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3949 :ISA SHARE :OBJECT MV3940 :PARTICIPANT MV3947 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3940 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3947 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3948 :RAW-TEXT
  "genes")
 (:VAR MV3948 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3935 MV3936 MV3945 MV3937 MV3938))
 (:VAR MV3935 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3936 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3945 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3937 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3938 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
423: "Which pathways involve TAP1 and JAK1?"

                    SOURCE-START
e11   INVOLVE       1 "Which pathways involve TAP1 and JAK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve TAP1 and JAK1?"
 (:VAR MV3955 :ISA INVOLVE :THEME MV3954 :THEME MV3957 :PRESENT "PRESENT")
 (:VAR MV3954 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3957 :ISA COLLECTION :RAW-TEXT "TAP1 and JAK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3951 MV3952))
 (:VAR MV3951 :ISA PROTEIN :RAW-TEXT "TAP1" :UID "UP:Q03518" :NAME
  "TAP1_HUMAN")
 (:VAR MV3952 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
424: "Which pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "Which pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve calcium?"
 (:VAR MV3960 :ISA INVOLVE :THEME MV3959 :THEME MV3961 :PRESENT "PRESENT")
 (:VAR MV3959 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3961 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
425: "Which pathways use SRF?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use SRF?"
 (:VAR MV3965 :ISA BIO-USE :AGENT MV3963 :OBJECT MV3966 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3963 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3966 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
426: "Which pathways use these"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    END-OF-SOURCE
("Which pathways use these"
 (:VAR MV3970 :ISA BIO-USE :AGENT MV3968 :OBJECT MV3971 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3968 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3971 :ISA THESE :WORD "these"))

___________________
427: "Which pathways utilize SRF?"

                    SOURCE-START
e6    UTILIZE       1 "Which pathways utilize SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways utilize SRF?"
 (:VAR MV3974 :ISA UTILIZE :PARTICIPANT MV3973 :OBJECT MV3975 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3973 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3975 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
428: "Which pathways utilize these genes"

                    SOURCE-START
e8    UTILIZE       1 "Which pathways utilize these genes" 6
                    END-OF-SOURCE
("Which pathways utilize these genes"
 (:VAR MV3978 :ISA UTILIZE :PARTICIPANT MV3977 :OBJECT MV3980 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3977 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3980 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
429: "Which proteins are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which proteins are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which proteins are targeted by STAT3?"
 (:VAR MV3987 :ISA TARGET :OBJECT MV3983 :AGENT MV3981 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3983 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "proteins")
 (:VAR MV3981 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
430: "Which reactome pathways utilize srf"

                    SOURCE-START
e8    UTILIZE       1 "Which reactome pathways utilize srf" 6
                    END-OF-SOURCE
("Which reactome pathways utilize srf"
 (:VAR MV3992 :ISA UTILIZE :PARTICIPANT MV3991 :OBJECT MV3993 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3991 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3990 :RAW-TEXT
  "pathways")
 (:VAR MV3990 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV3993 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
431: "Which transcription factors are in the MAPK signaling pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "Which transcription factors are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors are in the MAPK signaling pathway?"
 (:VAR MV4004 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3994 :VALUE MV4003 :PREP
  "IN" :PREDICATE MV3997)
 (:VAR MV3994 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV4003 :ISA TRANSCRIPTION-FACTOR :CONTEXT-OR-IN-PATHWAY MV3995
  :HAS-DETERMINER "WHICH" :RAW-TEXT "transcription factors")
 (:VAR MV3995 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4000
  :RAW-TEXT "signaling pathway")
 (:VAR MV4000 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3997 :ISA BE :PRESENT "PRESENT"))

___________________
432: "Which transcription factors regulate frizzled8 in the liver?"

                    SOURCE-START
e16   REGULATE      1 "Which transcription factors regulate frizzled8 in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8 in the liver?"
 (:VAR MV4009 :ISA REGULATE :AGENT MV4006 :OBJECT MV4007 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV4006 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV4007 :ISA PROTEIN :ORGAN MV4012 :RAW-TEXT "frizzled8" :UID "UP:Q9H461"
  :NAME "FZD8_HUMAN")
 (:VAR MV4012 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
433: "Which transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "Which transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8?"
 (:VAR MV4017 :ISA REGULATE :AGENT MV4014 :OBJECT MV4015 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV4014 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV4015 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
434: "Let's move AKT1 on top."

                    SOURCE-START
e11   EXPLICIT-SUGGESTION 1 "Let's move AKT1 on top" 9
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 on top."
 (:VAR MV4024 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4020 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4020 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV4022 :THEME
  MV4019 :PRESENT "PRESENT")
 (:VAR MV4022 :ISA TOP-QUA-LOCATION)
 (:VAR MV4019 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
435: "Let's show the phosphorylated AKT1 on top."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's show the phosphorylated AKT1 on top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show the phosphorylated AKT1 on top."
 (:VAR MV4033 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4027 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4027 :ISA SHOW :AT-RELATIVE-LOCATION MV4031 :STATEMENT-OR-THEME MV4026
  :PRESENT "PRESENT")
 (:VAR MV4031 :ISA TOP-QUA-LOCATION)
 (:VAR MV4026 :ISA PROTEIN :HAS-DETERMINER "THE" :PREDICATION MV4029 :RAW-TEXT
  "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4029 :ISA PHOSPHORYLATE :SUBSTRATE MV4026 :RAW-TEXT "phosphorylated"))

___________________
436: "What are the common upstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRAF?"
 (:VAR MV4036 :ISA BE :SUBJECT MV4035 :PREDICATE MV4039 :PRESENT "PRESENT")
 (:VAR MV4035 :ISA WHAT)
 (:VAR MV4039 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4043 :HAS-DETERMINER
  "THE" :PREDICATION MV4038 :RAW-TEXT "upstreams")
 (:VAR MV4043 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV4034 MV4042))
 (:VAR MV4034 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4042 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV4038 :ISA COMMON))

___________________
437: "Is stat3 expressed exclusively in liver?"

                    SOURCE-START
e12   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed exclusively in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed exclusively in liver?"
 (:VAR MV4052 :ISA POLAR-QUESTION :STATEMENT MV4047)
 (:VAR MV4047 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4045 :ORGAN MV4050 :PAST
  "PAST" :RAW-TEXT "expressed")
 (:VAR MV4045 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4050 :ISA LIVER))

___________________
438: "Is stat3 expressed in spleen?"

                    SOURCE-START
e10   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in spleen" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in spleen?"
 (:VAR MV4059 :ISA POLAR-QUESTION :STATEMENT MV4055)
 (:VAR MV4055 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4053 :ORGAN MV4057 :PAST
  "PAST" :RAW-TEXT "expressed")
 (:VAR MV4053 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4057 :ISA SPLEEN))

___________________
439: "Show phosphorylated akt1 on top."

                    SOURCE-START
e11   SHOW          1 "Show phosphorylated akt1 on top" 7
                    PERIOD
                    END-OF-SOURCE
("Show phosphorylated akt1 on top."
 (:VAR MV4061 :ISA SHOW :AT-RELATIVE-LOCATION MV4064 :STATEMENT-OR-THEME MV4060
  :PRESENT "PRESENT")
 (:VAR MV4064 :ISA TOP-QUA-LOCATION)
 (:VAR MV4060 :ISA PROTEIN :PREDICATION MV4062 :RAW-TEXT "akt1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4062 :ISA PHOSPHORYLATE :SUBSTRATE MV4060 :RAW-TEXT "phosphorylated"))

___________________
440: "What are the common upstreams of AKT1 and  BRA?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRA" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRA?"
 (:VAR MV4068 :ISA BE :SUBJECT MV4067 :PREDICATE MV4071 :PRESENT "PRESENT")
 (:VAR MV4067 :ISA WHAT)
 (:VAR MV4071 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4075 :HAS-DETERMINER
  "THE" :PREDICATION MV4070 :RAW-TEXT "upstreams")
 (:VAR MV4075 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRA" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4066 MV4074))
 (:VAR MV4066 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4074 :ISA BIO-ENTITY :NAME "BRA") (:VAR MV4070 :ISA COMMON))

___________________
441: "RAF activates MEK and MEK activates ERK."

                    SOURCE-START
e11   BIO-ACTIVATE  1 "RAF activates MEK and MEK activates ERK" 8
                    PERIOD
                    END-OF-SOURCE
("RAF activates MEK and MEK activates ERK."
 (:VAR MV4084 :ISA COLLECTION :RAW-TEXT
  "RAF activates MEK and MEK activates ERK" :TYPE BIO-ACTIVATE :NUMBER 2 :ITEMS
  (MV4078 MV4082))
 (:VAR MV4078 :ISA BIO-ACTIVATE :AGENT MV4077 :OBJECT MV4079 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4077 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV4079 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4082 :ISA BIO-ACTIVATE :AGENT MV4081 :OBJECT MV4083 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4081 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4083 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV4086 :ISA BE :SUBJECT MV4085 :PREDICATE MV4088 :PRESENT "PRESENT")
 (:VAR MV4085 :ISA WHAT)
 (:VAR MV4088 :ISA PATH :END MV4092 :START MV4090 :HAS-DETERMINER "THE")
 (:VAR MV4092 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4090 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
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
 (:VAR MV4095 :ISA REMOVE :OBJECT MV4102 :PRESENT "PRESENT" :RAW-TEXT "remove")
 (:VAR MV4102 :ISA FACT :STATEMENT MV4100 :HAS-DETERMINER "THE")
 (:VAR MV4100 :ISA BIO-ACTIVATE :AGENT MV4099 :OBJECT MV4101 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4099 :ISA PROTEIN-FAMILY :RAW-TEXT "mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4101 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
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
 (:VAR MV4110 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4105 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4105 :ISA SHOW :AT-RELATIVE-LOCATION MV4108 :STATEMENT-OR-THEME MV4104
  :PRESENT "PRESENT")
 (:VAR MV4108 :ISA TOP-QUA-LOCATION)
 (:VAR MV4104 :ISA PROTEIN :PREDICATION MV4106 :RAW-TEXT "akt1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4106 :ISA PHOSPHORYLATE :SUBSTRATE MV4104 :RAW-TEXT "phosphorylated"))

___________________
445: "what are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "what are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what are positive regulators of the cfos gene?"
 (:VAR MV4113 :ISA BE :SUBJECT MV4112 :PREDICATE MV4111 :PRESENT "PRESENT")
 (:VAR MV4112 :ISA WHAT)
 (:VAR MV4111 :ISA POSITIVE-REGULATOR :THEME MV4117 :RAW-TEXT
  "positive regulators")
 (:VAR MV4117 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4116 :RAW-TEXT
  "gene")
 (:VAR MV4116 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
446: "what transcription factors regulate FOS in soft tissue?"

                    SOURCE-START
e13   REGULATE      1 "what transcription factors regulate FOS in soft tissue" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors regulate FOS in soft tissue?"
 (:VAR MV4122 :ISA REGULATE :AGENT MV4119 :OBJECT MV4123 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV4119 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4123 :ISA PROTEIN :ORGAN MV4120 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV4120 :ISA BIO-ORGAN :NAME "soft tissue" :UID "NCIT:C12471"))

___________________
447: "Are there any drugs inhibiting MEK?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs inhibiting MEK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs inhibiting MEK?"
 (:VAR MV4134 :ISA POLAR-QUESTION :STATEMENT MV4133)
 (:VAR MV4133 :ISA THERE-EXISTS :VALUE MV4130 :PREDICATE MV4127)
 (:VAR MV4130 :ISA DRUG :PREDICATION MV4131 :QUANTIFIER MV4129 :RAW-TEXT
  "drugs")
 (:VAR MV4131 :ISA INHIBIT :AGENT MV4130 :OBJECT MV4132 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "inhibiting")
 (:VAR MV4132 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4129 :ISA ANY :WORD "any") (:VAR MV4127 :ISA SYNTACTIC-THERE))

___________________
448: "Are there any drugs targeting KRAS?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs targeting KRAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs targeting KRAS?"
 (:VAR MV4143 :ISA POLAR-QUESTION :STATEMENT MV4142)
 (:VAR MV4142 :ISA THERE-EXISTS :VALUE MV4139 :PREDICATE MV4136)
 (:VAR MV4139 :ISA DRUG :PREDICATION MV4140 :QUANTIFIER MV4138 :RAW-TEXT
  "drugs")
 (:VAR MV4140 :ISA TARGET :AGENT MV4139 :OBJECT MV4141 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "targeting")
 (:VAR MV4141 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV4138 :ISA ANY :WORD "any") (:VAR MV4136 :ISA SYNTACTIC-THERE))

___________________
449: "Are there any genes in the liver that are regulated by stat3?"

                    SOURCE-START
e31   THERE-EXISTS  1 "Are there any genes in the liver that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes in the liver that are regulated by stat3?"
 (:VAR MV4161 :ISA POLAR-QUESTION :STATEMENT MV4157)
 (:VAR MV4157 :ISA THERE-EXISTS :VALUE MV4149 :PREDICATE MV4146)
 (:VAR MV4149 :ISA GENE :PREDICATION MV4158 :ORGAN MV4152 :QUANTIFIER MV4148
  :RAW-TEXT "genes")
 (:VAR MV4158 :ISA REGULATE :OBJECT MV4149 :THAT-REL T :AGENT MV4144 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4144 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4152 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4148 :ISA ANY :WORD "any") (:VAR MV4146 :ISA SYNTACTIC-THERE))

___________________
450: "Are there any genes involved in apoptosis that are regulated by stat3?"

                    SOURCE-START
e31   THERE-EXISTS  1 "Are there any genes involved in apoptosis that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes involved in apoptosis that are regulated by stat3?"
 (:VAR MV4179 :ISA POLAR-QUESTION :STATEMENT MV4175)
 (:VAR MV4175 :ISA THERE-EXISTS :VALUE MV4167 :PREDICATE MV4164)
 (:VAR MV4167 :ISA GENE :PREDICATION MV4168 :QUANTIFIER MV4166 :RAW-TEXT
  "genes")
 (:VAR MV4168 :ISA INVOLVE :THEME MV4167 :THEME MV4170 :PAST "PAST")
 (:VAR MV4170 :ISA APOPTOSIS :PREDICATION MV4176 :RAW-TEXT "apoptosis")
 (:VAR MV4176 :ISA REGULATE :AFFECTED-PROCESS MV4170 :THAT-REL T :AGENT MV4162
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4162 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4166 :ISA ANY :WORD "any") (:VAR MV4164 :ISA SYNTACTIC-THERE))

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
 (:VAR MV4200 :ISA POLAR-QUESTION :STATEMENT MV4198)
 (:VAR MV4198 :ISA THERE-EXISTS :VALUE MV4196 :PREDICATE MV4193)
 (:VAR MV4196 :ISA INHIBITOR :TARGET-OR-PROTEIN MV4191 :QUANTIFIER MV4195
  :RAW-TEXT "inhibitors")
 (:VAR MV4191 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV4195 :ISA ANY :WORD "any") (:VAR MV4193 :ISA SYNTACTIC-THERE))

___________________
453: "Are there genes regulated by elk1 and srf"

                    SOURCE-START
e19   THERE-EXISTS  1 "Are there genes regulated by elk1 and srf" 10
                    END-OF-SOURCE
("Are there genes regulated by elk1 and srf"
 (:VAR MV4213 :ISA POLAR-QUESTION :STATEMENT MV4210)
 (:VAR MV4210 :ISA THERE-EXISTS :VALUE MV4205 :PREDICATE MV4203)
 (:VAR MV4205 :ISA GENE :PREDICATION MV4206 :RAW-TEXT "genes")
 (:VAR MV4206 :ISA REGULATE :OBJECT MV4205 :AGENT MV4211 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4211 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4201 MV4209))
 (:VAR MV4201 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4209 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4203 :ISA SYNTACTIC-THERE))

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
 (:VAR MV4273 :ISA POLAR-QUESTION :STATEMENT MV4267)
 (:VAR MV4267 :ISA SHOW :AGENT MV4266 :STATEMENT-OR-THEME MV4269 :BENEFICIARY
  MV4268 :MODAL "CAN")
 (:VAR MV4266 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4269 :ISA GENE :PREDICATION MV4270 :RAW-TEXT "genes")
 (:VAR MV4270 :ISA REGULATE :OBJECT MV4269 :AGENT MV4264 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4264 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4268 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
458: "Can you show me genes that are regulated by ELK1"

                    SOURCE-START
e26   SHOW          1 "Can you show me genes that are regulated by ELK1" 12
                    END-OF-SOURCE
("Can you show me genes that are regulated by ELK1"
 (:VAR MV4286 :ISA POLAR-QUESTION :STATEMENT MV4277)
 (:VAR MV4277 :ISA SHOW :AGENT MV4276 :STATEMENT-OR-THEME MV4279 :BENEFICIARY
  MV4278 :MODAL "CAN")
 (:VAR MV4276 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4279 :ISA GENE :PREDICATION MV4284 :RAW-TEXT "genes")
 (:VAR MV4284 :ISA REGULATE :OBJECT MV4279 :THAT-REL T :AGENT MV4274 :MODAL
  "CAN" :RAW-TEXT "regulated")
 (:VAR MV4274 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4278 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
459: "Can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "Can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("Can you show me the pahtways that involve SRF"
 (:VAR MV4296 :ISA POLAR-QUESTION :STATEMENT MV4289)
 (:VAR MV4289 :ISA SHOW :AGENT MV4288 :STATEMENT-OR-THEME MV4292 :BENEFICIARY
  MV4290 :MODAL "CAN")
 (:VAR MV4288 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4292 :ISA BIO-ENTITY :PREDICATION MV4294 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4294 :ISA INVOLVE :THEME MV4292 :THAT-REL T :THEME MV4295 :MODAL
  "CAN")
 (:VAR MV4295 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4290 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
460: "Can you tell me the genes regulated by STAT3"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes regulated by STAT3" 11
                    END-OF-SOURCE
("Can you tell me the genes regulated by STAT3"
 (:VAR MV4307 :ISA POLAR-QUESTION :STATEMENT MV4300)
 (:VAR MV4300 :ISA TELL :AGENT MV4299 :THEME MV4303 :BENEFICIARY MV4301 :MODAL
  "CAN")
 (:VAR MV4299 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4303 :ISA GENE :PREDICATION MV4304 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4304 :ISA REGULATE :OBJECT MV4303 :AGENT MV4297 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4297 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4301 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
461: "Can you tell me the genes that STAT3 regulates"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes that STAT3 regulates" 11
                    END-OF-SOURCE
("Can you tell me the genes that STAT3 regulates"
 (:VAR MV4317 :ISA POLAR-QUESTION :STATEMENT MV4311)
 (:VAR MV4311 :ISA TELL :AGENT MV4310 :THEME MV4314 :BENEFICIARY MV4312 :MODAL
  "CAN")
 (:VAR MV4310 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4314 :ISA GENE :PREDICATION MV4316 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4316 :ISA REGULATE :OBJECT MV4314 :THAT-REL T :AGENT MV4308 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4308 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4312 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
462: "Can you tell me the genes that are regulated by STAT3"

                    SOURCE-START
e29   TELL          1 "Can you tell me the genes that are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes that are regulated by STAT3"
 (:VAR MV4331 :ISA POLAR-QUESTION :STATEMENT MV4321)
 (:VAR MV4321 :ISA TELL :AGENT MV4320 :THEME MV4324 :BENEFICIARY MV4322 :MODAL
  "CAN")
 (:VAR MV4320 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4324 :ISA GENE :PREDICATION MV4329 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4329 :ISA REGULATE :OBJECT MV4324 :THAT-REL T :AGENT MV4318 :MODAL
  "CAN" :RAW-TEXT "regulated")
 (:VAR MV4318 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4322 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
463: "Can you tell me the genes which are regulated by STAT3"

                    SOURCE-START
e28   TELL          1 "Can you tell me the genes which are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes which are regulated by STAT3"
 (:VAR MV4346 :ISA POLAR-QUESTION :STATEMENT MV4335)
 (:VAR MV4335 :ISA TELL :AGENT MV4334 :THEME MV4338 :BENEFICIARY MV4336 :MODAL
  "CAN")
 (:VAR MV4334 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4338 :ISA GENE :PREDICATION MV4345 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4345 :ISA REGULATE :OBJECT MV4338 :AGENT MV4332 :MODAL MV4333
  :RAW-TEXT "regulated")
 (:VAR MV4332 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4333 :ISA CAN) (:VAR MV4336 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
464: "Can you tell me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf"
 (:VAR MV4362 :ISA POLAR-QUESTION :STATEMENT MV4351)
 (:VAR MV4351 :ISA TELL :AGENT MV4350 :THEME MV4360 :THEME MV4352 :MODAL "CAN")
 (:VAR MV4350 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4360 :ISA SHARE :OBJECT MV4347 :PARTICIPANT MV4359 :MODAL "CAN"
  :RAW-TEXT "shared")
 (:VAR MV4347 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4359 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4348 MV4358))
 (:VAR MV4348 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4358 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4352 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
465: "Can you tell me which genes are regulated by STAT3"

                    SOURCE-START
e24   TELL          1 "Can you tell me which genes are regulated by STAT3" 12
                    END-OF-SOURCE
("Can you tell me which genes are regulated by STAT3"
 (:VAR MV4375 :ISA POLAR-QUESTION :STATEMENT MV4366)
 (:VAR MV4366 :ISA TELL :AGENT MV4365 :THEME MV4373 :THEME MV4367 :MODAL "CAN")
 (:VAR MV4365 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4373 :ISA REGULATE :OBJECT MV4369 :AGENT MV4363 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4369 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4363 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4367 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
466: "Can you tell me which genes in the liver are regulated by stat3?"

                    SOURCE-START
e32   TELL          1 "Can you tell me which genes in the liver are regulated by stat3" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes in the liver are regulated by stat3?"
 (:VAR MV4392 :ISA POLAR-QUESTION :STATEMENT MV4379)
 (:VAR MV4379 :ISA TELL :AGENT MV4378 :THEME MV4389 :THEME MV4380 :MODAL "CAN")
 (:VAR MV4378 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4389 :ISA REGULATE :OBJECT MV4382 :AGENT MV4376 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4382 :ISA GENE :ORGAN MV4385 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV4385 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4376 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4380 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
467: "Can you tell me which genes stat3 regulates?"

                    SOURCE-START
e18   TELL          1 "Can you tell me which genes stat3 regulates" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes stat3 regulates?"
 (:VAR MV4401 :ISA POLAR-QUESTION :STATEMENT MV4396)
 (:VAR MV4396 :ISA TELL :AGENT MV4395 :THEME MV4399 :BENEFICIARY MV4397 :MODAL
  "CAN")
 (:VAR MV4395 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4399 :ISA GENE :PREDICATION MV4400 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV4400 :ISA REGULATE :OBJECT MV4399 :AGENT MV4393 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4393 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4397 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
468: "Does STAT3 affect the expression of c-fos?"

                    SOURCE-START
e18   AFFECT        1 "Does STAT3 affect the expression of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of c-fos?"
 (:VAR MV4411 :ISA POLAR-QUESTION :STATEMENT MV4409)
 (:VAR MV4409 :ISA AFFECT :AGENT MV4402 :AFFECTED-PROCESS MV4407 :RAW-TEXT
  "affect")
 (:VAR MV4402 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4407 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4403 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4403 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
469: "Does STAT3 affect the expression of the c-fos gene?"

                    SOURCE-START
e23   AFFECT        1 "Does STAT3 affect the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of the c-fos gene?"
 (:VAR MV4423 :ISA POLAR-QUESTION :STATEMENT MV4421)
 (:VAR MV4421 :ISA AFFECT :AGENT MV4412 :AFFECTED-PROCESS MV4417 :RAW-TEXT
  "affect")
 (:VAR MV4412 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4417 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4420 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4420 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4413 :RAW-TEXT
  "gene")
 (:VAR MV4413 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
470: "Does STAT3 increase the expression of the c-fos gene?"

                    SOURCE-START
e24   INCREASE      1 "Does STAT3 increase the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase the expression of the c-fos gene?"
 (:VAR MV4436 :ISA POLAR-QUESTION :STATEMENT MV4434)
 (:VAR MV4434 :ISA INCREASE :AGENT MV4424 :AFFECTED-PROCESS MV4430 :RAW-TEXT
  "increase")
 (:VAR MV4424 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4430 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4433 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4433 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4425 :RAW-TEXT
  "gene")
 (:VAR MV4425 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
471: "Does STAT3 increase transcription of the c-fos gene?"

                    SOURCE-START
e21   INCREASE      1 "Does STAT3 increase transcription of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase transcription of the c-fos gene?"
 (:VAR MV4448 :ISA POLAR-QUESTION :STATEMENT MV4446)
 (:VAR MV4446 :ISA INCREASE :AGENT MV4437 :AFFECTED-PROCESS MV4442 :RAW-TEXT
  "increase")
 (:VAR MV4437 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4442 :ISA TRANSCRIBE :OBJECT MV4445 :RAW-TEXT "transcription")
 (:VAR MV4445 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4438 :RAW-TEXT
  "gene")
 (:VAR MV4438 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
472: "Does stat3 affect the expression of cfos?"

                    SOURCE-START
e17   AFFECT        1 "Does stat3 affect the expression of cfos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 affect the expression of cfos?"
 (:VAR MV4458 :ISA POLAR-QUESTION :STATEMENT MV4456)
 (:VAR MV4456 :ISA AFFECT :AGENT MV4449 :AFFECTED-PROCESS MV4453 :RAW-TEXT
  "affect")
 (:VAR MV4449 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4453 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4455 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4455 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
473: "Does the mTor pathway contain SGK1?"

                    SOURCE-START
e16   CONTAIN       1 "Does the mTor pathway contain SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway contain SGK1?"
 (:VAR MV4468 :ISA POLAR-QUESTION :STATEMENT MV4467)
 (:VAR MV4467 :ISA CONTAIN :THEME MV4465 :PATIENT MV4459)
 (:VAR MV4465 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4462 :RAW-TEXT
  "pathway")
 (:VAR MV4462 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME
  "MTOR_HUMAN")
 (:VAR MV4459 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
474: "Find a treatment for pancreatic cancer."

                    SOURCE-START
e12   BIO-FIND      1 "Find a treatment for pancreatic cancer" 7
                    PERIOD
                    END-OF-SOURCE
("Find a treatment for pancreatic cancer."
 (:VAR MV4471 :ISA BIO-FIND :OBJECT MV4473 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4473 :ISA TREATMENT :DISEASE MV4469 :HAS-DETERMINER "A" :RAW-TEXT
  "treatment")
 (:VAR MV4469 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
475: "Find genes in the liver regulated by stat3"

                    SOURCE-START
e18   BIO-FIND      1 "Find genes in the liver regulated by stat3" 10
                    END-OF-SOURCE
("Find genes in the liver regulated by stat3"
 (:VAR MV4478 :ISA BIO-FIND :OBJECT MV4479 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4479 :ISA GENE :PREDICATION MV4483 :ORGAN MV4482 :RAW-TEXT "genes")
 (:VAR MV4483 :ISA REGULATE :OBJECT MV4479 :AGENT MV4476 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4476 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4482 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
476: "Find genes that stat3 regulates"

                    SOURCE-START
e12   BIO-FIND      1 "Find genes that stat3 regulates" 7
                    END-OF-SOURCE
("Find genes that stat3 regulates"
 (:VAR MV4489 :ISA BIO-FIND :OBJECT MV4490 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4490 :ISA GENE :PREDICATION MV4492 :RAW-TEXT "genes")
 (:VAR MV4492 :ISA REGULATE :OBJECT MV4490 :THAT-REL T :AGENT MV4487 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4487 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
477: "Find transcription factors shared by elk1 and srf"

                    SOURCE-START
e14   BIO-FIND      1 "Find transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Find transcription factors shared by elk1 and srf"
 (:VAR MV4496 :ISA BIO-FIND :OBJECT MV4493 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4493 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4497 :RAW-TEXT
  "transcription factors")
 (:VAR MV4497 :ISA SHARE :OBJECT MV4493 :PARTICIPANT MV4501 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV4501 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4494 MV4500))
 (:VAR MV4494 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4500 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
478: "How does KRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does KRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS activate MAPK3?"
 (:VAR MV4507 :ISA BIO-ACTIVATE :MANNER MV4504 :AGENT MV4506 :OBJECT MV4503
  :PRESENT "PRESENT" :RAW-TEXT "activate")
 (:VAR MV4504 :ISA HOW)
 (:VAR MV4506 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV4503 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
479: "How does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e14   REGULATE      1 "How does STAT3 regulate the c-fos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("How does STAT3 regulate the c-fos gene?"
 (:VAR MV4512 :ISA REGULATE :MANNER MV4510 :AGENT MV4508 :OBJECT MV4514
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4510 :ISA HOW)
 (:VAR MV4508 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4514 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4509 :RAW-TEXT
  "gene")
 (:VAR MV4509 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
480: "How does knocking out p53 cause cancer via its effect on miRNAs?"

                    SOURCE-START
e26   KNOCK-OUT     1 "How does knocking out p53 cause cancer via its effect on miRNAs" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("How does knocking out p53 cause cancer via its effect on miRNAs?"
 (:VAR MV4529 :ISA KNOCK-OUT :RAW-TEXT "knocking out" :CAUSE MV4516 :OBJECT
  MV4533)
 (:VAR MV4516 :ISA HOW)
 (:VAR MV4533 :ISA CANCER :MODIFIER MV4520 :MODIFIER MV4520)
 (:VAR MV4520 :ISA CAUSE :BY-MEANS-OF MV4531 :RAW-TEXT "cause")
 (:VAR MV4531 :ISA EFFECT :OBJECT MV4528 :PARTICIPANT MV4524 :RAW-TEXT
  "effect")
 (:VAR MV4528 :ISA MICRO-RNA :RAW-TEXT "miRNAs")
 (:VAR MV4524 :ISA PRONOUN/INANIMATE :WORD "its"))

___________________
481: "How does stat3 regulate apoptosis in the liver?"

                    SOURCE-START
e16   REGULATE      1 "How does stat3 regulate apoptosis in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis in the liver?"
 (:VAR MV4537 :ISA REGULATE :MANNER MV4535 :AGENT MV4534 :AFFECTED-PROCESS
  MV4538 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4535 :ISA HOW)
 (:VAR MV4534 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4538 :ISA APOPTOSIS :ORGAN MV4541 :RAW-TEXT "apoptosis")
 (:VAR MV4541 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
482: "How does stat3 regulate apoptosis?"

                    SOURCE-START
e8    REGULATE      1 "How does stat3 regulate apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis?"
 (:VAR MV4546 :ISA REGULATE :MANNER MV4544 :AGENT MV4543 :AFFECTED-PROCESS
  MV4547 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4544 :ISA HOW)
 (:VAR MV4543 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4547 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
483: "How does stat3 regulate apoptotic genes?"

                    SOURCE-START
e11   REGULATE      1 "How does stat3 regulate apoptotic genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptotic genes?"
 (:VAR MV4551 :ISA REGULATE :MANNER MV4549 :AGENT MV4548 :OBJECT MV4554
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4549 :ISA HOW)
 (:VAR MV4548 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4554 :ISA GENE :CELLULAR-PROCESS MV4552 :RAW-TEXT "genes")
 (:VAR MV4552 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
484: "How is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e16   BE            1 "How is stat3 involved in apoptotic regulation" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotic regulation?"
 (:VAR MV4564 :ISA WH-QUESTION :STATEMENT MV4557 :WH HOW)
 (:VAR MV4557 :ISA BE :PREDICATE MV4555 :PRESENT "PRESENT")
 (:VAR MV4555 :ISA PROTEIN :PREDICATION MV4558 :RAW-TEXT "stat3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4558 :ISA INVOLVE :THEME MV4555 :THEME MV4562 :PAST "PAST")
 (:VAR MV4562 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV4560 :RAW-TEXT
  "regulation")
 (:VAR MV4560 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
485: "How is stat3 involved in apoptotis regulation in the liver?"

                    SOURCE-START
e23   BE            1 "How is stat3 involved in apoptotis regulation in the liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotis regulation in the liver?"
 (:VAR MV4577 :ISA WH-QUESTION :STATEMENT MV4567 :WH HOW)
 (:VAR MV4567 :ISA BE :PREDICATE MV4565 :PRESENT "PRESENT")
 (:VAR MV4565 :ISA PROTEIN :PREDICATION MV4568 :RAW-TEXT "stat3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4568 :ISA INVOLVE :THEME MV4565 :THEME MV4570 :PAST "PAST")
 (:VAR MV4570 :ISA REGULATE :OBJECT MV4574 :ORGAN MV4573 :AGENT-OR-OBJECT
  MV4574 :RAW-TEXT "regulation")
 (:VAR MV4574 :ISA BIO-ENTITY :NAME "apoptotis")
 (:VAR MV4573 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
486: "How is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e15   BE            1 "How is stat3 involved in regulating apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in regulating apoptosis?"
 (:VAR MV4586 :ISA WH-QUESTION :STATEMENT MV4580 :WH HOW)
 (:VAR MV4580 :ISA BE :PREDICATE MV4578 :PRESENT "PRESENT")
 (:VAR MV4578 :ISA PROTEIN :PREDICATION MV4581 :RAW-TEXT "stat3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4581 :ISA INVOLVE :THEME MV4578 :THEME MV4583 :PAST "PAST")
 (:VAR MV4583 :ISA REGULATE :AFFECTED-PROCESS MV4584 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV4584 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
487: "How is stat3 used to regulate apoptosis?"

                    SOURCE-START
e15   BE            1 "How is stat3 used to regulate apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 used to regulate apoptosis?"
 (:VAR MV4595 :ISA WH-QUESTION :STATEMENT MV4589 :WH HOW)
 (:VAR MV4589 :ISA BE :PREDICATE MV4587 :PRESENT "PRESENT")
 (:VAR MV4587 :ISA PROTEIN :PREDICATION MV4590 :RAW-TEXT "stat3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4590 :ISA BIO-USE :OBJECT MV4587 :THEME MV4594 :PAST "PAST" :RAW-TEXT
  "used")
 (:VAR MV4594 :ISA REGULATE :AFFECTED-PROCESS MV4593 :RAW-TEXT "regulate")
 (:VAR MV4593 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
488: "How many genes are in the MAPK signaling pathway?"

                    SOURCE-START
e19   COPULAR-PREDICATE 1 "How many genes are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How many genes are in the MAPK signaling pathway?"
 (:VAR MV4607 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4599 :VALUE MV4606 :PREP
  "IN" :PREDICATE MV4600)
 (:VAR MV4599 :ISA GENE :HAS-DETERMINER "HOW" :QUANTIFIER MV4598 :RAW-TEXT
  "genes")
 (:VAR MV4598 :ISA MANY :WORD "many")
 (:VAR MV4606 :ISA GENE :CONTEXT MV4596 :HAS-DETERMINER "HOW" :QUANTIFIER
  MV4598 :RAW-TEXT "genes")
 (:VAR MV4596 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4603
  :RAW-TEXT "signaling pathway")
 (:VAR MV4603 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV4600 :ISA BE :PRESENT "PRESENT"))

___________________
489: "How might a STAT3 mutation affect breast cancer?"

                    SOURCE-START
e14   AFFECT        1 "How might a STAT3 mutation affect breast cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How might a STAT3 mutation affect breast cancer?"
 (:VAR MV4616 :ISA AFFECT :MANNER MV4611 :MODAL MV4612 :AGENT MV4614 :OBJECT
  MV4610 :PRESENT "PRESENT" :RAW-TEXT "affect")
 (:VAR MV4611 :ISA HOW) (:VAR MV4612 :ISA MIGHT)
 (:VAR MV4614 :ISA MUTATION :OBJECT MV4609 :HAS-DETERMINER "A" :AGENT-OR-OBJECT
  MV4609 :RAW-TEXT "mutation")
 (:VAR MV4609 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4610 :ISA CANCER :NAME "breast cancer" :UID "TS-0591"))

___________________
490: "Is STAT3 a regulator for c-fos?"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator for c-fos" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator for c-fos?"
 (:VAR MV4624 :ISA POLAR-QUESTION :STATEMENT MV4619)
 (:VAR MV4619 :ISA BE :SUBJECT MV4617 :PREDICATE MV4621)
 (:VAR MV4617 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4621 :ISA REGULATOR :THEME MV4618 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4618 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
491: "Is STAT3 a regulator of c-fos"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator of c-fos" 10
                    END-OF-SOURCE
("Is STAT3 a regulator of c-fos"
 (:VAR MV4632 :ISA POLAR-QUESTION :STATEMENT MV4627)
 (:VAR MV4627 :ISA BE :SUBJECT MV4625 :PREDICATE MV4629)
 (:VAR MV4625 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4629 :ISA REGULATOR :THEME MV4626 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4626 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
492: "Is STAT3 a regulator of the c-fos gene"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene"
 (:VAR MV4642 :ISA POLAR-QUESTION :STATEMENT MV4635)
 (:VAR MV4635 :ISA BE :SUBJECT MV4633 :PREDICATE MV4637)
 (:VAR MV4633 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4637 :ISA REGULATOR :THEME MV4640 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4640 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4634 :RAW-TEXT
  "gene")
 (:VAR MV4634 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
493: "Is STAT3 a regulator of the c-fos gene?"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene?"
 (:VAR MV4652 :ISA POLAR-QUESTION :STATEMENT MV4645)
 (:VAR MV4645 :ISA BE :SUBJECT MV4643 :PREDICATE MV4647)
 (:VAR MV4643 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4647 :ISA REGULATOR :THEME MV4650 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4650 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4644 :RAW-TEXT
  "gene")
 (:VAR MV4644 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
494: "Is STAT3 a transcription factor for c-fos gene"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene"
 (:VAR MV4661 :ISA POLAR-QUESTION :STATEMENT MV4656)
 (:VAR MV4656 :ISA BE :SUBJECT MV4653 :PREDICATE MV4654)
 (:VAR MV4653 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4654 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4659 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4659 :ISA GENE :EXPRESSES MV4655 :RAW-TEXT "gene")
 (:VAR MV4655 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
495: "Is STAT3 a transcription factor for c-fos"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos"
 (:VAR MV4669 :ISA POLAR-QUESTION :STATEMENT MV4665)
 (:VAR MV4665 :ISA BE :SUBJECT MV4662 :PREDICATE MV4663)
 (:VAR MV4662 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4663 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4664 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4664 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
496: "Is STAT3 a transcription factor for c-fos?"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos?"
 (:VAR MV4677 :ISA POLAR-QUESTION :STATEMENT MV4673)
 (:VAR MV4673 :ISA BE :SUBJECT MV4670 :PREDICATE MV4671)
 (:VAR MV4670 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4671 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4672 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4672 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
497: "Is STAT3 a transcription factor for the c-fos gene?"

                    SOURCE-START
e21   BE            1 "Is STAT3 a transcription factor for the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for the c-fos gene?"
 (:VAR MV4687 :ISA POLAR-QUESTION :STATEMENT MV4681)
 (:VAR MV4681 :ISA BE :SUBJECT MV4678 :PREDICATE MV4679)
 (:VAR MV4678 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4679 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4685 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4685 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4680 :RAW-TEXT
  "gene")
 (:VAR MV4680 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
498: "Is STAT3 regulated by c-fos?"

                    SOURCE-START
e11   REGULATE      1 "Is STAT3 regulated by c-fos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 regulated by c-fos?"
 (:VAR MV4694 :ISA POLAR-QUESTION :STATEMENT MV4691)
 (:VAR MV4691 :ISA REGULATE :OBJECT MV4688 :AGENT MV4689 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4688 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4689 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
499: "Is Stat3 a transcription factor for the c-fos gene"

                    SOURCE-START
e21   BE            1 "Is Stat3 a transcription factor for the c-fos gene" 13
                    END-OF-SOURCE
("Is Stat3 a transcription factor for the c-fos gene"
 (:VAR MV4704 :ISA POLAR-QUESTION :STATEMENT MV4698)
 (:VAR MV4698 :ISA BE :SUBJECT MV4695 :PREDICATE MV4696)
 (:VAR MV4695 :ISA PROTEIN :RAW-TEXT "Stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4696 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4702 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4702 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4697 :RAW-TEXT
  "gene")
 (:VAR MV4697 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
500: "List genes regulated by ELK1"

                    SOURCE-START
e9    LIST          1 "List genes regulated by ELK1" 7
                    END-OF-SOURCE
("List genes regulated by ELK1"
 (:VAR MV4706 :ISA LIST :THEME MV4707 :PRESENT "PRESENT")
 (:VAR MV4707 :ISA GENE :PREDICATION MV4708 :RAW-TEXT "genes")
 (:VAR MV4708 :ISA REGULATE :OBJECT MV4707 :AGENT MV4705 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4705 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
501: "List genes that are regulated by ELK1"

                    SOURCE-START
e16   LIST          1 "List genes that are regulated by ELK1" 9
                    END-OF-SOURCE
("List genes that are regulated by ELK1"
 (:VAR MV4712 :ISA LIST :THEME MV4713 :PRESENT "PRESENT")
 (:VAR MV4713 :ISA GENE :PREDICATION MV4718 :RAW-TEXT "genes")
 (:VAR MV4718 :ISA REGULATE :OBJECT MV4713 :THAT-REL T :AGENT MV4711 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4711 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
502: "List some genes that stat3 regulates"

                    SOURCE-START
e13   LIST          1 "List some genes that stat3 regulates" 8
                    END-OF-SOURCE
("List some genes that stat3 regulates"
 (:VAR MV4721 :ISA LIST :THEME MV4723 :PRESENT "PRESENT")
 (:VAR MV4723 :ISA GENE :PREDICATION MV4725 :QUANTIFIER MV4722 :RAW-TEXT
  "genes")
 (:VAR MV4725 :ISA REGULATE :OBJECT MV4723 :THAT-REL T :AGENT MV4720 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4720 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4722 :ISA SOME :WORD "some"))

___________________
503: "List the genes STAT3 regulates"

                    SOURCE-START
e11   LIST          1 "List the genes STAT3 regulates" 7
                    END-OF-SOURCE
("List the genes STAT3 regulates"
 (:VAR MV4727 :ISA LIST :THEME MV4729 :PRESENT "PRESENT")
 (:VAR MV4729 :ISA GENE :PREDICATION MV4730 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4730 :ISA REGULATE :OBJECT MV4729 :AGENT MV4726 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4726 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
504: "List the genes that are regulated by STAT3"

                    SOURCE-START
e19   LIST          1 "List the genes that are regulated by STAT3" 10
                    END-OF-SOURCE
("List the genes that are regulated by STAT3"
 (:VAR MV4732 :ISA LIST :THEME MV4734 :PRESENT "PRESENT")
 (:VAR MV4734 :ISA GENE :PREDICATION MV4739 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4739 :ISA REGULATE :OBJECT MV4734 :THAT-REL T :AGENT MV4731 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4731 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
505: "List the genes which STAT3 regulates"

                    SOURCE-START
e13   LIST          1 "List the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("List the genes which STAT3 regulates"
 (:VAR MV4742 :ISA LIST :THEME MV4744 :PRESENT "PRESENT")
 (:VAR MV4744 :ISA GENE :PREDICATION MV4746 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4746 :ISA REGULATE :OBJECT MV4744 :AGENT MV4741 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4741 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
506: "List the pahtways that involve SRF"

                    SOURCE-START
e13   LIST          1 "List the pahtways that involve SRF" 7
                    END-OF-SOURCE
("List the pahtways that involve SRF"
 (:VAR MV4747 :ISA LIST :THEME MV4749 :PRESENT "PRESENT")
 (:VAR MV4749 :ISA BIO-ENTITY :PREDICATION MV4751 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4751 :ISA INVOLVE :THEME MV4749 :THAT-REL T :THEME MV4752 :PRESENT
  "PRESENT")
 (:VAR MV4752 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
507: "Show me genes regulated by ELK1"

                    SOURCE-START
e13   SHOW          1 "Show me genes regulated by ELK1" 8
                    END-OF-SOURCE
("Show me genes regulated by ELK1"
 (:VAR MV4754 :ISA SHOW :STATEMENT-OR-THEME MV4756 :BENEFICIARY MV4755 :PRESENT
  "PRESENT")
 (:VAR MV4756 :ISA GENE :PREDICATION MV4757 :RAW-TEXT "genes")
 (:VAR MV4757 :ISA REGULATE :OBJECT MV4756 :AGENT MV4753 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4753 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4755 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
508: "Show me genes that are regulated by ELK1"

                    SOURCE-START
e18   SHOW          1 "Show me genes that are regulated by ELK1" 10
                    END-OF-SOURCE
("Show me genes that are regulated by ELK1"
 (:VAR MV4761 :ISA SHOW :STATEMENT-OR-THEME MV4763 :BENEFICIARY MV4762 :PRESENT
  "PRESENT")
 (:VAR MV4763 :ISA GENE :PREDICATION MV4768 :RAW-TEXT "genes")
 (:VAR MV4768 :ISA REGULATE :OBJECT MV4763 :THAT-REL T :AGENT MV4760 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4760 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4762 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
509: "Show me genes that stat3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show me genes that stat3 regulates" 8
                    END-OF-SOURCE
("Show me genes that stat3 regulates"
 (:VAR MV4771 :ISA SHOW :STATEMENT-OR-THEME MV4773 :BENEFICIARY MV4772 :PRESENT
  "PRESENT")
 (:VAR MV4773 :ISA GENE :PREDICATION MV4775 :RAW-TEXT "genes")
 (:VAR MV4775 :ISA REGULATE :OBJECT MV4773 :THAT-REL T :AGENT MV4770 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4770 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4772 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
510: "Show me the pahtways that involve SRF"

                    SOURCE-START
e15   SHOW          1 "Show me the pahtways that involve SRF" 8
                    END-OF-SOURCE
("Show me the pahtways that involve SRF"
 (:VAR MV4776 :ISA SHOW :STATEMENT-OR-THEME MV4779 :BENEFICIARY MV4777 :PRESENT
  "PRESENT")
 (:VAR MV4779 :ISA BIO-ENTITY :PREDICATION MV4781 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4781 :ISA INVOLVE :THEME MV4779 :THAT-REL T :THEME MV4782 :PRESENT
  "PRESENT")
 (:VAR MV4782 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4777 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
511: "Show me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show me what transcription factors are shared by elk1 and srf" 13
                    END-OF-SOURCE
("Show me what transcription factors are shared by elk1 and srf"
 (:VAR MV4796 :ISA SHOW :STATEMENT MV4794 :THEME MV4786 :PRESENT "PRESENT")
 (:VAR MV4794 :ISA SHARE :OBJECT MV4783 :PARTICIPANT MV4793 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV4783 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4793 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4784 MV4792))
 (:VAR MV4784 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4792 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4786 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
512: "Show me which genes are regulated by STAT3"

                    SOURCE-START
e16   SHOW          1 "Show me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Show me which genes are regulated by STAT3"
 (:VAR MV4807 :ISA SHOW :STATEMENT MV4805 :THEME MV4799 :PRESENT "PRESENT")
 (:VAR MV4805 :ISA REGULATE :OBJECT MV4801 :AGENT MV4797 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4801 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4797 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4799 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
513: "Show the genes which STAT3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("Show the genes which STAT3 regulates"
 (:VAR MV4809 :ISA SHOW :STATEMENT-OR-THEME MV4811 :PRESENT "PRESENT")
 (:VAR MV4811 :ISA GENE :PREDICATION MV4813 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4813 :ISA REGULATE :OBJECT MV4811 :AGENT MV4808 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4808 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
514: "Show the pahtways that involve SRF"

                    SOURCE-START
e13   SHOW          1 "Show the pahtways that involve SRF" 7
                    END-OF-SOURCE
("Show the pahtways that involve SRF"
 (:VAR MV4814 :ISA SHOW :STATEMENT-OR-THEME MV4816 :PRESENT "PRESENT")
 (:VAR MV4816 :ISA BIO-ENTITY :PREDICATION MV4818 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4818 :ISA INVOLVE :THEME MV4816 :THAT-REL T :THEME MV4819 :PRESENT
  "PRESENT")
 (:VAR MV4819 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
515: "Show transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show transcription factors that are shared by elk1 and srf" 12
                    END-OF-SOURCE
("Show transcription factors that are shared by elk1 and srf"
 (:VAR MV4822 :ISA SHOW :STATEMENT-OR-THEME MV4820 :PRESENT "PRESENT")
 (:VAR MV4820 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4830 :RAW-TEXT
  "transcription factors")
 (:VAR MV4830 :ISA SHARE :OBJECT MV4820 :THAT-REL T :PARTICIPANT MV4829
  :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV4829 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4821 MV4828))
 (:VAR MV4821 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4828 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
516: "Tell me the genes which are regulated by STAT3"

                    SOURCE-START
e20   TELL          1 "Tell me the genes which are regulated by STAT3" 11
                    END-OF-SOURCE
("Tell me the genes which are regulated by STAT3"
 (:VAR MV4833 :ISA TELL :THEME MV4836 :BENEFICIARY MV4834 :PRESENT "PRESENT")
 (:VAR MV4836 :ISA GENE :PREDICATION MV4843 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4843 :ISA REGULATE :OBJECT MV4836 :AGENT MV4832 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4832 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4834 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
517: "Tell me what genes are regulated by elk1 and srf"

                    SOURCE-START
e19   TELL          1 "Tell me what genes are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("Tell me what genes are regulated by elk1 and srf"
 (:VAR MV4845 :ISA TELL :THEME MV4855 :THEME MV4846 :PRESENT "PRESENT")
 (:VAR MV4855 :ISA REGULATE :OBJECT MV4848 :AGENT MV4854 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4848 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV4854 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4844 MV4853))
 (:VAR MV4844 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4853 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4846 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
518: "Tell me which genes are regulated by STAT3"

                    SOURCE-START
e16   TELL          1 "Tell me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Tell me which genes are regulated by STAT3"
 (:VAR MV4858 :ISA TELL :THEME MV4865 :THEME MV4859 :PRESENT "PRESENT")
 (:VAR MV4865 :ISA REGULATE :OBJECT MV4861 :AGENT MV4857 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4861 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4857 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4859 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
519: "What are positive regulators of cfos?"

                    SOURCE-START
e10   BE            1 "What are positive regulators of cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of cfos?"
 (:VAR MV4869 :ISA BE :SUBJECT MV4868 :PREDICATE MV4867 :PRESENT "PRESENT")
 (:VAR MV4868 :ISA WHAT)
 (:VAR MV4867 :ISA POSITIVE-REGULATOR :THEME MV4871 :RAW-TEXT
  "positive regulators")
 (:VAR MV4871 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
520: "What are some regulators of SMURF2?"

                    SOURCE-START
e12   BE            1 "What are some regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some regulators of SMURF2?"
 (:VAR MV4875 :ISA BE :SUBJECT MV4874 :PREDICATE MV4877 :PRESENT "PRESENT")
 (:VAR MV4874 :ISA WHAT)
 (:VAR MV4877 :ISA REGULATOR :THEME MV4873 :QUANTIFIER MV4876 :RAW-TEXT
  "regulators")
 (:VAR MV4873 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN")
 (:VAR MV4876 :ISA SOME :WORD "some"))

___________________
521: "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"

                    SOURCE-START
e31   BE            1 "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
 (:VAR MV4886 :ISA BE :SUBJECT MV4885 :PREDICATE MV4889 :PRESENT "PRESENT")
 (:VAR MV4885 :ISA WHAT)
 (:VAR MV4889 :ISA REGULATOR :THEME MV4893 :HAS-DETERMINER "THE" :PREDICATION
  MV4888 :RAW-TEXT "regulators")
 (:VAR MV4893 :ISA COLLECTION :RAW-TEXT
  "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :TYPE PROTEIN :NUMBER 6 :ITEMS
  (MV4880 MV4881 MV4891 MV4882 MV4883 MV4884))
 (:VAR MV4880 :ISA PROTEIN :RAW-TEXT "ABI2" :UID "UP:Q9NYB9" :NAME
  "ABI2_HUMAN")
 (:VAR MV4881 :ISA PROTEIN :RAW-TEXT "ABL1" :UID "UP:P00519" :NAME
  "ABL1_HUMAN")
 (:VAR MV4891 :ISA PROTEIN :RAW-TEXT "ACADSB" :UID "UP:P45954" :NAME
  "ACDSB_HUMAN")
 (:VAR MV4882 :ISA PROTEIN :RAW-TEXT "ADGRL1" :UID "UP:O94910" :NAME
  "AGRL1_HUMAN")
 (:VAR MV4883 :ISA PROTEIN :RAW-TEXT "ADRM1" :UID "UP:Q16186" :NAME
  "ADRM1_HUMAN")
 (:VAR MV4884 :ISA PROTEIN :RAW-TEXT "AGAP1" :UID "UP:Q9UPQ3" :NAME
  "AGAP1_HUMAN")
 (:VAR MV4888 :ISA COMMON))

___________________
522: "What are the common regulators of elk1 and srf"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srf" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srf"
 (:VAR MV4897 :ISA BE :SUBJECT MV4896 :PREDICATE MV4900 :PRESENT "PRESENT")
 (:VAR MV4896 :ISA WHAT)
 (:VAR MV4900 :ISA REGULATOR :THEME MV4904 :HAS-DETERMINER "THE" :PREDICATION
  MV4899 :RAW-TEXT "regulators")
 (:VAR MV4904 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4895 MV4903))
 (:VAR MV4895 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4903 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4899 :ISA COMMON))

___________________
523: "What are the common regulators of elk1 and srg"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srg" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srg"
 (:VAR MV4908 :ISA BE :SUBJECT MV4907 :PREDICATE MV4911 :PRESENT "PRESENT")
 (:VAR MV4907 :ISA WHAT)
 (:VAR MV4911 :ISA REGULATOR :THEME MV4915 :HAS-DETERMINER "THE" :PREDICATION
  MV4910 :RAW-TEXT "regulators")
 (:VAR MV4915 :ISA COLLECTION :RAW-TEXT "elk1 and srg" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4906 MV4914))
 (:VAR MV4906 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4914 :ISA BIO-ENTITY :NAME "srg") (:VAR MV4910 :ISA COMMON))

___________________
524: "What are the common regulators of those genes"

                    SOURCE-START
e16   BE            1 "What are the common regulators of those genes" 9
                    END-OF-SOURCE
("What are the common regulators of those genes"
 (:VAR MV4918 :ISA BE :SUBJECT MV4917 :PREDICATE MV4921 :PRESENT "PRESENT")
 (:VAR MV4917 :ISA WHAT)
 (:VAR MV4921 :ISA REGULATOR :THEME MV4924 :HAS-DETERMINER "THE" :PREDICATION
  MV4920 :RAW-TEXT "regulators")
 (:VAR MV4924 :ISA GENE :HAS-DETERMINER "THOSE" :RAW-TEXT "genes")
 (:VAR MV4920 :ISA COMMON))

___________________
525: "What are the genes regulated by STAT3?"

                    SOURCE-START
e16   BE            1 "What are the genes regulated by STAT3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes regulated by STAT3?"
 (:VAR MV4928 :ISA BE :SUBJECT MV4927 :PREDICATE MV4930 :PRESENT "PRESENT")
 (:VAR MV4927 :ISA WHAT)
 (:VAR MV4930 :ISA GENE :PREDICATION MV4931 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4931 :ISA REGULATE :OBJECT MV4930 :AGENT MV4926 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4926 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
526: "What are the genes which STAT3 regulates?"

                    SOURCE-START
e15   BE            1 "What are the genes which STAT3 regulates" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes which STAT3 regulates?"
 (:VAR MV4936 :ISA BE :SUBJECT MV4935 :PREDICATE MV4938 :PRESENT "PRESENT")
 (:VAR MV4935 :ISA WHAT)
 (:VAR MV4938 :ISA GENE :PREDICATION MV4940 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4940 :ISA REGULATE :OBJECT MV4938 :AGENT MV4934 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4934 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
527: "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV4945 :ISA BE :SUBJECT MV4944 :PREDICATE MV4949 :PRESENT "PRESENT")
 (:VAR MV4944 :ISA WHAT)
 (:VAR MV4949 :ISA REGULATOR :THEME MV4954 :HAS-DETERMINER "THE" :MODIFIER
  MV4948 :RAW-TEXT "regulators")
 (:VAR MV4954 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV4951 MV4952 MV4941 MV4942 MV4943))
 (:VAR MV4951 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV4952 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4941 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4942 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV4943 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN")
 (:VAR MV4948 :ISA FREQUENT :COMPARATIVE MV4947 :NAME "frequent")
 (:VAR MV4947 :ISA SUPERLATIVE-QUANTIFIER :NAME "most"))

___________________
528: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e28   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV4961 :ISA BE :SUBJECT MV4960 :PREDICATE MV4956 :PRESENT "PRESENT")
 (:VAR MV4960 :ISA WHAT)
 (:VAR MV4956 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4964 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV4964 :ISA REGULATE :AGENT MV4956 :THAT-REL T :OBJECT MV4968 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4968 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV4965 MV4966 MV4957 MV4958 MV4959))
 (:VAR MV4965 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV4966 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4957 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4958 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV4959 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
529: "What other genes are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other genes are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other genes are in the first pathway?"
 (:VAR MV4980 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4971 :VALUE MV4979 :PREP
  "IN" :PREDICATE MV4972)
 (:VAR MV4971 :ISA GENE :HAS-DETERMINER "WHAT" :QUANTIFIER MV4970 :RAW-TEXT
  "genes")
 (:VAR MV4970 :ISA OTHER :WORD "other")
 (:VAR MV4979 :ISA GENE :CONTEXT MV4976 :HAS-DETERMINER "WHAT" :QUANTIFIER
  MV4970 :RAW-TEXT "genes")
 (:VAR MV4976 :ISA PATHWAY :QUANTIFIER MV4975 :RAW-TEXT "pathway")
 (:VAR MV4975 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4972 :ISA BE :PRESENT "PRESENT"))

___________________
530: "What other proteins are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other proteins are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other proteins are in the first pathway?"
 (:VAR MV4993 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4984 :VALUE MV4992 :PREP
  "IN" :PREDICATE MV4985)
 (:VAR MV4984 :ISA PROTEIN :HAS-DETERMINER "WHAT" :QUANTIFIER MV4983 :RAW-TEXT
  "proteins")
 (:VAR MV4983 :ISA OTHER :WORD "other")
 (:VAR MV4992 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV4989 :HAS-DETERMINER "WHAT"
  :QUANTIFIER MV4983 :RAW-TEXT "proteins")
 (:VAR MV4989 :ISA PATHWAY :QUANTIFIER MV4988 :RAW-TEXT "pathway")
 (:VAR MV4988 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4985 :ISA BE :PRESENT "PRESENT"))

___________________
531: "What pathways are they in?"

                    SOURCE-START
e9    IN            1 "What pathways are they in" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are they in?"
 (:VAR MV5000 :ISA WH-QUESTION :STATEMENT MV4999 :VAR NIL :WH WHAT)
 (:VAR MV4999 :ISA IN :WORD "in"))

___________________
532: "What pathways involve SOARING?"

                    SOURCE-START
e6    SOAR          1 "What pathways involve SOARING" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SOARING?"
 (:VAR MV5004 :ISA WH-QUESTION :STATEMENT
  (#<soar 93552> (PRESENT #<ref-category PRESENT>)) :VAR NIL :WH WHAT))

___________________
533: "What proteins are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What proteins are in the first pathway" 8
                    END-OF-SOURCE
("What proteins are in the first pathway"
 (:VAR MV5015 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5006 :VALUE MV5014 :PREP
  "IN" :PREDICATE MV5007)
 (:VAR MV5006 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV5014 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV5011 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "proteins")
 (:VAR MV5011 :ISA PATHWAY :QUANTIFIER MV5010 :RAW-TEXT "pathway")
 (:VAR MV5010 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV5007 :ISA BE :PRESENT "PRESENT"))

___________________
534: "What pathways involve frizzled8?"

                    SOURCE-START
e7    INVOLVE       1 "What pathways involve frizzled8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve frizzled8?"
 (:VAR MV5020 :ISA INVOLVE :THEME MV5019 :THEME MV5017 :PRESENT "PRESENT")
 (:VAR MV5019 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5017 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
535: "What genes are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What genes are in the first pathway" 8
                    END-OF-SOURCE
("What genes are in the first pathway"
 (:VAR MV5031 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5022 :VALUE MV5030 :PREP
  "IN" :PREDICATE MV5023)
 (:VAR MV5022 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5030 :ISA GENE :CONTEXT MV5027 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV5027 :ISA PATHWAY :QUANTIFIER MV5026 :RAW-TEXT "pathway")
 (:VAR MV5026 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV5023 :ISA BE :PRESENT "PRESENT"))

___________________
536: "What questions can you answer about microRNAs?"

                    SOURCE-START
e13   ANSWER        1 "What questions can you answer about microRNAs" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What questions can you answer about microRNAs?"
 (:VAR MV5043 :ISA ANSWER :PATIENT MV5034 :MODAL MV5036 :AGENT MV5037 :THEME
  MV5041 :PRESENT "PRESENT")
 (:VAR MV5034 :ISA BIO-QUESTION :HAS-DETERMINER "WHAT") (:VAR MV5036 :ISA CAN)
 (:VAR MV5037 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5041 :ISA MICRO-RNA :RAW-TEXT "microRNAs"))

___________________
537: "What transcription factors regulate mothers against decapentaplegic?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate mothers against decapentaplegic" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate mothers against decapentaplegic?"
 (:VAR MV5047 :ISA REGULATE :AGENT MV5044 :OBJECT MV5045 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5044 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5045 :ISA PROTEIN-FAMILY :RAW-TEXT "mothers against decapentaplegic"
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
 (:VAR MV5051 :ISA REGULATE :LOCATION MV5049 :AGENT MV5048 :OBJECT MV5052
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5049 :ISA WHERE)
 (:VAR MV5048 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5052 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
539: "Which KEGG pathways involve ATP?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve ATP" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve ATP?"
 (:VAR MV5056 :ISA INVOLVE :THEME MV5055 :THEME MV5057 :PRESENT "PRESENT")
 (:VAR MV5055 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5054 :RAW-TEXT
  "pathways")
 (:VAR MV5054 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV5057 :ISA NUCLEOTIDE :RAW-TEXT "ATP" :NAME "adenosine 5'-triphosphate"
  :UID "PCID:5957"))

___________________
540: "Which genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are in the MAPK signaling pathway?"
 (:VAR MV5068 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5060 :VALUE MV5067 :PREP
  "IN" :PREDICATE MV5061)
 (:VAR MV5060 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5067 :ISA GENE :CONTEXT MV5058 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV5058 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5064
  :RAW-TEXT "signaling pathway")
 (:VAR MV5064 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV5061 :ISA BE :PRESENT "PRESENT"))

___________________
541: "Which genes are involved in the oncogenic MAPK signaling pathway?"

                    SOURCE-START
e19   INVOLVE       1 "Which genes are involved in the oncogenic MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are involved in the oncogenic MAPK signaling pathway?"
 (:VAR MV5081 :ISA INVOLVE :THEME MV5072 :CONTEXT MV5070 :PRESENT "PRESENT")
 (:VAR MV5072 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5070 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :PREDICATION MV5077
  :MODIFIER MV5078 :RAW-TEXT "signaling pathway")
 (:VAR MV5077 :ISA ONCOGENIC)
 (:VAR MV5078 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV5084 :ISA REGULATE :AGENT MV5083 :OBJECT MV5085 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5083 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5085 :ISA BIO-ENTITY :NAME "x"))

___________________
543: "Which kinases negatively regulate x?"

                    SOURCE-START
e7    DOWNREGULATE  1 "Which kinases negatively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate x?"
 (:VAR MV5086 :ISA DOWNREGULATE :AGENT MV5088 :OBJECT MV5089 :PRESENT "PRESENT"
  :RAW-TEXT "negatively regulate")
 (:VAR MV5088 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5089 :ISA BIO-ENTITY :NAME "x"))

___________________
544: "Which kinases positively regulate x?"

                    SOURCE-START
e7    UPREGULATE    1 "Which kinases positively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases positively regulate x?"
 (:VAR MV5090 :ISA UPREGULATE :AGENT MV5092 :OBJECT MV5093 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulate")
 (:VAR MV5092 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5093 :ISA BIO-ENTITY :NAME "x"))

___________________
545: "Which of these are in immune pathways?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune pathways?"
 (:VAR MV5102 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5096 :VALUE MV5100 :PREP
  MV5098 :PREDICATE MV5097)
 (:VAR MV5096 :ISA THESE :QUANTIFIER MV5094 :WORD "these")
 (:VAR MV5094 :ISA WHICH)
 (:VAR MV5100 :ISA PATHWAY :MODIFIER MV5099 :RAW-TEXT "pathways")
 (:VAR MV5099 :ISA IMMUNE :NAME "immune") (:VAR MV5098 :ISA IN :WORD "in")
 (:VAR MV5097 :ISA BE :PRESENT "PRESENT"))

___________________
546: "Which of these are in immune system pathways?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which of these are in immune system pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune system pathways?"
 (:VAR MV5112 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5107 :VALUE MV5110 :PREP
  MV5109 :PREDICATE MV5108)
 (:VAR MV5107 :ISA THESE :QUANTIFIER MV5105 :WORD "these")
 (:VAR MV5105 :ISA WHICH)
 (:VAR MV5110 :ISA PATHWAY :NON-CELLULAR-LOCATION MV5104 :RAW-TEXT "pathways")
 (:VAR MV5104 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405")
 (:VAR MV5109 :ISA IN :WORD "in") (:VAR MV5108 :ISA BE :PRESENT "PRESENT"))

___________________
547: "What are the genes STAT3 regulates?"

                    SOURCE-START
e13   BE            1 "What are the genes STAT3 regulates" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes STAT3 regulates?"
 (:VAR MV5116 :ISA BE :SUBJECT MV5115 :PREDICATE MV5118 :PRESENT "PRESENT")
 (:VAR MV5115 :ISA WHAT)
 (:VAR MV5118 :ISA GENE :PREDICATION MV5119 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV5119 :ISA REGULATE :OBJECT MV5118 :AGENT MV5114 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5114 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
548: "Which of those are in the immune pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Which of those are in the immune pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are in the immune pathway?"
 (:VAR MV5129 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5122 :VALUE MV5127 :PREP
  MV5124 :PREDICATE MV5123)
 (:VAR MV5122 :ISA THOSE :QUANTIFIER MV5120 :WORD "those")
 (:VAR MV5120 :ISA WHICH)
 (:VAR MV5127 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5126 :RAW-TEXT
  "pathway")
 (:VAR MV5126 :ISA IMMUNE :NAME "immune") (:VAR MV5124 :ISA IN :WORD "in")
 (:VAR MV5123 :ISA BE :PRESENT "PRESENT"))

___________________
549: "Which pathways involve p53?"

                    SOURCE-START
e7    INVOLVE       1 "Which pathways involve p53" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve p53?"
 (:VAR MV5134 :ISA INVOLVE :THEME MV5133 :THEME MV5131 :PRESENT "PRESENT")
 (:VAR MV5133 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV5131 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
550: "can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("can you show me the pahtways that involve SRF"
 (:VAR MV5144 :ISA POLAR-QUESTION :STATEMENT MV5137)
 (:VAR MV5137 :ISA SHOW :AGENT MV5136 :STATEMENT-OR-THEME MV5140 :BENEFICIARY
  MV5138 :MODAL "CAN")
 (:VAR MV5136 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5140 :ISA BIO-ENTITY :PREDICATION MV5142 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV5142 :ISA INVOLVE :THEME MV5140 :THAT-REL T :THEME MV5143 :MODAL
  "CAN")
 (:VAR MV5143 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5138 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
551: "Does Selumetinib inhibit MAP2K1?"

                    SOURCE-START
e9    INHIBIT       1 "Does Selumetinib inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib inhibit MAP2K1?"
 (:VAR MV5150 :ISA POLAR-QUESTION :STATEMENT MV5149)
 (:VAR MV5149 :ISA INHIBIT :AGENT MV5147 :OBJECT MV5145 :RAW-TEXT "inhibit")
 (:VAR MV5147 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV5145 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
552: "Let's build a model of the KRAS neighborhood."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's build a model of the KRAS neighborhood" 11
                    PERIOD
                    END-OF-SOURCE
("Let's build a model of the KRAS neighborhood."
 (:VAR MV5160 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV5152 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV5152 :ISA BUILD :ARTIFACT MV5154 :PRESENT "PRESENT")
 (:VAR MV5154 :ISA MODEL :OBJECT MV5158 :HAS-DETERMINER "A")
 (:VAR MV5158 :ISA NEIGHBORHOOD :HAS-DETERMINER "THE" :MODIFIER MV5157)
 (:VAR MV5157 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN"))

___________________
553: "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."

                    SOURCE-START
e28   KNOW          1 "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk" 15
                    PERIOD
                    END-OF-SOURCE
("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
 (:VAR MV5178 :ISA COLLECTION :TYPE KNOW :NUMBER 2 :ITEMS (MV5176 MV5177))
 (:VAR MV5176 :ISA KNOW :AGENT MV5161 :STATEMENT MV5167 :PRESENT "PRESENT")
 (:VAR MV5161 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV5167 :ISA BIO-ACTIVATE :AGENT MV5166 :OBJECT MV5168 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5166 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5168 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5177 :ISA COLLECTION :RAW-TEXT
  "Raf activates Mek and Mek activates Erk" :TYPE BIO-ACTIVATE :NUMBER 2 :ITEMS
  (MV5170 MV5174))
 (:VAR MV5170 :ISA BIO-ACTIVATE :AGENT MV5169 :OBJECT MV5171 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5169 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5171 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5174 :ISA BIO-ACTIVATE :AGENT MV5173 :OBJECT MV5175 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5173 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5175 :ISA PROTEIN-FAMILY :RAW-TEXT "Erk" :NAME "ERK" :COUNT 7
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
 (:VAR MV5181 :ISA PHOSPHORYLATE :AGENT MV5179 :SUBSTRATE MV5180 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV5179 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV5180 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
555: "DUSP6 dephosphorylates MAPK1."

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1."
 (:VAR MV5184 :ISA DEPHOSPHORYLATE :AGENT MV5182 :SUBSTRATE MV5183 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV5182 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV5183 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
556: "Is the amount of phosphorylated MAPK1 always high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always high?"
 (:VAR MV5195 :ISA POLAR-QUESTION :STATEMENT MV5194)
 (:VAR MV5194 :ISA COPULAR-PREDICATION :ITEM MV5188 :VALUE MV5192 :PREDICATE
  MV5186)
 (:VAR MV5188 :ISA BIO-AMOUNT :MEASURED-ITEM MV5185 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5185 :ISA PROTEIN :PREDICATION MV5190 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5190 :ISA PHOSPHORYLATE :SUBSTRATE MV5185 :RAW-TEXT "phosphorylated")
 (:VAR MV5192 :ISA HIGH :ADVERB MV5191)
 (:VAR MV5191 :ISA ALWAYS :NAME "always") (:VAR MV5186 :ISA BE))

___________________
557: "Is the amount of phosphorylated MAPK1 always low?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always low" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always low?"
 (:VAR MV5206 :ISA POLAR-QUESTION :STATEMENT MV5205)
 (:VAR MV5205 :ISA COPULAR-PREDICATION :ITEM MV5199 :VALUE MV5203 :PREDICATE
  MV5197)
 (:VAR MV5199 :ISA BIO-AMOUNT :MEASURED-ITEM MV5196 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5196 :ISA PROTEIN :PREDICATION MV5201 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5201 :ISA PHOSPHORYLATE :SUBSTRATE MV5196 :RAW-TEXT "phosphorylated")
 (:VAR MV5203 :ISA LOW :ADVERB MV5202) (:VAR MV5202 :ISA ALWAYS :NAME "always")
 (:VAR MV5197 :ISA BE))

___________________
558: "Does the MAP2K1-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the MAP2K1-MAPK1 complex vanish" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the MAP2K1-MAPK1 complex vanish?"
 (:VAR MV5216 :ISA POLAR-QUESTION :STATEMENT MV5215)
 (:VAR MV5215 :ISA VANISH :AGENT MV5214 :RAW-TEXT "vanish")
 (:VAR MV5214 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV5208 :COMPONENT MV5207)
 (:VAR MV5208 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5207 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
559: "Does the DUSP6-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the DUSP6-MAPK1 complex vanish" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the DUSP6-MAPK1 complex vanish?"
 (:VAR MV5226 :ISA POLAR-QUESTION :STATEMENT MV5225)
 (:VAR MV5225 :ISA VANISH :AGENT MV5224 :RAW-TEXT "vanish")
 (:VAR MV5224 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "DUSP6-MAPK1"
  :COMPONENT MV5218 :COMPONENT MV5217)
 (:VAR MV5218 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5217 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN"))

___________________
560: "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e50   EVENT-RELATION  1 "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV5256 :ISA POLAR-QUESTION :STATEMENT MV5255)
 (:VAR MV5255 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV5252 :EVENT MV5248)
 (:VAR MV5252 :ISA WH-QUESTION :STATEMENT MV5249 :WH IF)
 (:VAR MV5249 :ISA INCREASE :AGENT-OR-CAUSE MV5236 :CAUSE MV5247
  :AFFECTED-PROCESS-OR-OBJECT MV5240 :RAW-TEXT "increase")
 (:VAR MV5236 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV5247 :ISA MEASUREMENT :NUMBER MV5244)
 (:VAR MV5244 :ISA NUMBER :VALUE 10)
 (:VAR MV5240 :ISA BIO-AMOUNT :MEASURED-ITEM MV5228 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5228 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV5248 :ISA VANISH :CAUSE MV5231 :RAW-TEXT "vanish")
 (:VAR MV5231 :ISA BIO-AMOUNT :MEASURED-ITEM MV5227 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5227 :ISA PROTEIN :PREDICATION MV5233 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5233 :ISA PHOSPHORYLATE :SUBSTRATE MV5227 :RAW-TEXT "phosphorylated"))

___________________
561: "Show me the evidence that kras regulates fzd8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates fzd8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras regulates fzd8."
 (:VAR MV5258 :ISA SHOW :STATEMENT-OR-THEME MV5265 :BENEFICIARY MV5259 :PRESENT
  "PRESENT")
 (:VAR MV5265 :ISA EVIDENCE :STATEMENT MV5264 :HAS-DETERMINER "THE")
 (:VAR MV5264 :ISA REGULATE :AGENT MV5263 :OBJECT MV5257 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5263 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5257 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV5259 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
562: "What increases the amount of fzd8?"

                    SOURCE-START
e14   INCREASE      1 "What increases the amount of fzd8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of fzd8?"
 (:VAR MV5269 :ISA INCREASE :AGENT-OR-CAUSE MV5267 :AFFECTED-PROCESS-OR-OBJECT
  MV5271 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5267 :ISA WHAT)
 (:VAR MV5271 :ISA BIO-AMOUNT :MEASURED-ITEM MV5266 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5266 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
563: "Which kinases are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signaling pathway?"
 (:VAR MV5284 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5276 :VALUE MV5283 :PREP
  "IN" :PREDICATE MV5277)
 (:VAR MV5276 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5283 :ISA KINASE :CONTEXT-OR-IN-PATHWAY MV5274 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "kinases")
 (:VAR MV5274 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5280
  :RAW-TEXT "signaling pathway")
 (:VAR MV5280 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV5277 :ISA BE :PRESENT "PRESENT"))

___________________
564: "Does STAT3 regulate the c-fos gene in the liver?"

                    SOURCE-START
e23   REGULATE      1 "Does STAT3 regulate the c-fos gene in the liver" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in the liver?"
 (:VAR MV5297 :ISA POLAR-QUESTION :STATEMENT MV5295)
 (:VAR MV5295 :ISA REGULATE :AGENT MV5286 :OBJECT MV5291 :RAW-TEXT "regulate")
 (:VAR MV5286 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5291 :ISA GENE :ORGAN MV5294 :HAS-DETERMINER "THE" :EXPRESSES MV5287
  :RAW-TEXT "gene")
 (:VAR MV5294 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV5287 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
565: "what genes are regulated by smad2?"

                    SOURCE-START
e12   REGULATE      1 "what genes are regulated by smad2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by smad2?"
 (:VAR MV5304 :ISA REGULATE :OBJECT MV5300 :AGENT MV5298 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5300 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5298 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
566: "Which of these are regulated by smad2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by smad2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by smad2?"
 (:VAR MV5313 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV5309 :AGENT MV5306
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV5309 :ISA THESE :QUANTIFIER MV5307 :WORD "these")
 (:VAR MV5307 :ISA WHICH)
 (:VAR MV5306 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
567: "Which of these also regulate cfos?"

                    SOURCE-START
e12   REGULATE      1 "Which of these also regulate cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these also regulate cfos?"
 (:VAR MV5321 :ISA REGULATE :AGENT-OR-CAUSE MV5318 :OBJECT MV5322 :PRESENT
  "PRESENT" :ADVERB MV5319 :RAW-TEXT "regulate")
 (:VAR MV5318 :ISA THESE :QUANTIFIER MV5316 :WORD "these")
 (:VAR MV5316 :ISA WHICH)
 (:VAR MV5322 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV5319 :ISA ALSO :NAME "also"))

___________________
568: "what transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors transcribe SMURF2?"
 (:VAR MV5327 :ISA TRANSCRIBE :AGENT MV5324 :OBJECT MV5325 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV5324 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5325 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
569: "what transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factor transcribes SMURF2?"
 (:VAR MV5331 :ISA TRANSCRIBE :AGENT MV5328 :OBJECT MV5329 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV5328 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV5329 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
570: "Which KEGG pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which KEGG pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways utilize SRF?"
 (:VAR MV5335 :ISA UTILIZE :PARTICIPANT MV5334 :OBJECT MV5336 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV5334 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5333 :RAW-TEXT
  "pathways")
 (:VAR MV5333 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV5336 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
571: "What transcription factors are in the calcium regulated pathways?"

                    SOURCE-START
e17   REGULATE      1 "What transcription factors are in the calcium regulated pathways" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in the calcium regulated pathways?"
 (:VAR MV5347 :ISA WH-QUESTION :STATEMENT MV5343 :VAR NIL :WH WHAT)
 (:VAR MV5343 :ISA REGULATE :AFFECTED-PROCESS MV5344 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV5344 :ISA PATHWAY :RAW-TEXT "pathways"))

___________________
572: "What pathways involve the immune system?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve the immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the immune system?"
 (:VAR MV5351 :ISA INVOLVE :THEME MV5350 :THEME MV5348 :PRESENT "PRESENT")
 (:VAR MV5350 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5348 :ISA BIO-ORGAN :HAS-DETERMINER "THE" :NAME "immune system" :UID
  "UBERON:0002405"))

___________________
573: "What KEGG pathways involve ERBB2, JUN, and MAPK8?"

                    SOURCE-START
e16   INVOLVE       1 "What KEGG pathways involve ERBB2, JUN, and MAPK8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
 (:VAR MV5358 :ISA INVOLVE :THEME MV5357 :THEME MV5361 :PRESENT "PRESENT")
 (:VAR MV5357 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5356 :RAW-TEXT
  "pathways")
 (:VAR MV5356 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV5361 :ISA COLLECTION :RAW-TEXT "ERBB2, JUN, and MAPK8" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV5353 MV5359 MV5354))
 (:VAR MV5353 :ISA PROTEIN :RAW-TEXT "ERBB2" :UID "UP:P04626" :NAME
  "ERBB2_HUMAN")
 (:VAR MV5359 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV5354 :ISA PROTEIN :RAW-TEXT "MAPK8" :UID "UP:P45983" :NAME
  "MK08_HUMAN"))

___________________
574: "What pathways are shared by these genes?"

                    SOURCE-START
e13   SHARE         1 "What pathways are shared by these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are shared by these genes?"
 (:VAR MV5369 :ISA SHARE :OBJECT MV5363 :PARTICIPANT MV5368 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV5363 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5368 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
575: "what genes are regulated by srf?"

                    SOURCE-START
e11   REGULATE      1 "what genes are regulated by srf" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by srf?"
 (:VAR MV5377 :ISA REGULATE :OBJECT MV5372 :AGENT MV5376 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5372 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5376 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
576: "What are common pathways for these genes?"

                    SOURCE-START
e13   BE            1 "What are common pathways for these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common pathways for these genes?"
 (:VAR MV5380 :ISA BE :SUBJECT MV5379 :PREDICATE MV5382 :PRESENT "PRESENT")
 (:VAR MV5379 :ISA WHAT)
 (:VAR MV5382 :ISA PATHWAY :PATHWAYCOMPONENT MV5385 :PREDICATION MV5381
  :RAW-TEXT "pathways")
 (:VAR MV5385 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV5381 :ISA COMMON))

___________________
577: "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e24   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV5399 :ISA SHARE :OBJECT MV5392 :PARTICIPANT MV5397 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV5392 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5391 :RAW-TEXT
  "pathways")
 (:VAR MV5391 :ISA IMMUNE :NAME "immune")
 (:VAR MV5397 :ISA GENE :EXPRESSES MV5398 :RAW-TEXT "genes")
 (:VAR MV5398 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV5387 MV5388 MV5389))
 (:VAR MV5387 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5388 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV5389 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
578: "What MAP kinase phosphatase are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatase are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatase are regulated by ELK1?"
 (:VAR MV5408 :ISA REGULATE :OBJECT MV5404 :AGENT MV5402 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5404 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV5401 :RAW-TEXT
  "phosphatase")
 (:VAR MV5401 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME
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
 (:VAR MV5402 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
579: "What reactome pathways involve immune system?"

                    SOURCE-START
e9    INVOLVE       1 "What reactome pathways involve immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune system?"
 (:VAR MV5414 :ISA INVOLVE :THEME MV5413 :THEME MV5410 :PRESENT "PRESENT")
 (:VAR MV5413 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5412 :RAW-TEXT
  "pathways")
 (:VAR MV5412 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV5410 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405"))

___________________
580: "Is stat3 a kinase?"

                    SOURCE-START
e9    BE            1 "Is stat3 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 a kinase?" (:VAR MV5419 :ISA POLAR-QUESTION :STATEMENT MV5416)
 (:VAR MV5416 :ISA BE :SUBJECT MV5415 :PREDICATE MV5418)
 (:VAR MV5415 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5418 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
581: "Is STAT3 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is STAT3 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor?"
 (:VAR MV5424 :ISA POLAR-QUESTION :STATEMENT MV5422)
 (:VAR MV5422 :ISA BE :SUBJECT MV5420 :PREDICATE MV5421)
 (:VAR MV5420 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5421 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
582: "Which of these are protein kinases?"

                    SOURCE-START
e11   BE            1 "Which of these are protein kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are protein kinases?"
 (:VAR MV5428 :ISA BE :SUBJECT MV5427 :PREDICATE MV5430 :PRESENT "PRESENT")
 (:VAR MV5427 :ISA THESE :QUANTIFIER MV5425 :WORD "these")
 (:VAR MV5425 :ISA WHICH)
 (:VAR MV5430 :ISA KINASE :ENZYME MV5429 :RAW-TEXT "kinases")
 (:VAR MV5429 :ISA PROTEIN :RAW-TEXT "protein"))

___________________
583: "Which of these are tyrosine kinases?"

                    SOURCE-START
e10   BE            1 "Which of these are tyrosine kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinases?"
 (:VAR MV5436 :ISA BE :SUBJECT MV5435 :PREDICATE MV5432 :PRESENT "PRESENT")
 (:VAR MV5435 :ISA THESE :QUANTIFIER MV5433 :WORD "these")
 (:VAR MV5433 :ISA WHICH)
 (:VAR MV5432 :ISA PROTEIN-FAMILY :RAW-TEXT "tyrosine kinases" :NAME
  "protein tyrosine kinase" :UID "NCIT:C17020"))

___________________
584: "Which of these are serine/threonine kinases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine kinases?"
 (:VAR MV5441 :ISA BE :SUBJECT MV5440 :PREDICATE MV5444 :PRESENT "PRESENT")
 (:VAR MV5440 :ISA THESE :QUANTIFIER MV5438 :WORD "these")
 (:VAR MV5438 :ISA WHICH)
 (:VAR MV5444 :ISA KINASE :AMINO-ACID MV5445 :RAW-TEXT "kinases")
 (:VAR MV5445 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID
  :ITEMS (MV5442 MV5443))
 (:VAR MV5442 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5443 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
585: "Which of these are phosphatases?"

                    SOURCE-START
e9    BE            1 "Which of these are phosphatases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are phosphatases?"
 (:VAR MV5450 :ISA BE :SUBJECT MV5449 :PREDICATE MV5451 :PRESENT "PRESENT")
 (:VAR MV5449 :ISA THESE :QUANTIFIER MV5447 :WORD "these")
 (:VAR MV5447 :ISA WHICH)
 (:VAR MV5451 :ISA PHOSPHATASE :RAW-TEXT "phosphatases"))

___________________
586: "Which of these are proteases?"

                    SOURCE-START
e9    BE            1 "Which of these are proteases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are proteases?"
 (:VAR MV5456 :ISA BE :SUBJECT MV5455 :PREDICATE MV5457 :PRESENT "PRESENT")
 (:VAR MV5455 :ISA THESE :QUANTIFIER MV5453 :WORD "these")
 (:VAR MV5453 :ISA WHICH)
 (:VAR MV5457 :ISA PROTEIN :RAW-TEXT "proteases" :UID "UP:P63127" :NAME
  "VPK9_HUMAN"))

___________________
587: "Which of these are receptors?"

                    SOURCE-START
e9    BE            1 "Which of these are receptors" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptors?"
 (:VAR MV5462 :ISA BE :SUBJECT MV5461 :PREDICATE MV5463 :PRESENT "PRESENT")
 (:VAR MV5461 :ISA THESE :QUANTIFIER MV5459 :WORD "these")
 (:VAR MV5459 :ISA WHICH) (:VAR MV5463 :ISA RECEPTOR :RAW-TEXT "receptors"))

___________________
588: "Which of these are tyrosine kinase receptors?"

                    SOURCE-START
e12   BE            1 "Which of these are tyrosine kinase receptors" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinase receptors?"
 (:VAR MV5469 :ISA BE :SUBJECT MV5468 :PREDICATE MV5470 :PRESENT "PRESENT")
 (:VAR MV5468 :ISA THESE :QUANTIFIER MV5466 :WORD "these")
 (:VAR MV5466 :ISA WHICH)
 (:VAR MV5470 :ISA RECEPTOR :MODIFIER MV5465 :RAW-TEXT "receptors")
 (:VAR MV5465 :ISA PROTEIN-FAMILY :RAW-TEXT "tyrosine kinase" :NAME
  "protein tyrosine kinase" :UID "NCIT:C17020"))

___________________
589: "Which of these are histone demethylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone demethylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone demethylases?"
 (:VAR MV5476 :ISA BE :SUBJECT MV5475 :PREDICATE MV5472 :PRESENT "PRESENT")
 (:VAR MV5475 :ISA THESE :QUANTIFIER MV5473 :WORD "these")
 (:VAR MV5473 :ISA WHICH)
 (:VAR MV5472 :ISA PROTEIN-FAMILY :RAW-TEXT "histone demethylases" :NAME
  "histone demethylase" :UID "GO:0032452"))

___________________
590: "Which of these are histone methylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methylases?"
 (:VAR MV5482 :ISA BE :SUBJECT MV5481 :PREDICATE MV5478 :PRESENT "PRESENT")
 (:VAR MV5481 :ISA THESE :QUANTIFIER MV5479 :WORD "these")
 (:VAR MV5479 :ISA WHICH)
 (:VAR MV5478 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methylases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
591: "Which of these are histone methyltransferases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methyltransferases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methyltransferases?"
 (:VAR MV5488 :ISA BE :SUBJECT MV5487 :PREDICATE MV5484 :PRESENT "PRESENT")
 (:VAR MV5487 :ISA THESE :QUANTIFIER MV5485 :WORD "these")
 (:VAR MV5485 :ISA WHICH)
 (:VAR MV5484 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methyltransferases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
592: "Which of these are demethylases?"

                    SOURCE-START
e9    BE            1 "Which of these are demethylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are demethylases?"
 (:VAR MV5493 :ISA BE :SUBJECT MV5492 :PREDICATE MV5494 :PRESENT "PRESENT")
 (:VAR MV5492 :ISA THESE :QUANTIFIER MV5490 :WORD "these")
 (:VAR MV5490 :ISA WHICH)
 (:VAR MV5494 :ISA PROTEIN-FAMILY :RAW-TEXT "demethylases" :NAME "demethylase"
  :UID "GO:0032451"))

___________________
593: "Which of these are methylases?"

                    SOURCE-START
e9    BE            1 "Which of these are methylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methylases?"
 (:VAR MV5499 :ISA BE :SUBJECT MV5498 :PREDICATE MV5500 :PRESENT "PRESENT")
 (:VAR MV5498 :ISA THESE :QUANTIFIER MV5496 :WORD "these")
 (:VAR MV5496 :ISA WHICH)
 (:VAR MV5500 :ISA PROTEIN-FAMILY :RAW-TEXT "methylases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
594: "Which of these are methyltransferases?"

                    SOURCE-START
e9    BE            1 "Which of these are methyltransferases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methyltransferases?"
 (:VAR MV5505 :ISA BE :SUBJECT MV5504 :PREDICATE MV5506 :PRESENT "PRESENT")
 (:VAR MV5504 :ISA THESE :QUANTIFIER MV5502 :WORD "these")
 (:VAR MV5502 :ISA WHICH)
 (:VAR MV5506 :ISA PROTEIN-FAMILY :RAW-TEXT "methyltransferases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
595: "Which of these are steroid receptors?"

                    SOURCE-START
e11   BE            1 "Which of these are steroid receptors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are steroid receptors?"
 (:VAR MV5511 :ISA BE :SUBJECT MV5510 :PREDICATE MV5513 :PRESENT "PRESENT")
 (:VAR MV5510 :ISA THESE :QUANTIFIER MV5508 :WORD "these")
 (:VAR MV5508 :ISA WHICH)
 (:VAR MV5513 :ISA RECEPTOR :MODIFIER MV5512 :RAW-TEXT "receptors")
 (:VAR MV5512 :ISA MOLECULE :RAW-TEXT "steroid" :NAME "steroid" :UID
  "CHEBI:35341"))

___________________
596: "Which of these are receptor tyrosine kinases?"

                    SOURCE-START
e10   BE            1 "Which of these are receptor tyrosine kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptor tyrosine kinases?"
 (:VAR MV5519 :ISA BE :SUBJECT MV5518 :PREDICATE MV5515 :PRESENT "PRESENT")
 (:VAR MV5518 :ISA THESE :QUANTIFIER MV5516 :WORD "these")
 (:VAR MV5516 :ISA WHICH)
 (:VAR MV5515 :ISA PROTEIN-FAMILY :RAW-TEXT "receptor tyrosine kinases" :NAME
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
 (:VAR MV5525 :ISA BE :SUBJECT MV5524 :PREDICATE MV5521 :PRESENT "PRESENT")
 (:VAR MV5524 :ISA THESE :QUANTIFIER MV5522 :WORD "these")
 (:VAR MV5522 :ISA WHICH)
 (:VAR MV5521 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
598: "Which of these are DNA binding proteins?"

                    SOURCE-START
e12   BE            1 "Which of these are DNA binding proteins" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are DNA binding proteins?"
 (:VAR MV5531 :ISA BE :SUBJECT MV5530 :PREDICATE MV5532 :PRESENT "PRESENT")
 (:VAR MV5530 :ISA THESE :QUANTIFIER MV5528 :WORD "these")
 (:VAR MV5528 :ISA WHICH)
 (:VAR MV5532 :ISA PROTEIN :MODIFIER MV5527 :RAW-TEXT "proteins")
 (:VAR MV5527 :ISA DNA-BINDING :RAW-TEXT "DNA binding"))

___________________
599: "Which of these are serine/threonine phosphatases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine phosphatases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine phosphatases?"
 (:VAR MV5537 :ISA BE :SUBJECT MV5536 :PREDICATE MV5540 :PRESENT "PRESENT")
 (:VAR MV5536 :ISA THESE :QUANTIFIER MV5534 :WORD "these")
 (:VAR MV5534 :ISA WHICH)
 (:VAR MV5540 :ISA PHOSPHATASE :MODIFIER MV5541 :RAW-TEXT "phosphatases")
 (:VAR MV5541 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID
  :ITEMS (MV5538 MV5539))
 (:VAR MV5538 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5539 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
600: "Which of these are tyrosine phosphatases?"

                    SOURCE-START
e11   BE            1 "Which of these are tyrosine phosphatases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine phosphatases?"
 (:VAR MV5546 :ISA BE :SUBJECT MV5545 :PREDICATE MV5548 :PRESENT "PRESENT")
 (:VAR MV5545 :ISA THESE :QUANTIFIER MV5543 :WORD "these")
 (:VAR MV5543 :ISA WHICH)
 (:VAR MV5548 :ISA PHOSPHATASE :MODIFIER MV5547 :RAW-TEXT "phosphatases")
 (:VAR MV5547 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

___________________
601: "What does MEK phosphorylate?"

                    SOURCE-START
e5    PHOSPHORYLATE 1 "What does MEK phosphorylate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does MEK phosphorylate?"
 (:VAR MV5553 :ISA PHOSPHORYLATE :AMINO-ACID MV5550 :AGENT MV5552 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV5550 :ISA WHAT)
 (:VAR MV5552 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV5562 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5556 :ORGAN MV5561
  :PRESENT "PRESENT" :ADVERB MV5558 :RAW-TEXT "expressed")
 (:VAR MV5556 :ISA THESE :QUANTIFIER MV5554 :WORD "these")
 (:VAR MV5554 :ISA WHICH) (:VAR MV5561 :ISA LIVER)
 (:VAR MV5558 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
603: "What regulates frizzled8?"

                    SOURCE-START
e5    REGULATE      1 "What regulates frizzled8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates frizzled8?"
 (:VAR MV5567 :ISA REGULATE :AGENT-OR-CAUSE MV5566 :OBJECT MV5565 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5566 :ISA WHAT)
 (:VAR MV5565 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
604: "What increases the amount of myc?"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of myc?"
 (:VAR MV5570 :ISA INCREASE :AGENT-OR-CAUSE MV5568 :AFFECTED-PROCESS-OR-OBJECT
  MV5572 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5568 :ISA WHAT)
 (:VAR MV5572 :ISA BIO-AMOUNT :MEASURED-ITEM MV5574 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5574 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
605: "What upregulates myc?"

                    SOURCE-START
e4    UPREGULATE    1 "What upregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates myc?"
 (:VAR MV5577 :ISA UPREGULATE :AGENT-OR-CAUSE MV5576 :OBJECT MV5578 :PRESENT
  "PRESENT" :RAW-TEXT "upregulates")
 (:VAR MV5576 :ISA WHAT)
 (:VAR MV5578 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
606: "What downregulates myc?"

                    SOURCE-START
e4    DOWNREGULATE  1 "What downregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates myc?"
 (:VAR MV5580 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV5579 :OBJECT MV5581 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV5579 :ISA WHAT)
 (:VAR MV5581 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
607: "What decreases the amount of GFAP?"

                    SOURCE-START
e12   DECREASE      1 "What decreases the amount of GFAP" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What decreases the amount of GFAP?"
 (:VAR MV5583 :ISA DECREASE :AGENT-OR-CAUSE MV5582 :AFFECTED-PROCESS-OR-OBJECT
  MV5585 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5582 :ISA WHAT)
 (:VAR MV5585 :ISA BIO-AMOUNT :MEASURED-ITEM MV5587 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5587 :ISA PROTEIN :RAW-TEXT "GFAP" :UID "UP:P14136" :NAME
  "GFAP_HUMAN"))

___________________
608: "What regulates GLUL?"

                    SOURCE-START
e4    REGULATE      1 "What regulates GLUL" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL?"
 (:VAR MV5590 :ISA REGULATE :AGENT-OR-CAUSE MV5589 :OBJECT MV5591 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5589 :ISA WHAT)
 (:VAR MV5591 :ISA PROTEIN :RAW-TEXT "GLUL" :UID "UP:P15104" :NAME
  "GLNA_HUMAN"))

___________________
609: "What regulates GLUL from the literature?"

                    SOURCE-START
e11   FROM          1 "What regulates GLUL from the literature" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL from the literature?"
 (:VAR MV5599 :ISA WH-QUESTION :STATEMENT MV5598 :WH WHAT)
 (:VAR MV5598 :ISA PREPOSITIONAL-PHRASE :POBJ MV5597 :PREP "FROM")
 (:VAR MV5597 :ISA LITERATURE :HAS-DETERMINER "THE"))

___________________
610: "What regulates GLUL from the GEO RNAi database?"

                    SOURCE-START
e12   FROM          1 "What regulates GLUL from the GEO RNAi database" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL from the GEO RNAi database?"
 (:VAR MV5607 :ISA WH-QUESTION :STATEMENT MV5606 :WH WHAT)
 (:VAR MV5606 :ISA PREPOSITIONAL-PHRASE :POBJ MV5600 :PREP "FROM")
 (:VAR MV5600 :ISA DATABASE :HAS-DETERMINER "THE" :NAME "GEO RNAi database"
  :UID "GEO-RNAi"))

___________________
611: "Which kinases regulate the cfos gene?"

                    SOURCE-START
e11   REGULATE      1 "Which kinases regulate the cfos gene" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases regulate the cfos gene?"
 (:VAR MV5610 :ISA REGULATE :AGENT MV5609 :OBJECT MV5613 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5609 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5613 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5612 :RAW-TEXT
  "gene")
 (:VAR MV5612 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
612: "Which kinases negatively regulate the cfos gene?"

                    SOURCE-START
e12   DOWNREGULATE  1 "Which kinases negatively regulate the cfos gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate the cfos gene?"
 (:VAR MV5614 :ISA DOWNREGULATE :AGENT MV5616 :OBJECT MV5619 :PRESENT "PRESENT"
  :RAW-TEXT "negatively regulate")
 (:VAR MV5616 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5619 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5618 :RAW-TEXT
  "gene")
 (:VAR MV5618 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
613: "What are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "What are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of the cfos gene?"
 (:VAR MV5622 :ISA BE :SUBJECT MV5621 :PREDICATE MV5620 :PRESENT "PRESENT")
 (:VAR MV5621 :ISA WHAT)
 (:VAR MV5620 :ISA POSITIVE-REGULATOR :THEME MV5626 :RAW-TEXT
  "positive regulators")
 (:VAR MV5626 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5625 :RAW-TEXT
  "gene")
 (:VAR MV5625 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
614: "What transcribes ZEB1?"

                    SOURCE-START
e5    TRANSCRIBE    1 "What transcribes ZEB1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcribes ZEB1?"
 (:VAR MV5630 :ISA TRANSCRIBE :AGENT-OR-CAUSE MV5629 :OBJECT MV5628 :PRESENT
  "PRESENT" :RAW-TEXT "transcribes")
 (:VAR MV5629 :ISA WHAT)
 (:VAR MV5628 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME
  "ZEB1_HUMAN"))

___________________
615: "Show me the evidence that IL6 increases the amount of SOCS1."

                    SOURCE-START
e27   SHOW          1 "Show me the evidence that IL6 increases the amount of SOCS1" 14
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that IL6 increases the amount of SOCS1."
 (:VAR MV5633 :ISA SHOW :STATEMENT-OR-THEME MV5644 :BENEFICIARY MV5634 :PRESENT
  "PRESENT")
 (:VAR MV5644 :ISA EVIDENCE :STATEMENT MV5639 :HAS-DETERMINER "THE")
 (:VAR MV5639 :ISA INCREASE :AGENT MV5631 :AFFECTED-PROCESS-OR-OBJECT MV5641
  :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5631 :ISA PROTEIN :RAW-TEXT "IL6" :UID "UP:P05231" :NAME "IL6_HUMAN")
 (:VAR MV5641 :ISA BIO-AMOUNT :MEASURED-ITEM MV5632 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5632 :ISA PROTEIN :RAW-TEXT "SOCS1" :UID "UP:O15524" :NAME
  "SOCS1_HUMAN")
 (:VAR MV5634 :ISA INTERLOCUTOR :NAME "speaker"))

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
 (:VAR MV5659 :ISA BE :SUBJECT MV5658 :PREDICATE MV5665 :PRESENT "PRESENT")
 (:VAR MV5658 :ISA WHAT)
 (:VAR MV5665 :ISA EVIDENCE :STATEMENT MV5664 :HAS-DETERMINER "THE")
 (:VAR MV5664 :ISA REGULATE :AGENT MV5663 :OBJECT MV5657 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5663 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5657 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
618: "What is the evidence that SRF binds the cfos gene?"

                    SOURCE-START
e21   BE            1 "What is the evidence that SRF binds the cfos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that SRF binds the cfos gene?"
 (:VAR MV5667 :ISA BE :SUBJECT MV5666 :PREDICATE MV5676 :PRESENT "PRESENT")
 (:VAR MV5666 :ISA WHAT)
 (:VAR MV5676 :ISA EVIDENCE :STATEMENT MV5672 :HAS-DETERMINER "THE")
 (:VAR MV5672 :ISA BINDING :BINDER MV5671 :DIRECT-BINDEE MV5675 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV5671 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5675 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5674 :RAW-TEXT
  "gene")
 (:VAR MV5674 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
619: "what genes are exclusively expressed in liver?"

                    SOURCE-START
e13   GENE-TRANSCRIPT-EXPRESS 1 "what genes are exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are exclusively expressed in liver?"
 (:VAR MV5684 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5678 :ORGAN MV5683
  :PRESENT "PRESENT" :ADVERB MV5680 :RAW-TEXT "expressed")
 (:VAR MV5678 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5683 :ISA LIVER) (:VAR MV5680 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
620: "Is stat3 expressed in liver?"

                    SOURCE-START
e10   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in liver" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in liver?"
 (:VAR MV5692 :ISA POLAR-QUESTION :STATEMENT MV5688)
 (:VAR MV5688 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5686 :ORGAN MV5690 :PAST
  "PAST" :RAW-TEXT "expressed")
 (:VAR MV5686 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5690 :ISA LIVER))

___________________
621: "Is stat3 exclusively expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 exclusively expressed in liver?"
 (:VAR MV5701 :ISA POLAR-QUESTION :STATEMENT MV5699)
 (:VAR MV5699 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5693 :ORGAN MV5698 :ADVERB
  MV5695 :RAW-TEXT "expressed")
 (:VAR MV5693 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5698 :ISA LIVER) (:VAR MV5695 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
622: "How does MAP4K2 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP4K2 affect CXCL8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP4K2 affect CXCL8?"
 (:VAR MV5706 :ISA AFFECT :MANNER MV5704 :AGENT MV5702 :OBJECT MV5703 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5704 :ISA HOW)
 (:VAR MV5702 :ISA PROTEIN :RAW-TEXT "MAP4K2" :UID "UP:Q12851" :NAME
  "M4K2_HUMAN")
 (:VAR MV5703 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
623: "How does ERK affect CXCL8?"

                    SOURCE-START
e8    AFFECT        1 "How does ERK affect CXCL8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does ERK affect CXCL8?"
 (:VAR MV5711 :ISA AFFECT :MANNER MV5708 :AGENT MV5710 :OBJECT MV5707 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5708 :ISA HOW)
 (:VAR MV5710 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5707 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
624: "What are the common upstream regulators of CXCL8 and CXCL10?"

                    SOURCE-START
e22   BE            1 "What are the common upstream regulators of CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of CXCL8 and CXCL10?"
 (:VAR MV5715 :ISA BE :SUBJECT MV5714 :PREDICATE MV5720 :PRESENT "PRESENT")
 (:VAR MV5714 :ISA WHAT)
 (:VAR MV5720 :ISA REGULATOR :THEME MV5723 :HAS-DETERMINER "THE" :PREDICATION
  MV5717 :CONTEXT MV5718 :RAW-TEXT "regulators")
 (:VAR MV5723 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5712 MV5713))
 (:VAR MV5712 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5713 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV5717 :ISA COMMON)
 (:VAR MV5718 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
625: "What are the paths between MAP3K7 and CXCL8?"

                    SOURCE-START
e16   BE            1 "What are the paths between MAP3K7 and CXCL8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between MAP3K7 and CXCL8?"
 (:VAR MV5728 :ISA BE :SUBJECT MV5727 :PREDICATE MV5730 :PRESENT "PRESENT")
 (:VAR MV5727 :ISA WHAT)
 (:VAR MV5730 :ISA PATH :ENDPOINTS MV5733 :HAS-DETERMINER "THE")
 (:VAR MV5733 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5725 MV5726))
 (:VAR MV5725 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5726 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
626: "Does MAP3K7 affect IKK?"

                    SOURCE-START
e9    AFFECT        1 "Does MAP3K7 affect IKK" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP3K7 affect IKK?" (:VAR MV5740 :ISA POLAR-QUESTION :STATEMENT MV5739)
 (:VAR MV5739 :ISA AFFECT :AGENT MV5735 :OBJECT MV5738 :RAW-TEXT "affect")
 (:VAR MV5735 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5738 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5742 :ISA REGULATE :AGENT MV5741 :OBJECT MV5743 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5741 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5743 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5745 :ISA UPREGULATE :AGENT MV5744 :OBJECT MV5746 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV5744 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5746 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5747 :ISA UPREGULATE :AGENT MV5749 :OBJECT MV5748 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV5749 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5748 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
630: "Does NFkappaB regulate the CXCL8 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does NFkappaB regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate the CXCL8 gene?"
 (:VAR MV5759 :ISA POLAR-QUESTION :STATEMENT MV5758)
 (:VAR MV5758 :ISA REGULATE :AGENT MV5753 :OBJECT MV5757 :RAW-TEXT "regulate")
 (:VAR MV5753 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5757 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5751 :RAW-TEXT
  "gene")
 (:VAR MV5751 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
631: "Show me the evidence that NFkappaB regulates CXCL8"

                    SOURCE-START
e18   SHOW          1 "Show me the evidence that NFkappaB regulates CXCL8" 10
                    END-OF-SOURCE
("Show me the evidence that NFkappaB regulates CXCL8"
 (:VAR MV5761 :ISA SHOW :STATEMENT-OR-THEME MV5769 :BENEFICIARY MV5762 :PRESENT
  "PRESENT")
 (:VAR MV5769 :ISA EVIDENCE :STATEMENT MV5768 :HAS-DETERMINER "THE")
 (:VAR MV5768 :ISA REGULATE :AGENT MV5766 :OBJECT MV5760 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5766 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5760 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5762 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
632: "Does ERK regulate the CXCL8 gene?"

                    SOURCE-START
e14   REGULATE      1 "Does ERK regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the CXCL8 gene?"
 (:VAR MV5777 :ISA POLAR-QUESTION :STATEMENT MV5776)
 (:VAR MV5776 :ISA REGULATE :AGENT MV5772 :OBJECT MV5775 :RAW-TEXT "regulate")
 (:VAR MV5772 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5775 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5770 :RAW-TEXT
  "gene")
 (:VAR MV5770 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
633: "ERK decreases the amount of CXCL8"

                    SOURCE-START
e13   DECREASE      1 "ERK decreases the amount of CXCL8" 8
                    END-OF-SOURCE
("ERK decreases the amount of CXCL8"
 (:VAR MV5780 :ISA DECREASE :AGENT MV5779 :AFFECTED-PROCESS-OR-OBJECT MV5782
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5779 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5782 :ISA BIO-AMOUNT :MEASURED-ITEM MV5778 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5778 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
634: "Does TNG regulate ERK?"

                    SOURCE-START
e8    REGULATE      1 "Does TNG regulate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNG regulate ERK?" (:VAR MV5790 :ISA POLAR-QUESTION :STATEMENT MV5789)
 (:VAR MV5789 :ISA REGULATE :AGENT MV5788 :OBJECT MV5787 :RAW-TEXT "regulate")
 (:VAR MV5788 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV5787 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5798 :ISA POLAR-QUESTION :STATEMENT MV5797)
 (:VAR MV5797 :ISA REGULATE :AGENT MV5792 :OBJECT MV5796 :RAW-TEXT "regulate")
 (:VAR MV5792 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5796 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5795 :RAW-TEXT
  "gene")
 (:VAR MV5795 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5800 :ISA BE :SUBJECT MV5799 :PREDICATE MV5802 :PRESENT "PRESENT")
 (:VAR MV5799 :ISA WHAT)
 (:VAR MV5802 :ISA PATHWAY :PATHWAYCOMPONENT MV5807 :HAS-DETERMINER "THE"
  :RAW-TEXT "pathways")
 (:VAR MV5807 :ISA COLLECTION :RAW-TEXT "TNG and ERK" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV5804 MV5806))
 (:VAR MV5804 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV5806 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5810 :ISA BE :SUBJECT MV5809 :PREDICATE MV5812 :PRESENT "PRESENT")
 (:VAR MV5809 :ISA WHAT)
 (:VAR MV5812 :ISA PATHWAY :PATHWAYCOMPONENT MV5817 :HAS-DETERMINER "THE"
  :RAW-TEXT "pathways")
 (:VAR MV5817 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV5814 MV5816))
 (:VAR MV5814 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5816 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5825 :ISA POLAR-QUESTION :STATEMENT MV5824)
 (:VAR MV5824 :ISA REGULATE :AGENT MV5820 :OBJECT MV5823 :RAW-TEXT "regulate")
 (:VAR MV5820 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5823 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5834 :ISA POLAR-QUESTION :STATEMENT MV5833)
 (:VAR MV5833 :ISA REGULATE :AGENT MV5827 :OBJECT MV5832 :RAW-TEXT "regulate")
 (:VAR MV5827 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5832 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5831 :RAW-TEXT
  "gene")
 (:VAR MV5831 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5847 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5836 :VALUE MV5846 :PREP
  "BETWEEN" :PREDICATE MV5837)
 (:VAR MV5836 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5846 :ISA PATHWAY :PATHWAYCOMPONENT MV5843 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "pathways")
 (:VAR MV5843 :ISA COLLECTION :RAW-TEXT "NFkappaB and ERK" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV5840 MV5842))
 (:VAR MV5840 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
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
 (:VAR MV5837 :ISA EXIST :PRESENT "PRESENT"))

___________________
641: "How does NFkappaB affect ERK?"

                    SOURCE-START
e8    AFFECT        1 "How does NFkappaB affect ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does NFkappaB affect ERK?"
 (:VAR MV5853 :ISA AFFECT :MANNER MV5849 :AGENT MV5851 :OBJECT MV5854 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5849 :ISA HOW)
 (:VAR MV5851 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5854 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5856 :ISA BIO-ACTIVATE :AGENT MV5855 :OBJECT MV5857 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5855 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5857 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5859 :ISA BIO-ACTIVATE :AGENT MV5858 :OBJECT MV5860 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5858 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199")
 (:VAR MV5860 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN"))

___________________
644: "What are the paths between TNF and ERK?"

                    SOURCE-START
e14   BE            1 "What are the paths between TNF and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and ERK?"
 (:VAR MV5862 :ISA BE :SUBJECT MV5861 :PREDICATE MV5864 :PRESENT "PRESENT")
 (:VAR MV5861 :ISA WHAT)
 (:VAR MV5864 :ISA PATH :ENDPOINTS MV5869 :HAS-DETERMINER "THE")
 (:VAR MV5869 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV5866 MV5868))
 (:VAR MV5866 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5868 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
("Does TNF regulate ERK?" (:VAR MV5876 :ISA POLAR-QUESTION :STATEMENT MV5875)
 (:VAR MV5875 :ISA REGULATE :AGENT MV5872 :OBJECT MV5874 :RAW-TEXT "regulate")
 (:VAR MV5872 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5874 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5881 :ISA AFFECT :MANNER MV5879 :AGENT MV5877 :OBJECT MV5878 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5879 :ISA HOW)
 (:VAR MV5877 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5878 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
647: "TNF activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "TNF activates ERK" 4
                    END-OF-SOURCE
("TNF activates ERK"
 (:VAR MV5883 :ISA BIO-ACTIVATE :AGENT MV5882 :OBJECT MV5884 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5882 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5884 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5888 :ISA DECREASE :AGENT MV5887 :AFFECTED-PROCESS-OR-OBJECT MV5890
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5887 :ISA PROTEIN-FAMILY :PREDICATION MV5886 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5886 :ISA ACTIVE)
 (:VAR MV5890 :ISA BIO-AMOUNT :MEASURED-ITEM MV5885 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5885 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
649: "What are the common upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e19   BE            1 "What are the common upstreams of CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of CXCL8 and CXCL10?"
 (:VAR MV5896 :ISA BE :SUBJECT MV5895 :PREDICATE MV5899 :PRESENT "PRESENT")
 (:VAR MV5895 :ISA WHAT)
 (:VAR MV5899 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV5902 :HAS-DETERMINER
  "THE" :PREDICATION MV5898 :RAW-TEXT "upstreams")
 (:VAR MV5902 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5893 MV5894))
 (:VAR MV5893 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5894 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV5898 :ISA COMMON))

___________________
650: "How does CXCL8 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does CXCL8 affect CXCL8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does CXCL8 affect CXCL8?"
 (:VAR MV5908 :ISA AFFECT :MANNER MV5906 :AGENT MV5904 :OBJECT MV5905 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5906 :ISA HOW)
 (:VAR MV5904 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5905 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
651: "Does CXCL8 regulate CXCL10?"

                    SOURCE-START
e10   REGULATE      1 "Does CXCL8 regulate CXCL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate CXCL10?"
 (:VAR MV5914 :ISA POLAR-QUESTION :STATEMENT MV5913)
 (:VAR MV5913 :ISA REGULATE :AGENT MV5909 :OBJECT MV5910 :RAW-TEXT "regulate")
 (:VAR MV5909 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5910 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
652: "Does CXCL8 regulate the CXCL10 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does CXCL8 regulate the CXCL10 gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate the CXCL10 gene?"
 (:VAR MV5922 :ISA POLAR-QUESTION :STATEMENT MV5921)
 (:VAR MV5921 :ISA REGULATE :AGENT MV5915 :OBJECT MV5920 :RAW-TEXT "regulate")
 (:VAR MV5915 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5920 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5916 :RAW-TEXT
  "gene")
 (:VAR MV5916 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
653: "How does MAP3k7 affect CXCL10?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP3k7 affect CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP3k7 affect CXCL10?"
 (:VAR MV5927 :ISA AFFECT :MANNER MV5925 :AGENT MV5923 :OBJECT MV5924 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5925 :ISA HOW)
 (:VAR MV5923 :ISA PROTEIN :RAW-TEXT "MAP3k7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5924 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
654: "What are the paths between TNF and CXCL10?"

                    SOURCE-START
e15   BE            1 "What are the paths between TNF and CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and CXCL10?"
 (:VAR MV5930 :ISA BE :SUBJECT MV5929 :PREDICATE MV5932 :PRESENT "PRESENT")
 (:VAR MV5929 :ISA WHAT)
 (:VAR MV5932 :ISA PATH :ENDPOINTS MV5936 :HAS-DETERMINER "THE")
 (:VAR MV5936 :ISA COLLECTION :RAW-TEXT "TNF and CXCL10" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV5934 MV5928))
 (:VAR MV5934 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5928 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
655: "Does ERK regulate the expression of CXCL10?"

                    SOURCE-START
e17   REGULATE      1 "Does ERK regulate the expression of CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the expression of CXCL10?"
 (:VAR MV5947 :ISA POLAR-QUESTION :STATEMENT MV5945)
 (:VAR MV5945 :ISA REGULATE :AGENT MV5940 :AFFECTED-PROCESS MV5943 :RAW-TEXT
  "regulate")
 (:VAR MV5940 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5943 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5938 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV5938 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
656: "active ERK decreases the expression of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the expression of CXCL10" 9
                    END-OF-SOURCE
("active ERK decreases the expression of CXCL10"
 (:VAR MV5951 :ISA DECREASE :AGENT MV5950 :AFFECTED-PROCESS MV5953 :PRESENT
  "PRESENT" :RAW-TEXT "decreases")
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
 (:VAR MV5953 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5948 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV5948 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
657: "active ERK decreases the amount of CXCL8"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the amount of CXCL8" 9
                    END-OF-SOURCE
("active ERK decreases the amount of CXCL8"
 (:VAR MV5959 :ISA DECREASE :AGENT MV5958 :AFFECTED-PROCESS-OR-OBJECT MV5961
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5958 :ISA PROTEIN-FAMILY :PREDICATION MV5957 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5957 :ISA ACTIVE)
 (:VAR MV5961 :ISA BIO-AMOUNT :MEASURED-ITEM MV5956 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5956 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
658: "Active ERK decreases the amount of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "Active ERK decreases the amount of CXCL10" 9
                    END-OF-SOURCE
("Active ERK decreases the amount of CXCL10"
 (:VAR MV5967 :ISA DECREASE :AGENT MV5966 :AFFECTED-PROCESS-OR-OBJECT MV5969
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5966 :ISA PROTEIN-FAMILY :PREDICATION MV5965 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5965 :ISA ACTIVE)
 (:VAR MV5969 :ISA BIO-AMOUNT :MEASURED-ITEM MV5964 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5964 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
659: "NG25 inhibits the activity of MAP3K7"

                    SOURCE-START
e14   INHIBIT       1 "NG25 inhibits the activity of MAP3K7" 11
                    END-OF-SOURCE
("NG25 inhibits the activity of MAP3K7"
 (:VAR MV5974 :ISA INHIBIT :AGENT MV5972 :AFFECTED-PROCESS MV5976 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV5972 :ISA DRUG :RAW-TEXT "NG25" :NAME "NG-25" :UID "PCID:53340664")
 (:VAR MV5976 :ISA BIO-ACTIVITY :PARTICIPANT MV5973 :HAS-DETERMINER "THE"
  :RAW-TEXT "activity")
 (:VAR MV5973 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN"))

___________________
660: "Does NG25 decrease the CXCL8 in the model?"

                    SOURCE-START
e22   DECREASE      1 "Does NG25 decrease the CXCL8 in the model" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease the CXCL8 in the model?"
 (:VAR MV5990 :ISA POLAR-QUESTION :STATEMENT MV5988)
 (:VAR MV5988 :ISA DECREASE :AGENT MV5979 :OBJECT MV5980 :RAW-TEXT "decrease")
 (:VAR MV5979 :ISA DRUG :RAW-TEXT "NG25" :NAME "NG-25" :UID "PCID:53340664")
 (:VAR MV5980 :ISA PROTEIN :INFO-CONTEXT MV5987 :HAS-DETERMINER "THE" :RAW-TEXT
  "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5987 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
661: "Does NG25 decrease CXCL10 in the model?"

                    SOURCE-START
e19   DECREASE      1 "Does NG25 decrease CXCL10 in the model" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease CXCL10 in the model?"
 (:VAR MV6001 :ISA POLAR-QUESTION :STATEMENT MV5999)
 (:VAR MV5999 :ISA DECREASE :AGENT MV5991 :OBJECT MV5992 :RAW-TEXT "decrease")
 (:VAR MV5991 :ISA DRUG :RAW-TEXT "NG25" :NAME "NG-25" :UID "PCID:53340664")
 (:VAR MV5992 :ISA PROTEIN :INFO-CONTEXT MV5998 :RAW-TEXT "CXCL10" :UID
  "UP:P02778" :NAME "CXL10_HUMAN")
 (:VAR MV5998 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
662: "TNF activates NFkappaB"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "TNF activates NFkappaB" 4
                    END-OF-SOURCE
("TNF activates NFkappaB"
 (:VAR MV6003 :ISA BIO-ACTIVATE :AGENT MV6002 :OBJECT MV6004 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6002 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV6004 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
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
 (:VAR MV6010 :ISA WANT :AGENT MV6007 :THEME MV6021 :PRESENT "PRESENT")
 (:VAR MV6007 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6021 :ISA FIND-OUT :AGENT MV6007 :STATEMENT MV6018)
 (:VAR MV6018 :ISA WH-QUESTION :STATEMENT MV6017 :VAR NIL :WH HOW)
 (:VAR MV6017 :ISA DECREASE :AGENT MV6016 :OBJECT MV6006 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6016 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tasocitinib" :UID
  "NCIT:C95800")
 (:VAR MV6006 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
664: "I want to find out how Selumetinib decreases FOS in BT20 cells"

                    SOURCE-START
e29   WANT          1 "I want to find out how Selumetinib decreases FOS in BT20 cells" 14
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in BT20 cells"
 (:VAR MV6026 :ISA WANT :AGENT MV6023 :THEME MV6041 :PRESENT "PRESENT")
 (:VAR MV6023 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6041 :ISA FIND-OUT :AGENT MV6023 :STATEMENT MV6038)
 (:VAR MV6038 :ISA WH-QUESTION :STATEMENT MV6033 :VAR NIL :WH HOW)
 (:VAR MV6033 :ISA DECREASE :AGENT MV6032 :OBJECT MV6034 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6032 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV6034 :ISA PROTEIN :CELL-TYPE MV6036 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV6036 :ISA CELL-TYPE :CELL-LINE MV6022)
 (:VAR MV6022 :ISA CELL-LINE :NAME "BT-20" :UID "CVCL:0178"))

___________________
665: "I want to find out how ERBB3 activates JUN in SKBR3 cells"

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells"
 (:VAR MV6047 :ISA WANT :AGENT MV6044 :THEME MV6061 :PRESENT "PRESENT")
 (:VAR MV6044 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6061 :ISA FIND-OUT :AGENT MV6044 :STATEMENT MV6058)
 (:VAR MV6058 :ISA WH-QUESTION :STATEMENT MV6053 :VAR NIL :WH HOW)
 (:VAR MV6053 :ISA BIO-ACTIVATE :AGENT MV6042 :OBJECT MV6054 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6042 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME
  "ERBB3_HUMAN")
 (:VAR MV6054 :ISA PROTEIN :CELL-TYPE MV6056 :RAW-TEXT "JUN" :UID "UP:P05412"
  :NAME "JUN_HUMAN")
 (:VAR MV6056 :ISA CELL-TYPE :CELL-LINE MV6043)
 (:VAR MV6043 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
666: "Does MEK phosphorylate ERK?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "Does MEK phosphorylate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MEK phosphorylate ERK?"
 (:VAR MV6067 :ISA POLAR-QUESTION :STATEMENT MV6066)
 (:VAR MV6066 :ISA PHOSPHORYLATE :AGENT MV6063 :SUBSTRATE MV6065 :RAW-TEXT
  "phosphorylate")
 (:VAR MV6063 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6065 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV6075 :ISA POLAR-QUESTION :STATEMENT MV6074)
 (:VAR MV6074 :ISA INHIBIT :AGENT MV6068 :OBJECT MV6073 :RAW-TEXT "inhibit")
 (:VAR MV6068 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6073 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6069 :RAW-TEXT
  "gene")
 (:VAR MV6069 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
668: "Does STAT3 stimulate the c-fos gene?"

                    SOURCE-START
e15   STIMULATE     1 "Does STAT3 stimulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 stimulate the c-fos gene?"
 (:VAR MV6083 :ISA POLAR-QUESTION :STATEMENT MV6082)
 (:VAR MV6082 :ISA STIMULATE :AGENT MV6076 :OBJECT MV6081 :RAW-TEXT
  "stimulate")
 (:VAR MV6076 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6081 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6077 :RAW-TEXT
  "gene")
 (:VAR MV6077 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
669: "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."

                    SOURCE-START
e31   WANT          1 "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells" 16
                    PERIOD
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
 (:VAR MV6088 :ISA WANT :AGENT MV6085 :THEME MV6104 :PRESENT "PRESENT")
 (:VAR MV6085 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6104 :ISA FIND-OUT :AGENT MV6085 :STATEMENT MV6101)
 (:VAR MV6101 :ISA WH-QUESTION :STATEMENT MV6095 :VAR NIL :WH HOW)
 (:VAR MV6095 :ISA DECREASE :AGENT MV6094 :OBJECT MV6096 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6094 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV6096 :ISA PROTEIN :CELL-TYPE MV6099 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV6099 :ISA CELL-TYPE :CELL-LINE MV6084 :CONTEXT-OR-ASSOCIATED-DISEASE
  MV6098)
 (:VAR MV6084 :ISA CELL-LINE :NAME "SK-MEL-133" :UID "CVCL:6082")
 (:VAR MV6098 :ISA MELANOMA))

___________________
670: "Is ERK a transcription factor?"

                    SOURCE-START
e9    BE            1 "Is ERK a transcription factor" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK a transcription factor?"
 (:VAR MV6109 :ISA POLAR-QUESTION :STATEMENT MV6106)
 (:VAR MV6106 :ISA BE :SUBJECT MV6107 :PREDICATE MV6105)
 (:VAR MV6107 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6105 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
671: "List all the genes regulated by elk1 and srf."

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    PERIOD
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf."
 (:VAR MV6111 :ISA LIST :THEME MV6114 :PRESENT "PRESENT")
 (:VAR MV6114 :ISA GENE :PREDICATION MV6115 :QUANTIFIER MV6112 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6115 :ISA REGULATE :OBJECT MV6114 :AGENT MV6119 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6119 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6110 MV6118))
 (:VAR MV6110 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6118 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6112 :ISA ALL :WORD "all"))

___________________
672: "List some of the genes regulated by elk1 and srf."

                    SOURCE-START
e20   LIST          1 "List some of the genes regulated by elk1 and srf" 12
                    PERIOD
                    END-OF-SOURCE
("List some of the genes regulated by elk1 and srf."
 (:VAR MV6122 :ISA LIST :THEME MV6126 :PRESENT "PRESENT")
 (:VAR MV6126 :ISA GENE :PREDICATION MV6127 :QUANTIFIER MV6123 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6127 :ISA REGULATE :OBJECT MV6126 :AGENT MV6131 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6131 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6121 MV6130))
 (:VAR MV6121 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6130 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6123 :ISA SOME :WORD "some"))

___________________
673: "Show me the  mutations of TP53 and BRAF in ovarian cancer."

                    SOURCE-START
e22   SHOW          1 "Show me the  mutations of TP53 and BRAF in ovarian cancer" 13
                    PERIOD
                    END-OF-SOURCE
("Show me the  mutations of TP53 and BRAF in ovarian cancer."
 (:VAR MV6137 :ISA SHOW :STATEMENT-OR-THEME MV6140 :BENEFICIARY MV6138 :PRESENT
  "PRESENT")
 (:VAR MV6140 :ISA MUTATION :OBJECT MV6145 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6145 :ISA COLLECTION :CONTEXT MV6136 :RAW-TEXT "TP53 and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV6135 MV6143))
 (:VAR MV6136 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6135 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6143 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6138 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
674: "What are the mutations of TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutations of TP53 and BRAF in ovarian cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of TP53 and BRAF in ovarian cancer?"
 (:VAR MV6151 :ISA BE :SUBJECT MV6150 :PREDICATE MV6153 :PRESENT "PRESENT")
 (:VAR MV6150 :ISA WHAT)
 (:VAR MV6153 :ISA MUTATION :OBJECT MV6158 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6158 :ISA COLLECTION :CONTEXT MV6149 :RAW-TEXT "TP53 and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV6148 MV6156))
 (:VAR MV6149 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6148 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6156 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
675: "What are the mutually exclusive genes with CDH1 for breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with CDH1 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with CDH1 for breast cancer?"
 (:VAR MV6165 :ISA BE :SUBJECT MV6164 :PREDICATE MV6172 :PRESENT "PRESENT")
 (:VAR MV6164 :ISA WHAT)
 (:VAR MV6172 :ISA GENE :DISEASE MV6163 :HAS-DETERMINER "THE" :PREDICATION
  MV6161 :RAW-TEXT "genes")
 (:VAR MV6163 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV6161 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6162)
 (:VAR MV6162 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN"))

___________________
676: "What are the mutually exclusive genes with CDH1 in breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with CDH1 in breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with CDH1 in breast cancer?"
 (:VAR MV6177 :ISA BE :SUBJECT MV6176 :PREDICATE MV6184 :PRESENT "PRESENT")
 (:VAR MV6176 :ISA WHAT)
 (:VAR MV6184 :ISA GENE :HAS-DETERMINER "THE" :PREDICATION MV6173 :RAW-TEXT
  "genes")
 (:VAR MV6173 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6174)
 (:VAR MV6174 :ISA PROTEIN :CONTEXT MV6175 :RAW-TEXT "CDH1" :UID "UP:P12830"
  :NAME "CADH1_HUMAN")
 (:VAR MV6175 :ISA CANCER :NAME "breast cancer" :UID "TS-0591"))

___________________
677: "What downregulates it?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates it" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates it?"
 (:VAR MV6186 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV6185
  :AFFECTED-PROCESS-OR-OBJECT MV6187 :PRESENT "PRESENT" :RAW-TEXT
  "downregulates")
 (:VAR MV6185 :ISA WHAT) (:VAR MV6187 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
678: "What genes have strong evidence of being regulated by mir-122-5p?"

                    SOURCE-START
e21   HAVE          1 "What genes have strong evidence of being regulated by mir-122-5p" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes have strong evidence of being regulated by mir-122-5p?"
 (:VAR MV6191 :ISA HAVE :POSSESSOR MV6190 :THING-POSSESSED MV6193 :PRESENT
  "PRESENT")
 (:VAR MV6190 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6193 :ISA EVIDENCE :FACT MV6196 :PREDICATION MV6192)
 (:VAR MV6196 :ISA REGULATE :AGENT MV6188 :PROGRESSIVE MV6195 :RAW-TEXT
  "regulated")
 (:VAR MV6188 :ISA MICRO-RNA :RAW-TEXT "mir-122-5p" :NAME "microRNA 122-5p"
  :UID "MIMAT0000421")
 (:VAR MV6195 :ISA BE) (:VAR MV6192 :ISA STRONG))

___________________
679: "What increases the amount of myc"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    END-OF-SOURCE
("What increases the amount of myc"
 (:VAR MV6202 :ISA INCREASE :AGENT-OR-CAUSE MV6200 :AFFECTED-PROCESS-OR-OBJECT
  MV6204 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV6200 :ISA WHAT)
 (:VAR MV6204 :ISA BIO-AMOUNT :MEASURED-ITEM MV6206 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV6206 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
680: "What inhibits fzd8?"

                    SOURCE-START
e5    INHIBIT       1 "What inhibits fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits fzd8?"
 (:VAR MV6210 :ISA INHIBIT :AGENT-OR-CAUSE MV6209 :OBJECT MV6208 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV6209 :ISA WHAT)
 (:VAR MV6208 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
681: "What is the most likely cellular location of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e26   BE            1 "What is the most likely cellular location of AKT1, BRAF and MAPK1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
 (:VAR MV6214 :ISA BE :SUBJECT MV6213 :PREDICATE MV6226 :PRESENT "PRESENT")
 (:VAR MV6213 :ISA WHAT)
 (:VAR MV6226 :ISA QUALITY-PREDICATE :ITEM MV6224 :ATTRIBUTE MV6220)
 (:VAR MV6224 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6211 MV6222 MV6212))
 (:VAR MV6211 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6222 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6212 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6220 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6218
  :MODIFIER MV6219)
 (:VAR MV6218 :ISA LIKELY :COMPARATIVE MV6216)
 (:VAR MV6216 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6219 :ISA CELLULAR :NAME "cellular"))

___________________
682: "What is the most likely cellular location of AKT1?"

                    SOURCE-START
e20   BE            1 "What is the most likely cellular location of AKT1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1?"
 (:VAR MV6229 :ISA BE :SUBJECT MV6228 :PREDICATE MV6238 :PRESENT "PRESENT")
 (:VAR MV6228 :ISA WHAT)
 (:VAR MV6238 :ISA QUALITY-PREDICATE :ITEM MV6227 :ATTRIBUTE MV6235)
 (:VAR MV6227 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6235 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6233
  :MODIFIER MV6234)
 (:VAR MV6233 :ISA LIKELY :COMPARATIVE MV6231)
 (:VAR MV6231 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6234 :ISA CELLULAR :NAME "cellular"))

___________________
683: "What is the mutation significance of TP53 in lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in lung cancer?"
 (:VAR MV6242 :ISA BE :SUBJECT MV6241 :PREDICATE MV6245 :PRESENT "PRESENT")
 (:VAR MV6241 :ISA WHAT)
 (:VAR MV6245 :ISA SIGNIFICANCE :AGENT MV6239 :HAS-DETERMINER "THE" :MODIFIER
  MV6244)
 (:VAR MV6239 :ISA PROTEIN :CONTEXT MV6240 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV6240 :ISA CANCER :NAME "lung cancer" :UID "TS-0571")
 (:VAR MV6244 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
684: "Which of those are regulated by tp53?"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by tp53" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are regulated by tp53?"
 (:VAR MV6257 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6253 :AGENT MV6250
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV6253 :ISA THOSE :QUANTIFIER MV6251 :WORD "those")
 (:VAR MV6251 :ISA WHICH)
 (:VAR MV6250 :ISA PROTEIN :RAW-TEXT "tp53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
685: "Which of those genes are in the MAPK signaling pathway?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Which of those genes are in the MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those genes are in the MAPK signaling pathway?"
 (:VAR MV6273 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6264 :VALUE MV6272 :PREP
  "IN" :PREDICATE MV6265)
 (:VAR MV6264 :ISA GENE :QUANTIFIER MV6261 :HAS-DETERMINER "THOSE" :RAW-TEXT
  "genes")
 (:VAR MV6261 :ISA WHICH)
 (:VAR MV6272 :ISA GENE :CONTEXT MV6260 :QUANTIFIER MV6261 :HAS-DETERMINER
  "THOSE" :RAW-TEXT "genes")
 (:VAR MV6260 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV6268
  :RAW-TEXT "signaling pathway")
 (:VAR MV6268 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV6265 :ISA BE :PRESENT "PRESENT"))

___________________
686: "Which of these are in the il-12 pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which of these are in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in the il-12 pathway?"
 (:VAR MV6284 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6278 :VALUE MV6282 :PREP
  MV6280 :PREDICATE MV6279)
 (:VAR MV6278 :ISA THESE :QUANTIFIER MV6276 :WORD "these")
 (:VAR MV6276 :ISA WHICH)
 (:VAR MV6282 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV6275 :RAW-TEXT
  "pathway")
 (:VAR MV6275 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV6280 :ISA IN :WORD "in") (:VAR MV6279 :ISA BE :PRESENT "PRESENT"))

___________________
687: "Which of them are expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of them are expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of them are expressed in liver?"
 (:VAR MV6293 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV6288 :ORGAN MV6292
  :PRESENT "PRESENT" :RAW-TEXT "expressed")
 (:VAR MV6288 :ISA PRONOUN/PLURAL :QUANTIFIER MV6286 :WORD "them")
 (:VAR MV6286 :ISA WHICH) (:VAR MV6292 :ISA LIVER))

___________________
688: "Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"

                    SOURCE-START
e23   REGULATE      1 "Which of them are most frequently regulated by miR-335-5p and miR-155-5p" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
 (:VAR MV6308 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6300 :AGENT MV6307
  :PRESENT "PRESENT" :SUPERLATIVE MV6302 :ADVERB MV6303 :RAW-TEXT "regulated")
 (:VAR MV6300 :ISA PRONOUN/PLURAL :QUANTIFIER MV6298 :WORD "them")
 (:VAR MV6298 :ISA WHICH)
 (:VAR MV6307 :ISA COLLECTION :RAW-TEXT "miR-335-5p and miR-155-5p" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV6296 MV6297))
 (:VAR MV6296 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV6297 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV6302 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6303 :ISA FREQUENTLY :NAME "frequently"))

___________________
689: "What transcription factors target SMURF2?"

                    SOURCE-START
e9    TARGET        1 "What transcription factors target SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors target SMURF2?"
 (:VAR MV6315 :ISA TARGET :AGENT MV6311 :OBJECT MV6312 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV6311 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV6312 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
690: "Which of those target frizzled8?"

                    SOURCE-START
e11   TARGET        1 "Which of those target frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those target frizzled8?"
 (:VAR MV6321 :ISA TARGET :AGENT-OR-CAUSE MV6319 :OBJECT MV6316 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV6319 :ISA THOSE :QUANTIFIER MV6317 :WORD "those")
 (:VAR MV6317 :ISA WHICH)
 (:VAR MV6316 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
691: "What is Selumetinib?"

                    SOURCE-START
e4    BE            1 "What is Selumetinib" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is Selumetinib?"
 (:VAR MV6324 :ISA BE :SUBJECT MV6323 :PREDICATE MV6325 :PRESENT "PRESENT")
 (:VAR MV6323 :ISA WHAT)
 (:VAR MV6325 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
692: "What is MAPK3?"

                    SOURCE-START
e5    BE            1 "What is MAPK3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is MAPK3?"
 (:VAR MV6328 :ISA BE :SUBJECT MV6327 :PREDICATE MV6326 :PRESENT "PRESENT")
 (:VAR MV6327 :ISA WHAT)
 (:VAR MV6326 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
693: "What does it do?"

                    SOURCE-START
e6    DO            1 "What does it do" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it do?" (:VAR MV6334 :ISA DO :PATIENT MV6329 :PRESENT "PRESENT")
 (:VAR MV6329 :ISA WHAT))

___________________
694: "Is there an inhibitor of ERK1?"

                    SOURCE-START
e15   THERE-EXISTS  1 "Is there an inhibitor of ERK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an inhibitor of ERK1?"
 (:VAR MV6344 :ISA POLAR-QUESTION :STATEMENT MV6342)
 (:VAR MV6342 :ISA THERE-EXISTS :VALUE MV6340 :PREDICATE MV6337)
 (:VAR MV6340 :ISA INHIBITOR :PROTEIN MV6335 :HAS-DETERMINER "AN" :RAW-TEXT
  "inhibitor")
 (:VAR MV6335 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN")
 (:VAR MV6337 :ISA SYNTACTIC-THERE))

___________________
695: "Name some drugs that inhibit AKT1."

                    SOURCE-START
e15   NAME-SOMETHING  1 "Name some drugs that inhibit AKT1" 8
                    PERIOD
                    END-OF-SOURCE
("Name some drugs that inhibit AKT1."
 (:VAR MV6346 :ISA NAME-SOMETHING :PATIENT MV6350 :PRESENT "PRESENT")
 (:VAR MV6350 :ISA DRUG :PREDICATION MV6352 :QUANTIFIER MV6349 :RAW-TEXT
  "drugs")
 (:VAR MV6352 :ISA INHIBIT :AGENT MV6350 :THAT-REL T :OBJECT MV6345 :PRESENT
  "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV6345 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6349 :ISA SOME :WORD "some"))

___________________
696: "Are there any Map2K1 inhibitors?"

                    SOURCE-START
e16   THERE-EXISTS  1 "Are there any Map2K1 inhibitors" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any Map2K1 inhibitors?"
 (:VAR MV6364 :ISA POLAR-QUESTION :STATEMENT MV6363)
 (:VAR MV6363 :ISA THERE-EXISTS :VALUE MV6361 :PREDICATE MV6355)
 (:VAR MV6361 :ISA INHIBITOR :QUANTIFIER MV6357 :PROTEIN MV6362 :RAW-TEXT
  "inhibitors")
 (:VAR MV6357 :ISA ANY :WORD "any")
 (:VAR MV6362 :ISA PROTEIN :RAW-TEXT "Map2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV6355 :ISA SYNTACTIC-THERE))

___________________
697: "Are there targets of Selumetinib?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there targets of Selumetinib" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there targets of Selumetinib?"
 (:VAR MV6374 :ISA POLAR-QUESTION :STATEMENT MV6372)
 (:VAR MV6372 :ISA THERE-EXISTS :VALUE MV6368 :PREDICATE MV6366)
 (:VAR MV6368 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV6371 :RAW-TEXT "targets")
 (:VAR MV6371 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV6366 :ISA SYNTACTIC-THERE))

___________________
698: "What does Selumetinib inhibit?"

                    SOURCE-START
e5    INHIBIT       1 "What does Selumetinib inhibit" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib inhibit?"
 (:VAR MV6378 :ISA INHIBIT :OBJECT MV6375 :AGENT MV6377 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV6375 :ISA WHAT)
 (:VAR MV6377 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
699: "What does Selumetinib target?"

                    SOURCE-START
e6    TARGET        1 "What does Selumetinib target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib target?"
 (:VAR MV6383 :ISA TARGET :OBJECT MV6379 :AGENT MV6381 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV6379 :ISA WHAT)
 (:VAR MV6381 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
700: "Does Vemurafenib target BRAF?"

                    SOURCE-START
e9    TARGET        1 "Does Vemurafenib target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib target BRAF?"
 (:VAR MV6390 :ISA POLAR-QUESTION :STATEMENT MV6389)
 (:VAR MV6389 :ISA TARGET :AGENT MV6385 :OBJECT MV6388 :RAW-TEXT "target")
 (:VAR MV6385 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV6388 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
701: "What are some targets for treating pancreatic cancer?"

                    SOURCE-START
e15   BE            1 "What are some targets for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for treating pancreatic cancer?"
 (:VAR MV6393 :ISA BE :SUBJECT MV6392 :PREDICATE MV6395 :PRESENT "PRESENT")
 (:VAR MV6392 :ISA WHAT)
 (:VAR MV6395 :ISA TARGET-PROTEIN :QUANTIFIER MV6394 :TREATMENT MV6398
  :RAW-TEXT "targets")
 (:VAR MV6394 :ISA SOME :WORD "some")
 (:VAR MV6398 :ISA TREATMENT :DISEASE MV6391 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "treating")
 (:VAR MV6391 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
702: "What are some targets for pancreatic cancer?"

                    SOURCE-START
e13   BE            1 "What are some targets for pancreatic cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for pancreatic cancer?"
 (:VAR MV6402 :ISA BE :SUBJECT MV6401 :PREDICATE MV6404 :PRESENT "PRESENT")
 (:VAR MV6401 :ISA WHAT)
 (:VAR MV6404 :ISA TARGET-PROTEIN :QUANTIFIER MV6403 :DISEASE MV6400 :RAW-TEXT
  "targets")
 (:VAR MV6403 :ISA SOME :WORD "some")
 (:VAR MV6400 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
703: "What targets could lead to the development of pancreatic cancer?"

                    SOURCE-START
e21   LEAD          1 "What targets could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What targets could lead to the development of pancreatic cancer?"
 (:VAR MV6413 :ISA LEAD :AGENT MV6410 :THEME MV6416 :MODAL MV6412 :RAW-TEXT
  "lead")
 (:VAR MV6410 :ISA TARGET-PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "targets")
 (:VAR MV6416 :ISA DEVELOPMENT :DISEASE MV6408 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV6408 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6412 :ISA COULD))

___________________
704: "What proteins could lead to the development of pancreatic cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins could lead to the development of pancreatic cancer?"
 (:VAR MV6424 :ISA LEAD :AGENT MV6422 :THEME MV6427 :MODAL MV6423 :RAW-TEXT
  "lead")
 (:VAR MV6422 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV6427 :ISA DEVELOPMENT :DISEASE MV6420 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV6420 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6423 :ISA COULD))

___________________
705: "What mutated genes could lead to pancreatic cancer?"

                    SOURCE-START
e15   LEAD          1 "What mutated genes could lead to pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What mutated genes could lead to pancreatic cancer?"
 (:VAR MV6436 :ISA LEAD :AGENT MV6434 :THEME MV6431 :MODAL MV6435 :RAW-TEXT
  "lead")
 (:VAR MV6434 :ISA GENE :HAS-DETERMINER "WHAT" :PREDICATION MV6433 :RAW-TEXT
  "genes")
 (:VAR MV6433 :ISA MUTATION :OBJECT MV6434 :RAW-TEXT "mutated")
 (:VAR MV6431 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6435 :ISA COULD))

___________________
706: "What is the top gene mutation that leads to pancreatic cancer?"

                    SOURCE-START
e23   BE            1 "What is the top gene mutation that leads to pancreatic cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the top gene mutation that leads to pancreatic cancer?"
 (:VAR MV6441 :ISA BE :SUBJECT MV6440 :PREDICATE MV6445 :PRESENT "PRESENT")
 (:VAR MV6440 :ISA WHAT)
 (:VAR MV6445 :ISA MUTATION :OBJECT MV6444 :PREDICATION MV6447 :HAS-DETERMINER
  "THE" :MODIFIER MV6443 :AGENT-OR-OBJECT MV6444 :RAW-TEXT "mutation")
 (:VAR MV6444 :ISA GENE :RAW-TEXT "gene")
 (:VAR MV6447 :ISA LEAD :AGENT MV6445 :THAT-REL T :THEME MV6439 :PRESENT
  "PRESENT" :RAW-TEXT "leads")
 (:VAR MV6439 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6443 :ISA TOP-QUA-LOCATION))

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
 (:VAR MV6477 :ISA BIO-USE :PATIENT MV6467 :MODAL MV6468 :AGENT MV6469 :THEME
  MV6476 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV6467 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV6468 :ISA COULD) (:VAR MV6469 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6476 :ISA TREATMENT :DISEASE MV6465 :RAW-TEXT "treat")
 (:VAR MV6465 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
709: "What are some drugs for treating pancreatic cancer?"

                    SOURCE-START
e14   BE            1 "What are some drugs for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs for treating pancreatic cancer?"
 (:VAR MV6480 :ISA BE :SUBJECT MV6479 :PREDICATE MV6482 :PRESENT "PRESENT")
 (:VAR MV6479 :ISA WHAT)
 (:VAR MV6482 :ISA DRUG :TREATMENT MV6484 :QUANTIFIER MV6481 :RAW-TEXT "drugs")
 (:VAR MV6484 :ISA TREATMENT :DISEASE MV6478 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "treating")
 (:VAR MV6478 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6481 :ISA SOME :WORD "some"))

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
("Does MEK act on ERK?" (:VAR MV6513 :ISA POLAR-QUESTION :STATEMENT MV6511)
 (:VAR MV6511 :ISA BIO-ACT :AGENT MV6507 :ACTED-ON MV6510 :RAW-TEXT "act")
 (:VAR MV6507 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6510 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV6518 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6515 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6515 :ISA BUILD :ARTIFACT MV6517 :PRESENT "PRESENT")
 (:VAR MV6517 :ISA MODEL :HAS-DETERMINER "A"))

___________________
714: "Mek activates MAPK3"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "Mek activates MAPK3" 5
                    END-OF-SOURCE
("Mek activates MAPK3"
 (:VAR MV6521 :ISA BIO-ACTIVATE :AGENT MV6520 :OBJECT MV6519 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6520 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6519 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
715: "HRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "HRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("HRAS activates RAF."
 (:VAR MV6523 :ISA BIO-ACTIVATE :AGENT MV6522 :OBJECT MV6524 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6522 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV6524 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
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
 (:VAR MV6525 :ISA REMOVE :OBJECT MV6532 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV6532 :ISA FACT :STATEMENT MV6530 :HAS-DETERMINER "THE")
 (:VAR MV6530 :ISA BIO-ACTIVATE :AGENT MV6529 :OBJECT MV6531 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6529 :ISA PROTEIN :RAW-TEXT "hras" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV6531 :ISA PROTEIN-FAMILY :RAW-TEXT "ras" :NAME "Ras" :COUNT 3
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
 (:VAR MV6544 :ISA POLAR-QUESTION :STATEMENT MV6535)
 (:VAR MV6535 :ISA TELL :AGENT MV6534 :THEME MV6543 :THEME MV6536 :MODAL "CAN")
 (:VAR MV6534 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV6543 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6537 :VALUE MV6541 :PREP
  MV6539 :PREDICATE MV6538)
 (:VAR MV6537 :ISA WHAT) (:VAR MV6541 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV6539 :ISA IN :WORD "in") (:VAR MV6538 :ISA BE :MODAL "CAN")
 (:VAR MV6536 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
718: "Summarize the model."

                    SOURCE-START
e5    SUMMARIZE     1 "Summarize the model" 4
                    PERIOD
                    END-OF-SOURCE
("Summarize the model."
 (:VAR MV6548 :ISA SUMMARIZE :STATEMENT MV6547 :PRESENT "PRESENT")
 (:VAR MV6547 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
719: "Summarize the current model."

                    SOURCE-START
e7    SUMMARIZE     1 "Summarize the current model" 5
                    PERIOD
                    END-OF-SOURCE
("Summarize the current model."
 (:VAR MV6553 :ISA SUMMARIZE :STATEMENT MV6552 :PRESENT "PRESENT")
 (:VAR MV6552 :ISA MODEL :HAS-DETERMINER "THE" :PREDICATION MV6551)
 (:VAR MV6551 :ISA CURRENT))

___________________
720: "What phosphorylates BRAF?"

                    SOURCE-START
e4    PHOSPHORYLATE 1 "What phosphorylates BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What phosphorylates BRAF?"
 (:VAR MV6555 :ISA PHOSPHORYLATE :AGENT-OR-CAUSE MV6554 :SUBSTRATE MV6556
  :PRESENT "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6554 :ISA WHAT)
 (:VAR MV6556 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
721: "Vemurafenib binds BRAF."

                    SOURCE-START
e4    BINDING       1 "Vemurafenib binds BRAF" 4
                    PERIOD
                    END-OF-SOURCE
("Vemurafenib binds BRAF."
 (:VAR MV6558 :ISA BINDING :BINDER MV6557 :DIRECT-BINDEE MV6559 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV6557 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV6559 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
722: "Phosphorylated MAP2K1 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated MAP2K1 is activated" 8
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAP2K1 is activated."
 (:VAR MV6564 :ISA BIO-ACTIVATE :OBJECT MV6560 :PRESENT "PRESENT" :RAW-TEXT
  "activated")
 (:VAR MV6560 :ISA PROTEIN :PREDICATION MV6561 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6561 :ISA PHOSPHORYLATE :SUBSTRATE MV6560 :RAW-TEXT "Phosphorylated"))

___________________
723: "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2" 18
                    PERIOD
                    END-OF-SOURCE
("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
 (:VAR MV6568 :ISA DEPHOSPHORYLATE :AGENT MV6565 :SUBSTRATE MV6566 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV6565 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME
  "PP2AA_HUMAN")
 (:VAR MV6566 :ISA PROTEIN :PREDICATION MV6574 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6574 :ISA BINDING :DIRECT-BINDEE MV6566 :THAT-REL T :BINDEE MV6567
  :PRESENT "PRESENT" :NEGATION MV6571 :RAW-TEXT "bound")
 (:VAR MV6567 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6571 :ISA NOT :WORD "not"))

___________________
724: "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."

                    SOURCE-START
e24   PHOSPHORYLATE 1 "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2" 19
                    PERIOD
                    END-OF-SOURCE
("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
 (:VAR MV6585 :ISA PHOSPHORYLATE :AGENT MV6576 :SUBSTRATE MV6578 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6576 :ISA PROTEIN :PREDICATION MV6586 :PREDICATION MV6579 :RAW-TEXT
  "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6586 :ISA BINDING :DIRECT-BINDEE MV6576 :THAT-REL T :BINDEE MV6577
  :PRESENT "PRESENT" :NEGATION MV6582 :RAW-TEXT "bound")
 (:VAR MV6577 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME
  "PP2AA_HUMAN")
 (:VAR MV6582 :ISA NOT :WORD "not") (:VAR MV6579 :ISA ACTIVE)
 (:VAR MV6578 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
725: "Phosphorylated ERK2 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated ERK2 is activated" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK2 is activated."
 (:VAR MV6592 :ISA BIO-ACTIVATE :OBJECT MV6588 :PRESENT "PRESENT" :RAW-TEXT
  "activated")
 (:VAR MV6588 :ISA PROTEIN :PREDICATION MV6589 :RAW-TEXT "ERK2" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6589 :ISA PHOSPHORYLATE :SUBSTRATE MV6588 :RAW-TEXT "Phosphorylated"))

___________________
726: "DUSP6 dephosphorylates ERK2 that is not bound to SOS1."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates ERK2 that is not bound to SOS1" 13
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
 (:VAR MV6596 :ISA DEPHOSPHORYLATE :AGENT MV6593 :SUBSTRATE MV6594 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV6593 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV6594 :ISA PROTEIN :PREDICATION MV6602 :RAW-TEXT "ERK2" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6602 :ISA BINDING :DIRECT-BINDEE MV6594 :THAT-REL T :BINDEE MV6595
  :PRESENT "PRESENT" :NEGATION MV6599 :RAW-TEXT "bound")
 (:VAR MV6595 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME
  "SOS1_HUMAN")
 (:VAR MV6599 :ISA NOT :WORD "not"))

___________________
727: "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."

                    SOURCE-START
e28   PHOSPHORYLATE 1 "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1" 16
                    PERIOD
                    END-OF-SOURCE
("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
 (:VAR MV6616 :ISA PHOSPHORYLATE :AGENT MV6605 :SUBSTRATE MV6604 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6605 :ISA PROTEIN :PREDICATION MV6619 :MUTATION MV6618 :RAW-TEXT
  "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV6619 :ISA BINDING :DIRECT-BINDEE MV6605 :THAT-REL T :BINDEE MV6615
  :PRESENT "PRESENT" :NEGATION MV6612 :RAW-TEXT "bound")
 (:VAR MV6615 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV6612 :ISA NOT :WORD "not")
 (:VAR MV6618 :ISA POINT-MUTATED-PROTEIN :POSITION MV6607 :NEW-AMINO-ACID
  MV6609 :ORIGINAL-AMINO-ACID MV6606)
 (:VAR MV6607 :ISA NUMBER :VALUE 600)
 (:VAR MV6609 :ISA AMINO-ACID :NAME "glutamic acid" :LETTER "E")
 (:VAR MV6606 :ISA AMINO-ACID :NAME "valine" :LETTER "V")
 (:VAR MV6604 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
728: "Phosphorylated MAPK1 is active."

                    SOURCE-START
e8    COPULAR-PREDICATION 1 "Phosphorylated MAPK1 is active" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAPK1 is active."
 (:VAR MV6625 :ISA COPULAR-PREDICATION :ITEM MV6621 :VALUE MV6624 :PREDICATE
  MV6623)
 (:VAR MV6621 :ISA PROTEIN :PREDICATION MV6622 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6622 :ISA PHOSPHORYLATE :SUBSTRATE MV6621 :RAW-TEXT "Phosphorylated")
 (:VAR MV6624 :ISA ACTIVE) (:VAR MV6623 :ISA BE :PRESENT "PRESENT"))

___________________
729: "PDK1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "PDK1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("PDK1 phosphorylates AKT1."
 (:VAR MV6628 :ISA PHOSPHORYLATE :AGENT MV6626 :SUBSTRATE MV6627 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6626 :ISA PROTEIN :RAW-TEXT "PDK1" :UID "UP:O15530" :NAME
  "PDPK1_HUMAN")
 (:VAR MV6627 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
730: "Let's move phosphorylated AKT1 to the top"

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 to the top" 11
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 to the top"
 (:VAR MV6637 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6631 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6631 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV6635 :THEME MV6630 :PRESENT
  "PRESENT")
 (:VAR MV6635 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV6630 :ISA PROTEIN :PREDICATION MV6632 :RAW-TEXT "AKT1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6632 :ISA PHOSPHORYLATE :SUBSTRATE MV6630 :RAW-TEXT "phosphorylated"))

___________________
731: "Let's move phosphorylated AKT1 on top"

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 on top" 10
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 on top"
 (:VAR MV6645 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6640 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6640 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV6643 :THEME
  MV6639 :PRESENT "PRESENT")
 (:VAR MV6643 :ISA TOP-QUA-LOCATION)
 (:VAR MV6639 :ISA PROTEIN :PREDICATION MV6641 :RAW-TEXT "AKT1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6641 :ISA PHOSPHORYLATE :SUBSTRATE MV6639 :RAW-TEXT "phosphorylated"))

___________________
732: "show AKT1 on top"

                    SOURCE-START
e8    SHOW          1 "show AKT1 on top" 6
                    END-OF-SOURCE
("show AKT1 on top"
 (:VAR MV6647 :ISA SHOW :AT-RELATIVE-LOCATION MV6649 :STATEMENT-OR-THEME MV6646
  :PRESENT "PRESENT")
 (:VAR MV6649 :ISA TOP-QUA-LOCATION)
 (:VAR MV6646 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
733: "Let's highlight upstream of AKT1"

                    SOURCE-START
e12   EXPLICIT-SUGGESTION 1 "Let's highlight upstream of AKT1" 9
                    END-OF-SOURCE
("Let's highlight upstream of AKT1"
 (:VAR MV6658 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6653 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6653 :ISA HIGHLIGHT :THEME MV6654 :PRESENT "PRESENT")
 (:VAR MV6654 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV6652 :RAW-TEXT
  "upstream")
 (:VAR MV6652 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
734: "Let's move nucleus elements to the top"

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's move nucleus elements to the top" 10
                    END-OF-SOURCE
("Let's move nucleus elements to the top"
 (:VAR MV6667 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6660 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6660 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV6665 :THEME MV6662 :PRESENT
  "PRESENT")
 (:VAR MV6665 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV6662 :ISA ELEMENT :MODIFIER MV6661)
 (:VAR MV6661 :ISA NUCLEUS :RAW-TEXT "nucleus"))

___________________
735: "What are the common downstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common downstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common downstreams of AKT1 and  BRAF?"
 (:VAR MV6670 :ISA BE :SUBJECT MV6669 :PREDICATE MV6673 :PRESENT "PRESENT")
 (:VAR MV6669 :ISA WHAT)
 (:VAR MV6673 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV6677 :HAS-DETERMINER
  "THE" :PREDICATION MV6672 :RAW-TEXT "downstreams")
 (:VAR MV6677 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV6668 MV6676))
 (:VAR MV6668 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6676 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6672 :ISA COMMON))

___________________
736: "Are there common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e21   THERE-EXISTS  1 "Are there common upstreams of AKT1, BRAF and MAPK1" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV6692 :ISA POLAR-QUESTION :STATEMENT MV6689)
 (:VAR MV6689 :ISA THERE-EXISTS :VALUE MV6685 :PREDICATE MV6682)
 (:VAR MV6685 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV6690 :PREDICATION
  MV6684 :RAW-TEXT "upstreams")
 (:VAR MV6690 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6679 MV6687 MV6680))
 (:VAR MV6679 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6687 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6680 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6684 :ISA COMMON) (:VAR MV6682 :ISA SYNTACTIC-THERE))

___________________
737: "What are the common upstream regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e26   BE            1 "What are the common upstream regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6697 :ISA BE :SUBJECT MV6696 :PREDICATE MV6702 :PRESENT "PRESENT")
 (:VAR MV6696 :ISA WHAT)
 (:VAR MV6702 :ISA REGULATOR :THEME MV6705 :HAS-DETERMINER "THE" :PREDICATION
  MV6699 :CONTEXT MV6700 :RAW-TEXT "regulators")
 (:VAR MV6705 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6693 MV6694 MV6695))
 (:VAR MV6693 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6694 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6695 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6699 :ISA COMMON)
 (:VAR MV6700 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
738: "What are common downstream regulators of MMP3 and SERPINE1?"

                    SOURCE-START
e19   BE            1 "What are common downstream regulators of MMP3 and SERPINE1" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common downstream regulators of MMP3 and SERPINE1?"
 (:VAR MV6710 :ISA BE :SUBJECT MV6709 :PREDICATE MV6714 :PRESENT "PRESENT")
 (:VAR MV6709 :ISA WHAT)
 (:VAR MV6714 :ISA REGULATOR :THEME MV6717 :PREDICATION MV6711 :CONTEXT MV6712
  :RAW-TEXT "regulators")
 (:VAR MV6717 :ISA COLLECTION :RAW-TEXT "MMP3 and SERPINE1" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV6707 MV6708))
 (:VAR MV6707 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6708 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6711 :ISA COMMON)
 (:VAR MV6712 :ISA DOWNSTREAM-SEGMENT :RAW-TEXT "downstream"))

___________________
739: "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e24   BE            1 "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6724 :ISA BE :SUBJECT MV6723 :PREDICATE MV6719 :PRESENT "PRESENT")
 (:VAR MV6723 :ISA WHAT)
 (:VAR MV6719 :ISA PROTEIN-FAMILY :MOLECULE-TYPE MV6730 :PREDICATION MV6725
  :CONTEXT MV6726 :RAW-TEXT "transcriptional regulators" :NAME
  "transcriptional regulator" :UID "XFAM:PF02082")
 (:VAR MV6730 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6720 MV6721 MV6722))
 (:VAR MV6720 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6721 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6722 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6725 :ISA COMMON)
 (:VAR MV6726 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
740: "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e24   BE            1 "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
 (:VAR MV6735 :ISA BE :SUBJECT MV6734 :PREDICATE MV6737 :PRESENT "PRESENT")
 (:VAR MV6734 :ISA WHAT)
 (:VAR MV6737 :ISA MUTATION :OBJECT MV6743 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6743 :ISA COLLECTION :CONTEXT MV6733 :RAW-TEXT "PTEN, TP53 and BRAF"
  :TYPE PROTEIN :NUMBER 3 :ITEMS (MV6739 MV6732 MV6741))
 (:VAR MV6733 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6739 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6732 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6741 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
741: "What is the mutation frequency of TP53 in ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian cancer?"
 (:VAR MV6749 :ISA BE :SUBJECT MV6748 :PREDICATE MV6752 :PRESENT "PRESENT")
 (:VAR MV6748 :ISA WHAT)
 (:VAR MV6752 :ISA FREQUENCY :MEASURED-ITEM MV6746 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV6751 :RAW-TEXT "frequency")
 (:VAR MV6746 :ISA PROTEIN :CONTEXT MV6747 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV6747 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6751 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
742: "Which genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV6767 :ISA COPULAR-PREDICATION :ITEM MV6761 :VALUE MV6757 :PREDICATE
  MV6762)
 (:VAR MV6761 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV6757 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV6759 :ALTERNATIVE MV6758)
 (:VAR MV6759 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV6758 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV6762 :ISA BE :PRESENT "PRESENT"))

___________________
743: "Which genes are mutually exclusive with CDH1 in breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 in breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 in breast cancer?"
 (:VAR MV6778 :ISA COPULAR-PREDICATION :ITEM MV6772 :VALUE MV6768 :PREDICATE
  MV6773)
 (:VAR MV6772 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV6768 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6769)
 (:VAR MV6769 :ISA PROTEIN :CONTEXT MV6770 :RAW-TEXT "CDH1" :UID "UP:P12830"
  :NAME "CADH1_HUMAN")
 (:VAR MV6770 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV6773 :ISA BE :PRESENT "PRESENT"))

___________________
744: "What is the cellular location of akt1?"

                    SOURCE-START
e15   BE            1 "What is the cellular location of akt1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the cellular location of akt1?"
 (:VAR MV6781 :ISA BE :SUBJECT MV6780 :PREDICATE MV6787 :PRESENT "PRESENT")
 (:VAR MV6780 :ISA WHAT)
 (:VAR MV6787 :ISA QUALITY-PREDICATE :ITEM MV6779 :ATTRIBUTE MV6784)
 (:VAR MV6779 :ISA PROTEIN :RAW-TEXT "akt1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6784 :ISA LOCATION-OF :HAS-DETERMINER "THE" :MODIFIER MV6783)
 (:VAR MV6783 :ISA CELLULAR :NAME "cellular"))

___________________
745: "How does MAPK regulate BRAF?"

                    SOURCE-START
e7    REGULATE      1 "How does MAPK regulate BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK regulate BRAF?"
 (:VAR MV6791 :ISA REGULATE :MANNER MV6788 :AGENT MV6790 :OBJECT MV6792
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV6788 :ISA HOW)
 (:VAR MV6790 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV6792 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
746: "What is BRAF?"

                    SOURCE-START
e4    BE            1 "What is BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is BRAF?"
 (:VAR MV6794 :ISA BE :SUBJECT MV6793 :PREDICATE MV6795 :PRESENT "PRESENT")
 (:VAR MV6793 :ISA WHAT)
 (:VAR MV6795 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
747: "Is BRAF a member of the RAF family?"

                    SOURCE-START
e19   BE            1 "Is BRAF a member of the RAF family" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a member of the RAF family?"
 (:VAR MV6807 :ISA POLAR-QUESTION :STATEMENT MV6796)
 (:VAR MV6796 :ISA BE :SUBJECT MV6797 :PREDICATE MV6799)
 (:VAR MV6797 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6799 :ISA MEMBER :SET MV6805 :HAS-DETERMINER "A")
 (:VAR MV6805 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME
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
 (:VAR MV6814 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6809 :VALUE MV6812 :PREP
  MV6811 :PREDICATE MV6810)
 (:VAR MV6809 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6812 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663")
 (:VAR MV6811 :ISA IN :WORD "in") (:VAR MV6810 :ISA BE :PRESENT "PRESENT"))

___________________
749: "What genes are in the RAF family?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What genes are in the RAF family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the RAF family?"
 (:VAR MV6825 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6816 :VALUE MV6823 :PREP
  MV6818 :PREDICATE MV6817)
 (:VAR MV6816 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6823 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME
  "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV6818 :ISA IN :WORD "in") (:VAR MV6817 :ISA BE :PRESENT "PRESENT"))

___________________
750: "What are some other names for BRAF?"

                    SOURCE-START
e15   BE            1 "What are some other names for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some other names for BRAF?"
 (:VAR MV6827 :ISA BE :SUBJECT MV6826 :PREDICATE MV6831 :PRESENT "PRESENT")
 (:VAR MV6826 :ISA WHAT)
 (:VAR MV6831 :ISA HAS-NAME :QUANTIFIER MV6828 :QUANTIFIER MV6829 :ITEM MV6834)
 (:VAR MV6828 :ISA SOME :WORD "some") (:VAR MV6829 :ISA OTHER :WORD "other")
 (:VAR MV6834 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
751: "What are synonyms for ERK?"

                    SOURCE-START
e9    BE            1 "What are synonyms for ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What are synonyms for ERK?"
 (:VAR MV6837 :ISA BE :SUBJECT MV6836 :PREDICATE MV6838 :PRESENT "PRESENT")
 (:VAR MV6836 :ISA WHAT) (:VAR MV6838 :ISA HAS-SYNONYM :ITEM MV6840)
 (:VAR MV6840 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV6852 :ISA SHARE :OBJECT MV6842 :PARTICIPANT MV6851 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV6842 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV6851 :ISA COLLECTION :RAW-TEXT "CXCL8, CXCL10, and IL2" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6843 MV6844 MV6845))
 (:VAR MV6843 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV6844 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV6845 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
753: "What are the paths between BRAF and AKT1?"

                    SOURCE-START
e15   BE            1 "What are the paths between BRAF and AKT1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between BRAF and AKT1?"
 (:VAR MV6856 :ISA BE :SUBJECT MV6855 :PREDICATE MV6858 :PRESENT "PRESENT")
 (:VAR MV6855 :ISA WHAT)
 (:VAR MV6858 :ISA PATH :ENDPOINTS MV6862 :HAS-DETERMINER "THE")
 (:VAR MV6862 :ISA COLLECTION :RAW-TEXT "BRAF and AKT1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6860 MV6854))
 (:VAR MV6860 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6854 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
754: "Is SMAD2 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is SMAD2 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is SMAD2 a transcription factor?"
 (:VAR MV6868 :ISA POLAR-QUESTION :STATEMENT MV6866)
 (:VAR MV6866 :ISA BE :SUBJECT MV6864 :PREDICATE MV6865)
 (:VAR MV6864 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN")
 (:VAR MV6865 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
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
 (:VAR MV6884 :ISA BIO-ACTIVATE :AGENT MV6883 :OBJECT MV6885 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6883 :ISA PROTEIN-FAMILY :PREDICATION MV6882 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6882 :ISA ACTIVE)
 (:VAR MV6885 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV6892 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6886 :VALUE MV6890 :PREP
  MV6888 :PREDICATE MV6887)
 (:VAR MV6886 :ISA WHAT) (:VAR MV6890 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV6888 :ISA IN :WORD "in") (:VAR MV6887 :ISA BE :PRESENT "PRESENT"))

___________________
758: "Is the amount of phosphorylated ERK ever high?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Is the amount of phosphorylated ERK ever high" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated ERK ever high?"
 (:VAR MV6903 :ISA POLAR-QUESTION :STATEMENT MV6902)
 (:VAR MV6902 :ISA COPULAR-PREDICATION :ITEM MV6895 :VALUE MV6900 :PREDICATE
  MV6893)
 (:VAR MV6895 :ISA BIO-AMOUNT :MEASURED-ITEM MV6898 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV6898 :ISA PROTEIN-FAMILY :PREDICATION MV6897 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6897 :ISA PHOSPHORYLATE :SUBSTRATE MV6898 :RAW-TEXT "phosphorylated")
 (:VAR MV6900 :ISA HIGH :ADVERB MV6899) (:VAR MV6899 :ISA EVER :NAME "ever")
 (:VAR MV6893 :ISA BE))

___________________
759: "What genes are mutually exclusive with PTEN for prostate cancer?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "What genes are mutually exclusive with PTEN for prostate cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are mutually exclusive with PTEN for prostate cancer?"
 (:VAR MV6914 :ISA COPULAR-PREDICATION :ITEM MV6907 :VALUE MV6904 :PREDICATE
  MV6908)
 (:VAR MV6907 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6904 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV6905 :ALTERNATIVE MV6910)
 (:VAR MV6905 :ISA CANCER :NAME "prostate cancer" :UID "TS-1224")
 (:VAR MV6910 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6908 :ISA BE :PRESENT "PRESENT"))

___________________
760: "What signaling pathways are shared by SMAD2 and CXCL8?"

                    SOURCE-START
e17   SHARE         1 "What signaling pathways are shared by SMAD2 and CXCL8" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by SMAD2 and CXCL8?"
 (:VAR MV6924 :ISA SHARE :OBJECT MV6915 :PARTICIPANT MV6923 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV6915 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV6923 :ISA COLLECTION :RAW-TEXT "SMAD2 and CXCL8" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV6916 MV6917))
 (:VAR MV6916 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN")
 (:VAR MV6917 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
761: "What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs most frequently regulate FN1, MMP3, and SERPINE1" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
 (:VAR MV6933 :ISA REGULATE :AGENT MV6930 :OBJECT MV6935 :PRESENT "PRESENT"
  :ADVERB MV6931 :ADVERB MV6932 :RAW-TEXT "regulate")
 (:VAR MV6930 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV6935 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6926 MV6927 MV6928))
 (:VAR MV6926 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6927 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6928 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6931 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6932 :ISA FREQUENTLY :NAME "frequently"))

___________________
762: "What is the most likely cellular location of PTEN?"

                    SOURCE-START
e19   BE            1 "What is the most likely cellular location of PTEN" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of PTEN?"
 (:VAR MV6937 :ISA BE :SUBJECT MV6936 :PREDICATE MV6947 :PRESENT "PRESENT")
 (:VAR MV6936 :ISA WHAT)
 (:VAR MV6947 :ISA QUALITY-PREDICATE :ITEM MV6945 :ATTRIBUTE MV6943)
 (:VAR MV6945 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6943 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6941
  :MODIFIER MV6942)
 (:VAR MV6941 :ISA LIKELY :COMPARATIVE MV6939)
 (:VAR MV6939 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6942 :ISA CELLULAR :NAME "cellular"))

___________________
763: "Is BRAF a kinase?"

                    SOURCE-START
e8    BE            1 "Is BRAF a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a kinase?" (:VAR MV6952 :ISA POLAR-QUESTION :STATEMENT MV6948)
 (:VAR MV6948 :ISA BE :SUBJECT MV6949 :PREDICATE MV6951)
 (:VAR MV6949 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6951 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
764: "Can you tell me whether BRAF is a kinase?"

                    SOURCE-START
e22   TELL          1 "Can you tell me whether BRAF is a kinase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me whether BRAF is a kinase?"
 (:VAR MV6964 :ISA POLAR-QUESTION :STATEMENT MV6955)
 (:VAR MV6955 :ISA TELL :AGENT MV6954 :THEME MV6963 :THEME MV6956 :MODAL "CAN")
 (:VAR MV6954 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV6963 :ISA WH-QUESTION :STATEMENT MV6960 :WH WHETHER)
 (:VAR MV6960 :ISA BE :SUBJECT MV6959 :PREDICATE MV6962 :MODAL "CAN")
 (:VAR MV6959 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6962 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase")
 (:VAR MV6956 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
765: "I want to know if BRAF is a kinase."

                    SOURCE-START
e21   WANT          1 "I want to know if BRAF is a kinase" 10
                    PERIOD
                    END-OF-SOURCE
("I want to know if BRAF is a kinase."
 (:VAR MV6968 :ISA WANT :AGENT MV6965 :THEME MV6978 :PRESENT "PRESENT")
 (:VAR MV6965 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6978 :ISA KNOW :AGENT MV6965 :STATEMENT MV6977)
 (:VAR MV6977 :ISA WH-QUESTION :STATEMENT MV6973 :WH IF)
 (:VAR MV6973 :ISA BE :SUBJECT MV6972 :PREDICATE MV6975 :PRESENT "PRESENT")
 (:VAR MV6972 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6975 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

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
 (:VAR MV6987 :ISA BE :SUBJECT MV6984 :PREDICATE MV6988 :PRESENT "PRESENT")
 (:VAR MV6984 :ISA TYPE :MOLECULE-TYPE MV6986 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "type")
 (:VAR MV6986 :ISA PROTEIN :RAW-TEXT "protein")
 (:VAR MV6988 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
768: "What is the activity of the BRAF protein?"

                    SOURCE-START
e17   BE            1 "What is the activity of the BRAF protein" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the activity of the BRAF protein?"
 (:VAR MV6991 :ISA BE :SUBJECT MV6990 :PREDICATE MV6993 :PRESENT "PRESENT")
 (:VAR MV6990 :ISA WHAT)
 (:VAR MV6993 :ISA BIO-ACTIVITY :PARTICIPANT MV6998 :HAS-DETERMINER "THE"
  :RAW-TEXT "activity")
 (:VAR MV6998 :ISA PROTEIN :HAS-DETERMINER "THE" :RAW-TEXT "BRAF" :UID
  "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
769: "Is BRAF a kinase or a transcription factor?"

                    SOURCE-START
e15   BE            1 "Is BRAF a kinase or a transcription factor" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a kinase or a transcription factor?"
 (:VAR MV7008 :ISA POLAR-QUESTION :STATEMENT MV7001)
 (:VAR MV7001 :ISA BE :SUBJECT MV7002 :PREDICATE MV7007)
 (:VAR MV7002 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7007 :ISA COLLECTION :RAW-TEXT "a kinase or a transcription factor"
  :TYPE KINASE :NUMBER 2 :ITEMS (MV7004 MV7000))
 (:VAR MV7004 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase")
 (:VAR MV7000 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
770: "What proteins are targeted by NG25?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by NG25" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by NG25?"
 (:VAR MV7015 :ISA TARGET :OBJECT MV7011 :AGENT MV7009 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV7011 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV7009 :ISA DRUG :RAW-TEXT "NG25" :NAME "NG-25" :UID "PCID:53340664"))

___________________
771: "Name transcription factors shared by FN1, MMP3, and SERPINE1."

                    SOURCE-START
e20   NAME-SOMETHING  1 "Name transcription factors shared by FN1, MMP3, and SERPINE1" 15
                    PERIOD
                    END-OF-SOURCE
("Name transcription factors shared by FN1, MMP3, and SERPINE1."
 (:VAR MV7021 :ISA NAME-SOMETHING :PATIENT MV7017 :PRESENT "PRESENT")
 (:VAR MV7017 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7024 :RAW-TEXT
  "transcription factors")
 (:VAR MV7024 :ISA SHARE :OBJECT MV7017 :PARTICIPANT MV7027 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7027 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV7018 MV7019 MV7020))
 (:VAR MV7018 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV7019 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV7020 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN"))

___________________
772: "Tell me if STAT3 is a transcription factor"

                    SOURCE-START
e15   TELL          1 "Tell me if STAT3 is a transcription factor" 10
                    END-OF-SOURCE
("Tell me if STAT3 is a transcription factor"
 (:VAR MV7031 :ISA TELL :THEME MV7036 :BENEFICIARY MV7032 :PRESENT "PRESENT")
 (:VAR MV7036 :ISA WH-QUESTION :STATEMENT MV7034 :WH IF)
 (:VAR MV7034 :ISA BE :SUBJECT MV7029 :PREDICATE MV7030 :PRESENT "PRESENT")
 (:VAR MV7029 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7030 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor")
 (:VAR MV7032 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
773: "Show me signaling pathways shared by MAP3K7 and CXCL8."

                    SOURCE-START
e18   SHOW          1 "Show me signaling pathways shared by MAP3K7 and CXCL8" 14
                    PERIOD
                    END-OF-SOURCE
("Show me signaling pathways shared by MAP3K7 and CXCL8."
 (:VAR MV7040 :ISA SHOW :STATEMENT-OR-THEME MV7037 :BENEFICIARY MV7041 :PRESENT
  "PRESENT")
 (:VAR MV7037 :ISA SIGNALING-PATHWAY :PREDICATION MV7042 :RAW-TEXT
  "signaling pathways")
 (:VAR MV7042 :ISA SHARE :OBJECT MV7037 :PARTICIPANT MV7045 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7045 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7038 MV7039))
 (:VAR MV7038 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV7039 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7041 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
774: "Give me signaling pathways shared by MAP3K7 and CXCL8"

                    SOURCE-START
e18   GIVE          1 "Give me signaling pathways shared by MAP3K7 and CXCL8" 14
                    END-OF-SOURCE
("Give me signaling pathways shared by MAP3K7 and CXCL8"
 (:VAR MV7050 :ISA GIVE :THEME MV7047 :BENEFICIARY MV7051 :PRESENT "PRESENT")
 (:VAR MV7047 :ISA SIGNALING-PATHWAY :PREDICATION MV7052 :RAW-TEXT
  "signaling pathways")
 (:VAR MV7052 :ISA SHARE :OBJECT MV7047 :PARTICIPANT MV7055 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7055 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7048 MV7049))
 (:VAR MV7048 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV7049 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7051 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
775: "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"

                    SOURCE-START
e47   EVENT-RELATION  1 "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"
 (:VAR MV7086 :ISA POLAR-QUESTION :STATEMENT MV7085)
 (:VAR MV7085 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7081 :EVENT MV7083)
 (:VAR MV7081 :ISA WH-QUESTION :STATEMENT MV7068 :WH IF)
 (:VAR MV7068 :ISA INCREASE :AGENT-OR-CAUSE MV7066 :CAUSE MV7078
  :AFFECTED-PROCESS-OR-OBJECT MV7070 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV7066 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV7078 :ISA MEASUREMENT :NUMBER MV7075)
 (:VAR MV7075 :ISA NUMBER :VALUE 10)
 (:VAR MV7070 :ISA BIO-AMOUNT :MEASURED-ITEM MV7072 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7072 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV7083 :ISA COPULAR-PREDICATION :ITEM MV7059 :VALUE MV7064 :PREDICATE
  MV7057)
 (:VAR MV7059 :ISA BIO-AMOUNT :MEASURED-ITEM MV7062 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7062 :ISA PROTEIN-FAMILY :PREDICATION MV7061 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV7061 :ISA PHOSPHORYLATE :SUBSTRATE MV7062 :RAW-TEXT "phosphorylated")
 (:VAR MV7064 :ISA HIGH :ADVERB MV7063) (:VAR MV7063 :ISA EVER :NAME "ever")
 (:VAR MV7057 :ISA BE))

___________________
776: "Active MEK phosphorylates ERK"

                    SOURCE-START
e6    PHOSPHORYLATE 1 "Active MEK phosphorylates ERK" 5
                    END-OF-SOURCE
("Active MEK phosphorylates ERK"
 (:VAR MV7089 :ISA PHOSPHORYLATE :AGENT MV7088 :SUBSTRATE MV7090 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7088 :ISA PROTEIN-FAMILY :PREDICATION MV7087 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV7087 :ISA ACTIVE)
 (:VAR MV7090 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV7121 :ISA BE :SUBJECT MV7120 :PREDICATE MV7123 :PRESENT "PRESENT")
 (:VAR MV7120 :ISA WHAT)
 (:VAR MV7123 :ISA PATHWAY :PREDICATION MV7125 :QUANTIFIER MV7122 :RAW-TEXT
  "pathways")
 (:VAR MV7125 :ISA AFFECT :AGENT MV7123 :THAT-REL T :OBJECT MV7126 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV7126 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7122 :ISA SOME :WORD "some"))

___________________
779: "What are the pathways that affect BRAF"

                    SOURCE-START
e15   BE            1 "What are the pathways that affect BRAF" 8
                    END-OF-SOURCE
("What are the pathways that affect BRAF"
 (:VAR MV7128 :ISA BE :SUBJECT MV7127 :PREDICATE MV7130 :PRESENT "PRESENT")
 (:VAR MV7127 :ISA WHAT)
 (:VAR MV7130 :ISA PATHWAY :PREDICATION MV7132 :HAS-DETERMINER "THE" :RAW-TEXT
  "pathways")
 (:VAR MV7132 :ISA AFFECT :AGENT MV7130 :THAT-REL T :OBJECT MV7133 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV7133 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
780: "What genes are regulated by miR-20b-5p, and miR-145-5p?"

                    SOURCE-START
e17   REGULATE      1 "What genes are regulated by miR-20b-5p, and miR-145-5p" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p, and miR-145-5p?"
 (:VAR MV7143 :ISA REGULATE :OBJECT MV7137 :AGENT MV7142 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV7137 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7142 :ISA COLLECTION :RAW-TEXT "miR-20b-5p, and miR-145-5p" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV7134 MV7135))
 (:VAR MV7134 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV7135 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437"))

___________________
781: "What are some genes that are regulated by ELK1?"

                    SOURCE-START
e20   BE            1 "What are some genes that are regulated by ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes that are regulated by ELK1?"
 (:VAR MV7147 :ISA BE :SUBJECT MV7146 :PREDICATE MV7149 :PRESENT "PRESENT")
 (:VAR MV7146 :ISA WHAT)
 (:VAR MV7149 :ISA GENE :PREDICATION MV7154 :QUANTIFIER MV7148 :RAW-TEXT
  "genes")
 (:VAR MV7154 :ISA REGULATE :OBJECT MV7149 :THAT-REL T :AGENT MV7145 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV7145 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7148 :ISA SOME :WORD "some"))

___________________
782: "What pathways contain CXCL8 and CXCL10?"

                    SOURCE-START
e11   CONTAIN       1 "What pathways contain CXCL8 and CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways contain CXCL8 and CXCL10?"
 (:VAR MV7160 :ISA CONTAIN :THEME MV7159 :PATIENT MV7162 :PRESENT "PRESENT")
 (:VAR MV7159 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7162 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7156 MV7157))
 (:VAR MV7156 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7157 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
783: "Remove the fact that IL10 activates STAT3 in the model"

                    SOURCE-START
e24   REMOVE        1 "Remove the fact that IL10 activates STAT3 in the model" 13
                    END-OF-SOURCE
("Remove the fact that IL10 activates STAT3 in the model"
 (:VAR MV7165 :ISA REMOVE :OBJECT MV7174 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7174 :ISA FACT :STATEMENT MV7169 :HAS-DETERMINER "THE")
 (:VAR MV7169 :ISA BIO-ACTIVATE :AGENT MV7163 :OBJECT MV7164 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7163 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7164 :ISA PROTEIN :INFO-CONTEXT MV7172 :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV7172 :ISA MODEL :HAS-DETERMINER "THE"))

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
 (:VAR MV7186 :ISA BE :SUBJECT MV7185 :PREDICATE MV7188 :PRESENT "PRESENT")
 (:VAR MV7185 :ISA WHAT)
 (:VAR MV7188 :ISA PATH :ENDPOINTS MV7192 :QUANTIFIER MV7187)
 (:VAR MV7192 :ISA COLLECTION :RAW-TEXT "BRAF and AKT1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV7190 MV7184))
 (:VAR MV7190 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7184 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV7187 :ISA SOME :WORD "some"))

___________________
786: "Does MEK1 activate ERK2"

                    SOURCE-START
e10   BIO-ACTIVATE  1 "Does MEK1 activate ERK2" 7
                    END-OF-SOURCE
("Does MEK1 activate ERK2" (:VAR MV7199 :ISA POLAR-QUESTION :STATEMENT MV7198)
 (:VAR MV7198 :ISA BIO-ACTIVATE :AGENT MV7194 :OBJECT MV7195 :RAW-TEXT
  "activate")
 (:VAR MV7194 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7195 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
787: "What drugs tagret BRAF?"

                    SOURCE-START
e6    PROTEIN       1 "What drugs tagret BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs tagret BRAF?"
 (:VAR MV7202 :ISA PROTEIN :HAS-DETERMINER "WHAT" :MODIFIER MV7201 :MODIFIER
  MV7203 :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV7201 :ISA DRUG :RAW-TEXT "drugs")
 (:VAR MV7203 :ISA BIO-ENTITY :NAME "tagret"))

___________________
788: "Which kinases are in the MAPK signalling pathway?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which kinases are in the MAPK signalling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signalling pathway?"
 (:VAR MV7212 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7206 :VALUE MV7204 :PREP
  MV7208 :PREDICATE MV7207)
 (:VAR MV7206 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7204 :ISA CELLULAR-PROCESS :HAS-DETERMINER "THE" :MODIFIER MV7210
  :RAW-TEXT "signalling pathway" :NAME "signalling cascade" :UID "GO:0007165")
 (:VAR MV7210 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV7208 :ISA IN :WORD "in") (:VAR MV7207 :ISA BE :PRESENT "PRESENT"))

___________________
789: "What drugs drugs target BRAF?"

                    SOURCE-START
e9    TARGET        1 "What drugs drugs target BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs drugs target BRAF?"
 (:VAR MV7217 :ISA TARGET :AGENT MV7219 :OBJECT MV7218 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7219 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7218 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
790: "What rgulates ELLK1?"

                    SOURCE-START
e6    BIO-ENTITY    1 "What rgulates ELLK1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What rgulates ELLK1?"
 (:VAR MV7223 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :MODIFIER MV7224 :NAME
  "ELLK1")
 (:VAR MV7224 :ISA BIO-ENTITY :NAME "rgulates"))

___________________
791: "Does STAT3 increase expression of c-fos in liver?"

                    SOURCE-START
e21   INCREASE      1 "Does STAT3 increase expression of c-fos in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase expression of c-fos in liver?"
 (:VAR MV7237 :ISA POLAR-QUESTION :STATEMENT MV7234)
 (:VAR MV7234 :ISA INCREASE :AGENT MV7225 :AFFECTED-PROCESS MV7230 :RAW-TEXT
  "increase")
 (:VAR MV7225 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7230 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV7226 :RAW-TEXT
  "expression")
 (:VAR MV7226 :ISA PROTEIN :ORGAN MV7233 :RAW-TEXT "c-fos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV7233 :ISA LIVER))

___________________
792: "Does STAT3 affect c-fos expression in liver?"

                    SOURCE-START
e17   AFFECT        1 "Does STAT3 affect c-fos expression in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect c-fos expression in liver?"
 (:VAR MV7247 :ISA POLAR-QUESTION :STATEMENT MV7245)
 (:VAR MV7245 :ISA AFFECT :AGENT MV7238 :AFFECTED-PROCESS MV7242 :RAW-TEXT
  "affect")
 (:VAR MV7238 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7242 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV7244 :OBJECT MV7239
  :RAW-TEXT "expression")
 (:VAR MV7244 :ISA LIVER)
 (:VAR MV7239 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
793: "Does STAT3 alter c-fos expression?"

                    SOURCE-START
e12   ALTER         1 "Does STAT3 alter c-fos expression" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 alter c-fos expression?"
 (:VAR MV7254 :ISA POLAR-QUESTION :STATEMENT MV7253)
 (:VAR MV7253 :ISA ALTER :AGENT MV7248 :AFFECTED-PROCESS MV7252 :RAW-TEXT
  "alter")
 (:VAR MV7248 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7252 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV7249 :RAW-TEXT
  "expression")
 (:VAR MV7249 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
794: "Is STAT3 a transcriptional regulator of c-fos?"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcriptional regulator of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcriptional regulator of c-fos?"
 (:VAR MV7262 :ISA POLAR-QUESTION :STATEMENT MV7258)
 (:VAR MV7258 :ISA BE :SUBJECT MV7255 :PREDICATE MV7256)
 (:VAR MV7255 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7256 :ISA PROTEIN-FAMILY :MOLECULE-TYPE MV7257 :HAS-DETERMINER "A"
  :RAW-TEXT "transcriptional regulator" :NAME "transcriptional regulator" :UID
  "XFAM:PF02082")
 (:VAR MV7257 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
795: "Which drugs inhibit BRAF?"

                    SOURCE-START
e6    INHIBIT       1 "Which drugs inhibit BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs inhibit BRAF?"
 (:VAR MV7265 :ISA INHIBIT :AGENT MV7264 :OBJECT MV7266 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV7264 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7266 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
796: "STAT3 upregulates ELK1."

                    SOURCE-START
e6    UPREGULATE    1 "STAT3 upregulates ELK1" 6
                    PERIOD
                    END-OF-SOURCE
("STAT3 upregulates ELK1."
 (:VAR MV7269 :ISA UPREGULATE :AGENT MV7267 :OBJECT MV7268 :PRESENT "PRESENT"
  :RAW-TEXT "upregulates")
 (:VAR MV7267 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7268 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
797: "What does STAT3 transcribe?  "

                    SOURCE-START
e6    TRANSCRIBE    1 "What does STAT3 transcribe" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 transcribe?"
 (:VAR MV7273 :ISA TRANSCRIBE :OBJECT MV7271 :AGENT MV7270 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV7271 :ISA WHAT)
 (:VAR MV7270 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
798: "What is PI3K?"

                    SOURCE-START
e5    BE            1 "What is PI3K" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What is PI3K?"
 (:VAR MV7276 :ISA BE :SUBJECT MV7275 :PREDICATE MV7274 :PRESENT "PRESENT")
 (:VAR MV7275 :ISA WHAT)
 (:VAR MV7274 :ISA PROTEIN-FAMILY :RAW-TEXT "PI3K" :NAME "PI3-kinase" :COUNT 4
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
 (:VAR MV7278 :ISA BE :SUBJECT MV7277 :PREDICATE MV7279 :PRESENT "PRESENT")
 (:VAR MV7277 :ISA WHAT)
 (:VAR MV7279 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV7281 :ISA PHOSPHORYLATE :AGENT-OR-CAUSE MV7280 :SUBSTRATE MV7282
  :PRESENT "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7280 :ISA WHAT)
 (:VAR MV7282 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV7286 :ISA TARGET :AGENT MV7284 :OBJECT MV7287 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7284 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7287 :ISA PROTEIN-FAMILY :RAW-TEXT "AKT" :NAME "Rac" :COUNT 3
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
 (:VAR MV7290 :ISA REGULATE :AGENT-OR-CAUSE MV7289 :OBJECT MV7288 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7289 :ISA WHAT) (:VAR MV7288 :ISA BIO-ENTITY :NAME "ELLK1"))

___________________
803: "What regulates ELK1?"

                    SOURCE-START
e5    REGULATE      1 "What regulates ELK1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates ELK1?"
 (:VAR MV7293 :ISA REGULATE :AGENT-OR-CAUSE MV7292 :OBJECT MV7291 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7292 :ISA WHAT)
 (:VAR MV7291 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
804: "Does miR-20b-5pp target STAT3?"

                    SOURCE-START
e16   TARGET        1 "Does miR-20b-5pp target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5pp target STAT3?"
 (:VAR MV7304 :ISA POLAR-QUESTION :STATEMENT MV7303)
 (:VAR MV7303 :ISA TARGET :AGENT MV7302 :OBJECT MV7295 :RAW-TEXT "target")
 (:VAR MV7302 :ISA BIO-ENTITY :NAME "miR-20b-5pp")
 (:VAR MV7295 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
805: "What are the mutations of PTEEN in prostate cancer?"

                    SOURCE-START
e18   OF            1 "What are the mutations of PTEEN in prostate cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEEN in prostate cancer?"
 (:VAR MV7315 :ISA WH-QUESTION :STATEMENT MV7314 :WH WHAT)
 (:VAR MV7314 :ISA PREPOSITIONAL-PHRASE :POBJ MV7312 :PREP "OF")
 (:VAR MV7312 :ISA BIO-ENTITY :CONTEXT MV7305 :NAME "PTEEN")
 (:VAR MV7305 :ISA CANCER :NAME "prostate cancer" :UID "TS-1224"))

___________________
806: "What does selumitinibib target?"

                    SOURCE-START
e6    TARGET        1 "What does selumitinibib target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does selumitinibib target?"
 (:VAR MV7319 :ISA TARGET :OBJECT MV7316 :AGENT MV7320 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7316 :ISA WHAT) (:VAR MV7320 :ISA BIO-ENTITY :NAME "selumitinibib"))

___________________
807: "Is ELLK1 a kinase?"

                    SOURCE-START
e9    BE            1 "Is ELLK1 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ELLK1 a kinase?" (:VAR MV7325 :ISA POLAR-QUESTION :STATEMENT MV7322)
 (:VAR MV7322 :ISA BE :SUBJECT MV7321 :PREDICATE MV7324)
 (:VAR MV7321 :ISA BIO-ENTITY :NAME "ELLK1")
 (:VAR MV7324 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
808: "What regulates ELK12?"

                    SOURCE-START
e7    REGULATE      1 "What regulates ELK12" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates ELK12?"
 (:VAR MV7327 :ISA REGULATE :AGENT-OR-CAUSE MV7326 :OBJECT MV7328 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7326 :ISA WHAT)
 (:VAR MV7328 :ISA PROTEIN :VARIANT-NUMBER MV7330 :RAW-TEXT "ELK" :UID
  "UP:P54762" :NAME "EPHB1_HUMAN")
 (:VAR MV7330 :ISA NUMBER :VALUE 12))

___________________
809: "What does sleumiitibbb target?"

                    SOURCE-START
e6    TARGET        1 "What does sleumiitibbb target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does sleumiitibbb target?"
 (:VAR MV7334 :ISA TARGET :OBJECT MV7331 :AGENT MV7335 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7331 :ISA WHAT) (:VAR MV7335 :ISA BIO-ENTITY :NAME "sleumiitibbb"))

___________________
810: "What is the evidence that MEK1 phosphorylates ERK1?"

                    SOURCE-START
e18   BE            1 "What is the evidence that MEK1 phosphorylates ERK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that MEK1 phosphorylates ERK1?"
 (:VAR MV7339 :ISA BE :SUBJECT MV7338 :PREDICATE MV7344 :PRESENT "PRESENT")
 (:VAR MV7338 :ISA WHAT)
 (:VAR MV7344 :ISA EVIDENCE :STATEMENT MV7343 :HAS-DETERMINER "THE")
 (:VAR MV7343 :ISA PHOSPHORYLATE :AGENT MV7336 :SUBSTRATE MV7337 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7336 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7337 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
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
 (:VAR MV7361 :ISA BIO-ACTIVATE :AGENT MV7359 :OBJECT MV7360 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7359 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7360 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
814: "How many interactions are in the model?"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "How many interactions are in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How many interactions are in the model?"
 (:VAR MV7372 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7364 :VALUE MV7371 :PREP
  "IN" :PREDICATE MV7365)
 (:VAR MV7364 :ISA INTERACT :HAS-DETERMINER "HOW" :QUANTIFIER MV7363 :RAW-TEXT
  "interactions")
 (:VAR MV7363 :ISA MANY :WORD "many")
 (:VAR MV7371 :ISA INTERACT :INFO-CONTEXT MV7368 :HAS-DETERMINER "HOW"
  :QUANTIFIER MV7363 :RAW-TEXT "interactions")
 (:VAR MV7368 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV7365 :ISA BE :PRESENT "PRESENT"))

___________________
815: "Does tofacitinib decrease the amount of phosphorylated MAP2K2?"

                    SOURCE-START
e21   DECREASE      1 "Does tofacitinib decrease the amount of phosphorylated MAP2K2" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
 (:VAR MV7385 :ISA POLAR-QUESTION :STATEMENT MV7383)
 (:VAR MV7383 :ISA DECREASE :AGENT MV7376 :AFFECTED-PROCESS-OR-OBJECT MV7380
  :RAW-TEXT "decrease")
 (:VAR MV7376 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tasocitinib" :UID
  "NCIT:C95800")
 (:VAR MV7380 :ISA BIO-AMOUNT :MEASURED-ITEM MV7374 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7374 :ISA PROTEIN :PREDICATION MV7382 :RAW-TEXT "MAP2K2" :UID
  "UP:P36507" :NAME "MP2K2_HUMAN")
 (:VAR MV7382 :ISA PHOSPHORYLATE :SUBSTRATE MV7374 :RAW-TEXT "phosphorylated"))

___________________
816: "What kinases does ERK1 activate?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "What kinases does ERK1 activate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does ERK1 activate?"
 (:VAR MV7390 :ISA BIO-ACTIVATE :OBJECT MV7388 :AGENT MV7386 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7388 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7386 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
817: "What kinases does MEK1 activate?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "What kinases does MEK1 activate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does MEK1 activate?"
 (:VAR MV7395 :ISA BIO-ACTIVATE :OBJECT MV7393 :AGENT MV7391 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7393 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7391 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
818: "What does ERK1 activate?"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "What does ERK1 activate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERK1 activate?"
 (:VAR MV7399 :ISA BIO-ACTIVATE :OBJECT MV7397 :AGENT MV7396 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7397 :ISA WHAT)
 (:VAR MV7396 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
819: "What does JAK1 phosphorylate?"

                    SOURCE-START
e6    PHOSPHORYLATE 1 "What does JAK1 phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does JAK1 phosphorylate?"
 (:VAR MV7403 :ISA PHOSPHORYLATE :AMINO-ACID MV7401 :AGENT MV7400 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV7401 :ISA WHAT)
 (:VAR MV7400 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
820: "What kinases does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What kinases does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does STAT3 regulate?"
 (:VAR MV7408 :ISA REGULATE :OBJECT MV7406 :AGENT MV7404 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7406 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7404 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
821: "What pathways involve SRF and what does SRF bind?"

                    SOURCE-START
e14   INVOLVE       1 "What pathways involve SRF and what does SRF bind" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF and what does SRF bind?"
 (:VAR MV7418 :ISA COLLECTION :TYPE INVOLVE :NUMBER 2 :ITEMS (MV7411 MV7417))
 (:VAR MV7411 :ISA INVOLVE :THEME MV7410 :THEME MV7412 :PRESENT "PRESENT")
 (:VAR MV7410 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7412 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV7417 :ISA BINDING :DIRECT-BINDEE MV7414 :BINDER MV7416 :PRESENT
  "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7414 :ISA WHAT)
 (:VAR MV7416 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
822: "What pathways involve SRF?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF?"
 (:VAR MV7421 :ISA INVOLVE :THEME MV7420 :THEME MV7422 :PRESENT "PRESENT")
 (:VAR MV7420 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7422 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
823: "What does SRF bind?"

                    SOURCE-START
e5    BINDING       1 "What does SRF bind" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does SRF bind?"
 (:VAR MV7426 :ISA BINDING :DIRECT-BINDEE MV7423 :BINDER MV7425 :PRESENT
  "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7423 :ISA WHAT)
 (:VAR MV7425 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
824: "What pathways involve SRF and is SRF a kinase?"

                    SOURCE-START
e16   KINASE        1 "What pathways involve SRF and is SRF a kinase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF and is SRF a kinase?"
 (:VAR MV7437 :ISA WH-QUESTION :STATEMENT MV7435 :VAR NIL :WH WHAT)
 (:VAR MV7435 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
825: "Does MAP2K1 phosphorylate and activate MAPK1?"

                    SOURCE-START
e13   COLLECTION    1 "Does MAP2K1 phosphorylate and activate MAPK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP2K1 phosphorylate and activate MAPK1?"
 (:VAR MV7448 :ISA POLAR-QUESTION :STATEMENT MV7447)
 (:VAR MV7447 :ISA COLLECTION :TYPE PHOSPHORYLATE :ITEMS
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
 (:VAR MV7454 :ISA POLAR-QUESTION :STATEMENT MV7453)
 (:VAR MV7453 :ISA PHOSPHORYLATE :AGENT MV7449 :SUBSTRATE MV7450 :RAW-TEXT
  "phosphorylate")
 (:VAR MV7449 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7450 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
827: "Which kinases activate MEK2?"

                    SOURCE-START
e7    BIO-ACTIVATE  1 "Which kinases activate MEK2" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases activate MEK2?"
 (:VAR MV7458 :ISA BIO-ACTIVATE :AGENT MV7457 :OBJECT MV7455 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7457 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7455 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN"))

___________________
828: "Which drugs target upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e17   TARGET        1 "Which drugs target upstreams of CXCL8 and CXCL10" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target upstreams of CXCL8 and CXCL10?"
 (:VAR MV7464 :ISA TARGET :AGENT MV7462 :AFFECTED-PROCESS MV7465 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV7462 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7465 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV7468 :RAW-TEXT
  "upstreams")
 (:VAR MV7468 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7459 MV7460))
 (:VAR MV7459 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7460 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
829: "Which drugs target CXCL8?"

                    SOURCE-START
e8    TARGET        1 "Which drugs target CXCL8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target CXCL8?"
 (:VAR MV7474 :ISA TARGET :AGENT MV7472 :OBJECT MV7470 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7472 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7470 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
830: "Which drugs target Jak3?"

                    SOURCE-START
e8    TARGET        1 "Which drugs target Jak3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target Jak3?"
 (:VAR MV7479 :ISA TARGET :AGENT MV7477 :OBJECT MV7475 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7477 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7475 :ISA PROTEIN :RAW-TEXT "Jak3" :UID "UP:P52333" :NAME
  "JAK3_HUMAN"))

___________________
831: "What drugs target transcription factors shared by CXCL8 and CXCL10?"

                    SOURCE-START
e19   TARGET        1 "What drugs target transcription factors shared by CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target transcription factors shared by CXCL8 and CXCL10?"
 (:VAR MV7486 :ISA TARGET :AGENT MV7484 :OBJECT MV7480 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7484 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7480 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7487 :RAW-TEXT
  "transcription factors")
 (:VAR MV7487 :ISA SHARE :OBJECT MV7480 :PARTICIPANT MV7490 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7490 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7481 MV7482))
 (:VAR MV7481 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7482 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
832: "What kinases does miR-20a-5p target?"

                    SOURCE-START
e9    TARGET        1 "What kinases does miR-20a-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does miR-20a-5p target?"
 (:VAR MV7497 :ISA TARGET :OBJECT MV7494 :AGENT MV7492 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7494 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7492 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075"))

___________________
833: "What transcription factors does miR-20a-5p target?"

                    SOURCE-START
e10   TARGET        1 "What transcription factors does miR-20a-5p target" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors does miR-20a-5p target?"
 (:VAR MV7503 :ISA TARGET :OBJECT MV7498 :AGENT MV7499 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7498 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7499 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075"))

___________________
834: "What kinases are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "What kinases are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV7514 :ISA COPULAR-PREDICATION :ITEM MV7508 :VALUE MV7504 :PREDICATE
  MV7509)
 (:VAR MV7508 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7504 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV7506 :ALTERNATIVE MV7505)
 (:VAR MV7506 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV7505 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV7509 :ISA BE :PRESENT "PRESENT"))

___________________
835: "What drugs target fakeprotein?"

                    SOURCE-START
e7    TARGET        1 "What drugs target fakeprotein" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target fakeprotein?"
 (:VAR MV7518 :ISA TARGET :AGENT MV7516 :OBJECT MV7519 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7516 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7519 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
836: "Which kinases are in the FAKE signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the FAKE signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the FAKE signaling pathway?"
 (:VAR MV7530 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7522 :VALUE MV7529 :PREP
  "IN" :PREDICATE MV7523)
 (:VAR MV7522 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7529 :ISA KINASE :CONTEXT-OR-IN-PATHWAY MV7520 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "kinases")
 (:VAR MV7520 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV7526
  :RAW-TEXT "signaling pathway")
 (:VAR MV7526 :ISA BIO-ENTITY :NAME "FAKE")
 (:VAR MV7523 :ISA BE :PRESENT "PRESENT"))

___________________
837: "What are the mutations of PTEN in fictional cancer?"

                    SOURCE-START
e19   BE            1 "What are the mutations of PTEN in fictional cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in fictional cancer?"
 (:VAR MV7533 :ISA BE :SUBJECT MV7532 :PREDICATE MV7535 :PRESENT "PRESENT")
 (:VAR MV7532 :ISA WHAT)
 (:VAR MV7535 :ISA MUTATION :OBJECT MV7537 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV7537 :ISA PROTEIN :CONTEXT MV7540 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV7540 :ISA CANCER :PREDICATION MV7539) (:VAR MV7539 :ISA FICTIONAL))

___________________
838: "What are the mutations of PTEN in liver cancer?"

                    SOURCE-START
e19   BE            1 "What are the mutations of PTEN in liver cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in liver cancer?"
 (:VAR MV7544 :ISA BE :SUBJECT MV7543 :PREDICATE MV7546 :PRESENT "PRESENT")
 (:VAR MV7543 :ISA WHAT)
 (:VAR MV7546 :ISA MUTATION :OBJECT MV7548 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV7548 :ISA PROTEIN :CONTEXT MV7551 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV7551 :ISA CANCER :ORGAN MV7550) (:VAR MV7550 :ISA LIVER))

___________________
839: "Remove the fact that ELk1 transcribes FAKE in the model."

                    SOURCE-START
e23   REMOVE        1 "Remove the fact that ELk1 transcribes FAKE in the model" 12
                    PERIOD
                    END-OF-SOURCE
("Remove the fact that ELk1 transcribes FAKE in the model."
 (:VAR MV7555 :ISA REMOVE :OBJECT MV7565 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7565 :ISA FACT :STATEMENT MV7559 :HAS-DETERMINER "THE")
 (:VAR MV7559 :ISA TRANSCRIBE :AGENT MV7554 :OBJECT MV7560 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7554 :ISA PROTEIN :RAW-TEXT "ELk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7560 :ISA BIO-ENTITY :INFO-CONTEXT MV7563 :NAME "FAKE")
 (:VAR MV7563 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
840: "ELK1 transcribes FOS"

                    SOURCE-START
e5    TRANSCRIBE    1 "ELK1 transcribes FOS" 5
                    END-OF-SOURCE
("ELK1 transcribes FOS"
 (:VAR MV7567 :ISA TRANSCRIBE :AGENT MV7566 :OBJECT MV7568 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7566 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7568 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
841: "Remove the fact that ELK1 transcribes FOS in the model."

                    SOURCE-START
e23   REMOVE        1 "Remove the fact that ELK1 transcribes FOS in the model" 12
                    PERIOD
                    END-OF-SOURCE
("Remove the fact that ELK1 transcribes FOS in the model."
 (:VAR MV7570 :ISA REMOVE :OBJECT MV7580 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7580 :ISA FACT :STATEMENT MV7574 :HAS-DETERMINER "THE")
 (:VAR MV7574 :ISA TRANSCRIBE :AGENT MV7569 :OBJECT MV7575 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7569 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7575 :ISA PROTEIN :INFO-CONTEXT MV7578 :RAW-TEXT "FOS" :UID
  "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV7578 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
842: "What transcription factors are shared by CXCL8 and FAKE10?"

                    SOURCE-START
e19   SHARE         1 "What transcription factors are shared by CXCL8 and FAKE10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8 and FAKE10?"
 (:VAR MV7593 :ISA SHARE :OBJECT MV7581 :PARTICIPANT MV7592 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV7581 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7592 :ISA COLLECTION :RAW-TEXT "CXCL8 and FAKE10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7582 MV7591))
 (:VAR MV7582 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7591 :ISA BIO-ENTITY :NAME "FAKE10"))

___________________
843: "What transcription factors are shared by CXCL8 and CXCL10?"

                    SOURCE-START
e17   SHARE         1 "What transcription factors are shared by CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8 and CXCL10?"
 (:VAR MV7604 :ISA SHARE :OBJECT MV7595 :PARTICIPANT MV7603 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV7595 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7603 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7596 MV7597))
 (:VAR MV7596 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7597 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
844: "What databases do you use?"

                    SOURCE-START
e8    BIO-USE       1 "What databases do you use" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What databases do you use?"
 (:VAR MV7611 :ISA BIO-USE :OBJECT MV7607 :AGENT MV7609 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV7607 :ISA DATABASE :HAS-DETERMINER "WHAT")
 (:VAR MV7609 :ISA INTERLOCUTOR :NAME "hearer"))

___________________
845: "What is the MSA?"

                    SOURCE-START
e7    BE            1 "What is the MSA" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the MSA?"
 (:VAR MV7613 :ISA BE :SUBJECT MV7612 :PREDICATE MV7615 :PRESENT "PRESENT")
 (:VAR MV7612 :ISA WHAT)
 (:VAR MV7615 :ISA PROTEIN :HAS-DETERMINER "THE" :RAW-TEXT "MSA" :UID
  "UP:Q9FIB6" :NAME "PS12A_ARATH"))

___________________
846: "What tissues can I ask about?"

                    SOURCE-START
e11   ASK           1 "What tissues can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What tissues can I ask about?"
 (:VAR MV7624 :ISA ASK :PATIENT MV7617 :MODAL MV7618 :AGENT MV7619 :PRESENT
  "PRESENT")
 (:VAR MV7617 :ISA TISSUE :HAS-DETERMINER "WHAT") (:VAR MV7618 :ISA CAN)
 (:VAR MV7619 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
847: "What cancers can I ask about?"

                    SOURCE-START
e11   ASK           1 "What cancers can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What cancers can I ask about?"
 (:VAR MV7633 :ISA ASK :PATIENT MV7626 :MODAL MV7627 :AGENT MV7628 :PRESENT
  "PRESENT")
 (:VAR MV7626 :ISA CANCER :HAS-DETERMINER "WHAT") (:VAR MV7627 :ISA CAN)
 (:VAR MV7628 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
848: "What mechanisms can I ask about?"

                    SOURCE-START
e11   ASK           1 "What mechanisms can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What mechanisms can I ask about?"
 (:VAR MV7642 :ISA ASK :PATIENT MV7635 :MODAL MV7636 :AGENT MV7637 :PRESENT
  "PRESENT")
 (:VAR MV7635 :ISA BIO-MECHANISM :HAS-DETERMINER "WHAT") (:VAR MV7636 :ISA CAN)
 (:VAR MV7637 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
849: "What does STAT3 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does STAT3 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 regulate?"
 (:VAR MV7646 :ISA REGULATE :OBJECT MV7644 :AGENT MV7643 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7644 :ISA WHAT)
 (:VAR MV7643 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
850: "Which of these are kinases?"

                    SOURCE-START
e9    BE            1 "Which of these are kinases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are kinases?"
 (:VAR MV7650 :ISA BE :SUBJECT MV7649 :PREDICATE MV7651 :PRESENT "PRESENT")
 (:VAR MV7649 :ISA THESE :QUANTIFIER MV7647 :WORD "these")
 (:VAR MV7647 :ISA WHICH) (:VAR MV7651 :ISA KINASE :RAW-TEXT "kinases"))

___________________
851: "What pathways is ERK1 in?"

                    SOURCE-START
e10   IN            1 "What pathways is ERK1 in" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways is ERK1 in?"
 (:VAR MV7658 :ISA WH-QUESTION :STATEMENT MV7657 :VAR NIL :WH WHAT)
 (:VAR MV7657 :ISA IN :WORD "in"))

___________________
852: "Which of these is AKT1 in?"

                    SOURCE-START
e13   IN            1 "Which of these is AKT1 in" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these is AKT1 in?"
 (:VAR MV7666 :ISA WH-QUESTION :STATEMENT MV7664 :WH WHICH)
 (:VAR MV7664 :ISA IN :WORD "in"))

___________________
853: "What pathways are ERK1 and AKT1 in?"

                    SOURCE-START
e14   IN            1 "What pathways are ERK1 and AKT1 in" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are ERK1 and AKT1 in?"
 (:VAR MV7675 :ISA WH-QUESTION :STATEMENT MV7673 :VAR NIL :WH WHAT)
 (:VAR MV7673 :ISA IN :WORD "in"))

___________________
854: "What microRNAs target STAT3?"

                    SOURCE-START
e8    TARGET        1 "What microRNAs target STAT3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What microRNAs target STAT3?"
 (:VAR MV7680 :ISA TARGET :AGENT MV7678 :OBJECT MV7676 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7678 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "microRNAs")
 (:VAR MV7676 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
855: "Which of these target SMAD2?"

                    SOURCE-START
e11   TARGET        1 "Which of these target SMAD2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these target SMAD2?"
 (:VAR MV7686 :ISA TARGET :AGENT-OR-CAUSE MV7684 :OBJECT MV7681 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV7684 :ISA THESE :QUANTIFIER MV7682 :WORD "these")
 (:VAR MV7682 :ISA WHICH)
 (:VAR MV7681 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
856: "Do any of these regulate IL2?"

                    SOURCE-START
e14   REGULATE      1 "Do any of these regulate IL2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do any of these regulate IL2?"
 (:VAR MV7696 :ISA POLAR-QUESTION :STATEMENT MV7694)
 (:VAR MV7694 :ISA REGULATE :AGENT-OR-CAUSE MV7692 :OBJECT MV7688 :RAW-TEXT
  "regulate")
 (:VAR MV7692 :ISA THESE :QUANTIFIER MV7690 :WORD "these")
 (:VAR MV7690 :ISA ANY :WORD "any")
 (:VAR MV7688 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
857: "What regulates STAT3?"

                    SOURCE-START
e5    REGULATE      1 "What regulates STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates STAT3?"
 (:VAR MV7699 :ISA REGULATE :AGENT-OR-CAUSE MV7698 :OBJECT MV7697 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7698 :ISA WHAT)
 (:VAR MV7697 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
858: "What pathways involve these?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve these" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve these?"
 (:VAR MV7702 :ISA INVOLVE :THEME MV7701 :THEME MV7703 :PRESENT "PRESENT")
 (:VAR MV7701 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7703 :ISA THESE :WORD "these"))

___________________
859: "What are the targets of NG25?"

                    SOURCE-START
e14   BE            1 "What are the targets of NG25" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the targets of NG25?"
 (:VAR MV7706 :ISA BE :SUBJECT MV7705 :PREDICATE MV7708 :PRESENT "PRESENT")
 (:VAR MV7705 :ISA WHAT)
 (:VAR MV7708 :ISA TARGET-PROTEIN :AGENT MV7704 :HAS-DETERMINER "THE" :RAW-TEXT
  "targets")
 (:VAR MV7704 :ISA DRUG :RAW-TEXT "NG25" :NAME "NG-25" :UID "PCID:53340664"))

___________________
860: "What is their most likely cellular location?"

                    SOURCE-START
e13   BE            1 "What is their most likely cellular location" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What is their most likely cellular location?"
 (:VAR MV7713 :ISA BE :SUBJECT MV7712 :PREDICATE MV7719 :PRESENT "PRESENT")
 (:VAR MV7712 :ISA WHAT)
 (:VAR MV7719 :ISA LOCATION-OF :THEME MV7714 :PREDICATION MV7717 :MODIFIER
  MV7718)
 (:VAR MV7714 :ISA PRONOUN/PLURAL :WORD "their")
 (:VAR MV7717 :ISA LIKELY :COMPARATIVE MV7715)
 (:VAR MV7715 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV7718 :ISA CELLULAR :NAME "cellular"))

___________________
861: "Is ERK1 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is ERK1 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK1 a transcription factor?"
 (:VAR MV7724 :ISA POLAR-QUESTION :STATEMENT MV7722)
 (:VAR MV7722 :ISA BE :SUBJECT MV7720 :PREDICATE MV7721)
 (:VAR MV7720 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN")
 (:VAR MV7721 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
862: "Is it a kinase?"

                    SOURCE-START
e9    BE            1 "Is it a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is it a kinase?" (:VAR MV7729 :ISA POLAR-QUESTION :STATEMENT MV7725)
 (:VAR MV7725 :ISA BE :SUBJECT MV7726 :PREDICATE MV7728)
 (:VAR MV7726 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV7728 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
863: "What is PLX-4720?"

                    SOURCE-START
e5    BE            1 "What is PLX-4720" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What is PLX-4720?"
 (:VAR MV7732 :ISA BE :SUBJECT MV7731 :PREDICATE MV7730 :PRESENT "PRESENT")
 (:VAR MV7731 :ISA WHAT)
 (:VAR MV7730 :ISA MOLECULE :RAW-TEXT "PLX-4720" :NAME "plx-4720" :UID
  "PCID:24180719"))

___________________
864: "What does it target?"

                    SOURCE-START
e7    TARGET        1 "What does it target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it target?"
 (:VAR MV7737 :ISA TARGET :OBJECT MV7733 :AGENT-OR-CAUSE MV7735 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV7733 :ISA WHAT) (:VAR MV7735 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
865: "What genes does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does STAT3 regulate?"
 (:VAR MV7742 :ISA REGULATE :OBJECT MV7740 :AGENT MV7738 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7740 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7738 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
866: "What pathways is it in?"

                    SOURCE-START
e10   IN            1 "What pathways is it in" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways is it in?"
 (:VAR MV7748 :ISA WH-QUESTION :STATEMENT MV7747 :VAR NIL :WH WHAT)
 (:VAR MV7747 :ISA IN :WORD "in"))

___________________
867: "What are the targets of PLX-4720?"

                    SOURCE-START
e14   BE            1 "What are the targets of PLX-4720" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the targets of PLX-4720?"
 (:VAR MV7751 :ISA BE :SUBJECT MV7750 :PREDICATE MV7753 :PRESENT "PRESENT")
 (:VAR MV7750 :ISA WHAT)
 (:VAR MV7753 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV7749 :HAS-DETERMINER "THE"
  :RAW-TEXT "targets")
 (:VAR MV7749 :ISA MOLECULE :RAW-TEXT "PLX-4720" :NAME "plx-4720" :UID
  "PCID:24180719"))

___________________
868: "Does it target BRAF?"

                    SOURCE-START
e10   TARGET        1 "Does it target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does it target BRAF?" (:VAR MV7763 :ISA POLAR-QUESTION :STATEMENT MV7762)
 (:VAR MV7762 :ISA TARGET :AGENT-OR-CAUSE MV7758 :OBJECT MV7761 :RAW-TEXT
  "target")
 (:VAR MV7758 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV7761 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
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
 (:VAR MV7775 :ISA BIO-ACTIVATE :AGENT MV7773 :OBJECT MV7774 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7773 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV7774 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
871: "I want to find out how Jak1 activates IL2"

                    SOURCE-START
e23   WANT          1 "I want to find out how Jak1 activates IL2" 12
                    END-OF-SOURCE
("I want to find out how Jak1 activates IL2"
 (:VAR MV7781 :ISA WANT :AGENT MV7778 :THEME MV7791 :PRESENT "PRESENT")
 (:VAR MV7778 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7791 :ISA FIND-OUT :AGENT MV7778 :STATEMENT MV7788)
 (:VAR MV7788 :ISA WH-QUESTION :STATEMENT MV7787 :VAR NIL :WH HOW)
 (:VAR MV7787 :ISA BIO-ACTIVATE :AGENT MV7776 :OBJECT MV7777 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7776 :ISA PROTEIN :RAW-TEXT "Jak1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV7777 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
872: "I want to find out how ERBB3 activates JUN in SKBR3 cells."

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    PERIOD
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells."
 (:VAR MV7797 :ISA WANT :AGENT MV7794 :THEME MV7811 :PRESENT "PRESENT")
 (:VAR MV7794 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7811 :ISA FIND-OUT :AGENT MV7794 :STATEMENT MV7808)
 (:VAR MV7808 :ISA WH-QUESTION :STATEMENT MV7803 :VAR NIL :WH HOW)
 (:VAR MV7803 :ISA BIO-ACTIVATE :AGENT MV7792 :OBJECT MV7804 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7792 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME
  "ERBB3_HUMAN")
 (:VAR MV7804 :ISA PROTEIN :CELL-TYPE MV7806 :RAW-TEXT "JUN" :UID "UP:P05412"
  :NAME "JUN_HUMAN")
 (:VAR MV7806 :ISA CELL-TYPE :CELL-LINE MV7793)
 (:VAR MV7793 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
873: "Let's build a model."

                    SOURCE-START
e8    EXPLICIT-SUGGESTION 1 "Let's build a model" 7
                    PERIOD
                    END-OF-SOURCE
("Let's build a model."
 (:VAR MV7816 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV7813 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV7813 :ISA BUILD :ARTIFACT MV7815 :PRESENT "PRESENT")
 (:VAR MV7815 :ISA MODEL :HAS-DETERMINER "A"))

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
 (:VAR MV7826 :ISA REGULATE :AGENT MV7825 :OBJECT MV7823 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7825 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7823 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
876: "What positively regulates IL2?"

                    SOURCE-START
e6    UPREGULATE    1 "What positively regulates IL2" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What positively regulates IL2?"
 (:VAR MV7827 :ISA UPREGULATE :AGENT-OR-CAUSE MV7829 :OBJECT MV7828 :PRESENT
  "PRESENT" :RAW-TEXT "positively regulates")
 (:VAR MV7829 :ISA WHAT)
 (:VAR MV7828 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
877: "What can have the effect of activation on STAT3? "

                    SOURCE-START
e21   HAVE          1 "What can have the effect of activation on STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What can have the effect of activation on STAT3?"
 (:VAR MV7833 :ISA HAVE :POSSESSOR MV7831 :THING-POSSESSED MV7835 :MODAL
  MV7832)
 (:VAR MV7831 :ISA WHAT)
 (:VAR MV7835 :ISA EFFECT :OBJECT MV7830 :AFFECTED-PROCESS MV7838
  :HAS-DETERMINER "THE" :RAW-TEXT "effect")
 (:VAR MV7830 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7838 :ISA BIO-ACTIVATE :RAW-TEXT "activation") (:VAR MV7832 :ISA CAN))

___________________
878: "Are there any drugs for IL10?"

                    SOURCE-START
e15   THERE-EXISTS  1 "Are there any drugs for IL10" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for IL10?"
 (:VAR MV7851 :ISA POLAR-QUESTION :STATEMENT MV7849)
 (:VAR MV7849 :ISA THERE-EXISTS :VALUE MV7847 :PREDICATE MV7844)
 (:VAR MV7847 :ISA DRUG :TARGET MV7842 :QUANTIFIER MV7846 :RAW-TEXT "drugs")
 (:VAR MV7842 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7846 :ISA ANY :WORD "any") (:VAR MV7844 :ISA SYNTACTIC-THERE))

___________________
879: "Which tissues express STAT3?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Which tissues express STAT3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which tissues express STAT3?"
 (:VAR MV7855 :ISA GENE-TRANSCRIPT-EXPRESS :AGENT MV7854 :OBJECT MV7852
  :PRESENT "PRESENT" :RAW-TEXT "express")
 (:VAR MV7854 :ISA TISSUE :HAS-DETERMINER "WHICH")
 (:VAR MV7852 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
880: "How does MEK1 regulate ERK1?"

                    SOURCE-START
e9    REGULATE      1 "How does MEK1 regulate ERK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MEK1 regulate ERK1?"
 (:VAR MV7860 :ISA REGULATE :MANNER MV7858 :AGENT MV7856 :OBJECT MV7857
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV7858 :ISA HOW)
 (:VAR MV7856 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7857 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
881: "What are transcription factors that bind the IL15 and IL2 genes?"

                    SOURCE-START
e23   BE            1 "What are transcription factors that bind the IL15 and IL2 genes" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What are transcription factors that bind the IL15 and IL2 genes?"
 (:VAR MV7865 :ISA BE :SUBJECT MV7864 :PREDICATE MV7861 :PRESENT "PRESENT")
 (:VAR MV7864 :ISA WHAT)
 (:VAR MV7861 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7867 :RAW-TEXT
  "transcription factors")
 (:VAR MV7867 :ISA BINDING :BINDER MV7861 :THAT-REL T :DIRECT-BINDEE MV7870
  :PRESENT "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7870 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV7871 :RAW-TEXT
  "genes")
 (:VAR MV7871 :ISA COLLECTION :RAW-TEXT "IL15 and IL2" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV7862 MV7863))
 (:VAR MV7862 :ISA PROTEIN :RAW-TEXT "IL15" :UID "UP:P40933" :NAME
  "IL15_HUMAN")
 (:VAR MV7863 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
882: "What kinases regulate the IL15 and IL2?"

                    SOURCE-START
e14   REGULATE      1 "What kinases regulate the IL15 and IL2" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases regulate the IL15 and IL2?"
 (:VAR MV7876 :ISA REGULATE :AGENT MV7875 :OBJECT MV7879 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7875 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7879 :ISA COLLECTION :HAS-DETERMINER "THE" :RAW-TEXT "IL15 and IL2"
  :TYPE PROTEIN :NUMBER 2 :ITEMS (MV7872 MV7873))
 (:VAR MV7872 :ISA PROTEIN :RAW-TEXT "IL15" :UID "UP:P40933" :NAME
  "IL15_HUMAN")
 (:VAR MV7873 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

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
 (:VAR MV7904 :ISA BE :SUBJECT MV7903 :PREDICATE MV7902 :PRESENT "PRESENT")
 (:VAR MV7903 :ISA WHAT)
 (:VAR MV7902 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN"))

___________________
886: "Is MAP3K7 a protein?"

                    SOURCE-START
e9    BE            1 "Is MAP3K7 a protein" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAP3K7 a protein?" (:VAR MV7909 :ISA POLAR-QUESTION :STATEMENT MV7906)
 (:VAR MV7906 :ISA BE :SUBJECT MV7905 :PREDICATE MV7908)
 (:VAR MV7905 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV7908 :ISA PROTEIN :HAS-DETERMINER "A" :RAW-TEXT "protein"))

___________________
887: "What does SMAD2 transcribe?"

                    SOURCE-START
e6    TRANSCRIBE    1 "What does SMAD2 transcribe" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does SMAD2 transcribe?"
 (:VAR MV7913 :ISA TRANSCRIBE :OBJECT MV7911 :AGENT MV7910 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV7911 :ISA WHAT)
 (:VAR MV7910 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
888: "Are there drugs for IL10?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there drugs for IL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there drugs for IL10?"
 (:VAR MV7922 :ISA POLAR-QUESTION :STATEMENT MV7920)
 (:VAR MV7920 :ISA THERE-EXISTS :VALUE MV7918 :PREDICATE MV7916)
 (:VAR MV7918 :ISA DRUG :TARGET MV7914 :RAW-TEXT "drugs")
 (:VAR MV7914 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7916 :ISA SYNTACTIC-THERE))

___________________
889: "What relations in the literature match tofacitinib?"

                    SOURCE-START
e15   IN            1 "What relations in the literature match tofacitinib" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What relations in the literature match tofacitinib?"
 (:VAR MV7932 :ISA WH-QUESTION :STATEMENT MV7931 :VAR NIL :WH WHAT)
 (:VAR MV7931 :ISA PREPOSITIONAL-PHRASE :POBJ MV7930 :PREP "IN")
 (:VAR MV7930 :ISA DRUG :HAS-DETERMINER "THE" :MODIFIER MV7927 :MODIFIER MV7929
  :RAW-TEXT "tofacitinib" :NAME "tasocitinib" :UID "NCIT:C95800")
 (:VAR MV7927 :ISA LITERATURE) (:VAR MV7929 :ISA MATCH-ENDURANT))

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
