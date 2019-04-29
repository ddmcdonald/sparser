

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
 (:VAR MV84 :ISA CANCER :UID "TS-1223")
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
 (:VAR MV95 :ISA CANCER :UID "TS-1223")
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
 (:VAR MV111 :ISA CANCER :UID "TS-0591") (:VAR MV114 :ISA SOME :WORD "some"))

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
 (:VAR MV122 :ISA CANCER :UID "TS-0591"))

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
e15   EXPLICIT-SUGGESTION 1 "Let's show AKT1 on the top" 10
                    PERIOD
                    END-OF-SOURCE
("Let's show AKT1 on the top."
 (:VAR MV869 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV863 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV863 :ISA SHOW :AT-RELATIVE-LOCATION MV866 :STATEMENT-OR-THEME MV862
  :PRESENT "PRESENT")
 (:VAR MV866 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT 4
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV862 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
99: "Does ELK1 decrease FOS in the model?"

                    SOURCE-START
e18   DECREASE      1 "Does ELK1 decrease FOS in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ELK1 decrease FOS in the model?"
 (:VAR MV880 :ISA POLAR-QUESTION :STATEMENT MV878)
 (:VAR MV878 :ISA DECREASE :AGENT MV870 :OBJECT MV874 :RAW-TEXT "decrease")
 (:VAR MV870 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV874 :ISA PROTEIN :INFO-CONTEXT MV877 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV877 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
100: "Does ELK1 decrease the amount of FOS in the model?"

                    SOURCE-START
e26   DECREASE      1 "Does ELK1 decrease the amount of FOS in the model" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ELK1 decrease the amount of FOS in the model?"
 (:VAR MV895 :ISA POLAR-QUESTION :STATEMENT MV892)
 (:VAR MV892 :ISA DECREASE :AGENT MV881 :AFFECTED-PROCESS-OR-OBJECT MV886
  :RAW-TEXT "decrease")
 (:VAR MV881 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV886 :ISA BIO-AMOUNT :MEASURED-ITEM MV888 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV888 :ISA PROTEIN :INFO-CONTEXT MV891 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV891 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
101: "Does FOS decrease ELK1 in the model?"

                    SOURCE-START
e18   DECREASE      1 "Does FOS decrease ELK1 in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS decrease ELK1 in the model?"
 (:VAR MV906 :ISA POLAR-QUESTION :STATEMENT MV904)
 (:VAR MV904 :ISA DECREASE :AGENT MV898 :OBJECT MV896 :RAW-TEXT "decrease")
 (:VAR MV898 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV896 :ISA PROTEIN :INFO-CONTEXT MV903 :RAW-TEXT "ELK1" :UID "UP:P19419"
  :NAME "ELK1_HUMAN")
 (:VAR MV903 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
102: "Does FOS vanish if we increase the amount of ELK1 10 fold?"

                    SOURCE-START
e34   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS vanish if we increase the amount of ELK1 10 fold?"
 (:VAR MV927 :ISA POLAR-QUESTION :STATEMENT MV926)
 (:VAR MV926 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV924 :EVENT MV921)
 (:VAR MV924 :ISA WH-QUESTION :STATEMENT MV922 :WH IF)
 (:VAR MV922 :ISA INCREASE :AGENT-OR-CAUSE MV912 :ADVERB MV920
  :AFFECTED-PROCESS-OR-OBJECT MV916 :RAW-TEXT "increase")
 (:VAR MV912 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV920 :ISA N-FOLD :NUMBER MV919) (:VAR MV919 :ISA NUMBER :VALUE 10)
 (:VAR MV916 :ISA BIO-AMOUNT :MEASURED-ITEM MV907 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV907 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV921 :ISA VANISH :AGENT MV909 :RAW-TEXT "vanish")
 (:VAR MV909 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
103: "Does FOS vanish if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e37   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 by 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV950 :ISA POLAR-QUESTION :STATEMENT MV949)
 (:VAR MV949 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV947 :EVENT MV943)
 (:VAR MV947 :ISA WH-QUESTION :STATEMENT MV944 :WH IF)
 (:VAR MV944 :ISA INCREASE :AGENT-OR-CAUSE MV933 :MULTIPLIER MV942
  :AFFECTED-PROCESS-OR-OBJECT MV937 :RAW-TEXT "increase")
 (:VAR MV933 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV942 :ISA N-FOLD :NUMBER MV941) (:VAR MV941 :ISA NUMBER :VALUE 10)
 (:VAR MV937 :ISA BIO-AMOUNT :MEASURED-ITEM MV928 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV928 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV943 :ISA VANISH :AGENT MV930 :RAW-TEXT "vanish")
 (:VAR MV930 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
104: "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
 (:VAR MV970 :ISA POLAR-QUESTION :STATEMENT MV969)
 (:VAR MV969 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV967 :EVENT MV964)
 (:VAR MV967 :ISA WH-QUESTION :STATEMENT MV965 :WH IF)
 (:VAR MV965 :ISA INCREASE :AGENT-OR-CAUSE MV957 :MULTIPLIER MV963 :OBJECT
  MV952 :RAW-TEXT "increase")
 (:VAR MV957 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV963 :ISA N-FOLD :NUMBER MV962) (:VAR MV962 :ISA NUMBER :VALUE 10)
 (:VAR MV952 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV964 :ISA VANISH :AGENT MV951 :RAW-TEXT "vanish")
 (:VAR MV951 :ISA PROTEIN :PREDICATION MV954 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV954 :ISA PHOSPHORYLATE :SUBSTRATE MV951 :RAW-TEXT "phosphorylated"))

___________________
105: "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e41   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV994 :ISA POLAR-QUESTION :STATEMENT MV993)
 (:VAR MV993 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV991 :EVENT MV987)
 (:VAR MV991 :ISA WH-QUESTION :STATEMENT MV988 :WH IF)
 (:VAR MV988 :ISA INCREASE :AGENT-OR-CAUSE MV977 :MULTIPLIER MV986
  :AFFECTED-PROCESS-OR-OBJECT MV981 :RAW-TEXT "increase")
 (:VAR MV977 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV986 :ISA N-FOLD :NUMBER MV985) (:VAR MV985 :ISA NUMBER :VALUE 10)
 (:VAR MV981 :ISA BIO-AMOUNT :MEASURED-ITEM MV972 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV972 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV987 :ISA VANISH :AGENT MV971 :RAW-TEXT "vanish")
 (:VAR MV971 :ISA PROTEIN :PREDICATION MV974 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV974 :ISA PHOSPHORYLATE :SUBSTRATE MV971 :RAW-TEXT "phosphorylated"))

___________________
106: "Does the amount of phosphorylated MAPK1 ever increase?"

                    SOURCE-START
e21   INCREASE      1 "Does the amount of phosphorylated MAPK1 ever increase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 ever increase?"
 (:VAR MV1006 :ISA POLAR-QUESTION :STATEMENT MV1004)
 (:VAR MV1004 :ISA INCREASE :CAUSE MV998 :ADVERB MV1001 :RAW-TEXT "increase")
 (:VAR MV998 :ISA BIO-AMOUNT :MEASURED-ITEM MV995 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV995 :ISA PROTEIN :PREDICATION MV1000 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1000 :ISA PHOSPHORYLATE :SUBSTRATE MV995 :RAW-TEXT "phosphorylated")
 (:VAR MV1001 :ISA EVER :NAME "ever"))

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
 (:VAR MV1028 :ISA POLAR-QUESTION :STATEMENT MV1027)
 (:VAR MV1027 :ISA SUSTAINED :PARTICIPANT MV1023 :PAST "PAST")
 (:VAR MV1023 :ISA PROTEIN :PREDICATION MV1025 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1025 :ISA BINDING :DIRECT-BINDEE MV1023 :BINDER MV1022 :RAW-TEXT
  "bound")
 (:VAR MV1022 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
110: "Is phosphorylated MAPK1 always high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 always high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 always high?"
 (:VAR MV1035 :ISA POLAR-QUESTION :STATEMENT MV1034)
 (:VAR MV1034 :ISA COPULAR-PREDICATION :ITEM MV1029 :VALUE MV1033 :PREDICATE
  MV1030)
 (:VAR MV1029 :ISA PROTEIN :PREDICATION MV1031 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1031 :ISA PHOSPHORYLATE :SUBSTRATE MV1029 :RAW-TEXT "phosphorylated")
 (:VAR MV1033 :ISA HIGH :ADVERB MV1032)
 (:VAR MV1032 :ISA ALWAYS :NAME "always") (:VAR MV1030 :ISA BE))

___________________
111: "Is phosphorylated MAPK1 eventually high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 eventually high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 eventually high?"
 (:VAR MV1042 :ISA POLAR-QUESTION :STATEMENT MV1041)
 (:VAR MV1041 :ISA COPULAR-PREDICATION :ITEM MV1036 :VALUE MV1040 :PREDICATE
  MV1037)
 (:VAR MV1036 :ISA PROTEIN :PREDICATION MV1038 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1038 :ISA PHOSPHORYLATE :SUBSTRATE MV1036 :RAW-TEXT "phosphorylated")
 (:VAR MV1040 :ISA HIGH :ADVERB MV1039)
 (:VAR MV1039 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1037 :ISA BE))

___________________
112: "Is phosphorylated MAPK1 ever high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 ever high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 ever high?"
 (:VAR MV1049 :ISA POLAR-QUESTION :STATEMENT MV1048)
 (:VAR MV1048 :ISA COPULAR-PREDICATION :ITEM MV1043 :VALUE MV1047 :PREDICATE
  MV1044)
 (:VAR MV1043 :ISA PROTEIN :PREDICATION MV1045 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1045 :ISA PHOSPHORYLATE :SUBSTRATE MV1043 :RAW-TEXT "phosphorylated")
 (:VAR MV1047 :ISA HIGH :ADVERB MV1046) (:VAR MV1046 :ISA EVER :NAME "ever")
 (:VAR MV1044 :ISA BE))

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
 (:VAR MV1065 :ISA POLAR-QUESTION :STATEMENT MV1064)
 (:VAR MV1064 :ISA COPULAR-PREDICATION :ITEM MV1060 :VALUE MV1063 :PREDICATE
  MV1061)
 (:VAR MV1060 :ISA PROTEIN :PREDICATION MV1062 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1062 :ISA PHOSPHORYLATE :SUBSTRATE MV1060 :RAW-TEXT "phosphorylated")
 (:VAR MV1063 :ISA HIGH) (:VAR MV1061 :ISA BE))

___________________
115: "Is phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e20   SUSTAINED     1 "Is phosphorylated MAPK1 sustained at a high level" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1077 :ISA POLAR-QUESTION :STATEMENT MV1076)
 (:VAR MV1076 :ISA SUSTAINED :PARTICIPANT MV1066 :LEVEL MV1074 :PAST "PAST")
 (:VAR MV1066 :ISA PROTEIN :PREDICATION MV1068 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1068 :ISA PHOSPHORYLATE :SUBSTRATE MV1066 :RAW-TEXT "phosphorylated")
 (:VAR MV1074 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1073 :RAW-TEXT
  "level")
 (:VAR MV1073 :ISA HIGH))

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
e33   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 10 fold?"
 (:VAR MV1130 :ISA POLAR-QUESTION :STATEMENT MV1129)
 (:VAR MV1129 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1125 :EVENT MV1127)
 (:VAR MV1125 :ISA WH-QUESTION :STATEMENT MV1121 :WH IF)
 (:VAR MV1121 :ISA INCREASE :AGENT-OR-CAUSE MV1119 :ADVERB MV1124 :OBJECT
  MV1110 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1119 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1124 :ISA N-FOLD :NUMBER MV1123) (:VAR MV1123 :ISA NUMBER :VALUE 10)
 (:VAR MV1110 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1127 :ISA COPULAR-PREDICATION :ITEM MV1113 :VALUE MV1117 :PREDICATE
  MV1111)
 (:VAR MV1113 :ISA BIO-AMOUNT :MEASURED-ITEM MV1115 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1115 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1117 :ISA LOW :ADVERB MV1116) (:VAR MV1116 :ISA ALWAYS :NAME "always")
 (:VAR MV1111 :ISA BE))

___________________
121: "Is the amount of FOS always low if we increase ELK1 by 100 fold?"

                    SOURCE-START
e36   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 by 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
 (:VAR MV1153 :ISA POLAR-QUESTION :STATEMENT MV1152)
 (:VAR MV1152 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1148 :EVENT MV1150)
 (:VAR MV1148 :ISA WH-QUESTION :STATEMENT MV1142 :WH IF)
 (:VAR MV1142 :ISA INCREASE :AGENT-OR-CAUSE MV1140 :MULTIPLIER MV1146 :OBJECT
  MV1131 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1140 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1146 :ISA N-FOLD :NUMBER MV1145) (:VAR MV1145 :ISA NUMBER :VALUE 100)
 (:VAR MV1131 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1150 :ISA COPULAR-PREDICATION :ITEM MV1134 :VALUE MV1138 :PREDICATE
  MV1132)
 (:VAR MV1134 :ISA BIO-AMOUNT :MEASURED-ITEM MV1136 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1136 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1138 :ISA LOW :ADVERB MV1137) (:VAR MV1137 :ISA ALWAYS :NAME "always")
 (:VAR MV1132 :ISA BE))

___________________
122: "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"

                    SOURCE-START
e41   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
 (:VAR MV1178 :ISA POLAR-QUESTION :STATEMENT MV1177)
 (:VAR MV1177 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1173 :EVENT MV1175)
 (:VAR MV1173 :ISA WH-QUESTION :STATEMENT MV1165 :WH IF)
 (:VAR MV1165 :ISA INCREASE :AGENT-OR-CAUSE MV1163 :ADVERB MV1171
  :AFFECTED-PROCESS-OR-OBJECT MV1167 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1163 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1171 :ISA N-FOLD :NUMBER MV1170) (:VAR MV1170 :ISA NUMBER :VALUE 100)
 (:VAR MV1167 :ISA BIO-AMOUNT :MEASURED-ITEM MV1154 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1154 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1175 :ISA COPULAR-PREDICATION :ITEM MV1157 :VALUE MV1161 :PREDICATE
  MV1155)
 (:VAR MV1157 :ISA BIO-AMOUNT :MEASURED-ITEM MV1159 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1159 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1161 :ISA HIGH :ADVERB MV1160) (:VAR MV1160 :ISA EVER :NAME "ever")
 (:VAR MV1155 :ISA BE))

___________________
123: "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"

                    SOURCE-START
e44   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
 (:VAR MV1205 :ISA POLAR-QUESTION :STATEMENT MV1204)
 (:VAR MV1204 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1200 :EVENT MV1202)
 (:VAR MV1200 :ISA WH-QUESTION :STATEMENT MV1190 :WH IF)
 (:VAR MV1190 :ISA INCREASE :AGENT-OR-CAUSE MV1188 :MULTIPLIER MV1197
  :AFFECTED-PROCESS-OR-OBJECT MV1192 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1188 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1197 :ISA N-FOLD :NUMBER MV1196) (:VAR MV1196 :ISA NUMBER :VALUE 100)
 (:VAR MV1192 :ISA BIO-AMOUNT :MEASURED-ITEM MV1179 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1179 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1202 :ISA COPULAR-PREDICATION :ITEM MV1182 :VALUE MV1186 :PREDICATE
  MV1180)
 (:VAR MV1182 :ISA BIO-AMOUNT :MEASURED-ITEM MV1184 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1184 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1186 :ISA HIGH :ADVERB MV1185) (:VAR MV1185 :ISA EVER :NAME "ever")
 (:VAR MV1180 :ISA BE))

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
 (:VAR MV1226 :ISA POLAR-QUESTION :STATEMENT MV1225)
 (:VAR MV1225 :ISA COPULAR-PREDICATION :ITEM MV1219 :VALUE MV1223 :PREDICATE
  MV1217)
 (:VAR MV1219 :ISA BIO-AMOUNT :MEASURED-ITEM MV1216 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1216 :ISA PROTEIN :PREDICATION MV1221 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1221 :ISA PHOSPHORYLATE :SUBSTRATE MV1216 :RAW-TEXT "phosphorylated")
 (:VAR MV1223 :ISA HIGH :ADVERB MV1222)
 (:VAR MV1222 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1217 :ISA BE))

___________________
126: "Is the amount of phosphorylated MAPK1 ever high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 ever high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever high?"
 (:VAR MV1237 :ISA POLAR-QUESTION :STATEMENT MV1236)
 (:VAR MV1236 :ISA COPULAR-PREDICATION :ITEM MV1230 :VALUE MV1234 :PREDICATE
  MV1228)
 (:VAR MV1230 :ISA BIO-AMOUNT :MEASURED-ITEM MV1227 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1227 :ISA PROTEIN :PREDICATION MV1232 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1232 :ISA PHOSPHORYLATE :SUBSTRATE MV1227 :RAW-TEXT "phosphorylated")
 (:VAR MV1234 :ISA HIGH :ADVERB MV1233) (:VAR MV1233 :ISA EVER :NAME "ever")
 (:VAR MV1228 :ISA BE))

___________________
127: "Is the amount of phosphorylated MAPK1 ever increasing?"

                    SOURCE-START
e20   INCREASE      1 "Is the amount of phosphorylated MAPK1 ever increasing" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever increasing?"
 (:VAR MV1248 :ISA POLAR-QUESTION :STATEMENT MV1246)
 (:VAR MV1246 :ISA INCREASE :CAUSE MV1241 :ADVERB MV1244 :RAW-TEXT
  "increasing")
 (:VAR MV1241 :ISA BIO-AMOUNT :MEASURED-ITEM MV1238 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1238 :ISA PROTEIN :PREDICATION MV1243 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1243 :ISA PHOSPHORYLATE :SUBSTRATE MV1238 :RAW-TEXT "phosphorylated")
 (:VAR MV1244 :ISA EVER :NAME "ever"))

___________________
128: "Is the amount of phosphorylated MAPK1 high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 high" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 high?"
 (:VAR MV1258 :ISA POLAR-QUESTION :STATEMENT MV1257)
 (:VAR MV1257 :ISA COPULAR-PREDICATION :ITEM MV1252 :VALUE MV1255 :PREDICATE
  MV1250)
 (:VAR MV1252 :ISA BIO-AMOUNT :MEASURED-ITEM MV1249 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1249 :ISA PROTEIN :PREDICATION MV1254 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1254 :ISA PHOSPHORYLATE :SUBSTRATE MV1249 :RAW-TEXT "phosphorylated")
 (:VAR MV1255 :ISA HIGH) (:VAR MV1250 :ISA BE))

___________________
129: "Is the amount of phosphorylated MAPK1 sometimes high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 sometimes high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sometimes high?"
 (:VAR MV1269 :ISA POLAR-QUESTION :STATEMENT MV1268)
 (:VAR MV1268 :ISA COPULAR-PREDICATION :ITEM MV1262 :VALUE MV1266 :PREDICATE
  MV1260)
 (:VAR MV1262 :ISA BIO-AMOUNT :MEASURED-ITEM MV1259 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1259 :ISA PROTEIN :PREDICATION MV1264 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1264 :ISA PHOSPHORYLATE :SUBSTRATE MV1259 :RAW-TEXT "phosphorylated")
 (:VAR MV1266 :ISA HIGH :ADVERB MV1265) (:VAR MV1265 :ISA SOMETIMES)
 (:VAR MV1260 :ISA BE))

___________________
130: "Is the amount of phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e28   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained at a high level" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1285 :ISA POLAR-QUESTION :STATEMENT MV1284)
 (:VAR MV1284 :ISA SUSTAINED :PARTICIPANT MV1273 :LEVEL MV1281 :PAST "PAST")
 (:VAR MV1273 :ISA BIO-AMOUNT :MEASURED-ITEM MV1270 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1270 :ISA PROTEIN :PREDICATION MV1275 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1275 :ISA PHOSPHORYLATE :SUBSTRATE MV1270 :RAW-TEXT "phosphorylated")
 (:VAR MV1281 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1280 :RAW-TEXT
  "level")
 (:VAR MV1280 :ISA HIGH))

___________________
131: "Is the amount of phosphorylated MAPK1 sustained?"

                    SOURCE-START
e17   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained?"
 (:VAR MV1295 :ISA POLAR-QUESTION :STATEMENT MV1293)
 (:VAR MV1293 :ISA SUSTAINED :PARTICIPANT MV1289 :PAST "PAST")
 (:VAR MV1289 :ISA BIO-AMOUNT :MEASURED-ITEM MV1286 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1286 :ISA PROTEIN :PREDICATION MV1291 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1291 :ISA PHOSPHORYLATE :SUBSTRATE MV1286 :RAW-TEXT "phosphorylated"))

___________________
132: "Is the amount of phosphorylated MAPK1 transient?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 transient" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 transient?"
 (:VAR MV1305 :ISA POLAR-QUESTION :STATEMENT MV1304)
 (:VAR MV1304 :ISA COPULAR-PREDICATION :ITEM MV1299 :VALUE MV1302 :PREDICATE
  MV1297)
 (:VAR MV1299 :ISA BIO-AMOUNT :MEASURED-ITEM MV1296 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1296 :ISA PROTEIN :PREDICATION MV1301 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1301 :ISA PHOSPHORYLATE :SUBSTRATE MV1296 :RAW-TEXT "phosphorylated")
 (:VAR MV1302 :ISA TRANSIENT) (:VAR MV1297 :ISA BE))

___________________
133: "Will the amount of phosphorylated MAPK1 be high?"

                    SOURCE-START
e20   COPULAR-PREDICATION 1 "Will the amount of phosphorylated MAPK1 be high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Will the amount of phosphorylated MAPK1 be high?"
 (:VAR MV1316 :ISA POLAR-QUESTION :STATEMENT MV1314)
 (:VAR MV1314 :ISA COPULAR-PREDICATION :ITEM MV1309 :VALUE MV1313 :PREDICATE
  MV1312)
 (:VAR MV1309 :ISA BIO-AMOUNT :MEASURED-ITEM MV1306 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1306 :ISA PROTEIN :PREDICATION MV1311 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1311 :ISA PHOSPHORYLATE :SUBSTRATE MV1306 :RAW-TEXT "phosphorylated")
 (:VAR MV1313 :ISA HIGH) (:VAR MV1312 :ISA BE :MODAL "WILL"))

___________________
134: "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e34   EVENT-RELATION  1 "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
 (:VAR MV1337 :ISA POLAR-QUESTION :STATEMENT MV1336)
 (:VAR MV1336 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1333 :EVENT MV1334)
 (:VAR MV1333 :ISA WH-QUESTION :STATEMENT MV1325 :WH IF)
 (:VAR MV1325 :ISA INCREASE :AGENT-OR-CAUSE MV1323 :ADVERB MV1331
  :AFFECTED-PROCESS-OR-OBJECT MV1327 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1323 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1331 :ISA N-FOLD :NUMBER MV1330) (:VAR MV1330 :ISA NUMBER :VALUE 100)
 (:VAR MV1327 :ISA BIO-AMOUNT :MEASURED-ITEM MV1318 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1318 :ISA MOLECULE :RAW-TEXT "SB525334" :UID "PCID:9967941")
 (:VAR MV1334 :ISA COPULAR-PREDICATION :ITEM MV1317 :VALUE MV1321 :PREDICATE
  MV1319)
 (:VAR MV1317 :ISA PROTEIN :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME
  "TGFR1_HUMAN")
 (:VAR MV1321 :ISA LOW :ADVERB MV1320)
 (:VAR MV1320 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1319 :ISA BE))

___________________
135: "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"

                    SOURCE-START
e39   EVENT-RELATION  1 "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
 (:VAR MV1362 :ISA POLAR-QUESTION :STATEMENT MV1361)
 (:VAR MV1361 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1358 :EVENT MV1359)
 (:VAR MV1358 :ISA WH-QUESTION :STATEMENT MV1355 :WH IF)
 (:VAR MV1355 :ISA INCREASE :AFFECTED-PROCESS-OR-OBJECT MV1346 :MULTIPLIER
  MV1353 :RAW-TEXT "increased")
 (:VAR MV1346 :ISA BIO-AMOUNT :MEASURED-ITEM MV1339 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1339 :ISA MOLECULE :RAW-TEXT "SB525334" :UID "PCID:9967941")
 (:VAR MV1353 :ISA N-FOLD :NUMBER MV1352) (:VAR MV1352 :ISA NUMBER :VALUE 100)
 (:VAR MV1359 :ISA COPULAR-PREDICATION :ITEM MV1338 :VALUE MV1343 :PREDICATE
  MV1340)
 (:VAR MV1338 :ISA PROTEIN :PREDICATION MV1341 :RAW-TEXT "TGFBR1" :UID
  "UP:P36897" :NAME "TGFR1_HUMAN")
 (:VAR MV1341 :ISA ACTIVE) (:VAR MV1343 :ISA LOW :ADVERB MV1342)
 (:VAR MV1342 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1340 :ISA BE))

___________________
136: "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e42   EVENT-RELATION  1 "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
 (:VAR MV1387 :ISA POLAR-QUESTION :STATEMENT MV1386)
 (:VAR MV1386 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1382 :EVENT MV1384)
 (:VAR MV1382 :ISA WH-QUESTION :STATEMENT MV1374 :WH IF)
 (:VAR MV1374 :ISA INCREASE :AGENT-OR-CAUSE MV1372 :ADVERB MV1380
  :AFFECTED-PROCESS-OR-OBJECT MV1376 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1372 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1380 :ISA N-FOLD :NUMBER MV1379) (:VAR MV1379 :ISA NUMBER :VALUE 100)
 (:VAR MV1376 :ISA BIO-AMOUNT :MEASURED-ITEM MV1364 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1364 :ISA MOLECULE :RAW-TEXT "SB525334" :UID "PCID:9967941")
 (:VAR MV1384 :ISA COPULAR-PREDICATION :ITEM MV1367 :VALUE MV1370 :PREDICATE
  MV1365)
 (:VAR MV1367 :ISA BIO-AMOUNT :MEASURED-ITEM MV1363 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1363 :ISA PROTEIN :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME
  "TGFR1_HUMAN")
 (:VAR MV1370 :ISA LOW :ADVERB MV1369)
 (:VAR MV1369 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1365 :ISA BE))

___________________
137: "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"

                    SOURCE-START
e44   EVENT-RELATION  1 "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold" 21
                    END-OF-SOURCE
("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
 (:VAR MV1413 :ISA POLAR-QUESTION :STATEMENT MV1412)
 (:VAR MV1412 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1408 :EVENT MV1410)
 (:VAR MV1408 :ISA WH-QUESTION :STATEMENT MV1400 :WH IF)
 (:VAR MV1400 :ISA INCREASE :AGENT-OR-CAUSE MV1398 :ADVERB MV1406
  :AFFECTED-PROCESS-OR-OBJECT MV1402 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1398 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1406 :ISA N-FOLD :NUMBER MV1405) (:VAR MV1405 :ISA NUMBER :VALUE 100)
 (:VAR MV1402 :ISA BIO-AMOUNT :MEASURED-ITEM MV1389 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1389 :ISA MOLECULE :RAW-TEXT "SB-525334" :UID "PCID:9967941")
 (:VAR MV1410 :ISA COPULAR-PREDICATION :ITEM MV1392 :VALUE MV1396 :PREDICATE
  MV1390)
 (:VAR MV1392 :ISA BIO-AMOUNT :MEASURED-ITEM MV1388 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1388 :ISA PROTEIN :PREDICATION MV1394 :RAW-TEXT "TGFBR1" :UID
  "UP:P36897" :NAME "TGFR1_HUMAN")
 (:VAR MV1394 :ISA ACTIVE) (:VAR MV1396 :ISA LOW :ADVERB MV1395)
 (:VAR MV1395 :ISA ALWAYS :NAME "always") (:VAR MV1390 :ISA BE))

___________________
138: "Let's move AKT1 and MAPK1 into mitochondrion."

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's move AKT1 and MAPK1 into mitochondrion" 12
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 and MAPK1 into mitochondrion."
 (:VAR MV1423 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1417 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1417 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV1420 :THEME
  MV1421 :PRESENT "PRESENT")
 (:VAR MV1420 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173")
 (:VAR MV1421 :ISA COLLECTION :RAW-TEXT "AKT1 and MAPK1" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV1415 MV1416))
 (:VAR MV1415 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1416 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
139: "FEN1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "FEN1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("FEN1 phosphorylates AKT1."
 (:VAR MV1426 :ISA PHOSPHORYLATE :AGENT MV1424 :SUBSTRATE MV1425 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1424 :ISA PROTEIN :RAW-TEXT "FEN1" :UID "UP:P39748" :NAME
  "FEN1_HUMAN")
 (:VAR MV1425 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
140: "Move all into mitochondrion."

                    SOURCE-START
e7    MOVE-SOMETHING-SOMEWHERE  1 "Move all into mitochondrion" 5
                    PERIOD
                    END-OF-SOURCE
("Move all into mitochondrion."
 (:VAR MV1427 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV1430 :THEME
  MV1432 :PRESENT "PRESENT")
 (:VAR MV1430 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173")
 (:VAR MV1432 :ISA ALL :WORD "all"))

___________________
141: "AKT1 phosphorylates MAPK1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("AKT1 phosphorylates MAPK1."
 (:VAR MV1435 :ISA PHOSPHORYLATE :AGENT MV1433 :SUBSTRATE MV1434 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1433 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1434 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
142: "Let's highlight the upstream of phosphorylated MAPK1."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's highlight the upstream of phosphorylated MAPK1" 11
                    PERIOD
                    END-OF-SOURCE
("Let's highlight the upstream of phosphorylated MAPK1."
 (:VAR MV1445 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1438 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1438 :ISA HIGHLIGHT :THEME MV1440 :PRESENT "PRESENT")
 (:VAR MV1440 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1437 :HAS-DETERMINER
  "THE" :RAW-TEXT "upstream")
 (:VAR MV1437 :ISA PROTEIN :PREDICATION MV1443 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1443 :ISA PHOSPHORYLATE :SUBSTRATE MV1437 :RAW-TEXT "phosphorylated"))

___________________
143: "Let's show phosphorylated MAPK1 on the top."

                    SOURCE-START
e19   EXPLICIT-SUGGESTION 1 "Let's show phosphorylated MAPK1 on the top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show phosphorylated MAPK1 on the top."
 (:VAR MV1457 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1448 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1448 :ISA SHOW :STATEMENT-OR-THEME MV1456 :PRESENT "PRESENT")
 (:VAR MV1456 :ISA PROTEIN :PREDICATION MV1455 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1455 :ISA PHOSPHORYLATE :SUBSTRATE MV1452 :SUBSTRATE MV1456 :RAW-TEXT
  "phosphorylated")
 (:VAR MV1452 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT
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
 (:VAR MV1471 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1460 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1460 :ISA SHOW :AT-RELATIVE-LOCATION MV1467 :STATEMENT-OR-THEME MV1462
  :PRESENT "PRESENT")
 (:VAR MV1467 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT
  4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV1462 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV1459 :HAS-DETERMINER
  "THE" :RAW-TEXT "downstream")
 (:VAR MV1459 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
145: "Let's move mitochondrion elements to the top."

                    SOURCE-START
e16   EXPLICIT-SUGGESTION 1 "Let's move mitochondrion elements to the top" 10
                    PERIOD
                    END-OF-SOURCE
("Let's move mitochondrion elements to the top."
 (:VAR MV1481 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1473 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1473 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV1478 :THEME MV1475 :PRESENT
  "PRESENT")
 (:VAR MV1478 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT
  4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV1475 :ISA ELEMENT :MODIFIER MV1474)
 (:VAR MV1474 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME
  "Mitochondrion" :UID "UP:SL-0173"))

___________________
146: "How does BRAF affect MAPK1?"

                    SOURCE-START
e8    AFFECT        1 "How does BRAF affect MAPK1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does BRAF affect MAPK1?"
 (:VAR MV1486 :ISA AFFECT :MANNER MV1483 :AGENT MV1485 :OBJECT MV1482 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1483 :ISA HOW)
 (:VAR MV1485 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1482 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
147: "How does MAPK1 affect BRAF?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect BRAF?"
 (:VAR MV1490 :ISA AFFECT :MANNER MV1488 :AGENT MV1487 :OBJECT MV1491 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1488 :ISA HOW)
 (:VAR MV1487 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1491 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
148: "What is the path between BRAF and MAPK1?"

                    SOURCE-START
e15   BE            1 "What is the path between BRAF and MAPK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the path between BRAF and MAPK1?"
 (:VAR MV1494 :ISA BE :SUBJECT MV1493 :PREDICATE MV1496 :PRESENT "PRESENT")
 (:VAR MV1493 :ISA WHAT)
 (:VAR MV1496 :ISA PATH :ENDPOINTS MV1500 :HAS-DETERMINER "THE")
 (:VAR MV1500 :ISA COLLECTION :RAW-TEXT "BRAF and MAPK1" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV1498 MV1492))
 (:VAR MV1498 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1492 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
149: "How does MAPK1 affect JUND?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect JUND" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect JUND?"
 (:VAR MV1505 :ISA AFFECT :MANNER MV1503 :AGENT MV1502 :OBJECT MV1506 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1503 :ISA HOW)
 (:VAR MV1502 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1506 :ISA PROTEIN :RAW-TEXT "JUND" :UID "UP:P17535" :NAME
  "JUND_HUMAN"))

___________________
150: "How does SETDB1 affect ADAM17?"

                    SOURCE-START
e9    AFFECT        1 "How does SETDB1 affect ADAM17" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does SETDB1 affect ADAM17?"
 (:VAR MV1511 :ISA AFFECT :MANNER MV1509 :AGENT MV1507 :OBJECT MV1508 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1509 :ISA HOW)
 (:VAR MV1507 :ISA PROTEIN :RAW-TEXT "SETDB1" :UID "UP:Q15047" :NAME
  "SETB1_HUMAN")
 (:VAR MV1508 :ISA PROTEIN :RAW-TEXT "ADAM17" :UID "UP:P78536" :NAME
  "ADA17_HUMAN"))

___________________
151: "How does KRAS affect MAPK3?"

                    SOURCE-START
e8    AFFECT        1 "How does KRAS affect MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS affect MAPK3?"
 (:VAR MV1516 :ISA AFFECT :MANNER MV1513 :AGENT MV1515 :OBJECT MV1512 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1513 :ISA HOW)
 (:VAR MV1515 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV1512 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
152: "How does  ITGAV affect ILK?"

                    SOURCE-START
e7    AFFECT        1 "How does  ITGAV affect ILK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does  ITGAV affect ILK?"
 (:VAR MV1520 :ISA AFFECT :MANNER MV1517 :AGENT MV1519 :OBJECT MV1521 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1517 :ISA HOW)
 (:VAR MV1519 :ISA PROTEIN :RAW-TEXT "ITGAV" :UID "UP:P06756" :NAME
  "ITAV_HUMAN")
 (:VAR MV1521 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

___________________
153: "What genes does MAPK1 phosphorylate?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "What genes does MAPK1 phosphorylate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does MAPK1 phosphorylate?"
 (:VAR MV1526 :ISA PHOSPHORYLATE :AMINO-ACID MV1524 :AGENT MV1522 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV1524 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1522 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
154: "What pathways affect BRAF?"

                    SOURCE-START
e6    AFFECT        1 "What pathways affect BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways affect BRAF?"
 (:VAR MV1529 :ISA AFFECT :AGENT MV1528 :OBJECT MV1530 :PRESENT "PRESENT"
  :RAW-TEXT "affect")
 (:VAR MV1528 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV1530 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
155: "What genes activate ILK?"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "What genes activate ILK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes activate ILK?"
 (:VAR MV1533 :ISA BIO-ACTIVATE :AGENT MV1532 :OBJECT MV1534 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV1532 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1534 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

___________________
156: "Let's learn about AKT1 in ovarian cancer."

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's learn about AKT1 in ovarian cancer" 11
                    PERIOD
                    END-OF-SOURCE
("Let's learn about AKT1 in ovarian cancer."
 (:VAR MV1543 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1538 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV1538 :ISA LEARNING :STATEMENT MV1536 :PRESENT "PRESENT")
 (:VAR MV1536 :ISA PROTEIN :CONTEXT MV1537 :RAW-TEXT "AKT1" :UID "UP:P31749"
  :NAME "AKT1_HUMAN")
 (:VAR MV1537 :ISA CANCER :UID "TS-1223"))

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
 (:VAR MV1560 :ISA PHOSPHORYLATE :AGENT MV1558 :SUBSTRATE MV1559 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1558 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1559 :ISA PROTEIN :RAW-TEXT "IFT140" :UID "UP:Q96RY7" :NAME
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
 (:VAR MV1579 :ISA BE :SUBJECT MV1578 :PREDICATE MV1582 :PRESENT "PRESENT")
 (:VAR MV1578 :ISA WHAT)
 (:VAR MV1582 :ISA RESPONSE :BENEFICIARY MV1584 :HAS-DETERMINER "THE" :MODIFIER
  MV1581 :RAW-TEXT "response")
 (:VAR MV1584 :ISA CELL-TYPE :MUTATION MV1586)
 (:VAR MV1586 :ISA ALTER :OBJECT MV1577 :AGENT-OR-OBJECT MV1577 :RAW-TEXT
  "alterations")
 (:VAR MV1577 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1577 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1581 :ISA DRUG :RAW-TEXT "drug"))

___________________
163: "What is the drug response for cells with TP53 alterations?"

                    SOURCE-START
e21   BE            1 "What is the drug response for cells with TP53 alterations" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the drug response for cells with TP53 alterations?"
 (:VAR MV1591 :ISA BE :SUBJECT MV1590 :PREDICATE MV1594 :PRESENT "PRESENT")
 (:VAR MV1590 :ISA WHAT)
 (:VAR MV1594 :ISA RESPONSE :CELL-TYPE MV1596 :HAS-DETERMINER "THE" :MODIFIER
  MV1593 :RAW-TEXT "response")
 (:VAR MV1596 :ISA CELL-TYPE :MUTATION MV1598)
 (:VAR MV1598 :ISA ALTER :OBJECT MV1589 :AGENT-OR-OBJECT MV1589 :RAW-TEXT
  "alterations")
 (:VAR MV1589 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1589 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1593 :ISA DRUG :RAW-TEXT "drug"))

___________________
164: "What is the mutation frequency of EGFR in glioblastoma?"

                    SOURCE-START
e19   BE            1 "What is the mutation frequency of EGFR in glioblastoma" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of EGFR in glioblastoma?"
 (:VAR MV1602 :ISA BE :SUBJECT MV1601 :PREDICATE MV1605 :PRESENT "PRESENT")
 (:VAR MV1601 :ISA WHAT)
 (:VAR MV1605 :ISA FREQUENCY :MEASURED-ITEM MV1607 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV1604 :RAW-TEXT "frequency")
 (:VAR MV1607 :ISA PROTEIN :CONTEXT MV1609 :RAW-TEXT "EGFR" :UID "UP:P00533"
  :NAME "EGFR_HUMAN")
 (:VAR MV1609 :ISA GLIOBLASTOMA)
 (:VAR MV1604 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
165: "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1615 :ISA BE :SUBJECT MV1614 :PREDICATE MV1618 :PRESENT "PRESENT")
 (:VAR MV1614 :ISA WHAT)
 (:VAR MV1618 :ISA FREQUENCY :MEASURED-ITEM MV1612 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV1617 :RAW-TEXT "frequency")
 (:VAR MV1612 :ISA PROTEIN :CONTEXT MV1613 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV1613 :ISA CANCER :NAME "ovarian serous cystadenocarcinoma" :UID
  "NCIT:C7978")
 (:VAR MV1617 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
166: "Show me the mutations of PTEN and BRAF in ovarian cancer."

                    SOURCE-START
e21   SHOW          1 "Show me the mutations of PTEN and BRAF in ovarian cancer" 12
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN and BRAF in ovarian cancer."
 (:VAR MV1624 :ISA SHOW :STATEMENT-OR-THEME MV1627 :BENEFICIARY MV1625 :PRESENT
  "PRESENT")
 (:VAR MV1627 :ISA MUTATION :OBJECT MV1633 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1633 :ISA COLLECTION :CONTEXT MV1623 :RAW-TEXT "PTEN and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV1629 MV1631))
 (:VAR MV1623 :ISA CANCER :UID "TS-1223")
 (:VAR MV1629 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV1631 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1625 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
167: "Show me the mutations of PTEN in ovarian cancer."

                    SOURCE-START
e18   SHOW          1 "Show me the mutations of PTEN in ovarian cancer" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN in ovarian cancer."
 (:VAR MV1637 :ISA SHOW :STATEMENT-OR-THEME MV1640 :BENEFICIARY MV1638 :PRESENT
  "PRESENT")
 (:VAR MV1640 :ISA MUTATION :OBJECT MV1642 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1642 :ISA PROTEIN :CONTEXT MV1636 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1636 :ISA CANCER :UID "TS-1223")
 (:VAR MV1638 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
168: "What are the mutations of PTEN in ovarian cancer?"

                    SOURCE-START
e18   BE            1 "What are the mutations of PTEN in ovarian cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in ovarian cancer?"
 (:VAR MV1648 :ISA BE :SUBJECT MV1647 :PREDICATE MV1650 :PRESENT "PRESENT")
 (:VAR MV1647 :ISA WHAT)
 (:VAR MV1650 :ISA MUTATION :OBJECT MV1652 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1652 :ISA PROTEIN :CONTEXT MV1646 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1646 :ISA CANCER :UID "TS-1223"))

___________________
169: "What is the most likely cellular location of AKT1 and BRAF?"

                    SOURCE-START
e23   BE            1 "What is the most likely cellular location of AKT1 and BRAF" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1 and BRAF?"
 (:VAR MV1658 :ISA BE :SUBJECT MV1657 :PREDICATE MV1670 :PRESENT "PRESENT")
 (:VAR MV1657 :ISA WHAT)
 (:VAR MV1670 :ISA QUALITY-PREDICATE :ITEM MV1668 :ATTRIBUTE MV1664)
 (:VAR MV1668 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1656 MV1667))
 (:VAR MV1656 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1667 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1664 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV1662
  :MODIFIER MV1663)
 (:VAR MV1662 :ISA LIKELY :COMPARATIVE MV1660)
 (:VAR MV1660 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV1663 :ISA CELLULAR :NAME "cellular"))

___________________
170: "Are there common upstreams of AKT1 and BRAF?"

                    SOURCE-START
e17   THERE-EXISTS  1 "Are there common upstreams of AKT1 and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1 and BRAF?"
 (:VAR MV1680 :ISA THERE-EXISTS :VALUE MV1676 :PREDICATE MV1673)
 (:VAR MV1676 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1681 :PREDICATION
  MV1675 :RAW-TEXT "upstreams")
 (:VAR MV1681 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1671 MV1679))
 (:VAR MV1671 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1679 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1675 :ISA COMMON) (:VAR MV1673 :ISA SYNTACTIC-THERE))

___________________
171: "What are the common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e21   BE            1 "What are the common upstreams of AKT1, BRAF and MAPK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV1686 :ISA BE :SUBJECT MV1685 :PREDICATE MV1689 :PRESENT "PRESENT")
 (:VAR MV1685 :ISA WHAT)
 (:VAR MV1689 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1693 :HAS-DETERMINER
  "THE" :PREDICATION MV1688 :RAW-TEXT "upstreams")
 (:VAR MV1693 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV1683 MV1691 MV1684))
 (:VAR MV1683 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1691 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1684 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1688 :ISA COMMON))

___________________
172: "What genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "What genes are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV1705 :ISA COPULAR-PREDICATION :ITEM MV1699 :VALUE MV1695 :PREDICATE
  MV1700)
 (:VAR MV1699 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1695 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV1697 :ALTERNATIVE MV1696)
 (:VAR MV1697 :ISA CANCER :UID "TS-0591")
 (:VAR MV1696 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV1700 :ISA BE :PRESENT "PRESENT"))

___________________
173: "What are the mutually exclusive genes with TP53 for breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with TP53 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with TP53 for breast cancer?"
 (:VAR MV1710 :ISA BE :SUBJECT MV1709 :PREDICATE MV1717 :PRESENT "PRESENT")
 (:VAR MV1709 :ISA WHAT)
 (:VAR MV1717 :ISA GENE :DISEASE MV1708 :HAS-DETERMINER "THE" :PREDICATION
  MV1706 :RAW-TEXT "genes")
 (:VAR MV1708 :ISA CANCER :UID "TS-0591")
 (:VAR MV1706 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV1707)
 (:VAR MV1707 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
174: "What is the mutation significance of TP53 for lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 for lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 for lung cancer?"
 (:VAR MV1721 :ISA BE :SUBJECT MV1720 :PREDICATE MV1724 :PRESENT "PRESENT")
 (:VAR MV1720 :ISA WHAT)
 (:VAR MV1724 :ISA SIGNIFICANCE :RESULT MV1719 :AGENT MV1718 :HAS-DETERMINER
  "THE" :MODIFIER MV1723)
 (:VAR MV1719 :ISA CANCER :UID "TS-0571")
 (:VAR MV1718 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1723 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
175: "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1732 :ISA BE :SUBJECT MV1731 :PREDICATE MV1735 :PRESENT "PRESENT")
 (:VAR MV1731 :ISA WHAT)
 (:VAR MV1735 :ISA SIGNIFICANCE :AGENT MV1729 :HAS-DETERMINER "THE" :MODIFIER
  MV1734)
 (:VAR MV1729 :ISA PROTEIN :CONTEXT MV1730 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV1730 :ISA CANCER :NAME "ovarian serous cystadenocarcinoma" :UID
  "NCIT:C7978")
 (:VAR MV1734 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
176: "What is the mutation significance of PTEN in pancreatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of PTEN in pancreatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
 (:VAR MV1741 :ISA BE :SUBJECT MV1740 :PREDICATE MV1744 :PRESENT "PRESENT")
 (:VAR MV1740 :ISA WHAT)
 (:VAR MV1744 :ISA SIGNIFICANCE :AGENT MV1746 :HAS-DETERMINER "THE" :MODIFIER
  MV1743)
 (:VAR MV1746 :ISA PROTEIN :CONTEXT MV1749 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1749 :ISA CANCER :ORGAN MV1748 :NAME "adenocarcinoma" :UID
  "EFO:0000228")
 (:VAR MV1748 :ISA PANCREAS) (:VAR MV1743 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
177: "What is the mutation significance of BRAF in prostatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of BRAF in prostatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
 (:VAR MV1753 :ISA BE :SUBJECT MV1752 :PREDICATE MV1756 :PRESENT "PRESENT")
 (:VAR MV1752 :ISA WHAT)
 (:VAR MV1756 :ISA SIGNIFICANCE :AGENT MV1758 :HAS-DETERMINER "THE" :MODIFIER
  MV1755)
 (:VAR MV1758 :ISA PROTEIN :CONTEXT MV1761 :RAW-TEXT "BRAF" :UID "UP:P15056"
  :NAME "BRAF_HUMAN")
 (:VAR MV1761 :ISA CANCER :MODIFIER MV1760 :NAME "adenocarcinoma" :UID
  "EFO:0000228")
 (:VAR MV1760 :ISA PROTEIN :RAW-TEXT "prostatic" :UID "UP:P20151" :NAME
  "KLK2_HUMAN")
 (:VAR MV1755 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
178: "MEK phosphorylates ERK."

                    SOURCE-START
e4    PHOSPHORYLATE 1 "MEK phosphorylates ERK" 4
                    PERIOD
                    END-OF-SOURCE
("MEK phosphorylates ERK."
 (:VAR MV1765 :ISA PHOSPHORYLATE :AGENT MV1764 :SUBSTRATE MV1766 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1764 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV1766 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV1768 :ISA BINDING :BINDER MV1767 :DIRECT-BINDEE MV1769 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV1767 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1769 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
180: "EGFR bound to EGF binds GRB2."

                    SOURCE-START
e13   BINDING       1 "EGFR bound to EGF binds GRB2" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR bound to EGF binds GRB2."
 (:VAR MV1775 :ISA BINDING :BINDER MV1771 :DIRECT-BINDEE MV1770 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV1771 :ISA PROTEIN :PREDICATION MV1772 :RAW-TEXT "EGFR" :UID
  "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV1772 :ISA BINDING :DIRECT-BINDEE MV1771 :BINDEE MV1774 :PAST "PAST"
  :RAW-TEXT "bound")
 (:VAR MV1774 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1770 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN"))

___________________
181: "Phosphorylated ERK is active."

                    SOURCE-START
e7    COPULAR-PREDICATION 1 "Phosphorylated ERK is active" 5
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK is active."
 (:VAR MV1781 :ISA COPULAR-PREDICATION :ITEM MV1778 :VALUE MV1780 :PREDICATE
  MV1779)
 (:VAR MV1778 :ISA PROTEIN-FAMILY :PREDICATION MV1777 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1777 :ISA PHOSPHORYLATE :SUBSTRATE MV1778 :RAW-TEXT "Phosphorylated")
 (:VAR MV1780 :ISA ACTIVE) (:VAR MV1779 :ISA BE :PRESENT "PRESENT"))

___________________
182: "MAP2K1 phosphorylated at S220 phosphoryates MAPK1."

                    SOURCE-START
e17   PROTEIN       1 "MAP2K1 phosphorylated at S220 phosphoryates MAPK1" 12
                    PERIOD
                    END-OF-SOURCE
("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
 (:VAR MV1782 :ISA PROTEIN :PREDICATION MV1784 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1784 :ISA PHOSPHORYLATE :SUBSTRATE MV1782 :TARGET MV1783 :PAST "PAST"
  :RAW-TEXT "phosphorylated")
 (:VAR MV1783 :ISA PROTEIN :SITE MV1789 :MODIFIER MV1790 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1789 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S220" :POSITION MV1788
  :AMINO-ACID MV1787)
 (:VAR MV1788 :ISA NUMBER :VALUE 220)
 (:VAR MV1787 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV1790 :ISA BIO-ENTITY :NAME "phosphoryates"))

___________________
183: "Active TP53 transcribes MDM2."

                    SOURCE-START
e8    TRANSCRIBE    1 "Active TP53 transcribes MDM2" 7
                    PERIOD
                    END-OF-SOURCE
("Active TP53 transcribes MDM2."
 (:VAR MV1795 :ISA TRANSCRIBE :AGENT MV1792 :OBJECT MV1793 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV1792 :ISA PROTEIN :PREDICATION MV1794 :RAW-TEXT "TP53" :UID
  "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1794 :ISA ACTIVE)
 (:VAR MV1793 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME
  "MDM2_HUMAN"))

___________________
184: "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e44   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV1822 :ISA POLAR-QUESTION :STATEMENT MV1821)
 (:VAR MV1821 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1817 :EVENT MV1819)
 (:VAR MV1817 :ISA WH-QUESTION :STATEMENT MV1807 :WH IF)
 (:VAR MV1807 :ISA INCREASE :AGENT-OR-CAUSE MV1805 :MULTIPLIER MV1814
  :AFFECTED-PROCESS-OR-OBJECT MV1809 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1805 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1814 :ISA N-FOLD :NUMBER MV1813) (:VAR MV1813 :ISA NUMBER :VALUE 10)
 (:VAR MV1809 :ISA BIO-AMOUNT :MEASURED-ITEM MV1796 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1796 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1819 :ISA COPULAR-PREDICATION :ITEM MV1799 :VALUE MV1803 :PREDICATE
  MV1797)
 (:VAR MV1799 :ISA BIO-AMOUNT :MEASURED-ITEM MV1801 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1801 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1803 :ISA HIGH :ADVERB MV1802) (:VAR MV1802 :ISA EVER :NAME "ever")
 (:VAR MV1797 :ISA BE))

___________________
185: "Does Vemurafenib decrease phosphorylated ERK in the model?"

                    SOURCE-START
e20   DECREASE      1 "Does Vemurafenib decrease phosphorylated ERK in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib decrease phosphorylated ERK in the model?"
 (:VAR MV1834 :ISA POLAR-QUESTION :STATEMENT MV1832)
 (:VAR MV1832 :ISA DECREASE :AGENT MV1824 :OBJECT MV1828 :RAW-TEXT "decrease")
 (:VAR MV1824 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV1828 :ISA PROTEIN-FAMILY :INFO-CONTEXT MV1831 :PREDICATION MV1827
  :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1831 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV1827 :ISA PHOSPHORYLATE :SUBSTRATE MV1828 :RAW-TEXT "phosphorylated"))

___________________
186: "Does Selumetinib decrease JUN in the model?"

                    SOURCE-START
e17   DECREASE      1 "Does Selumetinib decrease JUN in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib decrease JUN in the model?"
 (:VAR MV1845 :ISA POLAR-QUESTION :STATEMENT MV1843)
 (:VAR MV1843 :ISA DECREASE :AGENT MV1836 :OBJECT MV1839 :RAW-TEXT "decrease")
 (:VAR MV1836 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV1839 :ISA PROTEIN :INFO-CONTEXT MV1842 :RAW-TEXT "JUN" :UID
  "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV1842 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
187: "How does KRAS regulate MAP2K1?"

                    SOURCE-START
e8    REGULATE      1 "How does KRAS regulate MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS regulate MAP2K1?"
 (:VAR MV1850 :ISA REGULATE :MANNER MV1847 :AGENT MV1849 :OBJECT MV1846
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV1847 :ISA HOW)
 (:VAR MV1849 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV1846 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
188: "How does HRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does HRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does HRAS activate MAPK3?"
 (:VAR MV1855 :ISA BIO-ACTIVATE :MANNER MV1852 :AGENT MV1854 :OBJECT MV1851
  :PRESENT "PRESENT" :RAW-TEXT "activate")
 (:VAR MV1852 :ISA HOW)
 (:VAR MV1854 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV1851 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
189: "Does Vemurafenib inhibit BRAF?"

                    SOURCE-START
e8    INHIBIT       1 "Does Vemurafenib inhibit BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib inhibit BRAF?"
 (:VAR MV1861 :ISA POLAR-QUESTION :STATEMENT MV1860)
 (:VAR MV1860 :ISA INHIBIT :AGENT MV1857 :OBJECT MV1859 :RAW-TEXT "inhibit")
 (:VAR MV1857 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV1859 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
190: "What transcription factors are shared by SRF, HRAS, and ELK1?"

                    SOURCE-START
e19   SHARE         1 "What transcription factors are shared by SRF, HRAS, and ELK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by SRF, HRAS, and ELK1?"
 (:VAR MV1872 :ISA SHARE :OBJECT MV1862 :PARTICIPANT MV1871 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV1862 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV1871 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and ELK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV1868 MV1869 MV1863))
 (:VAR MV1868 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1869 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV1863 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
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
 (:VAR MV1884 :ISA BE :SUBJECT MV1883 :PREDICATE MV1885 :PRESENT "PRESENT")
 (:VAR MV1883 :ISA WHAT)
 (:VAR MV1885 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1882 :RAW-TEXT
  "upstream")
 (:VAR MV1882 :ISA PROTEIN :RAW-TEXT "CD3E" :UID "UP:P07766" :NAME
  "CD3E_HUMAN"))

___________________
193: "I want to find a treatment for pancreatic cancer."

                    SOURCE-START
e22   WANT          1 "I want to find a treatment for pancreatic cancer" 10
                    PERIOD
                    END-OF-SOURCE
("I want to find a treatment for pancreatic cancer."
 (:VAR MV1893 :ISA WANT :AGENT MV1890 :THEME MV1901 :PRESENT "PRESENT")
 (:VAR MV1890 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV1901 :ISA BIO-FIND :AGENT MV1890 :OBJECT MV1898 :PRESENT "PRESENT"
  :RAW-TEXT "find")
 (:VAR MV1890 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV1898 :ISA TREATMENT :DISEASE MV1889 :HAS-DETERMINER "A" :RAW-TEXT
  "treatment")
 (:VAR MV1889 :ISA CANCER :UID "TS-0739"))

___________________
194: "What drug could I use?"

                    SOURCE-START
e11   BIO-USE       1 "What drug could I use" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use?"
 (:VAR MV1910 :ISA BIO-USE :OBJECT MV1903 :MODAL MV1904 :AGENT MV1905 :PRESENT
  "PRESENT" :RAW-TEXT "use")
 (:VAR MV1903 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV1904 :ISA COULD) (:VAR MV1905 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
195: "Are there any drugs for BRAF?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there any drugs for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for BRAF?"
 (:VAR MV1918 :ISA THERE-EXISTS :VALUE MV1915 :PREDICATE MV1912)
 (:VAR MV1915 :ISA DRUG :TARGET MV1917 :QUANTIFIER MV1914 :RAW-TEXT "drugs")
 (:VAR MV1917 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1914 :ISA ANY :WORD "any") (:VAR MV1912 :ISA SYNTACTIC-THERE))

___________________
196: "Are they kinases?"

                    SOURCE-START
e3    BE            1 "Are they kinases" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for BRAF?"
 (:VAR MV1918 :ISA THERE-EXISTS :VALUE MV1915 :PREDICATE MV1912)
 (:VAR MV1915 :ISA DRUG :TARGET MV1917 :QUANTIFIER MV1914 :RAW-TEXT "drugs")
 (:VAR MV1917 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1914 :ISA ANY :WORD "any") (:VAR MV1912 :ISA SYNTACTIC-THERE))

___________________
197: "Can you find a drug for BRAF?"

                    SOURCE-START
e17   BIO-FIND      1 "Can you find a drug for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you find a drug for BRAF?"
 (:VAR MV1932 :ISA POLAR-QUESTION :STATEMENT MV1926)
 (:VAR MV1926 :ISA BIO-FIND :AGENT MV1924 :OBJECT MV1928 :MODAL "CAN" :RAW-TEXT
  "find")
 (:VAR MV1924 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1928 :ISA DRUG :TARGET MV1930 :HAS-DETERMINER "A" :RAW-TEXT "drug")
 (:VAR MV1930 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
198: "Can you tell me all the transcription factors that are shared by elk1 and srf?"

                    SOURCE-START
e35   TELL          1 "Can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me all the transcription factors that are shared by elk1 and srf?"
 (:VAR MV1950 :ISA POLAR-QUESTION :STATEMENT MV1937)
 (:VAR MV1937 :ISA TELL :AGENT MV1936 :THEME MV1933 :BENEFICIARY MV1938 :MODAL
  "CAN")
 (:VAR MV1936 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1933 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV1948 :QUANTIFIER MV1939
  :HAS-DETERMINER "THE" :RAW-TEXT "transcription factors")
 (:VAR MV1948 :ISA SHARE :OBJECT MV1933 :THAT-REL T :PARTICIPANT MV1947 :MODAL
  "CAN" :RAW-TEXT "shared")
 (:VAR MV1947 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1934 MV1946))
 (:VAR MV1934 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1946 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1939 :ISA ALL :WORD "all")
 (:VAR MV1938 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
199: "Can you tell me what transcription factors are shared by elk1 and srf?"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf?"
 (:VAR MV1966 :ISA POLAR-QUESTION :STATEMENT MV1955)
 (:VAR MV1955 :ISA TELL :AGENT MV1954 :THEME MV1964 :THEME MV1956 :MODAL "CAN")
 (:VAR MV1954 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1964 :ISA SHARE :OBJECT MV1951 :PARTICIPANT MV1963 :MODAL "CAN"
  :RAW-TEXT "shared")
 (:VAR MV1951 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV1963 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1952 MV1962))
 (:VAR MV1952 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1962 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1956 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
200: "Do you know any drugs for BRAF?"

                    SOURCE-START
e15   KNOW          1 "Do you know any drugs for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do you know any drugs for BRAF?"
 (:VAR MV1977 :ISA POLAR-QUESTION :STATEMENT MV1976)
 (:VAR MV1976 :ISA KNOW :AGENT MV1968 :STATEMENT MV1971)
 (:VAR MV1968 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1971 :ISA DRUG :TARGET MV1973 :QUANTIFIER MV1970 :RAW-TEXT "drugs")
 (:VAR MV1973 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1970 :ISA ANY :WORD "any"))

___________________
201: "Does STAT3 regulate the JUN gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the JUN gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the JUN gene in the lung?"
 (:VAR MV1989 :ISA POLAR-QUESTION :STATEMENT MV1987)
 (:VAR MV1987 :ISA REGULATE :AGENT MV1978 :OBJECT MV1983 :RAW-TEXT "regulate")
 (:VAR MV1978 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV1983 :ISA GENE :ORGAN MV1986 :HAS-DETERMINER "THE" :EXPRESSES MV1982
  :RAW-TEXT "gene")
 (:VAR MV1986 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV1982 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN"))

___________________
202: "Does STAT3 regulate the c-fos gene in liver?"

                    SOURCE-START
e20   REGULATE      1 "Does STAT3 regulate the c-fos gene in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in liver?"
 (:VAR MV2000 :ISA POLAR-QUESTION :STATEMENT MV1998)
 (:VAR MV1998 :ISA REGULATE :AGENT MV1990 :OBJECT MV1995 :RAW-TEXT "regulate")
 (:VAR MV1990 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV1995 :ISA GENE :ORGAN MV1997 :HAS-DETERMINER "THE" :EXPRESSES MV1991
  :RAW-TEXT "gene")
 (:VAR MV1997 :ISA LIVER)
 (:VAR MV1991 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
203: "Does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e15   REGULATE      1 "Does STAT3 regulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene?"
 (:VAR MV2008 :ISA POLAR-QUESTION :STATEMENT MV2007)
 (:VAR MV2007 :ISA REGULATE :AGENT MV2001 :OBJECT MV2006 :RAW-TEXT "regulate")
 (:VAR MV2001 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2006 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2002 :RAW-TEXT
  "gene")
 (:VAR MV2002 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
204: "Does STAT3 regulate the cfos gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the cfos gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the cfos gene in the lung?"
 (:VAR MV2020 :ISA POLAR-QUESTION :STATEMENT MV2018)
 (:VAR MV2018 :ISA REGULATE :AGENT MV2009 :OBJECT MV2014 :RAW-TEXT "regulate")
 (:VAR MV2009 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2014 :ISA GENE :ORGAN MV2017 :HAS-DETERMINER "THE" :EXPRESSES MV2013
  :RAW-TEXT "gene")
 (:VAR MV2017 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV2013 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
205: "Does TP53 target MDM2?"

                    SOURCE-START
e11   TARGET        1 "Does TP53 target MDM2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TP53 target MDM2?" (:VAR MV2027 :ISA POLAR-QUESTION :STATEMENT MV2026)
 (:VAR MV2026 :ISA TARGET :AGENT MV2021 :OBJECT MV2022 :RAW-TEXT "target")
 (:VAR MV2021 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV2022 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME
  "MDM2_HUMAN"))

___________________
206: "Does miR-2000-5p target stat3"

                    SOURCE-START
e11   TARGET        1 "Does miR-2000-5p target stat3" 11
                    END-OF-SOURCE
("Does miR-2000-5p target stat3"
 (:VAR MV2034 :ISA POLAR-QUESTION :STATEMENT MV2033)
 (:VAR MV2033 :ISA TARGET :AGENT MV2028 :OBJECT MV2029 :RAW-TEXT "target")
 (:VAR MV2028 :ISA MICRO-RNA :RAW-TEXT "miR-2000-5p" :NAME "microRNA 2000-5p"
  :UID "MIMAmiR-2000-5p")
 (:VAR MV2029 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
207: "Does miR-20b-5p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-20b-5p target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5p target STAT3?"
 (:VAR MV2041 :ISA POLAR-QUESTION :STATEMENT MV2040)
 (:VAR MV2040 :ISA TARGET :AGENT MV2035 :OBJECT MV2036 :RAW-TEXT "target")
 (:VAR MV2035 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV2036 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
208: "Does miR-222-3p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-222-3p target STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-222-3p target STAT3?"
 (:VAR MV2048 :ISA POLAR-QUESTION :STATEMENT MV2047)
 (:VAR MV2047 :ISA TARGET :AGENT MV2042 :OBJECT MV2043 :RAW-TEXT "target")
 (:VAR MV2042 :ISA MICRO-RNA :RAW-TEXT "miR-222-3p" :NAME "microRNA 222-3p"
  :UID "MIMAT0000279")
 (:VAR MV2043 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
209: "Does stat3 regulate cfors in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfors in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfors in liver"
 (:VAR MV2057 :ISA POLAR-QUESTION :STATEMENT MV2055)
 (:VAR MV2055 :ISA REGULATE :AGENT MV2049 :OBJECT MV2054 :RAW-TEXT "regulate")
 (:VAR MV2049 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2054 :ISA BIO-ENTITY :ORGAN MV2053 :NAME "cfors")
 (:VAR MV2053 :ISA LIVER))

___________________
210: "Does stat3 regulate cfos in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfos in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfos in liver"
 (:VAR MV2066 :ISA POLAR-QUESTION :STATEMENT MV2064)
 (:VAR MV2064 :ISA REGULATE :AGENT MV2058 :OBJECT MV2061 :RAW-TEXT "regulate")
 (:VAR MV2058 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2061 :ISA PROTEIN :ORGAN MV2063 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2063 :ISA LIVER))

___________________
211: "Does it regulate cfos in brain"

                    SOURCE-START
e14   REGULATE      1 "Does it regulate cfos in brain" 7
                    END-OF-SOURCE
("Does it regulate cfos in brain"
 (:VAR MV2075 :ISA POLAR-QUESTION :STATEMENT MV2073)
 (:VAR MV2073 :ISA REGULATE :AGENT-OR-CAUSE MV2068 :OBJECT MV2070 :RAW-TEXT
  "regulate")
 (:VAR MV2068 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2070 :ISA PROTEIN :ORGAN MV2072 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2072 :ISA BRAIN))

___________________
212: "Does stat3 regulate cfos?"

                    SOURCE-START
e9    REGULATE      1 "Does stat3 regulate cfos" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 regulate cfos?"
 (:VAR MV2081 :ISA POLAR-QUESTION :STATEMENT MV2080)
 (:VAR MV2080 :ISA REGULATE :AGENT MV2076 :OBJECT MV2079 :RAW-TEXT "regulate")
 (:VAR MV2076 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2079 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
213: "Does stat3 regulate the cfos gene in blood cells"

                    SOURCE-START
e21   REGULATE      1 "Does stat3 regulate the cfos gene in blood cells" 11
                    END-OF-SOURCE
("Does stat3 regulate the cfos gene in blood cells"
 (:VAR MV2093 :ISA POLAR-QUESTION :STATEMENT MV2091)
 (:VAR MV2091 :ISA REGULATE :AGENT MV2082 :OBJECT MV2087 :RAW-TEXT "regulate")
 (:VAR MV2082 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2087 :ISA GENE :CELL-TYPE MV2090 :HAS-DETERMINER "THE" :EXPRESSES
  MV2086 :RAW-TEXT "gene")
 (:VAR MV2090 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV2089)
 (:VAR MV2089 :ISA BIO-ORGAN :NAME "blood" :UID "BTO:0000089")
 (:VAR MV2086 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
214: "Does the il-12 pathway utilize SGK1?"

                    SOURCE-START
e17   UTILIZE       1 "Does the il-12 pathway utilize SGK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the il-12 pathway utilize SGK1?"
 (:VAR MV2103 :ISA POLAR-QUESTION :STATEMENT MV2102)
 (:VAR MV2102 :ISA UTILIZE :PARTICIPANT MV2099 :OBJECT MV2094 :RAW-TEXT
  "utilize")
 (:VAR MV2099 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2101 :RAW-TEXT
  "pathway")
 (:VAR MV2101 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV2094 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
215: "Does the mTor pathway utilize SGK1?"

                    SOURCE-START
e16   UTILIZE       1 "Does the mTor pathway utilize SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway utilize SGK1?"
 (:VAR MV2113 :ISA POLAR-QUESTION :STATEMENT MV2112)
 (:VAR MV2112 :ISA UTILIZE :PARTICIPANT MV2110 :OBJECT MV2104 :RAW-TEXT
  "utilize")
 (:VAR MV2110 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2107 :RAW-TEXT
  "pathway")
 (:VAR MV2107 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME
  "MTOR_HUMAN")
 (:VAR MV2104 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
216: "Give me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras decreases frizzled8."
 (:VAR MV2115 :ISA GIVE :THEME MV2122 :BENEFICIARY MV2116 :PRESENT "PRESENT")
 (:VAR MV2122 :ISA EVIDENCE :STATEMENT MV2121 :HAS-DETERMINER "THE")
 (:VAR MV2121 :ISA DECREASE :AGENT MV2120 :OBJECT MV2114 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2120 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2114 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2116 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
217: "Give me the evidence that kras regulates frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras regulates frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras regulates frizzled8."
 (:VAR MV2124 :ISA GIVE :THEME MV2131 :BENEFICIARY MV2125 :PRESENT "PRESENT")
 (:VAR MV2131 :ISA EVIDENCE :STATEMENT MV2130 :HAS-DETERMINER "THE")
 (:VAR MV2130 :ISA REGULATE :AGENT MV2129 :OBJECT MV2123 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2129 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2123 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2125 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
218: "Is MEK a kinase?"

                    SOURCE-START
e8    BE            1 "Is MEK a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK a kinase?"
 (:VAR MV2136 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89948>
   (PREDICATE
    (#<kinase 89947> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
219: "Is MEK2 inhibited by Selumetinib?"

                    SOURCE-START
e11   INHIBIT       1 "Is MEK2 inhibited by Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK2 inhibited by Selumetinib?"
 (:VAR MV2144 :ISA POLAR-QUESTION :STATEMENT MV2143)
 (:VAR MV2143 :ISA INHIBIT :AGENT MV2137 :AGENT MV2141 :PAST "PAST" :RAW-TEXT
  "inhibited")
 (:VAR MV2137 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN")
 (:VAR MV2141 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
220: "Is STAT3 a transcription factor for c-fos gene?"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene?"
 (:VAR MV2153 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89962>
   (PREDICATE
    (#<transcription-factor 89961>
     (CONTROLLED-GENE
      (#<gene 89857>
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88496> (RAW-TEXT "c-fos") (UID "UP:P01100")
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
 (:VAR MV2168 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89969>
   (PREDICATE
    (#<regulator 89968> (QUANTIFIER 1)
     (THEME
      (#<gene 89858> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88496> (RAW-TEXT "c-fos") (UID "UP:P01100")
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
 (:VAR MV2176 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89978>
   (PREDICATE
    (#<inhibitor 89977>
     (PROTEIN
      (#<protein "MP2K1_HUMAN" 89972> (RAW-TEXT "MEK1") (UID "UP:Q02750")
       (NAME "MP2K1_HUMAN")))
     (HAS-DETERMINER (#<an 108> (WORD "an"))) (RAW-TEXT "inhibitor"))))))

___________________
223: "Is Vemurafenib an inhibitor for BRAF?"

                    SOURCE-START
e12   BE            1 "Is Vemurafenib an inhibitor for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Vemurafenib an inhibitor for BRAF?"
 (:VAR MV2184 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89982>
   (PREDICATE
    (#<inhibitor 89981>
     (TARGET-OR-PROTEIN
      (#<protein "BRAF_HUMAN" 88377> (RAW-TEXT "BRAF") (UID "UP:P15056")
       (NAME "BRAF_HUMAN")))
     (HAS-DETERMINER (#<an 108> (WORD "an"))) (RAW-TEXT "inhibitor"))))))

___________________
224: "Is fakeprotein a kinase"

                    SOURCE-START
e8    BE            1 "Is fakeprotein a kinase" 5
                    END-OF-SOURCE
("Is fakeprotein a kinase"
 (:VAR MV2189 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89948>
   (PREDICATE
    (#<kinase 89947> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
225: "Is hmga2 a kinase"

                    SOURCE-START
e9    BE            1 "Is hmga2 a kinase" 6
                    END-OF-SOURCE
("Is hmga2 a kinase"
 (:VAR MV2194 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89948>
   (PREDICATE
    (#<kinase 89947> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
226: "Is stat3 an apoptotic regulator?"

                    SOURCE-START
e11   BE            1 "Is stat3 an apoptotic regulator" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 an apoptotic regulator?"
 (:VAR MV2201 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89992>
   (PREDICATE
    (#<regulator 89991> (HAS-DETERMINER (#<an 108> (WORD "an")))
     (CELLULAR-PROCESS (#<apoptosis 88326> (RAW-TEXT "apoptotic")))
     (RAW-TEXT "regulator"))))))

___________________
227: "Is stat3 involved in any apoptotic pathways?"

                    SOURCE-START
e16   INVOLVE       1 "Is stat3 involved in any apoptotic pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in any apoptotic pathways?"
 (:VAR MV2213 :ISA POLAR-QUESTION :STATEMENT MV2212)
 (:VAR MV2212 :ISA INVOLVE :THEME MV2202 :CONTEXT MV2209 :PAST "PAST")
 (:VAR MV2202 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2209 :ISA PATHWAY :QUANTIFIER MV2206 :CELLULAR-PROCESS MV2207
  :RAW-TEXT "pathways")
 (:VAR MV2206 :ISA ANY :WORD "any")
 (:VAR MV2207 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
228: "Is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e14   INVOLVE       1 "Is stat3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in apoptotic regulation?"
 (:VAR MV2223 :ISA POLAR-QUESTION :STATEMENT MV2222)
 (:VAR MV2222 :ISA INVOLVE :THEME MV2214 :THEME MV2220 :PAST "PAST")
 (:VAR MV2214 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2220 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV2218 :RAW-TEXT
  "regulation")
 (:VAR MV2218 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
229: "Is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e13   INVOLVE       1 "Is stat3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in regulating apoptosis?"
 (:VAR MV2232 :ISA POLAR-QUESTION :STATEMENT MV2231)
 (:VAR MV2231 :ISA INVOLVE :THEME MV2224 :THEME MV2228 :PAST "PAST")
 (:VAR MV2224 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2228 :ISA REGULATE :AFFECTED-PROCESS MV2229 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV2229 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
230: "What proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "What proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does MEK phosphorylate?"
 (:VAR MV2237 :ISA PHOSPHORYLATE :AMINO-ACID MV2234 :AGENT MV2236 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV2234 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV2236 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV2246 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89948>
   (PREDICATE
    (#<kinase 89947> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
232: "Is there a drug that targets BRAF?"

                    SOURCE-START
e18   THERE-EXISTS  1 "Is there a drug that targets BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there a drug that targets BRAF?"
 (:VAR MV2256 :ISA THERE-EXISTS :VALUE MV2251 :PREDICATE MV2248)
 (:VAR MV2251 :ISA DRUG :PREDICATION MV2254 :HAS-DETERMINER "A" :RAW-TEXT
  "drug")
 (:VAR MV2254 :ISA TARGET :AGENT MV2251 :THAT-REL T :OBJECT MV2255 :PRESENT
  "PRESENT" :RAW-TEXT "targets")
 (:VAR MV2255 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV2248 :ISA SYNTACTIC-THERE))

___________________
233: "Is there an apoptotic pathway regulated by stat3?"

                    SOURCE-START
e20   THERE-EXISTS  1 "Is there an apoptotic pathway regulated by stat3" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway regulated by stat3?"
 (:VAR MV2267 :ISA THERE-EXISTS :VALUE MV2264 :PREDICATE MV2259)
 (:VAR MV2264 :ISA PATHWAY :PREDICATION MV2265 :HAS-DETERMINER "AN"
  :CELLULAR-PROCESS MV2262 :RAW-TEXT "pathway")
 (:VAR MV2265 :ISA REGULATE :AFFECTED-PROCESS MV2264 :AGENT MV2257 :PAST "PAST"
  :RAW-TEXT "regulated")
 (:VAR MV2257 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2262 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2259 :ISA SYNTACTIC-THERE))

___________________
234: "Is there an apoptotic pathway that is regulated by stat3?"

                    SOURCE-START
e25   THERE-EXISTS  1 "Is there an apoptotic pathway that is regulated by stat3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway that is regulated by stat3?"
 (:VAR MV2281 :ISA THERE-EXISTS :VALUE MV2276 :PREDICATE MV2271)
 (:VAR MV2276 :ISA PATHWAY :PREDICATION MV2282 :HAS-DETERMINER "AN"
  :CELLULAR-PROCESS MV2274 :RAW-TEXT "pathway")
 (:VAR MV2282 :ISA REGULATE :AFFECTED-PROCESS MV2276 :THAT-REL T :AGENT MV2269
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2269 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2274 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2271 :ISA SYNTACTIC-THERE))

___________________
235: "Let me know if there are any apoptotic genes stat3 regulates"

                    SOURCE-START
e25   LET           1 "Let me know if there are any apoptotic genes stat3 regulates" 13
                    END-OF-SOURCE
("Let me know if there are any apoptotic genes stat3 regulates"
 (:VAR MV2285 :ISA LET :COMPLEMENT MV2299 :PRESENT "PRESENT")
 (:VAR MV2299 :ISA KNOW :AGENT MV2286 :STATEMENT MV2298 :PRESENT "PRESENT")
 (:VAR MV2286 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2298 :ISA WH-QUESTION :STATEMENT MV2297 :WH IF)
 (:VAR MV2297 :ISA THERE-EXISTS :VALUE MV2295 :PREDICATE MV2291)
 (:VAR MV2295 :ISA GENE :PREDICATION MV2296 :QUANTIFIER MV2292
  :CELLULAR-PROCESS MV2293 :RAW-TEXT "genes")
 (:VAR MV2296 :ISA REGULATE :OBJECT MV2295 :AGENT MV2284 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2284 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2292 :ISA ANY :WORD "any")
 (:VAR MV2293 :ISA APOPTOSIS :RAW-TEXT "apoptotic") (:VAR MV2291 :ISA BE))

___________________
236: "Let me know which genes stat3 regulates"

                    SOURCE-START
e14   LET           1 "Let me know which genes stat3 regulates" 9
                    END-OF-SOURCE
("Let me know which genes stat3 regulates"
 (:VAR MV2301 :ISA LET :COMPLEMENT MV2307 :PRESENT "PRESENT")
 (:VAR MV2307 :ISA KNOW :AGENT MV2302 :STATEMENT MV2305 :PRESENT "PRESENT")
 (:VAR MV2302 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2305 :ISA GENE :PREDICATION MV2306 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV2306 :ISA REGULATE :OBJECT MV2305 :AGENT MV2300 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2300 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
237: "List all the genes regulated by elk1 and srf?"

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf?"
 (:VAR MV2309 :ISA LIST :THEME MV2312 :PRESENT "PRESENT")
 (:VAR MV2312 :ISA GENE :PREDICATION MV2313 :QUANTIFIER MV2310 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV2313 :ISA REGULATE :OBJECT MV2312 :AGENT MV2317 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2317 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2308 MV2316))
 (:VAR MV2308 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2316 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2310 :ISA ALL :WORD "all"))

___________________
238: "List genes regulated by elk1 and srf"

                    SOURCE-START
e12   LIST          1 "List genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("List genes regulated by elk1 and srf"
 (:VAR MV2320 :ISA LIST :THEME MV2321 :PRESENT "PRESENT")
 (:VAR MV2321 :ISA GENE :PREDICATION MV2322 :RAW-TEXT "genes")
 (:VAR MV2322 :ISA REGULATE :OBJECT MV2321 :AGENT MV2326 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2326 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2319 MV2325))
 (:VAR MV2319 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2325 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
239: "List some genes that are regulated by elk1 and srf"

                    SOURCE-START
e21   LIST          1 "List some genes that are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("List some genes that are regulated by elk1 and srf"
 (:VAR MV2329 :ISA LIST :THEME MV2331 :PRESENT "PRESENT")
 (:VAR MV2331 :ISA GENE :PREDICATION MV2339 :QUANTIFIER MV2330 :RAW-TEXT
  "genes")
 (:VAR MV2339 :ISA REGULATE :OBJECT MV2331 :THAT-REL T :AGENT MV2338 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2338 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2328 MV2337))
 (:VAR MV2328 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2337 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2330 :ISA SOME :WORD "some"))

___________________
240: "List the evidence that kras decreases frizzled8."

                    SOURCE-START
e15   LIST          1 "List the evidence that kras decreases frizzled8" 9
                    PERIOD
                    END-OF-SOURCE
("List the evidence that kras decreases frizzled8."
 (:VAR MV2342 :ISA LIST :THEME MV2348 :PRESENT "PRESENT")
 (:VAR MV2348 :ISA EVIDENCE :STATEMENT MV2347 :HAS-DETERMINER "THE")
 (:VAR MV2347 :ISA DECREASE :AGENT MV2346 :OBJECT MV2341 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2346 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2341 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
241: "Name genes regulated by elk1 and srf"

                    SOURCE-START
e14   NAME-SOMETHING  1 "Name genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("Name genes regulated by elk1 and srf"
 (:VAR MV2350 :ISA NAME-SOMETHING :PATIENT MV2353 :PRESENT "PRESENT")
 (:VAR MV2353 :ISA GENE :PREDICATION MV2354 :RAW-TEXT "genes")
 (:VAR MV2354 :ISA REGULATE :OBJECT MV2353 :AGENT MV2358 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2358 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2349 MV2357))
 (:VAR MV2349 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2357 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
242: "Of the apoptotic genes regulated by stat3, which are active in the liver?"

                    SOURCE-START
e33   COPULAR-PREDICATE 1 "Of the apoptotic genes regulated by stat3, which are active in the liver" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes regulated by stat3, which are active in the liver?"
 (:VAR MV2376 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2365 :VALUE MV2370
  :PREDICATE MV2369)
 (:VAR MV2365 :ISA GENE :PREDICATION MV2366 :HAS-DETERMINER "THE"
  :CELLULAR-PROCESS MV2363 :RAW-TEXT "genes")
 (:VAR MV2366 :ISA REGULATE :OBJECT MV2365 :AGENT MV2360 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2360 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2363 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2370 :ISA ACTIVE :ORGAN MV2373)
 (:VAR MV2373 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2369 :ISA BE :PRESENT "PRESENT"))

___________________
243: "Of the apoptotic genes stat3 regulates, which are active in the liver?"

                    SOURCE-START
e30   COPULAR-PREDICATE 1 "Of the apoptotic genes stat3 regulates, which are active in the liver" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes stat3 regulates, which are active in the liver?"
 (:VAR MV2394 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2384 :VALUE MV2388
  :PREDICATE MV2387)
 (:VAR MV2384 :ISA GENE :PREDICATION MV2385 :HAS-DETERMINER "THE"
  :CELLULAR-PROCESS MV2382 :RAW-TEXT "genes")
 (:VAR MV2385 :ISA REGULATE :OBJECT MV2384 :AGENT MV2379 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2379 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2382 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2388 :ISA ACTIVE :ORGAN MV2391)
 (:VAR MV2391 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2387 :ISA BE :PRESENT "PRESENT"))

___________________
244: "Of the genes stat3 regulates in the liver, which are apoptotic?"

                    SOURCE-START
e28   COPULAR-PREDICATE 1 "Of the genes stat3 regulates in the liver, which are apoptotic" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the genes stat3 regulates in the liver, which are apoptotic?"
 (:VAR MV2409 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2399 :VALUE MV2406
  :PREDICATE MV2405)
 (:VAR MV2399 :ISA GENE :PREDICATION MV2400 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV2400 :ISA REGULATE :OBJECT MV2399 :AGENT MV2396 :ORGAN MV2403 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2396 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2403 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2406 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2405 :ISA BE :PRESENT "PRESENT"))

___________________
245: "Of the hepatic genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Of the hepatic genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the hepatic genes stat3 regulates, which are apoptotic?"
 (:VAR MV2423 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2416 :VALUE MV2420
  :PREDICATE MV2419)
 (:VAR MV2416 :ISA GENE :PREDICATION MV2417 :HAS-DETERMINER "THE"
  :NON-CELLULAR-LOCATION MV2415 :RAW-TEXT "genes")
 (:VAR MV2417 :ISA REGULATE :OBJECT MV2416 :AGENT MV2412 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2412 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2415 :ISA LIVER) (:VAR MV2420 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2419 :ISA BE :PRESENT "PRESENT"))

___________________
246: "Of the liver genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Of the liver genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the liver genes stat3 regulates, which are apoptotic?"
 (:VAR MV2436 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2429 :VALUE MV2433
  :PREDICATE MV2432)
 (:VAR MV2429 :ISA GENE :PREDICATION MV2430 :HAS-DETERMINER "THE"
  :NON-CELLULAR-LOCATION MV2428 :RAW-TEXT "genes")
 (:VAR MV2430 :ISA REGULATE :OBJECT MV2429 :AGENT MV2425 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2425 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2428 :ISA LIVER) (:VAR MV2433 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2432 :ISA BE :PRESENT "PRESENT"))

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
 (:VAR MV2445 :ISA SHOW :STATEMENT-OR-THEME MV2447 :BENEFICIARY MV2446 :PRESENT
  "PRESENT" :ADVERB MV2444)
 (:VAR MV2447 :ISA PATHWAY :PREDICATION MV2448 :MODIFIER MV2450 :RAW-TEXT
  "pathways")
 (:VAR MV2448 :ISA INVOLVE :THEME MV2447 :THEME MV2449 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2449 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2450 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV2446 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2444 :ISA PLEASE :NAME "please"))

___________________
249: "Please show me pathways involving SRF"

                    SOURCE-START
e11   SHOW          1 "Please show me pathways involving SRF" 7
                    END-OF-SOURCE
("Please show me pathways involving SRF"
 (:VAR MV2452 :ISA SHOW :STATEMENT-OR-THEME MV2454 :BENEFICIARY MV2453 :PRESENT
  "PRESENT" :ADVERB MV2451)
 (:VAR MV2454 :ISA PATHWAY :PREDICATION MV2455 :RAW-TEXT "pathways")
 (:VAR MV2455 :ISA INVOLVE :THEME MV2454 :THEME MV2456 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2456 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2453 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2451 :ISA PLEASE :NAME "please"))

___________________
250: "MEK activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "MEK activates ERK" 4
                    END-OF-SOURCE
("MEK activates ERK"
 (:VAR MV2458 :ISA BIO-ACTIVATE :AGENT MV2457 :OBJECT MV2459 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2457 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2459 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV2460 :ISA REMOVE :OBJECT MV2467 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2467 :ISA FACT :STATEMENT MV2465 :HAS-DETERMINER "THE")
 (:VAR MV2465 :ISA BIO-ACTIVATE :AGENT MV2464 :OBJECT MV2466 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2464 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
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
252: "Inactive MEK activates ERK"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "Inactive MEK activates ERK" 5
                    END-OF-SOURCE
("Inactive MEK activates ERK"
 (:VAR MV2470 :ISA BIO-ACTIVATE :AGENT MV2469 :OBJECT MV2471 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2469 :ISA PROTEIN-FAMILY :PREDICATION MV2468 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2468 :ISA INACTIVE)
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
253: "Remove the fact that inactive MEK activates ERK"

                    SOURCE-START
e16   REMOVE        1 "Remove the fact that inactive MEK activates ERK" 9
                    END-OF-SOURCE
("Remove the fact that inactive MEK activates ERK"
 (:VAR MV2472 :ISA REMOVE :OBJECT MV2480 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2480 :ISA FACT :STATEMENT MV2478 :HAS-DETERMINER "THE")
 (:VAR MV2478 :ISA BIO-ACTIVATE :AGENT MV2477 :OBJECT MV2479 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2477 :ISA PROTEIN-FAMILY :PREDICATION MV2476 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2476 :ISA INACTIVE)
 (:VAR MV2479 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV2482 :ISA SHOW :STATEMENT-OR-THEME MV2483 :PRESENT "PRESENT")
 (:VAR MV2483 :ISA PATHWAY :NON-CELLULAR-LOCATION MV2481 :RAW-TEXT "pathways")
 (:VAR MV2481 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
255: "Show me pathways involving SRF"

                    SOURCE-START
e9    SHOW          1 "Show me pathways involving SRF" 6
                    END-OF-SOURCE
("Show me pathways involving SRF"
 (:VAR MV2484 :ISA SHOW :STATEMENT-OR-THEME MV2486 :BENEFICIARY MV2485 :PRESENT
  "PRESENT")
 (:VAR MV2486 :ISA PATHWAY :PREDICATION MV2487 :RAW-TEXT "pathways")
 (:VAR MV2487 :ISA INVOLVE :THEME MV2486 :THEME MV2488 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2488 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2485 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
256: "Show me pathways with SRF in them"

                    SOURCE-START
e13   SHOW          1 "Show me pathways with SRF in them" 8
                    END-OF-SOURCE
("Show me pathways with SRF in them"
 (:VAR MV2489 :ISA SHOW :STATEMENT-OR-THEME MV2491 :BENEFICIARY MV2490 :PRESENT
  "PRESENT")
 (:VAR MV2491 :ISA PATHWAY :PATHWAYCOMPONENT MV2493 :RAW-TEXT "pathways")
 (:VAR MV2493 :ISA PROTEIN
  :CELL-LINE-OR-CELL-TYPE-OR-CELLULAR-LOCATION-OR-CONTEXT-OR-INFO-CONTEXT-OR-ORGAN-OR-PREPARATION-OR-ORGANISM-OR-IN-EQUILIBRIUM-WITH-OR-COMPLEX-OR-EQUILIBRIUM-STATE-OR-STATE-OR-IN-PATHWAY
  MV2495 :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2495 :ISA PRONOUN/PLURAL :WORD "them")
 (:VAR MV2490 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
257: "Show me pathways with SRF"

                    SOURCE-START
e8    SHOW          1 "Show me pathways with SRF" 6
                    END-OF-SOURCE
("Show me pathways with SRF"
 (:VAR MV2498 :ISA SHOW :STATEMENT-OR-THEME MV2500 :BENEFICIARY MV2499 :PRESENT
  "PRESENT")
 (:VAR MV2500 :ISA PATHWAY :PATHWAYCOMPONENT MV2502 :RAW-TEXT "pathways")
 (:VAR MV2502 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2499 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
258: "Show me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras decreases frizzled8."
 (:VAR MV2505 :ISA SHOW :STATEMENT-OR-THEME MV2512 :BENEFICIARY MV2506 :PRESENT
  "PRESENT")
 (:VAR MV2512 :ISA EVIDENCE :STATEMENT MV2511 :HAS-DETERMINER "THE")
 (:VAR MV2511 :ISA DECREASE :AGENT MV2510 :OBJECT MV2504 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2510 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2504 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2506 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
259: "Show me the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   SHOW          1 "Show me the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV2514 :ISA SHOW :STATEMENT-OR-THEME MV2525 :BENEFICIARY MV2515 :PRESENT
  "PRESENT")
 (:VAR MV2525 :ISA EVIDENCE :STATEMENT MV2520 :HAS-DETERMINER "THE")
 (:VAR MV2520 :ISA DECREASE :AGENT MV2519 :AFFECTED-PROCESS-OR-OBJECT MV2522
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV2519 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2522 :ISA BIO-AMOUNT :MEASURED-ITEM MV2513 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV2513 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2515 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
260: "Show me the evidence that kras regulates frizzled8?"

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras regulates frizzled8?"
 (:VAR MV2527 :ISA SHOW :STATEMENT-OR-THEME MV2534 :BENEFICIARY MV2528 :PRESENT
  "PRESENT")
 (:VAR MV2534 :ISA EVIDENCE :STATEMENT MV2533 :HAS-DETERMINER "THE")
 (:VAR MV2533 :ISA REGULATE :AGENT MV2532 :OBJECT MV2526 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2532 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2526 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2528 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
261: "Show transcription factors shared by elk1 and srf"

                    SOURCE-START
e13   SHOW          1 "Show transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Show transcription factors shared by elk1 and srf"
 (:VAR MV2537 :ISA SHOW :STATEMENT-OR-THEME MV2535 :PRESENT "PRESENT")
 (:VAR MV2535 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2538 :RAW-TEXT
  "transcription factors")
 (:VAR MV2538 :ISA SHARE :OBJECT MV2535 :PARTICIPANT MV2542 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV2542 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2536 MV2541))
 (:VAR MV2536 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2541 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV2552 :ISA TELL :THEME MV2564 :THEME MV2553 :PRESENT "PRESENT")
 (:VAR MV2564 :ISA REGULATE :AFFECTED-PROCESS MV2557 :AGENT MV2551 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2557 :ISA PATHWAY :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2555
  :RAW-TEXT "pathways")
 (:VAR MV2555 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2551 :ISA PROTEIN :ORGAN MV2563 :RAW-TEXT "stat3" :UID "UP:P40763"
  :NAME "STAT3_HUMAN")
 (:VAR MV2563 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2553 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
264: "Tell me what genes elk1 and srf regulate"

                    SOURCE-START
e15   TELL          1 "Tell me what genes elk1 and srf regulate" 10
                    END-OF-SOURCE
("Tell me what genes elk1 and srf regulate"
 (:VAR MV2568 :ISA TELL :THEME MV2571 :BENEFICIARY MV2569 :PRESENT "PRESENT")
 (:VAR MV2571 :ISA GENE :PREDICATION MV2574 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2574 :ISA REGULATE :OBJECT MV2571 :AGENT MV2575 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2575 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2567 MV2573))
 (:VAR MV2567 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2573 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2569 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
265: "Tell me what pathways are regulated by stat3 in the liver"

                    SOURCE-START
e24   TELL          1 "Tell me what pathways are regulated by stat3 in the liver" 13
                    END-OF-SOURCE
("Tell me what pathways are regulated by stat3 in the liver"
 (:VAR MV2577 :ISA TELL :THEME MV2587 :THEME MV2578 :PRESENT "PRESENT")
 (:VAR MV2587 :ISA REGULATE :AFFECTED-PROCESS MV2580 :AGENT MV2576 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2580 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV2576 :ISA PROTEIN :ORGAN MV2586 :RAW-TEXT "stat3" :UID "UP:P40763"
  :NAME "STAT3_HUMAN")
 (:VAR MV2586 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2578 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
266: "What KEGG pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What KEGG pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve immune signaling?"
 (:VAR MV2593 :ISA INVOLVE :THEME MV2592 :THEME MV2595 :PRESENT "PRESENT")
 (:VAR MV2592 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV2591 :RAW-TEXT
  "pathways")
 (:VAR MV2591 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV2595 :ISA SIGNAL :MODIFIER MV2594 :RAW-TEXT "signaling")
 (:VAR MV2594 :ISA IMMUNE :NAME "immune"))

___________________
267: "What MAP kinase phosphatases are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatases are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatases are regulated by ELK1?"
 (:VAR MV2603 :ISA REGULATE :OBJECT MV2599 :AGENT MV2597 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2599 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV2596 :RAW-TEXT
  "phosphatases")
 (:VAR MV2596 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME
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
 (:VAR MV2597 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
268: "What apoptotic genes are downstream of stat3?"

                    SOURCE-START
e16   BE            1 "What apoptotic genes are downstream of stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes are downstream of stat3?"
 (:VAR MV2610 :ISA BE :SUBJECT MV2609 :PREDICATE MV2611 :PRESENT "PRESENT")
 (:VAR MV2609 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2607
  :RAW-TEXT "genes")
 (:VAR MV2607 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2611 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2605 :RAW-TEXT
  "downstream")
 (:VAR MV2605 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
269: "What apoptotic genes does stat3 regulate in the liver?"

                    SOURCE-START
e19   REGULATE      1 "What apoptotic genes does stat3 regulate in the liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate in the liver?"
 (:VAR MV2621 :ISA REGULATE :OBJECT MV2619 :AGENT MV2615 :ORGAN MV2624 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2619 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2617
  :RAW-TEXT "genes")
 (:VAR MV2617 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2615 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2624 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
270: "What apoptotic genes does stat3 regulate?"

                    SOURCE-START
e11   REGULATE      1 "What apoptotic genes does stat3 regulate" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate?"
 (:VAR MV2632 :ISA REGULATE :OBJECT MV2630 :AGENT MV2626 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2630 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2628
  :RAW-TEXT "genes")
 (:VAR MV2628 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2626 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
271: "What apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "What apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes is stat3 upstream of?"
 (:VAR MV2638 :ISA BE :SUBJECT MV2637 :PREDICATE MV2639 :PRESENT "PRESENT")
 (:VAR MV2637 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2635
  :RAW-TEXT "genes")
 (:VAR MV2635 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2639 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV2637 :MODIFIER MV2633
  :RAW-TEXT "upstream")
 (:VAR MV2637 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2635
  :RAW-TEXT "genes")
 (:VAR MV2635 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2633 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
272: "What apoptotic pathways involve stat3?"

                    SOURCE-START
e10   INVOLVE       1 "What apoptotic pathways involve stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic pathways involve stat3?"
 (:VAR MV2647 :ISA INVOLVE :THEME MV2646 :THEME MV2642 :PRESENT "PRESENT")
 (:VAR MV2646 :ISA PATHWAY :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2644
  :RAW-TEXT "pathways")
 (:VAR MV2644 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2642 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
273: "What are Selumetinib's targets?"

                    SOURCE-START
e9    BE            1 "What are Selumetinib's targets" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are Selumetinib's targets?"
 (:VAR MV2649 :ISA BE :SUBJECT MV2648 :PREDICATE MV2652 :PRESENT "PRESENT")
 (:VAR MV2648 :ISA WHAT)
 (:VAR MV2652 :ISA TARGET-PROTEIN :AGENT MV2651 :RAW-TEXT "targets")
 (:VAR MV2651 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
274: "What are some JAK1 inhibitors?"

                    SOURCE-START
e9    BE            1 "What are some JAK1 inhibitors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some JAK1 inhibitors?"
 (:VAR MV2656 :ISA BE :SUBJECT MV2655 :PREDICATE MV2658 :PRESENT "PRESENT")
 (:VAR MV2655 :ISA WHAT)
 (:VAR MV2658 :ISA INHIBITOR :QUANTIFIER MV2657 :PROTEIN MV2654 :RAW-TEXT
  "inhibitors")
 (:VAR MV2657 :ISA SOME :WORD "some")
 (:VAR MV2654 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
275: "What are some drugs that inhibit BRAF?"

                    SOURCE-START
e14   BE            1 "What are some drugs that inhibit BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs that inhibit BRAF?"
 (:VAR MV2660 :ISA BE :SUBJECT MV2659 :PREDICATE MV2662 :PRESENT "PRESENT")
 (:VAR MV2659 :ISA WHAT)
 (:VAR MV2662 :ISA DRUG :PREDICATION MV2664 :QUANTIFIER MV2661 :RAW-TEXT
  "drugs")
 (:VAR MV2664 :ISA INHIBIT :AGENT MV2662 :THAT-REL T :OBJECT MV2665 :PRESENT
  "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV2665 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV2661 :ISA SOME :WORD "some"))

___________________
276: "What are some genes in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some genes in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes in the MAPK signaling pathway?"
 (:VAR MV2668 :ISA BE :SUBJECT MV2667 :PREDICATE MV2670 :PRESENT "PRESENT")
 (:VAR MV2667 :ISA WHAT)
 (:VAR MV2670 :ISA GENE :CONTEXT MV2666 :QUANTIFIER MV2669 :RAW-TEXT "genes")
 (:VAR MV2666 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2673
  :RAW-TEXT "signaling pathway")
 (:VAR MV2673 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2669 :ISA SOME :WORD "some"))

___________________
277: "What are some proteins in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some proteins in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some proteins in the MAPK signaling pathway?"
 (:VAR MV2677 :ISA BE :SUBJECT MV2676 :PREDICATE MV2679 :PRESENT "PRESENT")
 (:VAR MV2676 :ISA WHAT)
 (:VAR MV2679 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV2675 :QUANTIFIER MV2678
  :RAW-TEXT "proteins")
 (:VAR MV2675 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2682
  :RAW-TEXT "signaling pathway")
 (:VAR MV2682 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2678 :ISA SOME :WORD "some"))

___________________
278: "What are the members of RAS?"

                    SOURCE-START
e12   BE            1 "What are the members of RAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of RAS?"
 (:VAR MV2685 :ISA BE :SUBJECT MV2684 :PREDICATE MV2687 :PRESENT "PRESENT")
 (:VAR MV2684 :ISA WHAT)
 (:VAR MV2687 :ISA MEMBER :SET MV2689 :HAS-DETERMINER "THE")
 (:VAR MV2689 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3
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
 (:VAR MV2695 :ISA BE :SUBJECT MV2694 :PREDICATE MV2697 :PRESENT "PRESENT")
 (:VAR MV2694 :ISA WHAT)
 (:VAR MV2697 :ISA MICRO-RNA :PREDICATION MV2699 :HAS-DETERMINER "THE"
  :RAW-TEXT "miRNAS")
 (:VAR MV2699 :ISA REGULATE :AGENT MV2697 :THAT-REL T :OBJECT MV2703 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2703 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2700 MV2701 MV2691 MV2692 MV2693))
 (:VAR MV2700 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2701 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2691 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2692 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2693 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
280: "What are the regulators of MAPPK14 in bladder"

                    SOURCE-START
e19   BE            1 "What are the regulators of MAPPK14 in bladder" 10
                    END-OF-SOURCE
("What are the regulators of MAPPK14 in bladder"
 (:VAR MV2705 :ISA BE :SUBJECT MV2704 :PREDICATE MV2707 :PRESENT "PRESENT")
 (:VAR MV2704 :ISA WHAT)
 (:VAR MV2707 :ISA REGULATOR :THEME MV2713 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2713 :ISA BIO-ENTITY :ORGAN MV2712 :NAME "MAPPK14")
 (:VAR MV2712 :ISA BIO-ORGAN :NAME "bladder" :UID "BTO:0001418"))

___________________
281: "What are the regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What are the regulators of SMURF2 in liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2 in liver?"
 (:VAR MV2718 :ISA BE :SUBJECT MV2717 :PREDICATE MV2720 :PRESENT "PRESENT")
 (:VAR MV2717 :ISA WHAT)
 (:VAR MV2720 :ISA REGULATOR :THEME MV2716 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2716 :ISA PROTEIN :ORGAN MV2723 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV2723 :ISA LIVER))

___________________
282: "What are the regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What are the regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2?"
 (:VAR MV2728 :ISA BE :SUBJECT MV2727 :PREDICATE MV2730 :PRESENT "PRESENT")
 (:VAR MV2727 :ISA WHAT)
 (:VAR MV2730 :ISA REGULATOR :THEME MV2726 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2726 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
283: "What are the regulators of c-fos in lung?"

                    SOURCE-START
e18   BE            1 "What are the regulators of c-fos in lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of c-fos in lung?"
 (:VAR MV2735 :ISA BE :SUBJECT MV2734 :PREDICATE MV2737 :PRESENT "PRESENT")
 (:VAR MV2734 :ISA WHAT)
 (:VAR MV2737 :ISA REGULATOR :THEME MV2733 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2733 :ISA PROTEIN :ORGAN MV2740 :RAW-TEXT "c-fos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2740 :ISA LUNG))

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
 (:VAR MV2758 :ISA BE :SUBJECT MV2757 :PREDICATE MV2760 :PRESENT "PRESENT")
 (:VAR MV2757 :ISA WHAT)
 (:VAR MV2760 :ISA REGULATOR :THEME MV2756 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2756 :ISA PROTEIN :RAW-TEXT "mapk14" :UID "UP:Q16539" :NAME
  "MK14_HUMAN"))

___________________
286: "What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e28   COPULAR-PREDICATION 1 "What are the transcription factors in common to the SRF, HRAS, and elk1 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
 (:VAR MV2777 :ISA COPULAR-PREDICATION :ITEM MV2766 :VALUE MV2764 :PREDICATE
  MV2767)
 (:VAR MV2766 :ISA WHAT) (:VAR MV2764 :ISA IN-COMMON :THEME MV2774)
 (:VAR MV2774 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2775 :RAW-TEXT
  "genes")
 (:VAR MV2775 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV2771 MV2772 MV2765))
 (:VAR MV2771 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2772 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV2765 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2767 :ISA BE :PREDICATE MV2763 :PRESENT "PRESENT")
 (:VAR MV2763 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :RAW-TEXT
  "transcription factors"))

___________________
287: "What are the transcription factors that regulate EELK1 and SRF?"

                    SOURCE-START
e21   BE            1 "What are the transcription factors that regulate EELK1 and SRF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EELK1 and SRF?"
 (:VAR MV2780 :ISA BE :SUBJECT MV2779 :PREDICATE MV2778 :PRESENT "PRESENT")
 (:VAR MV2779 :ISA WHAT)
 (:VAR MV2778 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2783 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2783 :ISA REGULATE :AGENT MV2778 :THAT-REL T :OBJECT MV2789 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2789 :ISA COLLECTION :RAW-TEXT "EELK1 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2788 MV2787))
 (:VAR MV2788 :ISA BIO-ENTITY :NAME "EELK1")
 (:VAR MV2787 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
288: "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"

                    SOURCE-START
e30   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
 (:VAR MV2794 :ISA BE :SUBJECT MV2793 :PREDICATE MV2790 :PRESENT "PRESENT")
 (:VAR MV2793 :ISA WHAT)
 (:VAR MV2790 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2797 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2797 :ISA REGULATE :AGENT MV2790 :THAT-REL T :OBJECT MV2804 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2804 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2798 MV2799 MV2803 MV2791 MV2792))
 (:VAR MV2798 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2799 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2803 :ISA BIO-ENTITY :NAME "STAAT3")
 (:VAR MV2791 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2792 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
289: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV2810 :ISA BE :SUBJECT MV2809 :PREDICATE MV2805 :PRESENT "PRESENT")
 (:VAR MV2809 :ISA WHAT)
 (:VAR MV2805 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2813 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2813 :ISA REGULATE :AGENT MV2805 :THAT-REL T :OBJECT MV2817 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2817 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2814 MV2815 MV2806 MV2807 MV2808))
 (:VAR MV2814 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2815 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2806 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2807 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2808 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
290: "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"

                    SOURCE-START
e26   BE            1 "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
 (:VAR MV2822 :ISA BE :SUBJECT MV2821 :PREDICATE MV2826 :PRESENT "PRESENT")
 (:VAR MV2821 :ISA WHAT)
 (:VAR MV2826 :ISA REGULATOR :THEME MV2830 :HAS-DETERMINER "THE" :CONTEXT
  MV2824 :RAW-TEXT "regulators")
 (:VAR MV2830 :ISA COLLECTION :RAW-TEXT "CCND1, FOXM1, DHFR, and KLF4" :TYPE
  PROTEIN :NUMBER 4 :ITEMS (MV2818 MV2819 MV2828 MV2820))
 (:VAR MV2818 :ISA PROTEIN :RAW-TEXT "CCND1" :UID "UP:P24385" :NAME
  "CCND1_HUMAN")
 (:VAR MV2819 :ISA PROTEIN :RAW-TEXT "FOXM1" :UID "UP:Q08050" :NAME
  "FOXM1_HUMAN")
 (:VAR MV2828 :ISA PROTEIN :RAW-TEXT "DHFR" :UID "UP:P00374" :NAME "DYR_HUMAN")
 (:VAR MV2820 :ISA PROTEIN :RAW-TEXT "KLF4" :UID "UP:O43474" :NAME
  "KLF4_HUMAN")
 (:VAR MV2824 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
291: "What cell cycle genes are regulated by FOS?"

                    SOURCE-START
e14   REGULATE      1 "What cell cycle genes are regulated by FOS" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What cell cycle genes are regulated by FOS?"
 (:VAR MV2839 :ISA REGULATE :OBJECT MV2834 :AGENT MV2838 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2834 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2832
  :RAW-TEXT "genes")
 (:VAR MV2832 :ISA CELLULAR-PROCESS :RAW-TEXT "cell cycle" :UID "GO:0007049")
 (:VAR MV2838 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
292: "What does ERBB regulate?"

                    SOURCE-START
e5    REGULATE      1 "What does ERBB regulate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERBB regulate?"
 (:VAR MV2844 :ISA REGULATE :OBJECT MV2841 :AGENT MV2843 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2841 :ISA WHAT)
 (:VAR MV2843 :ISA PROTEIN :RAW-TEXT "ERBB" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
293: "What does it regulate in liver"

                    SOURCE-START
e11   REGULATE      1 "What does it regulate in liver" 7
                    END-OF-SOURCE
("What does it regulate in liver"
 (:VAR MV2848 :ISA REGULATE :OBJECT MV2845 :AGENT-OR-CAUSE MV2847 :ORGAN MV2850
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2845 :ISA WHAT) (:VAR MV2847 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2850 :ISA LIVER))

___________________
294: "What does miR-20b-5p target"

                    SOURCE-START
e7    TARGET        1 "What does miR-20b-5p target" 11
                    END-OF-SOURCE
("What does miR-20b-5p target"
 (:VAR MV2856 :ISA TARGET :OBJECT MV2853 :AGENT MV2852 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV2853 :ISA WHAT)
 (:VAR MV2852 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
295: "What does p53 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does p53 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does p53 regulate?"
 (:VAR MV2860 :ISA REGULATE :OBJECT MV2858 :AGENT MV2857 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2858 :ISA WHAT)
 (:VAR MV2857 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
296: "What does rb1 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does rb1 regulate" 6
                    END-OF-SOURCE
("What does rb1 regulate"
 (:VAR MV2864 :ISA REGULATE :OBJECT MV2862 :AGENT MV2861 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2862 :ISA WHAT)
 (:VAR MV2861 :ISA PROTEIN :RAW-TEXT "rb1" :UID "UP:P06400" :NAME "RB_HUMAN"))

___________________
297: "What does smad2 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does smad2 regulate" 6
                    END-OF-SOURCE
("What does smad2 regulate"
 (:VAR MV2868 :ISA REGULATE :OBJECT MV2866 :AGENT MV2865 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2866 :ISA WHAT)
 (:VAR MV2865 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
298: "What does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "What does stat regulate" 5
                    END-OF-SOURCE
("What does stat regulate"
 (:VAR MV2872 :ISA REGULATE :OBJECT MV2869 :AGENT MV2871 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2869 :ISA WHAT)
 (:VAR MV2871 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
299: "What downregulates fzd8?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates fzd8?"
 (:VAR MV2875 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV2874 :OBJECT MV2873 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV2874 :ISA WHAT)
 (:VAR MV2873 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
300: "What drug could I use to target pancreatic cancer?"

                    SOURCE-START
e20   BIO-USE       1 "What drug could I use to target pancreatic cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use to target pancreatic cancer?"
 (:VAR MV2889 :ISA BIO-USE :PATIENT MV2878 :MODAL MV2879 :AGENT MV2880 :THEME
  MV2888 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV2878 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV2879 :ISA COULD) (:VAR MV2880 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2888 :ISA TARGET :OBJECT MV2876 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV2876 :ISA CANCER :UID "TS-0739"))

___________________
301: "What drug should I use for pancreatic cancer?"

                    SOURCE-START
e17   BIO-USE       1 "What drug should I use for pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug should I use for pancreatic cancer?"
 (:VAR MV2901 :ISA BIO-USE :OBJECT MV2892 :MODAL MV2893 :AGENT MV2894 :DISEASE
  MV2890 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV2892 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV2893 :ISA SHOULD) (:VAR MV2894 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2890 :ISA CANCER :UID "TS-0739"))

___________________
302: "What drugs are inhibitors of GRB2?"

                    SOURCE-START
e12   BE            1 "What drugs are inhibitors of GRB2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs are inhibitors of GRB2?"
 (:VAR MV2905 :ISA BE :SUBJECT MV2904 :PREDICATE MV2906 :PRESENT "PRESENT")
 (:VAR MV2904 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2906 :ISA INHIBITOR :PROTEIN MV2902 :RAW-TEXT "inhibitors")
 (:VAR MV2902 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN"))

___________________
303: "What drugs inhibit MAP2K1?"

                    SOURCE-START
e7    INHIBIT       1 "What drugs inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs inhibit MAP2K1?"
 (:VAR MV2912 :ISA INHIBIT :AGENT MV2911 :OBJECT MV2909 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV2911 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2909 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
304: "What drugs regulate BRAF?"

                    SOURCE-START
e6    REGULATE      1 "What drugs regulate BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs regulate BRAF?"
 (:VAR MV2915 :ISA REGULATE :AGENT MV2914 :OBJECT MV2916 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2914 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2916 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
305: "What drugs target BRAF?"

                    SOURCE-START
e7    TARGET        1 "What drugs target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target BRAF?"
 (:VAR MV2920 :ISA TARGET :AGENT MV2918 :OBJECT MV2921 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV2918 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2921 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
306: "What genes are downstream of stat3?"

                    SOURCE-START
e13   BE            1 "What genes are downstream of stat3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are downstream of stat3?"
 (:VAR MV2925 :ISA BE :SUBJECT MV2924 :PREDICATE MV2926 :PRESENT "PRESENT")
 (:VAR MV2924 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2926 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2922 :RAW-TEXT
  "downstream")
 (:VAR MV2922 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
307: "What genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathway?"
 (:VAR MV2940 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2932 :VALUE MV2939 :PREP
  "IN" :PREDICATE MV2933)
 (:VAR MV2932 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2939 :ISA GENE :CONTEXT MV2930 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2930 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2936
  :RAW-TEXT "signaling pathway")
 (:VAR MV2936 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2933 :ISA BE :PRESENT "PRESENT"))

___________________
308: "What genes are in the MAPK signaling pathways?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathways?"
 (:VAR MV2952 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2944 :VALUE MV2951 :PREP
  "IN" :PREDICATE MV2945)
 (:VAR MV2944 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2951 :ISA GENE :CONTEXT MV2942 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2942 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2948
  :RAW-TEXT "signaling pathways")
 (:VAR MV2948 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2945 :ISA BE :PRESENT "PRESENT"))

___________________
309: "What genes are in the immune system pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the immune system pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the immune system pathway?"
 (:VAR MV2964 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2956 :VALUE MV2963 :PREP
  "IN" :PREDICATE MV2957)
 (:VAR MV2956 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2963 :ISA GENE :CONTEXT MV2960 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2960 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2954
  :RAW-TEXT "pathway")
 (:VAR MV2954 :ISA BIO-ORGAN :UID "UBERON:0002405")
 (:VAR MV2957 :ISA BE :PRESENT "PRESENT"))

___________________
310: "What genes are in the prolactin signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the prolactin signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the prolactin signaling pathway?"
 (:VAR MV2976 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2968 :VALUE MV2975 :PREP
  "IN" :PREDICATE MV2969)
 (:VAR MV2968 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2975 :ISA GENE :CONTEXT MV2966 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2966 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2972
  :RAW-TEXT "signaling pathway")
 (:VAR MV2972 :ISA PROTEIN :RAW-TEXT "prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN")
 (:VAR MV2969 :ISA BE :PRESENT "PRESENT"))

___________________
311: "What genes are involved in the IL-12 pathway?"

                    SOURCE-START
e18   INVOLVE       1 "What genes are involved in the IL-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the IL-12 pathway?"
 (:VAR MV2989 :ISA INVOLVE :THEME MV2981 :CONTEXT MV2986 :PRESENT "PRESENT")
 (:VAR MV2981 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2986 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2979 :RAW-TEXT
  "pathway")
 (:VAR MV2979 :ISA PROTEIN :RAW-TEXT "IL-12" :UID "NCIT:C20514" :NAME
  "NCIT:C20514"))

___________________
312: "What genes are involved in the Prolactin pathway?"

                    SOURCE-START
e16   INVOLVE       1 "What genes are involved in the Prolactin pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the Prolactin pathway?"
 (:VAR MV3000 :ISA INVOLVE :THEME MV2991 :CONTEXT MV2997 :PRESENT "PRESENT")
 (:VAR MV2991 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2997 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2996 :RAW-TEXT
  "pathway")
 (:VAR MV2996 :ISA PROTEIN :RAW-TEXT "Prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN"))

___________________
313: "What genes are involved in the il-12 pathway?"

                    SOURCE-START
e17   INVOLVE       1 "What genes are involved in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the il-12 pathway?"
 (:VAR MV3011 :ISA INVOLVE :THEME MV3003 :CONTEXT MV3008 :PRESENT "PRESENT")
 (:VAR MV3003 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3008 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3001 :RAW-TEXT
  "pathway")
 (:VAR MV3001 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
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
 (:VAR MV3022 :ISA INVOLVE :THEME MV3014 :CONTEXT MV3019 :PRESENT "PRESENT")
 (:VAR MV3014 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3019 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV3012
  :RAW-TEXT "pathway")
 (:VAR MV3012 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
315: "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"

                    SOURCE-START
e23   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p" 28
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
 (:VAR MV3035 :ISA REGULATE :OBJECT MV3027 :AGENT MV3034 :PRESENT "PRESENT"
  :SUPERLATIVE MV3029 :ADVERB MV3030 :RAW-TEXT "regulated")
 (:VAR MV3027 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3034 :ISA COLLECTION :RAW-TEXT "miR-335-5p, miR-155-5p and miR-145-5p"
  :TYPE MICRO-RNA :NUMBER 3 :ITEMS (MV3023 MV3024 MV3025))
 (:VAR MV3023 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3024 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3025 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3029 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3030 :ISA FREQUENTLY :NAME "frequently"))

___________________
316: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"

                    SOURCE-START
e26   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" 36
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
 (:VAR MV3050 :ISA REGULATE :OBJECT MV3042 :AGENT MV3049 :PRESENT "PRESENT"
  :SUPERLATIVE MV3044 :ADVERB MV3045 :RAW-TEXT "regulated")
 (:VAR MV3042 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3049 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" :TYPE MICRO-RNA :NUMBER 4
  :ITEMS (MV3037 MV3038 MV3039 MV3040))
 (:VAR MV3037 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3038 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3039 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3040 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075")
 (:VAR MV3044 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3045 :ISA FREQUENTLY :NAME "frequently"))

___________________
317: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"

                    SOURCE-START
e27   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" 37
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
 (:VAR MV3065 :ISA REGULATE :OBJECT MV3057 :AGENT MV3064 :PRESENT "PRESENT"
  :SUPERLATIVE MV3059 :ADVERB MV3060 :RAW-TEXT "regulated")
 (:VAR MV3057 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3064 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" :TYPE MICRO-RNA :NUMBER
  4 :ITEMS (MV3052 MV3053 MV3054 MV3055))
 (:VAR MV3052 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3053 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3054 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3055 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075")
 (:VAR MV3059 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3060 :ISA FREQUENTLY :NAME "frequently"))

___________________
318: "What genes are regulated by FAKEPRTN"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by FAKEPRTN" 7
                    END-OF-SOURCE
("What genes are regulated by FAKEPRTN"
 (:VAR MV3073 :ISA REGULATE :OBJECT MV3068 :AGENT MV3072 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3068 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3072 :ISA BIO-ENTITY :NAME "FAKEPRTN"))

___________________
319: "What genes are regulated by elk1 and srf?"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by elk1 and srf" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by elk1 and srf?"
 (:VAR MV3084 :ISA REGULATE :OBJECT MV3077 :AGENT MV3083 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3077 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3083 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3075 MV3082))
 (:VAR MV3075 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV3082 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
320: "What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"

                    SOURCE-START
e16   REGULATE      1 "What genes are regulated by miR-20b-5p and MIR-29B-1-5P" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
 (:VAR MV3095 :ISA REGULATE :OBJECT MV3089 :AGENT MV3094 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3089 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3094 :ISA COLLECTION :RAW-TEXT "miR-20b-5p and MIR-29B-1-5P" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV3086 MV3087))
 (:VAR MV3086 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV3087 :ISA MICRO-RNA :RAW-TEXT "MIR-29B-1-5P" :NAME
  "microRNA 29b-1-5pm" :UID "MIMAT0004514"))

___________________
321: "What genes are regulated by smda2"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by smda2" 8
                    END-OF-SOURCE
("What genes are regulated by smda2"
 (:VAR MV3105 :ISA REGULATE :OBJECT MV3098 :AGENT MV3104 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3098 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3104 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
322: "What genes are regulated by srf"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by srf" 7
                    END-OF-SOURCE
("What genes are regulated by srf"
 (:VAR MV3113 :ISA REGULATE :OBJECT MV3108 :AGENT MV3112 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3108 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3112 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
323: "What genes are regulated by stat3 and srf"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by stat3 and srf" 10
                    END-OF-SOURCE
("What genes are regulated by stat3 and srf"
 (:VAR MV3124 :ISA REGULATE :OBJECT MV3117 :AGENT MV3123 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3117 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3123 :ISA COLLECTION :RAW-TEXT "stat3 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3115 MV3122))
 (:VAR MV3115 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3122 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
324: "What genes are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What genes are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are targeted by lung cancer?"
 (:VAR MV3132 :ISA TARGET :OBJECT MV3128 :CAUSE MV3126 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3128 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3126 :ISA CANCER :UID "TS-0571"))

___________________
325: "What genes are there in the MAPK signaling pathway?"

                    SOURCE-START
e21   COPULAR-PREDICATE 1 "What genes are there in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are there in the MAPK signaling pathway?"
 (:VAR MV3146 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3136 :VALUE MV3145 :PREP
  "IN" :PREDICATE MV3137)
 (:VAR MV3136 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3145 :ISA GENE :CONTEXT MV3134 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3134 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3142
  :RAW-TEXT "signaling pathway")
 (:VAR MV3142 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3137 :ISA BE :PRESENT "PRESENT"))

___________________
326: "What genes are used in the MAPK signaling pathway?"

                    SOURCE-START
e17   BIO-USE       1 "What genes are used in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are used in the MAPK signaling pathway?"
 (:VAR MV3156 :ISA BIO-USE :OBJECT MV3150 :CONTEXT MV3148 :PRESENT "PRESENT"
  :RAW-TEXT "used")
 (:VAR MV3150 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3148 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3155
  :RAW-TEXT "signaling pathway")
 (:VAR MV3155 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3163 :ISA TARGET :OBJECT MV3160 :CAUSE MV3158 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3160 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3158 :ISA CANCER :UID "TS-0571"))

___________________
328: "What genes does miR-20b-5p target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-20b-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-20b-5p target?"
 (:VAR MV3169 :ISA TARGET :OBJECT MV3166 :AGENT MV3164 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3166 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3164 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
329: "What genes does miR-562 target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-562 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-562 target?"
 (:VAR MV3175 :ISA TARGET :OBJECT MV3172 :AGENT MV3170 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3172 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3170 :ISA MICRO-RNA :RAW-TEXT "miR-562" :NAME "microRNA 562" :UID
  "MI0003569"))

___________________
330: "What genes does smad2 upregulate?"

                    SOURCE-START
e8    UPREGULATE    1 "What genes does smad2 upregulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does smad2 upregulate?"
 (:VAR MV3180 :ISA UPREGULATE :OBJECT MV3178 :AGENT MV3176 :PRESENT "PRESENT"
  :RAW-TEXT "upregulate")
 (:VAR MV3178 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3176 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
331: "What genes does stat3 regulate in liver cells?"

                    SOURCE-START
e15   REGULATE      1 "What genes does stat3 regulate in liver cells" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver cells?"
 (:VAR MV3185 :ISA REGULATE :OBJECT MV3183 :AGENT MV3181 :CELL-TYPE MV3188
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3183 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3181 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3188 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV3187)
 (:VAR MV3187 :ISA LIVER))

___________________
332: "What genes does stat3 regulate in liver?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver?"
 (:VAR MV3194 :ISA REGULATE :OBJECT MV3192 :AGENT MV3190 :ORGAN MV3196 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3192 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3190 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3196 :ISA LIVER))

___________________
333: "What genes does stat3 regulate in lung?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in lung" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in lung?"
 (:VAR MV3202 :ISA REGULATE :OBJECT MV3200 :AGENT MV3198 :ORGAN MV3204 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3200 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3198 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3204 :ISA LUNG))

___________________
334: "What genes does stat3 regulate"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    END-OF-SOURCE
("What genes does stat3 regulate"
 (:VAR MV3210 :ISA REGULATE :OBJECT MV3208 :AGENT MV3206 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3208 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3206 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
335: "What genes in the liver does stat3 regulate?"

                    SOURCE-START
e16   REGULATE      1 "What genes in the liver does stat3 regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes in the liver does stat3 regulate?"
 (:VAR MV3218 :ISA REGULATE :OBJECT MV3213 :AGENT MV3211 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3213 :ISA GENE :ORGAN MV3216 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3216 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV3211 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
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
 (:VAR MV3230 :ISA BE :SUBJECT MV3229 :PREDICATE MV3231 :PRESENT "PRESENT")
 (:VAR MV3229 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3231 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3229 :MODIFIER MV3227
  :RAW-TEXT "upstream")
 (:VAR MV3229 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3227 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
338: "What genes regulated by FOS are kinases?"

                    SOURCE-START
e14   BE            1 "What genes regulated by FOS are kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by FOS are kinases?"
 (:VAR MV3239 :ISA BE :SUBJECT MV3235 :PREDICATE MV3240 :PRESENT "PRESENT")
 (:VAR MV3235 :ISA GENE :PREDICATION MV3236 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3236 :ISA REGULATE :OBJECT MV3235 :AGENT MV3238 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3238 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV3240 :ISA KINASE :RAW-TEXT "kinases"))

___________________
339: "What genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "What genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by stat3 are kinases?"
 (:VAR MV3247 :ISA BE :SUBJECT MV3244 :PREDICATE MV3248 :PRESENT "PRESENT")
 (:VAR MV3244 :ISA GENE :PREDICATION MV3245 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3245 :ISA REGULATE :OBJECT MV3244 :AGENT MV3242 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3242 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3248 :ISA KINASE :RAW-TEXT "kinases"))

___________________
340: "What immune pathways involve KRAS and ELK1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve KRAS and ELK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve KRAS and ELK1?"
 (:VAR MV3254 :ISA INVOLVE :THEME MV3253 :THEME MV3257 :PRESENT "PRESENT")
 (:VAR MV3253 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3252 :RAW-TEXT
  "pathways")
 (:VAR MV3252 :ISA IMMUNE :NAME "immune")
 (:VAR MV3257 :ISA COLLECTION :RAW-TEXT "KRAS and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3255 MV3250))
 (:VAR MV3255 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3250 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
341: "What immune pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "What immune pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve SRF?"
 (:VAR MV3261 :ISA INVOLVE :THEME MV3260 :THEME MV3262 :PRESENT "PRESENT")
 (:VAR MV3260 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3259 :RAW-TEXT
  "pathways")
 (:VAR MV3259 :ISA IMMUNE :NAME "immune")
 (:VAR MV3262 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
342: "What immune pathways involve kras and elk1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve kras and elk1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve kras and elk1?"
 (:VAR MV3267 :ISA INVOLVE :THEME MV3266 :THEME MV3270 :PRESENT "PRESENT")
 (:VAR MV3266 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3265 :RAW-TEXT
  "pathways")
 (:VAR MV3265 :ISA IMMUNE :NAME "immune")
 (:VAR MV3270 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3268 MV3263))
 (:VAR MV3268 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3263 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
343: "What immune pathways involve tap1 and jak1?"

                    SOURCE-START
e17   INVOLVE       1 "What immune pathways involve tap1 and jak1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve tap1 and jak1?"
 (:VAR MV3274 :ISA INVOLVE :THEME MV3273 :THEME MV3284 :PRESENT "PRESENT")
 (:VAR MV3273 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3272 :RAW-TEXT
  "pathways")
 (:VAR MV3272 :ISA IMMUNE :NAME "immune")
 (:VAR MV3284 :ISA COLLECTION :RAW-TEXT "tap1 and jak1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3282 MV3283))
 (:VAR MV3282 :ISA PROTEIN :RAW-TEXT "tap1" :UID "UP:Q03518" :NAME
  "TAP1_HUMAN")
 (:VAR MV3283 :ISA PROTEIN :RAW-TEXT "jak1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
344: "What inhibits BRAF?"

                    SOURCE-START
e4    INHIBIT       1 "What inhibits BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits BRAF?"
 (:VAR MV3286 :ISA INHIBIT :AGENT-OR-CAUSE MV3285 :OBJECT MV3287 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV3285 :ISA WHAT)
 (:VAR MV3287 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
345: "What is STAT3?"

                    SOURCE-START
e5    BE            1 "What is STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT3?"
 (:VAR MV3290 :ISA BE :SUBJECT MV3289 :PREDICATE MV3288 :PRESENT "PRESENT")
 (:VAR MV3289 :ISA WHAT)
 (:VAR MV3288 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
346: "What is STAT?"

                    SOURCE-START
e4    BE            1 "What is STAT" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT?"
 (:VAR MV3292 :ISA BE :SUBJECT MV3291 :PREDICATE MV3293 :PRESENT "PRESENT")
 (:VAR MV3291 :ISA WHAT)
 (:VAR MV3293 :ISA PROTEIN :RAW-TEXT "STAT" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
347: "What is downstream of stat3?"

                    SOURCE-START
e11   BE            1 "What is downstream of stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is downstream of stat3?"
 (:VAR MV3296 :ISA BE :SUBJECT MV3295 :PREDICATE MV3297 :PRESENT "PRESENT")
 (:VAR MV3295 :ISA WHAT)
 (:VAR MV3297 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV3294 :RAW-TEXT
  "downstream")
 (:VAR MV3294 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
348: "What is erbb?"

                    SOURCE-START
e4    BE            1 "What is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is erbb?"
 (:VAR MV3302 :ISA BE :SUBJECT MV3301 :PREDICATE MV3303 :PRESENT "PRESENT")
 (:VAR MV3301 :ISA WHAT)
 (:VAR MV3303 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
349: "What is errb?"

                    SOURCE-START
e4    BE            1 "What is errb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is errb?"
 (:VAR MV3305 :ISA BE :SUBJECT MV3304 :PREDICATE MV3306 :PRESENT "PRESENT")
 (:VAR MV3304 :ISA WHAT) (:VAR MV3306 :ISA BIO-ENTITY :NAME "errb"))

___________________
350: "What is regulated by elk1"

                    SOURCE-START
e10   REGULATE      1 "What is regulated by elk1" 7
                    END-OF-SOURCE
("What is regulated by elk1"
 (:VAR MV3312 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3308 :AGENT MV3307
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3308 :ISA WHAT)
 (:VAR MV3307 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
351: "What is the evidence that kras decreases frizzled8?"

                    SOURCE-START
e17   BE            1 "What is the evidence that kras decreases frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases frizzled8?"
 (:VAR MV3316 :ISA BE :SUBJECT MV3315 :PREDICATE MV3322 :PRESENT "PRESENT")
 (:VAR MV3315 :ISA WHAT)
 (:VAR MV3322 :ISA EVIDENCE :STATEMENT MV3321 :HAS-DETERMINER "THE")
 (:VAR MV3321 :ISA DECREASE :AGENT MV3320 :OBJECT MV3314 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV3320 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3314 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
352: "What is the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   BE            1 "What is the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV3325 :ISA BE :SUBJECT MV3324 :PREDICATE MV3335 :PRESENT "PRESENT")
 (:VAR MV3324 :ISA WHAT)
 (:VAR MV3335 :ISA EVIDENCE :STATEMENT MV3330 :HAS-DETERMINER "THE")
 (:VAR MV3330 :ISA DECREASE :AGENT MV3329 :AFFECTED-PROCESS-OR-OBJECT MV3332
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV3329 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3332 :ISA BIO-AMOUNT :MEASURED-ITEM MV3323 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV3323 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
353: "What is the target of Selumetinib?"

                    SOURCE-START
e13   BE            1 "What is the target of Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the target of Selumetinib?"
 (:VAR MV3337 :ISA BE :SUBJECT MV3336 :PREDICATE MV3339 :PRESENT "PRESENT")
 (:VAR MV3336 :ISA WHAT)
 (:VAR MV3339 :ISA TARGET-PROTEIN :AGENT MV3342 :HAS-DETERMINER "THE" :RAW-TEXT
  "target")
 (:VAR MV3342 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
354: "What kinases does smad2 regulate"

                    SOURCE-START
e8    REGULATE      1 "What kinases does smad2 regulate" 7
                    END-OF-SOURCE
("What kinases does smad2 regulate"
 (:VAR MV3348 :ISA REGULATE :OBJECT MV3346 :AGENT MV3344 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3346 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV3344 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
355: "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e23   REGULATE      1 "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3356 :ISA REGULATE :AGENT MV3353 :OBJECT MV3360 :PRESENT "PRESENT"
  :ADVERB MV3354 :ADVERB MV3355 :RAW-TEXT "regulate")
 (:VAR MV3353 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3360 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3357 MV3358 MV3349 MV3350 MV3351))
 (:VAR MV3357 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV3358 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3349 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3350 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV3351 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN")
 (:VAR MV3354 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3355 :ISA FREQUENTLY :NAME "frequently"))

___________________
356: "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3366 :ISA REGULATE :AGENT MV3365 :OBJECT MV3370 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3365 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3370 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3367 MV3368 MV3361 MV3362 MV3363))
 (:VAR MV3367 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV3368 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3361 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3362 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV3363 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
357: "What micrornas are regulated by p53?"

                    SOURCE-START
e12   REGULATE      1 "What micrornas are regulated by p53" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What micrornas are regulated by p53?"
 (:VAR MV3377 :ISA REGULATE :OBJECT MV3373 :AGENT MV3371 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3373 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3371 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
358: "What micrornas regulate genes in the mapk signaling pathways"

                    SOURCE-START
e17   REGULATE      1 "What micrornas regulate genes in the mapk signaling pathways" 10
                    END-OF-SOURCE
("What micrornas regulate genes in the mapk signaling pathways"
 (:VAR MV3382 :ISA REGULATE :AGENT MV3381 :OBJECT MV3383 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3381 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3383 :ISA GENE :CONTEXT MV3379 :RAW-TEXT "genes")
 (:VAR MV3379 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3386
  :RAW-TEXT "signaling pathways")
 (:VAR MV3386 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
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
 (:VAR MV3389 :ISA INVOLVE :THEME MV3391 :THEME MV3390 :PRESENT "PRESENT")
 (:VAR MV3391 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :NAME "pahtways")
 (:VAR MV3390 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
360: "What pathways are common to STAT3 and SRF?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What pathways are common to STAT3 and SRF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are common to STAT3 and SRF?"
 (:VAR MV3402 :ISA COPULAR-PREDICATION :ITEM MV3394 :VALUE MV3396 :PREDICATE
  MV3395)
 (:VAR MV3394 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3396 :ISA COMMON :THEME MV3400)
 (:VAR MV3400 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3392 MV3399))
 (:VAR MV3392 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3399 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3395 :ISA BE :PRESENT "PRESENT"))

___________________
361: "What pathways involve cfos?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve cfos" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve cfos?"
 (:VAR MV3405 :ISA INVOLVE :THEME MV3404 :THEME MV3406 :PRESENT "PRESENT")
 (:VAR MV3404 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3406 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
362: "What pathways involve kras and elk1?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve kras and elk1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve kras and elk1?"
 (:VAR MV3410 :ISA INVOLVE :THEME MV3409 :THEME MV3413 :PRESENT "PRESENT")
 (:VAR MV3409 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3413 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3411 MV3407))
 (:VAR MV3411 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3407 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
363: "What pathways involve the SRF transcription factor?"

                    SOURCE-START
e12   INVOLVE       1 "What pathways involve the SRF transcription factor" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the SRF transcription factor?"
 (:VAR MV3417 :ISA INVOLVE :THEME MV3416 :THEME MV3414 :PRESENT "PRESENT")
 (:VAR MV3416 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3414 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :MODIFIER MV3419
  :RAW-TEXT "transcription factor")
 (:VAR MV3419 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV3440 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3431 :VALUE MV3438 :PREP
  MV3433 :PREDICATE MV3432)
 (:VAR MV3431 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3438 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3433 :ISA IN :WORD "in") (:VAR MV3432 :ISA BE :PRESENT "PRESENT"))

___________________
366: "What proteins are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by lung cancer?"
 (:VAR MV3447 :ISA TARGET :OBJECT MV3443 :CAUSE MV3441 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3443 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3441 :ISA CANCER :UID "TS-0571"))

___________________
367: "What proteins does PLX-4720 target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does PLX-4720 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does PLX-4720 target?"
 (:VAR MV3454 :ISA TARGET :OBJECT MV3451 :AGENT MV3449 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3451 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3449 :ISA MOLECULE :RAW-TEXT "PLX-4720" :UID "PCID:24180719"))

___________________
368: "What proteins does lung cancer target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does lung cancer target" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does lung cancer target?"
 (:VAR MV3460 :ISA TARGET :OBJECT MV3457 :CAUSE MV3455 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3457 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3455 :ISA CANCER :UID "TS-0571"))

___________________
369: "What proteins does vemurafenib target?"

                    SOURCE-START
e8    TARGET        1 "What proteins does vemurafenib target" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does vemurafenib target?"
 (:VAR MV3466 :ISA TARGET :OBJECT MV3462 :AGENT MV3464 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3462 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3464 :ISA DRUG :RAW-TEXT "vemurafenib" :NAME "vemurafenib"))

___________________
370: "What proteins might lead to the development of lung cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of lung cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins might lead to the development of lung cancer?"
 (:VAR MV3471 :ISA LEAD :AGENT MV3469 :THEME MV3474 :MODAL MV3470 :RAW-TEXT
  "lead")
 (:VAR MV3469 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3474 :ISA DEVELOPMENT :DISEASE MV3467 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV3467 :ISA CANCER :UID "TS-0571") (:VAR MV3470 :ISA MIGHT))

___________________
371: "What proteins might lead to the development of pancreatic cancer."

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE
("What proteins might lead to the development of pancreatic cancer."
 (:VAR MV3482 :ISA LEAD :AGENT MV3480 :THEME MV3485 :MODAL MV3481 :RAW-TEXT
  "lead")
 (:VAR MV3480 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3485 :ISA DEVELOPMENT :DISEASE MV3478 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV3478 :ISA CANCER :UID "TS-0739") (:VAR MV3481 :ISA MIGHT))

___________________
372: "What reactome pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What reactome pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune signaling?"
 (:VAR MV3491 :ISA INVOLVE :THEME MV3490 :THEME MV3493 :PRESENT "PRESENT")
 (:VAR MV3490 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3494 :RAW-TEXT
  "pathways")
 (:VAR MV3494 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV3493 :ISA SIGNAL :MODIFIER MV3492 :RAW-TEXT "signaling")
 (:VAR MV3492 :ISA IMMUNE :NAME "immune"))

___________________
373: "What regulates HGF?"

                    SOURCE-START
e4    REGULATE      1 "What regulates HGF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates HGF?"
 (:VAR MV3496 :ISA REGULATE :AGENT-OR-CAUSE MV3495 :OBJECT MV3497 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3495 :ISA WHAT)
 (:VAR MV3497 :ISA PROTEIN :RAW-TEXT "HGF" :UID "UP:P14210" :NAME "HGF_HUMAN"))

___________________
374: "What regulates SMURF2?"

                    SOURCE-START
e5    REGULATE      1 "What regulates SMURF2" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates SMURF2?"
 (:VAR MV3500 :ISA REGULATE :AGENT-OR-CAUSE MV3499 :OBJECT MV3498 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3499 :ISA WHAT)
 (:VAR MV3498 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
375: "What regulates smurf2 in liver"

                    SOURCE-START
e10   REGULATE      1 "What regulates smurf2 in liver" 7
                    END-OF-SOURCE
("What regulates smurf2 in liver"
 (:VAR MV3503 :ISA REGULATE :AGENT-OR-CAUSE MV3502 :OBJECT MV3501 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3502 :ISA WHAT)
 (:VAR MV3501 :ISA PROTEIN :ORGAN MV3505 :RAW-TEXT "smurf2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3505 :ISA LIVER))

___________________
376: "What signaling pathways are shared by RELA and ELK1?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by RELA and ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by RELA and ELK1?"
 (:VAR MV3516 :ISA SHARE :OBJECT MV3507 :PARTICIPANT MV3515 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3507 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3515 :ISA COLLECTION :RAW-TEXT "RELA and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3513 MV3508))
 (:VAR MV3513 :ISA PROTEIN :RAW-TEXT "RELA" :UID "UP:Q04206" :NAME
  "TF65_HUMAN")
 (:VAR MV3508 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
377: "What signaling pathways are shared by STAT3 and SRF?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by STAT3 and SRF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3 and SRF?"
 (:VAR MV3527 :ISA SHARE :OBJECT MV3518 :PARTICIPANT MV3526 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3518 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3526 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3519 MV3525))
 (:VAR MV3519 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3525 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
378: "What signaling pathways are shared by STAT3, SOCS3 and SRF?"

                    SOURCE-START
e19   SHARE         1 "What signaling pathways are shared by STAT3, SOCS3 and SRF" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
 (:VAR MV3539 :ISA SHARE :OBJECT MV3529 :PARTICIPANT MV3538 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3529 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3538 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3 and SRF" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3530 MV3531 MV3537))
 (:VAR MV3530 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3531 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3537 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV3550 :ISA BIO-PRODUCE :AGENT MV3547 :OBJECT MV3548 :PRESENT "PRESENT"
  :RAW-TEXT "produces")
 (:VAR MV3547 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV3548 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
381: "What transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factor transcribes SMURF2?"
 (:VAR MV3554 :ISA TRANSCRIBE :AGENT MV3551 :OBJECT MV3552 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV3551 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV3552 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
382: "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e31   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3570 :ISA COPULAR-PREDICATION :ITEM MV3555 :VALUE MV3562 :PREDICATE
  MV3561)
 (:VAR MV3555 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3562 :ISA COMMON :THEME MV3567)
 (:VAR MV3567 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3568 :RAW-TEXT
  "genes")
 (:VAR MV3568 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3556 MV3557 MV3565 MV3558 MV3559))
 (:VAR MV3556 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3557 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3565 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3558 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3559 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3561 :ISA BE :PRESENT "PRESENT"))

___________________
383: "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e26   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3584 :ISA COPULAR-PREDICATION :ITEM MV3571 :VALUE MV3577 :PREDICATE
  MV3576)
 (:VAR MV3571 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3577 :ISA COMMON :THEME MV3581)
 (:VAR MV3581 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3582 :RAW-TEXT
  "genes")
 (:VAR MV3582 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3572 MV3573 MV3574))
 (:VAR MV3572 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3573 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3574 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3576 :ISA BE :PRESENT "PRESENT"))

___________________
384: "What genes does stat3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate?"
 (:VAR MV3589 :ISA REGULATE :OBJECT MV3587 :AGENT MV3585 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3587 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3585 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
385: "What transcription factors are common to these genes?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "What transcription factors are common to these genes" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to these genes?"
 (:VAR MV3598 :ISA COPULAR-PREDICATION :ITEM MV3590 :VALUE MV3593 :PREDICATE
  MV3592)
 (:VAR MV3590 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3593 :ISA COMMON :THEME MV3596)
 (:VAR MV3596 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV3592 :ISA BE :PRESENT "PRESENT"))

___________________
386: "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e32   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3614 :ISA COPULAR-PREDICATION :ITEM MV3599 :VALUE MV3600 :PREDICATE
  MV3606)
 (:VAR MV3599 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3600 :ISA IN-COMMON :THEME MV3611)
 (:VAR MV3611 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3612 :RAW-TEXT
  "genes")
 (:VAR MV3612 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3601 MV3602 MV3609 MV3603 MV3604))
 (:VAR MV3601 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3602 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3609 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3603 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3604 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3606 :ISA BE :PRESENT "PRESENT"))

___________________
387: "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3628 :ISA COPULAR-PREDICATION :ITEM MV3615 :VALUE MV3616 :PREDICATE
  MV3621)
 (:VAR MV3615 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3616 :ISA IN-COMMON :THEME MV3625)
 (:VAR MV3625 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3626 :RAW-TEXT
  "genes")
 (:VAR MV3626 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3617 MV3618 MV3619))
 (:VAR MV3617 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3618 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3619 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3621 :ISA BE :PRESENT "PRESENT"))

___________________
388: "What transcription factors are regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What transcription factors are regulators of SMURF2 in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2 in liver?"
 (:VAR MV3632 :ISA BE :SUBJECT MV3629 :PREDICATE MV3633 :PRESENT "PRESENT")
 (:VAR MV3629 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3633 :ISA REGULATOR :THEME MV3630 :RAW-TEXT "regulators")
 (:VAR MV3630 :ISA PROTEIN :ORGAN MV3636 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3636 :ISA LIVER))

___________________
389: "What transcription factors are regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What transcription factors are regulators of SMURF2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2?"
 (:VAR MV3642 :ISA BE :SUBJECT MV3639 :PREDICATE MV3643 :PRESENT "PRESENT")
 (:VAR MV3639 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3643 :ISA REGULATOR :THEME MV3640 :RAW-TEXT "regulators")
 (:VAR MV3640 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
390: "What transcription factors are shared by the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e24   SHARE         1 "What transcription factors are shared by the SRF, HRAS, and elk1 genes" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
 (:VAR MV3658 :ISA SHARE :OBJECT MV3646 :PARTICIPANT MV3656 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3646 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3656 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3657 :RAW-TEXT
  "genes")
 (:VAR MV3657 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3653 MV3654 MV3647))
 (:VAR MV3653 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3654 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV3647 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
391: "What transcription factors regulate SMURF2 in liver?"

                    SOURCE-START
e13   REGULATE      1 "What transcription factors regulate SMURF2 in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate SMURF2 in liver?"
 (:VAR MV3663 :ISA REGULATE :AGENT MV3660 :OBJECT MV3661 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3660 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3661 :ISA PROTEIN :ORGAN MV3665 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3665 :ISA LIVER))

___________________
392: "What transcription factors regulate ZEB1?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate ZEB1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate ZEB1?"
 (:VAR MV3670 :ISA REGULATE :AGENT MV3667 :OBJECT MV3668 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3667 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3668 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME
  "ZEB1_HUMAN"))

___________________
393: "What transcription factors regulate erk"

                    SOURCE-START
e7    REGULATE      1 "What transcription factors regulate erk" 6
                    END-OF-SOURCE
("What transcription factors regulate erk"
 (:VAR MV3673 :ISA REGULATE :AGENT MV3671 :OBJECT MV3674 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3671 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3674 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
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
 (:VAR MV3677 :ISA REGULATE :AGENT MV3675 :THEME MV3683 :OBJECT MV3678 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3675 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3683 :ISA BIO-ENTITY :HAS-DETERMINER "THE" :MODIFIER MV3681
  :CELLULAR-PROCESS MV3682 :NAME "pathwya")
 (:VAR MV3681 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
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
 (:VAR MV3682 :ISA SIGNAL :RAW-TEXT "signaling")
 (:VAR MV3678 :ISA GENE :RAW-TEXT "genes"))

___________________
395: "What transcription factors regulated frizzled8?"

                    SOURCE-START
e9    PROTEIN       1 "What transcription factors regulated frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulated frizzled8?"
 (:VAR MV3686 :ISA PROTEIN :HAS-DETERMINER "WHAT" :PREDICATION MV3688 :RAW-TEXT
  "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV3688 :ISA REGULATE :OBJECT MV3686 :AGENT MV3685 :RAW-TEXT "regulated")
 (:VAR MV3685 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
396: "What transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors transcribe SMURF2?"
 (:VAR MV3692 :ISA TRANSCRIBE :AGENT MV3689 :OBJECT MV3690 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV3689 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3690 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
397: "What upregulates fzd8?"

                    SOURCE-START
e5    UPREGULATE    1 "What upregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates fzd8?"
 (:VAR MV3695 :ISA UPREGULATE :AGENT-OR-CAUSE MV3694 :OBJECT MV3693 :PRESENT
  "PRESENT" :RAW-TEXT "upregulates")
 (:VAR MV3694 :ISA WHAT)
 (:VAR MV3693 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
398: "Where is STAT3 expressed?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Where is STAT3 expressed" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Where is STAT3 expressed?"
 (:VAR MV3701 :ISA GENE-TRANSCRIPT-EXPRESS :LOCATION MV3697 :OBJECT MV3696
  :PAST "PAST" :RAW-TEXT "expressed")
 (:VAR MV3697 :ISA WHERE)
 (:VAR MV3696 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
399: "Which KEGG pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve SRF?"
 (:VAR MV3705 :ISA INVOLVE :THEME MV3704 :THEME MV3706 :PRESENT "PRESENT")
 (:VAR MV3704 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3703 :RAW-TEXT
  "pathways")
 (:VAR MV3703 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV3706 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
400: "Which KEGG pathways use SRF?"

                    SOURCE-START
e9    BIO-USE       1 "Which KEGG pathways use SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways use SRF?"
 (:VAR MV3711 :ISA BIO-USE :AGENT MV3709 :OBJECT MV3712 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3709 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3708 :RAW-TEXT
  "pathways")
 (:VAR MV3708 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV3712 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
401: "What transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate frizzled8?"
 (:VAR MV3716 :ISA REGULATE :AGENT MV3713 :OBJECT MV3714 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3713 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3714 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
402: "Which also regulate srf"

                    SOURCE-START
e7    REGULATE      1 "Which also regulate srf" 5
                    END-OF-SOURCE
("Which also regulate srf"
 (:VAR MV3720 :ISA REGULATE :AGENT-OR-CAUSE MV3717 :OBJECT MV3721 :PRESENT
  "PRESENT" :ADVERB MV3718 :RAW-TEXT "regulate")
 (:VAR MV3717 :ISA WHICH)
 (:VAR MV3721 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3718 :ISA ALSO :NAME "also"))

___________________
403: "Which apoptotic genes are regulated by stat3?"

                    SOURCE-START
e15   REGULATE      1 "Which apoptotic genes are regulated by stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes are regulated by stat3?"
 (:VAR MV3730 :ISA REGULATE :OBJECT MV3726 :AGENT MV3722 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3726 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3724
  :RAW-TEXT "genes")
 (:VAR MV3724 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3722 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
404: "Which apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "Which apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes is stat3 upstream of?"
 (:VAR MV3737 :ISA BE :SUBJECT MV3736 :PREDICATE MV3738 :PRESENT "PRESENT")
 (:VAR MV3736 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3734
  :RAW-TEXT "genes")
 (:VAR MV3734 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3738 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3736 :MODIFIER MV3732
  :RAW-TEXT "upstream")
 (:VAR MV3736 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3734
  :RAW-TEXT "genes")
 (:VAR MV3734 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3732 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
405: "Which genes are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which genes are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are targeted by STAT3?"
 (:VAR MV3747 :ISA TARGET :OBJECT MV3743 :AGENT MV3741 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3743 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV3741 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
406: "Which genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "Which genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes regulated by stat3 are kinases?"
 (:VAR MV3754 :ISA BE :SUBJECT MV3751 :PREDICATE MV3755 :PRESENT "PRESENT")
 (:VAR MV3751 :ISA GENE :PREDICATION MV3752 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV3752 :ISA REGULATE :OBJECT MV3751 :AGENT MV3749 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3749 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3755 :ISA KINASE :RAW-TEXT "kinases"))

___________________
407: "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e29   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3771 :ISA SHARE :OBJECT MV3763 :PARTICIPANT MV3769 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3763 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3762 :RAW-TEXT
  "pathways")
 (:VAR MV3762 :ISA IMMUNE :NAME "immune")
 (:VAR MV3769 :ISA GENE :EXPRESSES MV3770 :RAW-TEXT "genes")
 (:VAR MV3770 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3757 MV3758 MV3767 MV3759 MV3760))
 (:VAR MV3757 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3758 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3767 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3759 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3760 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
408: "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3786 :ISA SHARE :OBJECT MV3778 :PARTICIPANT MV3784 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3778 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3777 :RAW-TEXT
  "pathways")
 (:VAR MV3777 :ISA IMMUNE :NAME "immune")
 (:VAR MV3784 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3785 :RAW-TEXT
  "genes")
 (:VAR MV3785 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3773 MV3774 MV3775))
 (:VAR MV3773 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3774 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3775 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
409: "Which kegg pathways utilize genes regulated by smad2"

                    SOURCE-START
e15   UTILIZE       1 "Which kegg pathways utilize genes regulated by smad2" 10
                    END-OF-SOURCE
("Which kegg pathways utilize genes regulated by smad2"
 (:VAR MV3791 :ISA UTILIZE :PARTICIPANT MV3790 :OBJECT MV3792 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3790 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3795 :RAW-TEXT
  "pathways")
 (:VAR MV3795 :ISA BIO-ENTITY :NAME "kegg")
 (:VAR MV3792 :ISA GENE :PREDICATION MV3793 :RAW-TEXT "genes")
 (:VAR MV3793 :ISA REGULATE :OBJECT MV3792 :AGENT MV3788 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3788 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
410: "Which Reactome pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which Reactome pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which Reactome pathways utilize SRF?"
 (:VAR MV3800 :ISA UTILIZE :PARTICIPANT MV3799 :OBJECT MV3801 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3799 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3798 :RAW-TEXT
  "pathways")
 (:VAR MV3798 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV3801 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
411: "Which kegg pathways utilize it"

                    SOURCE-START
e9    UTILIZE       1 "Which kegg pathways utilize it" 6
                    END-OF-SOURCE
("Which kegg pathways utilize it"
 (:VAR MV3805 :ISA UTILIZE :PARTICIPANT MV3804 :OBJECT MV3806 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3804 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3803 :RAW-TEXT
  "pathways")
 (:VAR MV3803 :ISA BIO-ENTITY :NAME "kegg")
 (:VAR MV3806 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
412: "Which of them are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of them are regulated by elk1" 9
                    END-OF-SOURCE
("Which of them are regulated by elk1"
 (:VAR MV3814 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3810 :AGENT MV3807
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3810 :ISA PRONOUN/PLURAL :QUANTIFIER MV3808 :WORD "them")
 (:VAR MV3808 :ISA WHICH)
 (:VAR MV3807 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
413: "Which of these are expressed in liver"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of these are expressed in liver" 8
                    END-OF-SOURCE
("Which of these are expressed in liver"
 (:VAR MV3824 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV3819 :ORGAN MV3823
  :PRESENT "PRESENT" :RAW-TEXT "expressed")
 (:VAR MV3819 :ISA THESE :QUANTIFIER MV3817 :WORD "these")
 (:VAR MV3817 :ISA WHICH) (:VAR MV3823 :ISA LIVER))

___________________
414: "Which of these are in immune pathways"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    END-OF-SOURCE
("Which of these are in immune pathways"
 (:VAR MV3835 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3829 :VALUE MV3833 :PREP
  MV3831 :PREDICATE MV3830)
 (:VAR MV3829 :ISA THESE :QUANTIFIER MV3827 :WORD "these")
 (:VAR MV3827 :ISA WHICH)
 (:VAR MV3833 :ISA PATHWAY :MODIFIER MV3832 :RAW-TEXT "pathways")
 (:VAR MV3832 :ISA IMMUNE :NAME "immune") (:VAR MV3831 :ISA IN :WORD "in")
 (:VAR MV3830 :ISA BE :PRESENT "PRESENT"))

___________________
415: "what proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "what proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("what proteins does MEK phosphorylate?"
 (:VAR MV3841 :ISA PHOSPHORYLATE :AMINO-ACID MV3838 :AGENT MV3840 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV3838 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3840 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV3845 :ISA BE :SUBJECT MV3844 :PREDICATE MV3846 :PRESENT "PRESENT")
 (:VAR MV3844 :ISA THESE :QUANTIFIER MV3842 :WORD "these")
 (:VAR MV3842 :ISA WHICH) (:VAR MV3846 :ISA KINASE :RAW-TEXT "kinases"))

___________________
417: "Which of those are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by elk1" 9
                    END-OF-SOURCE
("Which of those are regulated by elk1"
 (:VAR MV3855 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3851 :AGENT MV3848
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3851 :ISA THOSE :QUANTIFIER MV3849 :WORD "those")
 (:VAR MV3849 :ISA WHICH)
 (:VAR MV3848 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
418: "Which of these are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by elk1" 9
                    END-OF-SOURCE
("Which of these are regulated by elk1"
 (:VAR MV3865 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3861 :AGENT MV3858
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3861 :ISA THESE :QUANTIFIER MV3859 :WORD "these")
 (:VAR MV3859 :ISA WHICH)
 (:VAR MV3858 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
419: "Which of these are regulated by fakeprotein"

                    SOURCE-START
e14   REGULATE      1 "Which of these are regulated by fakeprotein" 8
                    END-OF-SOURCE
("Which of these are regulated by fakeprotein"
 (:VAR MV3875 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3870 :AGENT MV3874
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3870 :ISA THESE :QUANTIFIER MV3868 :WORD "these")
 (:VAR MV3868 :ISA WHICH) (:VAR MV3874 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
420: "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3891 :ISA SHARE :OBJECT MV3883 :PARTICIPANT MV3889 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3883 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3889 :ISA GENE :EXPRESSES MV3890 :RAW-TEXT "genes")
 (:VAR MV3890 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3878 MV3879 MV3887 MV3880 MV3881))
 (:VAR MV3878 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3879 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3887 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3880 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3881 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
421: "Which pathways are shared by stat3, socs3, and creb5"

                    SOURCE-START
e21   SHARE         1 "Which pathways are shared by stat3, socs3, and creb5" 15
                    END-OF-SOURCE
("Which pathways are shared by stat3, socs3, and creb5"
 (:VAR MV3905 :ISA SHARE :OBJECT MV3896 :PARTICIPANT MV3904 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3896 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3904 :ISA COLLECTION :RAW-TEXT "stat3, socs3, and creb5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3893 MV3894 MV3903))
 (:VAR MV3893 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3894 :ISA PROTEIN :RAW-TEXT "socs3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3903 :ISA PROTEIN :RAW-TEXT "creb5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
422: "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e30   SHARE         1 "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3921 :ISA SHARE :OBJECT MV3912 :PARTICIPANT MV3919 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3912 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3919 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3920 :RAW-TEXT
  "genes")
 (:VAR MV3920 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3907 MV3908 MV3917 MV3909 MV3910))
 (:VAR MV3907 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3908 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3917 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3909 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3910 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
423: "Which pathways involve TAP1 and JAK1?"

                    SOURCE-START
e11   INVOLVE       1 "Which pathways involve TAP1 and JAK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve TAP1 and JAK1?"
 (:VAR MV3927 :ISA INVOLVE :THEME MV3926 :THEME MV3929 :PRESENT "PRESENT")
 (:VAR MV3926 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3929 :ISA COLLECTION :RAW-TEXT "TAP1 and JAK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3923 MV3924))
 (:VAR MV3923 :ISA PROTEIN :RAW-TEXT "TAP1" :UID "UP:Q03518" :NAME
  "TAP1_HUMAN")
 (:VAR MV3924 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
424: "Which pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "Which pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve calcium?"
 (:VAR MV3932 :ISA INVOLVE :THEME MV3931 :THEME MV3933 :PRESENT "PRESENT")
 (:VAR MV3931 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3933 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
425: "Which pathways use SRF?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use SRF?"
 (:VAR MV3937 :ISA BIO-USE :AGENT MV3935 :OBJECT MV3938 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3935 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3938 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
426: "Which pathways use these"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    END-OF-SOURCE
("Which pathways use these"
 (:VAR MV3942 :ISA BIO-USE :AGENT MV3940 :OBJECT MV3943 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3940 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3943 :ISA THESE :WORD "these"))

___________________
427: "Which pathways utilize SRF?"

                    SOURCE-START
e6    UTILIZE       1 "Which pathways utilize SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways utilize SRF?"
 (:VAR MV3946 :ISA UTILIZE :PARTICIPANT MV3945 :OBJECT MV3947 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3945 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3947 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
428: "Which pathways utilize these genes"

                    SOURCE-START
e8    UTILIZE       1 "Which pathways utilize these genes" 6
                    END-OF-SOURCE
("Which pathways utilize these genes"
 (:VAR MV3950 :ISA UTILIZE :PARTICIPANT MV3949 :OBJECT MV3952 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3949 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3952 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
429: "Which proteins are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which proteins are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which proteins are targeted by STAT3?"
 (:VAR MV3959 :ISA TARGET :OBJECT MV3955 :AGENT MV3953 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3955 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "proteins")
 (:VAR MV3953 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
430: "Which reactome pathways utilize srf"

                    SOURCE-START
e8    UTILIZE       1 "Which reactome pathways utilize srf" 6
                    END-OF-SOURCE
("Which reactome pathways utilize srf"
 (:VAR MV3964 :ISA UTILIZE :PARTICIPANT MV3963 :OBJECT MV3965 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3963 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3962 :RAW-TEXT
  "pathways")
 (:VAR MV3962 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV3965 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
431: "Which transcription factors are in the MAPK signaling pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "Which transcription factors are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors are in the MAPK signaling pathway?"
 (:VAR MV3976 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3966 :VALUE MV3975 :PREP
  "IN" :PREDICATE MV3969)
 (:VAR MV3966 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3975 :ISA TRANSCRIPTION-FACTOR :CONTEXT-OR-IN-PATHWAY MV3967
  :HAS-DETERMINER "WHICH" :RAW-TEXT "transcription factors")
 (:VAR MV3967 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3972
  :RAW-TEXT "signaling pathway")
 (:VAR MV3972 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3969 :ISA BE :PRESENT "PRESENT"))

___________________
432: "Which transcription factors regulate frizzled8 in the liver?"

                    SOURCE-START
e16   REGULATE      1 "Which transcription factors regulate frizzled8 in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8 in the liver?"
 (:VAR MV3981 :ISA REGULATE :AGENT MV3978 :OBJECT MV3979 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3978 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3979 :ISA PROTEIN :ORGAN MV3984 :RAW-TEXT "frizzled8" :UID "UP:Q9H461"
  :NAME "FZD8_HUMAN")
 (:VAR MV3984 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
433: "Which transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "Which transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8?"
 (:VAR MV3989 :ISA REGULATE :AGENT MV3986 :OBJECT MV3987 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3986 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3987 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
434: "Let's move AKT1 on top."

                    SOURCE-START
e12   EXPLICIT-SUGGESTION 1 "Let's move AKT1 on top" 9
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 on top."
 (:VAR MV3997 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV3992 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV3992 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV3994 :THEME
  MV3991 :PRESENT "PRESENT")
 (:VAR MV3994 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV3991 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
435: "Let's show the phosphorylated AKT1 on top."

                    SOURCE-START
e19   EXPLICIT-SUGGESTION 1 "Let's show the phosphorylated AKT1 on top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show the phosphorylated AKT1 on top."
 (:VAR MV4009 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4000 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4000 :ISA SHOW :STATEMENT-OR-THEME MV4008 :PRESENT "PRESENT")
 (:VAR MV4008 :ISA PROTEIN :HAS-DETERMINER "THE" :PREDICATION MV4007 :RAW-TEXT
  "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4007 :ISA PHOSPHORYLATE :SUBSTRATE MV4004 :SUBSTRATE MV4008 :RAW-TEXT
  "phosphorylated")
 (:VAR MV4004 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
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
 (:VAR MV4012 :ISA BE :SUBJECT MV4011 :PREDICATE MV4015 :PRESENT "PRESENT")
 (:VAR MV4011 :ISA WHAT)
 (:VAR MV4015 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4019 :HAS-DETERMINER
  "THE" :PREDICATION MV4014 :RAW-TEXT "upstreams")
 (:VAR MV4019 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV4010 MV4018))
 (:VAR MV4010 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4018 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV4014 :ISA COMMON))

___________________
437: "Is stat3 expressed exclusively in liver?"

                    SOURCE-START
e11   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed exclusively in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed exclusively in liver?"
 (:VAR MV4028 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV4026 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV4026 :ISA LIVER))

___________________
438: "Is stat3 expressed in spleen?"

                    SOURCE-START
e9    GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in spleen" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in spleen?"
 (:VAR MV4035 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV4033 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV4033 :ISA SPLEEN))

___________________
439: "Show phosphorylated akt1 on top."

                    SOURCE-START
e13   SHOW          1 "Show phosphorylated akt1 on top" 7
                    PERIOD
                    END-OF-SOURCE
("Show phosphorylated akt1 on top."
 (:VAR MV4037 :ISA SHOW :STATEMENT-OR-THEME MV4044 :PRESENT "PRESENT")
 (:VAR MV4044 :ISA PROTEIN :PREDICATION MV4043 :RAW-TEXT "akt1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4043 :ISA PHOSPHORYLATE :SUBSTRATE MV4040 :SUBSTRATE MV4044 :RAW-TEXT
  "phosphorylated")
 (:VAR MV4040 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
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
 (:VAR MV4047 :ISA BE :SUBJECT MV4046 :PREDICATE MV4050 :PRESENT "PRESENT")
 (:VAR MV4046 :ISA WHAT)
 (:VAR MV4050 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4054 :HAS-DETERMINER
  "THE" :PREDICATION MV4049 :RAW-TEXT "upstreams")
 (:VAR MV4054 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRA" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4045 MV4053))
 (:VAR MV4045 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4053 :ISA BIO-ENTITY :NAME "BRA") (:VAR MV4049 :ISA COMMON))

___________________
441: "RAF activates MEK and MEK activates ERK."

                    SOURCE-START
e11   BIO-ACTIVATE  1 "RAF activates MEK and MEK activates ERK" 8
                    PERIOD
                    END-OF-SOURCE
("RAF activates MEK and MEK activates ERK."
 (:VAR MV4063 :ISA COLLECTION :RAW-TEXT
  "RAF activates MEK and MEK activates ERK" :TYPE BIO-ACTIVATE :NUMBER 2 :ITEMS
  (MV4057 MV4061))
 (:VAR MV4057 :ISA BIO-ACTIVATE :AGENT MV4056 :OBJECT MV4058 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4056 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV4058 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4061 :ISA BIO-ACTIVATE :AGENT MV4060 :OBJECT MV4062 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4060 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4062 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV4065 :ISA BE :SUBJECT MV4064 :PREDICATE MV4067 :PRESENT "PRESENT")
 (:VAR MV4064 :ISA WHAT)
 (:VAR MV4067 :ISA PATH :END MV4071 :START MV4069 :HAS-DETERMINER "THE")
 (:VAR MV4071 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4069 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
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
 (:VAR MV4074 :ISA REMOVE :OBJECT MV4081 :PRESENT "PRESENT" :RAW-TEXT "remove")
 (:VAR MV4081 :ISA FACT :STATEMENT MV4079 :HAS-DETERMINER "THE")
 (:VAR MV4079 :ISA BIO-ACTIVATE :AGENT MV4078 :OBJECT MV4080 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4078 :ISA PROTEIN-FAMILY :RAW-TEXT "mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4080 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
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
 (:VAR MV4092 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4084 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4084 :ISA SHOW :STATEMENT-OR-THEME MV4091 :PRESENT "PRESENT")
 (:VAR MV4091 :ISA PROTEIN :PREDICATION MV4090 :RAW-TEXT "akt1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4090 :ISA PHOSPHORYLATE :SUBSTRATE MV4087 :SUBSTRATE MV4091 :RAW-TEXT
  "phosphorylated")
 (:VAR MV4087 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
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
 (:VAR MV4095 :ISA BE :SUBJECT MV4094 :PREDICATE MV4093 :PRESENT "PRESENT")
 (:VAR MV4094 :ISA WHAT)
 (:VAR MV4093 :ISA POSITIVE-REGULATOR :THEME MV4099 :RAW-TEXT
  "positive regulators")
 (:VAR MV4099 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4098 :RAW-TEXT
  "gene")
 (:VAR MV4098 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
446: "what transcription factors regulate FOS in soft tissue?"

                    SOURCE-START
e13   REGULATE      1 "what transcription factors regulate FOS in soft tissue" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors regulate FOS in soft tissue?"
 (:VAR MV4104 :ISA REGULATE :AGENT MV4101 :OBJECT MV4105 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV4101 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4105 :ISA PROTEIN :ORGAN MV4102 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV4102 :ISA BIO-ORGAN :NAME "soft tissue" :UID "NCIT:C12471"))

___________________
447: "Are there any drugs inhibiting MEK?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there any drugs inhibiting MEK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs inhibiting MEK?"
 (:VAR MV4115 :ISA THERE-EXISTS :VALUE MV4112 :PREDICATE MV4109)
 (:VAR MV4112 :ISA DRUG :PREDICATION MV4113 :QUANTIFIER MV4111 :RAW-TEXT
  "drugs")
 (:VAR MV4113 :ISA INHIBIT :AGENT MV4112 :OBJECT MV4114 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "inhibiting")
 (:VAR MV4114 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4111 :ISA ANY :WORD "any") (:VAR MV4109 :ISA SYNTACTIC-THERE))

___________________
448: "Are there any drugs targeting KRAS?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there any drugs targeting KRAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs targeting KRAS?"
 (:VAR MV4123 :ISA THERE-EXISTS :VALUE MV4120 :PREDICATE MV4117)
 (:VAR MV4120 :ISA DRUG :PREDICATION MV4121 :QUANTIFIER MV4119 :RAW-TEXT
  "drugs")
 (:VAR MV4121 :ISA TARGET :AGENT MV4120 :OBJECT MV4122 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "targeting")
 (:VAR MV4122 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV4119 :ISA ANY :WORD "any") (:VAR MV4117 :ISA SYNTACTIC-THERE))

___________________
449: "Are there any genes in the liver that are regulated by stat3?"

                    SOURCE-START
e30   THERE-EXISTS  1 "Are there any genes in the liver that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes in the liver that are regulated by stat3?"
 (:VAR MV4137 :ISA THERE-EXISTS :VALUE MV4129 :PREDICATE MV4126)
 (:VAR MV4129 :ISA GENE :PREDICATION MV4138 :ORGAN MV4132 :QUANTIFIER MV4128
  :RAW-TEXT "genes")
 (:VAR MV4138 :ISA REGULATE :OBJECT MV4129 :THAT-REL T :AGENT MV4124 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4124 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4132 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4128 :ISA ANY :WORD "any") (:VAR MV4126 :ISA SYNTACTIC-THERE))

___________________
450: "Are there any genes involved in apoptosis that are regulated by stat3?"

                    SOURCE-START
e30   THERE-EXISTS  1 "Are there any genes involved in apoptosis that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes involved in apoptosis that are regulated by stat3?"
 (:VAR MV4154 :ISA THERE-EXISTS :VALUE MV4146 :PREDICATE MV4143)
 (:VAR MV4146 :ISA GENE :PREDICATION MV4147 :QUANTIFIER MV4145 :RAW-TEXT
  "genes")
 (:VAR MV4147 :ISA INVOLVE :THEME MV4146 :THEME MV4149 :PAST "PAST")
 (:VAR MV4149 :ISA APOPTOSIS :PREDICATION MV4155 :RAW-TEXT "apoptosis")
 (:VAR MV4155 :ISA REGULATE :AFFECTED-PROCESS MV4149 :THAT-REL T :AGENT MV4141
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4141 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4145 :ISA ANY :WORD "any") (:VAR MV4143 :ISA SYNTACTIC-THERE))

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
 (:VAR MV4176 :ISA THERE-EXISTS :VALUE MV4174 :PREDICATE MV4171)
 (:VAR MV4174 :ISA INHIBITOR :TARGET-OR-PROTEIN MV4169 :QUANTIFIER MV4173
  :RAW-TEXT "inhibitors")
 (:VAR MV4169 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV4173 :ISA ANY :WORD "any") (:VAR MV4171 :ISA SYNTACTIC-THERE))

___________________
453: "Are there genes regulated by elk1 and srf"

                    SOURCE-START
e18   THERE-EXISTS  1 "Are there genes regulated by elk1 and srf" 10
                    END-OF-SOURCE
("Are there genes regulated by elk1 and srf"
 (:VAR MV4187 :ISA THERE-EXISTS :VALUE MV4182 :PREDICATE MV4180)
 (:VAR MV4182 :ISA GENE :PREDICATION MV4183 :RAW-TEXT "genes")
 (:VAR MV4183 :ISA REGULATE :OBJECT MV4182 :AGENT MV4188 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4188 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4178 MV4186))
 (:VAR MV4178 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4186 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4180 :ISA SYNTACTIC-THERE))

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
 (:VAR MV4249 :ISA POLAR-QUESTION :STATEMENT MV4243)
 (:VAR MV4243 :ISA SHOW :AGENT MV4242 :STATEMENT-OR-THEME MV4245 :BENEFICIARY
  MV4244 :MODAL "CAN")
 (:VAR MV4242 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4245 :ISA GENE :PREDICATION MV4246 :RAW-TEXT "genes")
 (:VAR MV4246 :ISA REGULATE :OBJECT MV4245 :AGENT MV4240 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4240 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4244 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
458: "Can you show me genes that are regulated by ELK1"

                    SOURCE-START
e26   SHOW          1 "Can you show me genes that are regulated by ELK1" 12
                    END-OF-SOURCE
("Can you show me genes that are regulated by ELK1"
 (:VAR MV4262 :ISA POLAR-QUESTION :STATEMENT MV4253)
 (:VAR MV4253 :ISA SHOW :AGENT MV4252 :STATEMENT-OR-THEME MV4255 :BENEFICIARY
  MV4254 :MODAL "CAN")
 (:VAR MV4252 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4255 :ISA GENE :PREDICATION MV4260 :RAW-TEXT "genes")
 (:VAR MV4260 :ISA REGULATE :OBJECT MV4255 :THAT-REL T :AGENT MV4250 :MODAL
  "CAN" :RAW-TEXT "regulated")
 (:VAR MV4250 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4254 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
459: "Can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "Can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("Can you show me the pahtways that involve SRF"
 (:VAR MV4272 :ISA POLAR-QUESTION :STATEMENT MV4265)
 (:VAR MV4265 :ISA SHOW :AGENT MV4264 :STATEMENT-OR-THEME MV4268 :BENEFICIARY
  MV4266 :MODAL "CAN")
 (:VAR MV4264 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4268 :ISA BIO-ENTITY :PREDICATION MV4270 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4270 :ISA INVOLVE :THEME MV4268 :THAT-REL T :THEME MV4271 :MODAL
  "CAN")
 (:VAR MV4271 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4266 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
460: "Can you tell me the genes regulated by STAT3"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes regulated by STAT3" 11
                    END-OF-SOURCE
("Can you tell me the genes regulated by STAT3"
 (:VAR MV4283 :ISA POLAR-QUESTION :STATEMENT MV4276)
 (:VAR MV4276 :ISA TELL :AGENT MV4275 :THEME MV4279 :BENEFICIARY MV4277 :MODAL
  "CAN")
 (:VAR MV4275 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4279 :ISA GENE :PREDICATION MV4280 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4280 :ISA REGULATE :OBJECT MV4279 :AGENT MV4273 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4273 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4277 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
461: "Can you tell me the genes that STAT3 regulates"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes that STAT3 regulates" 11
                    END-OF-SOURCE
("Can you tell me the genes that STAT3 regulates"
 (:VAR MV4293 :ISA POLAR-QUESTION :STATEMENT MV4287)
 (:VAR MV4287 :ISA TELL :AGENT MV4286 :THEME MV4290 :BENEFICIARY MV4288 :MODAL
  "CAN")
 (:VAR MV4286 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4290 :ISA GENE :PREDICATION MV4292 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4292 :ISA REGULATE :OBJECT MV4290 :THAT-REL T :AGENT MV4284 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4284 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4288 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
462: "Can you tell me the genes that are regulated by STAT3"

                    SOURCE-START
e29   TELL          1 "Can you tell me the genes that are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes that are regulated by STAT3"
 (:VAR MV4307 :ISA POLAR-QUESTION :STATEMENT MV4297)
 (:VAR MV4297 :ISA TELL :AGENT MV4296 :THEME MV4300 :BENEFICIARY MV4298 :MODAL
  "CAN")
 (:VAR MV4296 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4300 :ISA GENE :PREDICATION MV4305 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4305 :ISA REGULATE :OBJECT MV4300 :THAT-REL T :AGENT MV4294 :MODAL
  "CAN" :RAW-TEXT "regulated")
 (:VAR MV4294 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4298 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
463: "Can you tell me the genes which are regulated by STAT3"

                    SOURCE-START
e28   TELL          1 "Can you tell me the genes which are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes which are regulated by STAT3"
 (:VAR MV4322 :ISA POLAR-QUESTION :STATEMENT MV4311)
 (:VAR MV4311 :ISA TELL :AGENT MV4310 :THEME MV4314 :BENEFICIARY MV4312 :MODAL
  "CAN")
 (:VAR MV4310 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4314 :ISA GENE :PREDICATION MV4321 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4321 :ISA REGULATE :OBJECT MV4314 :AGENT MV4308 :MODAL MV4309
  :RAW-TEXT "regulated")
 (:VAR MV4308 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4309 :ISA CAN) (:VAR MV4312 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
464: "Can you tell me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf"
 (:VAR MV4338 :ISA POLAR-QUESTION :STATEMENT MV4327)
 (:VAR MV4327 :ISA TELL :AGENT MV4326 :THEME MV4336 :THEME MV4328 :MODAL "CAN")
 (:VAR MV4326 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4336 :ISA SHARE :OBJECT MV4323 :PARTICIPANT MV4335 :MODAL "CAN"
  :RAW-TEXT "shared")
 (:VAR MV4323 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4335 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4324 MV4334))
 (:VAR MV4324 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4334 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4328 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
465: "Can you tell me which genes are regulated by STAT3"

                    SOURCE-START
e24   TELL          1 "Can you tell me which genes are regulated by STAT3" 12
                    END-OF-SOURCE
("Can you tell me which genes are regulated by STAT3"
 (:VAR MV4351 :ISA POLAR-QUESTION :STATEMENT MV4342)
 (:VAR MV4342 :ISA TELL :AGENT MV4341 :THEME MV4349 :THEME MV4343 :MODAL "CAN")
 (:VAR MV4341 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4349 :ISA REGULATE :OBJECT MV4345 :AGENT MV4339 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4345 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4339 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4343 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
466: "Can you tell me which genes in the liver are regulated by stat3?"

                    SOURCE-START
e32   TELL          1 "Can you tell me which genes in the liver are regulated by stat3" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes in the liver are regulated by stat3?"
 (:VAR MV4368 :ISA POLAR-QUESTION :STATEMENT MV4355)
 (:VAR MV4355 :ISA TELL :AGENT MV4354 :THEME MV4365 :THEME MV4356 :MODAL "CAN")
 (:VAR MV4354 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4365 :ISA REGULATE :OBJECT MV4358 :AGENT MV4352 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4358 :ISA GENE :ORGAN MV4361 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV4361 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4352 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4356 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
467: "Can you tell me which genes stat3 regulates?"

                    SOURCE-START
e18   TELL          1 "Can you tell me which genes stat3 regulates" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes stat3 regulates?"
 (:VAR MV4377 :ISA POLAR-QUESTION :STATEMENT MV4372)
 (:VAR MV4372 :ISA TELL :AGENT MV4371 :THEME MV4375 :BENEFICIARY MV4373 :MODAL
  "CAN")
 (:VAR MV4371 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4375 :ISA GENE :PREDICATION MV4376 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV4376 :ISA REGULATE :OBJECT MV4375 :AGENT MV4369 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4369 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4373 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
468: "Does STAT3 affect the expression of c-fos?"

                    SOURCE-START
e18   AFFECT        1 "Does STAT3 affect the expression of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of c-fos?"
 (:VAR MV4387 :ISA POLAR-QUESTION :STATEMENT MV4385)
 (:VAR MV4385 :ISA AFFECT :AGENT MV4378 :AFFECTED-PROCESS MV4383 :RAW-TEXT
  "affect")
 (:VAR MV4378 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4383 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4379 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4379 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
469: "Does STAT3 affect the expression of the c-fos gene?"

                    SOURCE-START
e23   AFFECT        1 "Does STAT3 affect the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of the c-fos gene?"
 (:VAR MV4399 :ISA POLAR-QUESTION :STATEMENT MV4397)
 (:VAR MV4397 :ISA AFFECT :AGENT MV4388 :AFFECTED-PROCESS MV4393 :RAW-TEXT
  "affect")
 (:VAR MV4388 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4393 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4396 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4396 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4389 :RAW-TEXT
  "gene")
 (:VAR MV4389 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
470: "Does STAT3 increase the expression of the c-fos gene?"

                    SOURCE-START
e24   INCREASE      1 "Does STAT3 increase the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase the expression of the c-fos gene?"
 (:VAR MV4412 :ISA POLAR-QUESTION :STATEMENT MV4410)
 (:VAR MV4410 :ISA INCREASE :AGENT MV4400 :AFFECTED-PROCESS MV4406 :RAW-TEXT
  "increase")
 (:VAR MV4400 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4406 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4409 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4409 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4401 :RAW-TEXT
  "gene")
 (:VAR MV4401 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
471: "Does STAT3 increase transcription of the c-fos gene?"

                    SOURCE-START
e21   INCREASE      1 "Does STAT3 increase transcription of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase transcription of the c-fos gene?"
 (:VAR MV4424 :ISA POLAR-QUESTION :STATEMENT MV4422)
 (:VAR MV4422 :ISA INCREASE :AGENT MV4413 :AFFECTED-PROCESS MV4418 :RAW-TEXT
  "increase")
 (:VAR MV4413 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4418 :ISA TRANSCRIBE :OBJECT MV4421 :RAW-TEXT "transcription")
 (:VAR MV4421 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4414 :RAW-TEXT
  "gene")
 (:VAR MV4414 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
472: "Does stat3 affect the expression of cfos?"

                    SOURCE-START
e17   AFFECT        1 "Does stat3 affect the expression of cfos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 affect the expression of cfos?"
 (:VAR MV4434 :ISA POLAR-QUESTION :STATEMENT MV4432)
 (:VAR MV4432 :ISA AFFECT :AGENT MV4425 :AFFECTED-PROCESS MV4429 :RAW-TEXT
  "affect")
 (:VAR MV4425 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4429 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4431 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4431 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
473: "Does the mTor pathway contain SGK1?"

                    SOURCE-START
e16   CONTAIN       1 "Does the mTor pathway contain SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway contain SGK1?"
 (:VAR MV4444 :ISA POLAR-QUESTION :STATEMENT MV4443)
 (:VAR MV4443 :ISA CONTAIN :THEME MV4441 :PATIENT MV4435)
 (:VAR MV4441 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4438 :RAW-TEXT
  "pathway")
 (:VAR MV4438 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME
  "MTOR_HUMAN")
 (:VAR MV4435 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
474: "Find a treatment for pancreatic cancer."

                    SOURCE-START
e12   BIO-FIND      1 "Find a treatment for pancreatic cancer" 7
                    PERIOD
                    END-OF-SOURCE
("Find a treatment for pancreatic cancer."
 (:VAR MV4447 :ISA BIO-FIND :OBJECT MV4449 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4449 :ISA TREATMENT :DISEASE MV4445 :HAS-DETERMINER "A" :RAW-TEXT
  "treatment")
 (:VAR MV4445 :ISA CANCER :UID "TS-0739"))

___________________
475: "Find genes in the liver regulated by stat3"

                    SOURCE-START
e18   BIO-FIND      1 "Find genes in the liver regulated by stat3" 10
                    END-OF-SOURCE
("Find genes in the liver regulated by stat3"
 (:VAR MV4454 :ISA BIO-FIND :OBJECT MV4455 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4455 :ISA GENE :PREDICATION MV4459 :ORGAN MV4458 :RAW-TEXT "genes")
 (:VAR MV4459 :ISA REGULATE :OBJECT MV4455 :AGENT MV4452 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4452 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4458 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
476: "Find genes that stat3 regulates"

                    SOURCE-START
e12   BIO-FIND      1 "Find genes that stat3 regulates" 7
                    END-OF-SOURCE
("Find genes that stat3 regulates"
 (:VAR MV4465 :ISA BIO-FIND :OBJECT MV4466 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4466 :ISA GENE :PREDICATION MV4468 :RAW-TEXT "genes")
 (:VAR MV4468 :ISA REGULATE :OBJECT MV4466 :THAT-REL T :AGENT MV4463 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4463 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
477: "Find transcription factors shared by elk1 and srf"

                    SOURCE-START
e14   BIO-FIND      1 "Find transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Find transcription factors shared by elk1 and srf"
 (:VAR MV4472 :ISA BIO-FIND :OBJECT MV4469 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4469 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4473 :RAW-TEXT
  "transcription factors")
 (:VAR MV4473 :ISA SHARE :OBJECT MV4469 :PARTICIPANT MV4477 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV4477 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4470 MV4476))
 (:VAR MV4470 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4476 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
478: "How does KRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does KRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS activate MAPK3?"
 (:VAR MV4483 :ISA BIO-ACTIVATE :MANNER MV4480 :AGENT MV4482 :OBJECT MV4479
  :PRESENT "PRESENT" :RAW-TEXT "activate")
 (:VAR MV4480 :ISA HOW)
 (:VAR MV4482 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV4479 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
479: "How does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e14   REGULATE      1 "How does STAT3 regulate the c-fos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("How does STAT3 regulate the c-fos gene?"
 (:VAR MV4488 :ISA REGULATE :MANNER MV4486 :AGENT MV4484 :OBJECT MV4490
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4486 :ISA HOW)
 (:VAR MV4484 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4490 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4485 :RAW-TEXT
  "gene")
 (:VAR MV4485 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
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
 (:VAR MV4513 :ISA REGULATE :MANNER MV4511 :AGENT MV4510 :AFFECTED-PROCESS
  MV4514 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4511 :ISA HOW)
 (:VAR MV4510 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4514 :ISA APOPTOSIS :ORGAN MV4517 :RAW-TEXT "apoptosis")
 (:VAR MV4517 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
482: "How does stat3 regulate apoptosis?"

                    SOURCE-START
e8    REGULATE      1 "How does stat3 regulate apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis?"
 (:VAR MV4522 :ISA REGULATE :MANNER MV4520 :AGENT MV4519 :AFFECTED-PROCESS
  MV4523 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4520 :ISA HOW)
 (:VAR MV4519 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4523 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
483: "How does stat3 regulate apoptotic genes?"

                    SOURCE-START
e11   REGULATE      1 "How does stat3 regulate apoptotic genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptotic genes?"
 (:VAR MV4527 :ISA REGULATE :MANNER MV4525 :AGENT MV4524 :OBJECT MV4530
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4525 :ISA HOW)
 (:VAR MV4524 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4530 :ISA GENE :CELLULAR-PROCESS MV4528 :RAW-TEXT "genes")
 (:VAR MV4528 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
484: "How is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e15   INVOLVE       1 "How is stat3 involved in apoptotic regulation" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotic regulation?"
 (:VAR MV4541 :ISA INVOLVE :MANNER MV4532 :THEME MV4531 :THEME MV4538 :PAST
  "PAST")
 (:VAR MV4532 :ISA HOW)
 (:VAR MV4531 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4538 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV4536 :RAW-TEXT
  "regulation")
 (:VAR MV4536 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
485: "How is stat3 involved in apoptotis regulation in the liver?"

                    SOURCE-START
e22   INVOLVE       1 "How is stat3 involved in apoptotis regulation in the liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotis regulation in the liver?"
 (:VAR MV4555 :ISA INVOLVE :MANNER MV4543 :THEME MV4542 :THEME MV4547 :PAST
  "PAST")
 (:VAR MV4543 :ISA HOW)
 (:VAR MV4542 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4547 :ISA REGULATE :OBJECT MV4551 :ORGAN MV4550 :AGENT-OR-OBJECT
  MV4551 :RAW-TEXT "regulation")
 (:VAR MV4551 :ISA BIO-ENTITY :NAME "apoptotis")
 (:VAR MV4550 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4551 :ISA BIO-ENTITY :NAME "apoptotis"))

___________________
486: "How is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e14   INVOLVE       1 "How is stat3 involved in regulating apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in regulating apoptosis?"
 (:VAR MV4565 :ISA INVOLVE :MANNER MV4557 :THEME MV4556 :THEME MV4561 :PAST
  "PAST")
 (:VAR MV4557 :ISA HOW)
 (:VAR MV4556 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4561 :ISA REGULATE :AFFECTED-PROCESS MV4562 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV4562 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
487: "How is stat3 used to regulate apoptosis?"

                    SOURCE-START
e14   BIO-USE       1 "How is stat3 used to regulate apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 used to regulate apoptosis?"
 (:VAR MV4575 :ISA BIO-USE :MANNER MV4567 :OBJECT MV4566 :THEME MV4573 :PAST
  "PAST" :RAW-TEXT "used")
 (:VAR MV4567 :ISA HOW)
 (:VAR MV4566 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4573 :ISA REGULATE :AFFECTED-PROCESS MV4572 :RAW-TEXT "regulate")
 (:VAR MV4572 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
488: "How many genes are in the MAPK signaling pathway?"

                    SOURCE-START
e19   COPULAR-PREDICATE 1 "How many genes are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How many genes are in the MAPK signaling pathway?"
 (:VAR MV4587 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4579 :VALUE MV4586 :PREP
  "IN" :PREDICATE MV4580)
 (:VAR MV4579 :ISA GENE :HAS-DETERMINER "HOW" :QUANTIFIER MV4578 :RAW-TEXT
  "genes")
 (:VAR MV4578 :ISA MANY :WORD "many")
 (:VAR MV4586 :ISA GENE :CONTEXT MV4576 :HAS-DETERMINER "HOW" :QUANTIFIER
  MV4578 :RAW-TEXT "genes")
 (:VAR MV4576 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4583
  :RAW-TEXT "signaling pathway")
 (:VAR MV4583 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV4578 :ISA MANY :WORD "many") (:VAR MV4580 :ISA BE :PRESENT "PRESENT"))

___________________
489: "How might a STAT3 mutation affect breast cancer?"

                    SOURCE-START
e14   AFFECT        1 "How might a STAT3 mutation affect breast cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How might a STAT3 mutation affect breast cancer?"
 (:VAR MV4596 :ISA AFFECT :MANNER MV4591 :MODAL MV4592 :AGENT MV4594 :OBJECT
  MV4590 :PRESENT "PRESENT" :RAW-TEXT "affect")
 (:VAR MV4591 :ISA HOW) (:VAR MV4592 :ISA MIGHT)
 (:VAR MV4594 :ISA MUTATION :OBJECT MV4589 :HAS-DETERMINER "A" :AGENT-OR-OBJECT
  MV4589 :RAW-TEXT "mutation")
 (:VAR MV4589 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4589 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4590 :ISA CANCER :UID "TS-0591"))

___________________
490: "Is STAT3 a regulator for c-fos?"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator for c-fos" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator for c-fos?"
 (:VAR MV4604 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91565>
   (PREDICATE
    (#<regulator 91564>
     (THEME
      (#<protein "FOS_HUMAN" 88496> (RAW-TEXT "c-fos") (UID "UP:P01100")
       (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
491: "Is STAT3 a regulator of c-fos"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator of c-fos" 10
                    END-OF-SOURCE
("Is STAT3 a regulator of c-fos"
 (:VAR MV4612 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91565>
   (PREDICATE
    (#<regulator 91564>
     (THEME
      (#<protein "FOS_HUMAN" 88496> (RAW-TEXT "c-fos") (UID "UP:P01100")
       (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
492: "Is STAT3 a regulator of the c-fos gene"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene"
 (:VAR MV4622 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91569>
   (PREDICATE
    (#<regulator 91568>
     (THEME
      (#<gene 89858> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88496> (RAW-TEXT "c-fos") (UID "UP:P01100")
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
 (:VAR MV4632 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91569>
   (PREDICATE
    (#<regulator 91568>
     (THEME
      (#<gene 89858> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88496> (RAW-TEXT "c-fos") (UID "UP:P01100")
         (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
494: "Is STAT3 a transcription factor for c-fos gene"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene"
 (:VAR MV4641 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89962>
   (PREDICATE
    (#<transcription-factor 89961>
     (CONTROLLED-GENE
      (#<gene 89857>
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88496> (RAW-TEXT "c-fos") (UID "UP:P01100")
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
 (:VAR MV4649 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91573>
   (PREDICATE
    (#<transcription-factor 91572>
     (CONTROLLED-GENE
      (#<protein "FOS_HUMAN" 88496> (RAW-TEXT "c-fos") (UID "UP:P01100")
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
 (:VAR MV4657 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91573>
   (PREDICATE
    (#<transcription-factor 91572>
     (CONTROLLED-GENE
      (#<protein "FOS_HUMAN" 88496> (RAW-TEXT "c-fos") (UID "UP:P01100")
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
 (:VAR MV4667 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91578>
   (PREDICATE
    (#<transcription-factor 91577>
     (CONTROLLED-GENE
      (#<gene 89858> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88496> (RAW-TEXT "c-fos") (UID "UP:P01100")
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
 (:VAR MV4675 :ISA POLAR-QUESTION :STATEMENT MV4674)
 (:VAR MV4674 :ISA REGULATE :AGENT MV4668 :AGENT MV4669 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4668 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4669 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
499: "Is Stat3 a transcription factor for the c-fos gene"

                    SOURCE-START
e21   BE            1 "Is Stat3 a transcription factor for the c-fos gene" 13
                    END-OF-SOURCE
("Is Stat3 a transcription factor for the c-fos gene"
 (:VAR MV4685 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91578>
   (PREDICATE
    (#<transcription-factor 91577>
     (CONTROLLED-GENE
      (#<gene 89858> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88496> (RAW-TEXT "c-fos") (UID "UP:P01100")
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
 (:VAR MV4687 :ISA LIST :THEME MV4688 :PRESENT "PRESENT")
 (:VAR MV4688 :ISA GENE :PREDICATION MV4689 :RAW-TEXT "genes")
 (:VAR MV4689 :ISA REGULATE :OBJECT MV4688 :AGENT MV4686 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4686 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
501: "List genes that are regulated by ELK1"

                    SOURCE-START
e16   LIST          1 "List genes that are regulated by ELK1" 9
                    END-OF-SOURCE
("List genes that are regulated by ELK1"
 (:VAR MV4693 :ISA LIST :THEME MV4694 :PRESENT "PRESENT")
 (:VAR MV4694 :ISA GENE :PREDICATION MV4699 :RAW-TEXT "genes")
 (:VAR MV4699 :ISA REGULATE :OBJECT MV4694 :THAT-REL T :AGENT MV4692 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4692 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
502: "List some genes that stat3 regulates"

                    SOURCE-START
e13   LIST          1 "List some genes that stat3 regulates" 8
                    END-OF-SOURCE
("List some genes that stat3 regulates"
 (:VAR MV4702 :ISA LIST :THEME MV4704 :PRESENT "PRESENT")
 (:VAR MV4704 :ISA GENE :PREDICATION MV4706 :QUANTIFIER MV4703 :RAW-TEXT
  "genes")
 (:VAR MV4706 :ISA REGULATE :OBJECT MV4704 :THAT-REL T :AGENT MV4701 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4701 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4703 :ISA SOME :WORD "some"))

___________________
503: "List the genes STAT3 regulates"

                    SOURCE-START
e11   LIST          1 "List the genes STAT3 regulates" 7
                    END-OF-SOURCE
("List the genes STAT3 regulates"
 (:VAR MV4708 :ISA LIST :THEME MV4710 :PRESENT "PRESENT")
 (:VAR MV4710 :ISA GENE :PREDICATION MV4711 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4711 :ISA REGULATE :OBJECT MV4710 :AGENT MV4707 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4707 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
504: "List the genes that are regulated by STAT3"

                    SOURCE-START
e19   LIST          1 "List the genes that are regulated by STAT3" 10
                    END-OF-SOURCE
("List the genes that are regulated by STAT3"
 (:VAR MV4713 :ISA LIST :THEME MV4715 :PRESENT "PRESENT")
 (:VAR MV4715 :ISA GENE :PREDICATION MV4720 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4720 :ISA REGULATE :OBJECT MV4715 :THAT-REL T :AGENT MV4712 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4712 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
505: "List the genes which STAT3 regulates"

                    SOURCE-START
e13   LIST          1 "List the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("List the genes which STAT3 regulates"
 (:VAR MV4723 :ISA LIST :THEME MV4725 :PRESENT "PRESENT")
 (:VAR MV4725 :ISA GENE :PREDICATION MV4727 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4727 :ISA REGULATE :OBJECT MV4725 :AGENT MV4722 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4722 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
506: "List the pahtways that involve SRF"

                    SOURCE-START
e13   LIST          1 "List the pahtways that involve SRF" 7
                    END-OF-SOURCE
("List the pahtways that involve SRF"
 (:VAR MV4728 :ISA LIST :THEME MV4730 :PRESENT "PRESENT")
 (:VAR MV4730 :ISA BIO-ENTITY :PREDICATION MV4732 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4732 :ISA INVOLVE :THEME MV4730 :THAT-REL T :THEME MV4733 :PRESENT
  "PRESENT")
 (:VAR MV4733 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
507: "Show me genes regulated by ELK1"

                    SOURCE-START
e13   SHOW          1 "Show me genes regulated by ELK1" 8
                    END-OF-SOURCE
("Show me genes regulated by ELK1"
 (:VAR MV4735 :ISA SHOW :STATEMENT-OR-THEME MV4737 :BENEFICIARY MV4736 :PRESENT
  "PRESENT")
 (:VAR MV4737 :ISA GENE :PREDICATION MV4738 :RAW-TEXT "genes")
 (:VAR MV4738 :ISA REGULATE :OBJECT MV4737 :AGENT MV4734 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4734 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4736 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
508: "Show me genes that are regulated by ELK1"

                    SOURCE-START
e18   SHOW          1 "Show me genes that are regulated by ELK1" 10
                    END-OF-SOURCE
("Show me genes that are regulated by ELK1"
 (:VAR MV4742 :ISA SHOW :STATEMENT-OR-THEME MV4744 :BENEFICIARY MV4743 :PRESENT
  "PRESENT")
 (:VAR MV4744 :ISA GENE :PREDICATION MV4749 :RAW-TEXT "genes")
 (:VAR MV4749 :ISA REGULATE :OBJECT MV4744 :THAT-REL T :AGENT MV4741 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4741 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4743 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
509: "Show me genes that stat3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show me genes that stat3 regulates" 8
                    END-OF-SOURCE
("Show me genes that stat3 regulates"
 (:VAR MV4752 :ISA SHOW :STATEMENT-OR-THEME MV4754 :BENEFICIARY MV4753 :PRESENT
  "PRESENT")
 (:VAR MV4754 :ISA GENE :PREDICATION MV4756 :RAW-TEXT "genes")
 (:VAR MV4756 :ISA REGULATE :OBJECT MV4754 :THAT-REL T :AGENT MV4751 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4751 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4753 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
510: "Show me the pahtways that involve SRF"

                    SOURCE-START
e15   SHOW          1 "Show me the pahtways that involve SRF" 8
                    END-OF-SOURCE
("Show me the pahtways that involve SRF"
 (:VAR MV4757 :ISA SHOW :STATEMENT-OR-THEME MV4760 :BENEFICIARY MV4758 :PRESENT
  "PRESENT")
 (:VAR MV4760 :ISA BIO-ENTITY :PREDICATION MV4762 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4762 :ISA INVOLVE :THEME MV4760 :THAT-REL T :THEME MV4763 :PRESENT
  "PRESENT")
 (:VAR MV4763 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4758 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
511: "Show me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show me what transcription factors are shared by elk1 and srf" 13
                    END-OF-SOURCE
("Show me what transcription factors are shared by elk1 and srf"
 (:VAR MV4777 :ISA SHOW :STATEMENT MV4775 :THEME MV4767 :PRESENT "PRESENT")
 (:VAR MV4775 :ISA SHARE :OBJECT MV4764 :PARTICIPANT MV4774 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV4764 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4774 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4765 MV4773))
 (:VAR MV4765 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4773 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4767 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
512: "Show me which genes are regulated by STAT3"

                    SOURCE-START
e16   SHOW          1 "Show me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Show me which genes are regulated by STAT3"
 (:VAR MV4788 :ISA SHOW :STATEMENT MV4786 :THEME MV4780 :PRESENT "PRESENT")
 (:VAR MV4786 :ISA REGULATE :OBJECT MV4782 :AGENT MV4778 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4782 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4778 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4780 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
513: "Show the genes which STAT3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("Show the genes which STAT3 regulates"
 (:VAR MV4790 :ISA SHOW :STATEMENT-OR-THEME MV4792 :PRESENT "PRESENT")
 (:VAR MV4792 :ISA GENE :PREDICATION MV4794 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4794 :ISA REGULATE :OBJECT MV4792 :AGENT MV4789 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4789 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
514: "Show the pahtways that involve SRF"

                    SOURCE-START
e13   SHOW          1 "Show the pahtways that involve SRF" 7
                    END-OF-SOURCE
("Show the pahtways that involve SRF"
 (:VAR MV4795 :ISA SHOW :STATEMENT-OR-THEME MV4797 :PRESENT "PRESENT")
 (:VAR MV4797 :ISA BIO-ENTITY :PREDICATION MV4799 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4799 :ISA INVOLVE :THEME MV4797 :THAT-REL T :THEME MV4800 :PRESENT
  "PRESENT")
 (:VAR MV4800 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
515: "Show transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show transcription factors that are shared by elk1 and srf" 12
                    END-OF-SOURCE
("Show transcription factors that are shared by elk1 and srf"
 (:VAR MV4803 :ISA SHOW :STATEMENT-OR-THEME MV4801 :PRESENT "PRESENT")
 (:VAR MV4801 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4811 :RAW-TEXT
  "transcription factors")
 (:VAR MV4811 :ISA SHARE :OBJECT MV4801 :THAT-REL T :PARTICIPANT MV4810
  :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV4810 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4802 MV4809))
 (:VAR MV4802 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4809 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
516: "Tell me the genes which are regulated by STAT3"

                    SOURCE-START
e20   TELL          1 "Tell me the genes which are regulated by STAT3" 11
                    END-OF-SOURCE
("Tell me the genes which are regulated by STAT3"
 (:VAR MV4814 :ISA TELL :THEME MV4817 :BENEFICIARY MV4815 :PRESENT "PRESENT")
 (:VAR MV4817 :ISA GENE :PREDICATION MV4824 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4824 :ISA REGULATE :OBJECT MV4817 :AGENT MV4813 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4813 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4815 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
517: "Tell me what genes are regulated by elk1 and srf"

                    SOURCE-START
e19   TELL          1 "Tell me what genes are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("Tell me what genes are regulated by elk1 and srf"
 (:VAR MV4826 :ISA TELL :THEME MV4836 :THEME MV4827 :PRESENT "PRESENT")
 (:VAR MV4836 :ISA REGULATE :OBJECT MV4829 :AGENT MV4835 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4829 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV4835 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4825 MV4834))
 (:VAR MV4825 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4834 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4827 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
518: "Tell me which genes are regulated by STAT3"

                    SOURCE-START
e16   TELL          1 "Tell me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Tell me which genes are regulated by STAT3"
 (:VAR MV4839 :ISA TELL :THEME MV4846 :THEME MV4840 :PRESENT "PRESENT")
 (:VAR MV4846 :ISA REGULATE :OBJECT MV4842 :AGENT MV4838 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4842 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4838 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4840 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
519: "What are positive regulators of cfos?"

                    SOURCE-START
e10   BE            1 "What are positive regulators of cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of cfos?"
 (:VAR MV4850 :ISA BE :SUBJECT MV4849 :PREDICATE MV4848 :PRESENT "PRESENT")
 (:VAR MV4849 :ISA WHAT)
 (:VAR MV4848 :ISA POSITIVE-REGULATOR :THEME MV4852 :RAW-TEXT
  "positive regulators")
 (:VAR MV4852 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
520: "What are some regulators of SMURF2?"

                    SOURCE-START
e12   BE            1 "What are some regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some regulators of SMURF2?"
 (:VAR MV4856 :ISA BE :SUBJECT MV4855 :PREDICATE MV4858 :PRESENT "PRESENT")
 (:VAR MV4855 :ISA WHAT)
 (:VAR MV4858 :ISA REGULATOR :THEME MV4854 :QUANTIFIER MV4857 :RAW-TEXT
  "regulators")
 (:VAR MV4854 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN")
 (:VAR MV4857 :ISA SOME :WORD "some"))

___________________
521: "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"

                    SOURCE-START
e31   BE            1 "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
 (:VAR MV4867 :ISA BE :SUBJECT MV4866 :PREDICATE MV4870 :PRESENT "PRESENT")
 (:VAR MV4866 :ISA WHAT)
 (:VAR MV4870 :ISA REGULATOR :THEME MV4874 :HAS-DETERMINER "THE" :PREDICATION
  MV4869 :RAW-TEXT "regulators")
 (:VAR MV4874 :ISA COLLECTION :RAW-TEXT
  "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :TYPE PROTEIN :NUMBER 6 :ITEMS
  (MV4861 MV4862 MV4872 MV4863 MV4864 MV4865))
 (:VAR MV4861 :ISA PROTEIN :RAW-TEXT "ABI2" :UID "UP:Q9NYB9" :NAME
  "ABI2_HUMAN")
 (:VAR MV4862 :ISA PROTEIN :RAW-TEXT "ABL1" :UID "UP:P00519" :NAME
  "ABL1_HUMAN")
 (:VAR MV4872 :ISA PROTEIN :RAW-TEXT "ACADSB" :UID "UP:P45954" :NAME
  "ACDSB_HUMAN")
 (:VAR MV4863 :ISA PROTEIN :RAW-TEXT "ADGRL1" :UID "UP:O94910" :NAME
  "AGRL1_HUMAN")
 (:VAR MV4864 :ISA PROTEIN :RAW-TEXT "ADRM1" :UID "UP:Q16186" :NAME
  "ADRM1_HUMAN")
 (:VAR MV4865 :ISA PROTEIN :RAW-TEXT "AGAP1" :UID "UP:Q9UPQ3" :NAME
  "AGAP1_HUMAN")
 (:VAR MV4869 :ISA COMMON))

___________________
522: "What are the common regulators of elk1 and srf"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srf" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srf"
 (:VAR MV4878 :ISA BE :SUBJECT MV4877 :PREDICATE MV4881 :PRESENT "PRESENT")
 (:VAR MV4877 :ISA WHAT)
 (:VAR MV4881 :ISA REGULATOR :THEME MV4885 :HAS-DETERMINER "THE" :PREDICATION
  MV4880 :RAW-TEXT "regulators")
 (:VAR MV4885 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4876 MV4884))
 (:VAR MV4876 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4884 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4880 :ISA COMMON))

___________________
523: "What are the common regulators of elk1 and srg"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srg" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srg"
 (:VAR MV4889 :ISA BE :SUBJECT MV4888 :PREDICATE MV4892 :PRESENT "PRESENT")
 (:VAR MV4888 :ISA WHAT)
 (:VAR MV4892 :ISA REGULATOR :THEME MV4896 :HAS-DETERMINER "THE" :PREDICATION
  MV4891 :RAW-TEXT "regulators")
 (:VAR MV4896 :ISA COLLECTION :RAW-TEXT "elk1 and srg" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4887 MV4895))
 (:VAR MV4887 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4895 :ISA BIO-ENTITY :NAME "srg") (:VAR MV4891 :ISA COMMON))

___________________
524: "What are the common regulators of those genes"

                    SOURCE-START
e16   BE            1 "What are the common regulators of those genes" 9
                    END-OF-SOURCE
("What are the common regulators of those genes"
 (:VAR MV4899 :ISA BE :SUBJECT MV4898 :PREDICATE MV4902 :PRESENT "PRESENT")
 (:VAR MV4898 :ISA WHAT)
 (:VAR MV4902 :ISA REGULATOR :THEME MV4905 :HAS-DETERMINER "THE" :PREDICATION
  MV4901 :RAW-TEXT "regulators")
 (:VAR MV4905 :ISA GENE :HAS-DETERMINER "THOSE" :RAW-TEXT "genes")
 (:VAR MV4901 :ISA COMMON))

___________________
525: "What are the genes regulated by STAT3?"

                    SOURCE-START
e13   REGULATE      1 "What are the genes regulated by STAT3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes regulated by STAT3?"
 (:VAR MV4912 :ISA REGULATE :OBJECT
  (#<gene 91745> (HAS-DETERMINER (#<what 88299>))
   (HAS-DETERMINER (#<the 106> (WORD "the"))) (RAW-TEXT "genes"))
  :AGENT MV4907 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4907 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
526: "What are the genes which STAT3 regulates?"

                    SOURCE-START
e15   BE            1 "What are the genes which STAT3 regulates" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes which STAT3 regulates?"
 (:VAR MV4917 :ISA BE :SUBJECT MV4916 :PREDICATE MV4919 :PRESENT "PRESENT")
 (:VAR MV4916 :ISA WHAT)
 (:VAR MV4919 :ISA GENE :PREDICATION MV4921 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4921 :ISA REGULATE :OBJECT MV4919 :AGENT MV4915 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4915 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
527: "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV4926 :ISA BE :SUBJECT MV4925 :PREDICATE MV4930 :PRESENT "PRESENT")
 (:VAR MV4925 :ISA WHAT)
 (:VAR MV4930 :ISA REGULATOR :THEME MV4935 :HAS-DETERMINER "THE" :MODIFIER
  MV4929 :RAW-TEXT "regulators")
 (:VAR MV4935 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV4932 MV4933 MV4922 MV4923 MV4924))
 (:VAR MV4932 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV4933 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4922 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4923 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV4924 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN")
 (:VAR MV4929 :ISA FREQUENT :COMPARATIVE MV4928 :NAME "frequent")
 (:VAR MV4928 :ISA SUPERLATIVE-QUANTIFIER :NAME "most"))

___________________
528: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e28   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV4942 :ISA BE :SUBJECT MV4941 :PREDICATE MV4937 :PRESENT "PRESENT")
 (:VAR MV4941 :ISA WHAT)
 (:VAR MV4937 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4945 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV4945 :ISA REGULATE :AGENT MV4937 :THAT-REL T :OBJECT MV4949 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4949 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV4946 MV4947 MV4938 MV4939 MV4940))
 (:VAR MV4946 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV4947 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4938 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4939 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV4940 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
529: "What other genes are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other genes are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other genes are in the first pathway?"
 (:VAR MV4961 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4952 :VALUE MV4960 :PREP
  "IN" :PREDICATE MV4953)
 (:VAR MV4952 :ISA GENE :HAS-DETERMINER "WHAT" :QUANTIFIER MV4951 :RAW-TEXT
  "genes")
 (:VAR MV4951 :ISA OTHER :WORD "other")
 (:VAR MV4960 :ISA GENE :CONTEXT MV4957 :HAS-DETERMINER "WHAT" :QUANTIFIER
  MV4951 :RAW-TEXT "genes")
 (:VAR MV4957 :ISA PATHWAY :QUANTIFIER MV4956 :RAW-TEXT "pathway")
 (:VAR MV4956 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4951 :ISA OTHER :WORD "other")
 (:VAR MV4953 :ISA BE :PRESENT "PRESENT"))

___________________
530: "What other proteins are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other proteins are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other proteins are in the first pathway?"
 (:VAR MV4974 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4965 :VALUE MV4973 :PREP
  "IN" :PREDICATE MV4966)
 (:VAR MV4965 :ISA PROTEIN :HAS-DETERMINER "WHAT" :QUANTIFIER MV4964 :RAW-TEXT
  "proteins")
 (:VAR MV4964 :ISA OTHER :WORD "other")
 (:VAR MV4973 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV4970 :HAS-DETERMINER "WHAT"
  :QUANTIFIER MV4964 :RAW-TEXT "proteins")
 (:VAR MV4970 :ISA PATHWAY :QUANTIFIER MV4969 :RAW-TEXT "pathway")
 (:VAR MV4969 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4964 :ISA OTHER :WORD "other")
 (:VAR MV4966 :ISA BE :PRESENT "PRESENT"))

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
 (:VAR MV4994 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4985 :VALUE MV4993 :PREP
  "IN" :PREDICATE MV4986)
 (:VAR MV4985 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV4993 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV4990 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "proteins")
 (:VAR MV4990 :ISA PATHWAY :QUANTIFIER MV4989 :RAW-TEXT "pathway")
 (:VAR MV4989 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4986 :ISA BE :PRESENT "PRESENT"))

___________________
534: "What pathways involve frizzled8?"

                    SOURCE-START
e7    INVOLVE       1 "What pathways involve frizzled8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve frizzled8?"
 (:VAR MV4999 :ISA INVOLVE :THEME MV4998 :THEME MV4996 :PRESENT "PRESENT")
 (:VAR MV4998 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV4996 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
535: "What genes are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What genes are in the first pathway" 8
                    END-OF-SOURCE
("What genes are in the first pathway"
 (:VAR MV5010 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5001 :VALUE MV5009 :PREP
  "IN" :PREDICATE MV5002)
 (:VAR MV5001 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5009 :ISA GENE :CONTEXT MV5006 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV5006 :ISA PATHWAY :QUANTIFIER MV5005 :RAW-TEXT "pathway")
 (:VAR MV5005 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV5002 :ISA BE :PRESENT "PRESENT"))

___________________
536: "What questions can you answer about microRNAs?"

                    SOURCE-START
e13   ANSWER        1 "What questions can you answer about microRNAs" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What questions can you answer about microRNAs?"
 (:VAR MV5022 :ISA ANSWER :PATIENT MV5013 :MODAL MV5015 :AGENT MV5016 :THEME
  MV5020 :PRESENT "PRESENT")
 (:VAR MV5013 :ISA BIO-QUESTION :HAS-DETERMINER "WHAT") (:VAR MV5015 :ISA CAN)
 (:VAR MV5016 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5020 :ISA MICRO-RNA :RAW-TEXT "microRNAs"))

___________________
537: "What transcription factors regulate mothers against decapentaplegic?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate mothers against decapentaplegic" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate mothers against decapentaplegic?"
 (:VAR MV5026 :ISA REGULATE :AGENT MV5023 :OBJECT MV5024 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5023 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5024 :ISA PROTEIN-FAMILY :RAW-TEXT "mothers against decapentaplegic"
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
 (:VAR MV5030 :ISA REGULATE :LOCATION MV5028 :AGENT MV5027 :OBJECT MV5031
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5028 :ISA WHERE)
 (:VAR MV5027 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5031 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
539: "Which KEGG pathways involve ATP?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve ATP" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve ATP?"
 (:VAR MV5035 :ISA INVOLVE :THEME MV5034 :THEME MV5036 :PRESENT "PRESENT")
 (:VAR MV5034 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5033 :RAW-TEXT
  "pathways")
 (:VAR MV5033 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV5036 :ISA NUCLEOTIDE :RAW-TEXT "ATP" :UID "PCID:5957"))

___________________
540: "Which genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are in the MAPK signaling pathway?"
 (:VAR MV5047 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5039 :VALUE MV5046 :PREP
  "IN" :PREDICATE MV5040)
 (:VAR MV5039 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5046 :ISA GENE :CONTEXT MV5037 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV5037 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5043
  :RAW-TEXT "signaling pathway")
 (:VAR MV5043 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV5040 :ISA BE :PRESENT "PRESENT"))

___________________
541: "Which genes are involved in the oncogenic MAPK signaling pathway?"

                    SOURCE-START
e19   INVOLVE       1 "Which genes are involved in the oncogenic MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are involved in the oncogenic MAPK signaling pathway?"
 (:VAR MV5060 :ISA INVOLVE :THEME MV5051 :CONTEXT MV5049 :PRESENT "PRESENT")
 (:VAR MV5051 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5049 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :PREDICATION MV5056
  :MODIFIER MV5057 :RAW-TEXT "signaling pathway")
 (:VAR MV5056 :ISA ONCOGENIC)
 (:VAR MV5057 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV5063 :ISA REGULATE :AGENT MV5062 :OBJECT MV5064 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5062 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5064 :ISA BIO-ENTITY :NAME "x"))

___________________
543: "Which kinases negatively regulate x?"

                    SOURCE-START
e7    DOWNREGULATE  1 "Which kinases negatively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate x?"
 (:VAR MV5065 :ISA DOWNREGULATE :AGENT MV5067 :OBJECT MV5068 :PRESENT "PRESENT"
  :RAW-TEXT "negatively regulate")
 (:VAR MV5067 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5068 :ISA BIO-ENTITY :NAME "x"))

___________________
544: "Which kinases positively regulate x?"

                    SOURCE-START
e7    UPREGULATE    1 "Which kinases positively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases positively regulate x?"
 (:VAR MV5069 :ISA UPREGULATE :AGENT MV5071 :OBJECT MV5072 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulate")
 (:VAR MV5071 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5072 :ISA BIO-ENTITY :NAME "x"))

___________________
545: "Which of these are in immune pathways?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune pathways?"
 (:VAR MV5081 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5075 :VALUE MV5079 :PREP
  MV5077 :PREDICATE MV5076)
 (:VAR MV5075 :ISA THESE :QUANTIFIER MV5073 :WORD "these")
 (:VAR MV5073 :ISA WHICH)
 (:VAR MV5079 :ISA PATHWAY :MODIFIER MV5078 :RAW-TEXT "pathways")
 (:VAR MV5078 :ISA IMMUNE :NAME "immune") (:VAR MV5077 :ISA IN :WORD "in")
 (:VAR MV5076 :ISA BE :PRESENT "PRESENT"))

___________________
546: "Which of these are in immune system pathways?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which of these are in immune system pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune system pathways?"
 (:VAR MV5091 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5086 :VALUE MV5089 :PREP
  MV5088 :PREDICATE MV5087)
 (:VAR MV5086 :ISA THESE :QUANTIFIER MV5084 :WORD "these")
 (:VAR MV5084 :ISA WHICH)
 (:VAR MV5089 :ISA PATHWAY :NON-CELLULAR-LOCATION MV5083 :RAW-TEXT "pathways")
 (:VAR MV5083 :ISA BIO-ORGAN :UID "UBERON:0002405")
 (:VAR MV5088 :ISA IN :WORD "in") (:VAR MV5087 :ISA BE :PRESENT "PRESENT"))

___________________
547: "What are the genes STAT3 regulates?"

                    SOURCE-START
e13   BE            1 "What are the genes STAT3 regulates" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes STAT3 regulates?"
 (:VAR MV5095 :ISA BE :SUBJECT MV5094 :PREDICATE MV5097 :PRESENT "PRESENT")
 (:VAR MV5094 :ISA WHAT)
 (:VAR MV5097 :ISA GENE :PREDICATION MV5098 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV5098 :ISA REGULATE :OBJECT MV5097 :AGENT MV5093 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5093 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
548: "Which of those are in the immune pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Which of those are in the immune pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are in the immune pathway?"
 (:VAR MV5108 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5101 :VALUE MV5106 :PREP
  MV5103 :PREDICATE MV5102)
 (:VAR MV5101 :ISA THOSE :QUANTIFIER MV5099 :WORD "those")
 (:VAR MV5099 :ISA WHICH)
 (:VAR MV5106 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5105 :RAW-TEXT
  "pathway")
 (:VAR MV5105 :ISA IMMUNE :NAME "immune") (:VAR MV5103 :ISA IN :WORD "in")
 (:VAR MV5102 :ISA BE :PRESENT "PRESENT"))

___________________
549: "Which pathways involve p53?"

                    SOURCE-START
e7    INVOLVE       1 "Which pathways involve p53" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve p53?"
 (:VAR MV5113 :ISA INVOLVE :THEME MV5112 :THEME MV5110 :PRESENT "PRESENT")
 (:VAR MV5112 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV5110 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
550: "can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("can you show me the pahtways that involve SRF"
 (:VAR MV5123 :ISA POLAR-QUESTION :STATEMENT MV5116)
 (:VAR MV5116 :ISA SHOW :AGENT MV5115 :STATEMENT-OR-THEME MV5119 :BENEFICIARY
  MV5117 :MODAL "CAN")
 (:VAR MV5115 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5119 :ISA BIO-ENTITY :PREDICATION MV5121 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV5121 :ISA INVOLVE :THEME MV5119 :THAT-REL T :THEME MV5122 :MODAL
  "CAN")
 (:VAR MV5122 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5117 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
551: "Does Selumetinib inhibit MAP2K1?"

                    SOURCE-START
e9    INHIBIT       1 "Does Selumetinib inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib inhibit MAP2K1?"
 (:VAR MV5129 :ISA POLAR-QUESTION :STATEMENT MV5128)
 (:VAR MV5128 :ISA INHIBIT :AGENT MV5126 :OBJECT MV5124 :RAW-TEXT "inhibit")
 (:VAR MV5126 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV5124 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
552: "Let's build a model of the KRAS neighborhood."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's build a model of the KRAS neighborhood" 11
                    PERIOD
                    END-OF-SOURCE
("Let's build a model of the KRAS neighborhood."
 (:VAR MV5139 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV5131 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV5131 :ISA BUILD :ARTIFACT MV5133 :PRESENT "PRESENT")
 (:VAR MV5133 :ISA MODEL :OBJECT MV5137 :HAS-DETERMINER "A")
 (:VAR MV5137 :ISA NEIGHBORHOOD :HAS-DETERMINER "THE" :MODIFIER MV5136)
 (:VAR MV5136 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN"))

___________________
553: "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."

                    SOURCE-START
e28   KNOW          1 "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk" 15
                    PERIOD
                    END-OF-SOURCE
("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
 (:VAR MV5157 :ISA COLLECTION :TYPE KNOW :NUMBER 2 :ITEMS (MV5155 MV5156))
 (:VAR MV5155 :ISA KNOW :AGENT MV5140 :STATEMENT MV5146 :PRESENT "PRESENT")
 (:VAR MV5140 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV5146 :ISA BIO-ACTIVATE :AGENT MV5145 :OBJECT MV5147 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5145 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5147 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5156 :ISA COLLECTION :RAW-TEXT
  "Raf activates Mek and Mek activates Erk" :TYPE BIO-ACTIVATE :NUMBER 2 :ITEMS
  (MV5149 MV5153))
 (:VAR MV5149 :ISA BIO-ACTIVATE :AGENT MV5148 :OBJECT MV5150 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5148 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5150 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5153 :ISA BIO-ACTIVATE :AGENT MV5152 :OBJECT MV5154 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5152 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5154 :ISA PROTEIN-FAMILY :RAW-TEXT "Erk" :NAME "ERK" :COUNT 7
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
 (:VAR MV5160 :ISA PHOSPHORYLATE :AGENT MV5158 :SUBSTRATE MV5159 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV5158 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV5159 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
555: "DUSP6 dephosphorylates MAPK1."

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1."
 (:VAR MV5163 :ISA DEPHOSPHORYLATE :AGENT MV5161 :SUBSTRATE MV5162 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV5161 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV5162 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
556: "Is the amount of phosphorylated MAPK1 always high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always high?"
 (:VAR MV5174 :ISA POLAR-QUESTION :STATEMENT MV5173)
 (:VAR MV5173 :ISA COPULAR-PREDICATION :ITEM MV5167 :VALUE MV5171 :PREDICATE
  MV5165)
 (:VAR MV5167 :ISA BIO-AMOUNT :MEASURED-ITEM MV5164 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5164 :ISA PROTEIN :PREDICATION MV5169 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5169 :ISA PHOSPHORYLATE :SUBSTRATE MV5164 :RAW-TEXT "phosphorylated")
 (:VAR MV5171 :ISA HIGH :ADVERB MV5170)
 (:VAR MV5170 :ISA ALWAYS :NAME "always") (:VAR MV5165 :ISA BE))

___________________
557: "Is the amount of phosphorylated MAPK1 always low?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always low" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always low?"
 (:VAR MV5185 :ISA POLAR-QUESTION :STATEMENT MV5184)
 (:VAR MV5184 :ISA COPULAR-PREDICATION :ITEM MV5178 :VALUE MV5182 :PREDICATE
  MV5176)
 (:VAR MV5178 :ISA BIO-AMOUNT :MEASURED-ITEM MV5175 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5175 :ISA PROTEIN :PREDICATION MV5180 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5180 :ISA PHOSPHORYLATE :SUBSTRATE MV5175 :RAW-TEXT "phosphorylated")
 (:VAR MV5182 :ISA LOW :ADVERB MV5181) (:VAR MV5181 :ISA ALWAYS :NAME "always")
 (:VAR MV5176 :ISA BE))

___________________
558: "Does the MAP2K1-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the MAP2K1-MAPK1 complex vanish" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the MAP2K1-MAPK1 complex vanish?"
 (:VAR MV5195 :ISA POLAR-QUESTION :STATEMENT MV5194)
 (:VAR MV5194 :ISA VANISH :AGENT MV5193 :RAW-TEXT "vanish")
 (:VAR MV5193 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV5187 :COMPONENT MV5186)
 (:VAR MV5187 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5186 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
559: "Does the DUSP6-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the DUSP6-MAPK1 complex vanish" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the DUSP6-MAPK1 complex vanish?"
 (:VAR MV5205 :ISA POLAR-QUESTION :STATEMENT MV5204)
 (:VAR MV5204 :ISA VANISH :AGENT MV5203 :RAW-TEXT "vanish")
 (:VAR MV5203 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "DUSP6-MAPK1"
  :COMPONENT MV5197 :COMPONENT MV5196)
 (:VAR MV5197 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5196 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN"))

___________________
560: "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e49   EVENT-RELATION  1 "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV5233 :ISA POLAR-QUESTION :STATEMENT MV5232)
 (:VAR MV5232 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV5229 :EVENT MV5225)
 (:VAR MV5229 :ISA WH-QUESTION :STATEMENT MV5226 :WH IF)
 (:VAR MV5226 :ISA INCREASE :AGENT-OR-CAUSE MV5215 :MULTIPLIER MV5224
  :AFFECTED-PROCESS-OR-OBJECT MV5219 :RAW-TEXT "increase")
 (:VAR MV5215 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV5224 :ISA N-FOLD :NUMBER MV5223) (:VAR MV5223 :ISA NUMBER :VALUE 10)
 (:VAR MV5219 :ISA BIO-AMOUNT :MEASURED-ITEM MV5207 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5207 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV5225 :ISA VANISH :CAUSE MV5210 :RAW-TEXT "vanish")
 (:VAR MV5210 :ISA BIO-AMOUNT :MEASURED-ITEM MV5206 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5206 :ISA PROTEIN :PREDICATION MV5212 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5212 :ISA PHOSPHORYLATE :SUBSTRATE MV5206 :RAW-TEXT "phosphorylated"))

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
 (:VAR MV5310 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV5313 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV5327 :ISA INVOLVE :THEME MV5326 :THEME MV5324 :PRESENT "PRESENT")
 (:VAR MV5326 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5324 :ISA BIO-ORGAN :HAS-DETERMINER "THE" :UID "UBERON:0002405"))

___________________
573: "What KEGG pathways involve ERBB2, JUN, and MAPK8?"

                    SOURCE-START
e16   INVOLVE       1 "What KEGG pathways involve ERBB2, JUN, and MAPK8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
 (:VAR MV5334 :ISA INVOLVE :THEME MV5333 :THEME MV5337 :PRESENT "PRESENT")
 (:VAR MV5333 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5332 :RAW-TEXT
  "pathways")
 (:VAR MV5332 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV5337 :ISA COLLECTION :RAW-TEXT "ERBB2, JUN, and MAPK8" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV5329 MV5335 MV5330))
 (:VAR MV5329 :ISA PROTEIN :RAW-TEXT "ERBB2" :UID "UP:P04626" :NAME
  "ERBB2_HUMAN")
 (:VAR MV5335 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV5330 :ISA PROTEIN :RAW-TEXT "MAPK8" :UID "UP:P45983" :NAME
  "MK08_HUMAN"))

___________________
574: "What pathways are shared by these genes?"

                    SOURCE-START
e13   SHARE         1 "What pathways are shared by these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are shared by these genes?"
 (:VAR MV5345 :ISA SHARE :OBJECT MV5339 :PARTICIPANT MV5344 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV5339 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5344 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
575: "what genes are regulated by srf?"

                    SOURCE-START
e11   REGULATE      1 "what genes are regulated by srf" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by srf?"
 (:VAR MV5353 :ISA REGULATE :OBJECT MV5348 :AGENT MV5352 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5348 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5352 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
576: "What are common pathways for these genes?"

                    SOURCE-START
e13   BE            1 "What are common pathways for these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common pathways for these genes?"
 (:VAR MV5356 :ISA BE :SUBJECT MV5355 :PREDICATE MV5358 :PRESENT "PRESENT")
 (:VAR MV5355 :ISA WHAT)
 (:VAR MV5358 :ISA PATHWAY :PATHWAYCOMPONENT MV5361 :PREDICATION MV5357
  :RAW-TEXT "pathways")
 (:VAR MV5361 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV5357 :ISA COMMON))

___________________
577: "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e24   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV5375 :ISA SHARE :OBJECT MV5368 :PARTICIPANT MV5373 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV5368 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5367 :RAW-TEXT
  "pathways")
 (:VAR MV5367 :ISA IMMUNE :NAME "immune")
 (:VAR MV5373 :ISA GENE :EXPRESSES MV5374 :RAW-TEXT "genes")
 (:VAR MV5374 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV5363 MV5364 MV5365))
 (:VAR MV5363 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5364 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV5365 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
578: "What MAP kinase phosphatase are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatase are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatase are regulated by ELK1?"
 (:VAR MV5384 :ISA REGULATE :OBJECT MV5380 :AGENT MV5378 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5380 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV5377 :RAW-TEXT
  "phosphatase")
 (:VAR MV5377 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME
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
 (:VAR MV5378 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
579: "What reactome pathways involve immune system?"

                    SOURCE-START
e9    INVOLVE       1 "What reactome pathways involve immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune system?"
 (:VAR MV5390 :ISA INVOLVE :THEME MV5389 :THEME MV5386 :PRESENT "PRESENT")
 (:VAR MV5389 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5388 :RAW-TEXT
  "pathways")
 (:VAR MV5388 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV5386 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
580: "Is stat3 a kinase?"

                    SOURCE-START
e9    BE            1 "Is stat3 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 a kinase?"
 (:VAR MV5395 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89948>
   (PREDICATE
    (#<kinase 89947> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
581: "Is STAT3 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is STAT3 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor?"
 (:VAR MV5400 :ISA POLAR-QUESTION :STATEMENT
  (#<be 92020>
   (PREDICATE
    (#<transcription-factor 89959> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
582: "Which of these are protein kinases?"

                    SOURCE-START
e11   BE            1 "Which of these are protein kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are protein kinases?"
 (:VAR MV5404 :ISA BE :SUBJECT MV5403 :PREDICATE MV5406 :PRESENT "PRESENT")
 (:VAR MV5403 :ISA THESE :QUANTIFIER MV5401 :WORD "these")
 (:VAR MV5401 :ISA WHICH)
 (:VAR MV5406 :ISA KINASE :ENZYME MV5405 :RAW-TEXT "kinases")
 (:VAR MV5405 :ISA PROTEIN :RAW-TEXT "protein"))

___________________
583: "Which of these are tyrosine kinases?"

                    SOURCE-START
e11   BE            1 "Which of these are tyrosine kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinases?"
 (:VAR MV5411 :ISA BE :SUBJECT MV5410 :PREDICATE MV5413 :PRESENT "PRESENT")
 (:VAR MV5410 :ISA THESE :QUANTIFIER MV5408 :WORD "these")
 (:VAR MV5408 :ISA WHICH)
 (:VAR MV5413 :ISA KINASE :AMINO-ACID MV5412 :RAW-TEXT "kinases")
 (:VAR MV5412 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

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
e13   BE            1 "Which of these are tyrosine kinase receptors" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinase receptors?"
 (:VAR MV5445 :ISA BE :SUBJECT MV5444 :PREDICATE MV5448 :PRESENT "PRESENT")
 (:VAR MV5444 :ISA THESE :QUANTIFIER MV5442 :WORD "these")
 (:VAR MV5442 :ISA WHICH)
 (:VAR MV5448 :ISA RECEPTOR :MODIFIER MV5446 :MODIFIER MV5447 :RAW-TEXT
  "receptors")
 (:VAR MV5446 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine")
 (:VAR MV5447 :ISA KINASE :RAW-TEXT "kinase"))

___________________
589: "Which of these are histone demethylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone demethylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone demethylases?"
 (:VAR MV5454 :ISA BE :SUBJECT MV5453 :PREDICATE MV5450 :PRESENT "PRESENT")
 (:VAR MV5453 :ISA THESE :QUANTIFIER MV5451 :WORD "these")
 (:VAR MV5451 :ISA WHICH)
 (:VAR MV5450 :ISA PROTEIN-FAMILY :RAW-TEXT "histone demethylases" :NAME
  "histone demethylase" :UID "GO:0032452"))

___________________
590: "Which of these are histone methylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methylases?"
 (:VAR MV5460 :ISA BE :SUBJECT MV5459 :PREDICATE MV5456 :PRESENT "PRESENT")
 (:VAR MV5459 :ISA THESE :QUANTIFIER MV5457 :WORD "these")
 (:VAR MV5457 :ISA WHICH)
 (:VAR MV5456 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methylases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
591: "Which of these are histone methyltransferases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methyltransferases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methyltransferases?"
 (:VAR MV5466 :ISA BE :SUBJECT MV5465 :PREDICATE MV5462 :PRESENT "PRESENT")
 (:VAR MV5465 :ISA THESE :QUANTIFIER MV5463 :WORD "these")
 (:VAR MV5463 :ISA WHICH)
 (:VAR MV5462 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methyltransferases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
592: "Which of these are demethylases?"

                    SOURCE-START
e9    BE            1 "Which of these are demethylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are demethylases?"
 (:VAR MV5471 :ISA BE :SUBJECT MV5470 :PREDICATE MV5472 :PRESENT "PRESENT")
 (:VAR MV5470 :ISA THESE :QUANTIFIER MV5468 :WORD "these")
 (:VAR MV5468 :ISA WHICH)
 (:VAR MV5472 :ISA PROTEIN-FAMILY :RAW-TEXT "demethylases" :NAME "demethylase"
  :UID "GO:0032451"))

___________________
593: "Which of these are methylases?"

                    SOURCE-START
e9    BE            1 "Which of these are methylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methylases?"
 (:VAR MV5477 :ISA BE :SUBJECT MV5476 :PREDICATE MV5478 :PRESENT "PRESENT")
 (:VAR MV5476 :ISA THESE :QUANTIFIER MV5474 :WORD "these")
 (:VAR MV5474 :ISA WHICH)
 (:VAR MV5478 :ISA PROTEIN-FAMILY :RAW-TEXT "methylases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
594: "Which of these are methyltransferases?"

                    SOURCE-START
e9    BE            1 "Which of these are methyltransferases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methyltransferases?"
 (:VAR MV5483 :ISA BE :SUBJECT MV5482 :PREDICATE MV5484 :PRESENT "PRESENT")
 (:VAR MV5482 :ISA THESE :QUANTIFIER MV5480 :WORD "these")
 (:VAR MV5480 :ISA WHICH)
 (:VAR MV5484 :ISA PROTEIN-FAMILY :RAW-TEXT "methyltransferases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
595: "Which of these are steroid receptors?"

                    SOURCE-START
e11   BE            1 "Which of these are steroid receptors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are steroid receptors?"
 (:VAR MV5489 :ISA BE :SUBJECT MV5488 :PREDICATE MV5491 :PRESENT "PRESENT")
 (:VAR MV5488 :ISA THESE :QUANTIFIER MV5486 :WORD "these")
 (:VAR MV5486 :ISA WHICH)
 (:VAR MV5491 :ISA RECEPTOR :MODIFIER MV5490 :RAW-TEXT "receptors")
 (:VAR MV5490 :ISA MOLECULE :RAW-TEXT "steroid" :NAME "steroid" :UID
  "CHEBI:35341"))

___________________
596: "Which of these are receptor tyrosine kinases?"

                    SOURCE-START
e10   BE            1 "Which of these are receptor tyrosine kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptor tyrosine kinases?"
 (:VAR MV5497 :ISA BE :SUBJECT MV5496 :PREDICATE MV5493 :PRESENT "PRESENT")
 (:VAR MV5496 :ISA THESE :QUANTIFIER MV5494 :WORD "these")
 (:VAR MV5494 :ISA WHICH)
 (:VAR MV5493 :ISA PROTEIN-FAMILY :RAW-TEXT "receptor tyrosine kinases" :NAME
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
 (:VAR MV5503 :ISA BE :SUBJECT MV5502 :PREDICATE MV5499 :PRESENT "PRESENT")
 (:VAR MV5502 :ISA THESE :QUANTIFIER MV5500 :WORD "these")
 (:VAR MV5500 :ISA WHICH)
 (:VAR MV5499 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
598: "Which of these are DNA binding proteins?"

                    SOURCE-START
e12   BE            1 "Which of these are DNA binding proteins" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are DNA binding proteins?"
 (:VAR MV5509 :ISA BE :SUBJECT MV5508 :PREDICATE MV5510 :PRESENT "PRESENT")
 (:VAR MV5508 :ISA THESE :QUANTIFIER MV5506 :WORD "these")
 (:VAR MV5506 :ISA WHICH)
 (:VAR MV5510 :ISA PROTEIN :MODIFIER MV5505 :RAW-TEXT "proteins")
 (:VAR MV5505 :ISA DNA-BINDING :RAW-TEXT "DNA binding"))

___________________
599: "Which of these are serine/threonine phosphatases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine phosphatases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine phosphatases?"
 (:VAR MV5515 :ISA BE :SUBJECT MV5514 :PREDICATE MV5518 :PRESENT "PRESENT")
 (:VAR MV5514 :ISA THESE :QUANTIFIER MV5512 :WORD "these")
 (:VAR MV5512 :ISA WHICH)
 (:VAR MV5518 :ISA PHOSPHATASE :MODIFIER MV5519 :RAW-TEXT "phosphatases")
 (:VAR MV5519 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID
  :ITEMS (MV5516 MV5517))
 (:VAR MV5516 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5517 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
600: "Which of these are tyrosine phosphatases?"

                    SOURCE-START
e11   BE            1 "Which of these are tyrosine phosphatases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine phosphatases?"
 (:VAR MV5524 :ISA BE :SUBJECT MV5523 :PREDICATE MV5526 :PRESENT "PRESENT")
 (:VAR MV5523 :ISA THESE :QUANTIFIER MV5521 :WORD "these")
 (:VAR MV5521 :ISA WHICH)
 (:VAR MV5526 :ISA PHOSPHATASE :MODIFIER MV5525 :RAW-TEXT "phosphatases")
 (:VAR MV5525 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

___________________
601: "What does MEK phosphorylate?"

                    SOURCE-START
e5    PHOSPHORYLATE 1 "What does MEK phosphorylate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does MEK phosphorylate?"
 (:VAR MV5531 :ISA PHOSPHORYLATE :AMINO-ACID MV5528 :AGENT MV5530 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV5528 :ISA WHAT)
 (:VAR MV5530 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV5540 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5534 :ORGAN MV5539
  :PRESENT "PRESENT" :ADVERB MV5536 :RAW-TEXT "expressed")
 (:VAR MV5534 :ISA THESE :QUANTIFIER MV5532 :WORD "these")
 (:VAR MV5532 :ISA WHICH) (:VAR MV5539 :ISA LIVER)
 (:VAR MV5536 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
603: "What regulates frizzled8?"

                    SOURCE-START
e5    REGULATE      1 "What regulates frizzled8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates frizzled8?"
 (:VAR MV5545 :ISA REGULATE :AGENT-OR-CAUSE MV5544 :OBJECT MV5543 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5544 :ISA WHAT)
 (:VAR MV5543 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
604: "What increases the amount of myc?"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of myc?"
 (:VAR MV5548 :ISA INCREASE :AGENT-OR-CAUSE MV5546 :AFFECTED-PROCESS-OR-OBJECT
  MV5550 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5546 :ISA WHAT)
 (:VAR MV5550 :ISA BIO-AMOUNT :MEASURED-ITEM MV5552 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5552 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
605: "What upregulates myc?"

                    SOURCE-START
e4    UPREGULATE    1 "What upregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates myc?"
 (:VAR MV5555 :ISA UPREGULATE :AGENT-OR-CAUSE MV5554 :OBJECT MV5556 :PRESENT
  "PRESENT" :RAW-TEXT "upregulates")
 (:VAR MV5554 :ISA WHAT)
 (:VAR MV5556 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
606: "What downregulates myc?"

                    SOURCE-START
e4    DOWNREGULATE  1 "What downregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates myc?"
 (:VAR MV5558 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV5557 :OBJECT MV5559 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV5557 :ISA WHAT)
 (:VAR MV5559 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
607: "What decreases the amount of GFAP?"

                    SOURCE-START
e12   DECREASE      1 "What decreases the amount of GFAP" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What decreases the amount of GFAP?"
 (:VAR MV5561 :ISA DECREASE :AGENT-OR-CAUSE MV5560 :AFFECTED-PROCESS-OR-OBJECT
  MV5563 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5560 :ISA WHAT)
 (:VAR MV5563 :ISA BIO-AMOUNT :MEASURED-ITEM MV5565 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5565 :ISA PROTEIN :RAW-TEXT "GFAP" :UID "UP:P14136" :NAME
  "GFAP_HUMAN"))

___________________
608: "What regulates GLUL?"

                    SOURCE-START
e4    REGULATE      1 "What regulates GLUL" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL?"
 (:VAR MV5568 :ISA REGULATE :AGENT-OR-CAUSE MV5567 :OBJECT MV5569 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5567 :ISA WHAT)
 (:VAR MV5569 :ISA PROTEIN :RAW-TEXT "GLUL" :UID "UP:P15104" :NAME
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
 (:VAR MV5588 :ISA REGULATE :AGENT MV5587 :OBJECT MV5591 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5587 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5591 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5590 :RAW-TEXT
  "gene")
 (:VAR MV5590 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
612: "Which kinases negatively regulate the cfos gene?"

                    SOURCE-START
e12   DOWNREGULATE  1 "Which kinases negatively regulate the cfos gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate the cfos gene?"
 (:VAR MV5592 :ISA DOWNREGULATE :AGENT MV5594 :OBJECT MV5597 :PRESENT "PRESENT"
  :RAW-TEXT "negatively regulate")
 (:VAR MV5594 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5597 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5596 :RAW-TEXT
  "gene")
 (:VAR MV5596 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
613: "What are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "What are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of the cfos gene?"
 (:VAR MV5600 :ISA BE :SUBJECT MV5599 :PREDICATE MV5598 :PRESENT "PRESENT")
 (:VAR MV5599 :ISA WHAT)
 (:VAR MV5598 :ISA POSITIVE-REGULATOR :THEME MV5604 :RAW-TEXT
  "positive regulators")
 (:VAR MV5604 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5603 :RAW-TEXT
  "gene")
 (:VAR MV5603 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
614: "What transcribes ZEB1?"

                    SOURCE-START
e5    TRANSCRIBE    1 "What transcribes ZEB1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcribes ZEB1?"
 (:VAR MV5608 :ISA TRANSCRIBE :AGENT-OR-CAUSE MV5607 :OBJECT MV5606 :PRESENT
  "PRESENT" :RAW-TEXT "transcribes")
 (:VAR MV5607 :ISA WHAT)
 (:VAR MV5606 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME
  "ZEB1_HUMAN"))

___________________
615: "Show me the evidence that IL6 increases the amount of SOCS1."

                    SOURCE-START
e27   SHOW          1 "Show me the evidence that IL6 increases the amount of SOCS1" 14
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that IL6 increases the amount of SOCS1."
 (:VAR MV5611 :ISA SHOW :STATEMENT-OR-THEME MV5622 :BENEFICIARY MV5612 :PRESENT
  "PRESENT")
 (:VAR MV5622 :ISA EVIDENCE :STATEMENT MV5617 :HAS-DETERMINER "THE")
 (:VAR MV5617 :ISA INCREASE :AGENT MV5609 :AFFECTED-PROCESS-OR-OBJECT MV5619
  :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5609 :ISA PROTEIN :RAW-TEXT "IL6" :UID "UP:P05231" :NAME "IL6_HUMAN")
 (:VAR MV5619 :ISA BIO-AMOUNT :MEASURED-ITEM MV5610 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5610 :ISA PROTEIN :RAW-TEXT "SOCS1" :UID "UP:O15524" :NAME
  "SOCS1_HUMAN")
 (:VAR MV5612 :ISA INTERLOCUTOR :NAME "speaker"))

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
 (:VAR MV5637 :ISA BE :SUBJECT MV5636 :PREDICATE MV5643 :PRESENT "PRESENT")
 (:VAR MV5636 :ISA WHAT)
 (:VAR MV5643 :ISA EVIDENCE :STATEMENT MV5642 :HAS-DETERMINER "THE")
 (:VAR MV5642 :ISA REGULATE :AGENT MV5641 :OBJECT MV5635 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5641 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5635 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
618: "What is the evidence that SRF binds the cfos gene?"

                    SOURCE-START
e21   BE            1 "What is the evidence that SRF binds the cfos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that SRF binds the cfos gene?"
 (:VAR MV5645 :ISA BE :SUBJECT MV5644 :PREDICATE MV5654 :PRESENT "PRESENT")
 (:VAR MV5644 :ISA WHAT)
 (:VAR MV5654 :ISA EVIDENCE :STATEMENT MV5650 :HAS-DETERMINER "THE")
 (:VAR MV5650 :ISA BINDING :BINDER MV5649 :DIRECT-BINDEE MV5653 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV5649 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5653 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5652 :RAW-TEXT
  "gene")
 (:VAR MV5652 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
619: "what genes are exclusively expressed in liver?"

                    SOURCE-START
e13   GENE-TRANSCRIPT-EXPRESS 1 "what genes are exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are exclusively expressed in liver?"
 (:VAR MV5662 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5656 :ORGAN MV5661
  :PRESENT "PRESENT" :ADVERB MV5658 :RAW-TEXT "expressed")
 (:VAR MV5656 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5661 :ISA LIVER) (:VAR MV5658 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
620: "Is stat3 expressed in liver?"

                    SOURCE-START
e9    GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in liver" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in liver?"
 (:VAR MV5670 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV5668 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV5668 :ISA LIVER))

___________________
621: "Is stat3 exclusively expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 exclusively expressed in liver?"
 (:VAR MV5679 :ISA POLAR-QUESTION :STATEMENT MV5677)
 (:VAR MV5677 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5671 :ORGAN MV5676 :ADVERB
  MV5673 :RAW-TEXT "expressed")
 (:VAR MV5671 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5676 :ISA LIVER) (:VAR MV5673 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
622: "How does MAP4K2 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP4K2 affect CXCL8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP4K2 affect CXCL8?"
 (:VAR MV5684 :ISA AFFECT :MANNER MV5682 :AGENT MV5680 :OBJECT MV5681 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5682 :ISA HOW)
 (:VAR MV5680 :ISA PROTEIN :RAW-TEXT "MAP4K2" :UID "UP:Q12851" :NAME
  "M4K2_HUMAN")
 (:VAR MV5681 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
623: "How does ERK affect CXCL8?"

                    SOURCE-START
e8    AFFECT        1 "How does ERK affect CXCL8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does ERK affect CXCL8?"
 (:VAR MV5689 :ISA AFFECT :MANNER MV5686 :AGENT MV5688 :OBJECT MV5685 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5686 :ISA HOW)
 (:VAR MV5688 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5685 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
624: "What are the common upstream regulators of CXCL8 and CXCL10?"

                    SOURCE-START
e22   BE            1 "What are the common upstream regulators of CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of CXCL8 and CXCL10?"
 (:VAR MV5693 :ISA BE :SUBJECT MV5692 :PREDICATE MV5698 :PRESENT "PRESENT")
 (:VAR MV5692 :ISA WHAT)
 (:VAR MV5698 :ISA REGULATOR :THEME MV5701 :HAS-DETERMINER "THE" :PREDICATION
  MV5695 :CONTEXT MV5696 :RAW-TEXT "regulators")
 (:VAR MV5701 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5690 MV5691))
 (:VAR MV5690 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5691 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV5695 :ISA COMMON)
 (:VAR MV5696 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
625: "What are the paths between MAP3K7 and CXCL8?"

                    SOURCE-START
e16   BE            1 "What are the paths between MAP3K7 and CXCL8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between MAP3K7 and CXCL8?"
 (:VAR MV5706 :ISA BE :SUBJECT MV5705 :PREDICATE MV5708 :PRESENT "PRESENT")
 (:VAR MV5705 :ISA WHAT)
 (:VAR MV5708 :ISA PATH :ENDPOINTS MV5711 :HAS-DETERMINER "THE")
 (:VAR MV5711 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5703 MV5704))
 (:VAR MV5703 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5704 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
626: "Does MAP3K7 affect IKK?"

                    SOURCE-START
e9    AFFECT        1 "Does MAP3K7 affect IKK" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP3K7 affect IKK?" (:VAR MV5718 :ISA POLAR-QUESTION :STATEMENT MV5717)
 (:VAR MV5717 :ISA AFFECT :AGENT MV5713 :OBJECT MV5716 :RAW-TEXT "affect")
 (:VAR MV5713 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5716 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5720 :ISA REGULATE :AGENT MV5719 :OBJECT MV5721 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5719 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5721 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5723 :ISA UPREGULATE :AGENT MV5722 :OBJECT MV5724 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV5722 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5724 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5725 :ISA UPREGULATE :AGENT MV5727 :OBJECT MV5726 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV5727 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5726 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
630: "Does NFkappaB regulate the CXCL8 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does NFkappaB regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate the CXCL8 gene?"
 (:VAR MV5737 :ISA POLAR-QUESTION :STATEMENT MV5736)
 (:VAR MV5736 :ISA REGULATE :AGENT MV5731 :OBJECT MV5735 :RAW-TEXT "regulate")
 (:VAR MV5731 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5735 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5729 :RAW-TEXT
  "gene")
 (:VAR MV5729 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
631: "Show me the evidence that NFkappaB regulates CXCL8"

                    SOURCE-START
e18   SHOW          1 "Show me the evidence that NFkappaB regulates CXCL8" 10
                    END-OF-SOURCE
("Show me the evidence that NFkappaB regulates CXCL8"
 (:VAR MV5739 :ISA SHOW :STATEMENT-OR-THEME MV5747 :BENEFICIARY MV5740 :PRESENT
  "PRESENT")
 (:VAR MV5747 :ISA EVIDENCE :STATEMENT MV5746 :HAS-DETERMINER "THE")
 (:VAR MV5746 :ISA REGULATE :AGENT MV5744 :OBJECT MV5738 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5744 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5738 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5740 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
632: "Does ERK regulate the CXCL8 gene?"

                    SOURCE-START
e14   REGULATE      1 "Does ERK regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the CXCL8 gene?"
 (:VAR MV5755 :ISA POLAR-QUESTION :STATEMENT MV5754)
 (:VAR MV5754 :ISA REGULATE :AGENT MV5750 :OBJECT MV5753 :RAW-TEXT "regulate")
 (:VAR MV5750 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5753 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5748 :RAW-TEXT
  "gene")
 (:VAR MV5748 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
633: "ERK decreases the amount of CXCL8"

                    SOURCE-START
e13   DECREASE      1 "ERK decreases the amount of CXCL8" 8
                    END-OF-SOURCE
("ERK decreases the amount of CXCL8"
 (:VAR MV5758 :ISA DECREASE :AGENT MV5757 :AFFECTED-PROCESS-OR-OBJECT MV5760
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5757 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5760 :ISA BIO-AMOUNT :MEASURED-ITEM MV5756 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5756 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
634: "Does TNG regulate ERK?"

                    SOURCE-START
e8    REGULATE      1 "Does TNG regulate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNG regulate ERK?" (:VAR MV5768 :ISA POLAR-QUESTION :STATEMENT MV5767)
 (:VAR MV5767 :ISA REGULATE :AGENT MV5766 :OBJECT MV5765 :RAW-TEXT "regulate")
 (:VAR MV5766 :ISA BIO-ENTITY :NAME "TNG")
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
635: "Does TNF regulate the ERK gene?"

                    SOURCE-START
e13   REGULATE      1 "Does TNF regulate the ERK gene" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNF regulate the ERK gene?"
 (:VAR MV5776 :ISA POLAR-QUESTION :STATEMENT MV5775)
 (:VAR MV5775 :ISA REGULATE :AGENT MV5770 :OBJECT MV5774 :RAW-TEXT "regulate")
 (:VAR MV5770 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5774 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5773 :RAW-TEXT
  "gene")
 (:VAR MV5773 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5778 :ISA BE :SUBJECT MV5777 :PREDICATE MV5780 :PRESENT "PRESENT")
 (:VAR MV5777 :ISA WHAT)
 (:VAR MV5780 :ISA PATHWAY :PATHWAYCOMPONENT MV5785 :HAS-DETERMINER "THE"
  :RAW-TEXT "pathways")
 (:VAR MV5785 :ISA COLLECTION :RAW-TEXT "TNG and ERK" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV5782 MV5784))
 (:VAR MV5782 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV5784 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5788 :ISA BE :SUBJECT MV5787 :PREDICATE MV5790 :PRESENT "PRESENT")
 (:VAR MV5787 :ISA WHAT)
 (:VAR MV5790 :ISA PATHWAY :PATHWAYCOMPONENT MV5795 :HAS-DETERMINER "THE"
  :RAW-TEXT "pathways")
 (:VAR MV5795 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV5792 MV5794))
 (:VAR MV5792 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5794 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5803 :ISA POLAR-QUESTION :STATEMENT MV5802)
 (:VAR MV5802 :ISA REGULATE :AGENT MV5798 :OBJECT MV5801 :RAW-TEXT "regulate")
 (:VAR MV5798 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
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
  :UID "NCIT:C26360"))

___________________
639: "Does NFkappaB regulate the ERK gene?"

                    SOURCE-START
e14   REGULATE      1 "Does NFkappaB regulate the ERK gene" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate the ERK gene?"
 (:VAR MV5812 :ISA POLAR-QUESTION :STATEMENT MV5811)
 (:VAR MV5811 :ISA REGULATE :AGENT MV5805 :OBJECT MV5810 :RAW-TEXT "regulate")
 (:VAR MV5805 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5810 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5809 :RAW-TEXT
  "gene")
 (:VAR MV5809 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5825 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5814 :VALUE MV5824 :PREP
  "BETWEEN" :PREDICATE MV5815)
 (:VAR MV5814 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5824 :ISA PATHWAY :PATHWAYCOMPONENT MV5821 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "pathways")
 (:VAR MV5821 :ISA COLLECTION :RAW-TEXT "NFkappaB and ERK" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV5818 MV5820))
 (:VAR MV5818 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5820 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5815 :ISA EXIST :PRESENT "PRESENT"))

___________________
641: "How does NFkappaB affect ERK?"

                    SOURCE-START
e8    AFFECT        1 "How does NFkappaB affect ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does NFkappaB affect ERK?"
 (:VAR MV5831 :ISA AFFECT :MANNER MV5827 :AGENT MV5829 :OBJECT MV5832 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5827 :ISA HOW)
 (:VAR MV5829 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5832 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5834 :ISA BIO-ACTIVATE :AGENT MV5833 :OBJECT MV5835 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5833 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5835 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5837 :ISA BIO-ACTIVATE :AGENT MV5836 :OBJECT MV5838 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5836 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199")
 (:VAR MV5838 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN"))

___________________
644: "What are the paths between TNF and ERK?"

                    SOURCE-START
e14   BE            1 "What are the paths between TNF and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and ERK?"
 (:VAR MV5840 :ISA BE :SUBJECT MV5839 :PREDICATE MV5842 :PRESENT "PRESENT")
 (:VAR MV5839 :ISA WHAT)
 (:VAR MV5842 :ISA PATH :ENDPOINTS MV5847 :HAS-DETERMINER "THE")
 (:VAR MV5847 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV5844 MV5846))
 (:VAR MV5844 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5846 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
("Does TNF regulate ERK?" (:VAR MV5854 :ISA POLAR-QUESTION :STATEMENT MV5853)
 (:VAR MV5853 :ISA REGULATE :AGENT MV5850 :OBJECT MV5852 :RAW-TEXT "regulate")
 (:VAR MV5850 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5852 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5859 :ISA AFFECT :MANNER MV5857 :AGENT MV5855 :OBJECT MV5856 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5857 :ISA HOW)
 (:VAR MV5855 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5856 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
647: "TNF activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "TNF activates ERK" 4
                    END-OF-SOURCE
("TNF activates ERK"
 (:VAR MV5861 :ISA BIO-ACTIVATE :AGENT MV5860 :OBJECT MV5862 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5860 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5862 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5866 :ISA DECREASE :AGENT MV5865 :AFFECTED-PROCESS-OR-OBJECT MV5868
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5865 :ISA PROTEIN-FAMILY :PREDICATION MV5864 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5864 :ISA ACTIVE)
 (:VAR MV5868 :ISA BIO-AMOUNT :MEASURED-ITEM MV5863 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5863 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
649: "What are the common upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e19   BE            1 "What are the common upstreams of CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of CXCL8 and CXCL10?"
 (:VAR MV5874 :ISA BE :SUBJECT MV5873 :PREDICATE MV5877 :PRESENT "PRESENT")
 (:VAR MV5873 :ISA WHAT)
 (:VAR MV5877 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV5880 :HAS-DETERMINER
  "THE" :PREDICATION MV5876 :RAW-TEXT "upstreams")
 (:VAR MV5880 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5871 MV5872))
 (:VAR MV5871 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5872 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV5876 :ISA COMMON))

___________________
650: "How does CXCL8 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does CXCL8 affect CXCL8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does CXCL8 affect CXCL8?"
 (:VAR MV5886 :ISA AFFECT :MANNER MV5884 :AGENT MV5882 :OBJECT MV5883 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5884 :ISA HOW)
 (:VAR MV5882 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5883 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
651: "Does CXCL8 regulate CXCL10?"

                    SOURCE-START
e10   REGULATE      1 "Does CXCL8 regulate CXCL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate CXCL10?"
 (:VAR MV5892 :ISA POLAR-QUESTION :STATEMENT MV5891)
 (:VAR MV5891 :ISA REGULATE :AGENT MV5887 :OBJECT MV5888 :RAW-TEXT "regulate")
 (:VAR MV5887 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5888 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
652: "Does CXCL8 regulate the CXCL10 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does CXCL8 regulate the CXCL10 gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate the CXCL10 gene?"
 (:VAR MV5900 :ISA POLAR-QUESTION :STATEMENT MV5899)
 (:VAR MV5899 :ISA REGULATE :AGENT MV5893 :OBJECT MV5898 :RAW-TEXT "regulate")
 (:VAR MV5893 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5898 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5894 :RAW-TEXT
  "gene")
 (:VAR MV5894 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
653: "How does MAP3k7 affect CXCL10?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP3k7 affect CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP3k7 affect CXCL10?"
 (:VAR MV5905 :ISA AFFECT :MANNER MV5903 :AGENT MV5901 :OBJECT MV5902 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5903 :ISA HOW)
 (:VAR MV5901 :ISA PROTEIN :RAW-TEXT "MAP3k7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5902 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
654: "What are the paths between TNF and CXCL10?"

                    SOURCE-START
e15   BE            1 "What are the paths between TNF and CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and CXCL10?"
 (:VAR MV5908 :ISA BE :SUBJECT MV5907 :PREDICATE MV5910 :PRESENT "PRESENT")
 (:VAR MV5907 :ISA WHAT)
 (:VAR MV5910 :ISA PATH :ENDPOINTS MV5914 :HAS-DETERMINER "THE")
 (:VAR MV5914 :ISA COLLECTION :RAW-TEXT "TNF and CXCL10" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV5912 MV5906))
 (:VAR MV5912 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5906 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
655: "Does ERK regulate the expression of CXCL10?"

                    SOURCE-START
e17   REGULATE      1 "Does ERK regulate the expression of CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the expression of CXCL10?"
 (:VAR MV5925 :ISA POLAR-QUESTION :STATEMENT MV5923)
 (:VAR MV5923 :ISA REGULATE :AGENT MV5918 :AFFECTED-PROCESS MV5921 :RAW-TEXT
  "regulate")
 (:VAR MV5918 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5921 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5916 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV5916 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
656: "active ERK decreases the expression of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the expression of CXCL10" 9
                    END-OF-SOURCE
("active ERK decreases the expression of CXCL10"
 (:VAR MV5929 :ISA DECREASE :AGENT MV5928 :AFFECTED-PROCESS MV5931 :PRESENT
  "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5928 :ISA PROTEIN-FAMILY :PREDICATION MV5927 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5927 :ISA ACTIVE)
 (:VAR MV5931 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5926 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV5926 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
657: "active ERK decreases the amount of CXCL8"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the amount of CXCL8" 9
                    END-OF-SOURCE
("active ERK decreases the amount of CXCL8"
 (:VAR MV5937 :ISA DECREASE :AGENT MV5936 :AFFECTED-PROCESS-OR-OBJECT MV5939
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5936 :ISA PROTEIN-FAMILY :PREDICATION MV5935 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5935 :ISA ACTIVE)
 (:VAR MV5939 :ISA BIO-AMOUNT :MEASURED-ITEM MV5934 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5934 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
658: "Active ERK decreases the amount of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "Active ERK decreases the amount of CXCL10" 9
                    END-OF-SOURCE
("Active ERK decreases the amount of CXCL10"
 (:VAR MV5945 :ISA DECREASE :AGENT MV5944 :AFFECTED-PROCESS-OR-OBJECT MV5947
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5944 :ISA PROTEIN-FAMILY :PREDICATION MV5943 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5943 :ISA ACTIVE)
 (:VAR MV5947 :ISA BIO-AMOUNT :MEASURED-ITEM MV5942 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5942 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
659: "NG25 inhibits the activity of MAP3K7"

                    SOURCE-START
e16   INHIBIT       1 "NG25 inhibits the activity of MAP3K7" 11
                    END-OF-SOURCE
("NG25 inhibits the activity of MAP3K7"
 (:VAR MV5953 :ISA INHIBIT :AGENT MV5957 :AFFECTED-PROCESS MV5955 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV5957 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV5955 :ISA BIO-ACTIVITY :PARTICIPANT MV5950 :HAS-DETERMINER "THE"
  :RAW-TEXT "activity")
 (:VAR MV5950 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN"))

___________________
660: "Does NG25 decrease the CXCL8 in the model?"

                    SOURCE-START
e22   DECREASE      1 "Does NG25 decrease the CXCL8 in the model" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease the CXCL8 in the model?"
 (:VAR MV5970 :ISA POLAR-QUESTION :STATEMENT MV5968)
 (:VAR MV5968 :ISA DECREASE :AGENT MV5959 :OBJECT MV5960 :RAW-TEXT "decrease")
 (:VAR MV5959 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV5960 :ISA PROTEIN :INFO-CONTEXT MV5967 :HAS-DETERMINER "THE" :RAW-TEXT
  "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5967 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
661: "Does NG25 decrease CXCL10 in the model?"

                    SOURCE-START
e19   DECREASE      1 "Does NG25 decrease CXCL10 in the model" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease CXCL10 in the model?"
 (:VAR MV5981 :ISA POLAR-QUESTION :STATEMENT MV5979)
 (:VAR MV5979 :ISA DECREASE :AGENT MV5971 :OBJECT MV5972 :RAW-TEXT "decrease")
 (:VAR MV5971 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV5972 :ISA PROTEIN :INFO-CONTEXT MV5978 :RAW-TEXT "CXCL10" :UID
  "UP:P02778" :NAME "CXL10_HUMAN")
 (:VAR MV5978 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
662: "TNF activates NFkappaB"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "TNF activates NFkappaB" 4
                    END-OF-SOURCE
("TNF activates NFkappaB"
 (:VAR MV5983 :ISA BIO-ACTIVATE :AGENT MV5982 :OBJECT MV5984 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5982 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5984 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
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
 (:VAR MV5990 :ISA WANT :AGENT MV5987 :THEME MV6001 :PRESENT "PRESENT")
 (:VAR MV5987 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6001 :ISA FIND-OUT :AGENT MV5987 :STATEMENT MV5998)
 (:VAR MV5987 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV5998 :ISA WH-QUESTION :STATEMENT MV5997 :VAR NIL :WH HOW)
 (:VAR MV5997 :ISA DECREASE :AGENT MV5996 :OBJECT MV5986 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV5996 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tofacitinib")
 (:VAR MV5986 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
664: "I want to find out how Selumetinib decreases FOS in BT20 cells"

                    SOURCE-START
e31   WANT          1 "I want to find out how Selumetinib decreases FOS in BT20 cells" 14
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in BT20 cells"
 (:VAR MV6005 :ISA WANT :AGENT MV6002 :THEME MV6024 :PRESENT "PRESENT")
 (:VAR MV6002 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6024 :ISA FIND-OUT :AGENT MV6002 :STATEMENT MV6021)
 (:VAR MV6002 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6021 :ISA WH-QUESTION :STATEMENT MV6012 :VAR NIL :WH HOW)
 (:VAR MV6012 :ISA DECREASE :AGENT MV6011 :OBJECT MV6013 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6011 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV6013 :ISA PROTEIN :CELL-TYPE MV6018 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV6018 :ISA CELL-TYPE :MODIFIER MV6019)
 (:VAR MV6019 :ISA BIO-ENTITY :NAME "BT20"))

___________________
665: "I want to find out how ERBB3 activates JUN in SKBR3 cells"

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells"
 (:VAR MV6030 :ISA WANT :AGENT MV6027 :THEME MV6044 :PRESENT "PRESENT")
 (:VAR MV6027 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6044 :ISA FIND-OUT :AGENT MV6027 :STATEMENT MV6041)
 (:VAR MV6027 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6041 :ISA WH-QUESTION :STATEMENT MV6036 :VAR NIL :WH HOW)
 (:VAR MV6036 :ISA BIO-ACTIVATE :AGENT MV6025 :OBJECT MV6037 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6025 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME
  "ERBB3_HUMAN")
 (:VAR MV6037 :ISA PROTEIN :CELL-TYPE MV6039 :RAW-TEXT "JUN" :UID "UP:P05412"
  :NAME "JUN_HUMAN")
 (:VAR MV6039 :ISA CELL-TYPE :CELL-LINE MV6026)
 (:VAR MV6026 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
666: "Does MEK phosphorylate ERK?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "Does MEK phosphorylate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MEK phosphorylate ERK?"
 (:VAR MV6050 :ISA POLAR-QUESTION :STATEMENT MV6049)
 (:VAR MV6049 :ISA PHOSPHORYLATE :AGENT MV6046 :SUBSTRATE MV6048 :RAW-TEXT
  "phosphorylate")
 (:VAR MV6046 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6048 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV6058 :ISA POLAR-QUESTION :STATEMENT MV6057)
 (:VAR MV6057 :ISA INHIBIT :AGENT MV6051 :OBJECT MV6056 :RAW-TEXT "inhibit")
 (:VAR MV6051 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6056 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6052 :RAW-TEXT
  "gene")
 (:VAR MV6052 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
668: "Does STAT3 stimulate the c-fos gene?"

                    SOURCE-START
e15   STIMULATE     1 "Does STAT3 stimulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 stimulate the c-fos gene?"
 (:VAR MV6066 :ISA POLAR-QUESTION :STATEMENT MV6065)
 (:VAR MV6065 :ISA STIMULATE :AGENT MV6059 :OBJECT MV6064 :RAW-TEXT
  "stimulate")
 (:VAR MV6059 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6064 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6060 :RAW-TEXT
  "gene")
 (:VAR MV6060 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
669: "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."

                    SOURCE-START
e33   WANT          1 "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells" 16
                    PERIOD
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
 (:VAR MV6070 :ISA WANT :AGENT MV6067 :THEME MV6088 :PRESENT "PRESENT")
 (:VAR MV6067 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6088 :ISA FIND-OUT :AGENT MV6067 :STATEMENT MV6085)
 (:VAR MV6067 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6085 :ISA WH-QUESTION :STATEMENT MV6077 :VAR NIL :WH HOW)
 (:VAR MV6077 :ISA DECREASE :AGENT MV6076 :OBJECT MV6078 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6076 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV6078 :ISA PROTEIN :CELL-TYPE MV6082 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV6082 :ISA CELL-TYPE :MODIFIER MV6083 :CONTEXT-OR-ASSOCIATED-DISEASE
  MV6081)
 (:VAR MV6083 :ISA BIO-ENTITY :NAME "SKMEL-133") (:VAR MV6081 :ISA MELANOMA))

___________________
670: "Is ERK a transcription factor?"

                    SOURCE-START
e9    BE            1 "Is ERK a transcription factor" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK a transcription factor?"
 (:VAR MV6093 :ISA POLAR-QUESTION :STATEMENT
  (#<be 92020>
   (PREDICATE
    (#<transcription-factor 89959> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
671: "List all the genes regulated by elk1 and srf."

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    PERIOD
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf."
 (:VAR MV6095 :ISA LIST :THEME MV6098 :PRESENT "PRESENT")
 (:VAR MV6098 :ISA GENE :PREDICATION MV6099 :QUANTIFIER MV6096 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6099 :ISA REGULATE :OBJECT MV6098 :AGENT MV6103 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6103 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6094 MV6102))
 (:VAR MV6094 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6102 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6096 :ISA ALL :WORD "all"))

___________________
672: "List some of the genes regulated by elk1 and srf."

                    SOURCE-START
e20   LIST          1 "List some of the genes regulated by elk1 and srf" 12
                    PERIOD
                    END-OF-SOURCE
("List some of the genes regulated by elk1 and srf."
 (:VAR MV6106 :ISA LIST :THEME MV6110 :PRESENT "PRESENT")
 (:VAR MV6110 :ISA GENE :PREDICATION MV6111 :QUANTIFIER MV6107 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6111 :ISA REGULATE :OBJECT MV6110 :AGENT MV6115 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6115 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6105 MV6114))
 (:VAR MV6105 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6114 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6107 :ISA SOME :WORD "some"))

___________________
673: "Show me the  mutations of TP53 and BRAF in ovarian cancer."

                    SOURCE-START
e22   SHOW          1 "Show me the  mutations of TP53 and BRAF in ovarian cancer" 13
                    PERIOD
                    END-OF-SOURCE
("Show me the  mutations of TP53 and BRAF in ovarian cancer."
 (:VAR MV6121 :ISA SHOW :STATEMENT-OR-THEME MV6124 :BENEFICIARY MV6122 :PRESENT
  "PRESENT")
 (:VAR MV6124 :ISA MUTATION :OBJECT MV6129 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6129 :ISA COLLECTION :CONTEXT MV6120 :RAW-TEXT "TP53 and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV6119 MV6127))
 (:VAR MV6120 :ISA CANCER :UID "TS-1223")
 (:VAR MV6119 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6127 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6122 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
674: "What are the mutations of TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutations of TP53 and BRAF in ovarian cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of TP53 and BRAF in ovarian cancer?"
 (:VAR MV6135 :ISA BE :SUBJECT MV6134 :PREDICATE MV6137 :PRESENT "PRESENT")
 (:VAR MV6134 :ISA WHAT)
 (:VAR MV6137 :ISA MUTATION :OBJECT MV6142 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6142 :ISA COLLECTION :CONTEXT MV6133 :RAW-TEXT "TP53 and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV6132 MV6140))
 (:VAR MV6133 :ISA CANCER :UID "TS-1223")
 (:VAR MV6132 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6140 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
675: "What are the mutually exclusive genes with CDH1 for breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with CDH1 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with CDH1 for breast cancer?"
 (:VAR MV6149 :ISA BE :SUBJECT MV6148 :PREDICATE MV6156 :PRESENT "PRESENT")
 (:VAR MV6148 :ISA WHAT)
 (:VAR MV6156 :ISA GENE :DISEASE MV6147 :HAS-DETERMINER "THE" :PREDICATION
  MV6145 :RAW-TEXT "genes")
 (:VAR MV6147 :ISA CANCER :UID "TS-0591")
 (:VAR MV6145 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6146)
 (:VAR MV6146 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN"))

___________________
676: "What are the mutually exclusive genes with CDH1 in breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with CDH1 in breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with CDH1 in breast cancer?"
 (:VAR MV6161 :ISA BE :SUBJECT MV6160 :PREDICATE MV6168 :PRESENT "PRESENT")
 (:VAR MV6160 :ISA WHAT)
 (:VAR MV6168 :ISA GENE :HAS-DETERMINER "THE" :PREDICATION MV6157 :RAW-TEXT
  "genes")
 (:VAR MV6157 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6158)
 (:VAR MV6158 :ISA PROTEIN :CONTEXT MV6159 :RAW-TEXT "CDH1" :UID "UP:P12830"
  :NAME "CADH1_HUMAN")
 (:VAR MV6159 :ISA CANCER :UID "TS-0591"))

___________________
677: "What downregulates it?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates it" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates it?"
 (:VAR MV6170 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV6169
  :AFFECTED-PROCESS-OR-OBJECT MV6171 :PRESENT "PRESENT" :RAW-TEXT
  "downregulates")
 (:VAR MV6169 :ISA WHAT) (:VAR MV6171 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
678: "What genes have strong evidence of being regulated by mir-122-5p?"

                    SOURCE-START
e21   HAVE          1 "What genes have strong evidence of being regulated by mir-122-5p" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes have strong evidence of being regulated by mir-122-5p?"
 (:VAR MV6175 :ISA HAVE :POSSESSOR MV6174 :THING-POSSESSED MV6177 :PRESENT
  "PRESENT")
 (:VAR MV6174 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6177 :ISA EVIDENCE :FACT MV6180 :PREDICATION MV6176)
 (:VAR MV6180 :ISA REGULATE :AGENT MV6172 :PROGRESSIVE MV6179 :RAW-TEXT
  "regulated")
 (:VAR MV6172 :ISA MICRO-RNA :RAW-TEXT "mir-122-5p" :NAME "microRNA 122-5p"
  :UID "MIMAT0000421")
 (:VAR MV6179 :ISA BE) (:VAR MV6176 :ISA STRONG))

___________________
679: "What increases the amount of myc"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    END-OF-SOURCE
("What increases the amount of myc"
 (:VAR MV6186 :ISA INCREASE :AGENT-OR-CAUSE MV6184 :AFFECTED-PROCESS-OR-OBJECT
  MV6188 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV6184 :ISA WHAT)
 (:VAR MV6188 :ISA BIO-AMOUNT :MEASURED-ITEM MV6190 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV6190 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
680: "What inhibits fzd8?"

                    SOURCE-START
e5    INHIBIT       1 "What inhibits fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits fzd8?"
 (:VAR MV6194 :ISA INHIBIT :AGENT-OR-CAUSE MV6193 :OBJECT MV6192 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV6193 :ISA WHAT)
 (:VAR MV6192 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
681: "What is the most likely cellular location of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e26   BE            1 "What is the most likely cellular location of AKT1, BRAF and MAPK1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
 (:VAR MV6198 :ISA BE :SUBJECT MV6197 :PREDICATE MV6210 :PRESENT "PRESENT")
 (:VAR MV6197 :ISA WHAT)
 (:VAR MV6210 :ISA QUALITY-PREDICATE :ITEM MV6208 :ATTRIBUTE MV6204)
 (:VAR MV6208 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6195 MV6206 MV6196))
 (:VAR MV6195 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6206 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6196 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6204 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6202
  :MODIFIER MV6203)
 (:VAR MV6202 :ISA LIKELY :COMPARATIVE MV6200)
 (:VAR MV6200 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6203 :ISA CELLULAR :NAME "cellular"))

___________________
682: "What is the most likely cellular location of AKT1?"

                    SOURCE-START
e20   BE            1 "What is the most likely cellular location of AKT1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1?"
 (:VAR MV6213 :ISA BE :SUBJECT MV6212 :PREDICATE MV6222 :PRESENT "PRESENT")
 (:VAR MV6212 :ISA WHAT)
 (:VAR MV6222 :ISA QUALITY-PREDICATE :ITEM MV6211 :ATTRIBUTE MV6219)
 (:VAR MV6211 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6219 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6217
  :MODIFIER MV6218)
 (:VAR MV6217 :ISA LIKELY :COMPARATIVE MV6215)
 (:VAR MV6215 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6218 :ISA CELLULAR :NAME "cellular"))

___________________
683: "What is the mutation significance of TP53 in lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in lung cancer?"
 (:VAR MV6226 :ISA BE :SUBJECT MV6225 :PREDICATE MV6229 :PRESENT "PRESENT")
 (:VAR MV6225 :ISA WHAT)
 (:VAR MV6229 :ISA SIGNIFICANCE :AGENT MV6223 :HAS-DETERMINER "THE" :MODIFIER
  MV6228)
 (:VAR MV6223 :ISA PROTEIN :CONTEXT MV6224 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV6224 :ISA CANCER :UID "TS-0571")
 (:VAR MV6228 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
684: "Which of those are regulated by tp53?"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by tp53" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are regulated by tp53?"
 (:VAR MV6241 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6237 :AGENT MV6234
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV6237 :ISA THOSE :QUANTIFIER MV6235 :WORD "those")
 (:VAR MV6235 :ISA WHICH)
 (:VAR MV6234 :ISA PROTEIN :RAW-TEXT "tp53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
685: "Which of those genes are in the MAPK signaling pathway?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Which of those genes are in the MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those genes are in the MAPK signaling pathway?"
 (:VAR MV6257 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6248 :VALUE MV6256 :PREP
  "IN" :PREDICATE MV6249)
 (:VAR MV6248 :ISA GENE :QUANTIFIER MV6245 :HAS-DETERMINER "THOSE" :RAW-TEXT
  "genes")
 (:VAR MV6245 :ISA WHICH)
 (:VAR MV6256 :ISA GENE :CONTEXT MV6244 :QUANTIFIER MV6245 :HAS-DETERMINER
  "THOSE" :RAW-TEXT "genes")
 (:VAR MV6244 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV6252
  :RAW-TEXT "signaling pathway")
 (:VAR MV6252 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV6245 :ISA WHICH) (:VAR MV6249 :ISA BE :PRESENT "PRESENT"))

___________________
686: "Which of these are in the il-12 pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which of these are in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in the il-12 pathway?"
 (:VAR MV6268 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6262 :VALUE MV6266 :PREP
  MV6264 :PREDICATE MV6263)
 (:VAR MV6262 :ISA THESE :QUANTIFIER MV6260 :WORD "these")
 (:VAR MV6260 :ISA WHICH)
 (:VAR MV6266 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV6259 :RAW-TEXT
  "pathway")
 (:VAR MV6259 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV6264 :ISA IN :WORD "in") (:VAR MV6263 :ISA BE :PRESENT "PRESENT"))

___________________
687: "Which of them are expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of them are expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of them are expressed in liver?"
 (:VAR MV6277 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV6272 :ORGAN MV6276
  :PRESENT "PRESENT" :RAW-TEXT "expressed")
 (:VAR MV6272 :ISA PRONOUN/PLURAL :QUANTIFIER MV6270 :WORD "them")
 (:VAR MV6270 :ISA WHICH) (:VAR MV6276 :ISA LIVER))

___________________
688: "Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"

                    SOURCE-START
e23   REGULATE      1 "Which of them are most frequently regulated by miR-335-5p and miR-155-5p" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
 (:VAR MV6292 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6284 :AGENT MV6291
  :PRESENT "PRESENT" :SUPERLATIVE MV6286 :ADVERB MV6287 :RAW-TEXT "regulated")
 (:VAR MV6284 :ISA PRONOUN/PLURAL :QUANTIFIER MV6282 :WORD "them")
 (:VAR MV6282 :ISA WHICH)
 (:VAR MV6291 :ISA COLLECTION :RAW-TEXT "miR-335-5p and miR-155-5p" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV6280 MV6281))
 (:VAR MV6280 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV6281 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV6286 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6287 :ISA FREQUENTLY :NAME "frequently"))

___________________
689: "What transcription factors target SMURF2?"

                    SOURCE-START
e9    TARGET        1 "What transcription factors target SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors target SMURF2?"
 (:VAR MV6299 :ISA TARGET :AGENT MV6295 :OBJECT MV6296 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV6295 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV6296 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
690: "Which of those target frizzled8?"

                    SOURCE-START
e11   PROTEIN       1 "Which of those target frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those target frizzled8?"
 (:VAR MV6300 :ISA PROTEIN :QUANTIFIER MV6301 :HAS-DETERMINER "THOSE" :MODIFIER
  MV6304 :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV6301 :ISA WHICH) (:VAR MV6304 :ISA TARGET-PROTEIN :RAW-TEXT "target"))

___________________
691: "What is Selumetinib?"

                    SOURCE-START
e4    BE            1 "What is Selumetinib" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is Selumetinib?"
 (:VAR MV6308 :ISA BE :SUBJECT MV6307 :PREDICATE MV6309 :PRESENT "PRESENT")
 (:VAR MV6307 :ISA WHAT)
 (:VAR MV6309 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
692: "What is MAPK3?"

                    SOURCE-START
e5    BE            1 "What is MAPK3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is MAPK3?"
 (:VAR MV6312 :ISA BE :SUBJECT MV6311 :PREDICATE MV6310 :PRESENT "PRESENT")
 (:VAR MV6311 :ISA WHAT)
 (:VAR MV6310 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
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
 (:VAR MV6325 :ISA THERE-EXISTS :VALUE MV6323 :PREDICATE MV6320)
 (:VAR MV6323 :ISA INHIBITOR :PROTEIN MV6318 :HAS-DETERMINER "AN" :RAW-TEXT
  "inhibitor")
 (:VAR MV6318 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN")
 (:VAR MV6320 :ISA SYNTACTIC-THERE))

___________________
695: "Name some drugs that inhibit AKT1."

                    SOURCE-START
e15   NAME-SOMETHING  1 "Name some drugs that inhibit AKT1" 8
                    PERIOD
                    END-OF-SOURCE
("Name some drugs that inhibit AKT1."
 (:VAR MV6328 :ISA NAME-SOMETHING :PATIENT MV6332 :PRESENT "PRESENT")
 (:VAR MV6332 :ISA DRUG :PREDICATION MV6334 :QUANTIFIER MV6331 :RAW-TEXT
  "drugs")
 (:VAR MV6334 :ISA INHIBIT :AGENT MV6332 :THAT-REL T :OBJECT MV6327 :PRESENT
  "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV6327 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6331 :ISA SOME :WORD "some"))

___________________
696: "Are there any Map2K1 inhibitors?"

                    SOURCE-START
e15   THERE-EXISTS  1 "Are there any Map2K1 inhibitors" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any Map2K1 inhibitors?"
 (:VAR MV6345 :ISA THERE-EXISTS :VALUE MV6343 :PREDICATE MV6337)
 (:VAR MV6343 :ISA INHIBITOR :QUANTIFIER MV6339 :PROTEIN MV6344 :RAW-TEXT
  "inhibitors")
 (:VAR MV6339 :ISA ANY :WORD "any")
 (:VAR MV6344 :ISA PROTEIN :RAW-TEXT "Map2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV6337 :ISA SYNTACTIC-THERE))

___________________
697: "Are there targets of Selumetinib?"

                    SOURCE-START
e12   THERE-EXISTS  1 "Are there targets of Selumetinib" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there targets of Selumetinib?"
 (:VAR MV6353 :ISA THERE-EXISTS :VALUE MV6349 :PREDICATE MV6347)
 (:VAR MV6349 :ISA TARGET-PROTEIN :AGENT MV6352 :RAW-TEXT "targets")
 (:VAR MV6352 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV6347 :ISA SYNTACTIC-THERE))

___________________
698: "What does Selumetinib inhibit?"

                    SOURCE-START
e5    INHIBIT       1 "What does Selumetinib inhibit" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib inhibit?"
 (:VAR MV6358 :ISA INHIBIT :OBJECT MV6355 :AGENT MV6357 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV6355 :ISA WHAT)
 (:VAR MV6357 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
699: "What does Selumetinib target?"

                    SOURCE-START
e6    TARGET        1 "What does Selumetinib target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib target?"
 (:VAR MV6363 :ISA TARGET :OBJECT MV6359 :AGENT MV6361 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV6359 :ISA WHAT)
 (:VAR MV6361 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
700: "Does Vemurafenib target BRAF?"

                    SOURCE-START
e9    TARGET        1 "Does Vemurafenib target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib target BRAF?"
 (:VAR MV6370 :ISA POLAR-QUESTION :STATEMENT MV6369)
 (:VAR MV6369 :ISA TARGET :AGENT MV6365 :OBJECT MV6368 :RAW-TEXT "target")
 (:VAR MV6365 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV6368 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
701: "What are some targets for treating pancreatic cancer?"

                    SOURCE-START
e15   BE            1 "What are some targets for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for treating pancreatic cancer?"
 (:VAR MV6373 :ISA BE :SUBJECT MV6372 :PREDICATE MV6375 :PRESENT "PRESENT")
 (:VAR MV6372 :ISA WHAT)
 (:VAR MV6375 :ISA TARGET-PROTEIN :QUANTIFIER MV6374 :TREATMENT MV6378
  :RAW-TEXT "targets")
 (:VAR MV6374 :ISA SOME :WORD "some")
 (:VAR MV6378 :ISA TREATMENT :DISEASE MV6371 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "treating")
 (:VAR MV6371 :ISA CANCER :UID "TS-0739"))

___________________
702: "What are some targets for pancreatic cancer?"

                    SOURCE-START
e13   BE            1 "What are some targets for pancreatic cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for pancreatic cancer?"
 (:VAR MV6382 :ISA BE :SUBJECT MV6381 :PREDICATE MV6384 :PRESENT "PRESENT")
 (:VAR MV6381 :ISA WHAT)
 (:VAR MV6384 :ISA TARGET-PROTEIN :QUANTIFIER MV6383 :DISEASE MV6380 :RAW-TEXT
  "targets")
 (:VAR MV6383 :ISA SOME :WORD "some") (:VAR MV6380 :ISA CANCER :UID "TS-0739"))

___________________
703: "What targets could lead to the development of pancreatic cancer?"

                    SOURCE-START
e21   LEAD          1 "What targets could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What targets could lead to the development of pancreatic cancer?"
 (:VAR MV6393 :ISA LEAD :AGENT MV6390 :THEME MV6396 :MODAL MV6392 :RAW-TEXT
  "lead")
 (:VAR MV6390 :ISA TARGET-PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "targets")
 (:VAR MV6396 :ISA DEVELOPMENT :DISEASE MV6388 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV6388 :ISA CANCER :UID "TS-0739") (:VAR MV6392 :ISA COULD))

___________________
704: "What proteins could lead to the development of pancreatic cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins could lead to the development of pancreatic cancer?"
 (:VAR MV6404 :ISA LEAD :AGENT MV6402 :THEME MV6407 :MODAL MV6403 :RAW-TEXT
  "lead")
 (:VAR MV6402 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV6407 :ISA DEVELOPMENT :DISEASE MV6400 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV6400 :ISA CANCER :UID "TS-0739") (:VAR MV6403 :ISA COULD))

___________________
705: "What mutated genes could lead to pancreatic cancer?"

                    SOURCE-START
e15   LEAD          1 "What mutated genes could lead to pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What mutated genes could lead to pancreatic cancer?"
 (:VAR MV6416 :ISA LEAD :AGENT MV6414 :THEME MV6411 :MODAL MV6415 :RAW-TEXT
  "lead")
 (:VAR MV6414 :ISA GENE :HAS-DETERMINER "WHAT" :PREDICATION MV6413 :RAW-TEXT
  "genes")
 (:VAR MV6413 :ISA MUTATION :OBJECT MV6414 :RAW-TEXT "mutated")
 (:VAR MV6411 :ISA CANCER :UID "TS-0739") (:VAR MV6415 :ISA COULD))

___________________
706: "What is the top gene mutation that leads to pancreatic cancer?"

                    SOURCE-START
e24   BE            1 "What is the top gene mutation that leads to pancreatic cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the top gene mutation that leads to pancreatic cancer?"
 (:VAR MV6421 :ISA BE :SUBJECT MV6420 :PREDICATE MV6426 :PRESENT "PRESENT")
 (:VAR MV6420 :ISA WHAT)
 (:VAR MV6426 :ISA MUTATION :AGENT MV6425 :OBJECT MV6423 :PREDICATION MV6428
  :HAS-DETERMINER "THE" :AGENT-OR-OBJECT MV6423 :AGENT-OR-OBJECT MV6425
  :RAW-TEXT "mutation")
 (:VAR MV6425 :ISA GENE :RAW-TEXT "gene")
 (:VAR MV6423 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6428 :ISA LEAD :AGENT MV6426 :THAT-REL T :THEME MV6419 :PRESENT
  "PRESENT" :RAW-TEXT "leads")
 (:VAR MV6419 :ISA CANCER :UID "TS-0739")
 (:VAR MV6423 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6425 :ISA GENE :RAW-TEXT "gene"))

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
 (:VAR MV6458 :ISA BIO-USE :PATIENT MV6448 :MODAL MV6449 :AGENT MV6450 :THEME
  MV6457 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV6448 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV6449 :ISA COULD) (:VAR MV6450 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6457 :ISA TREATMENT :DISEASE MV6446 :RAW-TEXT "treat")
 (:VAR MV6446 :ISA CANCER :UID "TS-0739"))

___________________
709: "What are some drugs for treating pancreatic cancer?"

                    SOURCE-START
e14   BE            1 "What are some drugs for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs for treating pancreatic cancer?"
 (:VAR MV6461 :ISA BE :SUBJECT MV6460 :PREDICATE MV6463 :PRESENT "PRESENT")
 (:VAR MV6460 :ISA WHAT)
 (:VAR MV6463 :ISA DRUG :TREATMENT MV6465 :QUANTIFIER MV6462 :RAW-TEXT "drugs")
 (:VAR MV6465 :ISA TREATMENT :DISEASE MV6459 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "treating")
 (:VAR MV6459 :ISA CANCER :UID "TS-0739") (:VAR MV6462 :ISA SOME :WORD "some"))

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
("Does MEK act on ERK?" (:VAR MV6494 :ISA POLAR-QUESTION :STATEMENT MV6492)
 (:VAR MV6492 :ISA BIO-ACT :AGENT MV6488 :ACTED-ON MV6491 :RAW-TEXT "act")
 (:VAR MV6488 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6491 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV6499 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6496 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6496 :ISA BUILD :ARTIFACT MV6498 :PRESENT "PRESENT")
 (:VAR MV6498 :ISA MODEL :HAS-DETERMINER "A"))

___________________
714: "Mek activates MAPK3"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "Mek activates MAPK3" 5
                    END-OF-SOURCE
("Mek activates MAPK3"
 (:VAR MV6502 :ISA BIO-ACTIVATE :AGENT MV6501 :OBJECT MV6500 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6501 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6500 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
715: "HRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "HRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("HRAS activates RAF."
 (:VAR MV6504 :ISA BIO-ACTIVATE :AGENT MV6503 :OBJECT MV6505 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6503 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV6505 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
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
 (:VAR MV6506 :ISA REMOVE :OBJECT MV6513 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV6513 :ISA FACT :STATEMENT MV6511 :HAS-DETERMINER "THE")
 (:VAR MV6511 :ISA BIO-ACTIVATE :AGENT MV6510 :OBJECT MV6512 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6510 :ISA PROTEIN :RAW-TEXT "hras" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV6512 :ISA PROTEIN-FAMILY :RAW-TEXT "ras" :NAME "Ras" :COUNT 3
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
 (:VAR MV6525 :ISA POLAR-QUESTION :STATEMENT MV6516)
 (:VAR MV6516 :ISA TELL :AGENT MV6515 :THEME MV6524 :THEME MV6517 :MODAL "CAN")
 (:VAR MV6515 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV6524 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6518 :VALUE MV6522 :PREP
  MV6520 :PREDICATE MV6519)
 (:VAR MV6518 :ISA WHAT) (:VAR MV6522 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV6520 :ISA IN :WORD "in") (:VAR MV6519 :ISA BE :MODAL "CAN")
 (:VAR MV6517 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
718: "Summarize the model."

                    SOURCE-START
e5    SUMMARIZE     1 "Summarize the model" 4
                    PERIOD
                    END-OF-SOURCE
("Summarize the model."
 (:VAR MV6529 :ISA SUMMARIZE :STATEMENT MV6528 :PRESENT "PRESENT")
 (:VAR MV6528 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
719: "Summarize the current model."

                    SOURCE-START
e7    SUMMARIZE     1 "Summarize the current model" 5
                    PERIOD
                    END-OF-SOURCE
("Summarize the current model."
 (:VAR MV6534 :ISA SUMMARIZE :STATEMENT MV6533 :PRESENT "PRESENT")
 (:VAR MV6533 :ISA MODEL :HAS-DETERMINER "THE" :PREDICATION MV6532)
 (:VAR MV6532 :ISA CURRENT))

___________________
720: "What phosphorylates BRAF?"

                    SOURCE-START
e4    PHOSPHORYLATE 1 "What phosphorylates BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What phosphorylates BRAF?"
 (:VAR MV6536 :ISA PHOSPHORYLATE :AGENT-OR-CAUSE MV6535 :SUBSTRATE MV6537
  :PRESENT "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6535 :ISA WHAT)
 (:VAR MV6537 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
721: "Vemurafenib binds BRAF."

                    SOURCE-START
e4    BINDING       1 "Vemurafenib binds BRAF" 4
                    PERIOD
                    END-OF-SOURCE
("Vemurafenib binds BRAF."
 (:VAR MV6539 :ISA BINDING :BINDER MV6538 :DIRECT-BINDEE MV6540 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV6538 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV6540 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
722: "Phosphorylated MAP2K1 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated MAP2K1 is activated" 8
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAP2K1 is activated."
 (:VAR MV6545 :ISA BIO-ACTIVATE :OBJECT MV6541 :PRESENT "PRESENT" :RAW-TEXT
  "activated")
 (:VAR MV6541 :ISA PROTEIN :PREDICATION MV6542 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6542 :ISA PHOSPHORYLATE :SUBSTRATE MV6541 :RAW-TEXT "Phosphorylated"))

___________________
723: "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2" 18
                    PERIOD
                    END-OF-SOURCE
("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
 (:VAR MV6549 :ISA DEPHOSPHORYLATE :AGENT MV6546 :SUBSTRATE MV6547 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV6546 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME
  "PP2AA_HUMAN")
 (:VAR MV6547 :ISA PROTEIN :PREDICATION MV6555 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6555 :ISA BINDING :DIRECT-BINDEE MV6547 :THAT-REL T :BINDEE MV6548
  :PRESENT "PRESENT" :NEGATION MV6552 :RAW-TEXT "bound")
 (:VAR MV6548 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6552 :ISA NOT :WORD "not"))

___________________
724: "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."

                    SOURCE-START
e24   PHOSPHORYLATE 1 "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2" 19
                    PERIOD
                    END-OF-SOURCE
("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
 (:VAR MV6566 :ISA PHOSPHORYLATE :AGENT MV6557 :SUBSTRATE MV6559 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6557 :ISA PROTEIN :PREDICATION MV6567 :PREDICATION MV6560 :RAW-TEXT
  "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6567 :ISA BINDING :DIRECT-BINDEE MV6557 :THAT-REL T :BINDEE MV6558
  :PRESENT "PRESENT" :NEGATION MV6563 :RAW-TEXT "bound")
 (:VAR MV6558 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME
  "PP2AA_HUMAN")
 (:VAR MV6563 :ISA NOT :WORD "not") (:VAR MV6560 :ISA ACTIVE)
 (:VAR MV6559 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
725: "Phosphorylated ERK2 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated ERK2 is activated" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK2 is activated."
 (:VAR MV6573 :ISA BIO-ACTIVATE :OBJECT MV6569 :PRESENT "PRESENT" :RAW-TEXT
  "activated")
 (:VAR MV6569 :ISA PROTEIN :PREDICATION MV6570 :RAW-TEXT "ERK2" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6570 :ISA PHOSPHORYLATE :SUBSTRATE MV6569 :RAW-TEXT "Phosphorylated"))

___________________
726: "DUSP6 dephosphorylates ERK2 that is not bound to SOS1."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates ERK2 that is not bound to SOS1" 13
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
 (:VAR MV6577 :ISA DEPHOSPHORYLATE :AGENT MV6574 :SUBSTRATE MV6575 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV6574 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV6575 :ISA PROTEIN :PREDICATION MV6583 :RAW-TEXT "ERK2" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6583 :ISA BINDING :DIRECT-BINDEE MV6575 :THAT-REL T :BINDEE MV6576
  :PRESENT "PRESENT" :NEGATION MV6580 :RAW-TEXT "bound")
 (:VAR MV6576 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME
  "SOS1_HUMAN")
 (:VAR MV6580 :ISA NOT :WORD "not"))

___________________
727: "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."

                    SOURCE-START
e28   PHOSPHORYLATE 1 "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1" 16
                    PERIOD
                    END-OF-SOURCE
("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
 (:VAR MV6597 :ISA PHOSPHORYLATE :AGENT MV6586 :SUBSTRATE MV6585 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6586 :ISA PROTEIN :PREDICATION MV6600 :MUTATION MV6599 :RAW-TEXT
  "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV6600 :ISA BINDING :DIRECT-BINDEE MV6586 :THAT-REL T :BINDEE MV6596
  :PRESENT "PRESENT" :NEGATION MV6593 :RAW-TEXT "bound")
 (:VAR MV6596 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV6593 :ISA NOT :WORD "not")
 (:VAR MV6599 :ISA POINT-MUTATED-PROTEIN :POSITION MV6588 :NEW-AMINO-ACID
  MV6590 :ORIGINAL-AMINO-ACID MV6587)
 (:VAR MV6588 :ISA NUMBER :VALUE 600)
 (:VAR MV6590 :ISA AMINO-ACID :NAME "glutamic acid" :LETTER "E")
 (:VAR MV6587 :ISA AMINO-ACID :NAME "valine" :LETTER "V")
 (:VAR MV6585 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
728: "Phosphorylated MAPK1 is active."

                    SOURCE-START
e8    COPULAR-PREDICATION 1 "Phosphorylated MAPK1 is active" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAPK1 is active."
 (:VAR MV6606 :ISA COPULAR-PREDICATION :ITEM MV6602 :VALUE MV6605 :PREDICATE
  MV6604)
 (:VAR MV6602 :ISA PROTEIN :PREDICATION MV6603 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6603 :ISA PHOSPHORYLATE :SUBSTRATE MV6602 :RAW-TEXT "Phosphorylated")
 (:VAR MV6605 :ISA ACTIVE) (:VAR MV6604 :ISA BE :PRESENT "PRESENT"))

___________________
729: "PDK1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "PDK1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("PDK1 phosphorylates AKT1."
 (:VAR MV6609 :ISA PHOSPHORYLATE :AGENT MV6607 :SUBSTRATE MV6608 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6607 :ISA PROTEIN :RAW-TEXT "PDK1" :UID "UP:O15530" :NAME
  "PDPK1_HUMAN")
 (:VAR MV6608 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
730: "Let's move phosphorylated AKT1 to the top"

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 to the top" 11
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 to the top"
 (:VAR MV6619 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6612 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6612 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV6616 :THEME MV6611 :PRESENT
  "PRESENT")
 (:VAR MV6616 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT
  4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6611 :ISA PROTEIN :PREDICATION MV6613 :RAW-TEXT "AKT1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6613 :ISA PHOSPHORYLATE :SUBSTRATE MV6611 :RAW-TEXT "phosphorylated"))

___________________
731: "Let's move phosphorylated AKT1 on top"

                    SOURCE-START
e16   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 on top" 10
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 on top"
 (:VAR MV6630 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6622 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6622 :ISA MOVE-SOMETHING-SOMEWHERE :THEME MV6629 :PRESENT "PRESENT")
 (:VAR MV6629 :ISA PROTEIN :PREDICATION MV6628 :RAW-TEXT "AKT1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6628 :ISA PHOSPHORYLATE :SUBSTRATE MV6625 :SUBSTRATE MV6629 :RAW-TEXT
  "phosphorylated")
 (:VAR MV6625 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
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
 (:VAR MV6632 :ISA SHOW :AT-RELATIVE-LOCATION MV6634 :STATEMENT-OR-THEME MV6631
  :PRESENT "PRESENT")
 (:VAR MV6634 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6631 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
733: "Let's highlight upstream of AKT1"

                    SOURCE-START
e12   EXPLICIT-SUGGESTION 1 "Let's highlight upstream of AKT1" 9
                    END-OF-SOURCE
("Let's highlight upstream of AKT1"
 (:VAR MV6644 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6639 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6639 :ISA HIGHLIGHT :THEME MV6640 :PRESENT "PRESENT")
 (:VAR MV6640 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV6638 :RAW-TEXT
  "upstream")
 (:VAR MV6638 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
734: "Let's move nucleus elements to the top"

                    SOURCE-START
e16   EXPLICIT-SUGGESTION 1 "Let's move nucleus elements to the top" 10
                    END-OF-SOURCE
("Let's move nucleus elements to the top"
 (:VAR MV6654 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6646 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6646 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV6651 :THEME MV6648 :PRESENT
  "PRESENT")
 (:VAR MV6651 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT
  4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6648 :ISA ELEMENT :MODIFIER MV6647)
 (:VAR MV6647 :ISA NUCLEUS :RAW-TEXT "nucleus"))

___________________
735: "What are the common downstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common downstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common downstreams of AKT1 and  BRAF?"
 (:VAR MV6657 :ISA BE :SUBJECT MV6656 :PREDICATE MV6660 :PRESENT "PRESENT")
 (:VAR MV6656 :ISA WHAT)
 (:VAR MV6660 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV6664 :HAS-DETERMINER
  "THE" :PREDICATION MV6659 :RAW-TEXT "downstreams")
 (:VAR MV6664 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV6655 MV6663))
 (:VAR MV6655 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6663 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6659 :ISA COMMON))

___________________
736: "Are there common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e20   THERE-EXISTS  1 "Are there common upstreams of AKT1, BRAF and MAPK1" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV6676 :ISA THERE-EXISTS :VALUE MV6672 :PREDICATE MV6669)
 (:VAR MV6672 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV6677 :PREDICATION
  MV6671 :RAW-TEXT "upstreams")
 (:VAR MV6677 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6666 MV6674 MV6667))
 (:VAR MV6666 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6674 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6667 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6671 :ISA COMMON) (:VAR MV6669 :ISA SYNTACTIC-THERE))

___________________
737: "What are the common upstream regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e26   BE            1 "What are the common upstream regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6683 :ISA BE :SUBJECT MV6682 :PREDICATE MV6688 :PRESENT "PRESENT")
 (:VAR MV6682 :ISA WHAT)
 (:VAR MV6688 :ISA REGULATOR :THEME MV6691 :HAS-DETERMINER "THE" :PREDICATION
  MV6685 :CONTEXT MV6686 :RAW-TEXT "regulators")
 (:VAR MV6691 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6679 MV6680 MV6681))
 (:VAR MV6679 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6680 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6681 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6685 :ISA COMMON)
 (:VAR MV6686 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
738: "What are common downstream regulators of MMP3 and SERPINE1?"

                    SOURCE-START
e19   BE            1 "What are common downstream regulators of MMP3 and SERPINE1" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common downstream regulators of MMP3 and SERPINE1?"
 (:VAR MV6696 :ISA BE :SUBJECT MV6695 :PREDICATE MV6700 :PRESENT "PRESENT")
 (:VAR MV6695 :ISA WHAT)
 (:VAR MV6700 :ISA REGULATOR :THEME MV6703 :PREDICATION MV6697 :CONTEXT MV6698
  :RAW-TEXT "regulators")
 (:VAR MV6703 :ISA COLLECTION :RAW-TEXT "MMP3 and SERPINE1" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV6693 MV6694))
 (:VAR MV6693 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6694 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6697 :ISA COMMON)
 (:VAR MV6698 :ISA DOWNSTREAM-SEGMENT :RAW-TEXT "downstream"))

___________________
739: "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e24   BE            1 "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6710 :ISA BE :SUBJECT MV6709 :PREDICATE MV6705 :PRESENT "PRESENT")
 (:VAR MV6709 :ISA WHAT)
 (:VAR MV6705 :ISA PROTEIN-FAMILY :MOLECULE-TYPE MV6716 :PREDICATION MV6711
  :CONTEXT MV6712 :RAW-TEXT "transcriptional regulators" :NAME
  "transcriptional regulator" :UID "XFAM:PF02082")
 (:VAR MV6716 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6706 MV6707 MV6708))
 (:VAR MV6706 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6707 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6708 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6711 :ISA COMMON)
 (:VAR MV6712 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
740: "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e24   BE            1 "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
 (:VAR MV6721 :ISA BE :SUBJECT MV6720 :PREDICATE MV6723 :PRESENT "PRESENT")
 (:VAR MV6720 :ISA WHAT)
 (:VAR MV6723 :ISA MUTATION :OBJECT MV6729 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6729 :ISA COLLECTION :CONTEXT MV6719 :RAW-TEXT "PTEN, TP53 and BRAF"
  :TYPE PROTEIN :NUMBER 3 :ITEMS (MV6725 MV6718 MV6727))
 (:VAR MV6719 :ISA CANCER :UID "TS-1223")
 (:VAR MV6725 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6718 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6727 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
741: "What is the mutation frequency of TP53 in ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian cancer?"
 (:VAR MV6735 :ISA BE :SUBJECT MV6734 :PREDICATE MV6738 :PRESENT "PRESENT")
 (:VAR MV6734 :ISA WHAT)
 (:VAR MV6738 :ISA FREQUENCY :MEASURED-ITEM MV6732 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV6737 :RAW-TEXT "frequency")
 (:VAR MV6732 :ISA PROTEIN :CONTEXT MV6733 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV6733 :ISA CANCER :UID "TS-1223")
 (:VAR MV6737 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
742: "Which genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV6753 :ISA COPULAR-PREDICATION :ITEM MV6747 :VALUE MV6743 :PREDICATE
  MV6748)
 (:VAR MV6747 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV6743 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV6745 :ALTERNATIVE MV6744)
 (:VAR MV6745 :ISA CANCER :UID "TS-0591")
 (:VAR MV6744 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV6748 :ISA BE :PRESENT "PRESENT"))

___________________
743: "Which genes are mutually exclusive with CDH1 in breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 in breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 in breast cancer?"
 (:VAR MV6764 :ISA COPULAR-PREDICATION :ITEM MV6758 :VALUE MV6754 :PREDICATE
  MV6759)
 (:VAR MV6758 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV6754 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6755)
 (:VAR MV6755 :ISA PROTEIN :CONTEXT MV6756 :RAW-TEXT "CDH1" :UID "UP:P12830"
  :NAME "CADH1_HUMAN")
 (:VAR MV6756 :ISA CANCER :UID "TS-0591")
 (:VAR MV6759 :ISA BE :PRESENT "PRESENT"))

___________________
744: "What is the cellular location of akt1?"

                    SOURCE-START
e15   BE            1 "What is the cellular location of akt1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the cellular location of akt1?"
 (:VAR MV6767 :ISA BE :SUBJECT MV6766 :PREDICATE MV6773 :PRESENT "PRESENT")
 (:VAR MV6766 :ISA WHAT)
 (:VAR MV6773 :ISA QUALITY-PREDICATE :ITEM MV6765 :ATTRIBUTE MV6770)
 (:VAR MV6765 :ISA PROTEIN :RAW-TEXT "akt1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6770 :ISA LOCATION-OF :HAS-DETERMINER "THE" :MODIFIER MV6769)
 (:VAR MV6769 :ISA CELLULAR :NAME "cellular"))

___________________
745: "How does MAPK regulate BRAF?"

                    SOURCE-START
e7    REGULATE      1 "How does MAPK regulate BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK regulate BRAF?"
 (:VAR MV6777 :ISA REGULATE :MANNER MV6774 :AGENT MV6776 :OBJECT MV6778
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV6774 :ISA HOW)
 (:VAR MV6776 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV6778 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
746: "What is BRAF?"

                    SOURCE-START
e4    BE            1 "What is BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is BRAF?"
 (:VAR MV6780 :ISA BE :SUBJECT MV6779 :PREDICATE MV6781 :PRESENT "PRESENT")
 (:VAR MV6779 :ISA WHAT)
 (:VAR MV6781 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
747: "Is BRAF a member of the RAF family?"

                    SOURCE-START
e19   BE            1 "Is BRAF a member of the RAF family" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a member of the RAF family?"
 (:VAR MV6793 :ISA POLAR-QUESTION :STATEMENT
  (#<be 92997>
   (PREDICATE
    (#<member 92996>
     (SET
      (#<protein-family Raf 88467> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (RAW-TEXT "RAF") (NAME "Raf")
       (FAMILY-MEMBERS
        (#<collection #<"RAF1_HUMAN" 12179> #<"BRAF_HUMAN" 15489> #<"ARAF_HUMAN" 14429> 82066>
         (TYPE #<ref-category PROTEIN>)
         (ITEMS
          (COLLECTION
           (:MEMBERS
            ((#<protein "RAF1_HUMAN" 12179> (UID "UP:P04049")
              (NAME "RAF1_HUMAN"))
             (#<protein "BRAF_HUMAN" 15489> (UID "UP:P15056")
              (NAME "BRAF_HUMAN"))
             (#<protein "ARAF_HUMAN" 14429> (UID "UP:P10398")
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
 (:VAR MV6800 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6795 :VALUE MV6798 :PREP
  MV6797 :PREDICATE MV6796)
 (:VAR MV6795 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6798 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663")
 (:VAR MV6797 :ISA IN :WORD "in") (:VAR MV6796 :ISA BE :PRESENT "PRESENT"))

___________________
749: "What genes are in the RAF family?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What genes are in the RAF family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the RAF family?"
 (:VAR MV6811 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6802 :VALUE MV6809 :PREP
  MV6804 :PREDICATE MV6803)
 (:VAR MV6802 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6809 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME
  "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV6804 :ISA IN :WORD "in") (:VAR MV6803 :ISA BE :PRESENT "PRESENT"))

___________________
750: "What are some other names for BRAF?"

                    SOURCE-START
e15   BE            1 "What are some other names for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some other names for BRAF?"
 (:VAR MV6813 :ISA BE :SUBJECT MV6812 :PREDICATE MV6817 :PRESENT "PRESENT")
 (:VAR MV6812 :ISA WHAT)
 (:VAR MV6817 :ISA HAS-NAME :QUANTIFIER MV6814 :QUANTIFIER MV6815 :ITEM MV6820)
 (:VAR MV6814 :ISA SOME :WORD "some") (:VAR MV6815 :ISA OTHER :WORD "other")
 (:VAR MV6820 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
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
 (:VAR MV6838 :ISA SHARE :OBJECT MV6828 :PARTICIPANT MV6837 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV6828 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV6837 :ISA COLLECTION :RAW-TEXT "CXCL8, CXCL10, and IL2" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6829 MV6830 MV6831))
 (:VAR MV6829 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV6830 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV6831 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
753: "What are the paths between BRAF and AKT1?"

                    SOURCE-START
e15   BE            1 "What are the paths between BRAF and AKT1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between BRAF and AKT1?"
 (:VAR MV6842 :ISA BE :SUBJECT MV6841 :PREDICATE MV6844 :PRESENT "PRESENT")
 (:VAR MV6841 :ISA WHAT)
 (:VAR MV6844 :ISA PATH :ENDPOINTS MV6848 :HAS-DETERMINER "THE")
 (:VAR MV6848 :ISA COLLECTION :RAW-TEXT "BRAF and AKT1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6846 MV6840))
 (:VAR MV6846 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6840 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
754: "Is SMAD2 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is SMAD2 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is SMAD2 a transcription factor?"
 (:VAR MV6854 :ISA POLAR-QUESTION :STATEMENT
  (#<be 92020>
   (PREDICATE
    (#<transcription-factor 89959> (HAS-DETERMINER (#<a 110> (WORD "a")))
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
 (:VAR MV6870 :ISA BIO-ACTIVATE :AGENT MV6869 :OBJECT MV6871 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6869 :ISA PROTEIN-FAMILY :PREDICATION MV6868 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6868 :ISA ACTIVE)
 (:VAR MV6871 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV6878 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6872 :VALUE MV6876 :PREP
  MV6874 :PREDICATE MV6873)
 (:VAR MV6872 :ISA WHAT) (:VAR MV6876 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV6874 :ISA IN :WORD "in") (:VAR MV6873 :ISA BE :PRESENT "PRESENT"))

___________________
758: "Is the amount of phosphorylated ERK ever high?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Is the amount of phosphorylated ERK ever high" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated ERK ever high?"
 (:VAR MV6889 :ISA POLAR-QUESTION :STATEMENT MV6888)
 (:VAR MV6888 :ISA COPULAR-PREDICATION :ITEM MV6881 :VALUE MV6886 :PREDICATE
  MV6879)
 (:VAR MV6881 :ISA BIO-AMOUNT :MEASURED-ITEM MV6884 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV6884 :ISA PROTEIN-FAMILY :PREDICATION MV6883 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6883 :ISA PHOSPHORYLATE :SUBSTRATE MV6884 :RAW-TEXT "phosphorylated")
 (:VAR MV6886 :ISA HIGH :ADVERB MV6885) (:VAR MV6885 :ISA EVER :NAME "ever")
 (:VAR MV6879 :ISA BE))

___________________
759: "What genes are mutually exclusive with PTEN for prostate cancer?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "What genes are mutually exclusive with PTEN for prostate cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are mutually exclusive with PTEN for prostate cancer?"
 (:VAR MV6900 :ISA COPULAR-PREDICATION :ITEM MV6893 :VALUE MV6890 :PREDICATE
  MV6894)
 (:VAR MV6893 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6890 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV6891 :ALTERNATIVE MV6896)
 (:VAR MV6891 :ISA CANCER :UID "TS-1224")
 (:VAR MV6896 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6894 :ISA BE :PRESENT "PRESENT"))

___________________
760: "What signaling pathways are shared by SMAD2 and CXCL8?"

                    SOURCE-START
e17   SHARE         1 "What signaling pathways are shared by SMAD2 and CXCL8" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by SMAD2 and CXCL8?"
 (:VAR MV6910 :ISA SHARE :OBJECT MV6901 :PARTICIPANT MV6909 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV6901 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV6909 :ISA COLLECTION :RAW-TEXT "SMAD2 and CXCL8" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV6902 MV6903))
 (:VAR MV6902 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN")
 (:VAR MV6903 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
761: "What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs most frequently regulate FN1, MMP3, and SERPINE1" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
 (:VAR MV6919 :ISA REGULATE :AGENT MV6916 :OBJECT MV6921 :PRESENT "PRESENT"
  :ADVERB MV6917 :ADVERB MV6918 :RAW-TEXT "regulate")
 (:VAR MV6916 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV6921 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6912 MV6913 MV6914))
 (:VAR MV6912 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6913 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6914 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6917 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6918 :ISA FREQUENTLY :NAME "frequently"))

___________________
762: "What is the most likely cellular location of PTEN?"

                    SOURCE-START
e19   BE            1 "What is the most likely cellular location of PTEN" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of PTEN?"
 (:VAR MV6923 :ISA BE :SUBJECT MV6922 :PREDICATE MV6933 :PRESENT "PRESENT")
 (:VAR MV6922 :ISA WHAT)
 (:VAR MV6933 :ISA QUALITY-PREDICATE :ITEM MV6931 :ATTRIBUTE MV6929)
 (:VAR MV6931 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6929 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6927
  :MODIFIER MV6928)
 (:VAR MV6927 :ISA LIKELY :COMPARATIVE MV6925)
 (:VAR MV6925 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6928 :ISA CELLULAR :NAME "cellular"))

___________________
763: "Is BRAF a kinase?"

                    SOURCE-START
e8    BE            1 "Is BRAF a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a kinase?"
 (:VAR MV6938 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89948>
   (PREDICATE
    (#<kinase 89947> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
764: "Can you tell me whether BRAF is a kinase?"

                    SOURCE-START
e22   TELL          1 "Can you tell me whether BRAF is a kinase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me whether BRAF is a kinase?"
 (:VAR MV6950 :ISA POLAR-QUESTION :STATEMENT MV6941)
 (:VAR MV6941 :ISA TELL :AGENT MV6940 :THEME MV6949 :THEME MV6942 :MODAL "CAN")
 (:VAR MV6940 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV6949 :ISA WH-QUESTION :STATEMENT MV6946 :WH WHETHER)
 (:VAR MV6946 :ISA BE :SUBJECT MV6945 :PREDICATE MV6948 :MODAL "CAN")
 (:VAR MV6945 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6948 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase")
 (:VAR MV6942 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
765: "I want to know if BRAF is a kinase."

                    SOURCE-START
e21   WANT          1 "I want to know if BRAF is a kinase" 10
                    PERIOD
                    END-OF-SOURCE
("I want to know if BRAF is a kinase."
 (:VAR MV6954 :ISA WANT :AGENT MV6951 :THEME MV6964 :PRESENT "PRESENT")
 (:VAR MV6951 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6964 :ISA KNOW :AGENT MV6951 :STATEMENT MV6963)
 (:VAR MV6951 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6963 :ISA WH-QUESTION :STATEMENT MV6959 :WH IF)
 (:VAR MV6959 :ISA BE :SUBJECT MV6958 :PREDICATE MV6961 :PRESENT "PRESENT")
 (:VAR MV6958 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6961 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

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
 (:VAR MV6973 :ISA BE :SUBJECT MV6970 :PREDICATE MV6974 :PRESENT "PRESENT")
 (:VAR MV6970 :ISA TYPE :MOLECULE-TYPE MV6972 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "type")
 (:VAR MV6972 :ISA PROTEIN :RAW-TEXT "protein")
 (:VAR MV6974 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
768: "What is the activity of the BRAF protein?"

                    SOURCE-START
e17   BE            1 "What is the activity of the BRAF protein" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the activity of the BRAF protein?"
 (:VAR MV6977 :ISA BE :SUBJECT MV6976 :PREDICATE MV6979 :PRESENT "PRESENT")
 (:VAR MV6976 :ISA WHAT)
 (:VAR MV6979 :ISA BIO-ACTIVITY :PARTICIPANT MV6984 :HAS-DETERMINER "THE"
  :RAW-TEXT "activity")
 (:VAR MV6984 :ISA PROTEIN :HAS-DETERMINER "THE" :RAW-TEXT "BRAF" :UID
  "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
769: "Is BRAF a kinase or a transcription factor?"

                    SOURCE-START
e15   BE            1 "Is BRAF a kinase or a transcription factor" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a kinase or a transcription factor?"
 (:VAR MV6994 :ISA POLAR-QUESTION :STATEMENT
  (#<be 93136>
   (PREDICATE
    (#<collection #<kinase 89947> #<transcription-factor 89959> 93135>
     (RAW-TEXT "a kinase or a transcription factor")
     (TYPE #<ref-category KINASE>) (NUMBER 2)
     (ITEMS
      (COLLECTION
       (:MEMBERS
        ((#<kinase 89947> (HAS-DETERMINER (#<a 110> (WORD "a")))
          (RAW-TEXT "kinase"))
         (#<transcription-factor 89959> (HAS-DETERMINER (#<a 110>))
          (RAW-TEXT "transcription factor")))))))))))

___________________
770: "What proteins are targeted by NG25?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by NG25" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by NG25?"
 (:VAR MV7001 :ISA TARGET :OBJECT MV6997 :AGENT MV6995 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV6997 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV6995 :ISA BIO-ENTITY :NAME "NG25"))

___________________
771: "Name transcription factors shared by FN1, MMP3, and SERPINE1."

                    SOURCE-START
e20   NAME-SOMETHING  1 "Name transcription factors shared by FN1, MMP3, and SERPINE1" 15
                    PERIOD
                    END-OF-SOURCE
("Name transcription factors shared by FN1, MMP3, and SERPINE1."
 (:VAR MV7007 :ISA NAME-SOMETHING :PATIENT MV7003 :PRESENT "PRESENT")
 (:VAR MV7003 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7010 :RAW-TEXT
  "transcription factors")
 (:VAR MV7010 :ISA SHARE :OBJECT MV7003 :PARTICIPANT MV7013 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7013 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV7004 MV7005 MV7006))
 (:VAR MV7004 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV7005 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV7006 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN"))

___________________
772: "Tell me if STAT3 is a transcription factor"

                    SOURCE-START
e15   TELL          1 "Tell me if STAT3 is a transcription factor" 10
                    END-OF-SOURCE
("Tell me if STAT3 is a transcription factor"
 (:VAR MV7017 :ISA TELL :THEME MV7022 :BENEFICIARY MV7018 :PRESENT "PRESENT")
 (:VAR MV7022 :ISA WH-QUESTION :STATEMENT MV7020 :WH IF)
 (:VAR MV7020 :ISA BE :SUBJECT MV7015 :PREDICATE MV7016 :PRESENT "PRESENT")
 (:VAR MV7015 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7016 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor")
 (:VAR MV7018 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
773: "Show me signaling pathways shared by MAP3K7 and CXCL8."

                    SOURCE-START
e18   SHOW          1 "Show me signaling pathways shared by MAP3K7 and CXCL8" 14
                    PERIOD
                    END-OF-SOURCE
("Show me signaling pathways shared by MAP3K7 and CXCL8."
 (:VAR MV7026 :ISA SHOW :STATEMENT-OR-THEME MV7023 :BENEFICIARY MV7027 :PRESENT
  "PRESENT")
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
774: "Give me signaling pathways shared by MAP3K7 and CXCL8"

                    SOURCE-START
e18   GIVE          1 "Give me signaling pathways shared by MAP3K7 and CXCL8" 14
                    END-OF-SOURCE
("Give me signaling pathways shared by MAP3K7 and CXCL8"
 (:VAR MV7036 :ISA GIVE :THEME MV7033 :BENEFICIARY MV7037 :PRESENT "PRESENT")
 (:VAR MV7033 :ISA SIGNALING-PATHWAY :PREDICATION MV7038 :RAW-TEXT
  "signaling pathways")
 (:VAR MV7038 :ISA SHARE :OBJECT MV7033 :PARTICIPANT MV7041 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7041 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7034 MV7035))
 (:VAR MV7034 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV7035 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7037 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
775: "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"

                    SOURCE-START
e46   EVENT-RELATION  1 "Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"
 (:VAR MV7070 :ISA POLAR-QUESTION :STATEMENT MV7069)
 (:VAR MV7069 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7065 :EVENT MV7067)
 (:VAR MV7065 :ISA WH-QUESTION :STATEMENT MV7054 :WH IF)
 (:VAR MV7054 :ISA INCREASE :AGENT-OR-CAUSE MV7052 :MULTIPLIER MV7062
  :AFFECTED-PROCESS-OR-OBJECT MV7056 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV7052 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV7062 :ISA N-FOLD :NUMBER MV7061) (:VAR MV7061 :ISA NUMBER :VALUE 10)
 (:VAR MV7056 :ISA BIO-AMOUNT :MEASURED-ITEM MV7058 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7058 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV7067 :ISA COPULAR-PREDICATION :ITEM MV7045 :VALUE MV7050 :PREDICATE
  MV7043)
 (:VAR MV7045 :ISA BIO-AMOUNT :MEASURED-ITEM MV7048 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7048 :ISA PROTEIN-FAMILY :PREDICATION MV7047 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV7047 :ISA PHOSPHORYLATE :SUBSTRATE MV7048 :RAW-TEXT "phosphorylated")
 (:VAR MV7050 :ISA HIGH :ADVERB MV7049) (:VAR MV7049 :ISA EVER :NAME "ever")
 (:VAR MV7043 :ISA BE))

___________________
776: "Active MEK phosphorylates ERK"

                    SOURCE-START
e6    PHOSPHORYLATE 1 "Active MEK phosphorylates ERK" 5
                    END-OF-SOURCE
("Active MEK phosphorylates ERK"
 (:VAR MV7073 :ISA PHOSPHORYLATE :AGENT MV7072 :SUBSTRATE MV7074 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7072 :ISA PROTEIN-FAMILY :PREDICATION MV7071 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV7071 :ISA ACTIVE)
 (:VAR MV7074 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV7100 :ISA POLAR-QUESTION :STATEMENT MV7099)
 (:VAR MV7099 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7095 :EVENT MV7097)
 (:VAR MV7095 :ISA WH-QUESTION :STATEMENT MV7086 :WH IF)
 (:VAR MV7086 :ISA INCREASE :AGENT-OR-CAUSE MV7084 :ADVERB MV7093
  :AFFECTED-PROCESS-OR-OBJECT MV7088 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV7084 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV7093 :ISA N-FOLD :NUMBER MV7092) (:VAR MV7092 :ISA NUMBER :VALUE 10)
 (:VAR MV7088 :ISA BIO-AMOUNT :MEASURED-ITEM MV7090 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7090 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV7097 :ISA COPULAR-PREDICATION :ITEM MV7077 :VALUE MV7082 :PREDICATE
  MV7075)
 (:VAR MV7077 :ISA BIO-AMOUNT :MEASURED-ITEM MV7080 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7080 :ISA PROTEIN-FAMILY :PREDICATION MV7079 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV7079 :ISA PHOSPHORYLATE :SUBSTRATE MV7080 :RAW-TEXT "phosphorylated")
 (:VAR MV7082 :ISA HIGH :ADVERB MV7081) (:VAR MV7081 :ISA EVER :NAME "ever")
 (:VAR MV7075 :ISA BE))

___________________
778: "What are some pathways that affect BRAF?"

                    SOURCE-START
e14   BE            1 "What are some pathways that affect BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some pathways that affect BRAF?"
 (:VAR MV7102 :ISA BE :SUBJECT MV7101 :PREDICATE MV7104 :PRESENT "PRESENT")
 (:VAR MV7101 :ISA WHAT)
 (:VAR MV7104 :ISA PATHWAY :PREDICATION MV7106 :QUANTIFIER MV7103 :RAW-TEXT
  "pathways")
 (:VAR MV7106 :ISA AFFECT :AGENT MV7104 :THAT-REL T :OBJECT MV7107 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV7107 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7103 :ISA SOME :WORD "some"))

___________________
779: "What are the pathways that affect BRAF"

                    SOURCE-START
e15   BE            1 "What are the pathways that affect BRAF" 8
                    END-OF-SOURCE
("What are the pathways that affect BRAF"
 (:VAR MV7109 :ISA BE :SUBJECT MV7108 :PREDICATE MV7111 :PRESENT "PRESENT")
 (:VAR MV7108 :ISA WHAT)
 (:VAR MV7111 :ISA PATHWAY :PREDICATION MV7113 :HAS-DETERMINER "THE" :RAW-TEXT
  "pathways")
 (:VAR MV7113 :ISA AFFECT :AGENT MV7111 :THAT-REL T :OBJECT MV7114 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV7114 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
780: "What genes are regulated by miR-20b-5p, and miR-145-5p?"

                    SOURCE-START
e17   REGULATE      1 "What genes are regulated by miR-20b-5p, and miR-145-5p" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p, and miR-145-5p?"
 (:VAR MV7124 :ISA REGULATE :OBJECT MV7118 :AGENT MV7123 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV7118 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7123 :ISA COLLECTION :RAW-TEXT "miR-20b-5p, and miR-145-5p" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV7115 MV7116))
 (:VAR MV7115 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV7116 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437"))

___________________
781: "What are some genes that are regulated by ELK1?"

                    SOURCE-START
e20   BE            1 "What are some genes that are regulated by ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes that are regulated by ELK1?"
 (:VAR MV7128 :ISA BE :SUBJECT MV7127 :PREDICATE MV7130 :PRESENT "PRESENT")
 (:VAR MV7127 :ISA WHAT)
 (:VAR MV7130 :ISA GENE :PREDICATION MV7135 :QUANTIFIER MV7129 :RAW-TEXT
  "genes")
 (:VAR MV7135 :ISA REGULATE :OBJECT MV7130 :THAT-REL T :AGENT MV7126 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV7126 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7129 :ISA SOME :WORD "some"))

___________________
782: "What pathways contain CXCL8 and CXCL10?"

                    SOURCE-START
e11   CONTAIN       1 "What pathways contain CXCL8 and CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways contain CXCL8 and CXCL10?"
 (:VAR MV7141 :ISA CONTAIN :THEME MV7140 :PATIENT MV7143 :PRESENT "PRESENT")
 (:VAR MV7140 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7143 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7137 MV7138))
 (:VAR MV7137 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7138 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
783: "Remove the fact that IL10 activates STAT3 in the model"

                    SOURCE-START
e24   REMOVE        1 "Remove the fact that IL10 activates STAT3 in the model" 13
                    END-OF-SOURCE
("Remove the fact that IL10 activates STAT3 in the model"
 (:VAR MV7146 :ISA REMOVE :OBJECT MV7155 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7155 :ISA FACT :STATEMENT MV7150 :HAS-DETERMINER "THE")
 (:VAR MV7150 :ISA BIO-ACTIVATE :AGENT MV7144 :OBJECT MV7145 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7144 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7145 :ISA PROTEIN :INFO-CONTEXT MV7153 :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV7153 :ISA MODEL :HAS-DETERMINER "THE"))

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
 (:VAR MV7167 :ISA BE :SUBJECT MV7166 :PREDICATE MV7169 :PRESENT "PRESENT")
 (:VAR MV7166 :ISA WHAT)
 (:VAR MV7169 :ISA PATH :ENDPOINTS MV7173 :QUANTIFIER MV7168)
 (:VAR MV7173 :ISA COLLECTION :RAW-TEXT "BRAF and AKT1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV7171 MV7165))
 (:VAR MV7171 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7165 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV7168 :ISA SOME :WORD "some"))

___________________
786: "Does MEK1 activate ERK2"

                    SOURCE-START
e10   BIO-ACTIVATE  1 "Does MEK1 activate ERK2" 7
                    END-OF-SOURCE
("Does MEK1 activate ERK2" (:VAR MV7180 :ISA POLAR-QUESTION :STATEMENT MV7179)
 (:VAR MV7179 :ISA BIO-ACTIVATE :AGENT MV7175 :OBJECT MV7176 :RAW-TEXT
  "activate")
 (:VAR MV7175 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7176 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
787: "What drugs tagret BRAF?"

                    SOURCE-START
e6    PROTEIN       1 "What drugs tagret BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs tagret BRAF?"
 (:VAR MV7183 :ISA PROTEIN :HAS-DETERMINER "WHAT" :MODIFIER MV7182 :MODIFIER
  MV7184 :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV7182 :ISA DRUG :RAW-TEXT "drugs")
 (:VAR MV7184 :ISA BIO-ENTITY :NAME "tagret"))

___________________
788: "Which kinases are in the MAPK signalling pathway?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which kinases are in the MAPK signalling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signalling pathway?"
 (:VAR MV7193 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7187 :VALUE MV7185 :PREP
  MV7189 :PREDICATE MV7188)
 (:VAR MV7187 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7185 :ISA CELLULAR-PROCESS :HAS-DETERMINER "THE" :MODIFIER MV7191
  :RAW-TEXT "signalling pathway" :UID "GO:0007165")
 (:VAR MV7191 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV7189 :ISA IN :WORD "in") (:VAR MV7188 :ISA BE :PRESENT "PRESENT"))

___________________
789: "What drugs drugs target BRAF?"

                    SOURCE-START
e9    TARGET        1 "What drugs drugs target BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs drugs target BRAF?"
 (:VAR MV7198 :ISA TARGET :AGENT MV7200 :OBJECT MV7199 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7200 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7199 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
790: "What rgulates ELLK1?"

                    SOURCE-START
e6    BIO-ENTITY    1 "What rgulates ELLK1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What rgulates ELLK1?"
 (:VAR MV7204 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :MODIFIER MV7205 :NAME
  "ELLK1")
 (:VAR MV7205 :ISA BIO-ENTITY :NAME "rgulates"))

___________________
791: "Does STAT3 increase expression of c-fos in liver?"

                    SOURCE-START
e21   INCREASE      1 "Does STAT3 increase expression of c-fos in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase expression of c-fos in liver?"
 (:VAR MV7218 :ISA POLAR-QUESTION :STATEMENT MV7215)
 (:VAR MV7215 :ISA INCREASE :AGENT MV7206 :AFFECTED-PROCESS MV7211 :RAW-TEXT
  "increase")
 (:VAR MV7206 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7211 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV7207 :RAW-TEXT
  "expression")
 (:VAR MV7207 :ISA PROTEIN :ORGAN MV7214 :RAW-TEXT "c-fos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV7214 :ISA LIVER))

___________________
792: "Does STAT3 affect c-fos expression in liver?"

                    SOURCE-START
e17   AFFECT        1 "Does STAT3 affect c-fos expression in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect c-fos expression in liver?"
 (:VAR MV7228 :ISA POLAR-QUESTION :STATEMENT MV7226)
 (:VAR MV7226 :ISA AFFECT :AGENT MV7219 :AFFECTED-PROCESS MV7223 :RAW-TEXT
  "affect")
 (:VAR MV7219 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7223 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV7225 :OBJECT MV7220
  :RAW-TEXT "expression")
 (:VAR MV7225 :ISA LIVER)
 (:VAR MV7220 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
793: "Does STAT3 alter c-fos expression?"

                    SOURCE-START
e12   ALTER         1 "Does STAT3 alter c-fos expression" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 alter c-fos expression?"
 (:VAR MV7235 :ISA POLAR-QUESTION :STATEMENT MV7234)
 (:VAR MV7234 :ISA ALTER :AGENT MV7229 :AFFECTED-PROCESS MV7233 :RAW-TEXT
  "alter")
 (:VAR MV7229 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7233 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV7230 :RAW-TEXT
  "expression")
 (:VAR MV7230 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
794: "Is STAT3 a transcriptional regulator of c-fos?"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcriptional regulator of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcriptional regulator of c-fos?"
 (:VAR MV7243 :ISA POLAR-QUESTION :STATEMENT
  (#<be 93298>
   (PREDICATE
    (#<protein-family transcriptional regulator 93297>
     (MOLECULE-TYPE
      (#<protein "FOS_HUMAN" 88496> (RAW-TEXT "c-fos") (UID "UP:P01100")
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
 (:VAR MV7246 :ISA INHIBIT :AGENT MV7245 :OBJECT MV7247 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV7245 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7247 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
796: "STAT3 upregulates ELK1."

                    SOURCE-START
e6    UPREGULATE    1 "STAT3 upregulates ELK1" 6
                    PERIOD
                    END-OF-SOURCE
("STAT3 upregulates ELK1."
 (:VAR MV7250 :ISA UPREGULATE :AGENT MV7248 :OBJECT MV7249 :PRESENT "PRESENT"
  :RAW-TEXT "upregulates")
 (:VAR MV7248 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7249 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
797: "What does STAT3 transcribe?  "

                    SOURCE-START
e6    TRANSCRIBE    1 "What does STAT3 transcribe" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 transcribe?"
 (:VAR MV7254 :ISA TRANSCRIBE :OBJECT MV7252 :AGENT MV7251 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV7252 :ISA WHAT)
 (:VAR MV7251 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
798: "What is PI3K?"

                    SOURCE-START
e5    BE            1 "What is PI3K" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What is PI3K?"
 (:VAR MV7257 :ISA BE :SUBJECT MV7256 :PREDICATE MV7255 :PRESENT "PRESENT")
 (:VAR MV7256 :ISA WHAT)
 (:VAR MV7255 :ISA PROTEIN-FAMILY :RAW-TEXT "PI3K" :NAME "PI3-kinase" :COUNT 4
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
 (:VAR MV7259 :ISA BE :SUBJECT MV7258 :PREDICATE MV7260 :PRESENT "PRESENT")
 (:VAR MV7258 :ISA WHAT)
 (:VAR MV7260 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV7262 :ISA PHOSPHORYLATE :AGENT-OR-CAUSE MV7261 :SUBSTRATE MV7263
  :PRESENT "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7261 :ISA WHAT)
 (:VAR MV7263 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV7267 :ISA TARGET :AGENT MV7265 :OBJECT MV7268 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7265 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7268 :ISA PROTEIN-FAMILY :RAW-TEXT "AKT" :NAME "Rac" :COUNT 3
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
 (:VAR MV7271 :ISA REGULATE :AGENT-OR-CAUSE MV7270 :OBJECT MV7269 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7270 :ISA WHAT) (:VAR MV7269 :ISA BIO-ENTITY :NAME "ELLK1"))

___________________
803: "What regulates ELK1?"

                    SOURCE-START
e5    REGULATE      1 "What regulates ELK1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates ELK1?"
 (:VAR MV7274 :ISA REGULATE :AGENT-OR-CAUSE MV7273 :OBJECT MV7272 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7273 :ISA WHAT)
 (:VAR MV7272 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
804: "Does miR-20b-5pp target STAT3?"

                    SOURCE-START
e16   TARGET        1 "Does miR-20b-5pp target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5pp target STAT3?"
 (:VAR MV7285 :ISA POLAR-QUESTION :STATEMENT MV7284)
 (:VAR MV7284 :ISA TARGET :AGENT MV7283 :OBJECT MV7276 :RAW-TEXT "target")
 (:VAR MV7283 :ISA BIO-ENTITY :NAME "miR-20b-5pp")
 (:VAR MV7276 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
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
 (:VAR MV7299 :ISA TARGET :OBJECT MV7296 :AGENT MV7300 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7296 :ISA WHAT) (:VAR MV7300 :ISA BIO-ENTITY :NAME "selumitinibib"))

___________________
807: "Is ELLK1 a kinase?"

                    SOURCE-START
e9    BE            1 "Is ELLK1 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ELLK1 a kinase?"
 (:VAR MV7305 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89948>
   (PREDICATE
    (#<kinase 89947> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
808: "What regulates ELK12?"

                    SOURCE-START
e7    REGULATE      1 "What regulates ELK12" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates ELK12?"
 (:VAR MV7307 :ISA REGULATE :AGENT-OR-CAUSE MV7306 :OBJECT MV7308 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7306 :ISA WHAT)
 (:VAR MV7308 :ISA PROTEIN :VARIANT-NUMBER MV7310 :RAW-TEXT "ELK" :UID
  "UP:P54762" :NAME "EPHB1_HUMAN")
 (:VAR MV7310 :ISA NUMBER :VALUE 12))

___________________
809: "What does sleumiitibbb target?"

                    SOURCE-START
e6    TARGET        1 "What does sleumiitibbb target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does sleumiitibbb target?"
 (:VAR MV7314 :ISA TARGET :OBJECT MV7311 :AGENT MV7315 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7311 :ISA WHAT) (:VAR MV7315 :ISA BIO-ENTITY :NAME "sleumiitibbb"))

___________________
810: "What is the evidence that MEK1 phosphorylates ERK1?"

                    SOURCE-START
e18   BE            1 "What is the evidence that MEK1 phosphorylates ERK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that MEK1 phosphorylates ERK1?"
 (:VAR MV7319 :ISA BE :SUBJECT MV7318 :PREDICATE MV7324 :PRESENT "PRESENT")
 (:VAR MV7318 :ISA WHAT)
 (:VAR MV7324 :ISA EVIDENCE :STATEMENT MV7323 :HAS-DETERMINER "THE")
 (:VAR MV7323 :ISA PHOSPHORYLATE :AGENT MV7316 :SUBSTRATE MV7317 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7316 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7317 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
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
 (:VAR MV7341 :ISA BIO-ACTIVATE :AGENT MV7339 :OBJECT MV7340 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7339 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7340 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
814: "How many interactions are in the model?"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "How many interactions are in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How many interactions are in the model?"
 (:VAR MV7352 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7344 :VALUE MV7351 :PREP
  "IN" :PREDICATE MV7345)
 (:VAR MV7344 :ISA INTERACT :HAS-DETERMINER "HOW" :QUANTIFIER MV7343 :RAW-TEXT
  "interactions")
 (:VAR MV7343 :ISA MANY :WORD "many")
 (:VAR MV7351 :ISA INTERACT :INFO-CONTEXT MV7348 :HAS-DETERMINER "HOW"
  :QUANTIFIER MV7343 :RAW-TEXT "interactions")
 (:VAR MV7348 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV7343 :ISA MANY :WORD "many") (:VAR MV7345 :ISA BE :PRESENT "PRESENT"))

___________________
815: "Does tofacitinib decrease the amount of phosphorylated MAP2K2?"

                    SOURCE-START
e21   DECREASE      1 "Does tofacitinib decrease the amount of phosphorylated MAP2K2" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
 (:VAR MV7365 :ISA POLAR-QUESTION :STATEMENT MV7363)
 (:VAR MV7363 :ISA DECREASE :AGENT MV7356 :AFFECTED-PROCESS-OR-OBJECT MV7360
  :RAW-TEXT "decrease")
 (:VAR MV7356 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tofacitinib")
 (:VAR MV7360 :ISA BIO-AMOUNT :MEASURED-ITEM MV7354 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7354 :ISA PROTEIN :PREDICATION MV7362 :RAW-TEXT "MAP2K2" :UID
  "UP:P36507" :NAME "MP2K2_HUMAN")
 (:VAR MV7362 :ISA PHOSPHORYLATE :SUBSTRATE MV7354 :RAW-TEXT "phosphorylated"))

___________________
816: "What kinases does ERK1 activate?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "What kinases does ERK1 activate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does ERK1 activate?"
 (:VAR MV7370 :ISA BIO-ACTIVATE :OBJECT MV7368 :AGENT MV7366 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7368 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7366 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
817: "What kinases does MEK1 activate?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "What kinases does MEK1 activate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does MEK1 activate?"
 (:VAR MV7375 :ISA BIO-ACTIVATE :OBJECT MV7373 :AGENT MV7371 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7373 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7371 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
818: "What does ERK1 activate?"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "What does ERK1 activate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERK1 activate?"
 (:VAR MV7379 :ISA BIO-ACTIVATE :OBJECT MV7377 :AGENT MV7376 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7377 :ISA WHAT)
 (:VAR MV7376 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
819: "What does JAK1 phosphorylate?"

                    SOURCE-START
e6    PHOSPHORYLATE 1 "What does JAK1 phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does JAK1 phosphorylate?"
 (:VAR MV7383 :ISA PHOSPHORYLATE :AMINO-ACID MV7381 :AGENT MV7380 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV7381 :ISA WHAT)
 (:VAR MV7380 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
820: "What kinases does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What kinases does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does STAT3 regulate?"
 (:VAR MV7388 :ISA REGULATE :OBJECT MV7386 :AGENT MV7384 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7386 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7384 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
821: "What pathways involve SRF and what does SRF bind?"

                    SOURCE-START
e14   INVOLVE       1 "What pathways involve SRF and what does SRF bind" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF and what does SRF bind?"
 (:VAR MV7398 :ISA COLLECTION :TYPE INVOLVE :NUMBER 2 :ITEMS (MV7391 MV7397))
 (:VAR MV7391 :ISA INVOLVE :THEME MV7390 :THEME MV7392 :PRESENT "PRESENT")
 (:VAR MV7390 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7392 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV7397 :ISA BINDING :DIRECT-BINDEE MV7394 :BINDER MV7396 :PRESENT
  "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7394 :ISA WHAT)
 (:VAR MV7396 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
822: "What pathways involve SRF?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF?"
 (:VAR MV7401 :ISA INVOLVE :THEME MV7400 :THEME MV7402 :PRESENT "PRESENT")
 (:VAR MV7400 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7402 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
823: "What does SRF bind?"

                    SOURCE-START
e5    BINDING       1 "What does SRF bind" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does SRF bind?"
 (:VAR MV7406 :ISA BINDING :DIRECT-BINDEE MV7403 :BINDER MV7405 :PRESENT
  "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7403 :ISA WHAT)
 (:VAR MV7405 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV7427 :ISA POLAR-QUESTION :STATEMENT MV7426)
 (:VAR MV7426 :ISA COLLECTION :TYPE PHOSPHORYLATE :ITEMS
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
 (:VAR MV7433 :ISA POLAR-QUESTION :STATEMENT MV7432)
 (:VAR MV7432 :ISA PHOSPHORYLATE :AGENT MV7428 :SUBSTRATE MV7429 :RAW-TEXT
  "phosphorylate")
 (:VAR MV7428 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7429 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
827: "Which kinases activate MEK2?"

                    SOURCE-START
e7    BIO-ACTIVATE  1 "Which kinases activate MEK2" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases activate MEK2?"
 (:VAR MV7437 :ISA BIO-ACTIVATE :AGENT MV7436 :OBJECT MV7434 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7436 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7434 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN"))

___________________
828: "Which drugs target upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e17   TARGET        1 "Which drugs target upstreams of CXCL8 and CXCL10" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target upstreams of CXCL8 and CXCL10?"
 (:VAR MV7443 :ISA TARGET :AGENT MV7441 :AFFECTED-PROCESS MV7444 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV7441 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7444 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV7447 :RAW-TEXT
  "upstreams")
 (:VAR MV7447 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7438 MV7439))
 (:VAR MV7438 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7439 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
829: "Which drugs target CXCL8?"

                    SOURCE-START
e8    TARGET        1 "Which drugs target CXCL8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target CXCL8?"
 (:VAR MV7453 :ISA TARGET :AGENT MV7451 :OBJECT MV7449 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7451 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7449 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
830: "Which drugs target Jak3?"

                    SOURCE-START
e8    TARGET        1 "Which drugs target Jak3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target Jak3?"
 (:VAR MV7458 :ISA TARGET :AGENT MV7456 :OBJECT MV7454 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7456 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7454 :ISA PROTEIN :RAW-TEXT "Jak3" :UID "UP:P52333" :NAME
  "JAK3_HUMAN"))

___________________
831: "What drugs target transcription factors shared by CXCL8 and CXCL10?"

                    SOURCE-START
e19   TARGET        1 "What drugs target transcription factors shared by CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target transcription factors shared by CXCL8 and CXCL10?"
 (:VAR MV7465 :ISA TARGET :AGENT MV7463 :OBJECT MV7459 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7463 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7459 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7466 :RAW-TEXT
  "transcription factors")
 (:VAR MV7466 :ISA SHARE :OBJECT MV7459 :PARTICIPANT MV7469 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7469 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7460 MV7461))
 (:VAR MV7460 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7461 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
832: "What kinases does miR-20a-5p target?"

                    SOURCE-START
e9    TARGET        1 "What kinases does miR-20a-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does miR-20a-5p target?"
 (:VAR MV7476 :ISA TARGET :OBJECT MV7473 :AGENT MV7471 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7473 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7471 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075"))

___________________
833: "What transcription factors does miR-20a-5p target?"

                    SOURCE-START
e10   TARGET        1 "What transcription factors does miR-20a-5p target" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors does miR-20a-5p target?"
 (:VAR MV7482 :ISA TARGET :OBJECT MV7477 :AGENT MV7478 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7477 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7478 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075"))

___________________
834: "What kinases are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "What kinases are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV7493 :ISA COPULAR-PREDICATION :ITEM MV7487 :VALUE MV7483 :PREDICATE
  MV7488)
 (:VAR MV7487 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7483 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV7485 :ALTERNATIVE MV7484)
 (:VAR MV7485 :ISA CANCER :UID "TS-0591")
 (:VAR MV7484 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV7488 :ISA BE :PRESENT "PRESENT"))

___________________
835: "What drugs target fakeprotein?"

                    SOURCE-START
e7    TARGET        1 "What drugs target fakeprotein" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target fakeprotein?"
 (:VAR MV7497 :ISA TARGET :AGENT MV7495 :OBJECT MV7498 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7495 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7498 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
836: "Which kinases are in the FAKE signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the FAKE signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the FAKE signaling pathway?"
 (:VAR MV7509 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7501 :VALUE MV7508 :PREP
  "IN" :PREDICATE MV7502)
 (:VAR MV7501 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7508 :ISA KINASE :CONTEXT-OR-IN-PATHWAY MV7499 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "kinases")
 (:VAR MV7499 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV7505
  :RAW-TEXT "signaling pathway")
 (:VAR MV7505 :ISA BIO-ENTITY :NAME "FAKE")
 (:VAR MV7502 :ISA BE :PRESENT "PRESENT"))

___________________
837: "What are the mutations of PTEN in fictional cancer?"

                    SOURCE-START
e19   BE            1 "What are the mutations of PTEN in fictional cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in fictional cancer?"
 (:VAR MV7512 :ISA BE :SUBJECT MV7511 :PREDICATE MV7514 :PRESENT "PRESENT")
 (:VAR MV7511 :ISA WHAT)
 (:VAR MV7514 :ISA MUTATION :OBJECT MV7516 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV7516 :ISA PROTEIN :CONTEXT MV7519 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV7519 :ISA CANCER :PREDICATION MV7518) (:VAR MV7518 :ISA FICTIONAL))

___________________
838: "What are the mutations of PTEN in liver cancer?"

                    SOURCE-START
e19   BE            1 "What are the mutations of PTEN in liver cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in liver cancer?"
 (:VAR MV7523 :ISA BE :SUBJECT MV7522 :PREDICATE MV7525 :PRESENT "PRESENT")
 (:VAR MV7522 :ISA WHAT)
 (:VAR MV7525 :ISA MUTATION :OBJECT MV7527 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV7527 :ISA PROTEIN :CONTEXT MV7530 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV7530 :ISA CANCER :ORGAN MV7529) (:VAR MV7529 :ISA LIVER))

___________________
839: "Remove the fact that ELk1 transcribes FAKE in the model."

                    SOURCE-START
e23   REMOVE        1 "Remove the fact that ELk1 transcribes FAKE in the model" 12
                    PERIOD
                    END-OF-SOURCE
("Remove the fact that ELk1 transcribes FAKE in the model."
 (:VAR MV7534 :ISA REMOVE :OBJECT MV7544 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7544 :ISA FACT :STATEMENT MV7538 :HAS-DETERMINER "THE")
 (:VAR MV7538 :ISA TRANSCRIBE :AGENT MV7533 :OBJECT MV7539 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7533 :ISA PROTEIN :RAW-TEXT "ELk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7539 :ISA BIO-ENTITY :INFO-CONTEXT MV7542 :NAME "FAKE")
 (:VAR MV7542 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
840: "ELK1 transcribes FOS"

                    SOURCE-START
e5    TRANSCRIBE    1 "ELK1 transcribes FOS" 5
                    END-OF-SOURCE
("ELK1 transcribes FOS"
 (:VAR MV7546 :ISA TRANSCRIBE :AGENT MV7545 :OBJECT MV7547 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7545 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7547 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
841: "Remove the fact that ELK1 transcribes FOS in the model."

                    SOURCE-START
e23   REMOVE        1 "Remove the fact that ELK1 transcribes FOS in the model" 12
                    PERIOD
                    END-OF-SOURCE
("Remove the fact that ELK1 transcribes FOS in the model."
 (:VAR MV7549 :ISA REMOVE :OBJECT MV7559 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7559 :ISA FACT :STATEMENT MV7553 :HAS-DETERMINER "THE")
 (:VAR MV7553 :ISA TRANSCRIBE :AGENT MV7548 :OBJECT MV7554 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7548 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7554 :ISA PROTEIN :INFO-CONTEXT MV7557 :RAW-TEXT "FOS" :UID
  "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV7557 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
842: "What transcription factors are shared by CXCL8 and FAKE10?"

                    SOURCE-START
e19   SHARE         1 "What transcription factors are shared by CXCL8 and FAKE10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8 and FAKE10?"
 (:VAR MV7572 :ISA SHARE :OBJECT MV7560 :PARTICIPANT MV7571 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV7560 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7571 :ISA COLLECTION :RAW-TEXT "CXCL8 and FAKE10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7561 MV7570))
 (:VAR MV7561 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7570 :ISA BIO-ENTITY :NAME "FAKE10"))

___________________
843: "What transcription factors are shared by CXCL8 and CXCL10?"

                    SOURCE-START
e17   SHARE         1 "What transcription factors are shared by CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8 and CXCL10?"
 (:VAR MV7583 :ISA SHARE :OBJECT MV7574 :PARTICIPANT MV7582 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV7574 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7582 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7575 MV7576))
 (:VAR MV7575 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7576 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
844: "What databases do you use?"

                    SOURCE-START
e8    BIO-USE       1 "What databases do you use" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What databases do you use?"
 (:VAR MV7590 :ISA BIO-USE :OBJECT MV7586 :AGENT MV7588 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV7586 :ISA DATABASE :HAS-DETERMINER "WHAT")
 (:VAR MV7588 :ISA INTERLOCUTOR :NAME "hearer"))

___________________
845: "What is the MSA?"

                    SOURCE-START
e7    BE            1 "What is the MSA" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the MSA?"
 (:VAR MV7592 :ISA BE :SUBJECT MV7591 :PREDICATE MV7594 :PRESENT "PRESENT")
 (:VAR MV7591 :ISA WHAT)
 (:VAR MV7594 :ISA PROTEIN :HAS-DETERMINER "THE" :RAW-TEXT "MSA" :UID
  "UP:Q9FIB6" :NAME "PS12A_ARATH"))

___________________
846: "What tissues can I ask about?"

                    SOURCE-START
e11   ASK           1 "What tissues can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What tissues can I ask about?"
 (:VAR MV7603 :ISA ASK :PATIENT MV7596 :MODAL MV7597 :AGENT MV7598 :PRESENT
  "PRESENT")
 (:VAR MV7596 :ISA TISSUE :HAS-DETERMINER "WHAT") (:VAR MV7597 :ISA CAN)
 (:VAR MV7598 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
847: "What cancers can I ask about?"

                    SOURCE-START
e11   ASK           1 "What cancers can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What cancers can I ask about?"
 (:VAR MV7612 :ISA ASK :PATIENT MV7605 :MODAL MV7606 :AGENT MV7607 :PRESENT
  "PRESENT")
 (:VAR MV7605 :ISA CANCER :HAS-DETERMINER "WHAT") (:VAR MV7606 :ISA CAN)
 (:VAR MV7607 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
848: "What mechanisms can I ask about?"

                    SOURCE-START
e11   ASK           1 "What mechanisms can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What mechanisms can I ask about?"
 (:VAR MV7621 :ISA ASK :PATIENT MV7614 :MODAL MV7615 :AGENT MV7616 :PRESENT
  "PRESENT")
 (:VAR MV7614 :ISA BIO-MECHANISM :HAS-DETERMINER "WHAT") (:VAR MV7615 :ISA CAN)
 (:VAR MV7616 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
849: "What does STAT3 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does STAT3 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 regulate?"
 (:VAR MV7625 :ISA REGULATE :OBJECT MV7623 :AGENT MV7622 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7623 :ISA WHAT)
 (:VAR MV7622 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
850: "Which of these are kinases?"

                    SOURCE-START
e9    BE            1 "Which of these are kinases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are kinases?"
 (:VAR MV7629 :ISA BE :SUBJECT MV7628 :PREDICATE MV7630 :PRESENT "PRESENT")
 (:VAR MV7628 :ISA THESE :QUANTIFIER MV7626 :WORD "these")
 (:VAR MV7626 :ISA WHICH) (:VAR MV7630 :ISA KINASE :RAW-TEXT "kinases"))

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
 (:VAR MV7656 :ISA TARGET :AGENT MV7654 :OBJECT MV7652 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7654 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "microRNAs")
 (:VAR MV7652 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
855: "Which of these target SMAD2?"

                    SOURCE-START
e11   PROTEIN       1 "Which of these target SMAD2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these target SMAD2?"
 (:VAR MV7657 :ISA PROTEIN :QUANTIFIER MV7658 :HAS-DETERMINER "THESE" :MODIFIER
  MV7661 :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN")
 (:VAR MV7658 :ISA WHICH) (:VAR MV7661 :ISA TARGET-PROTEIN :RAW-TEXT "target"))

___________________
856: "Do any of these regulate IL2?"

                    SOURCE-START
e14   REGULATE      1 "Do any of these regulate IL2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do any of these regulate IL2?"
 (:VAR MV7672 :ISA POLAR-QUESTION :STATEMENT MV7670)
 (:VAR MV7670 :ISA REGULATE :AGENT-OR-CAUSE MV7668 :OBJECT MV7664 :RAW-TEXT
  "regulate")
 (:VAR MV7668 :ISA THESE :QUANTIFIER MV7666 :WORD "these")
 (:VAR MV7666 :ISA ANY :WORD "any")
 (:VAR MV7664 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
857: "What regulates STAT3?"

                    SOURCE-START
e5    REGULATE      1 "What regulates STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates STAT3?"
 (:VAR MV7675 :ISA REGULATE :AGENT-OR-CAUSE MV7674 :OBJECT MV7673 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7674 :ISA WHAT)
 (:VAR MV7673 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
858: "What pathways involve these?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve these" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve these?"
 (:VAR MV7678 :ISA INVOLVE :THEME MV7677 :THEME MV7679 :PRESENT "PRESENT")
 (:VAR MV7677 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7679 :ISA THESE :WORD "these"))

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
 (:VAR MV7689 :ISA BE :SUBJECT MV7688 :PREDICATE MV7695 :PRESENT "PRESENT")
 (:VAR MV7688 :ISA WHAT)
 (:VAR MV7695 :ISA LOCATION-OF :THEME MV7690 :PREDICATION MV7693 :MODIFIER
  MV7694)
 (:VAR MV7690 :ISA PRONOUN/PLURAL :WORD "their")
 (:VAR MV7693 :ISA LIKELY :COMPARATIVE MV7691)
 (:VAR MV7691 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV7694 :ISA CELLULAR :NAME "cellular"))

___________________
861: "Is ERK1 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is ERK1 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK1 a transcription factor?"
 (:VAR MV7700 :ISA POLAR-QUESTION :STATEMENT
  (#<be 92020>
   (PREDICATE
    (#<transcription-factor 89959> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
862: "Is it a kinase?"

                    SOURCE-START
e7    BE            1 "Is it a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK1 a transcription factor?"
 (:VAR MV7700 :ISA POLAR-QUESTION :STATEMENT
  (#<be 92020>
   (PREDICATE
    (#<transcription-factor 89959> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
863: "What is PLX-4720?"

                    SOURCE-START
e5    BE            1 "What is PLX-4720" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What is PLX-4720?"
 (:VAR MV7707 :ISA BE :SUBJECT MV7706 :PREDICATE MV7705 :PRESENT "PRESENT")
 (:VAR MV7706 :ISA WHAT)
 (:VAR MV7705 :ISA MOLECULE :RAW-TEXT "PLX-4720" :UID "PCID:24180719"))

___________________
864: "What does it target?"

                    SOURCE-START
e7    TARGET        1 "What does it target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it target?"
 (:VAR MV7712 :ISA TARGET :OBJECT MV7708 :AGENT-OR-CAUSE MV7710 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV7708 :ISA WHAT) (:VAR MV7710 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
865: "What genes does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does STAT3 regulate?"
 (:VAR MV7717 :ISA REGULATE :OBJECT MV7715 :AGENT MV7713 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7715 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7713 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
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
 (:VAR MV7725 :ISA BE :SUBJECT MV7724 :PREDICATE MV7727 :PRESENT "PRESENT")
 (:VAR MV7724 :ISA WHAT)
 (:VAR MV7727 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV7723 :HAS-DETERMINER "THE"
  :RAW-TEXT "targets")
 (:VAR MV7723 :ISA MOLECULE :RAW-TEXT "PLX-4720" :UID "PCID:24180719"))

___________________
868: "Does it target BRAF?"

                    SOURCE-START
e10   TARGET        1 "Does it target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does it target BRAF?" (:VAR MV7737 :ISA POLAR-QUESTION :STATEMENT MV7736)
 (:VAR MV7736 :ISA TARGET :AGENT-OR-CAUSE MV7732 :OBJECT MV7735 :RAW-TEXT
  "target")
 (:VAR MV7732 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV7735 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
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
 (:VAR MV7749 :ISA BIO-ACTIVATE :AGENT MV7747 :OBJECT MV7748 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7747 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV7748 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
871: "I want to find out how Jak1 activates IL2"

                    SOURCE-START
e23   WANT          1 "I want to find out how Jak1 activates IL2" 12
                    END-OF-SOURCE
("I want to find out how Jak1 activates IL2"
 (:VAR MV7755 :ISA WANT :AGENT MV7752 :THEME MV7765 :PRESENT "PRESENT")
 (:VAR MV7752 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7765 :ISA FIND-OUT :AGENT MV7752 :STATEMENT MV7762)
 (:VAR MV7752 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7762 :ISA WH-QUESTION :STATEMENT MV7761 :VAR NIL :WH HOW)
 (:VAR MV7761 :ISA BIO-ACTIVATE :AGENT MV7750 :OBJECT MV7751 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7750 :ISA PROTEIN :RAW-TEXT "Jak1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV7751 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
872: "I want to find out how ERBB3 activates JUN in SKBR3 cells."

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    PERIOD
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells."
 (:VAR MV7771 :ISA WANT :AGENT MV7768 :THEME MV7785 :PRESENT "PRESENT")
 (:VAR MV7768 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7785 :ISA FIND-OUT :AGENT MV7768 :STATEMENT MV7782)
 (:VAR MV7768 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7782 :ISA WH-QUESTION :STATEMENT MV7777 :VAR NIL :WH HOW)
 (:VAR MV7777 :ISA BIO-ACTIVATE :AGENT MV7766 :OBJECT MV7778 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7766 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME
  "ERBB3_HUMAN")
 (:VAR MV7778 :ISA PROTEIN :CELL-TYPE MV7780 :RAW-TEXT "JUN" :UID "UP:P05412"
  :NAME "JUN_HUMAN")
 (:VAR MV7780 :ISA CELL-TYPE :CELL-LINE MV7767)
 (:VAR MV7767 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
873: "Let's build a model."

                    SOURCE-START
e8    EXPLICIT-SUGGESTION 1 "Let's build a model" 7
                    PERIOD
                    END-OF-SOURCE
("Let's build a model."
 (:VAR MV7790 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV7787 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV7787 :ISA BUILD :ARTIFACT MV7789 :PRESENT "PRESENT")
 (:VAR MV7789 :ISA MODEL :HAS-DETERMINER "A"))

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
 (:VAR MV7800 :ISA REGULATE :AGENT MV7799 :OBJECT MV7797 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7799 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7797 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
876: "What positively regulates IL2?"

                    SOURCE-START
e6    UPREGULATE    1 "What positively regulates IL2" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What positively regulates IL2?"
 (:VAR MV7801 :ISA UPREGULATE :AGENT-OR-CAUSE MV7803 :OBJECT MV7802 :PRESENT
  "PRESENT" :RAW-TEXT "positively regulates")
 (:VAR MV7803 :ISA WHAT)
 (:VAR MV7802 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
877: "What can have the effect of activation on STAT3? "

                    SOURCE-START
e21   HAVE          1 "What can have the effect of activation on STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What can have the effect of activation on STAT3?"
 (:VAR MV7807 :ISA HAVE :POSSESSOR MV7805 :THING-POSSESSED MV7809 :MODAL
  MV7806)
 (:VAR MV7805 :ISA WHAT)
 (:VAR MV7809 :ISA EFFECT :OBJECT MV7804 :AFFECTED-PROCESS MV7812
  :HAS-DETERMINER "THE" :RAW-TEXT "effect")
 (:VAR MV7804 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7812 :ISA BIO-ACTIVATE :RAW-TEXT "activation") (:VAR MV7806 :ISA CAN))

___________________
878: "Are there any drugs for IL10?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs for IL10" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for IL10?"
 (:VAR MV7823 :ISA THERE-EXISTS :VALUE MV7821 :PREDICATE MV7818)
 (:VAR MV7821 :ISA DRUG :TARGET MV7816 :QUANTIFIER MV7820 :RAW-TEXT "drugs")
 (:VAR MV7816 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7820 :ISA ANY :WORD "any") (:VAR MV7818 :ISA SYNTACTIC-THERE))

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
("Is MAP3K7 a protein?"
 (:VAR MV7882 :ISA POLAR-QUESTION :STATEMENT
  (#<be 93727>
   (PREDICATE
    (#<protein 93726> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "protein"))))))

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
e12   THERE-EXISTS  1 "Are there drugs for IL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there drugs for IL10?"
 (:VAR MV7893 :ISA THERE-EXISTS :VALUE MV7891 :PREDICATE MV7889)
 (:VAR MV7891 :ISA DRUG :TARGET MV7887 :RAW-TEXT "drugs")
 (:VAR MV7887 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7889 :ISA SYNTACTIC-THERE))

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
