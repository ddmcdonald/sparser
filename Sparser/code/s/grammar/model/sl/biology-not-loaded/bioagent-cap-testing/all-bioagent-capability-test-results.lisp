

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
e11   INVOLVE       1 "Is STAT3 involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptosis?"
 (:VAR MV453 :ISA POLAR-QUESTION :STATEMENT MV452)
 (:VAR MV452 :ISA INVOLVE :THEME MV446 :THEME MV450 :PAST "PAST")
 (:VAR MV446 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV450 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
51: "Is STAT3 involved in apoptotic regulation?"

                    SOURCE-START
e14   INVOLVE       1 "Is STAT3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptotic regulation?"
 (:VAR MV463 :ISA POLAR-QUESTION :STATEMENT MV462)
 (:VAR MV462 :ISA INVOLVE :THEME MV454 :THEME MV460 :PAST "PAST")
 (:VAR MV454 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV460 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV458 :RAW-TEXT
  "regulation")
 (:VAR MV458 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
52: "Is STAT3 involved in regulating apoptosis?"

                    SOURCE-START
e13   INVOLVE       1 "Is STAT3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in regulating apoptosis?"
 (:VAR MV472 :ISA POLAR-QUESTION :STATEMENT MV471)
 (:VAR MV471 :ISA INVOLVE :THEME MV464 :THEME MV468 :PAST "PAST")
 (:VAR MV464 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV468 :ISA REGULATE :AFFECTED-PROCESS MV469 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV469 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
53: "What apoptotic genes are regulated by STAT3"

                    SOURCE-START
e15   REGULATE      1 "What apoptotic genes are regulated by STAT3" 9
                    END-OF-SOURCE
("What apoptotic genes are regulated by STAT3"
 (:VAR MV481 :ISA REGULATE :OBJECT MV477 :AGENT MV473 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV477 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV475 :RAW-TEXT
  "genes")
 (:VAR MV475 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV473 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
54: "List the apoptotic genes"

                    SOURCE-START
e8    LIST          1 "List the apoptotic genes" 5
                    END-OF-SOURCE
("List the apoptotic genes"
 (:VAR MV483 :ISA LIST :THEME MV487 :PRESENT "PRESENT")
 (:VAR MV487 :ISA GENE :HAS-DETERMINER "THE" :CELLULAR-PROCESS MV485 :RAW-TEXT
  "genes")
 (:VAR MV485 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
55: "What genes regulated by STAT3 are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes regulated by STAT3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by STAT3 are involved in apoptosis?"
 (:VAR MV497 :ISA INVOLVE :THEME MV490 :THEME MV496 :PRESENT "PRESENT")
 (:VAR MV490 :ISA GENE :PREDICATION MV491 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV491 :ISA REGULATE :OBJECT MV490 :AGENT MV488 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV488 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV496 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
56: "List genes regulated by STAT3"

                    SOURCE-START
e9    LIST          1 "List genes regulated by STAT3" 7
                    END-OF-SOURCE
("List genes regulated by STAT3"
 (:VAR MV501 :ISA LIST :THEME MV502 :PRESENT "PRESENT")
 (:VAR MV502 :ISA GENE :PREDICATION MV503 :RAW-TEXT "genes")
 (:VAR MV503 :ISA REGULATE :OBJECT MV502 :AGENT MV500 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV500 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
57: "What genes are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What genes are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in apoptosis?"
 (:VAR MV512 :ISA INVOLVE :THEME MV507 :THEME MV511 :PRESENT "PRESENT")
 (:VAR MV507 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV511 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
58: "What genes that STAT3 regulates are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes that STAT3 regulates are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes that STAT3 regulates are involved in apoptosis?"
 (:VAR MV523 :ISA INVOLVE :THEME MV516 :THEME MV522 :PRESENT "PRESENT")
 (:VAR MV516 :ISA GENE :PREDICATION MV518 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV518 :ISA REGULATE :OBJECT MV516 :THAT-REL T :AGENT MV514 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV514 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV522 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
59: "List the genes regulated by STAT3"

                    SOURCE-START
e12   LIST          1 "List the genes regulated by STAT3" 8
                    END-OF-SOURCE
("List the genes regulated by STAT3"
 (:VAR MV526 :ISA LIST :THEME MV528 :PRESENT "PRESENT")
 (:VAR MV528 :ISA GENE :PREDICATION MV529 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV529 :ISA REGULATE :OBJECT MV528 :AGENT MV525 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV525 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
60: "List the STAT3 regulated genes"

                    SOURCE-START
e11   LIST          1 "List the STAT3 regulated genes" 7
                    END-OF-SOURCE
("List the STAT3 regulated genes"
 (:VAR MV533 :ISA LIST :THEME MV536 :PRESENT "PRESENT")
 (:VAR MV536 :ISA GENE :HAS-DETERMINER "THE" :PREDICATION MV535 :RAW-TEXT
  "genes")
 (:VAR MV535 :ISA REGULATE :OBJECT MV536 :AGENT MV532 :RAW-TEXT "regulated")
 (:VAR MV532 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
61: "What kinases are regulated by STAT3?"

                    SOURCE-START
e12   REGULATE      1 "What kinases are regulated by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are regulated by STAT3?"
 (:VAR MV543 :ISA REGULATE :OBJECT MV539 :AGENT MV537 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV539 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV537 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
62: "What kinases are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What kinases are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are involved in apoptosis?"
 (:VAR MV551 :ISA INVOLVE :THEME MV546 :THEME MV550 :PRESENT "PRESENT")
 (:VAR MV546 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV550 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

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
 (:VAR MV564 :ISA LET :COMPLEMENT MV581 :PRESENT "PRESENT")
 (:VAR MV581 :ISA KNOW :AGENT MV565 :STATEMENT MV580 :PRESENT "PRESENT")
 (:VAR MV565 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV580 :ISA WH-QUESTION :STATEMENT MV577 :WH IF)
 (:VAR MV577 :ISA INVOLVE :THEME MV571 :THEME MV576 :PRESENT "PRESENT")
 (:VAR MV571 :ISA GENE :QUANTIFIER MV568 :PREDICATION MV572 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV568 :ISA ANY :WORD "any")
 (:VAR MV572 :ISA REGULATE :OBJECT MV571 :AGENT MV563 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV563 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV576 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
65: "Let me know whether any of the genes stat3 regulates are involved in apoptosis"

                    SOURCE-START
e32   LET           1 "Let me know whether any of the genes stat3 regulates are involved in apoptosis" 16
                    END-OF-SOURCE
("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
 (:VAR MV583 :ISA LET :COMPLEMENT MV601 :PRESENT "PRESENT")
 (:VAR MV601 :ISA KNOW :AGENT MV584 :STATEMENT MV600 :PRESENT "PRESENT")
 (:VAR MV584 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV600 :ISA WH-QUESTION :STATEMENT MV597 :WH WHETHER)
 (:VAR MV597 :ISA INVOLVE :THEME MV591 :THEME MV596 :PRESENT "PRESENT")
 (:VAR MV591 :ISA GENE :QUANTIFIER MV588 :PREDICATION MV592 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV588 :ISA ANY :WORD "any")
 (:VAR MV592 :ISA REGULATE :OBJECT MV591 :AGENT MV582 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV582 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV596 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

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
 (:VAR MV631 :ISA TELL :THEME MV640 :BENEFICIARY MV632 :PRESENT "PRESENT")
 (:VAR MV640 :ISA WH-QUESTION :STATEMENT MV638 :WH IF)
 (:VAR MV638 :ISA INVOLVE :THEME MV630 :THEME MV637 :PRESENT "PRESENT")
 (:VAR MV630 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV637 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV632 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
69: "Tell me whether stat3 is involved in apoptosis"

                    SOURCE-START
e17   TELL          1 "Tell me whether stat3 is involved in apoptosis" 10
                    END-OF-SOURCE
("Tell me whether stat3 is involved in apoptosis"
 (:VAR MV642 :ISA TELL :THEME MV652 :THEME MV643 :PRESENT "PRESENT")
 (:VAR MV652 :ISA WH-QUESTION :STATEMENT MV650 :WH WHETHER)
 (:VAR MV650 :ISA INVOLVE :THEME MV641 :THEME MV649 :PRESENT "PRESENT")
 (:VAR MV641 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV649 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV643 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
70: "What are STAT3 regulated genes that are involved in apoptosis. "

                    SOURCE-START
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    PERIOD
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis."
 (:VAR MV655 :ISA BE :SUBJECT MV654 :PREDICATE MV657 :PRESENT "PRESENT")
 (:VAR MV654 :ISA WHAT)
 (:VAR MV657 :ISA GENE :PREDICATION MV663 :EXPRESSES MV653 :PREDICATION MV656
  :RAW-TEXT "genes")
 (:VAR MV663 :ISA INVOLVE :THEME MV657 :THAT-REL T :THEME MV662 :PRESENT
  "PRESENT")
 (:VAR MV662 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV653 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV656 :ISA REGULATE :OBJECT MV657 :RAW-TEXT "regulated"))

___________________
71: "What are STAT3 regulated genes that are involved in apoptosis?"

                    SOURCE-START
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis?"
 (:VAR MV667 :ISA BE :SUBJECT MV666 :PREDICATE MV669 :PRESENT "PRESENT")
 (:VAR MV666 :ISA WHAT)
 (:VAR MV669 :ISA GENE :PREDICATION MV675 :EXPRESSES MV665 :PREDICATION MV668
  :RAW-TEXT "genes")
 (:VAR MV675 :ISA INVOLVE :THEME MV669 :THAT-REL T :THEME MV674 :PRESENT
  "PRESENT")
 (:VAR MV674 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV665 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV668 :ISA REGULATE :OBJECT MV669 :RAW-TEXT "regulated"))

___________________
72: "What genes downstream of stat3 are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes downstream of stat3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes downstream of stat3 are involved in apoptosis?"
 (:VAR MV687 :ISA INVOLVE :THEME MV680 :THEME MV686 :PRESENT "PRESENT")
 (:VAR MV680 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV677 :HAS-DETERMINER
  "WHAT" :MODIFIER MV679 :RAW-TEXT "downstream")
 (:VAR MV677 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV679 :ISA GENE :RAW-TEXT "genes")
 (:VAR MV686 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
73: "What is the involvement of stat3 in apoptotic regulation?"

                    SOURCE-START
e21   BE            1 "What is the involvement of stat3 in apoptotic regulation" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the involvement of stat3 in apoptotic regulation?"
 (:VAR MV692 :ISA BE :SUBJECT MV691 :PREDICATE MV694 :PRESENT "PRESENT")
 (:VAR MV691 :ISA WHAT)
 (:VAR MV694 :ISA INVOLVE :THEME MV699 :PARTICIPANT MV690 :HAS-DETERMINER
  "THE")
 (:VAR MV699 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV697 :RAW-TEXT
  "regulation")
 (:VAR MV697 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV690 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
74: "What pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve calcium?"
 (:VAR MV704 :ISA INVOLVE :THEME MV703 :THEME MV705 :PRESENT "PRESENT")
 (:VAR MV703 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV705 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
75: "What processes involve srf"

                    SOURCE-START
e7    INVOLVE       1 "What processes involve srf" 5
                    END-OF-SOURCE
("What processes involve srf"
 (:VAR MV709 :ISA INVOLVE :THEME MV707 :THEME MV710 :PRESENT "PRESENT")
 (:VAR MV707 :ISA BIO-PROCESS :HAS-DETERMINER "WHAT" :RAW-TEXT "processes")
 (:VAR MV710 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
76: "Which stat3 regulated genes are involved in apoptosis?"

                    SOURCE-START
e17   INVOLVE       1 "Which stat3 regulated genes are involved in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes are involved in apoptosis?"
 (:VAR MV719 :ISA INVOLVE :THEME MV714 :THEME MV718 :PRESENT "PRESENT")
 (:VAR MV714 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV713 :RAW-TEXT
  "genes")
 (:VAR MV713 :ISA REGULATE :OBJECT MV714 :AGENT MV711 :RAW-TEXT "regulated")
 (:VAR MV711 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV718 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
77: "Which stat3 regulated genes in the liver are involved in apoptosis?"

                    SOURCE-START
e25   INVOLVE       1 "Which stat3 regulated genes in the liver are involved in apoptosis" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes in the liver are involved in apoptosis?"
 (:VAR MV732 :ISA INVOLVE :THEME MV724 :THEME MV731 :PRESENT "PRESENT")
 (:VAR MV724 :ISA GENE :ORGAN MV727 :HAS-DETERMINER "WHICH" :PREDICATION MV723
  :RAW-TEXT "genes")
 (:VAR MV727 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV723 :ISA REGULATE :OBJECT MV724 :AGENT MV721 :RAW-TEXT "regulated")
 (:VAR MV721 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV731 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
78: "Which stat3-regulated genes are involved in apoptosis?"

                    SOURCE-START
e18   INVOLVE       1 "Which stat3-regulated genes are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3-regulated genes are involved in apoptosis?"
 (:VAR MV743 :ISA INVOLVE :THEME MV738 :THEME MV742 :PRESENT "PRESENT")
 (:VAR MV738 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV737 :RAW-TEXT
  "genes")
 (:VAR MV737 :ISA REGULATE :OBJECT MV738 :AGENT MV735 :RAW-TEXT "regulated")
 (:VAR MV735 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV742 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
79: "Mek activates MAPK1."

                    SOURCE-START
e5    BIO-ACTIVATE  1 "Mek activates MAPK1" 5
                    PERIOD
                    END-OF-SOURCE
("Mek activates MAPK1."
 (:VAR MV747 :ISA BIO-ACTIVATE :AGENT MV746 :OBJECT MV745 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV746 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV745 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
80: "NRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "NRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("NRAS activates RAF."
 (:VAR MV749 :ISA BIO-ACTIVATE :AGENT MV748 :OBJECT MV750 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV748 :ISA PROTEIN :RAW-TEXT "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV750 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
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
 (:VAR MV753 :ISA PHOSPHORYLATE :AGENT MV751 :SUBSTRATE MV752 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV751 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV752 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
82: "DUSP6 dephosphorylates MAPK1"

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1"
 (:VAR MV756 :ISA DEPHOSPHORYLATE :AGENT MV754 :SUBSTRATE MV755 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV754 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV755 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
83: "ELK1 positively regulates FOS."

                    SOURCE-START
e6    UPREGULATE    1 "ELK1 positively regulates FOS" 6
                    PERIOD
                    END-OF-SOURCE
("ELK1 positively regulates FOS."
 (:VAR MV758 :ISA UPREGULATE :AGENT MV757 :OBJECT MV759 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV757 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV759 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
84: "EGFR binds the growth factor ligand EGF."

                    SOURCE-START
e13   BINDING       1 "EGFR binds the growth factor ligand EGF" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR binds the growth factor ligand EGF."
 (:VAR MV763 :ISA BINDING :BINDER MV762 :DIRECT-BINDEE MV766 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV762 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV766 :ISA PROTEIN :HAS-DETERMINER "THE" :MODIFIER MV761 :MODIFIER MV765
  :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV761 :ISA GROWTH-FACTOR :RAW-TEXT "growth factor")
 (:VAR MV765 :ISA LIGAND :RAW-TEXT "ligand"))

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
 (:VAR MV773 :ISA BINDING :BINDER MV780 :DIRECT-BINDEE MV781 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV780 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGF"
  :COMPONENT MV771 :COMPONENT MV770)
 (:VAR MV771 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV770 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV781 :ISA BIO-COMPLEX :QUANTIFIER MV774 :RAW-TEXT "EGFR-EGF" :COMPONENT
  MV776 :COMPONENT MV775)
 (:VAR MV774 :ISA ANOTHER :WORD "another")
 (:VAR MV776 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV775 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
87: "The EGFR-EGFR complex binds GRB2."

                    SOURCE-START
e13   BINDING       1 "The EGFR-EGFR complex binds GRB2" 9
                    PERIOD
                    END-OF-SOURCE
("The EGFR-EGFR complex binds GRB2."
 (:VAR MV787 :ISA BINDING :BINDER MV789 :DIRECT-BINDEE MV782 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV789 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGFR"
  :COMPONENT MV784 :COMPONENT MV784)
 (:VAR MV784 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV784 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV782 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN"))

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
 (:VAR MV796 :ISA BINDING :BINDER MV792 :DIRECT-BINDEE MV793 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV792 :ISA PROTEIN :PREDICATION MV795 :RAW-TEXT "GRB2" :UID "UP:P62993"
  :NAME "GRB2_HUMAN")
 (:VAR MV795 :ISA BINDING :DIRECT-BINDEE MV792 :BINDER MV794 :RAW-TEXT "bound")
 (:VAR MV794 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV793 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN"))

___________________
90: "GRB2-bound SOS1 binds NRAS that is not bound to BRAF."

                    SOURCE-START
e27   BINDING       1 "GRB2-bound SOS1 binds NRAS that is not bound to BRAF" 15
                    PERIOD
                    END-OF-SOURCE
("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
 (:VAR MV800 :ISA BINDING :BINDER MV798 :DIRECT-BINDEE MV801 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV798 :ISA PROTEIN :PREDICATION MV799 :RAW-TEXT "SOS1" :UID "UP:Q07889"
  :NAME "SOS1_HUMAN")
 (:VAR MV799 :ISA BINDING :DIRECT-BINDEE MV798 :BINDER MV797 :RAW-TEXT "bound")
 (:VAR MV797 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN")
 (:VAR MV801 :ISA PROTEIN :PREDICATION MV808 :RAW-TEXT "NRAS" :UID "UP:P01111"
  :NAME "RASN_HUMAN")
 (:VAR MV808 :ISA BINDING :DIRECT-BINDEE MV801 :THAT-REL T :BINDEE MV807
  :PRESENT "PRESENT" :NEGATION MV804 :RAW-TEXT "bound")
 (:VAR MV807 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV804 :ISA NOT :WORD "not"))

___________________
91: "SOS1-bound NRAS binds GTP."

                    SOURCE-START
e11   BINDING       1 "SOS1-bound NRAS binds GTP" 8
                    PERIOD
                    END-OF-SOURCE
("SOS1-bound NRAS binds GTP."
 (:VAR MV813 :ISA BINDING :BINDER MV812 :DIRECT-BINDEE MV814 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV812 :ISA PROTEIN :PREDICATION MV811 :RAW-TEXT "NRAS" :UID "UP:P01111"
  :NAME "RASN_HUMAN")
 (:VAR MV811 :ISA BINDING :DIRECT-BINDEE MV812 :BINDER MV810 :RAW-TEXT "bound")
 (:VAR MV810 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV814 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP"))

___________________
92: "GTP-bound NRAS that is not bound to SOS1 binds BRAF."

                    SOURCE-START
e26   BINDING       1 "GTP-bound NRAS that is not bound to SOS1 binds BRAF" 14
                    PERIOD
                    END-OF-SOURCE
("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
 (:VAR MV824 :ISA BINDING :BINDER MV818 :DIRECT-BINDEE MV825 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV818 :ISA PROTEIN :PREDICATION MV826 :PREDICATION MV817 :RAW-TEXT
  "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV826 :ISA BINDING :DIRECT-BINDEE MV818 :THAT-REL T :BINDEE MV815
  :PRESENT "PRESENT" :NEGATION MV821 :RAW-TEXT "bound")
 (:VAR MV815 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV821 :ISA NOT :WORD "not")
 (:VAR MV817 :ISA BINDING :DIRECT-BINDEE MV818 :BINDER MV816 :RAW-TEXT "bound")
 (:VAR MV816 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP")
 (:VAR MV825 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
93: "Undo"

                    SOURCE-START
e0    UNDO          1 "Undo" 2
                    END-OF-SOURCE
("Undo" (:VAR MV828 :ISA UNDO :PRESENT "PRESENT" :RAW-TEXT "Undo"))

___________________
94: "How does BRAF affect MAP2K1?"

                    SOURCE-START
e8    AFFECT        1 "How does BRAF affect MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does BRAF affect MAP2K1?"
 (:VAR MV833 :ISA AFFECT :MANNER MV830 :AGENT MV832 :OBJECT MV829 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV830 :ISA HOW)
 (:VAR MV832 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV829 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
95: "Let's highlight the downstream of AKT1."

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's highlight the downstream of AKT1" 10
                    PERIOD
                    END-OF-SOURCE
("Let's highlight the downstream of AKT1."
 (:VAR MV842 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV836 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV836 :ISA HIGHLIGHT :THEME MV838 :PRESENT "PRESENT")
 (:VAR MV838 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV835 :HAS-DETERMINER
  "THE" :RAW-TEXT "downstream")
 (:VAR MV835 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
96: "Let's move phosphorylated MAPK1 to the bottom."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated MAPK1 to the bottom" 11
                    PERIOD
                    END-OF-SOURCE
("Let's move phosphorylated MAPK1 to the bottom."
 (:VAR MV851 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV845 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV845 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV849 :THEME MV844 :PRESENT
  "PRESENT")
 (:VAR MV849 :ISA BOTTOM :HAS-DETERMINER "THE")
 (:VAR MV844 :ISA PROTEIN :PREDICATION MV846 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV846 :ISA PHOSPHORYLATE :SUBSTRATE MV844 :RAW-TEXT "phosphorylated"))

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
 (:VAR MV868 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV863 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV863 :ISA SHOW :AT-RELATIVE-LOCATION MV866 :STATEMENT-OR-THEME MV862
  :PRESENT "PRESENT")
 (:VAR MV866 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV862 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
99: "Does ELK1 decrease FOS in the model?"

                    SOURCE-START
e18   DECREASE      1 "Does ELK1 decrease FOS in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ELK1 decrease FOS in the model?"
 (:VAR MV879 :ISA POLAR-QUESTION :STATEMENT MV877)
 (:VAR MV877 :ISA DECREASE :AGENT MV869 :OBJECT MV873 :RAW-TEXT "decrease")
 (:VAR MV869 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV873 :ISA PROTEIN :INFO-CONTEXT MV876 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV876 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
100: "Does ELK1 decrease the amount of FOS in the model?"

                    SOURCE-START
e26   DECREASE      1 "Does ELK1 decrease the amount of FOS in the model" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ELK1 decrease the amount of FOS in the model?"
 (:VAR MV894 :ISA POLAR-QUESTION :STATEMENT MV891)
 (:VAR MV891 :ISA DECREASE :AGENT MV880 :AFFECTED-PROCESS-OR-OBJECT MV885
  :RAW-TEXT "decrease")
 (:VAR MV880 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV885 :ISA BIO-AMOUNT :MEASURED-ITEM MV887 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV887 :ISA PROTEIN :INFO-CONTEXT MV890 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV890 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
101: "Does FOS decrease ELK1 in the model?"

                    SOURCE-START
e18   DECREASE      1 "Does FOS decrease ELK1 in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS decrease ELK1 in the model?"
 (:VAR MV905 :ISA POLAR-QUESTION :STATEMENT MV903)
 (:VAR MV903 :ISA DECREASE :AGENT MV897 :OBJECT MV895 :RAW-TEXT "decrease")
 (:VAR MV897 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV895 :ISA PROTEIN :INFO-CONTEXT MV902 :RAW-TEXT "ELK1" :UID "UP:P19419"
  :NAME "ELK1_HUMAN")
 (:VAR MV902 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
102: "Does FOS vanish if we increase the amount of ELK1 10 fold?"

                    SOURCE-START
e34   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS vanish if we increase the amount of ELK1 10 fold?"
 (:VAR MV926 :ISA POLAR-QUESTION :STATEMENT MV925)
 (:VAR MV925 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV923 :EVENT MV920)
 (:VAR MV923 :ISA WH-QUESTION :STATEMENT MV921 :WH IF)
 (:VAR MV921 :ISA INCREASE :AGENT-OR-CAUSE MV911 :ADVERB MV919
  :AFFECTED-PROCESS-OR-OBJECT MV915 :RAW-TEXT "increase")
 (:VAR MV911 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV919 :ISA N-FOLD :NUMBER MV918) (:VAR MV918 :ISA NUMBER :VALUE 10)
 (:VAR MV915 :ISA BIO-AMOUNT :MEASURED-ITEM MV906 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV906 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV920 :ISA VANISH :AGENT MV908 :RAW-TEXT "vanish")
 (:VAR MV908 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
103: "Does FOS vanish if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e37   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 by 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV949 :ISA POLAR-QUESTION :STATEMENT MV948)
 (:VAR MV948 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV946 :EVENT MV942)
 (:VAR MV946 :ISA WH-QUESTION :STATEMENT MV943 :WH IF)
 (:VAR MV943 :ISA INCREASE :AGENT-OR-CAUSE MV932 :MULTIPLIER MV941
  :AFFECTED-PROCESS-OR-OBJECT MV936 :RAW-TEXT "increase")
 (:VAR MV932 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV941 :ISA N-FOLD :NUMBER MV940) (:VAR MV940 :ISA NUMBER :VALUE 10)
 (:VAR MV936 :ISA BIO-AMOUNT :MEASURED-ITEM MV927 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV927 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV942 :ISA VANISH :AGENT MV929 :RAW-TEXT "vanish")
 (:VAR MV929 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
104: "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
 (:VAR MV969 :ISA POLAR-QUESTION :STATEMENT MV968)
 (:VAR MV968 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV966 :EVENT MV963)
 (:VAR MV966 :ISA WH-QUESTION :STATEMENT MV964 :WH IF)
 (:VAR MV964 :ISA INCREASE :AGENT-OR-CAUSE MV956 :MULTIPLIER MV962 :OBJECT
  MV951 :RAW-TEXT "increase")
 (:VAR MV956 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV962 :ISA N-FOLD :NUMBER MV961) (:VAR MV961 :ISA NUMBER :VALUE 10)
 (:VAR MV951 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV963 :ISA VANISH :AGENT MV950 :RAW-TEXT "vanish")
 (:VAR MV950 :ISA PROTEIN :PREDICATION MV953 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV953 :ISA PHOSPHORYLATE :SUBSTRATE MV950 :RAW-TEXT "phosphorylated"))

___________________
105: "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e41   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV993 :ISA POLAR-QUESTION :STATEMENT MV992)
 (:VAR MV992 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV990 :EVENT MV986)
 (:VAR MV990 :ISA WH-QUESTION :STATEMENT MV987 :WH IF)
 (:VAR MV987 :ISA INCREASE :AGENT-OR-CAUSE MV976 :MULTIPLIER MV985
  :AFFECTED-PROCESS-OR-OBJECT MV980 :RAW-TEXT "increase")
 (:VAR MV976 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV985 :ISA N-FOLD :NUMBER MV984) (:VAR MV984 :ISA NUMBER :VALUE 10)
 (:VAR MV980 :ISA BIO-AMOUNT :MEASURED-ITEM MV971 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV971 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV986 :ISA VANISH :AGENT MV970 :RAW-TEXT "vanish")
 (:VAR MV970 :ISA PROTEIN :PREDICATION MV973 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV973 :ISA PHOSPHORYLATE :SUBSTRATE MV970 :RAW-TEXT "phosphorylated"))

___________________
106: "Does the amount of phosphorylated MAPK1 ever increase?"

                    SOURCE-START
e21   INCREASE      1 "Does the amount of phosphorylated MAPK1 ever increase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 ever increase?"
 (:VAR MV1005 :ISA POLAR-QUESTION :STATEMENT MV1003)
 (:VAR MV1003 :ISA INCREASE :CAUSE MV997 :ADVERB MV1000 :RAW-TEXT "increase")
 (:VAR MV997 :ISA BIO-AMOUNT :MEASURED-ITEM MV994 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV994 :ISA PROTEIN :PREDICATION MV999 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV999 :ISA PHOSPHORYLATE :SUBSTRATE MV994 :RAW-TEXT "phosphorylated")
 (:VAR MV1000 :ISA EVER :NAME "ever"))

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
 (:VAR MV1027 :ISA POLAR-QUESTION :STATEMENT MV1026)
 (:VAR MV1026 :ISA SUSTAINED :PARTICIPANT MV1022 :PAST "PAST")
 (:VAR MV1022 :ISA PROTEIN :PREDICATION MV1024 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1024 :ISA BINDING :DIRECT-BINDEE MV1022 :BINDER MV1021 :RAW-TEXT
  "bound")
 (:VAR MV1021 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
110: "Is phosphorylated MAPK1 always high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 always high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 always high?"
 (:VAR MV1034 :ISA POLAR-QUESTION :STATEMENT MV1033)
 (:VAR MV1033 :ISA COPULAR-PREDICATION :ITEM MV1028 :VALUE MV1032 :PREDICATE
  MV1029)
 (:VAR MV1028 :ISA PROTEIN :PREDICATION MV1030 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1030 :ISA PHOSPHORYLATE :SUBSTRATE MV1028 :RAW-TEXT "phosphorylated")
 (:VAR MV1032 :ISA HIGH :ADVERB MV1031)
 (:VAR MV1031 :ISA ALWAYS :NAME "always") (:VAR MV1029 :ISA BE))

___________________
111: "Is phosphorylated MAPK1 eventually high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 eventually high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 eventually high?"
 (:VAR MV1041 :ISA POLAR-QUESTION :STATEMENT MV1040)
 (:VAR MV1040 :ISA COPULAR-PREDICATION :ITEM MV1035 :VALUE MV1039 :PREDICATE
  MV1036)
 (:VAR MV1035 :ISA PROTEIN :PREDICATION MV1037 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1037 :ISA PHOSPHORYLATE :SUBSTRATE MV1035 :RAW-TEXT "phosphorylated")
 (:VAR MV1039 :ISA HIGH :ADVERB MV1038)
 (:VAR MV1038 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1036 :ISA BE))

___________________
112: "Is phosphorylated MAPK1 ever high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 ever high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 ever high?"
 (:VAR MV1048 :ISA POLAR-QUESTION :STATEMENT MV1047)
 (:VAR MV1047 :ISA COPULAR-PREDICATION :ITEM MV1042 :VALUE MV1046 :PREDICATE
  MV1043)
 (:VAR MV1042 :ISA PROTEIN :PREDICATION MV1044 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1044 :ISA PHOSPHORYLATE :SUBSTRATE MV1042 :RAW-TEXT "phosphorylated")
 (:VAR MV1046 :ISA HIGH :ADVERB MV1045) (:VAR MV1045 :ISA EVER :NAME "ever")
 (:VAR MV1043 :ISA BE))

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
 (:VAR MV1064 :ISA POLAR-QUESTION :STATEMENT MV1063)
 (:VAR MV1063 :ISA COPULAR-PREDICATION :ITEM MV1059 :VALUE MV1062 :PREDICATE
  MV1060)
 (:VAR MV1059 :ISA PROTEIN :PREDICATION MV1061 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1061 :ISA PHOSPHORYLATE :SUBSTRATE MV1059 :RAW-TEXT "phosphorylated")
 (:VAR MV1062 :ISA HIGH) (:VAR MV1060 :ISA BE))

___________________
115: "Is phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e20   SUSTAINED     1 "Is phosphorylated MAPK1 sustained at a high level" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1076 :ISA POLAR-QUESTION :STATEMENT MV1075)
 (:VAR MV1075 :ISA SUSTAINED :PARTICIPANT MV1065 :LEVEL MV1073 :PAST "PAST")
 (:VAR MV1065 :ISA PROTEIN :PREDICATION MV1067 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1067 :ISA PHOSPHORYLATE :SUBSTRATE MV1065 :RAW-TEXT "phosphorylated")
 (:VAR MV1073 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1072 :RAW-TEXT
  "level")
 (:VAR MV1072 :ISA HIGH))

___________________
116: "Is phosphorylated MAPK1 sustained?"

                    SOURCE-START
e9    SUSTAINED     1 "Is phosphorylated MAPK1 sustained" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained?"
 (:VAR MV1082 :ISA POLAR-QUESTION :STATEMENT MV1081)
 (:VAR MV1081 :ISA SUSTAINED :PARTICIPANT MV1077 :PAST "PAST")
 (:VAR MV1077 :ISA PROTEIN :PREDICATION MV1079 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1079 :ISA PHOSPHORYLATE :SUBSTRATE MV1077 :RAW-TEXT "phosphorylated"))

___________________
117: "Is phosphorylated MAPK1 transient?"

                    SOURCE-START
e9    COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 transient" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 transient?"
 (:VAR MV1088 :ISA POLAR-QUESTION :STATEMENT MV1087)
 (:VAR MV1087 :ISA COPULAR-PREDICATION :ITEM MV1083 :VALUE MV1086 :PREDICATE
  MV1084)
 (:VAR MV1083 :ISA PROTEIN :PREDICATION MV1085 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1085 :ISA PHOSPHORYLATE :SUBSTRATE MV1083 :RAW-TEXT "phosphorylated")
 (:VAR MV1086 :ISA TRANSIENT) (:VAR MV1084 :ISA BE))

___________________
118: "Is the MAP2K1-MAPK1 complex ever high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the MAP2K1-MAPK1 complex ever high" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex ever high?"
 (:VAR MV1099 :ISA POLAR-QUESTION :STATEMENT MV1098)
 (:VAR MV1098 :ISA COPULAR-PREDICATION :ITEM MV1097 :VALUE MV1095 :PREDICATE
  MV1091)
 (:VAR MV1097 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV1090 :COMPONENT MV1089)
 (:VAR MV1090 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1089 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV1095 :ISA HIGH :ADVERB MV1094) (:VAR MV1094 :ISA EVER :NAME "ever")
 (:VAR MV1091 :ISA BE))

___________________
119: "Is the MAP2K1-MAPK1 complex formed?"

                    SOURCE-START
e14   BIO-FORM      1 "Is the MAP2K1-MAPK1 complex formed" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex formed?"
 (:VAR MV1108 :ISA POLAR-QUESTION :STATEMENT MV1105)
 (:VAR MV1105 :ISA BIO-FORM :AGENT MV1107 :PAST "PAST" :RAW-TEXT "formed")
 (:VAR MV1107 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV1101 :COMPONENT MV1100)
 (:VAR MV1101 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1100 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
120: "Is the amount of FOS always low if we increase ELK1 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 10 fold?"
 (:VAR MV1129 :ISA POLAR-QUESTION :STATEMENT MV1128)
 (:VAR MV1128 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1124 :EVENT MV1126)
 (:VAR MV1124 :ISA WH-QUESTION :STATEMENT MV1120 :WH IF)
 (:VAR MV1120 :ISA INCREASE :AGENT-OR-CAUSE MV1118 :ADVERB MV1123 :OBJECT
  MV1109 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1118 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1123 :ISA N-FOLD :NUMBER MV1122) (:VAR MV1122 :ISA NUMBER :VALUE 10)
 (:VAR MV1109 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1126 :ISA COPULAR-PREDICATION :ITEM MV1112 :VALUE MV1116 :PREDICATE
  MV1110)
 (:VAR MV1112 :ISA BIO-AMOUNT :MEASURED-ITEM MV1114 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1114 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1116 :ISA LOW :ADVERB MV1115) (:VAR MV1115 :ISA ALWAYS :NAME "always")
 (:VAR MV1110 :ISA BE))

___________________
121: "Is the amount of FOS always low if we increase ELK1 by 100 fold?"

                    SOURCE-START
e36   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 by 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
 (:VAR MV1152 :ISA POLAR-QUESTION :STATEMENT MV1151)
 (:VAR MV1151 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1147 :EVENT MV1149)
 (:VAR MV1147 :ISA WH-QUESTION :STATEMENT MV1141 :WH IF)
 (:VAR MV1141 :ISA INCREASE :AGENT-OR-CAUSE MV1139 :MULTIPLIER MV1145 :OBJECT
  MV1130 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1139 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1145 :ISA N-FOLD :NUMBER MV1144) (:VAR MV1144 :ISA NUMBER :VALUE 100)
 (:VAR MV1130 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1149 :ISA COPULAR-PREDICATION :ITEM MV1133 :VALUE MV1137 :PREDICATE
  MV1131)
 (:VAR MV1133 :ISA BIO-AMOUNT :MEASURED-ITEM MV1135 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1135 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1137 :ISA LOW :ADVERB MV1136) (:VAR MV1136 :ISA ALWAYS :NAME "always")
 (:VAR MV1131 :ISA BE))

___________________
122: "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"

                    SOURCE-START
e41   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
 (:VAR MV1177 :ISA POLAR-QUESTION :STATEMENT MV1176)
 (:VAR MV1176 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1172 :EVENT MV1174)
 (:VAR MV1172 :ISA WH-QUESTION :STATEMENT MV1164 :WH IF)
 (:VAR MV1164 :ISA INCREASE :AGENT-OR-CAUSE MV1162 :ADVERB MV1170
  :AFFECTED-PROCESS-OR-OBJECT MV1166 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1162 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1170 :ISA N-FOLD :NUMBER MV1169) (:VAR MV1169 :ISA NUMBER :VALUE 100)
 (:VAR MV1166 :ISA BIO-AMOUNT :MEASURED-ITEM MV1153 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1153 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1174 :ISA COPULAR-PREDICATION :ITEM MV1156 :VALUE MV1160 :PREDICATE
  MV1154)
 (:VAR MV1156 :ISA BIO-AMOUNT :MEASURED-ITEM MV1158 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1158 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1160 :ISA HIGH :ADVERB MV1159) (:VAR MV1159 :ISA EVER :NAME "ever")
 (:VAR MV1154 :ISA BE))

___________________
123: "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"

                    SOURCE-START
e44   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
 (:VAR MV1204 :ISA POLAR-QUESTION :STATEMENT MV1203)
 (:VAR MV1203 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1199 :EVENT MV1201)
 (:VAR MV1199 :ISA WH-QUESTION :STATEMENT MV1189 :WH IF)
 (:VAR MV1189 :ISA INCREASE :AGENT-OR-CAUSE MV1187 :MULTIPLIER MV1196
  :AFFECTED-PROCESS-OR-OBJECT MV1191 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1187 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1196 :ISA N-FOLD :NUMBER MV1195) (:VAR MV1195 :ISA NUMBER :VALUE 100)
 (:VAR MV1191 :ISA BIO-AMOUNT :MEASURED-ITEM MV1178 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1178 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1201 :ISA COPULAR-PREDICATION :ITEM MV1181 :VALUE MV1185 :PREDICATE
  MV1179)
 (:VAR MV1181 :ISA BIO-AMOUNT :MEASURED-ITEM MV1183 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1183 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1185 :ISA HIGH :ADVERB MV1184) (:VAR MV1184 :ISA EVER :NAME "ever")
 (:VAR MV1179 :ISA BE))

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
 (:VAR MV1225 :ISA POLAR-QUESTION :STATEMENT MV1224)
 (:VAR MV1224 :ISA COPULAR-PREDICATION :ITEM MV1218 :VALUE MV1222 :PREDICATE
  MV1216)
 (:VAR MV1218 :ISA BIO-AMOUNT :MEASURED-ITEM MV1215 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1215 :ISA PROTEIN :PREDICATION MV1220 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1220 :ISA PHOSPHORYLATE :SUBSTRATE MV1215 :RAW-TEXT "phosphorylated")
 (:VAR MV1222 :ISA HIGH :ADVERB MV1221)
 (:VAR MV1221 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1216 :ISA BE))

___________________
126: "Is the amount of phosphorylated MAPK1 ever high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 ever high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever high?"
 (:VAR MV1236 :ISA POLAR-QUESTION :STATEMENT MV1235)
 (:VAR MV1235 :ISA COPULAR-PREDICATION :ITEM MV1229 :VALUE MV1233 :PREDICATE
  MV1227)
 (:VAR MV1229 :ISA BIO-AMOUNT :MEASURED-ITEM MV1226 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1226 :ISA PROTEIN :PREDICATION MV1231 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1231 :ISA PHOSPHORYLATE :SUBSTRATE MV1226 :RAW-TEXT "phosphorylated")
 (:VAR MV1233 :ISA HIGH :ADVERB MV1232) (:VAR MV1232 :ISA EVER :NAME "ever")
 (:VAR MV1227 :ISA BE))

___________________
127: "Is the amount of phosphorylated MAPK1 ever increasing?"

                    SOURCE-START
e20   INCREASE      1 "Is the amount of phosphorylated MAPK1 ever increasing" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever increasing?"
 (:VAR MV1247 :ISA POLAR-QUESTION :STATEMENT MV1245)
 (:VAR MV1245 :ISA INCREASE :CAUSE MV1240 :ADVERB MV1243 :RAW-TEXT
  "increasing")
 (:VAR MV1240 :ISA BIO-AMOUNT :MEASURED-ITEM MV1237 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1237 :ISA PROTEIN :PREDICATION MV1242 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1242 :ISA PHOSPHORYLATE :SUBSTRATE MV1237 :RAW-TEXT "phosphorylated")
 (:VAR MV1243 :ISA EVER :NAME "ever"))

___________________
128: "Is the amount of phosphorylated MAPK1 high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 high" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 high?"
 (:VAR MV1257 :ISA POLAR-QUESTION :STATEMENT MV1256)
 (:VAR MV1256 :ISA COPULAR-PREDICATION :ITEM MV1251 :VALUE MV1254 :PREDICATE
  MV1249)
 (:VAR MV1251 :ISA BIO-AMOUNT :MEASURED-ITEM MV1248 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1248 :ISA PROTEIN :PREDICATION MV1253 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1253 :ISA PHOSPHORYLATE :SUBSTRATE MV1248 :RAW-TEXT "phosphorylated")
 (:VAR MV1254 :ISA HIGH) (:VAR MV1249 :ISA BE))

___________________
129: "Is the amount of phosphorylated MAPK1 sometimes high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 sometimes high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sometimes high?"
 (:VAR MV1268 :ISA POLAR-QUESTION :STATEMENT MV1267)
 (:VAR MV1267 :ISA COPULAR-PREDICATION :ITEM MV1261 :VALUE MV1265 :PREDICATE
  MV1259)
 (:VAR MV1261 :ISA BIO-AMOUNT :MEASURED-ITEM MV1258 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1258 :ISA PROTEIN :PREDICATION MV1263 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1263 :ISA PHOSPHORYLATE :SUBSTRATE MV1258 :RAW-TEXT "phosphorylated")
 (:VAR MV1265 :ISA HIGH :ADVERB MV1264) (:VAR MV1264 :ISA SOMETIMES)
 (:VAR MV1259 :ISA BE))

___________________
130: "Is the amount of phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e28   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained at a high level" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1284 :ISA POLAR-QUESTION :STATEMENT MV1283)
 (:VAR MV1283 :ISA SUSTAINED :PARTICIPANT MV1272 :LEVEL MV1280 :PAST "PAST")
 (:VAR MV1272 :ISA BIO-AMOUNT :MEASURED-ITEM MV1269 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1269 :ISA PROTEIN :PREDICATION MV1274 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1274 :ISA PHOSPHORYLATE :SUBSTRATE MV1269 :RAW-TEXT "phosphorylated")
 (:VAR MV1280 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1279 :RAW-TEXT
  "level")
 (:VAR MV1279 :ISA HIGH))

___________________
131: "Is the amount of phosphorylated MAPK1 sustained?"

                    SOURCE-START
e17   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained?"
 (:VAR MV1294 :ISA POLAR-QUESTION :STATEMENT MV1292)
 (:VAR MV1292 :ISA SUSTAINED :PARTICIPANT MV1288 :PAST "PAST")
 (:VAR MV1288 :ISA BIO-AMOUNT :MEASURED-ITEM MV1285 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1285 :ISA PROTEIN :PREDICATION MV1290 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1290 :ISA PHOSPHORYLATE :SUBSTRATE MV1285 :RAW-TEXT "phosphorylated"))

___________________
132: "Is the amount of phosphorylated MAPK1 transient?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 transient" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 transient?"
 (:VAR MV1304 :ISA POLAR-QUESTION :STATEMENT MV1303)
 (:VAR MV1303 :ISA COPULAR-PREDICATION :ITEM MV1298 :VALUE MV1301 :PREDICATE
  MV1296)
 (:VAR MV1298 :ISA BIO-AMOUNT :MEASURED-ITEM MV1295 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1295 :ISA PROTEIN :PREDICATION MV1300 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1300 :ISA PHOSPHORYLATE :SUBSTRATE MV1295 :RAW-TEXT "phosphorylated")
 (:VAR MV1301 :ISA TRANSIENT) (:VAR MV1296 :ISA BE))

___________________
133: "Will the amount of phosphorylated MAPK1 be high?"

                    SOURCE-START
e20   COPULAR-PREDICATION 1 "Will the amount of phosphorylated MAPK1 be high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Will the amount of phosphorylated MAPK1 be high?"
 (:VAR MV1315 :ISA POLAR-QUESTION :STATEMENT MV1313)
 (:VAR MV1313 :ISA COPULAR-PREDICATION :ITEM MV1308 :VALUE MV1312 :PREDICATE
  MV1311)
 (:VAR MV1308 :ISA BIO-AMOUNT :MEASURED-ITEM MV1305 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1305 :ISA PROTEIN :PREDICATION MV1310 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1310 :ISA PHOSPHORYLATE :SUBSTRATE MV1305 :RAW-TEXT "phosphorylated")
 (:VAR MV1312 :ISA HIGH) (:VAR MV1311 :ISA BE :MODAL "WILL"))

___________________
134: "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e34   EVENT-RELATION  1 "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
 (:VAR MV1336 :ISA POLAR-QUESTION :STATEMENT MV1335)
 (:VAR MV1335 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1332 :EVENT MV1333)
 (:VAR MV1332 :ISA WH-QUESTION :STATEMENT MV1324 :WH IF)
 (:VAR MV1324 :ISA INCREASE :AGENT-OR-CAUSE MV1322 :ADVERB MV1330
  :AFFECTED-PROCESS-OR-OBJECT MV1326 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1322 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1330 :ISA N-FOLD :NUMBER MV1329) (:VAR MV1329 :ISA NUMBER :VALUE 100)
 (:VAR MV1326 :ISA BIO-AMOUNT :MEASURED-ITEM MV1317 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1317 :ISA MOLECULE :RAW-TEXT "SB525334" :NAME "sb525334" :UID
  "PCID:9967941")
 (:VAR MV1333 :ISA COPULAR-PREDICATION :ITEM MV1316 :VALUE MV1320 :PREDICATE
  MV1318)
 (:VAR MV1316 :ISA PROTEIN :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME
  "TGFR1_HUMAN")
 (:VAR MV1320 :ISA LOW :ADVERB MV1319)
 (:VAR MV1319 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1318 :ISA BE))

___________________
135: "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"

                    SOURCE-START
e39   EVENT-RELATION  1 "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
 (:VAR MV1361 :ISA POLAR-QUESTION :STATEMENT MV1360)
 (:VAR MV1360 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1357 :EVENT MV1358)
 (:VAR MV1357 :ISA WH-QUESTION :STATEMENT MV1354 :WH IF)
 (:VAR MV1354 :ISA INCREASE :AFFECTED-PROCESS-OR-OBJECT MV1345 :MULTIPLIER
  MV1352 :RAW-TEXT "increased")
 (:VAR MV1345 :ISA BIO-AMOUNT :MEASURED-ITEM MV1338 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1338 :ISA MOLECULE :RAW-TEXT "SB525334" :NAME "sb525334" :UID
  "PCID:9967941")
 (:VAR MV1352 :ISA N-FOLD :NUMBER MV1351) (:VAR MV1351 :ISA NUMBER :VALUE 100)
 (:VAR MV1358 :ISA COPULAR-PREDICATION :ITEM MV1337 :VALUE MV1342 :PREDICATE
  MV1339)
 (:VAR MV1337 :ISA PROTEIN :PREDICATION MV1340 :RAW-TEXT "TGFBR1" :UID
  "UP:P36897" :NAME "TGFR1_HUMAN")
 (:VAR MV1340 :ISA ACTIVE) (:VAR MV1342 :ISA LOW :ADVERB MV1341)
 (:VAR MV1341 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1339 :ISA BE))

___________________
136: "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e42   EVENT-RELATION  1 "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
 (:VAR MV1386 :ISA POLAR-QUESTION :STATEMENT MV1385)
 (:VAR MV1385 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1381 :EVENT MV1383)
 (:VAR MV1381 :ISA WH-QUESTION :STATEMENT MV1373 :WH IF)
 (:VAR MV1373 :ISA INCREASE :AGENT-OR-CAUSE MV1371 :ADVERB MV1379
  :AFFECTED-PROCESS-OR-OBJECT MV1375 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1371 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1379 :ISA N-FOLD :NUMBER MV1378) (:VAR MV1378 :ISA NUMBER :VALUE 100)
 (:VAR MV1375 :ISA BIO-AMOUNT :MEASURED-ITEM MV1363 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1363 :ISA MOLECULE :RAW-TEXT "SB525334" :NAME "sb525334" :UID
  "PCID:9967941")
 (:VAR MV1383 :ISA COPULAR-PREDICATION :ITEM MV1366 :VALUE MV1369 :PREDICATE
  MV1364)
 (:VAR MV1366 :ISA BIO-AMOUNT :MEASURED-ITEM MV1362 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1362 :ISA PROTEIN :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME
  "TGFR1_HUMAN")
 (:VAR MV1369 :ISA LOW :ADVERB MV1368)
 (:VAR MV1368 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1364 :ISA BE))

___________________
137: "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"

                    SOURCE-START
e44   EVENT-RELATION  1 "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold" 21
                    END-OF-SOURCE
("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
 (:VAR MV1412 :ISA POLAR-QUESTION :STATEMENT MV1411)
 (:VAR MV1411 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1407 :EVENT MV1409)
 (:VAR MV1407 :ISA WH-QUESTION :STATEMENT MV1399 :WH IF)
 (:VAR MV1399 :ISA INCREASE :AGENT-OR-CAUSE MV1397 :ADVERB MV1405
  :AFFECTED-PROCESS-OR-OBJECT MV1401 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1397 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1405 :ISA N-FOLD :NUMBER MV1404) (:VAR MV1404 :ISA NUMBER :VALUE 100)
 (:VAR MV1401 :ISA BIO-AMOUNT :MEASURED-ITEM MV1388 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1388 :ISA MOLECULE :RAW-TEXT "SB-525334" :NAME "sb525334" :UID
  "PCID:9967941")
 (:VAR MV1409 :ISA COPULAR-PREDICATION :ITEM MV1391 :VALUE MV1395 :PREDICATE
  MV1389)
 (:VAR MV1391 :ISA BIO-AMOUNT :MEASURED-ITEM MV1387 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1387 :ISA PROTEIN :PREDICATION MV1393 :RAW-TEXT "TGFBR1" :UID
  "UP:P36897" :NAME "TGFR1_HUMAN")
 (:VAR MV1393 :ISA ACTIVE) (:VAR MV1395 :ISA LOW :ADVERB MV1394)
 (:VAR MV1394 :ISA ALWAYS :NAME "always") (:VAR MV1389 :ISA BE))

___________________
138: "Let's move AKT1 and MAPK1 into mitochondrion."

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's move AKT1 and MAPK1 into mitochondrion" 12
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 and MAPK1 into mitochondrion."
 (:VAR MV1422 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1416 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1416 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV1419 :THEME
  MV1420 :PRESENT "PRESENT")
 (:VAR MV1419 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173")
 (:VAR MV1420 :ISA COLLECTION :RAW-TEXT "AKT1 and MAPK1" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV1414 MV1415))
 (:VAR MV1414 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1415 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
139: "FEN1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "FEN1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("FEN1 phosphorylates AKT1."
 (:VAR MV1425 :ISA PHOSPHORYLATE :AGENT MV1423 :SUBSTRATE MV1424 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1423 :ISA PROTEIN :RAW-TEXT "FEN1" :UID "UP:P39748" :NAME
  "FEN1_HUMAN")
 (:VAR MV1424 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
140: "Move all into mitochondrion."

                    SOURCE-START
e7    MOVE-SOMETHING-SOMEWHERE  1 "Move all into mitochondrion" 5
                    PERIOD
                    END-OF-SOURCE
("Move all into mitochondrion."
 (:VAR MV1426 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV1429 :THEME
  MV1431 :PRESENT "PRESENT")
 (:VAR MV1429 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173")
 (:VAR MV1431 :ISA ALL :WORD "all"))

___________________
141: "AKT1 phosphorylates MAPK1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("AKT1 phosphorylates MAPK1."
 (:VAR MV1434 :ISA PHOSPHORYLATE :AGENT MV1432 :SUBSTRATE MV1433 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1432 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1433 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
142: "Let's highlight the upstream of phosphorylated MAPK1."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's highlight the upstream of phosphorylated MAPK1" 11
                    PERIOD
                    END-OF-SOURCE
("Let's highlight the upstream of phosphorylated MAPK1."
 (:VAR MV1444 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1437 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1437 :ISA HIGHLIGHT :THEME MV1439 :PRESENT "PRESENT")
 (:VAR MV1439 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1436 :HAS-DETERMINER
  "THE" :RAW-TEXT "upstream")
 (:VAR MV1436 :ISA PROTEIN :PREDICATION MV1442 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1442 :ISA PHOSPHORYLATE :SUBSTRATE MV1436 :RAW-TEXT "phosphorylated"))

___________________
143: "Let's show phosphorylated MAPK1 on the top."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's show phosphorylated MAPK1 on the top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show phosphorylated MAPK1 on the top."
 (:VAR MV1453 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1447 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1447 :ISA SHOW :AT-RELATIVE-LOCATION MV1451 :STATEMENT-OR-THEME MV1446
  :PRESENT "PRESENT")
 (:VAR MV1451 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV1446 :ISA PROTEIN :PREDICATION MV1448 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1448 :ISA PHOSPHORYLATE :SUBSTRATE MV1446 :RAW-TEXT "phosphorylated"))

___________________
144: "Let's show the downstream of AKT1 on the top."

                    SOURCE-START
e23   EXPLICIT-SUGGESTION 1 "Let's show the downstream of AKT1 on the top" 13
                    PERIOD
                    END-OF-SOURCE
("Let's show the downstream of AKT1 on the top."
 (:VAR MV1466 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1456 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1456 :ISA SHOW :AT-RELATIVE-LOCATION MV1463 :STATEMENT-OR-THEME MV1458
  :PRESENT "PRESENT")
 (:VAR MV1463 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV1458 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV1455 :HAS-DETERMINER
  "THE" :RAW-TEXT "downstream")
 (:VAR MV1455 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
145: "Let's move mitochondrion elements to the top."

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's move mitochondrion elements to the top" 10
                    PERIOD
                    END-OF-SOURCE
("Let's move mitochondrion elements to the top."
 (:VAR MV1475 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1468 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1468 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV1473 :THEME MV1470 :PRESENT
  "PRESENT")
 (:VAR MV1473 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV1470 :ISA ELEMENT :MODIFIER MV1469)
 (:VAR MV1469 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173"))

___________________
146: "How does BRAF affect MAPK1?"

                    SOURCE-START
e8    AFFECT        1 "How does BRAF affect MAPK1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does BRAF affect MAPK1?"
 (:VAR MV1480 :ISA AFFECT :MANNER MV1477 :AGENT MV1479 :OBJECT MV1476 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1477 :ISA HOW)
 (:VAR MV1479 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1476 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
147: "How does MAPK1 affect BRAF?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect BRAF?"
 (:VAR MV1484 :ISA AFFECT :MANNER MV1482 :AGENT MV1481 :OBJECT MV1485 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1482 :ISA HOW)
 (:VAR MV1481 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1485 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
148: "What is the path between BRAF and MAPK1?"

                    SOURCE-START
e15   BE            1 "What is the path between BRAF and MAPK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the path between BRAF and MAPK1?"
 (:VAR MV1488 :ISA BE :SUBJECT MV1487 :PREDICATE MV1490 :PRESENT "PRESENT")
 (:VAR MV1487 :ISA WHAT)
 (:VAR MV1490 :ISA PATH :ENDPOINTS MV1494 :HAS-DETERMINER "THE")
 (:VAR MV1494 :ISA COLLECTION :RAW-TEXT "BRAF and MAPK1" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV1492 MV1486))
 (:VAR MV1492 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1486 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
149: "How does MAPK1 affect JUND?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect JUND" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect JUND?"
 (:VAR MV1499 :ISA AFFECT :MANNER MV1497 :AGENT MV1496 :OBJECT MV1500 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1497 :ISA HOW)
 (:VAR MV1496 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1500 :ISA PROTEIN :RAW-TEXT "JUND" :UID "UP:P17535" :NAME
  "JUND_HUMAN"))

___________________
150: "How does SETDB1 affect ADAM17?"

                    SOURCE-START
e9    AFFECT        1 "How does SETDB1 affect ADAM17" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does SETDB1 affect ADAM17?"
 (:VAR MV1505 :ISA AFFECT :MANNER MV1503 :AGENT MV1501 :OBJECT MV1502 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1503 :ISA HOW)
 (:VAR MV1501 :ISA PROTEIN :RAW-TEXT "SETDB1" :UID "UP:Q15047" :NAME
  "SETB1_HUMAN")
 (:VAR MV1502 :ISA PROTEIN :RAW-TEXT "ADAM17" :UID "UP:P78536" :NAME
  "ADA17_HUMAN"))

___________________
151: "How does KRAS affect MAPK3?"

                    SOURCE-START
e8    AFFECT        1 "How does KRAS affect MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS affect MAPK3?"
 (:VAR MV1510 :ISA AFFECT :MANNER MV1507 :AGENT MV1509 :OBJECT MV1506 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1507 :ISA HOW)
 (:VAR MV1509 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV1506 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
152: "How does  ITGAV affect ILK?"

                    SOURCE-START
e7    AFFECT        1 "How does  ITGAV affect ILK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does  ITGAV affect ILK?"
 (:VAR MV1514 :ISA AFFECT :MANNER MV1511 :AGENT MV1513 :OBJECT MV1515 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1511 :ISA HOW)
 (:VAR MV1513 :ISA PROTEIN :RAW-TEXT "ITGAV" :UID "UP:P06756" :NAME
  "ITAV_HUMAN")
 (:VAR MV1515 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

___________________
153: "What genes does MAPK1 phosphorylate?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "What genes does MAPK1 phosphorylate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does MAPK1 phosphorylate?"
 (:VAR MV1520 :ISA PHOSPHORYLATE :AMINO-ACID MV1518 :AGENT MV1516 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV1518 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1516 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
154: "What pathways affect BRAF?"

                    SOURCE-START
e6    AFFECT        1 "What pathways affect BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways affect BRAF?"
 (:VAR MV1523 :ISA AFFECT :AGENT MV1522 :OBJECT MV1524 :PRESENT "PRESENT"
  :RAW-TEXT "affect")
 (:VAR MV1522 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV1524 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
155: "What genes activate ILK?"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "What genes activate ILK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes activate ILK?"
 (:VAR MV1527 :ISA BIO-ACTIVATE :AGENT MV1526 :OBJECT MV1528 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV1526 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1528 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

___________________
156: "Let's learn about AKT1 in ovarian cancer."

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's learn about AKT1 in ovarian cancer" 11
                    PERIOD
                    END-OF-SOURCE
("Let's learn about AKT1 in ovarian cancer."
 (:VAR MV1537 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1532 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1532 :ISA LEARNING :STATEMENT MV1530 :PRESENT "PRESENT")
 (:VAR MV1530 :ISA PROTEIN :CONTEXT MV1531 :RAW-TEXT "AKT1" :UID "UP:P31749"
  :NAME "AKT1_HUMAN")
 (:VAR MV1531 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223"))

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
 (:VAR MV1554 :ISA PHOSPHORYLATE :AGENT MV1552 :SUBSTRATE MV1553 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1552 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1553 :ISA PROTEIN :RAW-TEXT "IFT140" :UID "UP:Q96RY7" :NAME
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
 (:VAR MV1573 :ISA BE :SUBJECT MV1572 :PREDICATE MV1576 :PRESENT "PRESENT")
 (:VAR MV1572 :ISA WHAT)
 (:VAR MV1576 :ISA RESPONSE :BENEFICIARY MV1578 :HAS-DETERMINER "THE" :MODIFIER
  MV1575 :RAW-TEXT "response")
 (:VAR MV1578 :ISA CELL-TYPE :MUTATION MV1580)
 (:VAR MV1580 :ISA ALTER :OBJECT MV1571 :AGENT-OR-OBJECT MV1571 :RAW-TEXT
  "alterations")
 (:VAR MV1571 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1571 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1575 :ISA DRUG :RAW-TEXT "drug"))

___________________
163: "What is the drug response for cells with TP53 alterations?"

                    SOURCE-START
e21   BE            1 "What is the drug response for cells with TP53 alterations" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the drug response for cells with TP53 alterations?"
 (:VAR MV1585 :ISA BE :SUBJECT MV1584 :PREDICATE MV1588 :PRESENT "PRESENT")
 (:VAR MV1584 :ISA WHAT)
 (:VAR MV1588 :ISA RESPONSE :CELL-TYPE MV1590 :HAS-DETERMINER "THE" :MODIFIER
  MV1587 :RAW-TEXT "response")
 (:VAR MV1590 :ISA CELL-TYPE :MUTATION MV1592)
 (:VAR MV1592 :ISA ALTER :OBJECT MV1583 :AGENT-OR-OBJECT MV1583 :RAW-TEXT
  "alterations")
 (:VAR MV1583 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1583 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1587 :ISA DRUG :RAW-TEXT "drug"))

___________________
164: "What is the mutation frequency of EGFR in glioblastoma?"

                    SOURCE-START
e19   BE            1 "What is the mutation frequency of EGFR in glioblastoma" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of EGFR in glioblastoma?"
 (:VAR MV1596 :ISA BE :SUBJECT MV1595 :PREDICATE MV1599 :PRESENT "PRESENT")
 (:VAR MV1595 :ISA WHAT)
 (:VAR MV1599 :ISA FREQUENCY :MEASURED-ITEM MV1601 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV1598 :RAW-TEXT "frequency")
 (:VAR MV1601 :ISA PROTEIN :CONTEXT MV1603 :RAW-TEXT "EGFR" :UID "UP:P00533"
  :NAME "EGFR_HUMAN")
 (:VAR MV1603 :ISA GLIOBLASTOMA)
 (:VAR MV1598 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
165: "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1609 :ISA BE :SUBJECT MV1608 :PREDICATE MV1612 :PRESENT "PRESENT")
 (:VAR MV1608 :ISA WHAT)
 (:VAR MV1612 :ISA FREQUENCY :MEASURED-ITEM MV1606 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV1611 :RAW-TEXT "frequency")
 (:VAR MV1606 :ISA PROTEIN :CONTEXT MV1607 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV1607 :ISA CANCER :NAME "ovarian serous cystadenocarcinoma" :UID
  "NCIT:C7978")
 (:VAR MV1611 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
166: "Show me the mutations of PTEN and BRAF in ovarian cancer."

                    SOURCE-START
e21   SHOW          1 "Show me the mutations of PTEN and BRAF in ovarian cancer" 12
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN and BRAF in ovarian cancer."
 (:VAR MV1618 :ISA SHOW :STATEMENT-OR-THEME MV1621 :BENEFICIARY MV1619 :PRESENT
  "PRESENT")
 (:VAR MV1621 :ISA MUTATION :OBJECT MV1627 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1627 :ISA COLLECTION :CONTEXT MV1617 :RAW-TEXT "PTEN and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV1623 MV1625))
 (:VAR MV1617 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV1623 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV1625 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1619 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
167: "Show me the mutations of PTEN in ovarian cancer."

                    SOURCE-START
e18   SHOW          1 "Show me the mutations of PTEN in ovarian cancer" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN in ovarian cancer."
 (:VAR MV1631 :ISA SHOW :STATEMENT-OR-THEME MV1634 :BENEFICIARY MV1632 :PRESENT
  "PRESENT")
 (:VAR MV1634 :ISA MUTATION :OBJECT MV1636 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1636 :ISA PROTEIN :CONTEXT MV1630 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1630 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV1632 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
168: "What are the mutations of PTEN in ovarian cancer?"

                    SOURCE-START
e18   BE            1 "What are the mutations of PTEN in ovarian cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in ovarian cancer?"
 (:VAR MV1642 :ISA BE :SUBJECT MV1641 :PREDICATE MV1644 :PRESENT "PRESENT")
 (:VAR MV1641 :ISA WHAT)
 (:VAR MV1644 :ISA MUTATION :OBJECT MV1646 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1646 :ISA PROTEIN :CONTEXT MV1640 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1640 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223"))

___________________
169: "What is the most likely cellular location of AKT1 and BRAF?"

                    SOURCE-START
e23   BE            1 "What is the most likely cellular location of AKT1 and BRAF" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1 and BRAF?"
 (:VAR MV1652 :ISA BE :SUBJECT MV1651 :PREDICATE MV1664 :PRESENT "PRESENT")
 (:VAR MV1651 :ISA WHAT)
 (:VAR MV1664 :ISA QUALITY-PREDICATE :ITEM MV1662 :ATTRIBUTE MV1658)
 (:VAR MV1662 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1650 MV1661))
 (:VAR MV1650 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1661 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1658 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV1656
  :MODIFIER MV1657)
 (:VAR MV1656 :ISA LIKELY :COMPARATIVE MV1654)
 (:VAR MV1654 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV1657 :ISA CELLULAR :NAME "cellular"))

___________________
170: "Are there common upstreams of AKT1 and BRAF?"

                    SOURCE-START
e17   THERE-EXISTS  1 "Are there common upstreams of AKT1 and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1 and BRAF?"
 (:VAR MV1674 :ISA THERE-EXISTS :VALUE MV1670 :PREDICATE MV1667)
 (:VAR MV1670 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1675 :PREDICATION
  MV1669 :RAW-TEXT "upstreams")
 (:VAR MV1675 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1665 MV1673))
 (:VAR MV1665 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1673 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1669 :ISA COMMON) (:VAR MV1667 :ISA SYNTACTIC-THERE))

___________________
171: "What are the common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e21   BE            1 "What are the common upstreams of AKT1, BRAF and MAPK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV1680 :ISA BE :SUBJECT MV1679 :PREDICATE MV1683 :PRESENT "PRESENT")
 (:VAR MV1679 :ISA WHAT)
 (:VAR MV1683 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1687 :HAS-DETERMINER
  "THE" :PREDICATION MV1682 :RAW-TEXT "upstreams")
 (:VAR MV1687 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV1677 MV1685 MV1678))
 (:VAR MV1677 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1685 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1678 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1682 :ISA COMMON))

___________________
172: "What genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "What genes are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV1699 :ISA COPULAR-PREDICATION :ITEM MV1693 :VALUE MV1689 :PREDICATE
  MV1694)
 (:VAR MV1693 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1689 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV1691 :ALTERNATIVE MV1690)
 (:VAR MV1691 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV1690 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV1694 :ISA BE :PRESENT "PRESENT"))

___________________
173: "What are the mutually exclusive genes with TP53 for breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with TP53 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with TP53 for breast cancer?"
 (:VAR MV1704 :ISA BE :SUBJECT MV1703 :PREDICATE MV1711 :PRESENT "PRESENT")
 (:VAR MV1703 :ISA WHAT)
 (:VAR MV1711 :ISA GENE :DISEASE MV1702 :HAS-DETERMINER "THE" :PREDICATION
  MV1700 :RAW-TEXT "genes")
 (:VAR MV1702 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV1700 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV1701)
 (:VAR MV1701 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
174: "What is the mutation significance of TP53 for lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 for lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 for lung cancer?"
 (:VAR MV1715 :ISA BE :SUBJECT MV1714 :PREDICATE MV1718 :PRESENT "PRESENT")
 (:VAR MV1714 :ISA WHAT)
 (:VAR MV1718 :ISA SIGNIFICANCE :RESULT MV1713 :AGENT MV1712 :HAS-DETERMINER
  "THE" :MODIFIER MV1717)
 (:VAR MV1713 :ISA CANCER :NAME "lung cancer" :UID "TS-0571")
 (:VAR MV1712 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1717 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
175: "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1726 :ISA BE :SUBJECT MV1725 :PREDICATE MV1729 :PRESENT "PRESENT")
 (:VAR MV1725 :ISA WHAT)
 (:VAR MV1729 :ISA SIGNIFICANCE :AGENT MV1723 :HAS-DETERMINER "THE" :MODIFIER
  MV1728)
 (:VAR MV1723 :ISA PROTEIN :CONTEXT MV1724 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV1724 :ISA CANCER :NAME "ovarian serous cystadenocarcinoma" :UID
  "NCIT:C7978")
 (:VAR MV1728 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
176: "What is the mutation significance of PTEN in pancreatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of PTEN in pancreatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
 (:VAR MV1735 :ISA BE :SUBJECT MV1734 :PREDICATE MV1738 :PRESENT "PRESENT")
 (:VAR MV1734 :ISA WHAT)
 (:VAR MV1738 :ISA SIGNIFICANCE :AGENT MV1740 :HAS-DETERMINER "THE" :MODIFIER
  MV1737)
 (:VAR MV1740 :ISA PROTEIN :CONTEXT MV1743 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1743 :ISA CANCER :ORGAN MV1742 :NAME "adenocarcinoma" :UID
  "EFO:0000228")
 (:VAR MV1742 :ISA PANCREAS) (:VAR MV1737 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
177: "What is the mutation significance of BRAF in prostatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of BRAF in prostatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
 (:VAR MV1747 :ISA BE :SUBJECT MV1746 :PREDICATE MV1750 :PRESENT "PRESENT")
 (:VAR MV1746 :ISA WHAT)
 (:VAR MV1750 :ISA SIGNIFICANCE :AGENT MV1752 :HAS-DETERMINER "THE" :MODIFIER
  MV1749)
 (:VAR MV1752 :ISA PROTEIN :CONTEXT MV1755 :RAW-TEXT "BRAF" :UID "UP:P15056"
  :NAME "BRAF_HUMAN")
 (:VAR MV1755 :ISA CANCER :MODIFIER MV1754 :NAME "adenocarcinoma" :UID
  "EFO:0000228")
 (:VAR MV1754 :ISA PROTEIN :RAW-TEXT "prostatic" :UID "UP:P20151" :NAME
  "KLK2_HUMAN")
 (:VAR MV1749 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
178: "MEK phosphorylates ERK."

                    SOURCE-START
e4    PHOSPHORYLATE 1 "MEK phosphorylates ERK" 4
                    PERIOD
                    END-OF-SOURCE
("MEK phosphorylates ERK."
 (:VAR MV1759 :ISA PHOSPHORYLATE :AGENT MV1758 :SUBSTRATE MV1760 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1758 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV1760 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV1762 :ISA BINDING :BINDER MV1761 :DIRECT-BINDEE MV1763 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV1761 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1763 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
180: "EGFR bound to EGF binds GRB2."

                    SOURCE-START
e13   BINDING       1 "EGFR bound to EGF binds GRB2" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR bound to EGF binds GRB2."
 (:VAR MV1769 :ISA BINDING :BINDER MV1765 :DIRECT-BINDEE MV1764 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV1765 :ISA PROTEIN :PREDICATION MV1766 :RAW-TEXT "EGFR" :UID
  "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV1766 :ISA BINDING :DIRECT-BINDEE MV1765 :BINDEE MV1768 :PAST "PAST"
  :RAW-TEXT "bound")
 (:VAR MV1768 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1764 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN"))

___________________
181: "Phosphorylated ERK is active."

                    SOURCE-START
e7    COPULAR-PREDICATION 1 "Phosphorylated ERK is active" 5
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK is active."
 (:VAR MV1775 :ISA COPULAR-PREDICATION :ITEM MV1772 :VALUE MV1774 :PREDICATE
  MV1773)
 (:VAR MV1772 :ISA PROTEIN-FAMILY :PREDICATION MV1771 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1771 :ISA PHOSPHORYLATE :SUBSTRATE MV1772 :RAW-TEXT "Phosphorylated")
 (:VAR MV1774 :ISA ACTIVE) (:VAR MV1773 :ISA BE :PRESENT "PRESENT"))

___________________
182: "MAP2K1 phosphorylated at S220 phosphoryates MAPK1."

                    SOURCE-START
e17   PROTEIN       1 "MAP2K1 phosphorylated at S220 phosphoryates MAPK1" 12
                    PERIOD
                    END-OF-SOURCE
("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
 (:VAR MV1776 :ISA PROTEIN :PREDICATION MV1778 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1778 :ISA PHOSPHORYLATE :SUBSTRATE MV1776 :TARGET MV1777 :PAST "PAST"
  :RAW-TEXT "phosphorylated")
 (:VAR MV1777 :ISA PROTEIN :SITE MV1783 :MODIFIER MV1784 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1783 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S220" :POSITION MV1782
  :AMINO-ACID MV1781)
 (:VAR MV1782 :ISA NUMBER :VALUE 220)
 (:VAR MV1781 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV1784 :ISA BIO-ENTITY :NAME "phosphoryates"))

___________________
183: "Active TP53 transcribes MDM2."

                    SOURCE-START
e8    TRANSCRIBE    1 "Active TP53 transcribes MDM2" 7
                    PERIOD
                    END-OF-SOURCE
("Active TP53 transcribes MDM2."
 (:VAR MV1789 :ISA TRANSCRIBE :AGENT MV1786 :OBJECT MV1787 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV1786 :ISA PROTEIN :PREDICATION MV1788 :RAW-TEXT "TP53" :UID
  "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1788 :ISA ACTIVE)
 (:VAR MV1787 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME
  "MDM2_HUMAN"))

___________________
184: "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e44   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV1816 :ISA POLAR-QUESTION :STATEMENT MV1815)
 (:VAR MV1815 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1811 :EVENT MV1813)
 (:VAR MV1811 :ISA WH-QUESTION :STATEMENT MV1801 :WH IF)
 (:VAR MV1801 :ISA INCREASE :AGENT-OR-CAUSE MV1799 :MULTIPLIER MV1808
  :AFFECTED-PROCESS-OR-OBJECT MV1803 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1799 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1808 :ISA N-FOLD :NUMBER MV1807) (:VAR MV1807 :ISA NUMBER :VALUE 10)
 (:VAR MV1803 :ISA BIO-AMOUNT :MEASURED-ITEM MV1790 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1790 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1813 :ISA COPULAR-PREDICATION :ITEM MV1793 :VALUE MV1797 :PREDICATE
  MV1791)
 (:VAR MV1793 :ISA BIO-AMOUNT :MEASURED-ITEM MV1795 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1795 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1797 :ISA HIGH :ADVERB MV1796) (:VAR MV1796 :ISA EVER :NAME "ever")
 (:VAR MV1791 :ISA BE))

___________________
185: "Does Vemurafenib decrease phosphorylated ERK in the model?"

                    SOURCE-START
e20   DECREASE      1 "Does Vemurafenib decrease phosphorylated ERK in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib decrease phosphorylated ERK in the model?"
 (:VAR MV1828 :ISA POLAR-QUESTION :STATEMENT MV1826)
 (:VAR MV1826 :ISA DECREASE :AGENT MV1818 :OBJECT MV1822 :RAW-TEXT "decrease")
 (:VAR MV1818 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV1822 :ISA PROTEIN-FAMILY :INFO-CONTEXT MV1825 :PREDICATION MV1821
  :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1825 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV1821 :ISA PHOSPHORYLATE :SUBSTRATE MV1822 :RAW-TEXT "phosphorylated"))

___________________
186: "Does Selumetinib decrease JUN in the model?"

                    SOURCE-START
e17   DECREASE      1 "Does Selumetinib decrease JUN in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib decrease JUN in the model?"
 (:VAR MV1839 :ISA POLAR-QUESTION :STATEMENT MV1837)
 (:VAR MV1837 :ISA DECREASE :AGENT MV1830 :OBJECT MV1833 :RAW-TEXT "decrease")
 (:VAR MV1830 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV1833 :ISA PROTEIN :INFO-CONTEXT MV1836 :RAW-TEXT "JUN" :UID
  "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV1836 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
187: "How does KRAS regulate MAP2K1?"

                    SOURCE-START
e8    REGULATE      1 "How does KRAS regulate MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS regulate MAP2K1?"
 (:VAR MV1844 :ISA REGULATE :MANNER MV1841 :AGENT MV1843 :OBJECT MV1840
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV1841 :ISA HOW)
 (:VAR MV1843 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV1840 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
188: "How does HRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does HRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does HRAS activate MAPK3?"
 (:VAR MV1849 :ISA BIO-ACTIVATE :MANNER MV1846 :AGENT MV1848 :OBJECT MV1845
  :PRESENT "PRESENT" :RAW-TEXT "activate")
 (:VAR MV1846 :ISA HOW)
 (:VAR MV1848 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV1845 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
189: "Does Vemurafenib inhibit BRAF?"

                    SOURCE-START
e8    INHIBIT       1 "Does Vemurafenib inhibit BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib inhibit BRAF?"
 (:VAR MV1855 :ISA POLAR-QUESTION :STATEMENT MV1854)
 (:VAR MV1854 :ISA INHIBIT :AGENT MV1851 :OBJECT MV1853 :RAW-TEXT "inhibit")
 (:VAR MV1851 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV1853 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
190: "What transcription factors are shared by SRF, HRAS, and ELK1?"

                    SOURCE-START
e19   SHARE         1 "What transcription factors are shared by SRF, HRAS, and ELK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by SRF, HRAS, and ELK1?"
 (:VAR MV1866 :ISA SHARE :OBJECT MV1856 :PARTICIPANT MV1865 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV1856 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV1865 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and ELK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV1862 MV1863 MV1857))
 (:VAR MV1862 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1863 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV1857 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
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
 (:VAR MV1878 :ISA BE :SUBJECT MV1877 :PREDICATE MV1879 :PRESENT "PRESENT")
 (:VAR MV1877 :ISA WHAT)
 (:VAR MV1879 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1876 :RAW-TEXT
  "upstream")
 (:VAR MV1876 :ISA PROTEIN :RAW-TEXT "CD3E" :UID "UP:P07766" :NAME
  "CD3E_HUMAN"))

___________________
193: "I want to find a treatment for pancreatic cancer."

                    SOURCE-START
e22   WANT          1 "I want to find a treatment for pancreatic cancer" 10
                    PERIOD
                    END-OF-SOURCE
("I want to find a treatment for pancreatic cancer."
 (:VAR MV1887 :ISA WANT :AGENT MV1884 :THEME MV1895 :PRESENT "PRESENT")
 (:VAR MV1884 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV1895 :ISA BIO-FIND :AGENT MV1884 :OBJECT MV1892 :PRESENT "PRESENT"
  :RAW-TEXT "find")
 (:VAR MV1884 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV1892 :ISA TREATMENT :DISEASE MV1883 :HAS-DETERMINER "A" :RAW-TEXT
  "treatment")
 (:VAR MV1883 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
194: "What drug could I use?"

                    SOURCE-START
e11   BIO-USE       1 "What drug could I use" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use?"
 (:VAR MV1904 :ISA BIO-USE :OBJECT MV1897 :MODAL MV1898 :AGENT MV1899 :PRESENT
  "PRESENT" :RAW-TEXT "use")
 (:VAR MV1897 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV1898 :ISA COULD) (:VAR MV1899 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
195: "Are there any drugs for BRAF?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there any drugs for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for BRAF?"
 (:VAR MV1912 :ISA THERE-EXISTS :VALUE MV1909 :PREDICATE MV1906)
 (:VAR MV1909 :ISA DRUG :TARGET MV1911 :QUANTIFIER MV1908 :RAW-TEXT "drugs")
 (:VAR MV1911 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1908 :ISA ANY :WORD "any") (:VAR MV1906 :ISA SYNTACTIC-THERE))

___________________
196: "Are they kinases?"

                    SOURCE-START
e5    BE            1 "Are they kinases" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("Are they kinases?" (:VAR MV1917 :ISA POLAR-QUESTION :STATEMENT MV1914)
 (:VAR MV1914 :ISA BE :SUBJECT MV1915 :PREDICATE MV1916)
 (:VAR MV1915 :ISA PRONOUN/PLURAL :WORD "they")
 (:VAR MV1916 :ISA KINASE :RAW-TEXT "kinases"))

___________________
197: "Can you find a drug for BRAF?"

                    SOURCE-START
e17   BIO-FIND      1 "Can you find a drug for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you find a drug for BRAF?"
 (:VAR MV1927 :ISA POLAR-QUESTION :STATEMENT MV1921)
 (:VAR MV1921 :ISA BIO-FIND :AGENT MV1919 :OBJECT MV1923 :MODAL "CAN" :RAW-TEXT
  "find")
 (:VAR MV1919 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1923 :ISA DRUG :TARGET MV1925 :HAS-DETERMINER "A" :RAW-TEXT "drug")
 (:VAR MV1925 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
198: "Can you tell me all the transcription factors that are shared by elk1 and srf?"

                    SOURCE-START
e35   TELL          1 "Can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me all the transcription factors that are shared by elk1 and srf?"
 (:VAR MV1945 :ISA POLAR-QUESTION :STATEMENT MV1932)
 (:VAR MV1932 :ISA TELL :AGENT MV1931 :THEME MV1928 :BENEFICIARY MV1933 :MODAL
  "CAN")
 (:VAR MV1931 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1928 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV1943 :QUANTIFIER MV1934
  :HAS-DETERMINER "THE" :RAW-TEXT "transcription factors")
 (:VAR MV1943 :ISA SHARE :OBJECT MV1928 :THAT-REL T :PARTICIPANT MV1942 :MODAL
  "CAN" :RAW-TEXT "shared")
 (:VAR MV1942 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1929 MV1941))
 (:VAR MV1929 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1941 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1934 :ISA ALL :WORD "all")
 (:VAR MV1933 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
199: "Can you tell me what transcription factors are shared by elk1 and srf?"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf?"
 (:VAR MV1961 :ISA POLAR-QUESTION :STATEMENT MV1950)
 (:VAR MV1950 :ISA TELL :AGENT MV1949 :THEME MV1959 :THEME MV1951 :MODAL "CAN")
 (:VAR MV1949 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1959 :ISA SHARE :OBJECT MV1946 :PARTICIPANT MV1958 :MODAL "CAN"
  :RAW-TEXT "shared")
 (:VAR MV1946 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV1958 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1947 MV1957))
 (:VAR MV1947 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1957 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1951 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
200: "Do you know any drugs for BRAF?"

                    SOURCE-START
e15   KNOW          1 "Do you know any drugs for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do you know any drugs for BRAF?"
 (:VAR MV1972 :ISA POLAR-QUESTION :STATEMENT MV1971)
 (:VAR MV1971 :ISA KNOW :AGENT MV1963 :STATEMENT MV1966)
 (:VAR MV1963 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1966 :ISA DRUG :TARGET MV1968 :QUANTIFIER MV1965 :RAW-TEXT "drugs")
 (:VAR MV1968 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1965 :ISA ANY :WORD "any"))

___________________
201: "Does STAT3 regulate the JUN gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the JUN gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the JUN gene in the lung?"
 (:VAR MV1984 :ISA POLAR-QUESTION :STATEMENT MV1982)
 (:VAR MV1982 :ISA REGULATE :AGENT MV1973 :OBJECT MV1978 :RAW-TEXT "regulate")
 (:VAR MV1973 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV1978 :ISA GENE :ORGAN MV1981 :HAS-DETERMINER "THE" :EXPRESSES MV1977
  :RAW-TEXT "gene")
 (:VAR MV1981 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV1977 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN"))

___________________
202: "Does STAT3 regulate the c-fos gene in liver?"

                    SOURCE-START
e20   REGULATE      1 "Does STAT3 regulate the c-fos gene in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in liver?"
 (:VAR MV1995 :ISA POLAR-QUESTION :STATEMENT MV1993)
 (:VAR MV1993 :ISA REGULATE :AGENT MV1985 :OBJECT MV1990 :RAW-TEXT "regulate")
 (:VAR MV1985 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV1990 :ISA GENE :ORGAN MV1992 :HAS-DETERMINER "THE" :EXPRESSES MV1986
  :RAW-TEXT "gene")
 (:VAR MV1992 :ISA LIVER)
 (:VAR MV1986 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
203: "Does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e15   REGULATE      1 "Does STAT3 regulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene?"
 (:VAR MV2003 :ISA POLAR-QUESTION :STATEMENT MV2002)
 (:VAR MV2002 :ISA REGULATE :AGENT MV1996 :OBJECT MV2001 :RAW-TEXT "regulate")
 (:VAR MV1996 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2001 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV1997 :RAW-TEXT
  "gene")
 (:VAR MV1997 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
204: "Does STAT3 regulate the cfos gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the cfos gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the cfos gene in the lung?"
 (:VAR MV2015 :ISA POLAR-QUESTION :STATEMENT MV2013)
 (:VAR MV2013 :ISA REGULATE :AGENT MV2004 :OBJECT MV2009 :RAW-TEXT "regulate")
 (:VAR MV2004 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2009 :ISA GENE :ORGAN MV2012 :HAS-DETERMINER "THE" :EXPRESSES MV2008
  :RAW-TEXT "gene")
 (:VAR MV2012 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV2008 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
205: "Does TP53 target MDM2?"

                    SOURCE-START
e11   TARGET        1 "Does TP53 target MDM2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TP53 target MDM2?" (:VAR MV2022 :ISA POLAR-QUESTION :STATEMENT MV2021)
 (:VAR MV2021 :ISA TARGET :AGENT MV2016 :OBJECT MV2017 :RAW-TEXT "target")
 (:VAR MV2016 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV2017 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME
  "MDM2_HUMAN"))

___________________
206: "Does miR-2000-5p target stat3"

                    SOURCE-START
e11   TARGET        1 "Does miR-2000-5p target stat3" 11
                    END-OF-SOURCE
("Does miR-2000-5p target stat3"
 (:VAR MV2029 :ISA POLAR-QUESTION :STATEMENT MV2028)
 (:VAR MV2028 :ISA TARGET :AGENT MV2023 :OBJECT MV2024 :RAW-TEXT "target")
 (:VAR MV2023 :ISA MICRO-RNA :RAW-TEXT "miR-2000-5p" :NAME "microRNA 2000-5p"
  :UID "MIMAmiR-2000-5p")
 (:VAR MV2024 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
207: "Does miR-20b-5p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-20b-5p target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5p target STAT3?"
 (:VAR MV2036 :ISA POLAR-QUESTION :STATEMENT MV2035)
 (:VAR MV2035 :ISA TARGET :AGENT MV2030 :OBJECT MV2031 :RAW-TEXT "target")
 (:VAR MV2030 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV2031 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
208: "Does miR-222-3p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-222-3p target STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-222-3p target STAT3?"
 (:VAR MV2043 :ISA POLAR-QUESTION :STATEMENT MV2042)
 (:VAR MV2042 :ISA TARGET :AGENT MV2037 :OBJECT MV2038 :RAW-TEXT "target")
 (:VAR MV2037 :ISA MICRO-RNA :RAW-TEXT "miR-222-3p" :NAME "microRNA 222-3p"
  :UID "MIMAT0000279")
 (:VAR MV2038 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
209: "Does stat3 regulate cfors in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfors in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfors in liver"
 (:VAR MV2052 :ISA POLAR-QUESTION :STATEMENT MV2050)
 (:VAR MV2050 :ISA REGULATE :AGENT MV2044 :OBJECT MV2049 :RAW-TEXT "regulate")
 (:VAR MV2044 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2049 :ISA BIO-ENTITY :ORGAN MV2048 :NAME "cfors")
 (:VAR MV2048 :ISA LIVER))

___________________
210: "Does stat3 regulate cfos in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfos in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfos in liver"
 (:VAR MV2061 :ISA POLAR-QUESTION :STATEMENT MV2059)
 (:VAR MV2059 :ISA REGULATE :AGENT MV2053 :OBJECT MV2056 :RAW-TEXT "regulate")
 (:VAR MV2053 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2056 :ISA PROTEIN :ORGAN MV2058 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2058 :ISA LIVER))

___________________
211: "Does it regulate cfos in brain"

                    SOURCE-START
e14   REGULATE      1 "Does it regulate cfos in brain" 7
                    END-OF-SOURCE
("Does it regulate cfos in brain"
 (:VAR MV2070 :ISA POLAR-QUESTION :STATEMENT MV2068)
 (:VAR MV2068 :ISA REGULATE :AGENT-OR-CAUSE MV2063 :OBJECT MV2065 :RAW-TEXT
  "regulate")
 (:VAR MV2063 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2065 :ISA PROTEIN :ORGAN MV2067 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2067 :ISA BRAIN))

___________________
212: "Does stat3 regulate cfos?"

                    SOURCE-START
e9    REGULATE      1 "Does stat3 regulate cfos" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 regulate cfos?"
 (:VAR MV2076 :ISA POLAR-QUESTION :STATEMENT MV2075)
 (:VAR MV2075 :ISA REGULATE :AGENT MV2071 :OBJECT MV2074 :RAW-TEXT "regulate")
 (:VAR MV2071 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2074 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
213: "Does stat3 regulate the cfos gene in blood cells"

                    SOURCE-START
e21   REGULATE      1 "Does stat3 regulate the cfos gene in blood cells" 11
                    END-OF-SOURCE
("Does stat3 regulate the cfos gene in blood cells"
 (:VAR MV2088 :ISA POLAR-QUESTION :STATEMENT MV2086)
 (:VAR MV2086 :ISA REGULATE :AGENT MV2077 :OBJECT MV2082 :RAW-TEXT "regulate")
 (:VAR MV2077 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2082 :ISA GENE :CELL-TYPE MV2085 :HAS-DETERMINER "THE" :EXPRESSES
  MV2081 :RAW-TEXT "gene")
 (:VAR MV2085 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV2084)
 (:VAR MV2084 :ISA BIO-ORGAN :NAME "blood" :UID "BTO:0000089")
 (:VAR MV2081 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
214: "Does the il-12 pathway utilize SGK1?"

                    SOURCE-START
e17   UTILIZE       1 "Does the il-12 pathway utilize SGK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the il-12 pathway utilize SGK1?"
 (:VAR MV2098 :ISA POLAR-QUESTION :STATEMENT MV2097)
 (:VAR MV2097 :ISA UTILIZE :PARTICIPANT MV2094 :OBJECT MV2089 :RAW-TEXT
  "utilize")
 (:VAR MV2094 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2096 :RAW-TEXT
  "pathway")
 (:VAR MV2096 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV2089 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
215: "Does the mTor pathway utilize SGK1?"

                    SOURCE-START
e16   UTILIZE       1 "Does the mTor pathway utilize SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway utilize SGK1?"
 (:VAR MV2108 :ISA POLAR-QUESTION :STATEMENT MV2107)
 (:VAR MV2107 :ISA UTILIZE :PARTICIPANT MV2105 :OBJECT MV2099 :RAW-TEXT
  "utilize")
 (:VAR MV2105 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2102 :RAW-TEXT
  "pathway")
 (:VAR MV2102 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME
  "MTOR_HUMAN")
 (:VAR MV2099 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
216: "Give me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras decreases frizzled8."
 (:VAR MV2110 :ISA GIVE :THEME MV2117 :BENEFICIARY MV2111 :PRESENT "PRESENT")
 (:VAR MV2117 :ISA EVIDENCE :STATEMENT MV2116 :HAS-DETERMINER "THE")
 (:VAR MV2116 :ISA DECREASE :AGENT MV2115 :OBJECT MV2109 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2115 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2109 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2111 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
217: "Give me the evidence that kras regulates frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras regulates frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras regulates frizzled8."
 (:VAR MV2119 :ISA GIVE :THEME MV2126 :BENEFICIARY MV2120 :PRESENT "PRESENT")
 (:VAR MV2126 :ISA EVIDENCE :STATEMENT MV2125 :HAS-DETERMINER "THE")
 (:VAR MV2125 :ISA REGULATE :AGENT MV2124 :OBJECT MV2118 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2124 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2118 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2120 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
218: "Is MEK a kinase?"

                    SOURCE-START
e8    BE            1 "Is MEK a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK a kinase?" (:VAR MV2131 :ISA POLAR-QUESTION :STATEMENT MV2127)
 (:VAR MV2127 :ISA BE :SUBJECT MV2128 :PREDICATE MV2130)
 (:VAR MV2128 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2130 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
219: "Is MEK2 inhibited by Selumetinib?"

                    SOURCE-START
e11   INHIBIT       1 "Is MEK2 inhibited by Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK2 inhibited by Selumetinib?"
 (:VAR MV2139 :ISA POLAR-QUESTION :STATEMENT MV2138)
 (:VAR MV2138 :ISA INHIBIT :AGENT MV2132 :AGENT MV2136 :PAST "PAST" :RAW-TEXT
  "inhibited")
 (:VAR MV2132 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN")
 (:VAR MV2136 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
220: "Is STAT3 a transcription factor for c-fos gene?"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene?"
 (:VAR MV2148 :ISA POLAR-QUESTION :STATEMENT MV2143)
 (:VAR MV2143 :ISA BE :SUBJECT MV2140 :PREDICATE MV2141)
 (:VAR MV2140 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2141 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV2146 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV2146 :ISA GENE :EXPRESSES MV2142 :RAW-TEXT "gene")
 (:VAR MV2142 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
221: "Is STAT3 one of the regulators of the c-fos gene?"

                    SOURCE-START
e27   BE            1 "Is STAT3 one of the regulators of the c-fos gene" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 one of the regulators of the c-fos gene?"
 (:VAR MV2163 :ISA POLAR-QUESTION :STATEMENT MV2151)
 (:VAR MV2151 :ISA BE :SUBJECT MV2149 :PREDICATE MV2157)
 (:VAR MV2149 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2157 :ISA REGULATOR :QUANTIFIER MV2154 :THEME MV2160 :HAS-DETERMINER
  "THE" :RAW-TEXT "regulators")
 (:VAR MV2154 :ISA NUMBER :VALUE 1)
 (:VAR MV2160 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2150 :RAW-TEXT
  "gene")
 (:VAR MV2150 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
222: "Is Selumetinib an inhibitor of MEK1?"

                    SOURCE-START
e13   BE            1 "Is Selumetinib an inhibitor of MEK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Selumetinib an inhibitor of MEK1?"
 (:VAR MV2171 :ISA POLAR-QUESTION :STATEMENT MV2165)
 (:VAR MV2165 :ISA BE :SUBJECT MV2166 :PREDICATE MV2168)
 (:VAR MV2166 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV2168 :ISA INHIBITOR :PROTEIN MV2164 :HAS-DETERMINER "AN" :RAW-TEXT
  "inhibitor")
 (:VAR MV2164 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
223: "Is Vemurafenib an inhibitor for BRAF?"

                    SOURCE-START
e12   BE            1 "Is Vemurafenib an inhibitor for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Vemurafenib an inhibitor for BRAF?"
 (:VAR MV2179 :ISA POLAR-QUESTION :STATEMENT MV2172)
 (:VAR MV2172 :ISA BE :SUBJECT MV2173 :PREDICATE MV2175)
 (:VAR MV2173 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV2175 :ISA INHIBITOR :TARGET-OR-PROTEIN MV2177 :HAS-DETERMINER "AN"
  :RAW-TEXT "inhibitor")
 (:VAR MV2177 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
224: "Is fakeprotein a kinase"

                    SOURCE-START
e8    BE            1 "Is fakeprotein a kinase" 5
                    END-OF-SOURCE
("Is fakeprotein a kinase" (:VAR MV2184 :ISA POLAR-QUESTION :STATEMENT MV2180)
 (:VAR MV2180 :ISA BE :SUBJECT MV2183 :PREDICATE MV2182)
 (:VAR MV2183 :ISA BIO-ENTITY :NAME "fakeprotein")
 (:VAR MV2182 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
225: "Is hmga2 a kinase"

                    SOURCE-START
e9    BE            1 "Is hmga2 a kinase" 6
                    END-OF-SOURCE
("Is hmga2 a kinase" (:VAR MV2189 :ISA POLAR-QUESTION :STATEMENT MV2186)
 (:VAR MV2186 :ISA BE :SUBJECT MV2185 :PREDICATE MV2188)
 (:VAR MV2185 :ISA PROTEIN :RAW-TEXT "hmga2" :UID "UP:P52926" :NAME
  "HMGA2_HUMAN")
 (:VAR MV2188 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
226: "Is stat3 an apoptotic regulator?"

                    SOURCE-START
e11   BE            1 "Is stat3 an apoptotic regulator" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 an apoptotic regulator?"
 (:VAR MV2196 :ISA POLAR-QUESTION :STATEMENT MV2191)
 (:VAR MV2191 :ISA BE :SUBJECT MV2190 :PREDICATE MV2195)
 (:VAR MV2190 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2195 :ISA REGULATOR :HAS-DETERMINER "AN" :CELLULAR-PROCESS MV2193
  :RAW-TEXT "regulator")
 (:VAR MV2193 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
227: "Is stat3 involved in any apoptotic pathways?"

                    SOURCE-START
e16   INVOLVE       1 "Is stat3 involved in any apoptotic pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in any apoptotic pathways?"
 (:VAR MV2208 :ISA POLAR-QUESTION :STATEMENT MV2207)
 (:VAR MV2207 :ISA INVOLVE :THEME MV2197 :CONTEXT MV2204 :PAST "PAST")
 (:VAR MV2197 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2204 :ISA PATHWAY :QUANTIFIER MV2201 :CELLULAR-PROCESS MV2202
  :RAW-TEXT "pathways")
 (:VAR MV2201 :ISA ANY :WORD "any")
 (:VAR MV2202 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
228: "Is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e14   INVOLVE       1 "Is stat3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in apoptotic regulation?"
 (:VAR MV2218 :ISA POLAR-QUESTION :STATEMENT MV2217)
 (:VAR MV2217 :ISA INVOLVE :THEME MV2209 :THEME MV2215 :PAST "PAST")
 (:VAR MV2209 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2215 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV2213 :RAW-TEXT
  "regulation")
 (:VAR MV2213 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
229: "Is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e13   INVOLVE       1 "Is stat3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in regulating apoptosis?"
 (:VAR MV2227 :ISA POLAR-QUESTION :STATEMENT MV2226)
 (:VAR MV2226 :ISA INVOLVE :THEME MV2219 :THEME MV2223 :PAST "PAST")
 (:VAR MV2219 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2223 :ISA REGULATE :AFFECTED-PROCESS MV2224 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV2224 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
230: "What proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "What proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does MEK phosphorylate?"
 (:VAR MV2232 :ISA PHOSPHORYLATE :AMINO-ACID MV2229 :AGENT MV2231 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV2229 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV2231 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV2241 :ISA POLAR-QUESTION :STATEMENT MV2233)
 (:VAR MV2233 :ISA BE :SUBJECT MV2238 :PREDICATE MV2240)
 (:VAR MV2238 :ISA NUMBER :QUANTIFIER MV2235 :VALUE 1)
 (:VAR MV2235 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV2240 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
232: "Is there a drug that targets BRAF?"

                    SOURCE-START
e18   THERE-EXISTS  1 "Is there a drug that targets BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there a drug that targets BRAF?"
 (:VAR MV2251 :ISA THERE-EXISTS :VALUE MV2246 :PREDICATE MV2243)
 (:VAR MV2246 :ISA DRUG :PREDICATION MV2249 :HAS-DETERMINER "A" :RAW-TEXT
  "drug")
 (:VAR MV2249 :ISA TARGET :AGENT MV2246 :THAT-REL T :OBJECT MV2250 :PRESENT
  "PRESENT" :RAW-TEXT "targets")
 (:VAR MV2250 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV2243 :ISA SYNTACTIC-THERE))

___________________
233: "Is there an apoptotic pathway regulated by stat3?"

                    SOURCE-START
e20   THERE-EXISTS  1 "Is there an apoptotic pathway regulated by stat3" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway regulated by stat3?"
 (:VAR MV2262 :ISA THERE-EXISTS :VALUE MV2259 :PREDICATE MV2254)
 (:VAR MV2259 :ISA PATHWAY :PREDICATION MV2260 :HAS-DETERMINER "AN"
  :CELLULAR-PROCESS MV2257 :RAW-TEXT "pathway")
 (:VAR MV2260 :ISA REGULATE :AFFECTED-PROCESS MV2259 :AGENT MV2252 :PAST "PAST"
  :RAW-TEXT "regulated")
 (:VAR MV2252 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2257 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2254 :ISA SYNTACTIC-THERE))

___________________
234: "Is there an apoptotic pathway that is regulated by stat3?"

                    SOURCE-START
e25   THERE-EXISTS  1 "Is there an apoptotic pathway that is regulated by stat3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway that is regulated by stat3?"
 (:VAR MV2276 :ISA THERE-EXISTS :VALUE MV2271 :PREDICATE MV2266)
 (:VAR MV2271 :ISA PATHWAY :PREDICATION MV2277 :HAS-DETERMINER "AN"
  :CELLULAR-PROCESS MV2269 :RAW-TEXT "pathway")
 (:VAR MV2277 :ISA REGULATE :AFFECTED-PROCESS MV2271 :THAT-REL T :AGENT MV2264
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2264 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2269 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2266 :ISA SYNTACTIC-THERE))

___________________
235: "Let me know if there are any apoptotic genes stat3 regulates"

                    SOURCE-START
e25   LET           1 "Let me know if there are any apoptotic genes stat3 regulates" 13
                    END-OF-SOURCE
("Let me know if there are any apoptotic genes stat3 regulates"
 (:VAR MV2280 :ISA LET :COMPLEMENT MV2294 :PRESENT "PRESENT")
 (:VAR MV2294 :ISA KNOW :AGENT MV2281 :STATEMENT MV2293 :PRESENT "PRESENT")
 (:VAR MV2281 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2293 :ISA WH-QUESTION :STATEMENT MV2292 :WH IF)
 (:VAR MV2292 :ISA THERE-EXISTS :VALUE MV2290 :PREDICATE MV2286)
 (:VAR MV2290 :ISA GENE :PREDICATION MV2291 :QUANTIFIER MV2287
  :CELLULAR-PROCESS MV2288 :RAW-TEXT "genes")
 (:VAR MV2291 :ISA REGULATE :OBJECT MV2290 :AGENT MV2279 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2279 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2287 :ISA ANY :WORD "any")
 (:VAR MV2288 :ISA APOPTOSIS :RAW-TEXT "apoptotic") (:VAR MV2286 :ISA BE))

___________________
236: "Let me know which genes stat3 regulates"

                    SOURCE-START
e14   LET           1 "Let me know which genes stat3 regulates" 9
                    END-OF-SOURCE
("Let me know which genes stat3 regulates"
 (:VAR MV2296 :ISA LET :COMPLEMENT MV2302 :PRESENT "PRESENT")
 (:VAR MV2302 :ISA KNOW :AGENT MV2297 :STATEMENT MV2300 :PRESENT "PRESENT")
 (:VAR MV2297 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2300 :ISA GENE :PREDICATION MV2301 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV2301 :ISA REGULATE :OBJECT MV2300 :AGENT MV2295 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2295 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
237: "List all the genes regulated by elk1 and srf?"

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf?"
 (:VAR MV2304 :ISA LIST :THEME MV2307 :PRESENT "PRESENT")
 (:VAR MV2307 :ISA GENE :PREDICATION MV2308 :QUANTIFIER MV2305 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV2308 :ISA REGULATE :OBJECT MV2307 :AGENT MV2312 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2312 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2303 MV2311))
 (:VAR MV2303 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2311 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2305 :ISA ALL :WORD "all"))

___________________
238: "List genes regulated by elk1 and srf"

                    SOURCE-START
e12   LIST          1 "List genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("List genes regulated by elk1 and srf"
 (:VAR MV2315 :ISA LIST :THEME MV2316 :PRESENT "PRESENT")
 (:VAR MV2316 :ISA GENE :PREDICATION MV2317 :RAW-TEXT "genes")
 (:VAR MV2317 :ISA REGULATE :OBJECT MV2316 :AGENT MV2321 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2321 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2314 MV2320))
 (:VAR MV2314 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2320 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
239: "List some genes that are regulated by elk1 and srf"

                    SOURCE-START
e21   LIST          1 "List some genes that are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("List some genes that are regulated by elk1 and srf"
 (:VAR MV2324 :ISA LIST :THEME MV2326 :PRESENT "PRESENT")
 (:VAR MV2326 :ISA GENE :PREDICATION MV2334 :QUANTIFIER MV2325 :RAW-TEXT
  "genes")
 (:VAR MV2334 :ISA REGULATE :OBJECT MV2326 :THAT-REL T :AGENT MV2333 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2333 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2323 MV2332))
 (:VAR MV2323 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2332 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2325 :ISA SOME :WORD "some"))

___________________
240: "List the evidence that kras decreases frizzled8."

                    SOURCE-START
e15   LIST          1 "List the evidence that kras decreases frizzled8" 9
                    PERIOD
                    END-OF-SOURCE
("List the evidence that kras decreases frizzled8."
 (:VAR MV2337 :ISA LIST :THEME MV2343 :PRESENT "PRESENT")
 (:VAR MV2343 :ISA EVIDENCE :STATEMENT MV2342 :HAS-DETERMINER "THE")
 (:VAR MV2342 :ISA DECREASE :AGENT MV2341 :OBJECT MV2336 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2341 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2336 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
241: "Name genes regulated by elk1 and srf"

                    SOURCE-START
e14   NAME-SOMETHING  1 "Name genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("Name genes regulated by elk1 and srf"
 (:VAR MV2345 :ISA NAME-SOMETHING :PATIENT MV2348 :PRESENT "PRESENT")
 (:VAR MV2348 :ISA GENE :PREDICATION MV2349 :RAW-TEXT "genes")
 (:VAR MV2349 :ISA REGULATE :OBJECT MV2348 :AGENT MV2353 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2353 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2344 MV2352))
 (:VAR MV2344 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2352 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
242: "Of the apoptotic genes regulated by stat3, which are active in the liver?"

                    SOURCE-START
e33   COPULAR-PREDICATE 1 "Of the apoptotic genes regulated by stat3, which are active in the liver" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes regulated by stat3, which are active in the liver?"
 (:VAR MV2371 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2360 :VALUE MV2365
  :PREDICATE MV2364)
 (:VAR MV2360 :ISA GENE :PREDICATION MV2361 :HAS-DETERMINER "THE"
  :CELLULAR-PROCESS MV2358 :RAW-TEXT "genes")
 (:VAR MV2361 :ISA REGULATE :OBJECT MV2360 :AGENT MV2355 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2355 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2358 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2365 :ISA ACTIVE :ORGAN MV2368)
 (:VAR MV2368 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2364 :ISA BE :PRESENT "PRESENT"))

___________________
243: "Of the apoptotic genes stat3 regulates, which are active in the liver?"

                    SOURCE-START
e30   COPULAR-PREDICATE 1 "Of the apoptotic genes stat3 regulates, which are active in the liver" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes stat3 regulates, which are active in the liver?"
 (:VAR MV2389 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2379 :VALUE MV2383
  :PREDICATE MV2382)
 (:VAR MV2379 :ISA GENE :PREDICATION MV2380 :HAS-DETERMINER "THE"
  :CELLULAR-PROCESS MV2377 :RAW-TEXT "genes")
 (:VAR MV2380 :ISA REGULATE :OBJECT MV2379 :AGENT MV2374 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2374 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2377 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2383 :ISA ACTIVE :ORGAN MV2386)
 (:VAR MV2386 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2382 :ISA BE :PRESENT "PRESENT"))

___________________
244: "Of the genes stat3 regulates in the liver, which are apoptotic?"

                    SOURCE-START
e28   COPULAR-PREDICATE 1 "Of the genes stat3 regulates in the liver, which are apoptotic" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the genes stat3 regulates in the liver, which are apoptotic?"
 (:VAR MV2404 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2394 :VALUE MV2401
  :PREDICATE MV2400)
 (:VAR MV2394 :ISA GENE :PREDICATION MV2395 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV2395 :ISA REGULATE :OBJECT MV2394 :AGENT MV2391 :ORGAN MV2398 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2391 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2398 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2401 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2400 :ISA BE :PRESENT "PRESENT"))

___________________
245: "Of the hepatic genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Of the hepatic genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the hepatic genes stat3 regulates, which are apoptotic?"
 (:VAR MV2418 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2411 :VALUE MV2415
  :PREDICATE MV2414)
 (:VAR MV2411 :ISA GENE :PREDICATION MV2412 :HAS-DETERMINER "THE"
  :NON-CELLULAR-LOCATION MV2410 :RAW-TEXT "genes")
 (:VAR MV2412 :ISA REGULATE :OBJECT MV2411 :AGENT MV2407 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2407 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2410 :ISA LIVER) (:VAR MV2415 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2414 :ISA BE :PRESENT "PRESENT"))

___________________
246: "Of the liver genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Of the liver genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the liver genes stat3 regulates, which are apoptotic?"
 (:VAR MV2431 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2424 :VALUE MV2428
  :PREDICATE MV2427)
 (:VAR MV2424 :ISA GENE :PREDICATION MV2425 :HAS-DETERMINER "THE"
  :NON-CELLULAR-LOCATION MV2423 :RAW-TEXT "genes")
 (:VAR MV2425 :ISA REGULATE :OBJECT MV2424 :AGENT MV2420 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2420 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2423 :ISA LIVER) (:VAR MV2428 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2427 :ISA BE :PRESENT "PRESENT"))

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
 (:VAR MV2440 :ISA SHOW :STATEMENT-OR-THEME MV2443 :BENEFICIARY MV2441 :PRESENT
  "PRESENT" :ADVERB MV2439)
 (:VAR MV2443 :ISA PATHWAY :PREDICATION MV2444 :MODIFIER MV2442 :RAW-TEXT
  "pathways")
 (:VAR MV2444 :ISA INVOLVE :THEME MV2443 :THEME MV2445 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2445 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2442 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV2441 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2439 :ISA PLEASE :NAME "please"))

___________________
249: "Please show me pathways involving SRF"

                    SOURCE-START
e11   SHOW          1 "Please show me pathways involving SRF" 7
                    END-OF-SOURCE
("Please show me pathways involving SRF"
 (:VAR MV2447 :ISA SHOW :STATEMENT-OR-THEME MV2449 :BENEFICIARY MV2448 :PRESENT
  "PRESENT" :ADVERB MV2446)
 (:VAR MV2449 :ISA PATHWAY :PREDICATION MV2450 :RAW-TEXT "pathways")
 (:VAR MV2450 :ISA INVOLVE :THEME MV2449 :THEME MV2451 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2451 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2448 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2446 :ISA PLEASE :NAME "please"))

___________________
250: "MEK activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "MEK activates ERK" 4
                    END-OF-SOURCE
("MEK activates ERK"
 (:VAR MV2453 :ISA BIO-ACTIVATE :AGENT MV2452 :OBJECT MV2454 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2452 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2454 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV2455 :ISA REMOVE :OBJECT MV2462 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2462 :ISA FACT :STATEMENT MV2460 :HAS-DETERMINER "THE")
 (:VAR MV2460 :ISA BIO-ACTIVATE :AGENT MV2459 :OBJECT MV2461 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2459 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2461 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV2465 :ISA BIO-ACTIVATE :AGENT MV2464 :OBJECT MV2466 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2464 :ISA PROTEIN-FAMILY :PREDICATION MV2463 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2463 :ISA INACTIVE)
 (:VAR MV2466 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV2467 :ISA REMOVE :OBJECT MV2475 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2475 :ISA FACT :STATEMENT MV2473 :HAS-DETERMINER "THE")
 (:VAR MV2473 :ISA BIO-ACTIVATE :AGENT MV2472 :OBJECT MV2474 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2472 :ISA PROTEIN-FAMILY :PREDICATION MV2471 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2471 :ISA INACTIVE)
 (:VAR MV2474 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV2477 :ISA SHOW :STATEMENT-OR-THEME MV2478 :PRESENT "PRESENT")
 (:VAR MV2478 :ISA PATHWAY :NON-CELLULAR-LOCATION MV2476 :RAW-TEXT "pathways")
 (:VAR MV2476 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405"))

___________________
255: "Show me pathways involving SRF"

                    SOURCE-START
e9    SHOW          1 "Show me pathways involving SRF" 6
                    END-OF-SOURCE
("Show me pathways involving SRF"
 (:VAR MV2479 :ISA SHOW :STATEMENT-OR-THEME MV2481 :BENEFICIARY MV2480 :PRESENT
  "PRESENT")
 (:VAR MV2481 :ISA PATHWAY :PREDICATION MV2482 :RAW-TEXT "pathways")
 (:VAR MV2482 :ISA INVOLVE :THEME MV2481 :THEME MV2483 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2483 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2480 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
256: "Show me pathways with SRF in them"

                    SOURCE-START
e13   SHOW          1 "Show me pathways with SRF in them" 8
                    END-OF-SOURCE
("Show me pathways with SRF in them"
 (:VAR MV2484 :ISA SHOW :STATEMENT-OR-THEME MV2486 :BENEFICIARY MV2485 :PRESENT
  "PRESENT")
 (:VAR MV2486 :ISA PATHWAY :PATHWAYCOMPONENT MV2488 :RAW-TEXT "pathways")
 (:VAR MV2488 :ISA PROTEIN
  :CELL-LINE-OR-CELL-TYPE-OR-CELLULAR-LOCATION-OR-CONTEXT-OR-INFO-CONTEXT-OR-ORGAN-OR-PREPARATION-OR-ORGANISM-OR-IN-EQUILIBRIUM-WITH-OR-COMPLEX-OR-EQUILIBRIUM-STATE-OR-STATE-OR-IN-PATHWAY
  MV2490 :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2490 :ISA PRONOUN/PLURAL :WORD "them")
 (:VAR MV2485 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
257: "Show me pathways with SRF"

                    SOURCE-START
e8    SHOW          1 "Show me pathways with SRF" 6
                    END-OF-SOURCE
("Show me pathways with SRF"
 (:VAR MV2493 :ISA SHOW :STATEMENT-OR-THEME MV2495 :BENEFICIARY MV2494 :PRESENT
  "PRESENT")
 (:VAR MV2495 :ISA PATHWAY :PATHWAYCOMPONENT MV2497 :RAW-TEXT "pathways")
 (:VAR MV2497 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2494 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
258: "Show me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras decreases frizzled8."
 (:VAR MV2500 :ISA SHOW :STATEMENT-OR-THEME MV2507 :BENEFICIARY MV2501 :PRESENT
  "PRESENT")
 (:VAR MV2507 :ISA EVIDENCE :STATEMENT MV2506 :HAS-DETERMINER "THE")
 (:VAR MV2506 :ISA DECREASE :AGENT MV2505 :OBJECT MV2499 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2505 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2499 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2501 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
259: "Show me the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   SHOW          1 "Show me the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV2509 :ISA SHOW :STATEMENT-OR-THEME MV2520 :BENEFICIARY MV2510 :PRESENT
  "PRESENT")
 (:VAR MV2520 :ISA EVIDENCE :STATEMENT MV2515 :HAS-DETERMINER "THE")
 (:VAR MV2515 :ISA DECREASE :AGENT MV2514 :AFFECTED-PROCESS-OR-OBJECT MV2517
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV2514 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2517 :ISA BIO-AMOUNT :MEASURED-ITEM MV2508 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV2508 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2510 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
260: "Show me the evidence that kras regulates frizzled8?"

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras regulates frizzled8?"
 (:VAR MV2522 :ISA SHOW :STATEMENT-OR-THEME MV2529 :BENEFICIARY MV2523 :PRESENT
  "PRESENT")
 (:VAR MV2529 :ISA EVIDENCE :STATEMENT MV2528 :HAS-DETERMINER "THE")
 (:VAR MV2528 :ISA REGULATE :AGENT MV2527 :OBJECT MV2521 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2527 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2521 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2523 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
261: "Show transcription factors shared by elk1 and srf"

                    SOURCE-START
e13   SHOW          1 "Show transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Show transcription factors shared by elk1 and srf"
 (:VAR MV2532 :ISA SHOW :STATEMENT-OR-THEME MV2530 :PRESENT "PRESENT")
 (:VAR MV2530 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2533 :RAW-TEXT
  "transcription factors")
 (:VAR MV2533 :ISA SHARE :OBJECT MV2530 :PARTICIPANT MV2537 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV2537 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2531 MV2536))
 (:VAR MV2531 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2536 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV2547 :ISA TELL :THEME MV2559 :THEME MV2548 :PRESENT "PRESENT")
 (:VAR MV2559 :ISA REGULATE :AFFECTED-PROCESS MV2552 :AGENT MV2546 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2552 :ISA PATHWAY :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2550
  :RAW-TEXT "pathways")
 (:VAR MV2550 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2546 :ISA PROTEIN :ORGAN MV2558 :RAW-TEXT "stat3" :UID "UP:P40763"
  :NAME "STAT3_HUMAN")
 (:VAR MV2558 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2548 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
264: "Tell me what genes elk1 and srf regulate"

                    SOURCE-START
e15   TELL          1 "Tell me what genes elk1 and srf regulate" 10
                    END-OF-SOURCE
("Tell me what genes elk1 and srf regulate"
 (:VAR MV2563 :ISA TELL :THEME MV2566 :BENEFICIARY MV2564 :PRESENT "PRESENT")
 (:VAR MV2566 :ISA GENE :PREDICATION MV2569 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2569 :ISA REGULATE :OBJECT MV2566 :AGENT MV2570 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2570 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2562 MV2568))
 (:VAR MV2562 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2568 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2564 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
265: "Tell me what pathways are regulated by stat3 in the liver"

                    SOURCE-START
e24   TELL          1 "Tell me what pathways are regulated by stat3 in the liver" 13
                    END-OF-SOURCE
("Tell me what pathways are regulated by stat3 in the liver"
 (:VAR MV2572 :ISA TELL :THEME MV2582 :THEME MV2573 :PRESENT "PRESENT")
 (:VAR MV2582 :ISA REGULATE :AFFECTED-PROCESS MV2575 :AGENT MV2571 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2575 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV2571 :ISA PROTEIN :ORGAN MV2581 :RAW-TEXT "stat3" :UID "UP:P40763"
  :NAME "STAT3_HUMAN")
 (:VAR MV2581 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2573 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
266: "What KEGG pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What KEGG pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve immune signaling?"
 (:VAR MV2588 :ISA INVOLVE :THEME MV2587 :THEME MV2590 :PRESENT "PRESENT")
 (:VAR MV2587 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV2586 :RAW-TEXT
  "pathways")
 (:VAR MV2586 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV2590 :ISA SIGNAL :MODIFIER MV2589 :RAW-TEXT "signaling")
 (:VAR MV2589 :ISA IMMUNE :NAME "immune"))

___________________
267: "What MAP kinase phosphatases are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatases are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatases are regulated by ELK1?"
 (:VAR MV2598 :ISA REGULATE :OBJECT MV2594 :AGENT MV2592 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2594 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV2591 :RAW-TEXT
  "phosphatases")
 (:VAR MV2591 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME
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
 (:VAR MV2592 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
268: "What apoptotic genes are downstream of stat3?"

                    SOURCE-START
e16   BE            1 "What apoptotic genes are downstream of stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes are downstream of stat3?"
 (:VAR MV2605 :ISA BE :SUBJECT MV2604 :PREDICATE MV2606 :PRESENT "PRESENT")
 (:VAR MV2604 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2602
  :RAW-TEXT "genes")
 (:VAR MV2602 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2606 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2600 :RAW-TEXT
  "downstream")
 (:VAR MV2600 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
269: "What apoptotic genes does stat3 regulate in the liver?"

                    SOURCE-START
e19   REGULATE      1 "What apoptotic genes does stat3 regulate in the liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate in the liver?"
 (:VAR MV2616 :ISA REGULATE :OBJECT MV2614 :AGENT MV2610 :ORGAN MV2619 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2614 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2612
  :RAW-TEXT "genes")
 (:VAR MV2612 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2610 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2619 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
270: "What apoptotic genes does stat3 regulate?"

                    SOURCE-START
e11   REGULATE      1 "What apoptotic genes does stat3 regulate" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate?"
 (:VAR MV2627 :ISA REGULATE :OBJECT MV2625 :AGENT MV2621 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2625 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2623
  :RAW-TEXT "genes")
 (:VAR MV2623 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2621 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
271: "What apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "What apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes is stat3 upstream of?"
 (:VAR MV2633 :ISA BE :SUBJECT MV2632 :PREDICATE MV2634 :PRESENT "PRESENT")
 (:VAR MV2632 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2630
  :RAW-TEXT "genes")
 (:VAR MV2630 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2634 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV2632 :MODIFIER MV2628
  :RAW-TEXT "upstream")
 (:VAR MV2632 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2630
  :RAW-TEXT "genes")
 (:VAR MV2630 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2628 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
272: "What apoptotic pathways involve stat3?"

                    SOURCE-START
e10   INVOLVE       1 "What apoptotic pathways involve stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic pathways involve stat3?"
 (:VAR MV2642 :ISA INVOLVE :THEME MV2641 :THEME MV2637 :PRESENT "PRESENT")
 (:VAR MV2641 :ISA PATHWAY :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2639
  :RAW-TEXT "pathways")
 (:VAR MV2639 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2637 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
273: "What are Selumetinib's targets?"

                    SOURCE-START
e9    BE            1 "What are Selumetinib's targets" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are Selumetinib's targets?"
 (:VAR MV2644 :ISA BE :SUBJECT MV2643 :PREDICATE MV2647 :PRESENT "PRESENT")
 (:VAR MV2643 :ISA WHAT)
 (:VAR MV2647 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV2646 :RAW-TEXT "targets")
 (:VAR MV2646 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
274: "What are some JAK1 inhibitors?"

                    SOURCE-START
e9    BE            1 "What are some JAK1 inhibitors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some JAK1 inhibitors?"
 (:VAR MV2651 :ISA BE :SUBJECT MV2650 :PREDICATE MV2653 :PRESENT "PRESENT")
 (:VAR MV2650 :ISA WHAT)
 (:VAR MV2653 :ISA INHIBITOR :QUANTIFIER MV2652 :PROTEIN MV2649 :RAW-TEXT
  "inhibitors")
 (:VAR MV2652 :ISA SOME :WORD "some")
 (:VAR MV2649 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
275: "What are some drugs that inhibit BRAF?"

                    SOURCE-START
e14   BE            1 "What are some drugs that inhibit BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs that inhibit BRAF?"
 (:VAR MV2655 :ISA BE :SUBJECT MV2654 :PREDICATE MV2657 :PRESENT "PRESENT")
 (:VAR MV2654 :ISA WHAT)
 (:VAR MV2657 :ISA DRUG :PREDICATION MV2659 :QUANTIFIER MV2656 :RAW-TEXT
  "drugs")
 (:VAR MV2659 :ISA INHIBIT :AGENT MV2657 :THAT-REL T :OBJECT MV2660 :PRESENT
  "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV2660 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV2656 :ISA SOME :WORD "some"))

___________________
276: "What are some genes in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some genes in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes in the MAPK signaling pathway?"
 (:VAR MV2663 :ISA BE :SUBJECT MV2662 :PREDICATE MV2665 :PRESENT "PRESENT")
 (:VAR MV2662 :ISA WHAT)
 (:VAR MV2665 :ISA GENE :CONTEXT MV2661 :QUANTIFIER MV2664 :RAW-TEXT "genes")
 (:VAR MV2661 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2668
  :RAW-TEXT "signaling pathway")
 (:VAR MV2668 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2664 :ISA SOME :WORD "some"))

___________________
277: "What are some proteins in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some proteins in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some proteins in the MAPK signaling pathway?"
 (:VAR MV2672 :ISA BE :SUBJECT MV2671 :PREDICATE MV2674 :PRESENT "PRESENT")
 (:VAR MV2671 :ISA WHAT)
 (:VAR MV2674 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV2670 :QUANTIFIER MV2673
  :RAW-TEXT "proteins")
 (:VAR MV2670 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2677
  :RAW-TEXT "signaling pathway")
 (:VAR MV2677 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2673 :ISA SOME :WORD "some"))

___________________
278: "What are the members of RAS?"

                    SOURCE-START
e12   BE            1 "What are the members of RAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of RAS?"
 (:VAR MV2680 :ISA BE :SUBJECT MV2679 :PREDICATE MV2682 :PRESENT "PRESENT")
 (:VAR MV2679 :ISA WHAT)
 (:VAR MV2682 :ISA MEMBER :SET MV2684 :HAS-DETERMINER "THE")
 (:VAR MV2684 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3
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
 (:VAR MV2690 :ISA BE :SUBJECT MV2689 :PREDICATE MV2692 :PRESENT "PRESENT")
 (:VAR MV2689 :ISA WHAT)
 (:VAR MV2692 :ISA MICRO-RNA :PREDICATION MV2694 :HAS-DETERMINER "THE"
  :RAW-TEXT "miRNAS")
 (:VAR MV2694 :ISA REGULATE :AGENT MV2692 :THAT-REL T :OBJECT MV2698 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2698 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2695 MV2696 MV2686 MV2687 MV2688))
 (:VAR MV2695 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2696 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2686 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2687 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2688 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
280: "What are the regulators of MAPPK14 in bladder"

                    SOURCE-START
e19   BE            1 "What are the regulators of MAPPK14 in bladder" 10
                    END-OF-SOURCE
("What are the regulators of MAPPK14 in bladder"
 (:VAR MV2700 :ISA BE :SUBJECT MV2699 :PREDICATE MV2702 :PRESENT "PRESENT")
 (:VAR MV2699 :ISA WHAT)
 (:VAR MV2702 :ISA REGULATOR :THEME MV2708 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2708 :ISA BIO-ENTITY :ORGAN MV2707 :NAME "MAPPK14")
 (:VAR MV2707 :ISA BIO-ORGAN :NAME "bladder" :UID "BTO:0001418"))

___________________
281: "What are the regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What are the regulators of SMURF2 in liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2 in liver?"
 (:VAR MV2713 :ISA BE :SUBJECT MV2712 :PREDICATE MV2715 :PRESENT "PRESENT")
 (:VAR MV2712 :ISA WHAT)
 (:VAR MV2715 :ISA REGULATOR :THEME MV2711 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2711 :ISA PROTEIN :ORGAN MV2718 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV2718 :ISA LIVER))

___________________
282: "What are the regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What are the regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2?"
 (:VAR MV2723 :ISA BE :SUBJECT MV2722 :PREDICATE MV2725 :PRESENT "PRESENT")
 (:VAR MV2722 :ISA WHAT)
 (:VAR MV2725 :ISA REGULATOR :THEME MV2721 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2721 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
283: "What are the regulators of c-fos in lung?"

                    SOURCE-START
e18   BE            1 "What are the regulators of c-fos in lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of c-fos in lung?"
 (:VAR MV2730 :ISA BE :SUBJECT MV2729 :PREDICATE MV2732 :PRESENT "PRESENT")
 (:VAR MV2729 :ISA WHAT)
 (:VAR MV2732 :ISA REGULATOR :THEME MV2728 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2728 :ISA PROTEIN :ORGAN MV2735 :RAW-TEXT "c-fos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2735 :ISA LUNG))

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
 (:VAR MV2753 :ISA BE :SUBJECT MV2752 :PREDICATE MV2755 :PRESENT "PRESENT")
 (:VAR MV2752 :ISA WHAT)
 (:VAR MV2755 :ISA REGULATOR :THEME MV2751 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2751 :ISA PROTEIN :RAW-TEXT "mapk14" :UID "UP:Q16539" :NAME
  "MK14_HUMAN"))

___________________
286: "What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e28   COPULAR-PREDICATION 1 "What are the transcription factors in common to the SRF, HRAS, and elk1 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
 (:VAR MV2772 :ISA COPULAR-PREDICATION :ITEM MV2761 :VALUE MV2759 :PREDICATE
  MV2762)
 (:VAR MV2761 :ISA WHAT) (:VAR MV2759 :ISA IN-COMMON :THEME MV2769)
 (:VAR MV2769 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2770 :RAW-TEXT
  "genes")
 (:VAR MV2770 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV2766 MV2767 MV2760))
 (:VAR MV2766 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2767 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV2760 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2762 :ISA BE :PREDICATE MV2758 :PRESENT "PRESENT")
 (:VAR MV2758 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :RAW-TEXT
  "transcription factors"))

___________________
287: "What are the transcription factors that regulate EELK1 and SRF?"

                    SOURCE-START
e21   BE            1 "What are the transcription factors that regulate EELK1 and SRF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EELK1 and SRF?"
 (:VAR MV2775 :ISA BE :SUBJECT MV2774 :PREDICATE MV2773 :PRESENT "PRESENT")
 (:VAR MV2774 :ISA WHAT)
 (:VAR MV2773 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2778 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2778 :ISA REGULATE :AGENT MV2773 :THAT-REL T :OBJECT MV2784 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2784 :ISA COLLECTION :RAW-TEXT "EELK1 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2783 MV2782))
 (:VAR MV2783 :ISA BIO-ENTITY :NAME "EELK1")
 (:VAR MV2782 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
288: "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"

                    SOURCE-START
e30   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
 (:VAR MV2789 :ISA BE :SUBJECT MV2788 :PREDICATE MV2785 :PRESENT "PRESENT")
 (:VAR MV2788 :ISA WHAT)
 (:VAR MV2785 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2792 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2792 :ISA REGULATE :AGENT MV2785 :THAT-REL T :OBJECT MV2799 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2799 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2793 MV2794 MV2798 MV2786 MV2787))
 (:VAR MV2793 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2794 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2798 :ISA BIO-ENTITY :NAME "STAAT3")
 (:VAR MV2786 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2787 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
289: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV2805 :ISA BE :SUBJECT MV2804 :PREDICATE MV2800 :PRESENT "PRESENT")
 (:VAR MV2804 :ISA WHAT)
 (:VAR MV2800 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2808 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2808 :ISA REGULATE :AGENT MV2800 :THAT-REL T :OBJECT MV2812 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2812 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2809 MV2810 MV2801 MV2802 MV2803))
 (:VAR MV2809 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2810 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2801 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2802 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2803 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
290: "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"

                    SOURCE-START
e26   BE            1 "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
 (:VAR MV2817 :ISA BE :SUBJECT MV2816 :PREDICATE MV2821 :PRESENT "PRESENT")
 (:VAR MV2816 :ISA WHAT)
 (:VAR MV2821 :ISA REGULATOR :THEME MV2825 :HAS-DETERMINER "THE" :CONTEXT
  MV2819 :RAW-TEXT "regulators")
 (:VAR MV2825 :ISA COLLECTION :RAW-TEXT "CCND1, FOXM1, DHFR, and KLF4" :TYPE
  PROTEIN :NUMBER 4 :ITEMS (MV2813 MV2814 MV2823 MV2815))
 (:VAR MV2813 :ISA PROTEIN :RAW-TEXT "CCND1" :UID "UP:P24385" :NAME
  "CCND1_HUMAN")
 (:VAR MV2814 :ISA PROTEIN :RAW-TEXT "FOXM1" :UID "UP:Q08050" :NAME
  "FOXM1_HUMAN")
 (:VAR MV2823 :ISA PROTEIN :RAW-TEXT "DHFR" :UID "UP:P00374" :NAME "DYR_HUMAN")
 (:VAR MV2815 :ISA PROTEIN :RAW-TEXT "KLF4" :UID "UP:O43474" :NAME
  "KLF4_HUMAN")
 (:VAR MV2819 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
291: "What cell cycle genes are regulated by FOS?"

                    SOURCE-START
e14   REGULATE      1 "What cell cycle genes are regulated by FOS" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What cell cycle genes are regulated by FOS?"
 (:VAR MV2834 :ISA REGULATE :OBJECT MV2829 :AGENT MV2833 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2829 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2827
  :RAW-TEXT "genes")
 (:VAR MV2827 :ISA CELLULAR-PROCESS :RAW-TEXT "cell cycle" :NAME "cell cycle"
  :UID "GO:0007049")
 (:VAR MV2833 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
292: "What does ERBB regulate?"

                    SOURCE-START
e5    REGULATE      1 "What does ERBB regulate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERBB regulate?"
 (:VAR MV2839 :ISA REGULATE :OBJECT MV2836 :AGENT MV2838 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2836 :ISA WHAT)
 (:VAR MV2838 :ISA PROTEIN :RAW-TEXT "ERBB" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
293: "What does it regulate in liver"

                    SOURCE-START
e11   REGULATE      1 "What does it regulate in liver" 7
                    END-OF-SOURCE
("What does it regulate in liver"
 (:VAR MV2843 :ISA REGULATE :OBJECT MV2840 :AGENT-OR-CAUSE MV2842 :ORGAN MV2845
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2840 :ISA WHAT) (:VAR MV2842 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2845 :ISA LIVER))

___________________
294: "What does miR-20b-5p target"

                    SOURCE-START
e7    TARGET        1 "What does miR-20b-5p target" 11
                    END-OF-SOURCE
("What does miR-20b-5p target"
 (:VAR MV2851 :ISA TARGET :OBJECT MV2848 :AGENT MV2847 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV2848 :ISA WHAT)
 (:VAR MV2847 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
295: "What does p53 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does p53 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does p53 regulate?"
 (:VAR MV2855 :ISA REGULATE :OBJECT MV2853 :AGENT MV2852 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2853 :ISA WHAT)
 (:VAR MV2852 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
296: "What does rb1 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does rb1 regulate" 6
                    END-OF-SOURCE
("What does rb1 regulate"
 (:VAR MV2859 :ISA REGULATE :OBJECT MV2857 :AGENT MV2856 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2857 :ISA WHAT)
 (:VAR MV2856 :ISA PROTEIN :RAW-TEXT "rb1" :UID "UP:P06400" :NAME "RB_HUMAN"))

___________________
297: "What does smad2 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does smad2 regulate" 6
                    END-OF-SOURCE
("What does smad2 regulate"
 (:VAR MV2863 :ISA REGULATE :OBJECT MV2861 :AGENT MV2860 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2861 :ISA WHAT)
 (:VAR MV2860 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
298: "What does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "What does stat regulate" 5
                    END-OF-SOURCE
("What does stat regulate"
 (:VAR MV2867 :ISA REGULATE :OBJECT MV2864 :AGENT MV2866 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2864 :ISA WHAT)
 (:VAR MV2866 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
299: "What downregulates fzd8?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates fzd8?"
 (:VAR MV2870 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV2869 :OBJECT MV2868 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV2869 :ISA WHAT)
 (:VAR MV2868 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
300: "What drug could I use to target pancreatic cancer?"

                    SOURCE-START
e20   BIO-USE       1 "What drug could I use to target pancreatic cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use to target pancreatic cancer?"
 (:VAR MV2884 :ISA BIO-USE :PATIENT MV2873 :MODAL MV2874 :AGENT MV2875 :THEME
  MV2883 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV2873 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV2874 :ISA COULD) (:VAR MV2875 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2883 :ISA TARGET :OBJECT MV2871 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV2871 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
301: "What drug should I use for pancreatic cancer?"

                    SOURCE-START
e17   BIO-USE       1 "What drug should I use for pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug should I use for pancreatic cancer?"
 (:VAR MV2896 :ISA BIO-USE :OBJECT MV2887 :MODAL MV2888 :AGENT MV2889 :DISEASE
  MV2885 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV2887 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV2888 :ISA SHOULD) (:VAR MV2889 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2885 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
302: "What drugs are inhibitors of GRB2?"

                    SOURCE-START
e12   BE            1 "What drugs are inhibitors of GRB2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs are inhibitors of GRB2?"
 (:VAR MV2900 :ISA BE :SUBJECT MV2899 :PREDICATE MV2901 :PRESENT "PRESENT")
 (:VAR MV2899 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2901 :ISA INHIBITOR :PROTEIN MV2897 :RAW-TEXT "inhibitors")
 (:VAR MV2897 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN"))

___________________
303: "What drugs inhibit MAP2K1?"

                    SOURCE-START
e7    INHIBIT       1 "What drugs inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs inhibit MAP2K1?"
 (:VAR MV2907 :ISA INHIBIT :AGENT MV2906 :OBJECT MV2904 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV2906 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2904 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
304: "What drugs regulate BRAF?"

                    SOURCE-START
e6    REGULATE      1 "What drugs regulate BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs regulate BRAF?"
 (:VAR MV2910 :ISA REGULATE :AGENT MV2909 :OBJECT MV2911 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2909 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2911 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
305: "What drugs target BRAF?"

                    SOURCE-START
e7    TARGET        1 "What drugs target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target BRAF?"
 (:VAR MV2915 :ISA TARGET :AGENT MV2913 :OBJECT MV2916 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV2913 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2916 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
306: "What genes are downstream of stat3?"

                    SOURCE-START
e13   BE            1 "What genes are downstream of stat3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are downstream of stat3?"
 (:VAR MV2920 :ISA BE :SUBJECT MV2919 :PREDICATE MV2921 :PRESENT "PRESENT")
 (:VAR MV2919 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2921 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2917 :RAW-TEXT
  "downstream")
 (:VAR MV2917 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
307: "What genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathway?"
 (:VAR MV2935 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2927 :VALUE MV2934 :PREP
  "IN" :PREDICATE MV2928)
 (:VAR MV2927 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2934 :ISA GENE :CONTEXT MV2925 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2925 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2931
  :RAW-TEXT "signaling pathway")
 (:VAR MV2931 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2928 :ISA BE :PRESENT "PRESENT"))

___________________
308: "What genes are in the MAPK signaling pathways?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathways?"
 (:VAR MV2947 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2939 :VALUE MV2946 :PREP
  "IN" :PREDICATE MV2940)
 (:VAR MV2939 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2946 :ISA GENE :CONTEXT MV2937 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2937 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2943
  :RAW-TEXT "signaling pathways")
 (:VAR MV2943 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2940 :ISA BE :PRESENT "PRESENT"))

___________________
309: "What genes are in the immune system pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the immune system pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the immune system pathway?"
 (:VAR MV2959 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2951 :VALUE MV2958 :PREP
  "IN" :PREDICATE MV2952)
 (:VAR MV2951 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2958 :ISA GENE :CONTEXT MV2955 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2955 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2949
  :RAW-TEXT "pathway")
 (:VAR MV2949 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405")
 (:VAR MV2952 :ISA BE :PRESENT "PRESENT"))

___________________
310: "What genes are in the prolactin signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the prolactin signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the prolactin signaling pathway?"
 (:VAR MV2971 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2963 :VALUE MV2970 :PREP
  "IN" :PREDICATE MV2964)
 (:VAR MV2963 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2970 :ISA GENE :CONTEXT MV2961 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2961 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2967
  :RAW-TEXT "signaling pathway")
 (:VAR MV2967 :ISA PROTEIN :RAW-TEXT "prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN")
 (:VAR MV2964 :ISA BE :PRESENT "PRESENT"))

___________________
311: "What genes are involved in the IL-12 pathway?"

                    SOURCE-START
e18   INVOLVE       1 "What genes are involved in the IL-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the IL-12 pathway?"
 (:VAR MV2984 :ISA INVOLVE :THEME MV2976 :CONTEXT MV2981 :PRESENT "PRESENT")
 (:VAR MV2976 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2981 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2974 :RAW-TEXT
  "pathway")
 (:VAR MV2974 :ISA PROTEIN :RAW-TEXT "IL-12" :UID "NCIT:C20514" :NAME
  "NCIT:C20514"))

___________________
312: "What genes are involved in the Prolactin pathway?"

                    SOURCE-START
e16   INVOLVE       1 "What genes are involved in the Prolactin pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the Prolactin pathway?"
 (:VAR MV2995 :ISA INVOLVE :THEME MV2986 :CONTEXT MV2992 :PRESENT "PRESENT")
 (:VAR MV2986 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2992 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2991 :RAW-TEXT
  "pathway")
 (:VAR MV2991 :ISA PROTEIN :RAW-TEXT "Prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN"))

___________________
313: "What genes are involved in the il-12 pathway?"

                    SOURCE-START
e17   INVOLVE       1 "What genes are involved in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the il-12 pathway?"
 (:VAR MV3006 :ISA INVOLVE :THEME MV2998 :CONTEXT MV3003 :PRESENT "PRESENT")
 (:VAR MV2998 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3003 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2996 :RAW-TEXT
  "pathway")
 (:VAR MV2996 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
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
 (:VAR MV3017 :ISA INVOLVE :THEME MV3009 :CONTEXT MV3014 :PRESENT "PRESENT")
 (:VAR MV3009 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3014 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV3007
  :RAW-TEXT "pathway")
 (:VAR MV3007 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405"))

___________________
315: "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"

                    SOURCE-START
e23   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p" 28
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
 (:VAR MV3030 :ISA REGULATE :OBJECT MV3022 :AGENT MV3029 :PRESENT "PRESENT"
  :SUPERLATIVE MV3024 :ADVERB MV3025 :RAW-TEXT "regulated")
 (:VAR MV3022 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3029 :ISA COLLECTION :RAW-TEXT "miR-335-5p, miR-155-5p and miR-145-5p"
  :TYPE MICRO-RNA :NUMBER 3 :ITEMS (MV3018 MV3019 MV3020))
 (:VAR MV3018 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3019 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3020 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3024 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3025 :ISA FREQUENTLY :NAME "frequently"))

___________________
316: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"

                    SOURCE-START
e26   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" 36
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
 (:VAR MV3045 :ISA REGULATE :OBJECT MV3037 :AGENT MV3044 :PRESENT "PRESENT"
  :SUPERLATIVE MV3039 :ADVERB MV3040 :RAW-TEXT "regulated")
 (:VAR MV3037 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3044 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" :TYPE MICRO-RNA :NUMBER 4
  :ITEMS (MV3032 MV3033 MV3034 MV3035))
 (:VAR MV3032 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3033 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3034 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3035 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075")
 (:VAR MV3039 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3040 :ISA FREQUENTLY :NAME "frequently"))

___________________
317: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"

                    SOURCE-START
e27   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" 37
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
 (:VAR MV3060 :ISA REGULATE :OBJECT MV3052 :AGENT MV3059 :PRESENT "PRESENT"
  :SUPERLATIVE MV3054 :ADVERB MV3055 :RAW-TEXT "regulated")
 (:VAR MV3052 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3059 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" :TYPE MICRO-RNA :NUMBER
  4 :ITEMS (MV3047 MV3048 MV3049 MV3050))
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
318: "What genes are regulated by FAKEPRTN"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by FAKEPRTN" 7
                    END-OF-SOURCE
("What genes are regulated by FAKEPRTN"
 (:VAR MV3068 :ISA REGULATE :OBJECT MV3063 :AGENT MV3067 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3063 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3067 :ISA BIO-ENTITY :NAME "FAKEPRTN"))

___________________
319: "What genes are regulated by elk1 and srf?"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by elk1 and srf" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by elk1 and srf?"
 (:VAR MV3079 :ISA REGULATE :OBJECT MV3072 :AGENT MV3078 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3072 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3078 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3070 MV3077))
 (:VAR MV3070 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV3077 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
320: "What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"

                    SOURCE-START
e16   REGULATE      1 "What genes are regulated by miR-20b-5p and MIR-29B-1-5P" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
 (:VAR MV3090 :ISA REGULATE :OBJECT MV3084 :AGENT MV3089 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3084 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3089 :ISA COLLECTION :RAW-TEXT "miR-20b-5p and MIR-29B-1-5P" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV3081 MV3082))
 (:VAR MV3081 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV3082 :ISA MICRO-RNA :RAW-TEXT "MIR-29B-1-5P" :NAME
  "microRNA 29b-1-5pm" :UID "MIMAT0004514"))

___________________
321: "What genes are regulated by smda2"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by smda2" 8
                    END-OF-SOURCE
("What genes are regulated by smda2"
 (:VAR MV3100 :ISA REGULATE :OBJECT MV3093 :AGENT MV3099 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3093 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3099 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
322: "What genes are regulated by srf"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by srf" 7
                    END-OF-SOURCE
("What genes are regulated by srf"
 (:VAR MV3108 :ISA REGULATE :OBJECT MV3103 :AGENT MV3107 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3103 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3107 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
323: "What genes are regulated by stat3 and srf"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by stat3 and srf" 10
                    END-OF-SOURCE
("What genes are regulated by stat3 and srf"
 (:VAR MV3119 :ISA REGULATE :OBJECT MV3112 :AGENT MV3118 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3112 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3118 :ISA COLLECTION :RAW-TEXT "stat3 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3110 MV3117))
 (:VAR MV3110 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3117 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
324: "What genes are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What genes are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are targeted by lung cancer?"
 (:VAR MV3127 :ISA TARGET :OBJECT MV3123 :CAUSE MV3121 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3123 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3121 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
325: "What genes are there in the MAPK signaling pathway?"

                    SOURCE-START
e21   COPULAR-PREDICATE 1 "What genes are there in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are there in the MAPK signaling pathway?"
 (:VAR MV3141 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3131 :VALUE MV3140 :PREP
  "IN" :PREDICATE MV3132)
 (:VAR MV3131 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3140 :ISA GENE :CONTEXT MV3129 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3129 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3137
  :RAW-TEXT "signaling pathway")
 (:VAR MV3137 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3132 :ISA BE :PRESENT "PRESENT"))

___________________
326: "What genes are used in the MAPK signaling pathway?"

                    SOURCE-START
e17   BIO-USE       1 "What genes are used in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are used in the MAPK signaling pathway?"
 (:VAR MV3151 :ISA BIO-USE :OBJECT MV3145 :CONTEXT MV3143 :PRESENT "PRESENT"
  :RAW-TEXT "used")
 (:VAR MV3145 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3143 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3150
  :RAW-TEXT "signaling pathway")
 (:VAR MV3150 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3158 :ISA TARGET :OBJECT MV3155 :CAUSE MV3153 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3155 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3153 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
328: "What genes does miR-20b-5p target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-20b-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-20b-5p target?"
 (:VAR MV3164 :ISA TARGET :OBJECT MV3161 :AGENT MV3159 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3161 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3159 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
329: "What genes does miR-562 target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-562 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-562 target?"
 (:VAR MV3170 :ISA TARGET :OBJECT MV3167 :AGENT MV3165 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3167 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3165 :ISA MICRO-RNA :RAW-TEXT "miR-562" :NAME "microRNA 562" :UID
  "MI0003569"))

___________________
330: "What genes does smad2 upregulate?"

                    SOURCE-START
e8    UPREGULATE    1 "What genes does smad2 upregulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does smad2 upregulate?"
 (:VAR MV3175 :ISA UPREGULATE :OBJECT MV3173 :AGENT MV3171 :PRESENT "PRESENT"
  :RAW-TEXT "upregulate")
 (:VAR MV3173 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3171 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
331: "What genes does stat3 regulate in liver cells?"

                    SOURCE-START
e15   REGULATE      1 "What genes does stat3 regulate in liver cells" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver cells?"
 (:VAR MV3180 :ISA REGULATE :OBJECT MV3178 :AGENT MV3176 :CELL-TYPE MV3183
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3178 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3176 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3183 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV3182)
 (:VAR MV3182 :ISA LIVER))

___________________
332: "What genes does stat3 regulate in liver?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver?"
 (:VAR MV3189 :ISA REGULATE :OBJECT MV3187 :AGENT MV3185 :ORGAN MV3191 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3187 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3185 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3191 :ISA LIVER))

___________________
333: "What genes does stat3 regulate in lung?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in lung" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in lung?"
 (:VAR MV3197 :ISA REGULATE :OBJECT MV3195 :AGENT MV3193 :ORGAN MV3199 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3195 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3193 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3199 :ISA LUNG))

___________________
334: "What genes does stat3 regulate"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    END-OF-SOURCE
("What genes does stat3 regulate"
 (:VAR MV3205 :ISA REGULATE :OBJECT MV3203 :AGENT MV3201 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3203 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3201 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
335: "What genes in the liver does stat3 regulate?"

                    SOURCE-START
e16   REGULATE      1 "What genes in the liver does stat3 regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes in the liver does stat3 regulate?"
 (:VAR MV3213 :ISA REGULATE :OBJECT MV3208 :AGENT MV3206 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3208 :ISA GENE :ORGAN MV3211 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3211 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV3206 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
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
 (:VAR MV3225 :ISA BE :SUBJECT MV3224 :PREDICATE MV3226 :PRESENT "PRESENT")
 (:VAR MV3224 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3226 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3224 :MODIFIER MV3222
  :RAW-TEXT "upstream")
 (:VAR MV3224 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3222 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
338: "What genes regulated by FOS are kinases?"

                    SOURCE-START
e14   BE            1 "What genes regulated by FOS are kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by FOS are kinases?"
 (:VAR MV3234 :ISA BE :SUBJECT MV3230 :PREDICATE MV3235 :PRESENT "PRESENT")
 (:VAR MV3230 :ISA GENE :PREDICATION MV3231 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3231 :ISA REGULATE :OBJECT MV3230 :AGENT MV3233 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3233 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV3235 :ISA KINASE :RAW-TEXT "kinases"))

___________________
339: "What genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "What genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by stat3 are kinases?"
 (:VAR MV3242 :ISA BE :SUBJECT MV3239 :PREDICATE MV3243 :PRESENT "PRESENT")
 (:VAR MV3239 :ISA GENE :PREDICATION MV3240 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3240 :ISA REGULATE :OBJECT MV3239 :AGENT MV3237 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3237 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3243 :ISA KINASE :RAW-TEXT "kinases"))

___________________
340: "What immune pathways involve KRAS and ELK1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve KRAS and ELK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve KRAS and ELK1?"
 (:VAR MV3249 :ISA INVOLVE :THEME MV3248 :THEME MV3252 :PRESENT "PRESENT")
 (:VAR MV3248 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3247 :RAW-TEXT
  "pathways")
 (:VAR MV3247 :ISA IMMUNE :NAME "immune")
 (:VAR MV3252 :ISA COLLECTION :RAW-TEXT "KRAS and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3250 MV3245))
 (:VAR MV3250 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3245 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
341: "What immune pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "What immune pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve SRF?"
 (:VAR MV3256 :ISA INVOLVE :THEME MV3255 :THEME MV3257 :PRESENT "PRESENT")
 (:VAR MV3255 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3254 :RAW-TEXT
  "pathways")
 (:VAR MV3254 :ISA IMMUNE :NAME "immune")
 (:VAR MV3257 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
342: "What immune pathways involve kras and elk1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve kras and elk1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve kras and elk1?"
 (:VAR MV3262 :ISA INVOLVE :THEME MV3261 :THEME MV3265 :PRESENT "PRESENT")
 (:VAR MV3261 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3260 :RAW-TEXT
  "pathways")
 (:VAR MV3260 :ISA IMMUNE :NAME "immune")
 (:VAR MV3265 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3263 MV3258))
 (:VAR MV3263 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3258 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
343: "What immune pathways involve tap1 and jak1?"

                    SOURCE-START
e17   INVOLVE       1 "What immune pathways involve tap1 and jak1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve tap1 and jak1?"
 (:VAR MV3269 :ISA INVOLVE :THEME MV3268 :THEME MV3279 :PRESENT "PRESENT")
 (:VAR MV3268 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3267 :RAW-TEXT
  "pathways")
 (:VAR MV3267 :ISA IMMUNE :NAME "immune")
 (:VAR MV3279 :ISA COLLECTION :RAW-TEXT "tap1 and jak1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3277 MV3278))
 (:VAR MV3277 :ISA PROTEIN :RAW-TEXT "tap1" :UID "UP:Q03518" :NAME
  "TAP1_HUMAN")
 (:VAR MV3278 :ISA PROTEIN :RAW-TEXT "jak1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
344: "What inhibits BRAF?"

                    SOURCE-START
e4    INHIBIT       1 "What inhibits BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits BRAF?"
 (:VAR MV3281 :ISA INHIBIT :AGENT-OR-CAUSE MV3280 :OBJECT MV3282 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV3280 :ISA WHAT)
 (:VAR MV3282 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
345: "What is STAT3?"

                    SOURCE-START
e5    BE            1 "What is STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT3?"
 (:VAR MV3285 :ISA BE :SUBJECT MV3284 :PREDICATE MV3283 :PRESENT "PRESENT")
 (:VAR MV3284 :ISA WHAT)
 (:VAR MV3283 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
346: "What is STAT?"

                    SOURCE-START
e4    BE            1 "What is STAT" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT?"
 (:VAR MV3287 :ISA BE :SUBJECT MV3286 :PREDICATE MV3288 :PRESENT "PRESENT")
 (:VAR MV3286 :ISA WHAT)
 (:VAR MV3288 :ISA PROTEIN :RAW-TEXT "STAT" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
347: "What is downstream of stat3?"

                    SOURCE-START
e11   BE            1 "What is downstream of stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is downstream of stat3?"
 (:VAR MV3291 :ISA BE :SUBJECT MV3290 :PREDICATE MV3292 :PRESENT "PRESENT")
 (:VAR MV3290 :ISA WHAT)
 (:VAR MV3292 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV3289 :RAW-TEXT
  "downstream")
 (:VAR MV3289 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
348: "What is erbb?"

                    SOURCE-START
e4    BE            1 "What is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is erbb?"
 (:VAR MV3297 :ISA BE :SUBJECT MV3296 :PREDICATE MV3298 :PRESENT "PRESENT")
 (:VAR MV3296 :ISA WHAT)
 (:VAR MV3298 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
349: "What is errb?"

                    SOURCE-START
e4    BE            1 "What is errb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is errb?"
 (:VAR MV3300 :ISA BE :SUBJECT MV3299 :PREDICATE MV3301 :PRESENT "PRESENT")
 (:VAR MV3299 :ISA WHAT) (:VAR MV3301 :ISA BIO-ENTITY :NAME "errb"))

___________________
350: "What is regulated by elk1"

                    SOURCE-START
e10   REGULATE      1 "What is regulated by elk1" 7
                    END-OF-SOURCE
("What is regulated by elk1"
 (:VAR MV3307 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3303 :AGENT MV3302
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3303 :ISA WHAT)
 (:VAR MV3302 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
351: "What is the evidence that kras decreases frizzled8?"

                    SOURCE-START
e17   BE            1 "What is the evidence that kras decreases frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases frizzled8?"
 (:VAR MV3311 :ISA BE :SUBJECT MV3310 :PREDICATE MV3317 :PRESENT "PRESENT")
 (:VAR MV3310 :ISA WHAT)
 (:VAR MV3317 :ISA EVIDENCE :STATEMENT MV3316 :HAS-DETERMINER "THE")
 (:VAR MV3316 :ISA DECREASE :AGENT MV3315 :OBJECT MV3309 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV3315 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3309 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
352: "What is the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   BE            1 "What is the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV3320 :ISA BE :SUBJECT MV3319 :PREDICATE MV3330 :PRESENT "PRESENT")
 (:VAR MV3319 :ISA WHAT)
 (:VAR MV3330 :ISA EVIDENCE :STATEMENT MV3325 :HAS-DETERMINER "THE")
 (:VAR MV3325 :ISA DECREASE :AGENT MV3324 :AFFECTED-PROCESS-OR-OBJECT MV3327
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV3324 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3327 :ISA BIO-AMOUNT :MEASURED-ITEM MV3318 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV3318 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
353: "What is the target of Selumetinib?"

                    SOURCE-START
e13   BE            1 "What is the target of Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the target of Selumetinib?"
 (:VAR MV3332 :ISA BE :SUBJECT MV3331 :PREDICATE MV3334 :PRESENT "PRESENT")
 (:VAR MV3331 :ISA WHAT)
 (:VAR MV3334 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV3337 :HAS-DETERMINER "THE"
  :RAW-TEXT "target")
 (:VAR MV3337 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
354: "What kinases does smad2 regulate"

                    SOURCE-START
e8    REGULATE      1 "What kinases does smad2 regulate" 7
                    END-OF-SOURCE
("What kinases does smad2 regulate"
 (:VAR MV3343 :ISA REGULATE :OBJECT MV3341 :AGENT MV3339 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3341 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV3339 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
355: "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e23   REGULATE      1 "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3351 :ISA REGULATE :AGENT MV3348 :OBJECT MV3355 :PRESENT "PRESENT"
  :ADVERB MV3349 :ADVERB MV3350 :RAW-TEXT "regulate")
 (:VAR MV3348 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3355 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3352 MV3353 MV3344 MV3345 MV3346))
 (:VAR MV3352 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV3353 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3344 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3345 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV3346 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN")
 (:VAR MV3349 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3350 :ISA FREQUENTLY :NAME "frequently"))

___________________
356: "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3361 :ISA REGULATE :AGENT MV3360 :OBJECT MV3365 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3360 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3365 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3362 MV3363 MV3356 MV3357 MV3358))
 (:VAR MV3362 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV3363 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3356 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3357 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV3358 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
357: "What micrornas are regulated by p53?"

                    SOURCE-START
e12   REGULATE      1 "What micrornas are regulated by p53" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What micrornas are regulated by p53?"
 (:VAR MV3372 :ISA REGULATE :OBJECT MV3368 :AGENT MV3366 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3368 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3366 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
358: "What micrornas regulate genes in the mapk signaling pathways"

                    SOURCE-START
e17   REGULATE      1 "What micrornas regulate genes in the mapk signaling pathways" 10
                    END-OF-SOURCE
("What micrornas regulate genes in the mapk signaling pathways"
 (:VAR MV3377 :ISA REGULATE :AGENT MV3376 :OBJECT MV3378 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3376 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3378 :ISA GENE :CONTEXT MV3374 :RAW-TEXT "genes")
 (:VAR MV3374 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3381
  :RAW-TEXT "signaling pathways")
 (:VAR MV3381 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
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
 (:VAR MV3384 :ISA INVOLVE :THEME MV3386 :THEME MV3385 :PRESENT "PRESENT")
 (:VAR MV3386 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :NAME "pahtways")
 (:VAR MV3385 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
360: "What pathways are common to STAT3 and SRF?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What pathways are common to STAT3 and SRF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are common to STAT3 and SRF?"
 (:VAR MV3397 :ISA COPULAR-PREDICATION :ITEM MV3389 :VALUE MV3391 :PREDICATE
  MV3390)
 (:VAR MV3389 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3391 :ISA COMMON :THEME MV3395)
 (:VAR MV3395 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3387 MV3394))
 (:VAR MV3387 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3394 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3390 :ISA BE :PRESENT "PRESENT"))

___________________
361: "What pathways involve cfos?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve cfos" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve cfos?"
 (:VAR MV3400 :ISA INVOLVE :THEME MV3399 :THEME MV3401 :PRESENT "PRESENT")
 (:VAR MV3399 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3401 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
362: "What pathways involve kras and elk1?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve kras and elk1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve kras and elk1?"
 (:VAR MV3405 :ISA INVOLVE :THEME MV3404 :THEME MV3408 :PRESENT "PRESENT")
 (:VAR MV3404 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3408 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3406 MV3402))
 (:VAR MV3406 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3402 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
363: "What pathways involve the SRF transcription factor?"

                    SOURCE-START
e12   INVOLVE       1 "What pathways involve the SRF transcription factor" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the SRF transcription factor?"
 (:VAR MV3412 :ISA INVOLVE :THEME MV3411 :THEME MV3409 :PRESENT "PRESENT")
 (:VAR MV3411 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3409 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :MODIFIER MV3414
  :RAW-TEXT "transcription factor")
 (:VAR MV3414 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV3435 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3426 :VALUE MV3433 :PREP
  MV3428 :PREDICATE MV3427)
 (:VAR MV3426 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3433 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3428 :ISA IN :WORD "in") (:VAR MV3427 :ISA BE :PRESENT "PRESENT"))

___________________
366: "What proteins are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by lung cancer?"
 (:VAR MV3442 :ISA TARGET :OBJECT MV3438 :CAUSE MV3436 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3438 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3436 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
367: "What proteins does PLX-4720 target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does PLX-4720 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does PLX-4720 target?"
 (:VAR MV3449 :ISA TARGET :OBJECT MV3446 :AGENT MV3444 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3446 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3444 :ISA MOLECULE :RAW-TEXT "PLX-4720" :NAME "plx-4720" :UID
  "PCID:24180719"))

___________________
368: "What proteins does lung cancer target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does lung cancer target" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does lung cancer target?"
 (:VAR MV3455 :ISA TARGET :OBJECT MV3452 :CAUSE MV3450 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3452 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3450 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
369: "What proteins does vemurafenib target?"

                    SOURCE-START
e8    TARGET        1 "What proteins does vemurafenib target" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does vemurafenib target?"
 (:VAR MV3461 :ISA TARGET :OBJECT MV3457 :AGENT MV3459 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3457 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3459 :ISA DRUG :RAW-TEXT "vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257"))

___________________
370: "What proteins might lead to the development of lung cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of lung cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins might lead to the development of lung cancer?"
 (:VAR MV3466 :ISA LEAD :AGENT MV3464 :THEME MV3469 :MODAL MV3465 :RAW-TEXT
  "lead")
 (:VAR MV3464 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3469 :ISA DEVELOPMENT :DISEASE MV3462 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV3462 :ISA CANCER :NAME "lung cancer" :UID "TS-0571")
 (:VAR MV3465 :ISA MIGHT))

___________________
371: "What proteins might lead to the development of pancreatic cancer."

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE
("What proteins might lead to the development of pancreatic cancer."
 (:VAR MV3477 :ISA LEAD :AGENT MV3475 :THEME MV3480 :MODAL MV3476 :RAW-TEXT
  "lead")
 (:VAR MV3475 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3480 :ISA DEVELOPMENT :DISEASE MV3473 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV3473 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV3476 :ISA MIGHT))

___________________
372: "What reactome pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What reactome pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune signaling?"
 (:VAR MV3487 :ISA INVOLVE :THEME MV3486 :THEME MV3489 :PRESENT "PRESENT")
 (:VAR MV3486 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3485 :RAW-TEXT
  "pathways")
 (:VAR MV3485 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV3489 :ISA SIGNAL :MODIFIER MV3488 :RAW-TEXT "signaling")
 (:VAR MV3488 :ISA IMMUNE :NAME "immune"))

___________________
373: "What regulates HGF?"

                    SOURCE-START
e4    REGULATE      1 "What regulates HGF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates HGF?"
 (:VAR MV3491 :ISA REGULATE :AGENT-OR-CAUSE MV3490 :OBJECT MV3492 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3490 :ISA WHAT)
 (:VAR MV3492 :ISA PROTEIN :RAW-TEXT "HGF" :UID "UP:P14210" :NAME "HGF_HUMAN"))

___________________
374: "What regulates SMURF2?"

                    SOURCE-START
e5    REGULATE      1 "What regulates SMURF2" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates SMURF2?"
 (:VAR MV3495 :ISA REGULATE :AGENT-OR-CAUSE MV3494 :OBJECT MV3493 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3494 :ISA WHAT)
 (:VAR MV3493 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
375: "What regulates smurf2 in liver"

                    SOURCE-START
e10   REGULATE      1 "What regulates smurf2 in liver" 7
                    END-OF-SOURCE
("What regulates smurf2 in liver"
 (:VAR MV3498 :ISA REGULATE :AGENT-OR-CAUSE MV3497 :OBJECT MV3496 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3497 :ISA WHAT)
 (:VAR MV3496 :ISA PROTEIN :ORGAN MV3500 :RAW-TEXT "smurf2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3500 :ISA LIVER))

___________________
376: "What signaling pathways are shared by RELA and ELK1?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by RELA and ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by RELA and ELK1?"
 (:VAR MV3511 :ISA SHARE :OBJECT MV3502 :PARTICIPANT MV3510 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3502 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3510 :ISA COLLECTION :RAW-TEXT "RELA and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3508 MV3503))
 (:VAR MV3508 :ISA PROTEIN :RAW-TEXT "RELA" :UID "UP:Q04206" :NAME
  "TF65_HUMAN")
 (:VAR MV3503 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
377: "What signaling pathways are shared by STAT3 and SRF?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by STAT3 and SRF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3 and SRF?"
 (:VAR MV3522 :ISA SHARE :OBJECT MV3513 :PARTICIPANT MV3521 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3513 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3521 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3514 MV3520))
 (:VAR MV3514 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3520 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
378: "What signaling pathways are shared by STAT3, SOCS3 and SRF?"

                    SOURCE-START
e19   SHARE         1 "What signaling pathways are shared by STAT3, SOCS3 and SRF" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
 (:VAR MV3534 :ISA SHARE :OBJECT MV3524 :PARTICIPANT MV3533 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3524 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3533 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3 and SRF" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3525 MV3526 MV3532))
 (:VAR MV3525 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3526 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3532 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV3545 :ISA BIO-PRODUCE :AGENT MV3542 :OBJECT MV3543 :PRESENT "PRESENT"
  :RAW-TEXT "produces")
 (:VAR MV3542 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV3543 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
381: "What transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factor transcribes SMURF2?"
 (:VAR MV3549 :ISA TRANSCRIBE :AGENT MV3546 :OBJECT MV3547 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV3546 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV3547 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
382: "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e31   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3565 :ISA COPULAR-PREDICATION :ITEM MV3550 :VALUE MV3557 :PREDICATE
  MV3556)
 (:VAR MV3550 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3557 :ISA COMMON :THEME MV3562)
 (:VAR MV3562 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3563 :RAW-TEXT
  "genes")
 (:VAR MV3563 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3551 MV3552 MV3560 MV3553 MV3554))
 (:VAR MV3551 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3552 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3560 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3553 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3554 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3556 :ISA BE :PRESENT "PRESENT"))

___________________
383: "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e26   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3579 :ISA COPULAR-PREDICATION :ITEM MV3566 :VALUE MV3572 :PREDICATE
  MV3571)
 (:VAR MV3566 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3572 :ISA COMMON :THEME MV3576)
 (:VAR MV3576 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3577 :RAW-TEXT
  "genes")
 (:VAR MV3577 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3567 MV3568 MV3569))
 (:VAR MV3567 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3568 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3569 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3571 :ISA BE :PRESENT "PRESENT"))

___________________
384: "What genes does stat3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate?"
 (:VAR MV3584 :ISA REGULATE :OBJECT MV3582 :AGENT MV3580 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3582 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3580 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
385: "What transcription factors are common to these genes?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "What transcription factors are common to these genes" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to these genes?"
 (:VAR MV3593 :ISA COPULAR-PREDICATION :ITEM MV3585 :VALUE MV3588 :PREDICATE
  MV3587)
 (:VAR MV3585 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3588 :ISA COMMON :THEME MV3591)
 (:VAR MV3591 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV3587 :ISA BE :PRESENT "PRESENT"))

___________________
386: "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e32   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3609 :ISA COPULAR-PREDICATION :ITEM MV3594 :VALUE MV3595 :PREDICATE
  MV3601)
 (:VAR MV3594 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3595 :ISA IN-COMMON :THEME MV3606)
 (:VAR MV3606 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3607 :RAW-TEXT
  "genes")
 (:VAR MV3607 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3596 MV3597 MV3604 MV3598 MV3599))
 (:VAR MV3596 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3597 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3604 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3598 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3599 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3601 :ISA BE :PRESENT "PRESENT"))

___________________
387: "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3623 :ISA COPULAR-PREDICATION :ITEM MV3610 :VALUE MV3611 :PREDICATE
  MV3616)
 (:VAR MV3610 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3611 :ISA IN-COMMON :THEME MV3620)
 (:VAR MV3620 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3621 :RAW-TEXT
  "genes")
 (:VAR MV3621 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3612 MV3613 MV3614))
 (:VAR MV3612 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3613 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3614 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3616 :ISA BE :PRESENT "PRESENT"))

___________________
388: "What transcription factors are regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What transcription factors are regulators of SMURF2 in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2 in liver?"
 (:VAR MV3627 :ISA BE :SUBJECT MV3624 :PREDICATE MV3628 :PRESENT "PRESENT")
 (:VAR MV3624 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3628 :ISA REGULATOR :THEME MV3625 :RAW-TEXT "regulators")
 (:VAR MV3625 :ISA PROTEIN :ORGAN MV3631 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3631 :ISA LIVER))

___________________
389: "What transcription factors are regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What transcription factors are regulators of SMURF2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2?"
 (:VAR MV3637 :ISA BE :SUBJECT MV3634 :PREDICATE MV3638 :PRESENT "PRESENT")
 (:VAR MV3634 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3638 :ISA REGULATOR :THEME MV3635 :RAW-TEXT "regulators")
 (:VAR MV3635 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
390: "What transcription factors are shared by the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e24   SHARE         1 "What transcription factors are shared by the SRF, HRAS, and elk1 genes" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
 (:VAR MV3653 :ISA SHARE :OBJECT MV3641 :PARTICIPANT MV3651 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3641 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3651 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3652 :RAW-TEXT
  "genes")
 (:VAR MV3652 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3648 MV3649 MV3642))
 (:VAR MV3648 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3649 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV3642 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
391: "What transcription factors regulate SMURF2 in liver?"

                    SOURCE-START
e13   REGULATE      1 "What transcription factors regulate SMURF2 in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate SMURF2 in liver?"
 (:VAR MV3658 :ISA REGULATE :AGENT MV3655 :OBJECT MV3656 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3655 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3656 :ISA PROTEIN :ORGAN MV3660 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3660 :ISA LIVER))

___________________
392: "What transcription factors regulate ZEB1?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate ZEB1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate ZEB1?"
 (:VAR MV3665 :ISA REGULATE :AGENT MV3662 :OBJECT MV3663 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3662 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3663 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME
  "ZEB1_HUMAN"))

___________________
393: "What transcription factors regulate erk"

                    SOURCE-START
e7    REGULATE      1 "What transcription factors regulate erk" 6
                    END-OF-SOURCE
("What transcription factors regulate erk"
 (:VAR MV3668 :ISA REGULATE :AGENT MV3666 :OBJECT MV3669 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3666 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3669 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
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
 (:VAR MV3672 :ISA REGULATE :AGENT MV3670 :THEME MV3678 :OBJECT MV3673 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3670 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3678 :ISA BIO-ENTITY :HAS-DETERMINER "THE" :MODIFIER MV3676
  :CELLULAR-PROCESS MV3677 :NAME "pathwya")
 (:VAR MV3676 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
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
 (:VAR MV3677 :ISA SIGNAL :RAW-TEXT "signaling")
 (:VAR MV3673 :ISA GENE :RAW-TEXT "genes"))

___________________
395: "What transcription factors regulated frizzled8?"

                    SOURCE-START
e9    PROTEIN       1 "What transcription factors regulated frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulated frizzled8?"
 (:VAR MV3681 :ISA PROTEIN :HAS-DETERMINER "WHAT" :PREDICATION MV3683 :RAW-TEXT
  "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV3683 :ISA REGULATE :OBJECT MV3681 :AGENT MV3680 :RAW-TEXT "regulated")
 (:VAR MV3680 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
396: "What transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors transcribe SMURF2?"
 (:VAR MV3687 :ISA TRANSCRIBE :AGENT MV3684 :OBJECT MV3685 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV3684 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3685 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
397: "What upregulates fzd8?"

                    SOURCE-START
e5    UPREGULATE    1 "What upregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates fzd8?"
 (:VAR MV3690 :ISA UPREGULATE :AGENT-OR-CAUSE MV3689 :OBJECT MV3688 :PRESENT
  "PRESENT" :RAW-TEXT "upregulates")
 (:VAR MV3689 :ISA WHAT)
 (:VAR MV3688 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
398: "Where is STAT3 expressed?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Where is STAT3 expressed" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Where is STAT3 expressed?"
 (:VAR MV3696 :ISA GENE-TRANSCRIPT-EXPRESS :LOCATION MV3692 :OBJECT MV3691
  :PAST "PAST" :RAW-TEXT "expressed")
 (:VAR MV3692 :ISA WHERE)
 (:VAR MV3691 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
399: "Which KEGG pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve SRF?"
 (:VAR MV3700 :ISA INVOLVE :THEME MV3699 :THEME MV3701 :PRESENT "PRESENT")
 (:VAR MV3699 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3698 :RAW-TEXT
  "pathways")
 (:VAR MV3698 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3701 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
400: "Which KEGG pathways use SRF?"

                    SOURCE-START
e9    BIO-USE       1 "Which KEGG pathways use SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways use SRF?"
 (:VAR MV3706 :ISA BIO-USE :AGENT MV3704 :OBJECT MV3707 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3704 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3703 :RAW-TEXT
  "pathways")
 (:VAR MV3703 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3707 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
401: "What transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate frizzled8?"
 (:VAR MV3711 :ISA REGULATE :AGENT MV3708 :OBJECT MV3709 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3708 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3709 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
402: "Which also regulate srf"

                    SOURCE-START
e7    REGULATE      1 "Which also regulate srf" 5
                    END-OF-SOURCE
("Which also regulate srf"
 (:VAR MV3715 :ISA REGULATE :AGENT-OR-CAUSE MV3712 :OBJECT MV3716 :PRESENT
  "PRESENT" :ADVERB MV3713 :RAW-TEXT "regulate")
 (:VAR MV3712 :ISA WHICH)
 (:VAR MV3716 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3713 :ISA ALSO :NAME "also"))

___________________
403: "Which apoptotic genes are regulated by stat3?"

                    SOURCE-START
e15   REGULATE      1 "Which apoptotic genes are regulated by stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes are regulated by stat3?"
 (:VAR MV3725 :ISA REGULATE :OBJECT MV3721 :AGENT MV3717 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3721 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3719
  :RAW-TEXT "genes")
 (:VAR MV3719 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3717 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
404: "Which apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "Which apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes is stat3 upstream of?"
 (:VAR MV3732 :ISA BE :SUBJECT MV3731 :PREDICATE MV3733 :PRESENT "PRESENT")
 (:VAR MV3731 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3729
  :RAW-TEXT "genes")
 (:VAR MV3729 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3733 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3731 :MODIFIER MV3727
  :RAW-TEXT "upstream")
 (:VAR MV3731 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3729
  :RAW-TEXT "genes")
 (:VAR MV3729 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3727 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
405: "Which genes are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which genes are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are targeted by STAT3?"
 (:VAR MV3742 :ISA TARGET :OBJECT MV3738 :AGENT MV3736 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3738 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV3736 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
406: "Which genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "Which genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes regulated by stat3 are kinases?"
 (:VAR MV3749 :ISA BE :SUBJECT MV3746 :PREDICATE MV3750 :PRESENT "PRESENT")
 (:VAR MV3746 :ISA GENE :PREDICATION MV3747 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV3747 :ISA REGULATE :OBJECT MV3746 :AGENT MV3744 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3744 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3750 :ISA KINASE :RAW-TEXT "kinases"))

___________________
407: "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e29   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3766 :ISA SHARE :OBJECT MV3758 :PARTICIPANT MV3764 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3758 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3757 :RAW-TEXT
  "pathways")
 (:VAR MV3757 :ISA IMMUNE :NAME "immune")
 (:VAR MV3764 :ISA GENE :EXPRESSES MV3765 :RAW-TEXT "genes")
 (:VAR MV3765 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3752 MV3753 MV3762 MV3754 MV3755))
 (:VAR MV3752 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3753 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3762 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3754 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3755 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
408: "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3781 :ISA SHARE :OBJECT MV3773 :PARTICIPANT MV3779 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3773 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3772 :RAW-TEXT
  "pathways")
 (:VAR MV3772 :ISA IMMUNE :NAME "immune")
 (:VAR MV3779 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3780 :RAW-TEXT
  "genes")
 (:VAR MV3780 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3768 MV3769 MV3770))
 (:VAR MV3768 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3769 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3770 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
409: "Which kegg pathways utilize genes regulated by smad2"

                    SOURCE-START
e15   UTILIZE       1 "Which kegg pathways utilize genes regulated by smad2" 10
                    END-OF-SOURCE
("Which kegg pathways utilize genes regulated by smad2"
 (:VAR MV3787 :ISA UTILIZE :PARTICIPANT MV3786 :OBJECT MV3788 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3786 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3785 :RAW-TEXT
  "pathways")
 (:VAR MV3785 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3788 :ISA GENE :PREDICATION MV3789 :RAW-TEXT "genes")
 (:VAR MV3789 :ISA REGULATE :OBJECT MV3788 :AGENT MV3783 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3783 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
410: "Which Reactome pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which Reactome pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which Reactome pathways utilize SRF?"
 (:VAR MV3795 :ISA UTILIZE :PARTICIPANT MV3794 :OBJECT MV3796 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3794 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3793 :RAW-TEXT
  "pathways")
 (:VAR MV3793 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV3796 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
411: "Which kegg pathways utilize it"

                    SOURCE-START
e9    UTILIZE       1 "Which kegg pathways utilize it" 6
                    END-OF-SOURCE
("Which kegg pathways utilize it"
 (:VAR MV3800 :ISA UTILIZE :PARTICIPANT MV3799 :OBJECT MV3801 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3799 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3798 :RAW-TEXT
  "pathways")
 (:VAR MV3798 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3801 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
412: "Which of them are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of them are regulated by elk1" 9
                    END-OF-SOURCE
("Which of them are regulated by elk1"
 (:VAR MV3809 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3805 :AGENT MV3802
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3805 :ISA PRONOUN/PLURAL :QUANTIFIER MV3803 :WORD "them")
 (:VAR MV3803 :ISA WHICH)
 (:VAR MV3802 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
413: "Which of these are expressed in liver"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of these are expressed in liver" 8
                    END-OF-SOURCE
("Which of these are expressed in liver"
 (:VAR MV3819 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV3814 :ORGAN MV3818
  :PRESENT "PRESENT" :RAW-TEXT "expressed")
 (:VAR MV3814 :ISA THESE :QUANTIFIER MV3812 :WORD "these")
 (:VAR MV3812 :ISA WHICH) (:VAR MV3818 :ISA LIVER))

___________________
414: "Which of these are in immune pathways"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    END-OF-SOURCE
("Which of these are in immune pathways"
 (:VAR MV3830 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3824 :VALUE MV3828 :PREP
  MV3826 :PREDICATE MV3825)
 (:VAR MV3824 :ISA THESE :QUANTIFIER MV3822 :WORD "these")
 (:VAR MV3822 :ISA WHICH)
 (:VAR MV3828 :ISA PATHWAY :MODIFIER MV3827 :RAW-TEXT "pathways")
 (:VAR MV3827 :ISA IMMUNE :NAME "immune") (:VAR MV3826 :ISA IN :WORD "in")
 (:VAR MV3825 :ISA BE :PRESENT "PRESENT"))

___________________
415: "what proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "what proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("what proteins does MEK phosphorylate?"
 (:VAR MV3836 :ISA PHOSPHORYLATE :AMINO-ACID MV3833 :AGENT MV3835 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV3833 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3835 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV3840 :ISA BE :SUBJECT MV3839 :PREDICATE MV3841 :PRESENT "PRESENT")
 (:VAR MV3839 :ISA THESE :QUANTIFIER MV3837 :WORD "these")
 (:VAR MV3837 :ISA WHICH) (:VAR MV3841 :ISA KINASE :RAW-TEXT "kinases"))

___________________
417: "Which of those are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by elk1" 9
                    END-OF-SOURCE
("Which of those are regulated by elk1"
 (:VAR MV3850 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3846 :AGENT MV3843
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3846 :ISA THOSE :QUANTIFIER MV3844 :WORD "those")
 (:VAR MV3844 :ISA WHICH)
 (:VAR MV3843 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
418: "Which of these are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by elk1" 9
                    END-OF-SOURCE
("Which of these are regulated by elk1"
 (:VAR MV3860 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3856 :AGENT MV3853
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3856 :ISA THESE :QUANTIFIER MV3854 :WORD "these")
 (:VAR MV3854 :ISA WHICH)
 (:VAR MV3853 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
419: "Which of these are regulated by fakeprotein"

                    SOURCE-START
e14   REGULATE      1 "Which of these are regulated by fakeprotein" 8
                    END-OF-SOURCE
("Which of these are regulated by fakeprotein"
 (:VAR MV3870 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3865 :AGENT MV3869
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3865 :ISA THESE :QUANTIFIER MV3863 :WORD "these")
 (:VAR MV3863 :ISA WHICH) (:VAR MV3869 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
420: "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3886 :ISA SHARE :OBJECT MV3878 :PARTICIPANT MV3884 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3878 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3884 :ISA GENE :EXPRESSES MV3885 :RAW-TEXT "genes")
 (:VAR MV3885 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3873 MV3874 MV3882 MV3875 MV3876))
 (:VAR MV3873 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3874 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3882 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3875 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3876 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
421: "Which pathways are shared by stat3, socs3, and creb5"

                    SOURCE-START
e21   SHARE         1 "Which pathways are shared by stat3, socs3, and creb5" 15
                    END-OF-SOURCE
("Which pathways are shared by stat3, socs3, and creb5"
 (:VAR MV3900 :ISA SHARE :OBJECT MV3891 :PARTICIPANT MV3899 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3891 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3899 :ISA COLLECTION :RAW-TEXT "stat3, socs3, and creb5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3888 MV3889 MV3898))
 (:VAR MV3888 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3889 :ISA PROTEIN :RAW-TEXT "socs3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3898 :ISA PROTEIN :RAW-TEXT "creb5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
422: "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e30   SHARE         1 "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3916 :ISA SHARE :OBJECT MV3907 :PARTICIPANT MV3914 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3907 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3914 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3915 :RAW-TEXT
  "genes")
 (:VAR MV3915 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3902 MV3903 MV3912 MV3904 MV3905))
 (:VAR MV3902 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3903 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3912 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3904 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3905 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
423: "Which pathways involve TAP1 and JAK1?"

                    SOURCE-START
e11   INVOLVE       1 "Which pathways involve TAP1 and JAK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve TAP1 and JAK1?"
 (:VAR MV3922 :ISA INVOLVE :THEME MV3921 :THEME MV3924 :PRESENT "PRESENT")
 (:VAR MV3921 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3924 :ISA COLLECTION :RAW-TEXT "TAP1 and JAK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3918 MV3919))
 (:VAR MV3918 :ISA PROTEIN :RAW-TEXT "TAP1" :UID "UP:Q03518" :NAME
  "TAP1_HUMAN")
 (:VAR MV3919 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
424: "Which pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "Which pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve calcium?"
 (:VAR MV3927 :ISA INVOLVE :THEME MV3926 :THEME MV3928 :PRESENT "PRESENT")
 (:VAR MV3926 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3928 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
425: "Which pathways use SRF?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use SRF?"
 (:VAR MV3932 :ISA BIO-USE :AGENT MV3930 :OBJECT MV3933 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3930 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3933 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
426: "Which pathways use these"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    END-OF-SOURCE
("Which pathways use these"
 (:VAR MV3937 :ISA BIO-USE :AGENT MV3935 :OBJECT MV3938 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3935 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3938 :ISA THESE :WORD "these"))

___________________
427: "Which pathways utilize SRF?"

                    SOURCE-START
e6    UTILIZE       1 "Which pathways utilize SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways utilize SRF?"
 (:VAR MV3941 :ISA UTILIZE :PARTICIPANT MV3940 :OBJECT MV3942 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3940 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3942 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
428: "Which pathways utilize these genes"

                    SOURCE-START
e8    UTILIZE       1 "Which pathways utilize these genes" 6
                    END-OF-SOURCE
("Which pathways utilize these genes"
 (:VAR MV3945 :ISA UTILIZE :PARTICIPANT MV3944 :OBJECT MV3947 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3944 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3947 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
429: "Which proteins are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which proteins are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which proteins are targeted by STAT3?"
 (:VAR MV3954 :ISA TARGET :OBJECT MV3950 :AGENT MV3948 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3950 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "proteins")
 (:VAR MV3948 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
430: "Which reactome pathways utilize srf"

                    SOURCE-START
e8    UTILIZE       1 "Which reactome pathways utilize srf" 6
                    END-OF-SOURCE
("Which reactome pathways utilize srf"
 (:VAR MV3959 :ISA UTILIZE :PARTICIPANT MV3958 :OBJECT MV3960 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3958 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3957 :RAW-TEXT
  "pathways")
 (:VAR MV3957 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV3960 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
431: "Which transcription factors are in the MAPK signaling pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "Which transcription factors are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors are in the MAPK signaling pathway?"
 (:VAR MV3971 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3961 :VALUE MV3970 :PREP
  "IN" :PREDICATE MV3964)
 (:VAR MV3961 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3970 :ISA TRANSCRIPTION-FACTOR :CONTEXT-OR-IN-PATHWAY MV3962
  :HAS-DETERMINER "WHICH" :RAW-TEXT "transcription factors")
 (:VAR MV3962 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3967
  :RAW-TEXT "signaling pathway")
 (:VAR MV3967 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3964 :ISA BE :PRESENT "PRESENT"))

___________________
432: "Which transcription factors regulate frizzled8 in the liver?"

                    SOURCE-START
e16   REGULATE      1 "Which transcription factors regulate frizzled8 in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8 in the liver?"
 (:VAR MV3976 :ISA REGULATE :AGENT MV3973 :OBJECT MV3974 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3973 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3974 :ISA PROTEIN :ORGAN MV3979 :RAW-TEXT "frizzled8" :UID "UP:Q9H461"
  :NAME "FZD8_HUMAN")
 (:VAR MV3979 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
433: "Which transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "Which transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8?"
 (:VAR MV3984 :ISA REGULATE :AGENT MV3981 :OBJECT MV3982 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3981 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3982 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
434: "Let's move AKT1 on top."

                    SOURCE-START
e11   EXPLICIT-SUGGESTION 1 "Let's move AKT1 on top" 9
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 on top."
 (:VAR MV3991 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV3987 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV3987 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV3989 :THEME
  MV3986 :PRESENT "PRESENT")
 (:VAR MV3989 :ISA TOP-QUA-LOCATION)
 (:VAR MV3986 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
435: "Let's show the phosphorylated AKT1 on top."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's show the phosphorylated AKT1 on top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show the phosphorylated AKT1 on top."
 (:VAR MV4000 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV3994 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV3994 :ISA SHOW :AT-RELATIVE-LOCATION MV3998 :STATEMENT-OR-THEME MV3993
  :PRESENT "PRESENT")
 (:VAR MV3998 :ISA TOP-QUA-LOCATION)
 (:VAR MV3993 :ISA PROTEIN :HAS-DETERMINER "THE" :PREDICATION MV3996 :RAW-TEXT
  "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV3996 :ISA PHOSPHORYLATE :SUBSTRATE MV3993 :RAW-TEXT "phosphorylated"))

___________________
436: "What are the common upstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRAF?"
 (:VAR MV4003 :ISA BE :SUBJECT MV4002 :PREDICATE MV4006 :PRESENT "PRESENT")
 (:VAR MV4002 :ISA WHAT)
 (:VAR MV4006 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4010 :HAS-DETERMINER
  "THE" :PREDICATION MV4005 :RAW-TEXT "upstreams")
 (:VAR MV4010 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV4001 MV4009))
 (:VAR MV4001 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4009 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV4005 :ISA COMMON))

___________________
437: "Is stat3 expressed exclusively in liver?"

                    SOURCE-START
e11   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed exclusively in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed exclusively in liver?"
 (:VAR MV4019 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV4017 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV4017 :ISA LIVER))

___________________
438: "Is stat3 expressed in spleen?"

                    SOURCE-START
e9    GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in spleen" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in spleen?"
 (:VAR MV4026 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV4024 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV4024 :ISA SPLEEN))

___________________
439: "Show phosphorylated akt1 on top."

                    SOURCE-START
e11   SHOW          1 "Show phosphorylated akt1 on top" 7
                    PERIOD
                    END-OF-SOURCE
("Show phosphorylated akt1 on top."
 (:VAR MV4028 :ISA SHOW :AT-RELATIVE-LOCATION MV4031 :STATEMENT-OR-THEME MV4027
  :PRESENT "PRESENT")
 (:VAR MV4031 :ISA TOP-QUA-LOCATION)
 (:VAR MV4027 :ISA PROTEIN :PREDICATION MV4029 :RAW-TEXT "akt1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4029 :ISA PHOSPHORYLATE :SUBSTRATE MV4027 :RAW-TEXT "phosphorylated"))

___________________
440: "What are the common upstreams of AKT1 and  BRA?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRA" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRA?"
 (:VAR MV4035 :ISA BE :SUBJECT MV4034 :PREDICATE MV4038 :PRESENT "PRESENT")
 (:VAR MV4034 :ISA WHAT)
 (:VAR MV4038 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4042 :HAS-DETERMINER
  "THE" :PREDICATION MV4037 :RAW-TEXT "upstreams")
 (:VAR MV4042 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRA" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4033 MV4041))
 (:VAR MV4033 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4041 :ISA BIO-ENTITY :NAME "BRA") (:VAR MV4037 :ISA COMMON))

___________________
441: "RAF activates MEK and MEK activates ERK."

                    SOURCE-START
e11   BIO-ACTIVATE  1 "RAF activates MEK and MEK activates ERK" 8
                    PERIOD
                    END-OF-SOURCE
("RAF activates MEK and MEK activates ERK."
 (:VAR MV4051 :ISA COLLECTION :RAW-TEXT
  "RAF activates MEK and MEK activates ERK" :TYPE BIO-ACTIVATE :NUMBER 2 :ITEMS
  (MV4045 MV4049))
 (:VAR MV4045 :ISA BIO-ACTIVATE :AGENT MV4044 :OBJECT MV4046 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4044 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV4046 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4049 :ISA BIO-ACTIVATE :AGENT MV4048 :OBJECT MV4050 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4048 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4050 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV4053 :ISA BE :SUBJECT MV4052 :PREDICATE MV4055 :PRESENT "PRESENT")
 (:VAR MV4052 :ISA WHAT)
 (:VAR MV4055 :ISA PATH :END MV4059 :START MV4057 :HAS-DETERMINER "THE")
 (:VAR MV4059 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4057 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
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
 (:VAR MV4062 :ISA REMOVE :OBJECT MV4069 :PRESENT "PRESENT" :RAW-TEXT "remove")
 (:VAR MV4069 :ISA FACT :STATEMENT MV4067 :HAS-DETERMINER "THE")
 (:VAR MV4067 :ISA BIO-ACTIVATE :AGENT MV4066 :OBJECT MV4068 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4066 :ISA PROTEIN-FAMILY :RAW-TEXT "mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4068 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
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
 (:VAR MV4077 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4072 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4072 :ISA SHOW :AT-RELATIVE-LOCATION MV4075 :STATEMENT-OR-THEME MV4071
  :PRESENT "PRESENT")
 (:VAR MV4075 :ISA TOP-QUA-LOCATION)
 (:VAR MV4071 :ISA PROTEIN :PREDICATION MV4073 :RAW-TEXT "akt1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4073 :ISA PHOSPHORYLATE :SUBSTRATE MV4071 :RAW-TEXT "phosphorylated"))

___________________
445: "what are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "what are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what are positive regulators of the cfos gene?"
 (:VAR MV4080 :ISA BE :SUBJECT MV4079 :PREDICATE MV4078 :PRESENT "PRESENT")
 (:VAR MV4079 :ISA WHAT)
 (:VAR MV4078 :ISA POSITIVE-REGULATOR :THEME MV4084 :RAW-TEXT
  "positive regulators")
 (:VAR MV4084 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4083 :RAW-TEXT
  "gene")
 (:VAR MV4083 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
446: "what transcription factors regulate FOS in soft tissue?"

                    SOURCE-START
e13   REGULATE      1 "what transcription factors regulate FOS in soft tissue" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors regulate FOS in soft tissue?"
 (:VAR MV4089 :ISA REGULATE :AGENT MV4086 :OBJECT MV4090 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV4086 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4090 :ISA PROTEIN :ORGAN MV4087 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV4087 :ISA BIO-ORGAN :NAME "soft tissue" :UID "NCIT:C12471"))

___________________
447: "Are there any drugs inhibiting MEK?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there any drugs inhibiting MEK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs inhibiting MEK?"
 (:VAR MV4100 :ISA THERE-EXISTS :VALUE MV4097 :PREDICATE MV4094)
 (:VAR MV4097 :ISA DRUG :PREDICATION MV4098 :QUANTIFIER MV4096 :RAW-TEXT
  "drugs")
 (:VAR MV4098 :ISA INHIBIT :AGENT MV4097 :OBJECT MV4099 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "inhibiting")
 (:VAR MV4099 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4096 :ISA ANY :WORD "any") (:VAR MV4094 :ISA SYNTACTIC-THERE))

___________________
448: "Are there any drugs targeting KRAS?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there any drugs targeting KRAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs targeting KRAS?"
 (:VAR MV4108 :ISA THERE-EXISTS :VALUE MV4105 :PREDICATE MV4102)
 (:VAR MV4105 :ISA DRUG :PREDICATION MV4106 :QUANTIFIER MV4104 :RAW-TEXT
  "drugs")
 (:VAR MV4106 :ISA TARGET :AGENT MV4105 :OBJECT MV4107 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "targeting")
 (:VAR MV4107 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV4104 :ISA ANY :WORD "any") (:VAR MV4102 :ISA SYNTACTIC-THERE))

___________________
449: "Are there any genes in the liver that are regulated by stat3?"

                    SOURCE-START
e30   THERE-EXISTS  1 "Are there any genes in the liver that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes in the liver that are regulated by stat3?"
 (:VAR MV4122 :ISA THERE-EXISTS :VALUE MV4114 :PREDICATE MV4111)
 (:VAR MV4114 :ISA GENE :PREDICATION MV4123 :ORGAN MV4117 :QUANTIFIER MV4113
  :RAW-TEXT "genes")
 (:VAR MV4123 :ISA REGULATE :OBJECT MV4114 :THAT-REL T :AGENT MV4109 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4109 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4117 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4113 :ISA ANY :WORD "any") (:VAR MV4111 :ISA SYNTACTIC-THERE))

___________________
450: "Are there any genes involved in apoptosis that are regulated by stat3?"

                    SOURCE-START
e30   THERE-EXISTS  1 "Are there any genes involved in apoptosis that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes involved in apoptosis that are regulated by stat3?"
 (:VAR MV4139 :ISA THERE-EXISTS :VALUE MV4131 :PREDICATE MV4128)
 (:VAR MV4131 :ISA GENE :PREDICATION MV4132 :QUANTIFIER MV4130 :RAW-TEXT
  "genes")
 (:VAR MV4132 :ISA INVOLVE :THEME MV4131 :THEME MV4134 :PAST "PAST")
 (:VAR MV4134 :ISA APOPTOSIS :PREDICATION MV4140 :RAW-TEXT "apoptosis")
 (:VAR MV4140 :ISA REGULATE :AFFECTED-PROCESS MV4134 :THAT-REL T :AGENT MV4126
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4126 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4130 :ISA ANY :WORD "any") (:VAR MV4128 :ISA SYNTACTIC-THERE))

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
 (:VAR MV4161 :ISA THERE-EXISTS :VALUE MV4159 :PREDICATE MV4156)
 (:VAR MV4159 :ISA INHIBITOR :TARGET-OR-PROTEIN MV4154 :QUANTIFIER MV4158
  :RAW-TEXT "inhibitors")
 (:VAR MV4154 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV4158 :ISA ANY :WORD "any") (:VAR MV4156 :ISA SYNTACTIC-THERE))

___________________
453: "Are there genes regulated by elk1 and srf"

                    SOURCE-START
e18   THERE-EXISTS  1 "Are there genes regulated by elk1 and srf" 10
                    END-OF-SOURCE
("Are there genes regulated by elk1 and srf"
 (:VAR MV4172 :ISA THERE-EXISTS :VALUE MV4167 :PREDICATE MV4165)
 (:VAR MV4167 :ISA GENE :PREDICATION MV4168 :RAW-TEXT "genes")
 (:VAR MV4168 :ISA REGULATE :OBJECT MV4167 :AGENT MV4173 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4173 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4163 MV4171))
 (:VAR MV4163 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4171 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4165 :ISA SYNTACTIC-THERE))

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
 (:VAR MV4234 :ISA POLAR-QUESTION :STATEMENT MV4228)
 (:VAR MV4228 :ISA SHOW :AGENT MV4227 :STATEMENT-OR-THEME MV4230 :BENEFICIARY
  MV4229 :MODAL "CAN")
 (:VAR MV4227 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4230 :ISA GENE :PREDICATION MV4231 :RAW-TEXT "genes")
 (:VAR MV4231 :ISA REGULATE :OBJECT MV4230 :AGENT MV4225 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4225 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4229 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
458: "Can you show me genes that are regulated by ELK1"

                    SOURCE-START
e26   SHOW          1 "Can you show me genes that are regulated by ELK1" 12
                    END-OF-SOURCE
("Can you show me genes that are regulated by ELK1"
 (:VAR MV4247 :ISA POLAR-QUESTION :STATEMENT MV4238)
 (:VAR MV4238 :ISA SHOW :AGENT MV4237 :STATEMENT-OR-THEME MV4240 :BENEFICIARY
  MV4239 :MODAL "CAN")
 (:VAR MV4237 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4240 :ISA GENE :PREDICATION MV4245 :RAW-TEXT "genes")
 (:VAR MV4245 :ISA REGULATE :OBJECT MV4240 :THAT-REL T :AGENT MV4235 :MODAL
  "CAN" :RAW-TEXT "regulated")
 (:VAR MV4235 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4239 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
459: "Can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "Can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("Can you show me the pahtways that involve SRF"
 (:VAR MV4257 :ISA POLAR-QUESTION :STATEMENT MV4250)
 (:VAR MV4250 :ISA SHOW :AGENT MV4249 :STATEMENT-OR-THEME MV4253 :BENEFICIARY
  MV4251 :MODAL "CAN")
 (:VAR MV4249 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4253 :ISA BIO-ENTITY :PREDICATION MV4255 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4255 :ISA INVOLVE :THEME MV4253 :THAT-REL T :THEME MV4256 :MODAL
  "CAN")
 (:VAR MV4256 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4251 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
460: "Can you tell me the genes regulated by STAT3"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes regulated by STAT3" 11
                    END-OF-SOURCE
("Can you tell me the genes regulated by STAT3"
 (:VAR MV4268 :ISA POLAR-QUESTION :STATEMENT MV4261)
 (:VAR MV4261 :ISA TELL :AGENT MV4260 :THEME MV4264 :BENEFICIARY MV4262 :MODAL
  "CAN")
 (:VAR MV4260 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4264 :ISA GENE :PREDICATION MV4265 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4265 :ISA REGULATE :OBJECT MV4264 :AGENT MV4258 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4258 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4262 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
461: "Can you tell me the genes that STAT3 regulates"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes that STAT3 regulates" 11
                    END-OF-SOURCE
("Can you tell me the genes that STAT3 regulates"
 (:VAR MV4278 :ISA POLAR-QUESTION :STATEMENT MV4272)
 (:VAR MV4272 :ISA TELL :AGENT MV4271 :THEME MV4275 :BENEFICIARY MV4273 :MODAL
  "CAN")
 (:VAR MV4271 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4275 :ISA GENE :PREDICATION MV4277 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4277 :ISA REGULATE :OBJECT MV4275 :THAT-REL T :AGENT MV4269 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4269 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4273 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
462: "Can you tell me the genes that are regulated by STAT3"

                    SOURCE-START
e29   TELL          1 "Can you tell me the genes that are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes that are regulated by STAT3"
 (:VAR MV4292 :ISA POLAR-QUESTION :STATEMENT MV4282)
 (:VAR MV4282 :ISA TELL :AGENT MV4281 :THEME MV4285 :BENEFICIARY MV4283 :MODAL
  "CAN")
 (:VAR MV4281 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4285 :ISA GENE :PREDICATION MV4290 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4290 :ISA REGULATE :OBJECT MV4285 :THAT-REL T :AGENT MV4279 :MODAL
  "CAN" :RAW-TEXT "regulated")
 (:VAR MV4279 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4283 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
463: "Can you tell me the genes which are regulated by STAT3"

                    SOURCE-START
e28   TELL          1 "Can you tell me the genes which are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes which are regulated by STAT3"
 (:VAR MV4307 :ISA POLAR-QUESTION :STATEMENT MV4296)
 (:VAR MV4296 :ISA TELL :AGENT MV4295 :THEME MV4299 :BENEFICIARY MV4297 :MODAL
  "CAN")
 (:VAR MV4295 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4299 :ISA GENE :PREDICATION MV4306 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4306 :ISA REGULATE :OBJECT MV4299 :AGENT MV4293 :MODAL MV4294
  :RAW-TEXT "regulated")
 (:VAR MV4293 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4294 :ISA CAN) (:VAR MV4297 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
464: "Can you tell me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf"
 (:VAR MV4323 :ISA POLAR-QUESTION :STATEMENT MV4312)
 (:VAR MV4312 :ISA TELL :AGENT MV4311 :THEME MV4321 :THEME MV4313 :MODAL "CAN")
 (:VAR MV4311 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4321 :ISA SHARE :OBJECT MV4308 :PARTICIPANT MV4320 :MODAL "CAN"
  :RAW-TEXT "shared")
 (:VAR MV4308 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4320 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4309 MV4319))
 (:VAR MV4309 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4319 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4313 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
465: "Can you tell me which genes are regulated by STAT3"

                    SOURCE-START
e24   TELL          1 "Can you tell me which genes are regulated by STAT3" 12
                    END-OF-SOURCE
("Can you tell me which genes are regulated by STAT3"
 (:VAR MV4336 :ISA POLAR-QUESTION :STATEMENT MV4327)
 (:VAR MV4327 :ISA TELL :AGENT MV4326 :THEME MV4334 :THEME MV4328 :MODAL "CAN")
 (:VAR MV4326 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4334 :ISA REGULATE :OBJECT MV4330 :AGENT MV4324 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4330 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4324 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4328 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
466: "Can you tell me which genes in the liver are regulated by stat3?"

                    SOURCE-START
e32   TELL          1 "Can you tell me which genes in the liver are regulated by stat3" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes in the liver are regulated by stat3?"
 (:VAR MV4353 :ISA POLAR-QUESTION :STATEMENT MV4340)
 (:VAR MV4340 :ISA TELL :AGENT MV4339 :THEME MV4350 :THEME MV4341 :MODAL "CAN")
 (:VAR MV4339 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4350 :ISA REGULATE :OBJECT MV4343 :AGENT MV4337 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4343 :ISA GENE :ORGAN MV4346 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV4346 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4337 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4341 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
467: "Can you tell me which genes stat3 regulates?"

                    SOURCE-START
e18   TELL          1 "Can you tell me which genes stat3 regulates" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes stat3 regulates?"
 (:VAR MV4362 :ISA POLAR-QUESTION :STATEMENT MV4357)
 (:VAR MV4357 :ISA TELL :AGENT MV4356 :THEME MV4360 :BENEFICIARY MV4358 :MODAL
  "CAN")
 (:VAR MV4356 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4360 :ISA GENE :PREDICATION MV4361 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV4361 :ISA REGULATE :OBJECT MV4360 :AGENT MV4354 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4354 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4358 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
468: "Does STAT3 affect the expression of c-fos?"

                    SOURCE-START
e18   AFFECT        1 "Does STAT3 affect the expression of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of c-fos?"
 (:VAR MV4372 :ISA POLAR-QUESTION :STATEMENT MV4370)
 (:VAR MV4370 :ISA AFFECT :AGENT MV4363 :AFFECTED-PROCESS MV4368 :RAW-TEXT
  "affect")
 (:VAR MV4363 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4368 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4364 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4364 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
469: "Does STAT3 affect the expression of the c-fos gene?"

                    SOURCE-START
e23   AFFECT        1 "Does STAT3 affect the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of the c-fos gene?"
 (:VAR MV4384 :ISA POLAR-QUESTION :STATEMENT MV4382)
 (:VAR MV4382 :ISA AFFECT :AGENT MV4373 :AFFECTED-PROCESS MV4378 :RAW-TEXT
  "affect")
 (:VAR MV4373 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4378 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4381 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4381 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4374 :RAW-TEXT
  "gene")
 (:VAR MV4374 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
470: "Does STAT3 increase the expression of the c-fos gene?"

                    SOURCE-START
e24   INCREASE      1 "Does STAT3 increase the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase the expression of the c-fos gene?"
 (:VAR MV4397 :ISA POLAR-QUESTION :STATEMENT MV4395)
 (:VAR MV4395 :ISA INCREASE :AGENT MV4385 :AFFECTED-PROCESS MV4391 :RAW-TEXT
  "increase")
 (:VAR MV4385 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4391 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4394 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4394 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4386 :RAW-TEXT
  "gene")
 (:VAR MV4386 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
471: "Does STAT3 increase transcription of the c-fos gene?"

                    SOURCE-START
e21   INCREASE      1 "Does STAT3 increase transcription of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase transcription of the c-fos gene?"
 (:VAR MV4409 :ISA POLAR-QUESTION :STATEMENT MV4407)
 (:VAR MV4407 :ISA INCREASE :AGENT MV4398 :AFFECTED-PROCESS MV4403 :RAW-TEXT
  "increase")
 (:VAR MV4398 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4403 :ISA TRANSCRIBE :OBJECT MV4406 :RAW-TEXT "transcription")
 (:VAR MV4406 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4399 :RAW-TEXT
  "gene")
 (:VAR MV4399 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
472: "Does stat3 affect the expression of cfos?"

                    SOURCE-START
e17   AFFECT        1 "Does stat3 affect the expression of cfos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 affect the expression of cfos?"
 (:VAR MV4419 :ISA POLAR-QUESTION :STATEMENT MV4417)
 (:VAR MV4417 :ISA AFFECT :AGENT MV4410 :AFFECTED-PROCESS MV4414 :RAW-TEXT
  "affect")
 (:VAR MV4410 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4414 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4416 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4416 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
473: "Does the mTor pathway contain SGK1?"

                    SOURCE-START
e16   CONTAIN       1 "Does the mTor pathway contain SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway contain SGK1?"
 (:VAR MV4429 :ISA POLAR-QUESTION :STATEMENT MV4428)
 (:VAR MV4428 :ISA CONTAIN :THEME MV4426 :PATIENT MV4420)
 (:VAR MV4426 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4423 :RAW-TEXT
  "pathway")
 (:VAR MV4423 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME
  "MTOR_HUMAN")
 (:VAR MV4420 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
474: "Find a treatment for pancreatic cancer."

                    SOURCE-START
e12   BIO-FIND      1 "Find a treatment for pancreatic cancer" 7
                    PERIOD
                    END-OF-SOURCE
("Find a treatment for pancreatic cancer."
 (:VAR MV4432 :ISA BIO-FIND :OBJECT MV4434 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4434 :ISA TREATMENT :DISEASE MV4430 :HAS-DETERMINER "A" :RAW-TEXT
  "treatment")
 (:VAR MV4430 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
475: "Find genes in the liver regulated by stat3"

                    SOURCE-START
e18   BIO-FIND      1 "Find genes in the liver regulated by stat3" 10
                    END-OF-SOURCE
("Find genes in the liver regulated by stat3"
 (:VAR MV4439 :ISA BIO-FIND :OBJECT MV4440 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4440 :ISA GENE :PREDICATION MV4444 :ORGAN MV4443 :RAW-TEXT "genes")
 (:VAR MV4444 :ISA REGULATE :OBJECT MV4440 :AGENT MV4437 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4437 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4443 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
476: "Find genes that stat3 regulates"

                    SOURCE-START
e12   BIO-FIND      1 "Find genes that stat3 regulates" 7
                    END-OF-SOURCE
("Find genes that stat3 regulates"
 (:VAR MV4450 :ISA BIO-FIND :OBJECT MV4451 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4451 :ISA GENE :PREDICATION MV4453 :RAW-TEXT "genes")
 (:VAR MV4453 :ISA REGULATE :OBJECT MV4451 :THAT-REL T :AGENT MV4448 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4448 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
477: "Find transcription factors shared by elk1 and srf"

                    SOURCE-START
e14   BIO-FIND      1 "Find transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Find transcription factors shared by elk1 and srf"
 (:VAR MV4457 :ISA BIO-FIND :OBJECT MV4454 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4454 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4458 :RAW-TEXT
  "transcription factors")
 (:VAR MV4458 :ISA SHARE :OBJECT MV4454 :PARTICIPANT MV4462 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV4462 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4455 MV4461))
 (:VAR MV4455 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4461 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
478: "How does KRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does KRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS activate MAPK3?"
 (:VAR MV4468 :ISA BIO-ACTIVATE :MANNER MV4465 :AGENT MV4467 :OBJECT MV4464
  :PRESENT "PRESENT" :RAW-TEXT "activate")
 (:VAR MV4465 :ISA HOW)
 (:VAR MV4467 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV4464 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
479: "How does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e14   REGULATE      1 "How does STAT3 regulate the c-fos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("How does STAT3 regulate the c-fos gene?"
 (:VAR MV4473 :ISA REGULATE :MANNER MV4471 :AGENT MV4469 :OBJECT MV4475
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4471 :ISA HOW)
 (:VAR MV4469 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4475 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4470 :RAW-TEXT
  "gene")
 (:VAR MV4470 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
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
 (:VAR MV4498 :ISA REGULATE :MANNER MV4496 :AGENT MV4495 :AFFECTED-PROCESS
  MV4499 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4496 :ISA HOW)
 (:VAR MV4495 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4499 :ISA APOPTOSIS :ORGAN MV4502 :RAW-TEXT "apoptosis")
 (:VAR MV4502 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
482: "How does stat3 regulate apoptosis?"

                    SOURCE-START
e8    REGULATE      1 "How does stat3 regulate apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis?"
 (:VAR MV4507 :ISA REGULATE :MANNER MV4505 :AGENT MV4504 :AFFECTED-PROCESS
  MV4508 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4505 :ISA HOW)
 (:VAR MV4504 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4508 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
483: "How does stat3 regulate apoptotic genes?"

                    SOURCE-START
e11   REGULATE      1 "How does stat3 regulate apoptotic genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptotic genes?"
 (:VAR MV4512 :ISA REGULATE :MANNER MV4510 :AGENT MV4509 :OBJECT MV4515
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4510 :ISA HOW)
 (:VAR MV4509 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4515 :ISA GENE :CELLULAR-PROCESS MV4513 :RAW-TEXT "genes")
 (:VAR MV4513 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
484: "How is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e15   INVOLVE       1 "How is stat3 involved in apoptotic regulation" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotic regulation?"
 (:VAR MV4526 :ISA INVOLVE :MANNER MV4517 :THEME MV4516 :THEME MV4523 :PAST
  "PAST")
 (:VAR MV4517 :ISA HOW)
 (:VAR MV4516 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4523 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV4521 :RAW-TEXT
  "regulation")
 (:VAR MV4521 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
485: "How is stat3 involved in apoptotis regulation in the liver?"

                    SOURCE-START
e22   INVOLVE       1 "How is stat3 involved in apoptotis regulation in the liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotis regulation in the liver?"
 (:VAR MV4540 :ISA INVOLVE :MANNER MV4528 :THEME MV4527 :THEME MV4532 :PAST
  "PAST")
 (:VAR MV4528 :ISA HOW)
 (:VAR MV4527 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4532 :ISA REGULATE :OBJECT MV4536 :ORGAN MV4535 :AGENT-OR-OBJECT
  MV4536 :RAW-TEXT "regulation")
 (:VAR MV4536 :ISA BIO-ENTITY :NAME "apoptotis")
 (:VAR MV4535 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4536 :ISA BIO-ENTITY :NAME "apoptotis"))

___________________
486: "How is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e14   INVOLVE       1 "How is stat3 involved in regulating apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in regulating apoptosis?"
 (:VAR MV4550 :ISA INVOLVE :MANNER MV4542 :THEME MV4541 :THEME MV4546 :PAST
  "PAST")
 (:VAR MV4542 :ISA HOW)
 (:VAR MV4541 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4546 :ISA REGULATE :AFFECTED-PROCESS MV4547 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV4547 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
487: "How is stat3 used to regulate apoptosis?"

                    SOURCE-START
e14   BIO-USE       1 "How is stat3 used to regulate apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 used to regulate apoptosis?"
 (:VAR MV4560 :ISA BIO-USE :MANNER MV4552 :OBJECT MV4551 :THEME MV4558 :PAST
  "PAST" :RAW-TEXT "used")
 (:VAR MV4552 :ISA HOW)
 (:VAR MV4551 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4558 :ISA REGULATE :AFFECTED-PROCESS MV4557 :RAW-TEXT "regulate")
 (:VAR MV4557 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
488: "How many genes are in the MAPK signaling pathway?"

                    SOURCE-START
e19   COPULAR-PREDICATE 1 "How many genes are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How many genes are in the MAPK signaling pathway?"
 (:VAR MV4572 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4564 :VALUE MV4571 :PREP
  "IN" :PREDICATE MV4565)
 (:VAR MV4564 :ISA GENE :HAS-DETERMINER "HOW" :QUANTIFIER MV4563 :RAW-TEXT
  "genes")
 (:VAR MV4563 :ISA MANY :WORD "many")
 (:VAR MV4571 :ISA GENE :CONTEXT MV4561 :HAS-DETERMINER "HOW" :QUANTIFIER
  MV4563 :RAW-TEXT "genes")
 (:VAR MV4561 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4568
  :RAW-TEXT "signaling pathway")
 (:VAR MV4568 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV4563 :ISA MANY :WORD "many") (:VAR MV4565 :ISA BE :PRESENT "PRESENT"))

___________________
489: "How might a STAT3 mutation affect breast cancer?"

                    SOURCE-START
e14   AFFECT        1 "How might a STAT3 mutation affect breast cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How might a STAT3 mutation affect breast cancer?"
 (:VAR MV4581 :ISA AFFECT :MANNER MV4576 :MODAL MV4577 :AGENT MV4579 :OBJECT
  MV4575 :PRESENT "PRESENT" :RAW-TEXT "affect")
 (:VAR MV4576 :ISA HOW) (:VAR MV4577 :ISA MIGHT)
 (:VAR MV4579 :ISA MUTATION :OBJECT MV4574 :HAS-DETERMINER "A" :AGENT-OR-OBJECT
  MV4574 :RAW-TEXT "mutation")
 (:VAR MV4574 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4574 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4575 :ISA CANCER :NAME "breast cancer" :UID "TS-0591"))

___________________
490: "Is STAT3 a regulator for c-fos?"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator for c-fos" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator for c-fos?"
 (:VAR MV4589 :ISA POLAR-QUESTION :STATEMENT MV4584)
 (:VAR MV4584 :ISA BE :SUBJECT MV4582 :PREDICATE MV4586)
 (:VAR MV4582 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4586 :ISA REGULATOR :THEME MV4583 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4583 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
491: "Is STAT3 a regulator of c-fos"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator of c-fos" 10
                    END-OF-SOURCE
("Is STAT3 a regulator of c-fos"
 (:VAR MV4597 :ISA POLAR-QUESTION :STATEMENT MV4592)
 (:VAR MV4592 :ISA BE :SUBJECT MV4590 :PREDICATE MV4594)
 (:VAR MV4590 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4594 :ISA REGULATOR :THEME MV4591 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4591 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
492: "Is STAT3 a regulator of the c-fos gene"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene"
 (:VAR MV4607 :ISA POLAR-QUESTION :STATEMENT MV4600)
 (:VAR MV4600 :ISA BE :SUBJECT MV4598 :PREDICATE MV4602)
 (:VAR MV4598 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4602 :ISA REGULATOR :THEME MV4605 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4605 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4599 :RAW-TEXT
  "gene")
 (:VAR MV4599 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
493: "Is STAT3 a regulator of the c-fos gene?"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene?"
 (:VAR MV4617 :ISA POLAR-QUESTION :STATEMENT MV4610)
 (:VAR MV4610 :ISA BE :SUBJECT MV4608 :PREDICATE MV4612)
 (:VAR MV4608 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4612 :ISA REGULATOR :THEME MV4615 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4615 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4609 :RAW-TEXT
  "gene")
 (:VAR MV4609 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
494: "Is STAT3 a transcription factor for c-fos gene"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene"
 (:VAR MV4626 :ISA POLAR-QUESTION :STATEMENT MV4621)
 (:VAR MV4621 :ISA BE :SUBJECT MV4618 :PREDICATE MV4619)
 (:VAR MV4618 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4619 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4624 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4624 :ISA GENE :EXPRESSES MV4620 :RAW-TEXT "gene")
 (:VAR MV4620 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
495: "Is STAT3 a transcription factor for c-fos"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos"
 (:VAR MV4634 :ISA POLAR-QUESTION :STATEMENT MV4630)
 (:VAR MV4630 :ISA BE :SUBJECT MV4627 :PREDICATE MV4628)
 (:VAR MV4627 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4628 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4629 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4629 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
496: "Is STAT3 a transcription factor for c-fos?"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos?"
 (:VAR MV4642 :ISA POLAR-QUESTION :STATEMENT MV4638)
 (:VAR MV4638 :ISA BE :SUBJECT MV4635 :PREDICATE MV4636)
 (:VAR MV4635 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4636 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4637 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4637 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
497: "Is STAT3 a transcription factor for the c-fos gene?"

                    SOURCE-START
e21   BE            1 "Is STAT3 a transcription factor for the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for the c-fos gene?"
 (:VAR MV4652 :ISA POLAR-QUESTION :STATEMENT MV4646)
 (:VAR MV4646 :ISA BE :SUBJECT MV4643 :PREDICATE MV4644)
 (:VAR MV4643 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4644 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4650 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4650 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4645 :RAW-TEXT
  "gene")
 (:VAR MV4645 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
498: "Is STAT3 regulated by c-fos?"

                    SOURCE-START
e12   REGULATE      1 "Is STAT3 regulated by c-fos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 regulated by c-fos?"
 (:VAR MV4660 :ISA POLAR-QUESTION :STATEMENT MV4659)
 (:VAR MV4659 :ISA REGULATE :AGENT MV4653 :AGENT MV4654 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4653 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4654 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
499: "Is Stat3 a transcription factor for the c-fos gene"

                    SOURCE-START
e21   BE            1 "Is Stat3 a transcription factor for the c-fos gene" 13
                    END-OF-SOURCE
("Is Stat3 a transcription factor for the c-fos gene"
 (:VAR MV4670 :ISA POLAR-QUESTION :STATEMENT MV4664)
 (:VAR MV4664 :ISA BE :SUBJECT MV4661 :PREDICATE MV4662)
 (:VAR MV4661 :ISA PROTEIN :RAW-TEXT "Stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4662 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4668 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4668 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4663 :RAW-TEXT
  "gene")
 (:VAR MV4663 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
500: "List genes regulated by ELK1"

                    SOURCE-START
e9    LIST          1 "List genes regulated by ELK1" 7
                    END-OF-SOURCE
("List genes regulated by ELK1"
 (:VAR MV4672 :ISA LIST :THEME MV4673 :PRESENT "PRESENT")
 (:VAR MV4673 :ISA GENE :PREDICATION MV4674 :RAW-TEXT "genes")
 (:VAR MV4674 :ISA REGULATE :OBJECT MV4673 :AGENT MV4671 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4671 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
501: "List genes that are regulated by ELK1"

                    SOURCE-START
e16   LIST          1 "List genes that are regulated by ELK1" 9
                    END-OF-SOURCE
("List genes that are regulated by ELK1"
 (:VAR MV4678 :ISA LIST :THEME MV4679 :PRESENT "PRESENT")
 (:VAR MV4679 :ISA GENE :PREDICATION MV4684 :RAW-TEXT "genes")
 (:VAR MV4684 :ISA REGULATE :OBJECT MV4679 :THAT-REL T :AGENT MV4677 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4677 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
502: "List some genes that stat3 regulates"

                    SOURCE-START
e13   LIST          1 "List some genes that stat3 regulates" 8
                    END-OF-SOURCE
("List some genes that stat3 regulates"
 (:VAR MV4687 :ISA LIST :THEME MV4689 :PRESENT "PRESENT")
 (:VAR MV4689 :ISA GENE :PREDICATION MV4691 :QUANTIFIER MV4688 :RAW-TEXT
  "genes")
 (:VAR MV4691 :ISA REGULATE :OBJECT MV4689 :THAT-REL T :AGENT MV4686 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4686 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4688 :ISA SOME :WORD "some"))

___________________
503: "List the genes STAT3 regulates"

                    SOURCE-START
e11   LIST          1 "List the genes STAT3 regulates" 7
                    END-OF-SOURCE
("List the genes STAT3 regulates"
 (:VAR MV4693 :ISA LIST :THEME MV4695 :PRESENT "PRESENT")
 (:VAR MV4695 :ISA GENE :PREDICATION MV4696 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4696 :ISA REGULATE :OBJECT MV4695 :AGENT MV4692 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4692 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
504: "List the genes that are regulated by STAT3"

                    SOURCE-START
e19   LIST          1 "List the genes that are regulated by STAT3" 10
                    END-OF-SOURCE
("List the genes that are regulated by STAT3"
 (:VAR MV4698 :ISA LIST :THEME MV4700 :PRESENT "PRESENT")
 (:VAR MV4700 :ISA GENE :PREDICATION MV4705 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4705 :ISA REGULATE :OBJECT MV4700 :THAT-REL T :AGENT MV4697 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4697 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
505: "List the genes which STAT3 regulates"

                    SOURCE-START
e13   LIST          1 "List the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("List the genes which STAT3 regulates"
 (:VAR MV4708 :ISA LIST :THEME MV4710 :PRESENT "PRESENT")
 (:VAR MV4710 :ISA GENE :PREDICATION MV4712 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4712 :ISA REGULATE :OBJECT MV4710 :AGENT MV4707 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4707 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
506: "List the pahtways that involve SRF"

                    SOURCE-START
e13   LIST          1 "List the pahtways that involve SRF" 7
                    END-OF-SOURCE
("List the pahtways that involve SRF"
 (:VAR MV4713 :ISA LIST :THEME MV4715 :PRESENT "PRESENT")
 (:VAR MV4715 :ISA BIO-ENTITY :PREDICATION MV4717 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4717 :ISA INVOLVE :THEME MV4715 :THAT-REL T :THEME MV4718 :PRESENT
  "PRESENT")
 (:VAR MV4718 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
507: "Show me genes regulated by ELK1"

                    SOURCE-START
e13   SHOW          1 "Show me genes regulated by ELK1" 8
                    END-OF-SOURCE
("Show me genes regulated by ELK1"
 (:VAR MV4720 :ISA SHOW :STATEMENT-OR-THEME MV4722 :BENEFICIARY MV4721 :PRESENT
  "PRESENT")
 (:VAR MV4722 :ISA GENE :PREDICATION MV4723 :RAW-TEXT "genes")
 (:VAR MV4723 :ISA REGULATE :OBJECT MV4722 :AGENT MV4719 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4719 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4721 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
508: "Show me genes that are regulated by ELK1"

                    SOURCE-START
e18   SHOW          1 "Show me genes that are regulated by ELK1" 10
                    END-OF-SOURCE
("Show me genes that are regulated by ELK1"
 (:VAR MV4727 :ISA SHOW :STATEMENT-OR-THEME MV4729 :BENEFICIARY MV4728 :PRESENT
  "PRESENT")
 (:VAR MV4729 :ISA GENE :PREDICATION MV4734 :RAW-TEXT "genes")
 (:VAR MV4734 :ISA REGULATE :OBJECT MV4729 :THAT-REL T :AGENT MV4726 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4726 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4728 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
509: "Show me genes that stat3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show me genes that stat3 regulates" 8
                    END-OF-SOURCE
("Show me genes that stat3 regulates"
 (:VAR MV4737 :ISA SHOW :STATEMENT-OR-THEME MV4739 :BENEFICIARY MV4738 :PRESENT
  "PRESENT")
 (:VAR MV4739 :ISA GENE :PREDICATION MV4741 :RAW-TEXT "genes")
 (:VAR MV4741 :ISA REGULATE :OBJECT MV4739 :THAT-REL T :AGENT MV4736 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4736 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4738 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
510: "Show me the pahtways that involve SRF"

                    SOURCE-START
e15   SHOW          1 "Show me the pahtways that involve SRF" 8
                    END-OF-SOURCE
("Show me the pahtways that involve SRF"
 (:VAR MV4742 :ISA SHOW :STATEMENT-OR-THEME MV4745 :BENEFICIARY MV4743 :PRESENT
  "PRESENT")
 (:VAR MV4745 :ISA BIO-ENTITY :PREDICATION MV4747 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4747 :ISA INVOLVE :THEME MV4745 :THAT-REL T :THEME MV4748 :PRESENT
  "PRESENT")
 (:VAR MV4748 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4743 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
511: "Show me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show me what transcription factors are shared by elk1 and srf" 13
                    END-OF-SOURCE
("Show me what transcription factors are shared by elk1 and srf"
 (:VAR MV4762 :ISA SHOW :STATEMENT MV4760 :THEME MV4752 :PRESENT "PRESENT")
 (:VAR MV4760 :ISA SHARE :OBJECT MV4749 :PARTICIPANT MV4759 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV4749 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4759 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4750 MV4758))
 (:VAR MV4750 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4758 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4752 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
512: "Show me which genes are regulated by STAT3"

                    SOURCE-START
e16   SHOW          1 "Show me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Show me which genes are regulated by STAT3"
 (:VAR MV4773 :ISA SHOW :STATEMENT MV4771 :THEME MV4765 :PRESENT "PRESENT")
 (:VAR MV4771 :ISA REGULATE :OBJECT MV4767 :AGENT MV4763 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4767 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4763 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4765 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
513: "Show the genes which STAT3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("Show the genes which STAT3 regulates"
 (:VAR MV4775 :ISA SHOW :STATEMENT-OR-THEME MV4777 :PRESENT "PRESENT")
 (:VAR MV4777 :ISA GENE :PREDICATION MV4779 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4779 :ISA REGULATE :OBJECT MV4777 :AGENT MV4774 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4774 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
514: "Show the pahtways that involve SRF"

                    SOURCE-START
e13   SHOW          1 "Show the pahtways that involve SRF" 7
                    END-OF-SOURCE
("Show the pahtways that involve SRF"
 (:VAR MV4780 :ISA SHOW :STATEMENT-OR-THEME MV4782 :PRESENT "PRESENT")
 (:VAR MV4782 :ISA BIO-ENTITY :PREDICATION MV4784 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4784 :ISA INVOLVE :THEME MV4782 :THAT-REL T :THEME MV4785 :PRESENT
  "PRESENT")
 (:VAR MV4785 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
515: "Show transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show transcription factors that are shared by elk1 and srf" 12
                    END-OF-SOURCE
("Show transcription factors that are shared by elk1 and srf"
 (:VAR MV4788 :ISA SHOW :STATEMENT-OR-THEME MV4786 :PRESENT "PRESENT")
 (:VAR MV4786 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4796 :RAW-TEXT
  "transcription factors")
 (:VAR MV4796 :ISA SHARE :OBJECT MV4786 :THAT-REL T :PARTICIPANT MV4795
  :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV4795 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4787 MV4794))
 (:VAR MV4787 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4794 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
516: "Tell me the genes which are regulated by STAT3"

                    SOURCE-START
e20   TELL          1 "Tell me the genes which are regulated by STAT3" 11
                    END-OF-SOURCE
("Tell me the genes which are regulated by STAT3"
 (:VAR MV4799 :ISA TELL :THEME MV4802 :BENEFICIARY MV4800 :PRESENT "PRESENT")
 (:VAR MV4802 :ISA GENE :PREDICATION MV4809 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4809 :ISA REGULATE :OBJECT MV4802 :AGENT MV4798 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4798 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4800 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
517: "Tell me what genes are regulated by elk1 and srf"

                    SOURCE-START
e19   TELL          1 "Tell me what genes are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("Tell me what genes are regulated by elk1 and srf"
 (:VAR MV4811 :ISA TELL :THEME MV4821 :THEME MV4812 :PRESENT "PRESENT")
 (:VAR MV4821 :ISA REGULATE :OBJECT MV4814 :AGENT MV4820 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4814 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV4820 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4810 MV4819))
 (:VAR MV4810 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4819 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4812 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
518: "Tell me which genes are regulated by STAT3"

                    SOURCE-START
e16   TELL          1 "Tell me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Tell me which genes are regulated by STAT3"
 (:VAR MV4824 :ISA TELL :THEME MV4831 :THEME MV4825 :PRESENT "PRESENT")
 (:VAR MV4831 :ISA REGULATE :OBJECT MV4827 :AGENT MV4823 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4827 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4823 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4825 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
519: "What are positive regulators of cfos?"

                    SOURCE-START
e10   BE            1 "What are positive regulators of cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of cfos?"
 (:VAR MV4835 :ISA BE :SUBJECT MV4834 :PREDICATE MV4833 :PRESENT "PRESENT")
 (:VAR MV4834 :ISA WHAT)
 (:VAR MV4833 :ISA POSITIVE-REGULATOR :THEME MV4837 :RAW-TEXT
  "positive regulators")
 (:VAR MV4837 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
520: "What are some regulators of SMURF2?"

                    SOURCE-START
e12   BE            1 "What are some regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some regulators of SMURF2?"
 (:VAR MV4841 :ISA BE :SUBJECT MV4840 :PREDICATE MV4843 :PRESENT "PRESENT")
 (:VAR MV4840 :ISA WHAT)
 (:VAR MV4843 :ISA REGULATOR :THEME MV4839 :QUANTIFIER MV4842 :RAW-TEXT
  "regulators")
 (:VAR MV4839 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN")
 (:VAR MV4842 :ISA SOME :WORD "some"))

___________________
521: "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"

                    SOURCE-START
e31   BE            1 "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
 (:VAR MV4852 :ISA BE :SUBJECT MV4851 :PREDICATE MV4855 :PRESENT "PRESENT")
 (:VAR MV4851 :ISA WHAT)
 (:VAR MV4855 :ISA REGULATOR :THEME MV4859 :HAS-DETERMINER "THE" :PREDICATION
  MV4854 :RAW-TEXT "regulators")
 (:VAR MV4859 :ISA COLLECTION :RAW-TEXT
  "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :TYPE PROTEIN :NUMBER 6 :ITEMS
  (MV4846 MV4847 MV4857 MV4848 MV4849 MV4850))
 (:VAR MV4846 :ISA PROTEIN :RAW-TEXT "ABI2" :UID "UP:Q9NYB9" :NAME
  "ABI2_HUMAN")
 (:VAR MV4847 :ISA PROTEIN :RAW-TEXT "ABL1" :UID "UP:P00519" :NAME
  "ABL1_HUMAN")
 (:VAR MV4857 :ISA PROTEIN :RAW-TEXT "ACADSB" :UID "UP:P45954" :NAME
  "ACDSB_HUMAN")
 (:VAR MV4848 :ISA PROTEIN :RAW-TEXT "ADGRL1" :UID "UP:O94910" :NAME
  "AGRL1_HUMAN")
 (:VAR MV4849 :ISA PROTEIN :RAW-TEXT "ADRM1" :UID "UP:Q16186" :NAME
  "ADRM1_HUMAN")
 (:VAR MV4850 :ISA PROTEIN :RAW-TEXT "AGAP1" :UID "UP:Q9UPQ3" :NAME
  "AGAP1_HUMAN")
 (:VAR MV4854 :ISA COMMON))

___________________
522: "What are the common regulators of elk1 and srf"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srf" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srf"
 (:VAR MV4863 :ISA BE :SUBJECT MV4862 :PREDICATE MV4866 :PRESENT "PRESENT")
 (:VAR MV4862 :ISA WHAT)
 (:VAR MV4866 :ISA REGULATOR :THEME MV4870 :HAS-DETERMINER "THE" :PREDICATION
  MV4865 :RAW-TEXT "regulators")
 (:VAR MV4870 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4861 MV4869))
 (:VAR MV4861 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4869 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4865 :ISA COMMON))

___________________
523: "What are the common regulators of elk1 and srg"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srg" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srg"
 (:VAR MV4874 :ISA BE :SUBJECT MV4873 :PREDICATE MV4877 :PRESENT "PRESENT")
 (:VAR MV4873 :ISA WHAT)
 (:VAR MV4877 :ISA REGULATOR :THEME MV4881 :HAS-DETERMINER "THE" :PREDICATION
  MV4876 :RAW-TEXT "regulators")
 (:VAR MV4881 :ISA COLLECTION :RAW-TEXT "elk1 and srg" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4872 MV4880))
 (:VAR MV4872 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4880 :ISA BIO-ENTITY :NAME "srg") (:VAR MV4876 :ISA COMMON))

___________________
524: "What are the common regulators of those genes"

                    SOURCE-START
e16   BE            1 "What are the common regulators of those genes" 9
                    END-OF-SOURCE
("What are the common regulators of those genes"
 (:VAR MV4884 :ISA BE :SUBJECT MV4883 :PREDICATE MV4887 :PRESENT "PRESENT")
 (:VAR MV4883 :ISA WHAT)
 (:VAR MV4887 :ISA REGULATOR :THEME MV4890 :HAS-DETERMINER "THE" :PREDICATION
  MV4886 :RAW-TEXT "regulators")
 (:VAR MV4890 :ISA GENE :HAS-DETERMINER "THOSE" :RAW-TEXT "genes")
 (:VAR MV4886 :ISA COMMON))

___________________
525: "What are the genes regulated by STAT3?"

                    SOURCE-START
e13   REGULATE      1 "What are the genes regulated by STAT3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes regulated by STAT3?"
 (:VAR MV4897 :ISA REGULATE :OBJECT
  (#<gene 93416> (HAS-DETERMINER (#<what 90002>))
   (HAS-DETERMINER (#<the 106> (WORD "the"))) (RAW-TEXT "genes"))
  :AGENT MV4892 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4892 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
526: "What are the genes which STAT3 regulates?"

                    SOURCE-START
e15   BE            1 "What are the genes which STAT3 regulates" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes which STAT3 regulates?"
 (:VAR MV4902 :ISA BE :SUBJECT MV4901 :PREDICATE MV4904 :PRESENT "PRESENT")
 (:VAR MV4901 :ISA WHAT)
 (:VAR MV4904 :ISA GENE :PREDICATION MV4906 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4906 :ISA REGULATE :OBJECT MV4904 :AGENT MV4900 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4900 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
527: "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV4911 :ISA BE :SUBJECT MV4910 :PREDICATE MV4915 :PRESENT "PRESENT")
 (:VAR MV4910 :ISA WHAT)
 (:VAR MV4915 :ISA REGULATOR :THEME MV4920 :HAS-DETERMINER "THE" :MODIFIER
  MV4914 :RAW-TEXT "regulators")
 (:VAR MV4920 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV4917 MV4918 MV4907 MV4908 MV4909))
 (:VAR MV4917 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV4918 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4907 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4908 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV4909 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN")
 (:VAR MV4914 :ISA FREQUENT :COMPARATIVE MV4913 :NAME "frequent")
 (:VAR MV4913 :ISA SUPERLATIVE-QUANTIFIER :NAME "most"))

___________________
528: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e28   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV4927 :ISA BE :SUBJECT MV4926 :PREDICATE MV4922 :PRESENT "PRESENT")
 (:VAR MV4926 :ISA WHAT)
 (:VAR MV4922 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4930 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV4930 :ISA REGULATE :AGENT MV4922 :THAT-REL T :OBJECT MV4934 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4934 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV4931 MV4932 MV4923 MV4924 MV4925))
 (:VAR MV4931 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV4932 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4923 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4924 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV4925 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
529: "What other genes are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other genes are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other genes are in the first pathway?"
 (:VAR MV4946 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4937 :VALUE MV4945 :PREP
  "IN" :PREDICATE MV4938)
 (:VAR MV4937 :ISA GENE :HAS-DETERMINER "WHAT" :QUANTIFIER MV4936 :RAW-TEXT
  "genes")
 (:VAR MV4936 :ISA OTHER :WORD "other")
 (:VAR MV4945 :ISA GENE :CONTEXT MV4942 :HAS-DETERMINER "WHAT" :QUANTIFIER
  MV4936 :RAW-TEXT "genes")
 (:VAR MV4942 :ISA PATHWAY :QUANTIFIER MV4941 :RAW-TEXT "pathway")
 (:VAR MV4941 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4936 :ISA OTHER :WORD "other")
 (:VAR MV4938 :ISA BE :PRESENT "PRESENT"))

___________________
530: "What other proteins are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other proteins are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other proteins are in the first pathway?"
 (:VAR MV4959 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4950 :VALUE MV4958 :PREP
  "IN" :PREDICATE MV4951)
 (:VAR MV4950 :ISA PROTEIN :HAS-DETERMINER "WHAT" :QUANTIFIER MV4949 :RAW-TEXT
  "proteins")
 (:VAR MV4949 :ISA OTHER :WORD "other")
 (:VAR MV4958 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV4955 :HAS-DETERMINER "WHAT"
  :QUANTIFIER MV4949 :RAW-TEXT "proteins")
 (:VAR MV4955 :ISA PATHWAY :QUANTIFIER MV4954 :RAW-TEXT "pathway")
 (:VAR MV4954 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4949 :ISA OTHER :WORD "other")
 (:VAR MV4951 :ISA BE :PRESENT "PRESENT"))

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
 (:VAR MV4979 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4970 :VALUE MV4978 :PREP
  "IN" :PREDICATE MV4971)
 (:VAR MV4970 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV4978 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV4975 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "proteins")
 (:VAR MV4975 :ISA PATHWAY :QUANTIFIER MV4974 :RAW-TEXT "pathway")
 (:VAR MV4974 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4971 :ISA BE :PRESENT "PRESENT"))

___________________
534: "What pathways involve frizzled8?"

                    SOURCE-START
e7    INVOLVE       1 "What pathways involve frizzled8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve frizzled8?"
 (:VAR MV4984 :ISA INVOLVE :THEME MV4983 :THEME MV4981 :PRESENT "PRESENT")
 (:VAR MV4983 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV4981 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
535: "What genes are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What genes are in the first pathway" 8
                    END-OF-SOURCE
("What genes are in the first pathway"
 (:VAR MV4995 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4986 :VALUE MV4994 :PREP
  "IN" :PREDICATE MV4987)
 (:VAR MV4986 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV4994 :ISA GENE :CONTEXT MV4991 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV4991 :ISA PATHWAY :QUANTIFIER MV4990 :RAW-TEXT "pathway")
 (:VAR MV4990 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4987 :ISA BE :PRESENT "PRESENT"))

___________________
536: "What questions can you answer about microRNAs?"

                    SOURCE-START
e13   ANSWER        1 "What questions can you answer about microRNAs" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What questions can you answer about microRNAs?"
 (:VAR MV5007 :ISA ANSWER :PATIENT MV4998 :MODAL MV5000 :AGENT MV5001 :THEME
  MV5005 :PRESENT "PRESENT")
 (:VAR MV4998 :ISA BIO-QUESTION :HAS-DETERMINER "WHAT") (:VAR MV5000 :ISA CAN)
 (:VAR MV5001 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5005 :ISA MICRO-RNA :RAW-TEXT "microRNAs"))

___________________
537: "What transcription factors regulate mothers against decapentaplegic?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate mothers against decapentaplegic" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate mothers against decapentaplegic?"
 (:VAR MV5011 :ISA REGULATE :AGENT MV5008 :OBJECT MV5009 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5008 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5009 :ISA PROTEIN-FAMILY :RAW-TEXT "mothers against decapentaplegic"
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
 (:VAR MV5015 :ISA REGULATE :LOCATION MV5013 :AGENT MV5012 :OBJECT MV5016
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5013 :ISA WHERE)
 (:VAR MV5012 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5016 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
539: "Which KEGG pathways involve ATP?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve ATP" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve ATP?"
 (:VAR MV5020 :ISA INVOLVE :THEME MV5019 :THEME MV5021 :PRESENT "PRESENT")
 (:VAR MV5019 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5018 :RAW-TEXT
  "pathways")
 (:VAR MV5018 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV5021 :ISA NUCLEOTIDE :RAW-TEXT "ATP" :NAME "adenosine 5'-triphosphate"
  :UID "PCID:5957"))

___________________
540: "Which genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are in the MAPK signaling pathway?"
 (:VAR MV5032 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5024 :VALUE MV5031 :PREP
  "IN" :PREDICATE MV5025)
 (:VAR MV5024 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5031 :ISA GENE :CONTEXT MV5022 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV5022 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5028
  :RAW-TEXT "signaling pathway")
 (:VAR MV5028 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV5025 :ISA BE :PRESENT "PRESENT"))

___________________
541: "Which genes are involved in the oncogenic MAPK signaling pathway?"

                    SOURCE-START
e19   INVOLVE       1 "Which genes are involved in the oncogenic MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are involved in the oncogenic MAPK signaling pathway?"
 (:VAR MV5045 :ISA INVOLVE :THEME MV5036 :CONTEXT MV5034 :PRESENT "PRESENT")
 (:VAR MV5036 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5034 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :PREDICATION MV5041
  :MODIFIER MV5042 :RAW-TEXT "signaling pathway")
 (:VAR MV5041 :ISA ONCOGENIC)
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
  :UID "PR:000000019"))

___________________
542: "Which kinases regulate x?"

                    SOURCE-START
e6    REGULATE      1 "Which kinases regulate x" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases regulate x?"
 (:VAR MV5048 :ISA REGULATE :AGENT MV5047 :OBJECT MV5049 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5047 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5049 :ISA BIO-ENTITY :NAME "x"))

___________________
543: "Which kinases negatively regulate x?"

                    SOURCE-START
e7    DOWNREGULATE  1 "Which kinases negatively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate x?"
 (:VAR MV5050 :ISA DOWNREGULATE :AGENT MV5052 :OBJECT MV5053 :PRESENT "PRESENT"
  :RAW-TEXT "negatively regulate")
 (:VAR MV5052 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5053 :ISA BIO-ENTITY :NAME "x"))

___________________
544: "Which kinases positively regulate x?"

                    SOURCE-START
e7    UPREGULATE    1 "Which kinases positively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases positively regulate x?"
 (:VAR MV5054 :ISA UPREGULATE :AGENT MV5056 :OBJECT MV5057 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulate")
 (:VAR MV5056 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5057 :ISA BIO-ENTITY :NAME "x"))

___________________
545: "Which of these are in immune pathways?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune pathways?"
 (:VAR MV5066 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5060 :VALUE MV5064 :PREP
  MV5062 :PREDICATE MV5061)
 (:VAR MV5060 :ISA THESE :QUANTIFIER MV5058 :WORD "these")
 (:VAR MV5058 :ISA WHICH)
 (:VAR MV5064 :ISA PATHWAY :MODIFIER MV5063 :RAW-TEXT "pathways")
 (:VAR MV5063 :ISA IMMUNE :NAME "immune") (:VAR MV5062 :ISA IN :WORD "in")
 (:VAR MV5061 :ISA BE :PRESENT "PRESENT"))

___________________
546: "Which of these are in immune system pathways?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which of these are in immune system pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune system pathways?"
 (:VAR MV5076 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5071 :VALUE MV5074 :PREP
  MV5073 :PREDICATE MV5072)
 (:VAR MV5071 :ISA THESE :QUANTIFIER MV5069 :WORD "these")
 (:VAR MV5069 :ISA WHICH)
 (:VAR MV5074 :ISA PATHWAY :NON-CELLULAR-LOCATION MV5068 :RAW-TEXT "pathways")
 (:VAR MV5068 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405")
 (:VAR MV5073 :ISA IN :WORD "in") (:VAR MV5072 :ISA BE :PRESENT "PRESENT"))

___________________
547: "What are the genes STAT3 regulates?"

                    SOURCE-START
e13   BE            1 "What are the genes STAT3 regulates" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes STAT3 regulates?"
 (:VAR MV5080 :ISA BE :SUBJECT MV5079 :PREDICATE MV5082 :PRESENT "PRESENT")
 (:VAR MV5079 :ISA WHAT)
 (:VAR MV5082 :ISA GENE :PREDICATION MV5083 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV5083 :ISA REGULATE :OBJECT MV5082 :AGENT MV5078 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5078 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
548: "Which of those are in the immune pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Which of those are in the immune pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are in the immune pathway?"
 (:VAR MV5093 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5086 :VALUE MV5091 :PREP
  MV5088 :PREDICATE MV5087)
 (:VAR MV5086 :ISA THOSE :QUANTIFIER MV5084 :WORD "those")
 (:VAR MV5084 :ISA WHICH)
 (:VAR MV5091 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5090 :RAW-TEXT
  "pathway")
 (:VAR MV5090 :ISA IMMUNE :NAME "immune") (:VAR MV5088 :ISA IN :WORD "in")
 (:VAR MV5087 :ISA BE :PRESENT "PRESENT"))

___________________
549: "Which pathways involve p53?"

                    SOURCE-START
e7    INVOLVE       1 "Which pathways involve p53" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve p53?"
 (:VAR MV5098 :ISA INVOLVE :THEME MV5097 :THEME MV5095 :PRESENT "PRESENT")
 (:VAR MV5097 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV5095 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
550: "can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("can you show me the pahtways that involve SRF"
 (:VAR MV5108 :ISA POLAR-QUESTION :STATEMENT MV5101)
 (:VAR MV5101 :ISA SHOW :AGENT MV5100 :STATEMENT-OR-THEME MV5104 :BENEFICIARY
  MV5102 :MODAL "CAN")
 (:VAR MV5100 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5104 :ISA BIO-ENTITY :PREDICATION MV5106 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV5106 :ISA INVOLVE :THEME MV5104 :THAT-REL T :THEME MV5107 :MODAL
  "CAN")
 (:VAR MV5107 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5102 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
551: "Does Selumetinib inhibit MAP2K1?"

                    SOURCE-START
e9    INHIBIT       1 "Does Selumetinib inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib inhibit MAP2K1?"
 (:VAR MV5114 :ISA POLAR-QUESTION :STATEMENT MV5113)
 (:VAR MV5113 :ISA INHIBIT :AGENT MV5111 :OBJECT MV5109 :RAW-TEXT "inhibit")
 (:VAR MV5111 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV5109 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
552: "Let's build a model of the KRAS neighborhood."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's build a model of the KRAS neighborhood" 11
                    PERIOD
                    END-OF-SOURCE
("Let's build a model of the KRAS neighborhood."
 (:VAR MV5124 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV5116 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV5116 :ISA BUILD :ARTIFACT MV5118 :PRESENT "PRESENT")
 (:VAR MV5118 :ISA MODEL :OBJECT MV5122 :HAS-DETERMINER "A")
 (:VAR MV5122 :ISA NEIGHBORHOOD :HAS-DETERMINER "THE" :MODIFIER MV5121)
 (:VAR MV5121 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN"))

___________________
553: "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."

                    SOURCE-START
e28   KNOW          1 "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk" 15
                    PERIOD
                    END-OF-SOURCE
("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
 (:VAR MV5142 :ISA COLLECTION :TYPE KNOW :NUMBER 2 :ITEMS (MV5140 MV5141))
 (:VAR MV5140 :ISA KNOW :AGENT MV5125 :STATEMENT MV5131 :PRESENT "PRESENT")
 (:VAR MV5125 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV5131 :ISA BIO-ACTIVATE :AGENT MV5130 :OBJECT MV5132 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5130 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5132 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5141 :ISA COLLECTION :RAW-TEXT
  "Raf activates Mek and Mek activates Erk" :TYPE BIO-ACTIVATE :NUMBER 2 :ITEMS
  (MV5134 MV5138))
 (:VAR MV5134 :ISA BIO-ACTIVATE :AGENT MV5133 :OBJECT MV5135 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5133 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5135 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5138 :ISA BIO-ACTIVATE :AGENT MV5137 :OBJECT MV5139 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5137 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5139 :ISA PROTEIN-FAMILY :RAW-TEXT "Erk" :NAME "ERK" :COUNT 7
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
 (:VAR MV5145 :ISA PHOSPHORYLATE :AGENT MV5143 :SUBSTRATE MV5144 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV5143 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV5144 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
555: "DUSP6 dephosphorylates MAPK1."

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1."
 (:VAR MV5148 :ISA DEPHOSPHORYLATE :AGENT MV5146 :SUBSTRATE MV5147 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV5146 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV5147 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
556: "Is the amount of phosphorylated MAPK1 always high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always high?"
 (:VAR MV5159 :ISA POLAR-QUESTION :STATEMENT MV5158)
 (:VAR MV5158 :ISA COPULAR-PREDICATION :ITEM MV5152 :VALUE MV5156 :PREDICATE
  MV5150)
 (:VAR MV5152 :ISA BIO-AMOUNT :MEASURED-ITEM MV5149 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5149 :ISA PROTEIN :PREDICATION MV5154 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5154 :ISA PHOSPHORYLATE :SUBSTRATE MV5149 :RAW-TEXT "phosphorylated")
 (:VAR MV5156 :ISA HIGH :ADVERB MV5155)
 (:VAR MV5155 :ISA ALWAYS :NAME "always") (:VAR MV5150 :ISA BE))

___________________
557: "Is the amount of phosphorylated MAPK1 always low?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always low" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always low?"
 (:VAR MV5170 :ISA POLAR-QUESTION :STATEMENT MV5169)
 (:VAR MV5169 :ISA COPULAR-PREDICATION :ITEM MV5163 :VALUE MV5167 :PREDICATE
  MV5161)
 (:VAR MV5163 :ISA BIO-AMOUNT :MEASURED-ITEM MV5160 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5160 :ISA PROTEIN :PREDICATION MV5165 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5165 :ISA PHOSPHORYLATE :SUBSTRATE MV5160 :RAW-TEXT "phosphorylated")
 (:VAR MV5167 :ISA LOW :ADVERB MV5166) (:VAR MV5166 :ISA ALWAYS :NAME "always")
 (:VAR MV5161 :ISA BE))

___________________
558: "Does the MAP2K1-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the MAP2K1-MAPK1 complex vanish" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the MAP2K1-MAPK1 complex vanish?"
 (:VAR MV5180 :ISA POLAR-QUESTION :STATEMENT MV5179)
 (:VAR MV5179 :ISA VANISH :AGENT MV5178 :RAW-TEXT "vanish")
 (:VAR MV5178 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV5172 :COMPONENT MV5171)
 (:VAR MV5172 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5171 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
559: "Does the DUSP6-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the DUSP6-MAPK1 complex vanish" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the DUSP6-MAPK1 complex vanish?"
 (:VAR MV5190 :ISA POLAR-QUESTION :STATEMENT MV5189)
 (:VAR MV5189 :ISA VANISH :AGENT MV5188 :RAW-TEXT "vanish")
 (:VAR MV5188 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "DUSP6-MAPK1"
  :COMPONENT MV5182 :COMPONENT MV5181)
 (:VAR MV5182 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5181 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN"))

___________________
560: "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e49   EVENT-RELATION  1 "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV5218 :ISA POLAR-QUESTION :STATEMENT MV5217)
 (:VAR MV5217 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV5214 :EVENT MV5210)
 (:VAR MV5214 :ISA WH-QUESTION :STATEMENT MV5211 :WH IF)
 (:VAR MV5211 :ISA INCREASE :AGENT-OR-CAUSE MV5200 :MULTIPLIER MV5209
  :AFFECTED-PROCESS-OR-OBJECT MV5204 :RAW-TEXT "increase")
 (:VAR MV5200 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV5209 :ISA N-FOLD :NUMBER MV5208) (:VAR MV5208 :ISA NUMBER :VALUE 10)
 (:VAR MV5204 :ISA BIO-AMOUNT :MEASURED-ITEM MV5192 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5192 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV5210 :ISA VANISH :CAUSE MV5195 :RAW-TEXT "vanish")
 (:VAR MV5195 :ISA BIO-AMOUNT :MEASURED-ITEM MV5191 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5191 :ISA PROTEIN :PREDICATION MV5197 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5197 :ISA PHOSPHORYLATE :SUBSTRATE MV5191 :RAW-TEXT "phosphorylated"))

___________________
561: "Show me the evidence that kras regulates fzd8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates fzd8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras regulates fzd8."
 (:VAR MV5220 :ISA SHOW :STATEMENT-OR-THEME MV5227 :BENEFICIARY MV5221 :PRESENT
  "PRESENT")
 (:VAR MV5227 :ISA EVIDENCE :STATEMENT MV5226 :HAS-DETERMINER "THE")
 (:VAR MV5226 :ISA REGULATE :AGENT MV5225 :OBJECT MV5219 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5225 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5219 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV5221 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
562: "What increases the amount of fzd8?"

                    SOURCE-START
e14   INCREASE      1 "What increases the amount of fzd8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of fzd8?"
 (:VAR MV5231 :ISA INCREASE :AGENT-OR-CAUSE MV5229 :AFFECTED-PROCESS-OR-OBJECT
  MV5233 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5229 :ISA WHAT)
 (:VAR MV5233 :ISA BIO-AMOUNT :MEASURED-ITEM MV5228 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5228 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
563: "Which kinases are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signaling pathway?"
 (:VAR MV5246 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5238 :VALUE MV5245 :PREP
  "IN" :PREDICATE MV5239)
 (:VAR MV5238 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5245 :ISA KINASE :CONTEXT-OR-IN-PATHWAY MV5236 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "kinases")
 (:VAR MV5236 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5242
  :RAW-TEXT "signaling pathway")
 (:VAR MV5242 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV5239 :ISA BE :PRESENT "PRESENT"))

___________________
564: "Does STAT3 regulate the c-fos gene in the liver?"

                    SOURCE-START
e23   REGULATE      1 "Does STAT3 regulate the c-fos gene in the liver" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in the liver?"
 (:VAR MV5259 :ISA POLAR-QUESTION :STATEMENT MV5257)
 (:VAR MV5257 :ISA REGULATE :AGENT MV5248 :OBJECT MV5253 :RAW-TEXT "regulate")
 (:VAR MV5248 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5253 :ISA GENE :ORGAN MV5256 :HAS-DETERMINER "THE" :EXPRESSES MV5249
  :RAW-TEXT "gene")
 (:VAR MV5256 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV5249 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
565: "what genes are regulated by smad2?"

                    SOURCE-START
e12   REGULATE      1 "what genes are regulated by smad2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by smad2?"
 (:VAR MV5266 :ISA REGULATE :OBJECT MV5262 :AGENT MV5260 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5262 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5260 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
566: "Which of these are regulated by smad2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by smad2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by smad2?"
 (:VAR MV5275 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV5271 :AGENT MV5268
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV5271 :ISA THESE :QUANTIFIER MV5269 :WORD "these")
 (:VAR MV5269 :ISA WHICH)
 (:VAR MV5268 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
567: "Which of these also regulate cfos?"

                    SOURCE-START
e12   REGULATE      1 "Which of these also regulate cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these also regulate cfos?"
 (:VAR MV5283 :ISA REGULATE :AGENT-OR-CAUSE MV5280 :OBJECT MV5284 :PRESENT
  "PRESENT" :ADVERB MV5281 :RAW-TEXT "regulate")
 (:VAR MV5280 :ISA THESE :QUANTIFIER MV5278 :WORD "these")
 (:VAR MV5278 :ISA WHICH)
 (:VAR MV5284 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV5281 :ISA ALSO :NAME "also"))

___________________
568: "what transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors transcribe SMURF2?"
 (:VAR MV5289 :ISA TRANSCRIBE :AGENT MV5286 :OBJECT MV5287 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV5286 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5287 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
569: "what transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factor transcribes SMURF2?"
 (:VAR MV5293 :ISA TRANSCRIBE :AGENT MV5290 :OBJECT MV5291 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV5290 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV5291 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
570: "Which KEGG pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which KEGG pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways utilize SRF?"
 (:VAR MV5297 :ISA UTILIZE :PARTICIPANT MV5296 :OBJECT MV5298 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV5296 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5295 :RAW-TEXT
  "pathways")
 (:VAR MV5295 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV5298 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV5312 :ISA INVOLVE :THEME MV5311 :THEME MV5309 :PRESENT "PRESENT")
 (:VAR MV5311 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5309 :ISA BIO-ORGAN :HAS-DETERMINER "THE" :NAME "immune system" :UID
  "UBERON:0002405"))

___________________
573: "What KEGG pathways involve ERBB2, JUN, and MAPK8?"

                    SOURCE-START
e16   INVOLVE       1 "What KEGG pathways involve ERBB2, JUN, and MAPK8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
 (:VAR MV5319 :ISA INVOLVE :THEME MV5318 :THEME MV5322 :PRESENT "PRESENT")
 (:VAR MV5318 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5317 :RAW-TEXT
  "pathways")
 (:VAR MV5317 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV5322 :ISA COLLECTION :RAW-TEXT "ERBB2, JUN, and MAPK8" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV5314 MV5320 MV5315))
 (:VAR MV5314 :ISA PROTEIN :RAW-TEXT "ERBB2" :UID "UP:P04626" :NAME
  "ERBB2_HUMAN")
 (:VAR MV5320 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV5315 :ISA PROTEIN :RAW-TEXT "MAPK8" :UID "UP:P45983" :NAME
  "MK08_HUMAN"))

___________________
574: "What pathways are shared by these genes?"

                    SOURCE-START
e13   SHARE         1 "What pathways are shared by these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are shared by these genes?"
 (:VAR MV5330 :ISA SHARE :OBJECT MV5324 :PARTICIPANT MV5329 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV5324 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5329 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
575: "what genes are regulated by srf?"

                    SOURCE-START
e11   REGULATE      1 "what genes are regulated by srf" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by srf?"
 (:VAR MV5338 :ISA REGULATE :OBJECT MV5333 :AGENT MV5337 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5333 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5337 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
576: "What are common pathways for these genes?"

                    SOURCE-START
e13   BE            1 "What are common pathways for these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common pathways for these genes?"
 (:VAR MV5341 :ISA BE :SUBJECT MV5340 :PREDICATE MV5343 :PRESENT "PRESENT")
 (:VAR MV5340 :ISA WHAT)
 (:VAR MV5343 :ISA PATHWAY :PATHWAYCOMPONENT MV5346 :PREDICATION MV5342
  :RAW-TEXT "pathways")
 (:VAR MV5346 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV5342 :ISA COMMON))

___________________
577: "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e24   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV5360 :ISA SHARE :OBJECT MV5353 :PARTICIPANT MV5358 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV5353 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5352 :RAW-TEXT
  "pathways")
 (:VAR MV5352 :ISA IMMUNE :NAME "immune")
 (:VAR MV5358 :ISA GENE :EXPRESSES MV5359 :RAW-TEXT "genes")
 (:VAR MV5359 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV5348 MV5349 MV5350))
 (:VAR MV5348 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5349 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV5350 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
578: "What MAP kinase phosphatase are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatase are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatase are regulated by ELK1?"
 (:VAR MV5369 :ISA REGULATE :OBJECT MV5365 :AGENT MV5363 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5365 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV5362 :RAW-TEXT
  "phosphatase")
 (:VAR MV5362 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME
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
 (:VAR MV5363 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
579: "What reactome pathways involve immune system?"

                    SOURCE-START
e9    INVOLVE       1 "What reactome pathways involve immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune system?"
 (:VAR MV5375 :ISA INVOLVE :THEME MV5374 :THEME MV5371 :PRESENT "PRESENT")
 (:VAR MV5374 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5373 :RAW-TEXT
  "pathways")
 (:VAR MV5373 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV5371 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405"))

___________________
580: "Is stat3 a kinase?"

                    SOURCE-START
e9    BE            1 "Is stat3 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 a kinase?" (:VAR MV5380 :ISA POLAR-QUESTION :STATEMENT MV5377)
 (:VAR MV5377 :ISA BE :SUBJECT MV5376 :PREDICATE MV5379)
 (:VAR MV5376 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5379 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
581: "Is STAT3 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is STAT3 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor?"
 (:VAR MV5385 :ISA POLAR-QUESTION :STATEMENT MV5383)
 (:VAR MV5383 :ISA BE :SUBJECT MV5381 :PREDICATE MV5382)
 (:VAR MV5381 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5382 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
582: "Which of these are protein kinases?"

                    SOURCE-START
e11   BE            1 "Which of these are protein kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are protein kinases?"
 (:VAR MV5389 :ISA BE :SUBJECT MV5388 :PREDICATE MV5391 :PRESENT "PRESENT")
 (:VAR MV5388 :ISA THESE :QUANTIFIER MV5386 :WORD "these")
 (:VAR MV5386 :ISA WHICH)
 (:VAR MV5391 :ISA KINASE :ENZYME MV5390 :RAW-TEXT "kinases")
 (:VAR MV5390 :ISA PROTEIN :RAW-TEXT "protein"))

___________________
583: "Which of these are tyrosine kinases?"

                    SOURCE-START
e10   BE            1 "Which of these are tyrosine kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinases?"
 (:VAR MV5397 :ISA BE :SUBJECT MV5396 :PREDICATE MV5393 :PRESENT "PRESENT")
 (:VAR MV5396 :ISA THESE :QUANTIFIER MV5394 :WORD "these")
 (:VAR MV5394 :ISA WHICH)
 (:VAR MV5393 :ISA PROTEIN-FAMILY :RAW-TEXT "tyrosine kinases" :NAME
  "protein tyrosine kinase" :UID "NCIT:C17020"))

___________________
584: "Which of these are serine/threonine kinases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine kinases?"
 (:VAR MV5402 :ISA BE :SUBJECT MV5401 :PREDICATE MV5405 :PRESENT "PRESENT")
 (:VAR MV5401 :ISA THESE :QUANTIFIER MV5399 :WORD "these")
 (:VAR MV5399 :ISA WHICH)
 (:VAR MV5405 :ISA KINASE :AMINO-ACID MV5406 :RAW-TEXT "kinases")
 (:VAR MV5406 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID
  :ITEMS (MV5403 MV5404))
 (:VAR MV5403 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5404 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
585: "Which of these are phosphatases?"

                    SOURCE-START
e9    BE            1 "Which of these are phosphatases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are phosphatases?"
 (:VAR MV5411 :ISA BE :SUBJECT MV5410 :PREDICATE MV5412 :PRESENT "PRESENT")
 (:VAR MV5410 :ISA THESE :QUANTIFIER MV5408 :WORD "these")
 (:VAR MV5408 :ISA WHICH)
 (:VAR MV5412 :ISA PHOSPHATASE :RAW-TEXT "phosphatases"))

___________________
586: "Which of these are proteases?"

                    SOURCE-START
e9    BE            1 "Which of these are proteases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are proteases?"
 (:VAR MV5417 :ISA BE :SUBJECT MV5416 :PREDICATE MV5418 :PRESENT "PRESENT")
 (:VAR MV5416 :ISA THESE :QUANTIFIER MV5414 :WORD "these")
 (:VAR MV5414 :ISA WHICH)
 (:VAR MV5418 :ISA PROTEIN :RAW-TEXT "proteases" :UID "UP:P63127" :NAME
  "VPK9_HUMAN"))

___________________
587: "Which of these are receptors?"

                    SOURCE-START
e9    BE            1 "Which of these are receptors" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptors?"
 (:VAR MV5423 :ISA BE :SUBJECT MV5422 :PREDICATE MV5424 :PRESENT "PRESENT")
 (:VAR MV5422 :ISA THESE :QUANTIFIER MV5420 :WORD "these")
 (:VAR MV5420 :ISA WHICH) (:VAR MV5424 :ISA RECEPTOR :RAW-TEXT "receptors"))

___________________
588: "Which of these are tyrosine kinase receptors?"

                    SOURCE-START
e12   BE            1 "Which of these are tyrosine kinase receptors" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinase receptors?"
 (:VAR MV5430 :ISA BE :SUBJECT MV5429 :PREDICATE MV5431 :PRESENT "PRESENT")
 (:VAR MV5429 :ISA THESE :QUANTIFIER MV5427 :WORD "these")
 (:VAR MV5427 :ISA WHICH)
 (:VAR MV5431 :ISA RECEPTOR :MODIFIER MV5426 :RAW-TEXT "receptors")
 (:VAR MV5426 :ISA PROTEIN-FAMILY :RAW-TEXT "tyrosine kinase" :NAME
  "protein tyrosine kinase" :UID "NCIT:C17020"))

___________________
589: "Which of these are histone demethylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone demethylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone demethylases?"
 (:VAR MV5437 :ISA BE :SUBJECT MV5436 :PREDICATE MV5433 :PRESENT "PRESENT")
 (:VAR MV5436 :ISA THESE :QUANTIFIER MV5434 :WORD "these")
 (:VAR MV5434 :ISA WHICH)
 (:VAR MV5433 :ISA PROTEIN-FAMILY :RAW-TEXT "histone demethylases" :NAME
  "histone demethylase" :UID "GO:0032452"))

___________________
590: "Which of these are histone methylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methylases?"
 (:VAR MV5443 :ISA BE :SUBJECT MV5442 :PREDICATE MV5439 :PRESENT "PRESENT")
 (:VAR MV5442 :ISA THESE :QUANTIFIER MV5440 :WORD "these")
 (:VAR MV5440 :ISA WHICH)
 (:VAR MV5439 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methylases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
591: "Which of these are histone methyltransferases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methyltransferases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methyltransferases?"
 (:VAR MV5449 :ISA BE :SUBJECT MV5448 :PREDICATE MV5445 :PRESENT "PRESENT")
 (:VAR MV5448 :ISA THESE :QUANTIFIER MV5446 :WORD "these")
 (:VAR MV5446 :ISA WHICH)
 (:VAR MV5445 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methyltransferases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
592: "Which of these are demethylases?"

                    SOURCE-START
e9    BE            1 "Which of these are demethylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are demethylases?"
 (:VAR MV5454 :ISA BE :SUBJECT MV5453 :PREDICATE MV5455 :PRESENT "PRESENT")
 (:VAR MV5453 :ISA THESE :QUANTIFIER MV5451 :WORD "these")
 (:VAR MV5451 :ISA WHICH)
 (:VAR MV5455 :ISA PROTEIN-FAMILY :RAW-TEXT "demethylases" :NAME "demethylase"
  :UID "GO:0032451"))

___________________
593: "Which of these are methylases?"

                    SOURCE-START
e9    BE            1 "Which of these are methylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methylases?"
 (:VAR MV5460 :ISA BE :SUBJECT MV5459 :PREDICATE MV5461 :PRESENT "PRESENT")
 (:VAR MV5459 :ISA THESE :QUANTIFIER MV5457 :WORD "these")
 (:VAR MV5457 :ISA WHICH)
 (:VAR MV5461 :ISA PROTEIN-FAMILY :RAW-TEXT "methylases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
594: "Which of these are methyltransferases?"

                    SOURCE-START
e9    BE            1 "Which of these are methyltransferases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methyltransferases?"
 (:VAR MV5466 :ISA BE :SUBJECT MV5465 :PREDICATE MV5467 :PRESENT "PRESENT")
 (:VAR MV5465 :ISA THESE :QUANTIFIER MV5463 :WORD "these")
 (:VAR MV5463 :ISA WHICH)
 (:VAR MV5467 :ISA PROTEIN-FAMILY :RAW-TEXT "methyltransferases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
595: "Which of these are steroid receptors?"

                    SOURCE-START
e11   BE            1 "Which of these are steroid receptors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are steroid receptors?"
 (:VAR MV5472 :ISA BE :SUBJECT MV5471 :PREDICATE MV5474 :PRESENT "PRESENT")
 (:VAR MV5471 :ISA THESE :QUANTIFIER MV5469 :WORD "these")
 (:VAR MV5469 :ISA WHICH)
 (:VAR MV5474 :ISA RECEPTOR :MODIFIER MV5473 :RAW-TEXT "receptors")
 (:VAR MV5473 :ISA MOLECULE :RAW-TEXT "steroid" :NAME "steroid" :UID
  "CHEBI:35341"))

___________________
596: "Which of these are receptor tyrosine kinases?"

                    SOURCE-START
e10   BE            1 "Which of these are receptor tyrosine kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptor tyrosine kinases?"
 (:VAR MV5480 :ISA BE :SUBJECT MV5479 :PREDICATE MV5476 :PRESENT "PRESENT")
 (:VAR MV5479 :ISA THESE :QUANTIFIER MV5477 :WORD "these")
 (:VAR MV5477 :ISA WHICH)
 (:VAR MV5476 :ISA PROTEIN-FAMILY :RAW-TEXT "receptor tyrosine kinases" :NAME
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
 (:VAR MV5486 :ISA BE :SUBJECT MV5485 :PREDICATE MV5482 :PRESENT "PRESENT")
 (:VAR MV5485 :ISA THESE :QUANTIFIER MV5483 :WORD "these")
 (:VAR MV5483 :ISA WHICH)
 (:VAR MV5482 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
598: "Which of these are DNA binding proteins?"

                    SOURCE-START
e12   BE            1 "Which of these are DNA binding proteins" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are DNA binding proteins?"
 (:VAR MV5492 :ISA BE :SUBJECT MV5491 :PREDICATE MV5493 :PRESENT "PRESENT")
 (:VAR MV5491 :ISA THESE :QUANTIFIER MV5489 :WORD "these")
 (:VAR MV5489 :ISA WHICH)
 (:VAR MV5493 :ISA PROTEIN :MODIFIER MV5488 :RAW-TEXT "proteins")
 (:VAR MV5488 :ISA DNA-BINDING :RAW-TEXT "DNA binding"))

___________________
599: "Which of these are serine/threonine phosphatases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine phosphatases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine phosphatases?"
 (:VAR MV5498 :ISA BE :SUBJECT MV5497 :PREDICATE MV5501 :PRESENT "PRESENT")
 (:VAR MV5497 :ISA THESE :QUANTIFIER MV5495 :WORD "these")
 (:VAR MV5495 :ISA WHICH)
 (:VAR MV5501 :ISA PHOSPHATASE :MODIFIER MV5502 :RAW-TEXT "phosphatases")
 (:VAR MV5502 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID
  :ITEMS (MV5499 MV5500))
 (:VAR MV5499 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5500 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
600: "Which of these are tyrosine phosphatases?"

                    SOURCE-START
e11   BE            1 "Which of these are tyrosine phosphatases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine phosphatases?"
 (:VAR MV5507 :ISA BE :SUBJECT MV5506 :PREDICATE MV5509 :PRESENT "PRESENT")
 (:VAR MV5506 :ISA THESE :QUANTIFIER MV5504 :WORD "these")
 (:VAR MV5504 :ISA WHICH)
 (:VAR MV5509 :ISA PHOSPHATASE :MODIFIER MV5508 :RAW-TEXT "phosphatases")
 (:VAR MV5508 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

___________________
601: "What does MEK phosphorylate?"

                    SOURCE-START
e5    PHOSPHORYLATE 1 "What does MEK phosphorylate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does MEK phosphorylate?"
 (:VAR MV5514 :ISA PHOSPHORYLATE :AMINO-ACID MV5511 :AGENT MV5513 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV5511 :ISA WHAT)
 (:VAR MV5513 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV5523 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5517 :ORGAN MV5522
  :PRESENT "PRESENT" :ADVERB MV5519 :RAW-TEXT "expressed")
 (:VAR MV5517 :ISA THESE :QUANTIFIER MV5515 :WORD "these")
 (:VAR MV5515 :ISA WHICH) (:VAR MV5522 :ISA LIVER)
 (:VAR MV5519 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
603: "What regulates frizzled8?"

                    SOURCE-START
e5    REGULATE      1 "What regulates frizzled8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates frizzled8?"
 (:VAR MV5528 :ISA REGULATE :AGENT-OR-CAUSE MV5527 :OBJECT MV5526 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5527 :ISA WHAT)
 (:VAR MV5526 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
604: "What increases the amount of myc?"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of myc?"
 (:VAR MV5531 :ISA INCREASE :AGENT-OR-CAUSE MV5529 :AFFECTED-PROCESS-OR-OBJECT
  MV5533 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5529 :ISA WHAT)
 (:VAR MV5533 :ISA BIO-AMOUNT :MEASURED-ITEM MV5535 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5535 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
605: "What upregulates myc?"

                    SOURCE-START
e4    UPREGULATE    1 "What upregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates myc?"
 (:VAR MV5538 :ISA UPREGULATE :AGENT-OR-CAUSE MV5537 :OBJECT MV5539 :PRESENT
  "PRESENT" :RAW-TEXT "upregulates")
 (:VAR MV5537 :ISA WHAT)
 (:VAR MV5539 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
606: "What downregulates myc?"

                    SOURCE-START
e4    DOWNREGULATE  1 "What downregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates myc?"
 (:VAR MV5541 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV5540 :OBJECT MV5542 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV5540 :ISA WHAT)
 (:VAR MV5542 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
607: "What decreases the amount of GFAP?"

                    SOURCE-START
e12   DECREASE      1 "What decreases the amount of GFAP" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What decreases the amount of GFAP?"
 (:VAR MV5544 :ISA DECREASE :AGENT-OR-CAUSE MV5543 :AFFECTED-PROCESS-OR-OBJECT
  MV5546 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5543 :ISA WHAT)
 (:VAR MV5546 :ISA BIO-AMOUNT :MEASURED-ITEM MV5548 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5548 :ISA PROTEIN :RAW-TEXT "GFAP" :UID "UP:P14136" :NAME
  "GFAP_HUMAN"))

___________________
608: "What regulates GLUL?"

                    SOURCE-START
e4    REGULATE      1 "What regulates GLUL" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL?"
 (:VAR MV5551 :ISA REGULATE :AGENT-OR-CAUSE MV5550 :OBJECT MV5552 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5550 :ISA WHAT)
 (:VAR MV5552 :ISA PROTEIN :RAW-TEXT "GLUL" :UID "UP:P15104" :NAME
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
 (:VAR MV5569 :ISA REGULATE :AGENT MV5568 :OBJECT MV5572 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5568 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5572 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5571 :RAW-TEXT
  "gene")
 (:VAR MV5571 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
612: "Which kinases negatively regulate the cfos gene?"

                    SOURCE-START
e12   DOWNREGULATE  1 "Which kinases negatively regulate the cfos gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate the cfos gene?"
 (:VAR MV5573 :ISA DOWNREGULATE :AGENT MV5575 :OBJECT MV5578 :PRESENT "PRESENT"
  :RAW-TEXT "negatively regulate")
 (:VAR MV5575 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5578 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5577 :RAW-TEXT
  "gene")
 (:VAR MV5577 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
613: "What are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "What are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of the cfos gene?"
 (:VAR MV5581 :ISA BE :SUBJECT MV5580 :PREDICATE MV5579 :PRESENT "PRESENT")
 (:VAR MV5580 :ISA WHAT)
 (:VAR MV5579 :ISA POSITIVE-REGULATOR :THEME MV5585 :RAW-TEXT
  "positive regulators")
 (:VAR MV5585 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5584 :RAW-TEXT
  "gene")
 (:VAR MV5584 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
614: "What transcribes ZEB1?"

                    SOURCE-START
e5    TRANSCRIBE    1 "What transcribes ZEB1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcribes ZEB1?"
 (:VAR MV5589 :ISA TRANSCRIBE :AGENT-OR-CAUSE MV5588 :OBJECT MV5587 :PRESENT
  "PRESENT" :RAW-TEXT "transcribes")
 (:VAR MV5588 :ISA WHAT)
 (:VAR MV5587 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME
  "ZEB1_HUMAN"))

___________________
615: "Show me the evidence that IL6 increases the amount of SOCS1."

                    SOURCE-START
e27   SHOW          1 "Show me the evidence that IL6 increases the amount of SOCS1" 14
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that IL6 increases the amount of SOCS1."
 (:VAR MV5592 :ISA SHOW :STATEMENT-OR-THEME MV5603 :BENEFICIARY MV5593 :PRESENT
  "PRESENT")
 (:VAR MV5603 :ISA EVIDENCE :STATEMENT MV5598 :HAS-DETERMINER "THE")
 (:VAR MV5598 :ISA INCREASE :AGENT MV5590 :AFFECTED-PROCESS-OR-OBJECT MV5600
  :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5590 :ISA PROTEIN :RAW-TEXT "IL6" :UID "UP:P05231" :NAME "IL6_HUMAN")
 (:VAR MV5600 :ISA BIO-AMOUNT :MEASURED-ITEM MV5591 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5591 :ISA PROTEIN :RAW-TEXT "SOCS1" :UID "UP:O15524" :NAME
  "SOCS1_HUMAN")
 (:VAR MV5593 :ISA INTERLOCUTOR :NAME "speaker"))

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
 (:VAR MV5618 :ISA BE :SUBJECT MV5617 :PREDICATE MV5624 :PRESENT "PRESENT")
 (:VAR MV5617 :ISA WHAT)
 (:VAR MV5624 :ISA EVIDENCE :STATEMENT MV5623 :HAS-DETERMINER "THE")
 (:VAR MV5623 :ISA REGULATE :AGENT MV5622 :OBJECT MV5616 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5622 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5616 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
618: "What is the evidence that SRF binds the cfos gene?"

                    SOURCE-START
e21   BE            1 "What is the evidence that SRF binds the cfos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that SRF binds the cfos gene?"
 (:VAR MV5626 :ISA BE :SUBJECT MV5625 :PREDICATE MV5635 :PRESENT "PRESENT")
 (:VAR MV5625 :ISA WHAT)
 (:VAR MV5635 :ISA EVIDENCE :STATEMENT MV5631 :HAS-DETERMINER "THE")
 (:VAR MV5631 :ISA BINDING :BINDER MV5630 :DIRECT-BINDEE MV5634 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV5630 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5634 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5633 :RAW-TEXT
  "gene")
 (:VAR MV5633 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
619: "what genes are exclusively expressed in liver?"

                    SOURCE-START
e13   GENE-TRANSCRIPT-EXPRESS 1 "what genes are exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are exclusively expressed in liver?"
 (:VAR MV5643 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5637 :ORGAN MV5642
  :PRESENT "PRESENT" :ADVERB MV5639 :RAW-TEXT "expressed")
 (:VAR MV5637 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5642 :ISA LIVER) (:VAR MV5639 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
620: "Is stat3 expressed in liver?"

                    SOURCE-START
e9    GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in liver" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in liver?"
 (:VAR MV5651 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV5649 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV5649 :ISA LIVER))

___________________
621: "Is stat3 exclusively expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 exclusively expressed in liver?"
 (:VAR MV5660 :ISA POLAR-QUESTION :STATEMENT MV5658)
 (:VAR MV5658 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5652 :ORGAN MV5657 :ADVERB
  MV5654 :RAW-TEXT "expressed")
 (:VAR MV5652 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5657 :ISA LIVER) (:VAR MV5654 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
622: "How does MAP4K2 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP4K2 affect CXCL8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP4K2 affect CXCL8?"
 (:VAR MV5665 :ISA AFFECT :MANNER MV5663 :AGENT MV5661 :OBJECT MV5662 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5663 :ISA HOW)
 (:VAR MV5661 :ISA PROTEIN :RAW-TEXT "MAP4K2" :UID "UP:Q12851" :NAME
  "M4K2_HUMAN")
 (:VAR MV5662 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
623: "How does ERK affect CXCL8?"

                    SOURCE-START
e8    AFFECT        1 "How does ERK affect CXCL8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does ERK affect CXCL8?"
 (:VAR MV5670 :ISA AFFECT :MANNER MV5667 :AGENT MV5669 :OBJECT MV5666 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5667 :ISA HOW)
 (:VAR MV5669 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5666 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
624: "What are the common upstream regulators of CXCL8 and CXCL10?"

                    SOURCE-START
e22   BE            1 "What are the common upstream regulators of CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of CXCL8 and CXCL10?"
 (:VAR MV5674 :ISA BE :SUBJECT MV5673 :PREDICATE MV5679 :PRESENT "PRESENT")
 (:VAR MV5673 :ISA WHAT)
 (:VAR MV5679 :ISA REGULATOR :THEME MV5682 :HAS-DETERMINER "THE" :PREDICATION
  MV5676 :CONTEXT MV5677 :RAW-TEXT "regulators")
 (:VAR MV5682 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5671 MV5672))
 (:VAR MV5671 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5672 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV5676 :ISA COMMON)
 (:VAR MV5677 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
625: "What are the paths between MAP3K7 and CXCL8?"

                    SOURCE-START
e16   BE            1 "What are the paths between MAP3K7 and CXCL8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between MAP3K7 and CXCL8?"
 (:VAR MV5687 :ISA BE :SUBJECT MV5686 :PREDICATE MV5689 :PRESENT "PRESENT")
 (:VAR MV5686 :ISA WHAT)
 (:VAR MV5689 :ISA PATH :ENDPOINTS MV5692 :HAS-DETERMINER "THE")
 (:VAR MV5692 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5684 MV5685))
 (:VAR MV5684 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5685 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
626: "Does MAP3K7 affect IKK?"

                    SOURCE-START
e9    AFFECT        1 "Does MAP3K7 affect IKK" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP3K7 affect IKK?" (:VAR MV5699 :ISA POLAR-QUESTION :STATEMENT MV5698)
 (:VAR MV5698 :ISA AFFECT :AGENT MV5694 :OBJECT MV5697 :RAW-TEXT "affect")
 (:VAR MV5694 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5697 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5701 :ISA REGULATE :AGENT MV5700 :OBJECT MV5702 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5700 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5702 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5704 :ISA UPREGULATE :AGENT MV5703 :OBJECT MV5705 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV5703 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5705 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5706 :ISA UPREGULATE :AGENT MV5708 :OBJECT MV5707 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV5708 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5707 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
630: "Does NFkappaB regulate the CXCL8 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does NFkappaB regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate the CXCL8 gene?"
 (:VAR MV5718 :ISA POLAR-QUESTION :STATEMENT MV5717)
 (:VAR MV5717 :ISA REGULATE :AGENT MV5712 :OBJECT MV5716 :RAW-TEXT "regulate")
 (:VAR MV5712 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5716 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5710 :RAW-TEXT
  "gene")
 (:VAR MV5710 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
631: "Show me the evidence that NFkappaB regulates CXCL8"

                    SOURCE-START
e18   SHOW          1 "Show me the evidence that NFkappaB regulates CXCL8" 10
                    END-OF-SOURCE
("Show me the evidence that NFkappaB regulates CXCL8"
 (:VAR MV5720 :ISA SHOW :STATEMENT-OR-THEME MV5728 :BENEFICIARY MV5721 :PRESENT
  "PRESENT")
 (:VAR MV5728 :ISA EVIDENCE :STATEMENT MV5727 :HAS-DETERMINER "THE")
 (:VAR MV5727 :ISA REGULATE :AGENT MV5725 :OBJECT MV5719 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5725 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5719 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5721 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
632: "Does ERK regulate the CXCL8 gene?"

                    SOURCE-START
e14   REGULATE      1 "Does ERK regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the CXCL8 gene?"
 (:VAR MV5736 :ISA POLAR-QUESTION :STATEMENT MV5735)
 (:VAR MV5735 :ISA REGULATE :AGENT MV5731 :OBJECT MV5734 :RAW-TEXT "regulate")
 (:VAR MV5731 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5734 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5729 :RAW-TEXT
  "gene")
 (:VAR MV5729 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
633: "ERK decreases the amount of CXCL8"

                    SOURCE-START
e13   DECREASE      1 "ERK decreases the amount of CXCL8" 8
                    END-OF-SOURCE
("ERK decreases the amount of CXCL8"
 (:VAR MV5739 :ISA DECREASE :AGENT MV5738 :AFFECTED-PROCESS-OR-OBJECT MV5741
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5738 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5741 :ISA BIO-AMOUNT :MEASURED-ITEM MV5737 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5737 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
634: "Does TNG regulate ERK?"

                    SOURCE-START
e8    REGULATE      1 "Does TNG regulate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNG regulate ERK?" (:VAR MV5749 :ISA POLAR-QUESTION :STATEMENT MV5748)
 (:VAR MV5748 :ISA REGULATE :AGENT MV5747 :OBJECT MV5746 :RAW-TEXT "regulate")
 (:VAR MV5747 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV5746 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5757 :ISA POLAR-QUESTION :STATEMENT MV5756)
 (:VAR MV5756 :ISA REGULATE :AGENT MV5751 :OBJECT MV5755 :RAW-TEXT "regulate")
 (:VAR MV5751 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5755 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5754 :RAW-TEXT
  "gene")
 (:VAR MV5754 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5759 :ISA BE :SUBJECT MV5758 :PREDICATE MV5761 :PRESENT "PRESENT")
 (:VAR MV5758 :ISA WHAT)
 (:VAR MV5761 :ISA PATHWAY :PATHWAYCOMPONENT MV5766 :HAS-DETERMINER "THE"
  :RAW-TEXT "pathways")
 (:VAR MV5766 :ISA COLLECTION :RAW-TEXT "TNG and ERK" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV5763 MV5765))
 (:VAR MV5763 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV5765 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5769 :ISA BE :SUBJECT MV5768 :PREDICATE MV5771 :PRESENT "PRESENT")
 (:VAR MV5768 :ISA WHAT)
 (:VAR MV5771 :ISA PATHWAY :PATHWAYCOMPONENT MV5776 :HAS-DETERMINER "THE"
  :RAW-TEXT "pathways")
 (:VAR MV5776 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV5773 MV5775))
 (:VAR MV5773 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5775 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5784 :ISA POLAR-QUESTION :STATEMENT MV5783)
 (:VAR MV5783 :ISA REGULATE :AGENT MV5779 :OBJECT MV5782 :RAW-TEXT "regulate")
 (:VAR MV5779 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
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
639: "Does NFkappaB regulate the ERK gene?"

                    SOURCE-START
e14   REGULATE      1 "Does NFkappaB regulate the ERK gene" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate the ERK gene?"
 (:VAR MV5793 :ISA POLAR-QUESTION :STATEMENT MV5792)
 (:VAR MV5792 :ISA REGULATE :AGENT MV5786 :OBJECT MV5791 :RAW-TEXT "regulate")
 (:VAR MV5786 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5791 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5790 :RAW-TEXT
  "gene")
 (:VAR MV5790 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5806 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5795 :VALUE MV5805 :PREP
  "BETWEEN" :PREDICATE MV5796)
 (:VAR MV5795 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5805 :ISA PATHWAY :PATHWAYCOMPONENT MV5802 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "pathways")
 (:VAR MV5802 :ISA COLLECTION :RAW-TEXT "NFkappaB and ERK" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV5799 MV5801))
 (:VAR MV5799 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5801 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5796 :ISA EXIST :PRESENT "PRESENT"))

___________________
641: "How does NFkappaB affect ERK?"

                    SOURCE-START
e8    AFFECT        1 "How does NFkappaB affect ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does NFkappaB affect ERK?"
 (:VAR MV5812 :ISA AFFECT :MANNER MV5808 :AGENT MV5810 :OBJECT MV5813 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5808 :ISA HOW)
 (:VAR MV5810 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5813 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5815 :ISA BIO-ACTIVATE :AGENT MV5814 :OBJECT MV5816 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5814 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5816 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5818 :ISA BIO-ACTIVATE :AGENT MV5817 :OBJECT MV5819 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5817 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199")
 (:VAR MV5819 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN"))

___________________
644: "What are the paths between TNF and ERK?"

                    SOURCE-START
e14   BE            1 "What are the paths between TNF and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and ERK?"
 (:VAR MV5821 :ISA BE :SUBJECT MV5820 :PREDICATE MV5823 :PRESENT "PRESENT")
 (:VAR MV5820 :ISA WHAT)
 (:VAR MV5823 :ISA PATH :ENDPOINTS MV5828 :HAS-DETERMINER "THE")
 (:VAR MV5828 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV5825 MV5827))
 (:VAR MV5825 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5827 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
("Does TNF regulate ERK?" (:VAR MV5835 :ISA POLAR-QUESTION :STATEMENT MV5834)
 (:VAR MV5834 :ISA REGULATE :AGENT MV5831 :OBJECT MV5833 :RAW-TEXT "regulate")
 (:VAR MV5831 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5833 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5840 :ISA AFFECT :MANNER MV5838 :AGENT MV5836 :OBJECT MV5837 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5838 :ISA HOW)
 (:VAR MV5836 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5837 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
647: "TNF activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "TNF activates ERK" 4
                    END-OF-SOURCE
("TNF activates ERK"
 (:VAR MV5842 :ISA BIO-ACTIVATE :AGENT MV5841 :OBJECT MV5843 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5841 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5843 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5847 :ISA DECREASE :AGENT MV5846 :AFFECTED-PROCESS-OR-OBJECT MV5849
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5846 :ISA PROTEIN-FAMILY :PREDICATION MV5845 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5845 :ISA ACTIVE)
 (:VAR MV5849 :ISA BIO-AMOUNT :MEASURED-ITEM MV5844 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5844 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
649: "What are the common upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e19   BE            1 "What are the common upstreams of CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of CXCL8 and CXCL10?"
 (:VAR MV5855 :ISA BE :SUBJECT MV5854 :PREDICATE MV5858 :PRESENT "PRESENT")
 (:VAR MV5854 :ISA WHAT)
 (:VAR MV5858 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV5861 :HAS-DETERMINER
  "THE" :PREDICATION MV5857 :RAW-TEXT "upstreams")
 (:VAR MV5861 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5852 MV5853))
 (:VAR MV5852 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5853 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV5857 :ISA COMMON))

___________________
650: "How does CXCL8 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does CXCL8 affect CXCL8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does CXCL8 affect CXCL8?"
 (:VAR MV5867 :ISA AFFECT :MANNER MV5865 :AGENT MV5863 :OBJECT MV5864 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5865 :ISA HOW)
 (:VAR MV5863 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5864 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
651: "Does CXCL8 regulate CXCL10?"

                    SOURCE-START
e10   REGULATE      1 "Does CXCL8 regulate CXCL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate CXCL10?"
 (:VAR MV5873 :ISA POLAR-QUESTION :STATEMENT MV5872)
 (:VAR MV5872 :ISA REGULATE :AGENT MV5868 :OBJECT MV5869 :RAW-TEXT "regulate")
 (:VAR MV5868 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5869 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
652: "Does CXCL8 regulate the CXCL10 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does CXCL8 regulate the CXCL10 gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate the CXCL10 gene?"
 (:VAR MV5881 :ISA POLAR-QUESTION :STATEMENT MV5880)
 (:VAR MV5880 :ISA REGULATE :AGENT MV5874 :OBJECT MV5879 :RAW-TEXT "regulate")
 (:VAR MV5874 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5879 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5875 :RAW-TEXT
  "gene")
 (:VAR MV5875 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
653: "How does MAP3k7 affect CXCL10?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP3k7 affect CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP3k7 affect CXCL10?"
 (:VAR MV5886 :ISA AFFECT :MANNER MV5884 :AGENT MV5882 :OBJECT MV5883 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5884 :ISA HOW)
 (:VAR MV5882 :ISA PROTEIN :RAW-TEXT "MAP3k7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5883 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
654: "What are the paths between TNF and CXCL10?"

                    SOURCE-START
e15   BE            1 "What are the paths between TNF and CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and CXCL10?"
 (:VAR MV5889 :ISA BE :SUBJECT MV5888 :PREDICATE MV5891 :PRESENT "PRESENT")
 (:VAR MV5888 :ISA WHAT)
 (:VAR MV5891 :ISA PATH :ENDPOINTS MV5895 :HAS-DETERMINER "THE")
 (:VAR MV5895 :ISA COLLECTION :RAW-TEXT "TNF and CXCL10" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV5893 MV5887))
 (:VAR MV5893 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5887 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
655: "Does ERK regulate the expression of CXCL10?"

                    SOURCE-START
e17   REGULATE      1 "Does ERK regulate the expression of CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the expression of CXCL10?"
 (:VAR MV5906 :ISA POLAR-QUESTION :STATEMENT MV5904)
 (:VAR MV5904 :ISA REGULATE :AGENT MV5899 :AFFECTED-PROCESS MV5902 :RAW-TEXT
  "regulate")
 (:VAR MV5899 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5902 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5897 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV5897 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
656: "active ERK decreases the expression of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the expression of CXCL10" 9
                    END-OF-SOURCE
("active ERK decreases the expression of CXCL10"
 (:VAR MV5910 :ISA DECREASE :AGENT MV5909 :AFFECTED-PROCESS MV5912 :PRESENT
  "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5909 :ISA PROTEIN-FAMILY :PREDICATION MV5908 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5908 :ISA ACTIVE)
 (:VAR MV5912 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5907 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV5907 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
657: "active ERK decreases the amount of CXCL8"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the amount of CXCL8" 9
                    END-OF-SOURCE
("active ERK decreases the amount of CXCL8"
 (:VAR MV5918 :ISA DECREASE :AGENT MV5917 :AFFECTED-PROCESS-OR-OBJECT MV5920
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5917 :ISA PROTEIN-FAMILY :PREDICATION MV5916 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5916 :ISA ACTIVE)
 (:VAR MV5920 :ISA BIO-AMOUNT :MEASURED-ITEM MV5915 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5915 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
658: "Active ERK decreases the amount of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "Active ERK decreases the amount of CXCL10" 9
                    END-OF-SOURCE
("Active ERK decreases the amount of CXCL10"
 (:VAR MV5926 :ISA DECREASE :AGENT MV5925 :AFFECTED-PROCESS-OR-OBJECT MV5928
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5925 :ISA PROTEIN-FAMILY :PREDICATION MV5924 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5924 :ISA ACTIVE)
 (:VAR MV5928 :ISA BIO-AMOUNT :MEASURED-ITEM MV5923 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5923 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
659: "NG25 inhibits the activity of MAP3K7"

                    SOURCE-START
e16   INHIBIT       1 "NG25 inhibits the activity of MAP3K7" 11
                    END-OF-SOURCE
("NG25 inhibits the activity of MAP3K7"
 (:VAR MV5934 :ISA INHIBIT :AGENT MV5938 :AFFECTED-PROCESS MV5936 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV5938 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV5936 :ISA BIO-ACTIVITY :PARTICIPANT MV5931 :HAS-DETERMINER "THE"
  :RAW-TEXT "activity")
 (:VAR MV5931 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN"))

___________________
660: "Does NG25 decrease the CXCL8 in the model?"

                    SOURCE-START
e22   DECREASE      1 "Does NG25 decrease the CXCL8 in the model" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease the CXCL8 in the model?"
 (:VAR MV5951 :ISA POLAR-QUESTION :STATEMENT MV5949)
 (:VAR MV5949 :ISA DECREASE :AGENT MV5940 :OBJECT MV5941 :RAW-TEXT "decrease")
 (:VAR MV5940 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV5941 :ISA PROTEIN :INFO-CONTEXT MV5948 :HAS-DETERMINER "THE" :RAW-TEXT
  "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5948 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
661: "Does NG25 decrease CXCL10 in the model?"

                    SOURCE-START
e19   DECREASE      1 "Does NG25 decrease CXCL10 in the model" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease CXCL10 in the model?"
 (:VAR MV5962 :ISA POLAR-QUESTION :STATEMENT MV5960)
 (:VAR MV5960 :ISA DECREASE :AGENT MV5952 :OBJECT MV5953 :RAW-TEXT "decrease")
 (:VAR MV5952 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV5953 :ISA PROTEIN :INFO-CONTEXT MV5959 :RAW-TEXT "CXCL10" :UID
  "UP:P02778" :NAME "CXL10_HUMAN")
 (:VAR MV5959 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
662: "TNF activates NFkappaB"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "TNF activates NFkappaB" 4
                    END-OF-SOURCE
("TNF activates NFkappaB"
 (:VAR MV5964 :ISA BIO-ACTIVATE :AGENT MV5963 :OBJECT MV5965 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5963 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5965 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
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
 (:VAR MV5971 :ISA WANT :AGENT MV5968 :THEME MV5982 :PRESENT "PRESENT")
 (:VAR MV5968 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV5982 :ISA FIND-OUT :AGENT MV5968 :STATEMENT MV5979)
 (:VAR MV5968 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV5979 :ISA WH-QUESTION :STATEMENT MV5978 :VAR NIL :WH HOW)
 (:VAR MV5978 :ISA DECREASE :AGENT MV5977 :OBJECT MV5967 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV5977 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tasocitinib" :UID
  "NCIT:C95800")
 (:VAR MV5967 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
664: "I want to find out how Selumetinib decreases FOS in BT20 cells"

                    SOURCE-START
e31   WANT          1 "I want to find out how Selumetinib decreases FOS in BT20 cells" 14
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in BT20 cells"
 (:VAR MV5986 :ISA WANT :AGENT MV5983 :THEME MV6005 :PRESENT "PRESENT")
 (:VAR MV5983 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6005 :ISA FIND-OUT :AGENT MV5983 :STATEMENT MV6002)
 (:VAR MV5983 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6002 :ISA WH-QUESTION :STATEMENT MV5993 :VAR NIL :WH HOW)
 (:VAR MV5993 :ISA DECREASE :AGENT MV5992 :OBJECT MV5994 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV5992 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV5994 :ISA PROTEIN :CELL-TYPE MV5999 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV5999 :ISA CELL-TYPE :MODIFIER MV6000)
 (:VAR MV6000 :ISA BIO-ENTITY :NAME "BT20"))

___________________
665: "I want to find out how ERBB3 activates JUN in SKBR3 cells"

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells"
 (:VAR MV6011 :ISA WANT :AGENT MV6008 :THEME MV6025 :PRESENT "PRESENT")
 (:VAR MV6008 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6025 :ISA FIND-OUT :AGENT MV6008 :STATEMENT MV6022)
 (:VAR MV6008 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6022 :ISA WH-QUESTION :STATEMENT MV6017 :VAR NIL :WH HOW)
 (:VAR MV6017 :ISA BIO-ACTIVATE :AGENT MV6006 :OBJECT MV6018 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6006 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME
  "ERBB3_HUMAN")
 (:VAR MV6018 :ISA PROTEIN :CELL-TYPE MV6020 :RAW-TEXT "JUN" :UID "UP:P05412"
  :NAME "JUN_HUMAN")
 (:VAR MV6020 :ISA CELL-TYPE :CELL-LINE MV6007)
 (:VAR MV6007 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
666: "Does MEK phosphorylate ERK?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "Does MEK phosphorylate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MEK phosphorylate ERK?"
 (:VAR MV6031 :ISA POLAR-QUESTION :STATEMENT MV6030)
 (:VAR MV6030 :ISA PHOSPHORYLATE :AGENT MV6027 :SUBSTRATE MV6029 :RAW-TEXT
  "phosphorylate")
 (:VAR MV6027 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6029 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV6039 :ISA POLAR-QUESTION :STATEMENT MV6038)
 (:VAR MV6038 :ISA INHIBIT :AGENT MV6032 :OBJECT MV6037 :RAW-TEXT "inhibit")
 (:VAR MV6032 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6037 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6033 :RAW-TEXT
  "gene")
 (:VAR MV6033 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
668: "Does STAT3 stimulate the c-fos gene?"

                    SOURCE-START
e15   STIMULATE     1 "Does STAT3 stimulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 stimulate the c-fos gene?"
 (:VAR MV6047 :ISA POLAR-QUESTION :STATEMENT MV6046)
 (:VAR MV6046 :ISA STIMULATE :AGENT MV6040 :OBJECT MV6045 :RAW-TEXT
  "stimulate")
 (:VAR MV6040 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6045 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6041 :RAW-TEXT
  "gene")
 (:VAR MV6041 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
669: "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."

                    SOURCE-START
e33   WANT          1 "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells" 16
                    PERIOD
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
 (:VAR MV6051 :ISA WANT :AGENT MV6048 :THEME MV6069 :PRESENT "PRESENT")
 (:VAR MV6048 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6069 :ISA FIND-OUT :AGENT MV6048 :STATEMENT MV6066)
 (:VAR MV6048 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6066 :ISA WH-QUESTION :STATEMENT MV6058 :VAR NIL :WH HOW)
 (:VAR MV6058 :ISA DECREASE :AGENT MV6057 :OBJECT MV6059 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6057 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV6059 :ISA PROTEIN :CELL-TYPE MV6063 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV6063 :ISA CELL-TYPE :MODIFIER MV6064 :CONTEXT-OR-ASSOCIATED-DISEASE
  MV6062)
 (:VAR MV6064 :ISA BIO-ENTITY :NAME "SKMEL-133") (:VAR MV6062 :ISA MELANOMA))

___________________
670: "Is ERK a transcription factor?"

                    SOURCE-START
e9    BE            1 "Is ERK a transcription factor" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK a transcription factor?"
 (:VAR MV6074 :ISA POLAR-QUESTION :STATEMENT MV6071)
 (:VAR MV6071 :ISA BE :SUBJECT MV6072 :PREDICATE MV6070)
 (:VAR MV6072 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6070 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
671: "List all the genes regulated by elk1 and srf."

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    PERIOD
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf."
 (:VAR MV6076 :ISA LIST :THEME MV6079 :PRESENT "PRESENT")
 (:VAR MV6079 :ISA GENE :PREDICATION MV6080 :QUANTIFIER MV6077 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6080 :ISA REGULATE :OBJECT MV6079 :AGENT MV6084 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6084 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6075 MV6083))
 (:VAR MV6075 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6083 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6077 :ISA ALL :WORD "all"))

___________________
672: "List some of the genes regulated by elk1 and srf."

                    SOURCE-START
e20   LIST          1 "List some of the genes regulated by elk1 and srf" 12
                    PERIOD
                    END-OF-SOURCE
("List some of the genes regulated by elk1 and srf."
 (:VAR MV6087 :ISA LIST :THEME MV6091 :PRESENT "PRESENT")
 (:VAR MV6091 :ISA GENE :PREDICATION MV6092 :QUANTIFIER MV6088 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6092 :ISA REGULATE :OBJECT MV6091 :AGENT MV6096 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6096 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6086 MV6095))
 (:VAR MV6086 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6095 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6088 :ISA SOME :WORD "some"))

___________________
673: "Show me the  mutations of TP53 and BRAF in ovarian cancer."

                    SOURCE-START
e22   SHOW          1 "Show me the  mutations of TP53 and BRAF in ovarian cancer" 13
                    PERIOD
                    END-OF-SOURCE
("Show me the  mutations of TP53 and BRAF in ovarian cancer."
 (:VAR MV6102 :ISA SHOW :STATEMENT-OR-THEME MV6105 :BENEFICIARY MV6103 :PRESENT
  "PRESENT")
 (:VAR MV6105 :ISA MUTATION :OBJECT MV6110 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6110 :ISA COLLECTION :CONTEXT MV6101 :RAW-TEXT "TP53 and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV6100 MV6108))
 (:VAR MV6101 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6100 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6108 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6103 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
674: "What are the mutations of TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutations of TP53 and BRAF in ovarian cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of TP53 and BRAF in ovarian cancer?"
 (:VAR MV6116 :ISA BE :SUBJECT MV6115 :PREDICATE MV6118 :PRESENT "PRESENT")
 (:VAR MV6115 :ISA WHAT)
 (:VAR MV6118 :ISA MUTATION :OBJECT MV6123 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6123 :ISA COLLECTION :CONTEXT MV6114 :RAW-TEXT "TP53 and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV6113 MV6121))
 (:VAR MV6114 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6113 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6121 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
675: "What are the mutually exclusive genes with CDH1 for breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with CDH1 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with CDH1 for breast cancer?"
 (:VAR MV6130 :ISA BE :SUBJECT MV6129 :PREDICATE MV6137 :PRESENT "PRESENT")
 (:VAR MV6129 :ISA WHAT)
 (:VAR MV6137 :ISA GENE :DISEASE MV6128 :HAS-DETERMINER "THE" :PREDICATION
  MV6126 :RAW-TEXT "genes")
 (:VAR MV6128 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV6126 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6127)
 (:VAR MV6127 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN"))

___________________
676: "What are the mutually exclusive genes with CDH1 in breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with CDH1 in breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with CDH1 in breast cancer?"
 (:VAR MV6142 :ISA BE :SUBJECT MV6141 :PREDICATE MV6149 :PRESENT "PRESENT")
 (:VAR MV6141 :ISA WHAT)
 (:VAR MV6149 :ISA GENE :HAS-DETERMINER "THE" :PREDICATION MV6138 :RAW-TEXT
  "genes")
 (:VAR MV6138 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6139)
 (:VAR MV6139 :ISA PROTEIN :CONTEXT MV6140 :RAW-TEXT "CDH1" :UID "UP:P12830"
  :NAME "CADH1_HUMAN")
 (:VAR MV6140 :ISA CANCER :NAME "breast cancer" :UID "TS-0591"))

___________________
677: "What downregulates it?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates it" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates it?"
 (:VAR MV6151 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV6150
  :AFFECTED-PROCESS-OR-OBJECT MV6152 :PRESENT "PRESENT" :RAW-TEXT
  "downregulates")
 (:VAR MV6150 :ISA WHAT) (:VAR MV6152 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
678: "What genes have strong evidence of being regulated by mir-122-5p?"

                    SOURCE-START
e21   HAVE          1 "What genes have strong evidence of being regulated by mir-122-5p" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes have strong evidence of being regulated by mir-122-5p?"
 (:VAR MV6156 :ISA HAVE :POSSESSOR MV6155 :THING-POSSESSED MV6158 :PRESENT
  "PRESENT")
 (:VAR MV6155 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6158 :ISA EVIDENCE :FACT MV6161 :PREDICATION MV6157)
 (:VAR MV6161 :ISA REGULATE :AGENT MV6153 :PROGRESSIVE MV6160 :RAW-TEXT
  "regulated")
 (:VAR MV6153 :ISA MICRO-RNA :RAW-TEXT "mir-122-5p" :NAME "microRNA 122-5p"
  :UID "MIMAT0000421")
 (:VAR MV6160 :ISA BE) (:VAR MV6157 :ISA STRONG))

___________________
679: "What increases the amount of myc"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    END-OF-SOURCE
("What increases the amount of myc"
 (:VAR MV6167 :ISA INCREASE :AGENT-OR-CAUSE MV6165 :AFFECTED-PROCESS-OR-OBJECT
  MV6169 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV6165 :ISA WHAT)
 (:VAR MV6169 :ISA BIO-AMOUNT :MEASURED-ITEM MV6171 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV6171 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
680: "What inhibits fzd8?"

                    SOURCE-START
e5    INHIBIT       1 "What inhibits fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits fzd8?"
 (:VAR MV6175 :ISA INHIBIT :AGENT-OR-CAUSE MV6174 :OBJECT MV6173 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV6174 :ISA WHAT)
 (:VAR MV6173 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
681: "What is the most likely cellular location of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e26   BE            1 "What is the most likely cellular location of AKT1, BRAF and MAPK1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
 (:VAR MV6179 :ISA BE :SUBJECT MV6178 :PREDICATE MV6191 :PRESENT "PRESENT")
 (:VAR MV6178 :ISA WHAT)
 (:VAR MV6191 :ISA QUALITY-PREDICATE :ITEM MV6189 :ATTRIBUTE MV6185)
 (:VAR MV6189 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6176 MV6187 MV6177))
 (:VAR MV6176 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6187 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6177 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6185 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6183
  :MODIFIER MV6184)
 (:VAR MV6183 :ISA LIKELY :COMPARATIVE MV6181)
 (:VAR MV6181 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6184 :ISA CELLULAR :NAME "cellular"))

___________________
682: "What is the most likely cellular location of AKT1?"

                    SOURCE-START
e20   BE            1 "What is the most likely cellular location of AKT1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1?"
 (:VAR MV6194 :ISA BE :SUBJECT MV6193 :PREDICATE MV6203 :PRESENT "PRESENT")
 (:VAR MV6193 :ISA WHAT)
 (:VAR MV6203 :ISA QUALITY-PREDICATE :ITEM MV6192 :ATTRIBUTE MV6200)
 (:VAR MV6192 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6200 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6198
  :MODIFIER MV6199)
 (:VAR MV6198 :ISA LIKELY :COMPARATIVE MV6196)
 (:VAR MV6196 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6199 :ISA CELLULAR :NAME "cellular"))

___________________
683: "What is the mutation significance of TP53 in lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in lung cancer?"
 (:VAR MV6207 :ISA BE :SUBJECT MV6206 :PREDICATE MV6210 :PRESENT "PRESENT")
 (:VAR MV6206 :ISA WHAT)
 (:VAR MV6210 :ISA SIGNIFICANCE :AGENT MV6204 :HAS-DETERMINER "THE" :MODIFIER
  MV6209)
 (:VAR MV6204 :ISA PROTEIN :CONTEXT MV6205 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV6205 :ISA CANCER :NAME "lung cancer" :UID "TS-0571")
 (:VAR MV6209 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
684: "Which of those are regulated by tp53?"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by tp53" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are regulated by tp53?"
 (:VAR MV6222 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6218 :AGENT MV6215
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV6218 :ISA THOSE :QUANTIFIER MV6216 :WORD "those")
 (:VAR MV6216 :ISA WHICH)
 (:VAR MV6215 :ISA PROTEIN :RAW-TEXT "tp53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
685: "Which of those genes are in the MAPK signaling pathway?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Which of those genes are in the MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those genes are in the MAPK signaling pathway?"
 (:VAR MV6238 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6229 :VALUE MV6237 :PREP
  "IN" :PREDICATE MV6230)
 (:VAR MV6229 :ISA GENE :QUANTIFIER MV6226 :HAS-DETERMINER "THOSE" :RAW-TEXT
  "genes")
 (:VAR MV6226 :ISA WHICH)
 (:VAR MV6237 :ISA GENE :CONTEXT MV6225 :QUANTIFIER MV6226 :HAS-DETERMINER
  "THOSE" :RAW-TEXT "genes")
 (:VAR MV6225 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV6233
  :RAW-TEXT "signaling pathway")
 (:VAR MV6233 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV6226 :ISA WHICH) (:VAR MV6230 :ISA BE :PRESENT "PRESENT"))

___________________
686: "Which of these are in the il-12 pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which of these are in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in the il-12 pathway?"
 (:VAR MV6249 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6243 :VALUE MV6247 :PREP
  MV6245 :PREDICATE MV6244)
 (:VAR MV6243 :ISA THESE :QUANTIFIER MV6241 :WORD "these")
 (:VAR MV6241 :ISA WHICH)
 (:VAR MV6247 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV6240 :RAW-TEXT
  "pathway")
 (:VAR MV6240 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV6245 :ISA IN :WORD "in") (:VAR MV6244 :ISA BE :PRESENT "PRESENT"))

___________________
687: "Which of them are expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of them are expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of them are expressed in liver?"
 (:VAR MV6258 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV6253 :ORGAN MV6257
  :PRESENT "PRESENT" :RAW-TEXT "expressed")
 (:VAR MV6253 :ISA PRONOUN/PLURAL :QUANTIFIER MV6251 :WORD "them")
 (:VAR MV6251 :ISA WHICH) (:VAR MV6257 :ISA LIVER))

___________________
688: "Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"

                    SOURCE-START
e23   REGULATE      1 "Which of them are most frequently regulated by miR-335-5p and miR-155-5p" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
 (:VAR MV6273 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6265 :AGENT MV6272
  :PRESENT "PRESENT" :SUPERLATIVE MV6267 :ADVERB MV6268 :RAW-TEXT "regulated")
 (:VAR MV6265 :ISA PRONOUN/PLURAL :QUANTIFIER MV6263 :WORD "them")
 (:VAR MV6263 :ISA WHICH)
 (:VAR MV6272 :ISA COLLECTION :RAW-TEXT "miR-335-5p and miR-155-5p" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV6261 MV6262))
 (:VAR MV6261 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV6262 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV6267 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6268 :ISA FREQUENTLY :NAME "frequently"))

___________________
689: "What transcription factors target SMURF2?"

                    SOURCE-START
e9    TARGET        1 "What transcription factors target SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors target SMURF2?"
 (:VAR MV6280 :ISA TARGET :AGENT MV6276 :OBJECT MV6277 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV6276 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV6277 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
690: "Which of those target frizzled8?"

                    SOURCE-START
e11   PROTEIN       1 "Which of those target frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those target frizzled8?"
 (:VAR MV6281 :ISA PROTEIN :QUANTIFIER MV6282 :HAS-DETERMINER "THOSE" :MODIFIER
  MV6285 :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV6282 :ISA WHICH) (:VAR MV6285 :ISA TARGET-PROTEIN :RAW-TEXT "target"))

___________________
691: "What is Selumetinib?"

                    SOURCE-START
e4    BE            1 "What is Selumetinib" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is Selumetinib?"
 (:VAR MV6289 :ISA BE :SUBJECT MV6288 :PREDICATE MV6290 :PRESENT "PRESENT")
 (:VAR MV6288 :ISA WHAT)
 (:VAR MV6290 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
692: "What is MAPK3?"

                    SOURCE-START
e5    BE            1 "What is MAPK3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is MAPK3?"
 (:VAR MV6293 :ISA BE :SUBJECT MV6292 :PREDICATE MV6291 :PRESENT "PRESENT")
 (:VAR MV6292 :ISA WHAT)
 (:VAR MV6291 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
693: "What does it do?"

                    SOURCE-START
e6    DO            1 "What does it do" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it do?" (:VAR MV6299 :ISA DO :PATIENT MV6294 :PRESENT "PRESENT")
 (:VAR MV6294 :ISA WHAT))

___________________
694: "Is there an inhibitor of ERK1?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Is there an inhibitor of ERK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an inhibitor of ERK1?"
 (:VAR MV6307 :ISA THERE-EXISTS :VALUE MV6305 :PREDICATE MV6302)
 (:VAR MV6305 :ISA INHIBITOR :PROTEIN MV6300 :HAS-DETERMINER "AN" :RAW-TEXT
  "inhibitor")
 (:VAR MV6300 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN")
 (:VAR MV6302 :ISA SYNTACTIC-THERE))

___________________
695: "Name some drugs that inhibit AKT1."

                    SOURCE-START
e15   NAME-SOMETHING  1 "Name some drugs that inhibit AKT1" 8
                    PERIOD
                    END-OF-SOURCE
("Name some drugs that inhibit AKT1."
 (:VAR MV6310 :ISA NAME-SOMETHING :PATIENT MV6314 :PRESENT "PRESENT")
 (:VAR MV6314 :ISA DRUG :PREDICATION MV6316 :QUANTIFIER MV6313 :RAW-TEXT
  "drugs")
 (:VAR MV6316 :ISA INHIBIT :AGENT MV6314 :THAT-REL T :OBJECT MV6309 :PRESENT
  "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV6309 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6313 :ISA SOME :WORD "some"))

___________________
696: "Are there any Map2K1 inhibitors?"

                    SOURCE-START
e15   THERE-EXISTS  1 "Are there any Map2K1 inhibitors" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any Map2K1 inhibitors?"
 (:VAR MV6327 :ISA THERE-EXISTS :VALUE MV6325 :PREDICATE MV6319)
 (:VAR MV6325 :ISA INHIBITOR :QUANTIFIER MV6321 :PROTEIN MV6326 :RAW-TEXT
  "inhibitors")
 (:VAR MV6321 :ISA ANY :WORD "any")
 (:VAR MV6326 :ISA PROTEIN :RAW-TEXT "Map2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV6319 :ISA SYNTACTIC-THERE))

___________________
697: "Are there targets of Selumetinib?"

                    SOURCE-START
e12   THERE-EXISTS  1 "Are there targets of Selumetinib" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there targets of Selumetinib?"
 (:VAR MV6335 :ISA THERE-EXISTS :VALUE MV6331 :PREDICATE MV6329)
 (:VAR MV6331 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV6334 :RAW-TEXT "targets")
 (:VAR MV6334 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV6329 :ISA SYNTACTIC-THERE))

___________________
698: "What does Selumetinib inhibit?"

                    SOURCE-START
e5    INHIBIT       1 "What does Selumetinib inhibit" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib inhibit?"
 (:VAR MV6340 :ISA INHIBIT :OBJECT MV6337 :AGENT MV6339 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV6337 :ISA WHAT)
 (:VAR MV6339 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
699: "What does Selumetinib target?"

                    SOURCE-START
e6    TARGET        1 "What does Selumetinib target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib target?"
 (:VAR MV6345 :ISA TARGET :OBJECT MV6341 :AGENT MV6343 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV6341 :ISA WHAT)
 (:VAR MV6343 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
700: "Does Vemurafenib target BRAF?"

                    SOURCE-START
e9    TARGET        1 "Does Vemurafenib target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib target BRAF?"
 (:VAR MV6352 :ISA POLAR-QUESTION :STATEMENT MV6351)
 (:VAR MV6351 :ISA TARGET :AGENT MV6347 :OBJECT MV6350 :RAW-TEXT "target")
 (:VAR MV6347 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV6350 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
701: "What are some targets for treating pancreatic cancer?"

                    SOURCE-START
e15   BE            1 "What are some targets for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for treating pancreatic cancer?"
 (:VAR MV6355 :ISA BE :SUBJECT MV6354 :PREDICATE MV6357 :PRESENT "PRESENT")
 (:VAR MV6354 :ISA WHAT)
 (:VAR MV6357 :ISA TARGET-PROTEIN :QUANTIFIER MV6356 :TREATMENT MV6360
  :RAW-TEXT "targets")
 (:VAR MV6356 :ISA SOME :WORD "some")
 (:VAR MV6360 :ISA TREATMENT :DISEASE MV6353 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "treating")
 (:VAR MV6353 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
702: "What are some targets for pancreatic cancer?"

                    SOURCE-START
e13   BE            1 "What are some targets for pancreatic cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for pancreatic cancer?"
 (:VAR MV6364 :ISA BE :SUBJECT MV6363 :PREDICATE MV6366 :PRESENT "PRESENT")
 (:VAR MV6363 :ISA WHAT)
 (:VAR MV6366 :ISA TARGET-PROTEIN :QUANTIFIER MV6365 :DISEASE MV6362 :RAW-TEXT
  "targets")
 (:VAR MV6365 :ISA SOME :WORD "some")
 (:VAR MV6362 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
703: "What targets could lead to the development of pancreatic cancer?"

                    SOURCE-START
e21   LEAD          1 "What targets could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What targets could lead to the development of pancreatic cancer?"
 (:VAR MV6375 :ISA LEAD :AGENT MV6372 :THEME MV6378 :MODAL MV6374 :RAW-TEXT
  "lead")
 (:VAR MV6372 :ISA TARGET-PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "targets")
 (:VAR MV6378 :ISA DEVELOPMENT :DISEASE MV6370 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV6370 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6374 :ISA COULD))

___________________
704: "What proteins could lead to the development of pancreatic cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins could lead to the development of pancreatic cancer?"
 (:VAR MV6386 :ISA LEAD :AGENT MV6384 :THEME MV6389 :MODAL MV6385 :RAW-TEXT
  "lead")
 (:VAR MV6384 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV6389 :ISA DEVELOPMENT :DISEASE MV6382 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV6382 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6385 :ISA COULD))

___________________
705: "What mutated genes could lead to pancreatic cancer?"

                    SOURCE-START
e15   LEAD          1 "What mutated genes could lead to pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What mutated genes could lead to pancreatic cancer?"
 (:VAR MV6398 :ISA LEAD :AGENT MV6396 :THEME MV6393 :MODAL MV6397 :RAW-TEXT
  "lead")
 (:VAR MV6396 :ISA GENE :HAS-DETERMINER "WHAT" :PREDICATION MV6395 :RAW-TEXT
  "genes")
 (:VAR MV6395 :ISA MUTATION :OBJECT MV6396 :RAW-TEXT "mutated")
 (:VAR MV6393 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6397 :ISA COULD))

___________________
706: "What is the top gene mutation that leads to pancreatic cancer?"

                    SOURCE-START
e23   BE            1 "What is the top gene mutation that leads to pancreatic cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the top gene mutation that leads to pancreatic cancer?"
 (:VAR MV6403 :ISA BE :SUBJECT MV6402 :PREDICATE MV6407 :PRESENT "PRESENT")
 (:VAR MV6402 :ISA WHAT)
 (:VAR MV6407 :ISA MUTATION :OBJECT MV6406 :PREDICATION MV6409 :HAS-DETERMINER
  "THE" :MODIFIER MV6405 :AGENT-OR-OBJECT MV6406 :RAW-TEXT "mutation")
 (:VAR MV6406 :ISA GENE :RAW-TEXT "gene")
 (:VAR MV6409 :ISA LEAD :AGENT MV6407 :THAT-REL T :THEME MV6401 :PRESENT
  "PRESENT" :RAW-TEXT "leads")
 (:VAR MV6401 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6405 :ISA TOP-QUA-LOCATION) (:VAR MV6406 :ISA GENE :RAW-TEXT "gene"))

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
 (:VAR MV6439 :ISA BIO-USE :PATIENT MV6429 :MODAL MV6430 :AGENT MV6431 :THEME
  MV6438 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV6429 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV6430 :ISA COULD) (:VAR MV6431 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6438 :ISA TREATMENT :DISEASE MV6427 :RAW-TEXT "treat")
 (:VAR MV6427 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
709: "What are some drugs for treating pancreatic cancer?"

                    SOURCE-START
e14   BE            1 "What are some drugs for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs for treating pancreatic cancer?"
 (:VAR MV6442 :ISA BE :SUBJECT MV6441 :PREDICATE MV6444 :PRESENT "PRESENT")
 (:VAR MV6441 :ISA WHAT)
 (:VAR MV6444 :ISA DRUG :TREATMENT MV6446 :QUANTIFIER MV6443 :RAW-TEXT "drugs")
 (:VAR MV6446 :ISA TREATMENT :DISEASE MV6440 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "treating")
 (:VAR MV6440 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6443 :ISA SOME :WORD "some"))

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
("Does MEK act on ERK?" (:VAR MV6475 :ISA POLAR-QUESTION :STATEMENT MV6473)
 (:VAR MV6473 :ISA BIO-ACT :AGENT MV6469 :ACTED-ON MV6472 :RAW-TEXT "act")
 (:VAR MV6469 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6472 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV6480 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6477 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6477 :ISA BUILD :ARTIFACT MV6479 :PRESENT "PRESENT")
 (:VAR MV6479 :ISA MODEL :HAS-DETERMINER "A"))

___________________
714: "Mek activates MAPK3"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "Mek activates MAPK3" 5
                    END-OF-SOURCE
("Mek activates MAPK3"
 (:VAR MV6483 :ISA BIO-ACTIVATE :AGENT MV6482 :OBJECT MV6481 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6482 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6481 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
715: "HRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "HRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("HRAS activates RAF."
 (:VAR MV6485 :ISA BIO-ACTIVATE :AGENT MV6484 :OBJECT MV6486 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6484 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV6486 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
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
 (:VAR MV6487 :ISA REMOVE :OBJECT MV6494 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV6494 :ISA FACT :STATEMENT MV6492 :HAS-DETERMINER "THE")
 (:VAR MV6492 :ISA BIO-ACTIVATE :AGENT MV6491 :OBJECT MV6493 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6491 :ISA PROTEIN :RAW-TEXT "hras" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV6493 :ISA PROTEIN-FAMILY :RAW-TEXT "ras" :NAME "Ras" :COUNT 3
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
 (:VAR MV6506 :ISA POLAR-QUESTION :STATEMENT MV6497)
 (:VAR MV6497 :ISA TELL :AGENT MV6496 :THEME MV6505 :THEME MV6498 :MODAL "CAN")
 (:VAR MV6496 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV6505 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6499 :VALUE MV6503 :PREP
  MV6501 :PREDICATE MV6500)
 (:VAR MV6499 :ISA WHAT) (:VAR MV6503 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV6501 :ISA IN :WORD "in") (:VAR MV6500 :ISA BE :MODAL "CAN")
 (:VAR MV6498 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
718: "Summarize the model."

                    SOURCE-START
e5    SUMMARIZE     1 "Summarize the model" 4
                    PERIOD
                    END-OF-SOURCE
("Summarize the model."
 (:VAR MV6510 :ISA SUMMARIZE :STATEMENT MV6509 :PRESENT "PRESENT")
 (:VAR MV6509 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
719: "Summarize the current model."

                    SOURCE-START
e7    SUMMARIZE     1 "Summarize the current model" 5
                    PERIOD
                    END-OF-SOURCE
("Summarize the current model."
 (:VAR MV6515 :ISA SUMMARIZE :STATEMENT MV6514 :PRESENT "PRESENT")
 (:VAR MV6514 :ISA MODEL :HAS-DETERMINER "THE" :PREDICATION MV6513)
 (:VAR MV6513 :ISA CURRENT))

___________________
720: "What phosphorylates BRAF?"

                    SOURCE-START
e4    PHOSPHORYLATE 1 "What phosphorylates BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What phosphorylates BRAF?"
 (:VAR MV6517 :ISA PHOSPHORYLATE :AGENT-OR-CAUSE MV6516 :SUBSTRATE MV6518
  :PRESENT "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6516 :ISA WHAT)
 (:VAR MV6518 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
721: "Vemurafenib binds BRAF."

                    SOURCE-START
e4    BINDING       1 "Vemurafenib binds BRAF" 4
                    PERIOD
                    END-OF-SOURCE
("Vemurafenib binds BRAF."
 (:VAR MV6520 :ISA BINDING :BINDER MV6519 :DIRECT-BINDEE MV6521 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV6519 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV6521 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
722: "Phosphorylated MAP2K1 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated MAP2K1 is activated" 8
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAP2K1 is activated."
 (:VAR MV6526 :ISA BIO-ACTIVATE :OBJECT MV6522 :PRESENT "PRESENT" :RAW-TEXT
  "activated")
 (:VAR MV6522 :ISA PROTEIN :PREDICATION MV6523 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6523 :ISA PHOSPHORYLATE :SUBSTRATE MV6522 :RAW-TEXT "Phosphorylated"))

___________________
723: "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2" 18
                    PERIOD
                    END-OF-SOURCE
("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
 (:VAR MV6530 :ISA DEPHOSPHORYLATE :AGENT MV6527 :SUBSTRATE MV6528 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV6527 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME
  "PP2AA_HUMAN")
 (:VAR MV6528 :ISA PROTEIN :PREDICATION MV6536 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6536 :ISA BINDING :DIRECT-BINDEE MV6528 :THAT-REL T :BINDEE MV6529
  :PRESENT "PRESENT" :NEGATION MV6533 :RAW-TEXT "bound")
 (:VAR MV6529 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6533 :ISA NOT :WORD "not"))

___________________
724: "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."

                    SOURCE-START
e24   PHOSPHORYLATE 1 "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2" 19
                    PERIOD
                    END-OF-SOURCE
("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
 (:VAR MV6547 :ISA PHOSPHORYLATE :AGENT MV6538 :SUBSTRATE MV6540 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6538 :ISA PROTEIN :PREDICATION MV6548 :PREDICATION MV6541 :RAW-TEXT
  "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6548 :ISA BINDING :DIRECT-BINDEE MV6538 :THAT-REL T :BINDEE MV6539
  :PRESENT "PRESENT" :NEGATION MV6544 :RAW-TEXT "bound")
 (:VAR MV6539 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME
  "PP2AA_HUMAN")
 (:VAR MV6544 :ISA NOT :WORD "not") (:VAR MV6541 :ISA ACTIVE)
 (:VAR MV6540 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
725: "Phosphorylated ERK2 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated ERK2 is activated" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK2 is activated."
 (:VAR MV6554 :ISA BIO-ACTIVATE :OBJECT MV6550 :PRESENT "PRESENT" :RAW-TEXT
  "activated")
 (:VAR MV6550 :ISA PROTEIN :PREDICATION MV6551 :RAW-TEXT "ERK2" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6551 :ISA PHOSPHORYLATE :SUBSTRATE MV6550 :RAW-TEXT "Phosphorylated"))

___________________
726: "DUSP6 dephosphorylates ERK2 that is not bound to SOS1."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates ERK2 that is not bound to SOS1" 13
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
 (:VAR MV6558 :ISA DEPHOSPHORYLATE :AGENT MV6555 :SUBSTRATE MV6556 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV6555 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV6556 :ISA PROTEIN :PREDICATION MV6564 :RAW-TEXT "ERK2" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6564 :ISA BINDING :DIRECT-BINDEE MV6556 :THAT-REL T :BINDEE MV6557
  :PRESENT "PRESENT" :NEGATION MV6561 :RAW-TEXT "bound")
 (:VAR MV6557 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME
  "SOS1_HUMAN")
 (:VAR MV6561 :ISA NOT :WORD "not"))

___________________
727: "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."

                    SOURCE-START
e28   PHOSPHORYLATE 1 "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1" 16
                    PERIOD
                    END-OF-SOURCE
("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
 (:VAR MV6578 :ISA PHOSPHORYLATE :AGENT MV6567 :SUBSTRATE MV6566 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6567 :ISA PROTEIN :PREDICATION MV6581 :MUTATION MV6580 :RAW-TEXT
  "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV6581 :ISA BINDING :DIRECT-BINDEE MV6567 :THAT-REL T :BINDEE MV6577
  :PRESENT "PRESENT" :NEGATION MV6574 :RAW-TEXT "bound")
 (:VAR MV6577 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV6574 :ISA NOT :WORD "not")
 (:VAR MV6580 :ISA POINT-MUTATED-PROTEIN :POSITION MV6569 :NEW-AMINO-ACID
  MV6571 :ORIGINAL-AMINO-ACID MV6568)
 (:VAR MV6569 :ISA NUMBER :VALUE 600)
 (:VAR MV6571 :ISA AMINO-ACID :NAME "glutamic acid" :LETTER "E")
 (:VAR MV6568 :ISA AMINO-ACID :NAME "valine" :LETTER "V")
 (:VAR MV6566 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
728: "Phosphorylated MAPK1 is active."

                    SOURCE-START
e8    COPULAR-PREDICATION 1 "Phosphorylated MAPK1 is active" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAPK1 is active."
 (:VAR MV6587 :ISA COPULAR-PREDICATION :ITEM MV6583 :VALUE MV6586 :PREDICATE
  MV6585)
 (:VAR MV6583 :ISA PROTEIN :PREDICATION MV6584 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6584 :ISA PHOSPHORYLATE :SUBSTRATE MV6583 :RAW-TEXT "Phosphorylated")
 (:VAR MV6586 :ISA ACTIVE) (:VAR MV6585 :ISA BE :PRESENT "PRESENT"))

___________________
729: "PDK1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "PDK1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("PDK1 phosphorylates AKT1."
 (:VAR MV6590 :ISA PHOSPHORYLATE :AGENT MV6588 :SUBSTRATE MV6589 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6588 :ISA PROTEIN :RAW-TEXT "PDK1" :UID "UP:O15530" :NAME
  "PDPK1_HUMAN")
 (:VAR MV6589 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
730: "Let's move phosphorylated AKT1 to the top"

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 to the top" 11
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 to the top"
 (:VAR MV6599 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6593 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6593 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV6597 :THEME MV6592 :PRESENT
  "PRESENT")
 (:VAR MV6597 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV6592 :ISA PROTEIN :PREDICATION MV6594 :RAW-TEXT "AKT1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6594 :ISA PHOSPHORYLATE :SUBSTRATE MV6592 :RAW-TEXT "phosphorylated"))

___________________
731: "Let's move phosphorylated AKT1 on top"

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 on top" 10
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 on top"
 (:VAR MV6607 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6602 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6602 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV6605 :THEME
  MV6601 :PRESENT "PRESENT")
 (:VAR MV6605 :ISA TOP-QUA-LOCATION)
 (:VAR MV6601 :ISA PROTEIN :PREDICATION MV6603 :RAW-TEXT "AKT1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6603 :ISA PHOSPHORYLATE :SUBSTRATE MV6601 :RAW-TEXT "phosphorylated"))

___________________
732: "show AKT1 on top"

                    SOURCE-START
e8    SHOW          1 "show AKT1 on top" 6
                    END-OF-SOURCE
("show AKT1 on top"
 (:VAR MV6609 :ISA SHOW :AT-RELATIVE-LOCATION MV6611 :STATEMENT-OR-THEME MV6608
  :PRESENT "PRESENT")
 (:VAR MV6611 :ISA TOP-QUA-LOCATION)
 (:VAR MV6608 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
733: "Let's highlight upstream of AKT1"

                    SOURCE-START
e12   EXPLICIT-SUGGESTION 1 "Let's highlight upstream of AKT1" 9
                    END-OF-SOURCE
("Let's highlight upstream of AKT1"
 (:VAR MV6620 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6615 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6615 :ISA HIGHLIGHT :THEME MV6616 :PRESENT "PRESENT")
 (:VAR MV6616 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV6614 :RAW-TEXT
  "upstream")
 (:VAR MV6614 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
734: "Let's move nucleus elements to the top"

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's move nucleus elements to the top" 10
                    END-OF-SOURCE
("Let's move nucleus elements to the top"
 (:VAR MV6629 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6622 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6622 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV6627 :THEME MV6624 :PRESENT
  "PRESENT")
 (:VAR MV6627 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV6624 :ISA ELEMENT :MODIFIER MV6623)
 (:VAR MV6623 :ISA NUCLEUS :RAW-TEXT "nucleus"))

___________________
735: "What are the common downstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common downstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common downstreams of AKT1 and  BRAF?"
 (:VAR MV6632 :ISA BE :SUBJECT MV6631 :PREDICATE MV6635 :PRESENT "PRESENT")
 (:VAR MV6631 :ISA WHAT)
 (:VAR MV6635 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV6639 :HAS-DETERMINER
  "THE" :PREDICATION MV6634 :RAW-TEXT "downstreams")
 (:VAR MV6639 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV6630 MV6638))
 (:VAR MV6630 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6638 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6634 :ISA COMMON))

___________________
736: "Are there common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e20   THERE-EXISTS  1 "Are there common upstreams of AKT1, BRAF and MAPK1" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV6651 :ISA THERE-EXISTS :VALUE MV6647 :PREDICATE MV6644)
 (:VAR MV6647 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV6652 :PREDICATION
  MV6646 :RAW-TEXT "upstreams")
 (:VAR MV6652 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6641 MV6649 MV6642))
 (:VAR MV6641 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6649 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6642 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6646 :ISA COMMON) (:VAR MV6644 :ISA SYNTACTIC-THERE))

___________________
737: "What are the common upstream regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e26   BE            1 "What are the common upstream regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6658 :ISA BE :SUBJECT MV6657 :PREDICATE MV6663 :PRESENT "PRESENT")
 (:VAR MV6657 :ISA WHAT)
 (:VAR MV6663 :ISA REGULATOR :THEME MV6666 :HAS-DETERMINER "THE" :PREDICATION
  MV6660 :CONTEXT MV6661 :RAW-TEXT "regulators")
 (:VAR MV6666 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6654 MV6655 MV6656))
 (:VAR MV6654 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6655 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6656 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6660 :ISA COMMON)
 (:VAR MV6661 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
738: "What are common downstream regulators of MMP3 and SERPINE1?"

                    SOURCE-START
e19   BE            1 "What are common downstream regulators of MMP3 and SERPINE1" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common downstream regulators of MMP3 and SERPINE1?"
 (:VAR MV6671 :ISA BE :SUBJECT MV6670 :PREDICATE MV6675 :PRESENT "PRESENT")
 (:VAR MV6670 :ISA WHAT)
 (:VAR MV6675 :ISA REGULATOR :THEME MV6678 :PREDICATION MV6672 :CONTEXT MV6673
  :RAW-TEXT "regulators")
 (:VAR MV6678 :ISA COLLECTION :RAW-TEXT "MMP3 and SERPINE1" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV6668 MV6669))
 (:VAR MV6668 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6669 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6672 :ISA COMMON)
 (:VAR MV6673 :ISA DOWNSTREAM-SEGMENT :RAW-TEXT "downstream"))

___________________
739: "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e24   BE            1 "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6685 :ISA BE :SUBJECT MV6684 :PREDICATE MV6680 :PRESENT "PRESENT")
 (:VAR MV6684 :ISA WHAT)
 (:VAR MV6680 :ISA PROTEIN-FAMILY :MOLECULE-TYPE MV6691 :PREDICATION MV6686
  :CONTEXT MV6687 :RAW-TEXT "transcriptional regulators" :NAME
  "transcriptional regulator" :UID "XFAM:PF02082")
 (:VAR MV6691 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6681 MV6682 MV6683))
 (:VAR MV6681 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6682 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6683 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6686 :ISA COMMON)
 (:VAR MV6687 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
740: "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e24   BE            1 "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
 (:VAR MV6696 :ISA BE :SUBJECT MV6695 :PREDICATE MV6698 :PRESENT "PRESENT")
 (:VAR MV6695 :ISA WHAT)
 (:VAR MV6698 :ISA MUTATION :OBJECT MV6704 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6704 :ISA COLLECTION :CONTEXT MV6694 :RAW-TEXT "PTEN, TP53 and BRAF"
  :TYPE PROTEIN :NUMBER 3 :ITEMS (MV6700 MV6693 MV6702))
 (:VAR MV6694 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6700 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6693 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6702 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
741: "What is the mutation frequency of TP53 in ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian cancer?"
 (:VAR MV6710 :ISA BE :SUBJECT MV6709 :PREDICATE MV6713 :PRESENT "PRESENT")
 (:VAR MV6709 :ISA WHAT)
 (:VAR MV6713 :ISA FREQUENCY :MEASURED-ITEM MV6707 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV6712 :RAW-TEXT "frequency")
 (:VAR MV6707 :ISA PROTEIN :CONTEXT MV6708 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV6708 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6712 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
742: "Which genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV6728 :ISA COPULAR-PREDICATION :ITEM MV6722 :VALUE MV6718 :PREDICATE
  MV6723)
 (:VAR MV6722 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV6718 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV6720 :ALTERNATIVE MV6719)
 (:VAR MV6720 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV6719 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV6723 :ISA BE :PRESENT "PRESENT"))

___________________
743: "Which genes are mutually exclusive with CDH1 in breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 in breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 in breast cancer?"
 (:VAR MV6739 :ISA COPULAR-PREDICATION :ITEM MV6733 :VALUE MV6729 :PREDICATE
  MV6734)
 (:VAR MV6733 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV6729 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6730)
 (:VAR MV6730 :ISA PROTEIN :CONTEXT MV6731 :RAW-TEXT "CDH1" :UID "UP:P12830"
  :NAME "CADH1_HUMAN")
 (:VAR MV6731 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV6734 :ISA BE :PRESENT "PRESENT"))

___________________
744: "What is the cellular location of akt1?"

                    SOURCE-START
e15   BE            1 "What is the cellular location of akt1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the cellular location of akt1?"
 (:VAR MV6742 :ISA BE :SUBJECT MV6741 :PREDICATE MV6748 :PRESENT "PRESENT")
 (:VAR MV6741 :ISA WHAT)
 (:VAR MV6748 :ISA QUALITY-PREDICATE :ITEM MV6740 :ATTRIBUTE MV6745)
 (:VAR MV6740 :ISA PROTEIN :RAW-TEXT "akt1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6745 :ISA LOCATION-OF :HAS-DETERMINER "THE" :MODIFIER MV6744)
 (:VAR MV6744 :ISA CELLULAR :NAME "cellular"))

___________________
745: "How does MAPK regulate BRAF?"

                    SOURCE-START
e7    REGULATE      1 "How does MAPK regulate BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK regulate BRAF?"
 (:VAR MV6752 :ISA REGULATE :MANNER MV6749 :AGENT MV6751 :OBJECT MV6753
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV6749 :ISA HOW)
 (:VAR MV6751 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV6753 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
746: "What is BRAF?"

                    SOURCE-START
e4    BE            1 "What is BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is BRAF?"
 (:VAR MV6755 :ISA BE :SUBJECT MV6754 :PREDICATE MV6756 :PRESENT "PRESENT")
 (:VAR MV6754 :ISA WHAT)
 (:VAR MV6756 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
747: "Is BRAF a member of the RAF family?"

                    SOURCE-START
e19   BE            1 "Is BRAF a member of the RAF family" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a member of the RAF family?"
 (:VAR MV6768 :ISA POLAR-QUESTION :STATEMENT MV6757)
 (:VAR MV6757 :ISA BE :SUBJECT MV6758 :PREDICATE MV6760)
 (:VAR MV6758 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6760 :ISA MEMBER :SET MV6766 :HAS-DETERMINER "A")
 (:VAR MV6766 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME
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
 (:VAR MV6775 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6770 :VALUE MV6773 :PREP
  MV6772 :PREDICATE MV6771)
 (:VAR MV6770 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6773 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663")
 (:VAR MV6772 :ISA IN :WORD "in") (:VAR MV6771 :ISA BE :PRESENT "PRESENT"))

___________________
749: "What genes are in the RAF family?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What genes are in the RAF family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the RAF family?"
 (:VAR MV6786 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6777 :VALUE MV6784 :PREP
  MV6779 :PREDICATE MV6778)
 (:VAR MV6777 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6784 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME
  "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV6779 :ISA IN :WORD "in") (:VAR MV6778 :ISA BE :PRESENT "PRESENT"))

___________________
750: "What are some other names for BRAF?"

                    SOURCE-START
e15   BE            1 "What are some other names for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some other names for BRAF?"
 (:VAR MV6788 :ISA BE :SUBJECT MV6787 :PREDICATE MV6792 :PRESENT "PRESENT")
 (:VAR MV6787 :ISA WHAT)
 (:VAR MV6792 :ISA HAS-NAME :QUANTIFIER MV6789 :QUANTIFIER MV6790 :ITEM MV6795)
 (:VAR MV6789 :ISA SOME :WORD "some") (:VAR MV6790 :ISA OTHER :WORD "other")
 (:VAR MV6795 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
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
 (:VAR MV6813 :ISA SHARE :OBJECT MV6803 :PARTICIPANT MV6812 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV6803 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV6812 :ISA COLLECTION :RAW-TEXT "CXCL8, CXCL10, and IL2" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6804 MV6805 MV6806))
 (:VAR MV6804 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV6805 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV6806 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
753: "What are the paths between BRAF and AKT1?"

                    SOURCE-START
e15   BE            1 "What are the paths between BRAF and AKT1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between BRAF and AKT1?"
 (:VAR MV6817 :ISA BE :SUBJECT MV6816 :PREDICATE MV6819 :PRESENT "PRESENT")
 (:VAR MV6816 :ISA WHAT)
 (:VAR MV6819 :ISA PATH :ENDPOINTS MV6823 :HAS-DETERMINER "THE")
 (:VAR MV6823 :ISA COLLECTION :RAW-TEXT "BRAF and AKT1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6821 MV6815))
 (:VAR MV6821 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6815 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
754: "Is SMAD2 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is SMAD2 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is SMAD2 a transcription factor?"
 (:VAR MV6829 :ISA POLAR-QUESTION :STATEMENT MV6827)
 (:VAR MV6827 :ISA BE :SUBJECT MV6825 :PREDICATE MV6826)
 (:VAR MV6825 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN")
 (:VAR MV6826 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
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
 (:VAR MV6845 :ISA BIO-ACTIVATE :AGENT MV6844 :OBJECT MV6846 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6844 :ISA PROTEIN-FAMILY :PREDICATION MV6843 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6843 :ISA ACTIVE)
 (:VAR MV6846 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV6853 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6847 :VALUE MV6851 :PREP
  MV6849 :PREDICATE MV6848)
 (:VAR MV6847 :ISA WHAT) (:VAR MV6851 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV6849 :ISA IN :WORD "in") (:VAR MV6848 :ISA BE :PRESENT "PRESENT"))

___________________
758: "Is the amount of phosphorylated ERK ever high?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Is the amount of phosphorylated ERK ever high" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated ERK ever high?"
 (:VAR MV6864 :ISA POLAR-QUESTION :STATEMENT MV6863)
 (:VAR MV6863 :ISA COPULAR-PREDICATION :ITEM MV6856 :VALUE MV6861 :PREDICATE
  MV6854)
 (:VAR MV6856 :ISA BIO-AMOUNT :MEASURED-ITEM MV6859 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV6859 :ISA PROTEIN-FAMILY :PREDICATION MV6858 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6858 :ISA PHOSPHORYLATE :SUBSTRATE MV6859 :RAW-TEXT "phosphorylated")
 (:VAR MV6861 :ISA HIGH :ADVERB MV6860) (:VAR MV6860 :ISA EVER :NAME "ever")
 (:VAR MV6854 :ISA BE))

___________________
759: "What genes are mutually exclusive with PTEN for prostate cancer?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "What genes are mutually exclusive with PTEN for prostate cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are mutually exclusive with PTEN for prostate cancer?"
 (:VAR MV6875 :ISA COPULAR-PREDICATION :ITEM MV6868 :VALUE MV6865 :PREDICATE
  MV6869)
 (:VAR MV6868 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6865 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV6866 :ALTERNATIVE MV6871)
 (:VAR MV6866 :ISA CANCER :NAME "prostate cancer" :UID "TS-1224")
 (:VAR MV6871 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6869 :ISA BE :PRESENT "PRESENT"))

___________________
760: "What signaling pathways are shared by SMAD2 and CXCL8?"

                    SOURCE-START
e17   SHARE         1 "What signaling pathways are shared by SMAD2 and CXCL8" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by SMAD2 and CXCL8?"
 (:VAR MV6885 :ISA SHARE :OBJECT MV6876 :PARTICIPANT MV6884 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV6876 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV6884 :ISA COLLECTION :RAW-TEXT "SMAD2 and CXCL8" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV6877 MV6878))
 (:VAR MV6877 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN")
 (:VAR MV6878 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
761: "What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs most frequently regulate FN1, MMP3, and SERPINE1" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
 (:VAR MV6894 :ISA REGULATE :AGENT MV6891 :OBJECT MV6896 :PRESENT "PRESENT"
  :ADVERB MV6892 :ADVERB MV6893 :RAW-TEXT "regulate")
 (:VAR MV6891 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV6896 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6887 MV6888 MV6889))
 (:VAR MV6887 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6888 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6889 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6892 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6893 :ISA FREQUENTLY :NAME "frequently"))

___________________
762: "What is the most likely cellular location of PTEN?"

                    SOURCE-START
e19   BE            1 "What is the most likely cellular location of PTEN" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of PTEN?"
 (:VAR MV6898 :ISA BE :SUBJECT MV6897 :PREDICATE MV6908 :PRESENT "PRESENT")
 (:VAR MV6897 :ISA WHAT)
 (:VAR MV6908 :ISA QUALITY-PREDICATE :ITEM MV6906 :ATTRIBUTE MV6904)
 (:VAR MV6906 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6904 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6902
  :MODIFIER MV6903)
 (:VAR MV6902 :ISA LIKELY :COMPARATIVE MV6900)
 (:VAR MV6900 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6903 :ISA CELLULAR :NAME "cellular"))

___________________
763: "Is BRAF a kinase?"

                    SOURCE-START
e8    BE            1 "Is BRAF a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a kinase?" (:VAR MV6913 :ISA POLAR-QUESTION :STATEMENT MV6909)
 (:VAR MV6909 :ISA BE :SUBJECT MV6910 :PREDICATE MV6912)
 (:VAR MV6910 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6912 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
764: "Can you tell me whether BRAF is a kinase?"

                    SOURCE-START
e22   TELL          1 "Can you tell me whether BRAF is a kinase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me whether BRAF is a kinase?"
 (:VAR MV6925 :ISA POLAR-QUESTION :STATEMENT MV6916)
 (:VAR MV6916 :ISA TELL :AGENT MV6915 :THEME MV6924 :THEME MV6917 :MODAL "CAN")
 (:VAR MV6915 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV6924 :ISA WH-QUESTION :STATEMENT MV6921 :WH WHETHER)
 (:VAR MV6921 :ISA BE :SUBJECT MV6920 :PREDICATE MV6923 :MODAL "CAN")
 (:VAR MV6920 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6923 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase")
 (:VAR MV6917 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
765: "I want to know if BRAF is a kinase."

                    SOURCE-START
e21   WANT          1 "I want to know if BRAF is a kinase" 10
                    PERIOD
                    END-OF-SOURCE
("I want to know if BRAF is a kinase."
 (:VAR MV6929 :ISA WANT :AGENT MV6926 :THEME MV6939 :PRESENT "PRESENT")
 (:VAR MV6926 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6939 :ISA KNOW :AGENT MV6926 :STATEMENT MV6938)
 (:VAR MV6926 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6938 :ISA WH-QUESTION :STATEMENT MV6934 :WH IF)
 (:VAR MV6934 :ISA BE :SUBJECT MV6933 :PREDICATE MV6936 :PRESENT "PRESENT")
 (:VAR MV6933 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6936 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

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
 (:VAR MV6948 :ISA BE :SUBJECT MV6945 :PREDICATE MV6949 :PRESENT "PRESENT")
 (:VAR MV6945 :ISA TYPE :MOLECULE-TYPE MV6947 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "type")
 (:VAR MV6947 :ISA PROTEIN :RAW-TEXT "protein")
 (:VAR MV6949 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
768: "What is the activity of the BRAF protein?"

                    SOURCE-START
e17   BE            1 "What is the activity of the BRAF protein" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the activity of the BRAF protein?"
 (:VAR MV6952 :ISA BE :SUBJECT MV6951 :PREDICATE MV6954 :PRESENT "PRESENT")
 (:VAR MV6951 :ISA WHAT)
 (:VAR MV6954 :ISA BIO-ACTIVITY :PARTICIPANT MV6959 :HAS-DETERMINER "THE"
  :RAW-TEXT "activity")
 (:VAR MV6959 :ISA PROTEIN :HAS-DETERMINER "THE" :RAW-TEXT "BRAF" :UID
  "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
769: "Is BRAF a kinase or a transcription factor?"

                    SOURCE-START
e15   BE            1 "Is BRAF a kinase or a transcription factor" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a kinase or a transcription factor?"
 (:VAR MV6969 :ISA POLAR-QUESTION :STATEMENT MV6962)
 (:VAR MV6962 :ISA BE :SUBJECT MV6963 :PREDICATE MV6968)
 (:VAR MV6963 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6968 :ISA COLLECTION :RAW-TEXT "a kinase or a transcription factor"
  :TYPE KINASE :NUMBER 2 :ITEMS (MV6965 MV6961))
 (:VAR MV6965 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase")
 (:VAR MV6961 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
770: "What proteins are targeted by NG25?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by NG25" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by NG25?"
 (:VAR MV6976 :ISA TARGET :OBJECT MV6972 :AGENT MV6970 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV6972 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV6970 :ISA BIO-ENTITY :NAME "NG25"))

___________________
771: "Name transcription factors shared by FN1, MMP3, and SERPINE1."

                    SOURCE-START
e20   NAME-SOMETHING  1 "Name transcription factors shared by FN1, MMP3, and SERPINE1" 15
                    PERIOD
                    END-OF-SOURCE
("Name transcription factors shared by FN1, MMP3, and SERPINE1."
 (:VAR MV6982 :ISA NAME-SOMETHING :PATIENT MV6978 :PRESENT "PRESENT")
 (:VAR MV6978 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV6985 :RAW-TEXT
  "transcription factors")
 (:VAR MV6985 :ISA SHARE :OBJECT MV6978 :PARTICIPANT MV6988 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV6988 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6979 MV6980 MV6981))
 (:VAR MV6979 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6980 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6981 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN"))

___________________
772: "Tell me if STAT3 is a transcription factor"

                    SOURCE-START
e15   TELL          1 "Tell me if STAT3 is a transcription factor" 10
                    END-OF-SOURCE
("Tell me if STAT3 is a transcription factor"
 (:VAR MV6992 :ISA TELL :THEME MV6997 :BENEFICIARY MV6993 :PRESENT "PRESENT")
 (:VAR MV6997 :ISA WH-QUESTION :STATEMENT MV6995 :WH IF)
 (:VAR MV6995 :ISA BE :SUBJECT MV6990 :PREDICATE MV6991 :PRESENT "PRESENT")
 (:VAR MV6990 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6991 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor")
 (:VAR MV6993 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
773: "Show me signaling pathways shared by MAP3K7 and CXCL8."

                    SOURCE-START
e18   SHOW          1 "Show me signaling pathways shared by MAP3K7 and CXCL8" 14
                    PERIOD
                    END-OF-SOURCE
("Show me signaling pathways shared by MAP3K7 and CXCL8."
 (:VAR MV7001 :ISA SHOW :STATEMENT-OR-THEME MV6998 :BENEFICIARY MV7002 :PRESENT
  "PRESENT")
 (:VAR MV6998 :ISA SIGNALING-PATHWAY :PREDICATION MV7003 :RAW-TEXT
  "signaling pathways")
 (:VAR MV7003 :ISA SHARE :OBJECT MV6998 :PARTICIPANT MV7006 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7006 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV6999 MV7000))
 (:VAR MV6999 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV7000 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7002 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
774: "Give me signaling pathways shared by MAP3K7 and CXCL8"

                    SOURCE-START
e18   GIVE          1 "Give me signaling pathways shared by MAP3K7 and CXCL8" 14
                    END-OF-SOURCE
("Give me signaling pathways shared by MAP3K7 and CXCL8"
 (:VAR MV7011 :ISA GIVE :THEME MV7008 :BENEFICIARY MV7012 :PRESENT "PRESENT")
 (:VAR MV7008 :ISA SIGNALING-PATHWAY :PREDICATION MV7013 :RAW-TEXT
  "signaling pathways")
 (:VAR MV7013 :ISA SHARE :OBJECT MV7008 :PARTICIPANT MV7016 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7016 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7009 MV7010))
 (:VAR MV7009 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV7010 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7012 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
775: "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"

                    SOURCE-START
e46   EVENT-RELATION  1 "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"
 (:VAR MV7045 :ISA POLAR-QUESTION :STATEMENT MV7044)
 (:VAR MV7044 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7040 :EVENT MV7042)
 (:VAR MV7040 :ISA WH-QUESTION :STATEMENT MV7029 :WH IF)
 (:VAR MV7029 :ISA INCREASE :AGENT-OR-CAUSE MV7027 :MULTIPLIER MV7037
  :AFFECTED-PROCESS-OR-OBJECT MV7031 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV7027 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV7037 :ISA N-FOLD :NUMBER MV7036) (:VAR MV7036 :ISA NUMBER :VALUE 10)
 (:VAR MV7031 :ISA BIO-AMOUNT :MEASURED-ITEM MV7033 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7033 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV7042 :ISA COPULAR-PREDICATION :ITEM MV7020 :VALUE MV7025 :PREDICATE
  MV7018)
 (:VAR MV7020 :ISA BIO-AMOUNT :MEASURED-ITEM MV7023 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7023 :ISA PROTEIN-FAMILY :PREDICATION MV7022 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV7022 :ISA PHOSPHORYLATE :SUBSTRATE MV7023 :RAW-TEXT "phosphorylated")
 (:VAR MV7025 :ISA HIGH :ADVERB MV7024) (:VAR MV7024 :ISA EVER :NAME "ever")
 (:VAR MV7018 :ISA BE))

___________________
776: "Active MEK phosphorylates ERK"

                    SOURCE-START
e6    PHOSPHORYLATE 1 "Active MEK phosphorylates ERK" 5
                    END-OF-SOURCE
("Active MEK phosphorylates ERK"
 (:VAR MV7048 :ISA PHOSPHORYLATE :AGENT MV7047 :SUBSTRATE MV7049 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7047 :ISA PROTEIN-FAMILY :PREDICATION MV7046 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV7046 :ISA ACTIVE)
 (:VAR MV7049 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV7075 :ISA POLAR-QUESTION :STATEMENT MV7074)
 (:VAR MV7074 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7070 :EVENT MV7072)
 (:VAR MV7070 :ISA WH-QUESTION :STATEMENT MV7061 :WH IF)
 (:VAR MV7061 :ISA INCREASE :AGENT-OR-CAUSE MV7059 :ADVERB MV7068
  :AFFECTED-PROCESS-OR-OBJECT MV7063 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV7059 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV7068 :ISA N-FOLD :NUMBER MV7067) (:VAR MV7067 :ISA NUMBER :VALUE 10)
 (:VAR MV7063 :ISA BIO-AMOUNT :MEASURED-ITEM MV7065 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7065 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV7072 :ISA COPULAR-PREDICATION :ITEM MV7052 :VALUE MV7057 :PREDICATE
  MV7050)
 (:VAR MV7052 :ISA BIO-AMOUNT :MEASURED-ITEM MV7055 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7055 :ISA PROTEIN-FAMILY :PREDICATION MV7054 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV7054 :ISA PHOSPHORYLATE :SUBSTRATE MV7055 :RAW-TEXT "phosphorylated")
 (:VAR MV7057 :ISA HIGH :ADVERB MV7056) (:VAR MV7056 :ISA EVER :NAME "ever")
 (:VAR MV7050 :ISA BE))

___________________
778: "What are some pathways that affect BRAF?"

                    SOURCE-START
e14   BE            1 "What are some pathways that affect BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some pathways that affect BRAF?"
 (:VAR MV7077 :ISA BE :SUBJECT MV7076 :PREDICATE MV7079 :PRESENT "PRESENT")
 (:VAR MV7076 :ISA WHAT)
 (:VAR MV7079 :ISA PATHWAY :PREDICATION MV7081 :QUANTIFIER MV7078 :RAW-TEXT
  "pathways")
 (:VAR MV7081 :ISA AFFECT :AGENT MV7079 :THAT-REL T :OBJECT MV7082 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV7082 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7078 :ISA SOME :WORD "some"))

___________________
779: "What are the pathways that affect BRAF"

                    SOURCE-START
e15   BE            1 "What are the pathways that affect BRAF" 8
                    END-OF-SOURCE
("What are the pathways that affect BRAF"
 (:VAR MV7084 :ISA BE :SUBJECT MV7083 :PREDICATE MV7086 :PRESENT "PRESENT")
 (:VAR MV7083 :ISA WHAT)
 (:VAR MV7086 :ISA PATHWAY :PREDICATION MV7088 :HAS-DETERMINER "THE" :RAW-TEXT
  "pathways")
 (:VAR MV7088 :ISA AFFECT :AGENT MV7086 :THAT-REL T :OBJECT MV7089 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV7089 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
780: "What genes are regulated by miR-20b-5p, and miR-145-5p?"

                    SOURCE-START
e17   REGULATE      1 "What genes are regulated by miR-20b-5p, and miR-145-5p" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p, and miR-145-5p?"
 (:VAR MV7099 :ISA REGULATE :OBJECT MV7093 :AGENT MV7098 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV7093 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7098 :ISA COLLECTION :RAW-TEXT "miR-20b-5p, and miR-145-5p" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV7090 MV7091))
 (:VAR MV7090 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV7091 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437"))

___________________
781: "What are some genes that are regulated by ELK1?"

                    SOURCE-START
e20   BE            1 "What are some genes that are regulated by ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes that are regulated by ELK1?"
 (:VAR MV7103 :ISA BE :SUBJECT MV7102 :PREDICATE MV7105 :PRESENT "PRESENT")
 (:VAR MV7102 :ISA WHAT)
 (:VAR MV7105 :ISA GENE :PREDICATION MV7110 :QUANTIFIER MV7104 :RAW-TEXT
  "genes")
 (:VAR MV7110 :ISA REGULATE :OBJECT MV7105 :THAT-REL T :AGENT MV7101 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV7101 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7104 :ISA SOME :WORD "some"))

___________________
782: "What pathways contain CXCL8 and CXCL10?"

                    SOURCE-START
e11   CONTAIN       1 "What pathways contain CXCL8 and CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways contain CXCL8 and CXCL10?"
 (:VAR MV7116 :ISA CONTAIN :THEME MV7115 :PATIENT MV7118 :PRESENT "PRESENT")
 (:VAR MV7115 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7118 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7112 MV7113))
 (:VAR MV7112 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7113 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
783: "Remove the fact that IL10 activates STAT3 in the model"

                    SOURCE-START
e24   REMOVE        1 "Remove the fact that IL10 activates STAT3 in the model" 13
                    END-OF-SOURCE
("Remove the fact that IL10 activates STAT3 in the model"
 (:VAR MV7121 :ISA REMOVE :OBJECT MV7130 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7130 :ISA FACT :STATEMENT MV7125 :HAS-DETERMINER "THE")
 (:VAR MV7125 :ISA BIO-ACTIVATE :AGENT MV7119 :OBJECT MV7120 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7119 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7120 :ISA PROTEIN :INFO-CONTEXT MV7128 :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV7128 :ISA MODEL :HAS-DETERMINER "THE"))

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
 (:VAR MV7142 :ISA BE :SUBJECT MV7141 :PREDICATE MV7144 :PRESENT "PRESENT")
 (:VAR MV7141 :ISA WHAT)
 (:VAR MV7144 :ISA PATH :ENDPOINTS MV7148 :QUANTIFIER MV7143)
 (:VAR MV7148 :ISA COLLECTION :RAW-TEXT "BRAF and AKT1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV7146 MV7140))
 (:VAR MV7146 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7140 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV7143 :ISA SOME :WORD "some"))

___________________
786: "Does MEK1 activate ERK2"

                    SOURCE-START
e10   BIO-ACTIVATE  1 "Does MEK1 activate ERK2" 7
                    END-OF-SOURCE
("Does MEK1 activate ERK2" (:VAR MV7155 :ISA POLAR-QUESTION :STATEMENT MV7154)
 (:VAR MV7154 :ISA BIO-ACTIVATE :AGENT MV7150 :OBJECT MV7151 :RAW-TEXT
  "activate")
 (:VAR MV7150 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7151 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
787: "What drugs tagret BRAF?"

                    SOURCE-START
e6    PROTEIN       1 "What drugs tagret BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs tagret BRAF?"
 (:VAR MV7158 :ISA PROTEIN :HAS-DETERMINER "WHAT" :MODIFIER MV7157 :MODIFIER
  MV7159 :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV7157 :ISA DRUG :RAW-TEXT "drugs")
 (:VAR MV7159 :ISA BIO-ENTITY :NAME "tagret"))

___________________
788: "Which kinases are in the MAPK signalling pathway?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which kinases are in the MAPK signalling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signalling pathway?"
 (:VAR MV7168 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7162 :VALUE MV7160 :PREP
  MV7164 :PREDICATE MV7163)
 (:VAR MV7162 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7160 :ISA CELLULAR-PROCESS :HAS-DETERMINER "THE" :MODIFIER MV7166
  :RAW-TEXT "signalling pathway" :NAME "signalling cascade" :UID "GO:0007165")
 (:VAR MV7166 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV7164 :ISA IN :WORD "in") (:VAR MV7163 :ISA BE :PRESENT "PRESENT"))

___________________
789: "What drugs drugs target BRAF?"

                    SOURCE-START
e9    TARGET        1 "What drugs drugs target BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs drugs target BRAF?"
 (:VAR MV7173 :ISA TARGET :AGENT MV7175 :OBJECT MV7174 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7175 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7174 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
790: "What rgulates ELLK1?"

                    SOURCE-START
e6    BIO-ENTITY    1 "What rgulates ELLK1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What rgulates ELLK1?"
 (:VAR MV7179 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :MODIFIER MV7180 :NAME
  "ELLK1")
 (:VAR MV7180 :ISA BIO-ENTITY :NAME "rgulates"))

___________________
791: "Does STAT3 increase expression of c-fos in liver?"

                    SOURCE-START
e21   INCREASE      1 "Does STAT3 increase expression of c-fos in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase expression of c-fos in liver?"
 (:VAR MV7193 :ISA POLAR-QUESTION :STATEMENT MV7190)
 (:VAR MV7190 :ISA INCREASE :AGENT MV7181 :AFFECTED-PROCESS MV7186 :RAW-TEXT
  "increase")
 (:VAR MV7181 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7186 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV7182 :RAW-TEXT
  "expression")
 (:VAR MV7182 :ISA PROTEIN :ORGAN MV7189 :RAW-TEXT "c-fos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV7189 :ISA LIVER))

___________________
792: "Does STAT3 affect c-fos expression in liver?"

                    SOURCE-START
e17   AFFECT        1 "Does STAT3 affect c-fos expression in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect c-fos expression in liver?"
 (:VAR MV7203 :ISA POLAR-QUESTION :STATEMENT MV7201)
 (:VAR MV7201 :ISA AFFECT :AGENT MV7194 :AFFECTED-PROCESS MV7198 :RAW-TEXT
  "affect")
 (:VAR MV7194 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7198 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV7200 :OBJECT MV7195
  :RAW-TEXT "expression")
 (:VAR MV7200 :ISA LIVER)
 (:VAR MV7195 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
793: "Does STAT3 alter c-fos expression?"

                    SOURCE-START
e12   ALTER         1 "Does STAT3 alter c-fos expression" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 alter c-fos expression?"
 (:VAR MV7210 :ISA POLAR-QUESTION :STATEMENT MV7209)
 (:VAR MV7209 :ISA ALTER :AGENT MV7204 :AFFECTED-PROCESS MV7208 :RAW-TEXT
  "alter")
 (:VAR MV7204 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7208 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV7205 :RAW-TEXT
  "expression")
 (:VAR MV7205 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
794: "Is STAT3 a transcriptional regulator of c-fos?"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcriptional regulator of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcriptional regulator of c-fos?"
 (:VAR MV7218 :ISA POLAR-QUESTION :STATEMENT MV7214)
 (:VAR MV7214 :ISA BE :SUBJECT MV7211 :PREDICATE MV7212)
 (:VAR MV7211 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7212 :ISA PROTEIN-FAMILY :MOLECULE-TYPE MV7213 :HAS-DETERMINER "A"
  :RAW-TEXT "transcriptional regulator" :NAME "transcriptional regulator" :UID
  "XFAM:PF02082")
 (:VAR MV7213 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
795: "Which drugs inhibit BRAF?"

                    SOURCE-START
e6    INHIBIT       1 "Which drugs inhibit BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs inhibit BRAF?"
 (:VAR MV7221 :ISA INHIBIT :AGENT MV7220 :OBJECT MV7222 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV7220 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7222 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
796: "STAT3 upregulates ELK1."

                    SOURCE-START
e6    UPREGULATE    1 "STAT3 upregulates ELK1" 6
                    PERIOD
                    END-OF-SOURCE
("STAT3 upregulates ELK1."
 (:VAR MV7225 :ISA UPREGULATE :AGENT MV7223 :OBJECT MV7224 :PRESENT "PRESENT"
  :RAW-TEXT "upregulates")
 (:VAR MV7223 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7224 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
797: "What does STAT3 transcribe?  "

                    SOURCE-START
e6    TRANSCRIBE    1 "What does STAT3 transcribe" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 transcribe?"
 (:VAR MV7229 :ISA TRANSCRIBE :OBJECT MV7227 :AGENT MV7226 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV7227 :ISA WHAT)
 (:VAR MV7226 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
798: "What is PI3K?"

                    SOURCE-START
e5    BE            1 "What is PI3K" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What is PI3K?"
 (:VAR MV7232 :ISA BE :SUBJECT MV7231 :PREDICATE MV7230 :PRESENT "PRESENT")
 (:VAR MV7231 :ISA WHAT)
 (:VAR MV7230 :ISA PROTEIN-FAMILY :RAW-TEXT "PI3K" :NAME "PI3-kinase" :COUNT 4
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
 (:VAR MV7234 :ISA BE :SUBJECT MV7233 :PREDICATE MV7235 :PRESENT "PRESENT")
 (:VAR MV7233 :ISA WHAT)
 (:VAR MV7235 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV7237 :ISA PHOSPHORYLATE :AGENT-OR-CAUSE MV7236 :SUBSTRATE MV7238
  :PRESENT "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7236 :ISA WHAT)
 (:VAR MV7238 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV7242 :ISA TARGET :AGENT MV7240 :OBJECT MV7243 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7240 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7243 :ISA PROTEIN-FAMILY :RAW-TEXT "AKT" :NAME "Rac" :COUNT 3
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
 (:VAR MV7246 :ISA REGULATE :AGENT-OR-CAUSE MV7245 :OBJECT MV7244 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7245 :ISA WHAT) (:VAR MV7244 :ISA BIO-ENTITY :NAME "ELLK1"))

___________________
803: "What regulates ELK1?"

                    SOURCE-START
e5    REGULATE      1 "What regulates ELK1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates ELK1?"
 (:VAR MV7249 :ISA REGULATE :AGENT-OR-CAUSE MV7248 :OBJECT MV7247 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7248 :ISA WHAT)
 (:VAR MV7247 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
804: "Does miR-20b-5pp target STAT3?"

                    SOURCE-START
e16   TARGET        1 "Does miR-20b-5pp target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5pp target STAT3?"
 (:VAR MV7260 :ISA POLAR-QUESTION :STATEMENT MV7259)
 (:VAR MV7259 :ISA TARGET :AGENT MV7258 :OBJECT MV7251 :RAW-TEXT "target")
 (:VAR MV7258 :ISA BIO-ENTITY :NAME "miR-20b-5pp")
 (:VAR MV7251 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
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
 (:VAR MV7274 :ISA TARGET :OBJECT MV7271 :AGENT MV7275 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7271 :ISA WHAT) (:VAR MV7275 :ISA BIO-ENTITY :NAME "selumitinibib"))

___________________
807: "Is ELLK1 a kinase?"

                    SOURCE-START
e9    BE            1 "Is ELLK1 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ELLK1 a kinase?" (:VAR MV7280 :ISA POLAR-QUESTION :STATEMENT MV7277)
 (:VAR MV7277 :ISA BE :SUBJECT MV7276 :PREDICATE MV7279)
 (:VAR MV7276 :ISA BIO-ENTITY :NAME "ELLK1")
 (:VAR MV7279 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
808: "What regulates ELK12?"

                    SOURCE-START
e7    REGULATE      1 "What regulates ELK12" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates ELK12?"
 (:VAR MV7282 :ISA REGULATE :AGENT-OR-CAUSE MV7281 :OBJECT MV7283 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7281 :ISA WHAT)
 (:VAR MV7283 :ISA PROTEIN :VARIANT-NUMBER MV7285 :RAW-TEXT "ELK" :UID
  "UP:P54762" :NAME "EPHB1_HUMAN")
 (:VAR MV7285 :ISA NUMBER :VALUE 12))

___________________
809: "What does sleumiitibbb target?"

                    SOURCE-START
e6    TARGET        1 "What does sleumiitibbb target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does sleumiitibbb target?"
 (:VAR MV7289 :ISA TARGET :OBJECT MV7286 :AGENT MV7290 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7286 :ISA WHAT) (:VAR MV7290 :ISA BIO-ENTITY :NAME "sleumiitibbb"))

___________________
810: "What is the evidence that MEK1 phosphorylates ERK1?"

                    SOURCE-START
e18   BE            1 "What is the evidence that MEK1 phosphorylates ERK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that MEK1 phosphorylates ERK1?"
 (:VAR MV7294 :ISA BE :SUBJECT MV7293 :PREDICATE MV7299 :PRESENT "PRESENT")
 (:VAR MV7293 :ISA WHAT)
 (:VAR MV7299 :ISA EVIDENCE :STATEMENT MV7298 :HAS-DETERMINER "THE")
 (:VAR MV7298 :ISA PHOSPHORYLATE :AGENT MV7291 :SUBSTRATE MV7292 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7291 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7292 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
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
 (:VAR MV7316 :ISA BIO-ACTIVATE :AGENT MV7314 :OBJECT MV7315 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7314 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7315 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
814: "How many interactions are in the model?"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "How many interactions are in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How many interactions are in the model?"
 (:VAR MV7327 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7319 :VALUE MV7326 :PREP
  "IN" :PREDICATE MV7320)
 (:VAR MV7319 :ISA INTERACT :HAS-DETERMINER "HOW" :QUANTIFIER MV7318 :RAW-TEXT
  "interactions")
 (:VAR MV7318 :ISA MANY :WORD "many")
 (:VAR MV7326 :ISA INTERACT :INFO-CONTEXT MV7323 :HAS-DETERMINER "HOW"
  :QUANTIFIER MV7318 :RAW-TEXT "interactions")
 (:VAR MV7323 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV7318 :ISA MANY :WORD "many") (:VAR MV7320 :ISA BE :PRESENT "PRESENT"))

___________________
815: "Does tofacitinib decrease the amount of phosphorylated MAP2K2?"

                    SOURCE-START
e21   DECREASE      1 "Does tofacitinib decrease the amount of phosphorylated MAP2K2" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
 (:VAR MV7340 :ISA POLAR-QUESTION :STATEMENT MV7338)
 (:VAR MV7338 :ISA DECREASE :AGENT MV7331 :AFFECTED-PROCESS-OR-OBJECT MV7335
  :RAW-TEXT "decrease")
 (:VAR MV7331 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tasocitinib" :UID
  "NCIT:C95800")
 (:VAR MV7335 :ISA BIO-AMOUNT :MEASURED-ITEM MV7329 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7329 :ISA PROTEIN :PREDICATION MV7337 :RAW-TEXT "MAP2K2" :UID
  "UP:P36507" :NAME "MP2K2_HUMAN")
 (:VAR MV7337 :ISA PHOSPHORYLATE :SUBSTRATE MV7329 :RAW-TEXT "phosphorylated"))

___________________
816: "What kinases does ERK1 activate?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "What kinases does ERK1 activate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does ERK1 activate?"
 (:VAR MV7345 :ISA BIO-ACTIVATE :OBJECT MV7343 :AGENT MV7341 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7343 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7341 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
817: "What kinases does MEK1 activate?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "What kinases does MEK1 activate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does MEK1 activate?"
 (:VAR MV7350 :ISA BIO-ACTIVATE :OBJECT MV7348 :AGENT MV7346 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7348 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7346 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
818: "What does ERK1 activate?"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "What does ERK1 activate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERK1 activate?"
 (:VAR MV7354 :ISA BIO-ACTIVATE :OBJECT MV7352 :AGENT MV7351 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7352 :ISA WHAT)
 (:VAR MV7351 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
819: "What does JAK1 phosphorylate?"

                    SOURCE-START
e6    PHOSPHORYLATE 1 "What does JAK1 phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does JAK1 phosphorylate?"
 (:VAR MV7358 :ISA PHOSPHORYLATE :AMINO-ACID MV7356 :AGENT MV7355 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV7356 :ISA WHAT)
 (:VAR MV7355 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
820: "What kinases does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What kinases does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does STAT3 regulate?"
 (:VAR MV7363 :ISA REGULATE :OBJECT MV7361 :AGENT MV7359 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7361 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7359 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
821: "What pathways involve SRF and what does SRF bind?"

                    SOURCE-START
e14   INVOLVE       1 "What pathways involve SRF and what does SRF bind" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF and what does SRF bind?"
 (:VAR MV7373 :ISA COLLECTION :TYPE INVOLVE :NUMBER 2 :ITEMS (MV7366 MV7372))
 (:VAR MV7366 :ISA INVOLVE :THEME MV7365 :THEME MV7367 :PRESENT "PRESENT")
 (:VAR MV7365 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7367 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV7372 :ISA BINDING :DIRECT-BINDEE MV7369 :BINDER MV7371 :PRESENT
  "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7369 :ISA WHAT)
 (:VAR MV7371 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
822: "What pathways involve SRF?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF?"
 (:VAR MV7376 :ISA INVOLVE :THEME MV7375 :THEME MV7377 :PRESENT "PRESENT")
 (:VAR MV7375 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7377 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
823: "What does SRF bind?"

                    SOURCE-START
e5    BINDING       1 "What does SRF bind" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does SRF bind?"
 (:VAR MV7381 :ISA BINDING :DIRECT-BINDEE MV7378 :BINDER MV7380 :PRESENT
  "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7378 :ISA WHAT)
 (:VAR MV7380 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV7402 :ISA POLAR-QUESTION :STATEMENT MV7401)
 (:VAR MV7401 :ISA COLLECTION :TYPE PHOSPHORYLATE :ITEMS
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
 (:VAR MV7408 :ISA POLAR-QUESTION :STATEMENT MV7407)
 (:VAR MV7407 :ISA PHOSPHORYLATE :AGENT MV7403 :SUBSTRATE MV7404 :RAW-TEXT
  "phosphorylate")
 (:VAR MV7403 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7404 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
827: "Which kinases activate MEK2?"

                    SOURCE-START
e7    BIO-ACTIVATE  1 "Which kinases activate MEK2" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases activate MEK2?"
 (:VAR MV7412 :ISA BIO-ACTIVATE :AGENT MV7411 :OBJECT MV7409 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7411 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7409 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN"))

___________________
828: "Which drugs target upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e17   TARGET        1 "Which drugs target upstreams of CXCL8 and CXCL10" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target upstreams of CXCL8 and CXCL10?"
 (:VAR MV7418 :ISA TARGET :AGENT MV7416 :AFFECTED-PROCESS MV7419 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV7416 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7419 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV7422 :RAW-TEXT
  "upstreams")
 (:VAR MV7422 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7413 MV7414))
 (:VAR MV7413 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7414 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
829: "Which drugs target CXCL8?"

                    SOURCE-START
e8    TARGET        1 "Which drugs target CXCL8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target CXCL8?"
 (:VAR MV7428 :ISA TARGET :AGENT MV7426 :OBJECT MV7424 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7426 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7424 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
830: "Which drugs target Jak3?"

                    SOURCE-START
e8    TARGET        1 "Which drugs target Jak3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target Jak3?"
 (:VAR MV7433 :ISA TARGET :AGENT MV7431 :OBJECT MV7429 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7431 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7429 :ISA PROTEIN :RAW-TEXT "Jak3" :UID "UP:P52333" :NAME
  "JAK3_HUMAN"))

___________________
831: "What drugs target transcription factors shared by CXCL8 and CXCL10?"

                    SOURCE-START
e19   TARGET        1 "What drugs target transcription factors shared by CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target transcription factors shared by CXCL8 and CXCL10?"
 (:VAR MV7440 :ISA TARGET :AGENT MV7438 :OBJECT MV7434 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7438 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7434 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7441 :RAW-TEXT
  "transcription factors")
 (:VAR MV7441 :ISA SHARE :OBJECT MV7434 :PARTICIPANT MV7444 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7444 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7435 MV7436))
 (:VAR MV7435 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7436 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
832: "What kinases does miR-20a-5p target?"

                    SOURCE-START
e9    TARGET        1 "What kinases does miR-20a-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does miR-20a-5p target?"
 (:VAR MV7451 :ISA TARGET :OBJECT MV7448 :AGENT MV7446 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7448 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7446 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075"))

___________________
833: "What transcription factors does miR-20a-5p target?"

                    SOURCE-START
e10   TARGET        1 "What transcription factors does miR-20a-5p target" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors does miR-20a-5p target?"
 (:VAR MV7457 :ISA TARGET :OBJECT MV7452 :AGENT MV7453 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7452 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7453 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075"))

___________________
834: "What kinases are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "What kinases are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV7468 :ISA COPULAR-PREDICATION :ITEM MV7462 :VALUE MV7458 :PREDICATE
  MV7463)
 (:VAR MV7462 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7458 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV7460 :ALTERNATIVE MV7459)
 (:VAR MV7460 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV7459 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV7463 :ISA BE :PRESENT "PRESENT"))

___________________
835: "What drugs target fakeprotein?"

                    SOURCE-START
e7    TARGET        1 "What drugs target fakeprotein" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target fakeprotein?"
 (:VAR MV7472 :ISA TARGET :AGENT MV7470 :OBJECT MV7473 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7470 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7473 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
836: "Which kinases are in the FAKE signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the FAKE signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the FAKE signaling pathway?"
 (:VAR MV7484 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7476 :VALUE MV7483 :PREP
  "IN" :PREDICATE MV7477)
 (:VAR MV7476 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7483 :ISA KINASE :CONTEXT-OR-IN-PATHWAY MV7474 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "kinases")
 (:VAR MV7474 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV7480
  :RAW-TEXT "signaling pathway")
 (:VAR MV7480 :ISA BIO-ENTITY :NAME "FAKE")
 (:VAR MV7477 :ISA BE :PRESENT "PRESENT"))

___________________
837: "What are the mutations of PTEN in fictional cancer?"

                    SOURCE-START
e19   BE            1 "What are the mutations of PTEN in fictional cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in fictional cancer?"
 (:VAR MV7487 :ISA BE :SUBJECT MV7486 :PREDICATE MV7489 :PRESENT "PRESENT")
 (:VAR MV7486 :ISA WHAT)
 (:VAR MV7489 :ISA MUTATION :OBJECT MV7491 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV7491 :ISA PROTEIN :CONTEXT MV7494 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV7494 :ISA CANCER :PREDICATION MV7493) (:VAR MV7493 :ISA FICTIONAL))

___________________
838: "What are the mutations of PTEN in liver cancer?"

                    SOURCE-START
e19   BE            1 "What are the mutations of PTEN in liver cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in liver cancer?"
 (:VAR MV7498 :ISA BE :SUBJECT MV7497 :PREDICATE MV7500 :PRESENT "PRESENT")
 (:VAR MV7497 :ISA WHAT)
 (:VAR MV7500 :ISA MUTATION :OBJECT MV7502 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV7502 :ISA PROTEIN :CONTEXT MV7505 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV7505 :ISA CANCER :ORGAN MV7504) (:VAR MV7504 :ISA LIVER))

___________________
839: "Remove the fact that ELk1 transcribes FAKE in the model."

                    SOURCE-START
e23   REMOVE        1 "Remove the fact that ELk1 transcribes FAKE in the model" 12
                    PERIOD
                    END-OF-SOURCE
("Remove the fact that ELk1 transcribes FAKE in the model."
 (:VAR MV7509 :ISA REMOVE :OBJECT MV7519 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7519 :ISA FACT :STATEMENT MV7513 :HAS-DETERMINER "THE")
 (:VAR MV7513 :ISA TRANSCRIBE :AGENT MV7508 :OBJECT MV7514 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7508 :ISA PROTEIN :RAW-TEXT "ELk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7514 :ISA BIO-ENTITY :INFO-CONTEXT MV7517 :NAME "FAKE")
 (:VAR MV7517 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
840: "ELK1 transcribes FOS"

                    SOURCE-START
e5    TRANSCRIBE    1 "ELK1 transcribes FOS" 5
                    END-OF-SOURCE
("ELK1 transcribes FOS"
 (:VAR MV7521 :ISA TRANSCRIBE :AGENT MV7520 :OBJECT MV7522 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7520 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7522 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
841: "Remove the fact that ELK1 transcribes FOS in the model."

                    SOURCE-START
e23   REMOVE        1 "Remove the fact that ELK1 transcribes FOS in the model" 12
                    PERIOD
                    END-OF-SOURCE
("Remove the fact that ELK1 transcribes FOS in the model."
 (:VAR MV7524 :ISA REMOVE :OBJECT MV7534 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7534 :ISA FACT :STATEMENT MV7528 :HAS-DETERMINER "THE")
 (:VAR MV7528 :ISA TRANSCRIBE :AGENT MV7523 :OBJECT MV7529 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7523 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7529 :ISA PROTEIN :INFO-CONTEXT MV7532 :RAW-TEXT "FOS" :UID
  "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV7532 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
842: "What transcription factors are shared by CXCL8 and FAKE10?"

                    SOURCE-START
e19   SHARE         1 "What transcription factors are shared by CXCL8 and FAKE10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8 and FAKE10?"
 (:VAR MV7547 :ISA SHARE :OBJECT MV7535 :PARTICIPANT MV7546 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV7535 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7546 :ISA COLLECTION :RAW-TEXT "CXCL8 and FAKE10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7536 MV7545))
 (:VAR MV7536 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7545 :ISA BIO-ENTITY :NAME "FAKE10"))

___________________
843: "What transcription factors are shared by CXCL8 and CXCL10?"

                    SOURCE-START
e17   SHARE         1 "What transcription factors are shared by CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8 and CXCL10?"
 (:VAR MV7558 :ISA SHARE :OBJECT MV7549 :PARTICIPANT MV7557 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV7549 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7557 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7550 MV7551))
 (:VAR MV7550 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7551 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
844: "What databases do you use?"

                    SOURCE-START
e8    BIO-USE       1 "What databases do you use" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What databases do you use?"
 (:VAR MV7565 :ISA BIO-USE :OBJECT MV7561 :AGENT MV7563 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV7561 :ISA DATABASE :HAS-DETERMINER "WHAT")
 (:VAR MV7563 :ISA INTERLOCUTOR :NAME "hearer"))

___________________
845: "What is the MSA?"

                    SOURCE-START
e7    BE            1 "What is the MSA" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the MSA?"
 (:VAR MV7567 :ISA BE :SUBJECT MV7566 :PREDICATE MV7569 :PRESENT "PRESENT")
 (:VAR MV7566 :ISA WHAT)
 (:VAR MV7569 :ISA PROTEIN :HAS-DETERMINER "THE" :RAW-TEXT "MSA" :UID
  "UP:Q9FIB6" :NAME "PS12A_ARATH"))

___________________
846: "What tissues can I ask about?"

                    SOURCE-START
e11   ASK           1 "What tissues can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What tissues can I ask about?"
 (:VAR MV7578 :ISA ASK :PATIENT MV7571 :MODAL MV7572 :AGENT MV7573 :PRESENT
  "PRESENT")
 (:VAR MV7571 :ISA TISSUE :HAS-DETERMINER "WHAT") (:VAR MV7572 :ISA CAN)
 (:VAR MV7573 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
847: "What cancers can I ask about?"

                    SOURCE-START
e11   ASK           1 "What cancers can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What cancers can I ask about?"
 (:VAR MV7587 :ISA ASK :PATIENT MV7580 :MODAL MV7581 :AGENT MV7582 :PRESENT
  "PRESENT")
 (:VAR MV7580 :ISA CANCER :HAS-DETERMINER "WHAT") (:VAR MV7581 :ISA CAN)
 (:VAR MV7582 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
848: "What mechanisms can I ask about?"

                    SOURCE-START
e11   ASK           1 "What mechanisms can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What mechanisms can I ask about?"
 (:VAR MV7596 :ISA ASK :PATIENT MV7589 :MODAL MV7590 :AGENT MV7591 :PRESENT
  "PRESENT")
 (:VAR MV7589 :ISA BIO-MECHANISM :HAS-DETERMINER "WHAT") (:VAR MV7590 :ISA CAN)
 (:VAR MV7591 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
849: "What does STAT3 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does STAT3 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 regulate?"
 (:VAR MV7600 :ISA REGULATE :OBJECT MV7598 :AGENT MV7597 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7598 :ISA WHAT)
 (:VAR MV7597 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
850: "Which of these are kinases?"

                    SOURCE-START
e9    BE            1 "Which of these are kinases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are kinases?"
 (:VAR MV7604 :ISA BE :SUBJECT MV7603 :PREDICATE MV7605 :PRESENT "PRESENT")
 (:VAR MV7603 :ISA THESE :QUANTIFIER MV7601 :WORD "these")
 (:VAR MV7601 :ISA WHICH) (:VAR MV7605 :ISA KINASE :RAW-TEXT "kinases"))

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
 (:VAR MV7631 :ISA TARGET :AGENT MV7629 :OBJECT MV7627 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7629 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "microRNAs")
 (:VAR MV7627 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
855: "Which of these target SMAD2?"

                    SOURCE-START
e11   PROTEIN       1 "Which of these target SMAD2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these target SMAD2?"
 (:VAR MV7632 :ISA PROTEIN :QUANTIFIER MV7633 :HAS-DETERMINER "THESE" :MODIFIER
  MV7636 :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN")
 (:VAR MV7633 :ISA WHICH) (:VAR MV7636 :ISA TARGET-PROTEIN :RAW-TEXT "target"))

___________________
856: "Do any of these regulate IL2?"

                    SOURCE-START
e14   REGULATE      1 "Do any of these regulate IL2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do any of these regulate IL2?"
 (:VAR MV7647 :ISA POLAR-QUESTION :STATEMENT MV7645)
 (:VAR MV7645 :ISA REGULATE :AGENT-OR-CAUSE MV7643 :OBJECT MV7639 :RAW-TEXT
  "regulate")
 (:VAR MV7643 :ISA THESE :QUANTIFIER MV7641 :WORD "these")
 (:VAR MV7641 :ISA ANY :WORD "any")
 (:VAR MV7639 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
857: "What regulates STAT3?"

                    SOURCE-START
e5    REGULATE      1 "What regulates STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates STAT3?"
 (:VAR MV7650 :ISA REGULATE :AGENT-OR-CAUSE MV7649 :OBJECT MV7648 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7649 :ISA WHAT)
 (:VAR MV7648 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
858: "What pathways involve these?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve these" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve these?"
 (:VAR MV7653 :ISA INVOLVE :THEME MV7652 :THEME MV7654 :PRESENT "PRESENT")
 (:VAR MV7652 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7654 :ISA THESE :WORD "these"))

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
 (:VAR MV7664 :ISA BE :SUBJECT MV7663 :PREDICATE MV7670 :PRESENT "PRESENT")
 (:VAR MV7663 :ISA WHAT)
 (:VAR MV7670 :ISA LOCATION-OF :THEME MV7665 :PREDICATION MV7668 :MODIFIER
  MV7669)
 (:VAR MV7665 :ISA PRONOUN/PLURAL :WORD "their")
 (:VAR MV7668 :ISA LIKELY :COMPARATIVE MV7666)
 (:VAR MV7666 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV7669 :ISA CELLULAR :NAME "cellular"))

___________________
861: "Is ERK1 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is ERK1 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK1 a transcription factor?"
 (:VAR MV7675 :ISA POLAR-QUESTION :STATEMENT MV7673)
 (:VAR MV7673 :ISA BE :SUBJECT MV7671 :PREDICATE MV7672)
 (:VAR MV7671 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN")
 (:VAR MV7672 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
862: "Is it a kinase?"

                    SOURCE-START
e9    BE            1 "Is it a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is it a kinase?" (:VAR MV7680 :ISA POLAR-QUESTION :STATEMENT MV7676)
 (:VAR MV7676 :ISA BE :SUBJECT MV7677 :PREDICATE MV7679)
 (:VAR MV7677 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV7679 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
863: "What is PLX-4720?"

                    SOURCE-START
e5    BE            1 "What is PLX-4720" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What is PLX-4720?"
 (:VAR MV7683 :ISA BE :SUBJECT MV7682 :PREDICATE MV7681 :PRESENT "PRESENT")
 (:VAR MV7682 :ISA WHAT)
 (:VAR MV7681 :ISA MOLECULE :RAW-TEXT "PLX-4720" :NAME "plx-4720" :UID
  "PCID:24180719"))

___________________
864: "What does it target?"

                    SOURCE-START
e7    TARGET        1 "What does it target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it target?"
 (:VAR MV7688 :ISA TARGET :OBJECT MV7684 :AGENT-OR-CAUSE MV7686 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV7684 :ISA WHAT) (:VAR MV7686 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
865: "What genes does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does STAT3 regulate?"
 (:VAR MV7693 :ISA REGULATE :OBJECT MV7691 :AGENT MV7689 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7691 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7689 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
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
 (:VAR MV7701 :ISA BE :SUBJECT MV7700 :PREDICATE MV7703 :PRESENT "PRESENT")
 (:VAR MV7700 :ISA WHAT)
 (:VAR MV7703 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV7699 :HAS-DETERMINER "THE"
  :RAW-TEXT "targets")
 (:VAR MV7699 :ISA MOLECULE :RAW-TEXT "PLX-4720" :NAME "plx-4720" :UID
  "PCID:24180719"))

___________________
868: "Does it target BRAF?"

                    SOURCE-START
e10   TARGET        1 "Does it target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does it target BRAF?" (:VAR MV7713 :ISA POLAR-QUESTION :STATEMENT MV7712)
 (:VAR MV7712 :ISA TARGET :AGENT-OR-CAUSE MV7708 :OBJECT MV7711 :RAW-TEXT
  "target")
 (:VAR MV7708 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV7711 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
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
 (:VAR MV7725 :ISA BIO-ACTIVATE :AGENT MV7723 :OBJECT MV7724 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7723 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV7724 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
871: "I want to find out how Jak1 activates IL2"

                    SOURCE-START
e23   WANT          1 "I want to find out how Jak1 activates IL2" 12
                    END-OF-SOURCE
("I want to find out how Jak1 activates IL2"
 (:VAR MV7731 :ISA WANT :AGENT MV7728 :THEME MV7741 :PRESENT "PRESENT")
 (:VAR MV7728 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7741 :ISA FIND-OUT :AGENT MV7728 :STATEMENT MV7738)
 (:VAR MV7728 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7738 :ISA WH-QUESTION :STATEMENT MV7737 :VAR NIL :WH HOW)
 (:VAR MV7737 :ISA BIO-ACTIVATE :AGENT MV7726 :OBJECT MV7727 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7726 :ISA PROTEIN :RAW-TEXT "Jak1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV7727 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
872: "I want to find out how ERBB3 activates JUN in SKBR3 cells."

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    PERIOD
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells."
 (:VAR MV7747 :ISA WANT :AGENT MV7744 :THEME MV7761 :PRESENT "PRESENT")
 (:VAR MV7744 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7761 :ISA FIND-OUT :AGENT MV7744 :STATEMENT MV7758)
 (:VAR MV7744 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7758 :ISA WH-QUESTION :STATEMENT MV7753 :VAR NIL :WH HOW)
 (:VAR MV7753 :ISA BIO-ACTIVATE :AGENT MV7742 :OBJECT MV7754 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7742 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME
  "ERBB3_HUMAN")
 (:VAR MV7754 :ISA PROTEIN :CELL-TYPE MV7756 :RAW-TEXT "JUN" :UID "UP:P05412"
  :NAME "JUN_HUMAN")
 (:VAR MV7756 :ISA CELL-TYPE :CELL-LINE MV7743)
 (:VAR MV7743 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
873: "Let's build a model."

                    SOURCE-START
e8    EXPLICIT-SUGGESTION 1 "Let's build a model" 7
                    PERIOD
                    END-OF-SOURCE
("Let's build a model."
 (:VAR MV7766 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV7763 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV7763 :ISA BUILD :ARTIFACT MV7765 :PRESENT "PRESENT")
 (:VAR MV7765 :ISA MODEL :HAS-DETERMINER "A"))

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
 (:VAR MV7776 :ISA REGULATE :AGENT MV7775 :OBJECT MV7773 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7775 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7773 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
876: "What positively regulates IL2?"

                    SOURCE-START
e6    UPREGULATE    1 "What positively regulates IL2" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What positively regulates IL2?"
 (:VAR MV7777 :ISA UPREGULATE :AGENT-OR-CAUSE MV7779 :OBJECT MV7778 :PRESENT
  "PRESENT" :RAW-TEXT "positively regulates")
 (:VAR MV7779 :ISA WHAT)
 (:VAR MV7778 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
877: "What can have the effect of activation on STAT3? "

                    SOURCE-START
e21   HAVE          1 "What can have the effect of activation on STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What can have the effect of activation on STAT3?"
 (:VAR MV7783 :ISA HAVE :POSSESSOR MV7781 :THING-POSSESSED MV7785 :MODAL
  MV7782)
 (:VAR MV7781 :ISA WHAT)
 (:VAR MV7785 :ISA EFFECT :OBJECT MV7780 :AFFECTED-PROCESS MV7788
  :HAS-DETERMINER "THE" :RAW-TEXT "effect")
 (:VAR MV7780 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7788 :ISA BIO-ACTIVATE :RAW-TEXT "activation") (:VAR MV7782 :ISA CAN))

___________________
878: "Are there any drugs for IL10?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs for IL10" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for IL10?"
 (:VAR MV7799 :ISA THERE-EXISTS :VALUE MV7797 :PREDICATE MV7794)
 (:VAR MV7797 :ISA DRUG :TARGET MV7792 :QUANTIFIER MV7796 :RAW-TEXT "drugs")
 (:VAR MV7792 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7796 :ISA ANY :WORD "any") (:VAR MV7794 :ISA SYNTACTIC-THERE))

___________________
879: "Which tissues express STAT3?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Which tissues express STAT3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which tissues express STAT3?"
 (:VAR MV7804 :ISA GENE-TRANSCRIPT-EXPRESS :AGENT MV7803 :OBJECT MV7801
  :PRESENT "PRESENT" :RAW-TEXT "express")
 (:VAR MV7803 :ISA TISSUE :HAS-DETERMINER "WHICH")
 (:VAR MV7801 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
880: "How does MEK1 regulate ERK1?"

                    SOURCE-START
e9    REGULATE      1 "How does MEK1 regulate ERK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MEK1 regulate ERK1?"
 (:VAR MV7809 :ISA REGULATE :MANNER MV7807 :AGENT MV7805 :OBJECT MV7806
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV7807 :ISA HOW)
 (:VAR MV7805 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7806 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
881: "What are transcription factors that bind the IL15 and IL2 genes?"

                    SOURCE-START
e23   BE            1 "What are transcription factors that bind the IL15 and IL2 genes" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What are transcription factors that bind the IL15 and IL2 genes?"
 (:VAR MV7814 :ISA BE :SUBJECT MV7813 :PREDICATE MV7810 :PRESENT "PRESENT")
 (:VAR MV7813 :ISA WHAT)
 (:VAR MV7810 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7816 :RAW-TEXT
  "transcription factors")
 (:VAR MV7816 :ISA BINDING :BINDER MV7810 :THAT-REL T :DIRECT-BINDEE MV7819
  :PRESENT "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7819 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV7820 :RAW-TEXT
  "genes")
 (:VAR MV7820 :ISA COLLECTION :RAW-TEXT "IL15 and IL2" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV7811 MV7812))
 (:VAR MV7811 :ISA PROTEIN :RAW-TEXT "IL15" :UID "UP:P40933" :NAME
  "IL15_HUMAN")
 (:VAR MV7812 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
882: "What kinases regulate the IL15 and IL2?"

                    SOURCE-START
e14   REGULATE      1 "What kinases regulate the IL15 and IL2" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases regulate the IL15 and IL2?"
 (:VAR MV7825 :ISA REGULATE :AGENT MV7824 :OBJECT MV7828 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7824 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7828 :ISA COLLECTION :HAS-DETERMINER "THE" :RAW-TEXT "IL15 and IL2"
  :TYPE PROTEIN :NUMBER 2 :ITEMS (MV7821 MV7822))
 (:VAR MV7821 :ISA PROTEIN :RAW-TEXT "IL15" :UID "UP:P40933" :NAME
  "IL15_HUMAN")
 (:VAR MV7822 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

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
 (:VAR MV7853 :ISA BE :SUBJECT MV7852 :PREDICATE MV7851 :PRESENT "PRESENT")
 (:VAR MV7852 :ISA WHAT)
 (:VAR MV7851 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN"))

___________________
886: "Is MAP3K7 a protein?"

                    SOURCE-START
e9    BE            1 "Is MAP3K7 a protein" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAP3K7 a protein?" (:VAR MV7858 :ISA POLAR-QUESTION :STATEMENT MV7855)
 (:VAR MV7855 :ISA BE :SUBJECT MV7854 :PREDICATE MV7857)
 (:VAR MV7854 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV7857 :ISA PROTEIN :HAS-DETERMINER "A" :RAW-TEXT "protein"))

___________________
887: "What does SMAD2 transcribe?"

                    SOURCE-START
e6    TRANSCRIBE    1 "What does SMAD2 transcribe" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does SMAD2 transcribe?"
 (:VAR MV7862 :ISA TRANSCRIBE :OBJECT MV7860 :AGENT MV7859 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV7860 :ISA WHAT)
 (:VAR MV7859 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
888: "Are there drugs for IL10?"

                    SOURCE-START
e12   THERE-EXISTS  1 "Are there drugs for IL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there drugs for IL10?"
 (:VAR MV7869 :ISA THERE-EXISTS :VALUE MV7867 :PREDICATE MV7865)
 (:VAR MV7867 :ISA DRUG :TARGET MV7863 :RAW-TEXT "drugs")
 (:VAR MV7863 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7865 :ISA SYNTACTIC-THERE))

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
