

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
e5    BE            1 "Are they kinases" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("Are they kinases?"
 (:VAR MV1923 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89819> (PREDICATE (#<kinase 88823> (RAW-TEXT "kinases"))))))

___________________
197: "Can you find a drug for BRAF?"

                    SOURCE-START
e17   BIO-FIND      1 "Can you find a drug for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you find a drug for BRAF?"
 (:VAR MV1933 :ISA POLAR-QUESTION :STATEMENT MV1927)
 (:VAR MV1927 :ISA BIO-FIND :AGENT MV1925 :OBJECT MV1929 :MODAL "CAN" :RAW-TEXT
  "find")
 (:VAR MV1925 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1929 :ISA DRUG :TARGET MV1931 :HAS-DETERMINER "A" :RAW-TEXT "drug")
 (:VAR MV1931 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
198: "Can you tell me all the transcription factors that are shared by elk1 and srf?"

                    SOURCE-START
e35   TELL          1 "Can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me all the transcription factors that are shared by elk1 and srf?"
 (:VAR MV1951 :ISA POLAR-QUESTION :STATEMENT MV1938)
 (:VAR MV1938 :ISA TELL :AGENT MV1937 :THEME MV1934 :BENEFICIARY MV1939 :MODAL
  "CAN")
 (:VAR MV1937 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1934 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV1949 :QUANTIFIER MV1940
  :HAS-DETERMINER "THE" :RAW-TEXT "transcription factors")
 (:VAR MV1949 :ISA SHARE :OBJECT MV1934 :THAT-REL T :PARTICIPANT MV1948 :MODAL
  "CAN" :RAW-TEXT "shared")
 (:VAR MV1948 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1935 MV1947))
 (:VAR MV1935 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1947 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1940 :ISA ALL :WORD "all")
 (:VAR MV1939 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
199: "Can you tell me what transcription factors are shared by elk1 and srf?"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf?"
 (:VAR MV1967 :ISA POLAR-QUESTION :STATEMENT MV1956)
 (:VAR MV1956 :ISA TELL :AGENT MV1955 :THEME MV1965 :THEME MV1957 :MODAL "CAN")
 (:VAR MV1955 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1965 :ISA SHARE :OBJECT MV1952 :PARTICIPANT MV1964 :MODAL "CAN"
  :RAW-TEXT "shared")
 (:VAR MV1952 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV1964 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1953 MV1963))
 (:VAR MV1953 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1963 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1957 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
200: "Do you know any drugs for BRAF?"

                    SOURCE-START
e15   KNOW          1 "Do you know any drugs for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do you know any drugs for BRAF?"
 (:VAR MV1978 :ISA POLAR-QUESTION :STATEMENT MV1977)
 (:VAR MV1977 :ISA KNOW :AGENT MV1969 :STATEMENT MV1972)
 (:VAR MV1969 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1972 :ISA DRUG :TARGET MV1974 :QUANTIFIER MV1971 :RAW-TEXT "drugs")
 (:VAR MV1974 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1971 :ISA ANY :WORD "any"))

___________________
201: "Does STAT3 regulate the JUN gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the JUN gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the JUN gene in the lung?"
 (:VAR MV1990 :ISA POLAR-QUESTION :STATEMENT MV1988)
 (:VAR MV1988 :ISA REGULATE :AGENT MV1979 :OBJECT MV1984 :RAW-TEXT "regulate")
 (:VAR MV1979 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV1984 :ISA GENE :ORGAN MV1987 :HAS-DETERMINER "THE" :EXPRESSES MV1983
  :RAW-TEXT "gene")
 (:VAR MV1987 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV1983 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN"))

___________________
202: "Does STAT3 regulate the c-fos gene in liver?"

                    SOURCE-START
e20   REGULATE      1 "Does STAT3 regulate the c-fos gene in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in liver?"
 (:VAR MV2001 :ISA POLAR-QUESTION :STATEMENT MV1999)
 (:VAR MV1999 :ISA REGULATE :AGENT MV1991 :OBJECT MV1996 :RAW-TEXT "regulate")
 (:VAR MV1991 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV1996 :ISA GENE :ORGAN MV1998 :HAS-DETERMINER "THE" :EXPRESSES MV1992
  :RAW-TEXT "gene")
 (:VAR MV1998 :ISA LIVER)
 (:VAR MV1992 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
203: "Does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e15   REGULATE      1 "Does STAT3 regulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene?"
 (:VAR MV2009 :ISA POLAR-QUESTION :STATEMENT MV2008)
 (:VAR MV2008 :ISA REGULATE :AGENT MV2002 :OBJECT MV2007 :RAW-TEXT "regulate")
 (:VAR MV2002 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2007 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2003 :RAW-TEXT
  "gene")
 (:VAR MV2003 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
204: "Does STAT3 regulate the cfos gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the cfos gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the cfos gene in the lung?"
 (:VAR MV2021 :ISA POLAR-QUESTION :STATEMENT MV2019)
 (:VAR MV2019 :ISA REGULATE :AGENT MV2010 :OBJECT MV2015 :RAW-TEXT "regulate")
 (:VAR MV2010 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2015 :ISA GENE :ORGAN MV2018 :HAS-DETERMINER "THE" :EXPRESSES MV2014
  :RAW-TEXT "gene")
 (:VAR MV2018 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV2014 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
205: "Does TP53 target MDM2?"

                    SOURCE-START
e11   TARGET        1 "Does TP53 target MDM2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TP53 target MDM2?" (:VAR MV2028 :ISA POLAR-QUESTION :STATEMENT MV2027)
 (:VAR MV2027 :ISA TARGET :AGENT MV2022 :OBJECT MV2023 :RAW-TEXT "target")
 (:VAR MV2022 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV2023 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME
  "MDM2_HUMAN"))

___________________
206: "Does miR-2000-5p target stat3"

                    SOURCE-START
e11   TARGET        1 "Does miR-2000-5p target stat3" 11
                    END-OF-SOURCE
("Does miR-2000-5p target stat3"
 (:VAR MV2035 :ISA POLAR-QUESTION :STATEMENT MV2034)
 (:VAR MV2034 :ISA TARGET :AGENT MV2029 :OBJECT MV2030 :RAW-TEXT "target")
 (:VAR MV2029 :ISA MICRO-RNA :RAW-TEXT "miR-2000-5p" :NAME "microRNA 2000-5p"
  :UID "MIMAmiR-2000-5p")
 (:VAR MV2030 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
207: "Does miR-20b-5p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-20b-5p target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5p target STAT3?"
 (:VAR MV2042 :ISA POLAR-QUESTION :STATEMENT MV2041)
 (:VAR MV2041 :ISA TARGET :AGENT MV2036 :OBJECT MV2037 :RAW-TEXT "target")
 (:VAR MV2036 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV2037 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
208: "Does miR-222-3p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-222-3p target STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-222-3p target STAT3?"
 (:VAR MV2049 :ISA POLAR-QUESTION :STATEMENT MV2048)
 (:VAR MV2048 :ISA TARGET :AGENT MV2043 :OBJECT MV2044 :RAW-TEXT "target")
 (:VAR MV2043 :ISA MICRO-RNA :RAW-TEXT "miR-222-3p" :NAME "microRNA 222-3p"
  :UID "MIMAT0000279")
 (:VAR MV2044 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
209: "Does stat3 regulate cfors in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfors in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfors in liver"
 (:VAR MV2058 :ISA POLAR-QUESTION :STATEMENT MV2056)
 (:VAR MV2056 :ISA REGULATE :AGENT MV2050 :OBJECT MV2055 :RAW-TEXT "regulate")
 (:VAR MV2050 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2055 :ISA BIO-ENTITY :ORGAN MV2054 :NAME "cfors")
 (:VAR MV2054 :ISA LIVER))

___________________
210: "Does stat3 regulate cfos in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfos in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfos in liver"
 (:VAR MV2067 :ISA POLAR-QUESTION :STATEMENT MV2065)
 (:VAR MV2065 :ISA REGULATE :AGENT MV2059 :OBJECT MV2062 :RAW-TEXT "regulate")
 (:VAR MV2059 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2062 :ISA PROTEIN :ORGAN MV2064 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2064 :ISA LIVER))

___________________
211: "Does it regulate cfos in brain"

                    SOURCE-START
e14   REGULATE      1 "Does it regulate cfos in brain" 7
                    END-OF-SOURCE
("Does it regulate cfos in brain"
 (:VAR MV2076 :ISA POLAR-QUESTION :STATEMENT MV2074)
 (:VAR MV2074 :ISA REGULATE :AGENT-OR-CAUSE MV2069 :OBJECT MV2071 :RAW-TEXT
  "regulate")
 (:VAR MV2069 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2071 :ISA PROTEIN :ORGAN MV2073 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2073 :ISA BRAIN))

___________________
212: "Does stat3 regulate cfos?"

                    SOURCE-START
e9    REGULATE      1 "Does stat3 regulate cfos" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 regulate cfos?"
 (:VAR MV2082 :ISA POLAR-QUESTION :STATEMENT MV2081)
 (:VAR MV2081 :ISA REGULATE :AGENT MV2077 :OBJECT MV2080 :RAW-TEXT "regulate")
 (:VAR MV2077 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2080 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
213: "Does stat3 regulate the cfos gene in blood cells"

                    SOURCE-START
e21   REGULATE      1 "Does stat3 regulate the cfos gene in blood cells" 11
                    END-OF-SOURCE
("Does stat3 regulate the cfos gene in blood cells"
 (:VAR MV2094 :ISA POLAR-QUESTION :STATEMENT MV2092)
 (:VAR MV2092 :ISA REGULATE :AGENT MV2083 :OBJECT MV2088 :RAW-TEXT "regulate")
 (:VAR MV2083 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2088 :ISA GENE :CELL-TYPE MV2091 :HAS-DETERMINER "THE" :EXPRESSES
  MV2087 :RAW-TEXT "gene")
 (:VAR MV2091 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV2090)
 (:VAR MV2090 :ISA BIO-ORGAN :NAME "blood" :UID "BTO:0000089")
 (:VAR MV2087 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
214: "Does the il-12 pathway utilize SGK1?"

                    SOURCE-START
e17   UTILIZE       1 "Does the il-12 pathway utilize SGK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the il-12 pathway utilize SGK1?"
 (:VAR MV2104 :ISA POLAR-QUESTION :STATEMENT MV2103)
 (:VAR MV2103 :ISA UTILIZE :PARTICIPANT MV2100 :OBJECT MV2095 :RAW-TEXT
  "utilize")
 (:VAR MV2100 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2102 :RAW-TEXT
  "pathway")
 (:VAR MV2102 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV2095 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
215: "Does the mTor pathway utilize SGK1?"

                    SOURCE-START
e16   UTILIZE       1 "Does the mTor pathway utilize SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway utilize SGK1?"
 (:VAR MV2114 :ISA POLAR-QUESTION :STATEMENT MV2113)
 (:VAR MV2113 :ISA UTILIZE :PARTICIPANT MV2111 :OBJECT MV2105 :RAW-TEXT
  "utilize")
 (:VAR MV2111 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2108 :RAW-TEXT
  "pathway")
 (:VAR MV2108 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME
  "MTOR_HUMAN")
 (:VAR MV2105 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
216: "Give me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras decreases frizzled8."
 (:VAR MV2116 :ISA GIVE :THEME MV2123 :BENEFICIARY MV2117 :PRESENT "PRESENT")
 (:VAR MV2123 :ISA EVIDENCE :STATEMENT MV2122 :HAS-DETERMINER "THE")
 (:VAR MV2122 :ISA DECREASE :AGENT MV2121 :OBJECT MV2115 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2121 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2115 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2117 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
217: "Give me the evidence that kras regulates frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras regulates frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras regulates frizzled8."
 (:VAR MV2125 :ISA GIVE :THEME MV2132 :BENEFICIARY MV2126 :PRESENT "PRESENT")
 (:VAR MV2132 :ISA EVIDENCE :STATEMENT MV2131 :HAS-DETERMINER "THE")
 (:VAR MV2131 :ISA REGULATE :AGENT MV2130 :OBJECT MV2124 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2130 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2124 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2126 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
218: "Is MEK a kinase?"

                    SOURCE-START
e8    BE            1 "Is MEK a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK a kinase?"
 (:VAR MV2137 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89953>
   (PREDICATE
    (#<kinase 89952> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
219: "Is MEK2 inhibited by Selumetinib?"

                    SOURCE-START
e11   INHIBIT       1 "Is MEK2 inhibited by Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK2 inhibited by Selumetinib?"
 (:VAR MV2145 :ISA POLAR-QUESTION :STATEMENT MV2144)
 (:VAR MV2144 :ISA INHIBIT :AGENT MV2138 :AGENT MV2142 :PAST "PAST" :RAW-TEXT
  "inhibited")
 (:VAR MV2138 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN")
 (:VAR MV2142 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
220: "Is STAT3 a transcription factor for c-fos gene?"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene?"
 (:VAR MV2154 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89967>
   (PREDICATE
    (#<transcription-factor 89966>
     (CONTROLLED-GENE
      (#<gene 89862>
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88500> (RAW-TEXT "c-fos") (UID "UP:P01100")
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
 (:VAR MV2169 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89974>
   (PREDICATE
    (#<regulator 89973> (QUANTIFIER 1)
     (THEME
      (#<gene 89863> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88500> (RAW-TEXT "c-fos") (UID "UP:P01100")
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
 (:VAR MV2177 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89983>
   (PREDICATE
    (#<inhibitor 89982>
     (PROTEIN
      (#<protein "MP2K1_HUMAN" 89977> (RAW-TEXT "MEK1") (UID "UP:Q02750")
       (NAME "MP2K1_HUMAN")))
     (HAS-DETERMINER (#<an 108> (WORD "an"))) (RAW-TEXT "inhibitor"))))))

___________________
223: "Is Vemurafenib an inhibitor for BRAF?"

                    SOURCE-START
e12   BE            1 "Is Vemurafenib an inhibitor for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Vemurafenib an inhibitor for BRAF?"
 (:VAR MV2185 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89987>
   (PREDICATE
    (#<inhibitor 89986>
     (TARGET-OR-PROTEIN
      (#<protein "BRAF_HUMAN" 88381> (RAW-TEXT "BRAF") (UID "UP:P15056")
       (NAME "BRAF_HUMAN")))
     (HAS-DETERMINER (#<an 108> (WORD "an"))) (RAW-TEXT "inhibitor"))))))

___________________
224: "Is fakeprotein a kinase"

                    SOURCE-START
e8    BE            1 "Is fakeprotein a kinase" 5
                    END-OF-SOURCE
("Is fakeprotein a kinase"
 (:VAR MV2190 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89953>
   (PREDICATE
    (#<kinase 89952> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
225: "Is hmga2 a kinase"

                    SOURCE-START
e9    BE            1 "Is hmga2 a kinase" 6
                    END-OF-SOURCE
("Is hmga2 a kinase"
 (:VAR MV2195 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89953>
   (PREDICATE
    (#<kinase 89952> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
226: "Is stat3 an apoptotic regulator?"

                    SOURCE-START
e11   BE            1 "Is stat3 an apoptotic regulator" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 an apoptotic regulator?"
 (:VAR MV2202 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89997>
   (PREDICATE
    (#<regulator 89996> (HAS-DETERMINER (#<an 108> (WORD "an")))
     (CELLULAR-PROCESS (#<apoptosis 88330> (RAW-TEXT "apoptotic")))
     (RAW-TEXT "regulator"))))))

___________________
227: "Is stat3 involved in any apoptotic pathways?"

                    SOURCE-START
e16   INVOLVE       1 "Is stat3 involved in any apoptotic pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in any apoptotic pathways?"
 (:VAR MV2214 :ISA POLAR-QUESTION :STATEMENT MV2213)
 (:VAR MV2213 :ISA INVOLVE :THEME MV2203 :CONTEXT MV2210 :PAST "PAST")
 (:VAR MV2203 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2210 :ISA PATHWAY :QUANTIFIER MV2207 :CELLULAR-PROCESS MV2208
  :RAW-TEXT "pathways")
 (:VAR MV2207 :ISA ANY :WORD "any")
 (:VAR MV2208 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
228: "Is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e14   INVOLVE       1 "Is stat3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in apoptotic regulation?"
 (:VAR MV2224 :ISA POLAR-QUESTION :STATEMENT MV2223)
 (:VAR MV2223 :ISA INVOLVE :THEME MV2215 :THEME MV2221 :PAST "PAST")
 (:VAR MV2215 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2221 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV2219 :RAW-TEXT
  "regulation")
 (:VAR MV2219 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
229: "Is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e13   INVOLVE       1 "Is stat3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in regulating apoptosis?"
 (:VAR MV2233 :ISA POLAR-QUESTION :STATEMENT MV2232)
 (:VAR MV2232 :ISA INVOLVE :THEME MV2225 :THEME MV2229 :PAST "PAST")
 (:VAR MV2225 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2229 :ISA REGULATE :AFFECTED-PROCESS MV2230 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV2230 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
230: "What proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "What proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does MEK phosphorylate?"
 (:VAR MV2238 :ISA PHOSPHORYLATE :AMINO-ACID MV2235 :AGENT MV2237 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV2235 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV2237 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV2247 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89953>
   (PREDICATE
    (#<kinase 89952> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
232: "Is there a drug that targets BRAF?"

                    SOURCE-START
e18   THERE-EXISTS  1 "Is there a drug that targets BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there a drug that targets BRAF?"
 (:VAR MV2257 :ISA THERE-EXISTS :VALUE MV2252 :PREDICATE MV2249)
 (:VAR MV2252 :ISA DRUG :PREDICATION MV2255 :HAS-DETERMINER "A" :RAW-TEXT
  "drug")
 (:VAR MV2255 :ISA TARGET :AGENT MV2252 :THAT-REL T :OBJECT MV2256 :PRESENT
  "PRESENT" :RAW-TEXT "targets")
 (:VAR MV2256 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV2249 :ISA SYNTACTIC-THERE))

___________________
233: "Is there an apoptotic pathway regulated by stat3?"

                    SOURCE-START
e20   THERE-EXISTS  1 "Is there an apoptotic pathway regulated by stat3" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway regulated by stat3?"
 (:VAR MV2268 :ISA THERE-EXISTS :VALUE MV2265 :PREDICATE MV2260)
 (:VAR MV2265 :ISA PATHWAY :PREDICATION MV2266 :HAS-DETERMINER "AN"
  :CELLULAR-PROCESS MV2263 :RAW-TEXT "pathway")
 (:VAR MV2266 :ISA REGULATE :AFFECTED-PROCESS MV2265 :AGENT MV2258 :PAST "PAST"
  :RAW-TEXT "regulated")
 (:VAR MV2258 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2263 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2260 :ISA SYNTACTIC-THERE))

___________________
234: "Is there an apoptotic pathway that is regulated by stat3?"

                    SOURCE-START
e25   THERE-EXISTS  1 "Is there an apoptotic pathway that is regulated by stat3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway that is regulated by stat3?"
 (:VAR MV2282 :ISA THERE-EXISTS :VALUE MV2277 :PREDICATE MV2272)
 (:VAR MV2277 :ISA PATHWAY :PREDICATION MV2283 :HAS-DETERMINER "AN"
  :CELLULAR-PROCESS MV2275 :RAW-TEXT "pathway")
 (:VAR MV2283 :ISA REGULATE :AFFECTED-PROCESS MV2277 :THAT-REL T :AGENT MV2270
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2270 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2275 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2272 :ISA SYNTACTIC-THERE))

___________________
235: "Let me know if there are any apoptotic genes stat3 regulates"

                    SOURCE-START
e25   LET           1 "Let me know if there are any apoptotic genes stat3 regulates" 13
                    END-OF-SOURCE
("Let me know if there are any apoptotic genes stat3 regulates"
 (:VAR MV2286 :ISA LET :COMPLEMENT MV2300 :PRESENT "PRESENT")
 (:VAR MV2300 :ISA KNOW :AGENT MV2287 :STATEMENT MV2299 :PRESENT "PRESENT")
 (:VAR MV2287 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2299 :ISA WH-QUESTION :STATEMENT MV2298 :WH IF)
 (:VAR MV2298 :ISA THERE-EXISTS :VALUE MV2296 :PREDICATE MV2292)
 (:VAR MV2296 :ISA GENE :PREDICATION MV2297 :QUANTIFIER MV2293
  :CELLULAR-PROCESS MV2294 :RAW-TEXT "genes")
 (:VAR MV2297 :ISA REGULATE :OBJECT MV2296 :AGENT MV2285 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2285 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2293 :ISA ANY :WORD "any")
 (:VAR MV2294 :ISA APOPTOSIS :RAW-TEXT "apoptotic") (:VAR MV2292 :ISA BE))

___________________
236: "Let me know which genes stat3 regulates"

                    SOURCE-START
e14   LET           1 "Let me know which genes stat3 regulates" 9
                    END-OF-SOURCE
("Let me know which genes stat3 regulates"
 (:VAR MV2302 :ISA LET :COMPLEMENT MV2308 :PRESENT "PRESENT")
 (:VAR MV2308 :ISA KNOW :AGENT MV2303 :STATEMENT MV2306 :PRESENT "PRESENT")
 (:VAR MV2303 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2306 :ISA GENE :PREDICATION MV2307 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV2307 :ISA REGULATE :OBJECT MV2306 :AGENT MV2301 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2301 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
237: "List all the genes regulated by elk1 and srf?"

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf?"
 (:VAR MV2310 :ISA LIST :THEME MV2313 :PRESENT "PRESENT")
 (:VAR MV2313 :ISA GENE :PREDICATION MV2314 :QUANTIFIER MV2311 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV2314 :ISA REGULATE :OBJECT MV2313 :AGENT MV2318 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2318 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2309 MV2317))
 (:VAR MV2309 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2317 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2311 :ISA ALL :WORD "all"))

___________________
238: "List genes regulated by elk1 and srf"

                    SOURCE-START
e12   LIST          1 "List genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("List genes regulated by elk1 and srf"
 (:VAR MV2321 :ISA LIST :THEME MV2322 :PRESENT "PRESENT")
 (:VAR MV2322 :ISA GENE :PREDICATION MV2323 :RAW-TEXT "genes")
 (:VAR MV2323 :ISA REGULATE :OBJECT MV2322 :AGENT MV2327 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2327 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2320 MV2326))
 (:VAR MV2320 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2326 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
239: "List some genes that are regulated by elk1 and srf"

                    SOURCE-START
e21   LIST          1 "List some genes that are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("List some genes that are regulated by elk1 and srf"
 (:VAR MV2330 :ISA LIST :THEME MV2332 :PRESENT "PRESENT")
 (:VAR MV2332 :ISA GENE :PREDICATION MV2340 :QUANTIFIER MV2331 :RAW-TEXT
  "genes")
 (:VAR MV2340 :ISA REGULATE :OBJECT MV2332 :THAT-REL T :AGENT MV2339 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2339 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2329 MV2338))
 (:VAR MV2329 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2338 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2331 :ISA SOME :WORD "some"))

___________________
240: "List the evidence that kras decreases frizzled8."

                    SOURCE-START
e15   LIST          1 "List the evidence that kras decreases frizzled8" 9
                    PERIOD
                    END-OF-SOURCE
("List the evidence that kras decreases frizzled8."
 (:VAR MV2343 :ISA LIST :THEME MV2349 :PRESENT "PRESENT")
 (:VAR MV2349 :ISA EVIDENCE :STATEMENT MV2348 :HAS-DETERMINER "THE")
 (:VAR MV2348 :ISA DECREASE :AGENT MV2347 :OBJECT MV2342 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2347 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2342 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
241: "Name genes regulated by elk1 and srf"

                    SOURCE-START
e14   NAME-SOMETHING  1 "Name genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("Name genes regulated by elk1 and srf"
 (:VAR MV2351 :ISA NAME-SOMETHING :PATIENT MV2354 :PRESENT "PRESENT")
 (:VAR MV2354 :ISA GENE :PREDICATION MV2355 :RAW-TEXT "genes")
 (:VAR MV2355 :ISA REGULATE :OBJECT MV2354 :AGENT MV2359 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2359 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2350 MV2358))
 (:VAR MV2350 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2358 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
242: "Of the apoptotic genes regulated by stat3, which are active in the liver?"

                    SOURCE-START
e33   COPULAR-PREDICATE 1 "Of the apoptotic genes regulated by stat3, which are active in the liver" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes regulated by stat3, which are active in the liver?"
 (:VAR MV2377 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2366 :VALUE MV2371
  :PREDICATE MV2370)
 (:VAR MV2366 :ISA GENE :PREDICATION MV2367 :HAS-DETERMINER "THE"
  :CELLULAR-PROCESS MV2364 :RAW-TEXT "genes")
 (:VAR MV2367 :ISA REGULATE :OBJECT MV2366 :AGENT MV2361 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2361 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2364 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2371 :ISA ACTIVE :ORGAN MV2374)
 (:VAR MV2374 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2370 :ISA BE :PRESENT "PRESENT"))

___________________
243: "Of the apoptotic genes stat3 regulates, which are active in the liver?"

                    SOURCE-START
e30   COPULAR-PREDICATE 1 "Of the apoptotic genes stat3 regulates, which are active in the liver" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes stat3 regulates, which are active in the liver?"
 (:VAR MV2395 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2385 :VALUE MV2389
  :PREDICATE MV2388)
 (:VAR MV2385 :ISA GENE :PREDICATION MV2386 :HAS-DETERMINER "THE"
  :CELLULAR-PROCESS MV2383 :RAW-TEXT "genes")
 (:VAR MV2386 :ISA REGULATE :OBJECT MV2385 :AGENT MV2380 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2380 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2383 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2389 :ISA ACTIVE :ORGAN MV2392)
 (:VAR MV2392 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2388 :ISA BE :PRESENT "PRESENT"))

___________________
244: "Of the genes stat3 regulates in the liver, which are apoptotic?"

                    SOURCE-START
e28   COPULAR-PREDICATE 1 "Of the genes stat3 regulates in the liver, which are apoptotic" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the genes stat3 regulates in the liver, which are apoptotic?"
 (:VAR MV2410 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2400 :VALUE MV2407
  :PREDICATE MV2406)
 (:VAR MV2400 :ISA GENE :PREDICATION MV2401 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV2401 :ISA REGULATE :OBJECT MV2400 :AGENT MV2397 :ORGAN MV2404 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2397 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2404 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2407 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2406 :ISA BE :PRESENT "PRESENT"))

___________________
245: "Of the hepatic genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Of the hepatic genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the hepatic genes stat3 regulates, which are apoptotic?"
 (:VAR MV2424 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2417 :VALUE MV2421
  :PREDICATE MV2420)
 (:VAR MV2417 :ISA GENE :PREDICATION MV2418 :HAS-DETERMINER "THE"
  :NON-CELLULAR-LOCATION MV2416 :RAW-TEXT "genes")
 (:VAR MV2418 :ISA REGULATE :OBJECT MV2417 :AGENT MV2413 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2413 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2416 :ISA LIVER) (:VAR MV2421 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2420 :ISA BE :PRESENT "PRESENT"))

___________________
246: "Of the liver genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Of the liver genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the liver genes stat3 regulates, which are apoptotic?"
 (:VAR MV2437 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2430 :VALUE MV2434
  :PREDICATE MV2433)
 (:VAR MV2430 :ISA GENE :PREDICATION MV2431 :HAS-DETERMINER "THE"
  :NON-CELLULAR-LOCATION MV2429 :RAW-TEXT "genes")
 (:VAR MV2431 :ISA REGULATE :OBJECT MV2430 :AGENT MV2426 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2426 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2429 :ISA LIVER) (:VAR MV2434 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2433 :ISA BE :PRESENT "PRESENT"))

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
 (:VAR MV2446 :ISA SHOW :STATEMENT-OR-THEME MV2449 :BENEFICIARY MV2447 :PRESENT
  "PRESENT" :ADVERB MV2445)
 (:VAR MV2449 :ISA PATHWAY :PREDICATION MV2450 :MODIFIER MV2448 :RAW-TEXT
  "pathways")
 (:VAR MV2450 :ISA INVOLVE :THEME MV2449 :THEME MV2451 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2451 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2448 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV2447 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2445 :ISA PLEASE :NAME "please"))

___________________
249: "Please show me pathways involving SRF"

                    SOURCE-START
e11   SHOW          1 "Please show me pathways involving SRF" 7
                    END-OF-SOURCE
("Please show me pathways involving SRF"
 (:VAR MV2453 :ISA SHOW :STATEMENT-OR-THEME MV2455 :BENEFICIARY MV2454 :PRESENT
  "PRESENT" :ADVERB MV2452)
 (:VAR MV2455 :ISA PATHWAY :PREDICATION MV2456 :RAW-TEXT "pathways")
 (:VAR MV2456 :ISA INVOLVE :THEME MV2455 :THEME MV2457 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2457 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2454 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2452 :ISA PLEASE :NAME "please"))

___________________
250: "MEK activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "MEK activates ERK" 4
                    END-OF-SOURCE
("MEK activates ERK"
 (:VAR MV2459 :ISA BIO-ACTIVATE :AGENT MV2458 :OBJECT MV2460 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2458 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2460 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV2461 :ISA REMOVE :OBJECT MV2468 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2468 :ISA FACT :STATEMENT MV2466 :HAS-DETERMINER "THE")
 (:VAR MV2466 :ISA BIO-ACTIVATE :AGENT MV2465 :OBJECT MV2467 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2465 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2467 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV2471 :ISA BIO-ACTIVATE :AGENT MV2470 :OBJECT MV2472 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2470 :ISA PROTEIN-FAMILY :PREDICATION MV2469 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2469 :ISA INACTIVE)
 (:VAR MV2472 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV2473 :ISA REMOVE :OBJECT MV2481 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2481 :ISA FACT :STATEMENT MV2479 :HAS-DETERMINER "THE")
 (:VAR MV2479 :ISA BIO-ACTIVATE :AGENT MV2478 :OBJECT MV2480 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV2478 :ISA PROTEIN-FAMILY :PREDICATION MV2477 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2477 :ISA INACTIVE)
 (:VAR MV2480 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV2483 :ISA SHOW :STATEMENT-OR-THEME MV2484 :PRESENT "PRESENT")
 (:VAR MV2484 :ISA PATHWAY :NON-CELLULAR-LOCATION MV2482 :RAW-TEXT "pathways")
 (:VAR MV2482 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
255: "Show me pathways involving SRF"

                    SOURCE-START
e9    SHOW          1 "Show me pathways involving SRF" 6
                    END-OF-SOURCE
("Show me pathways involving SRF"
 (:VAR MV2485 :ISA SHOW :STATEMENT-OR-THEME MV2487 :BENEFICIARY MV2486 :PRESENT
  "PRESENT")
 (:VAR MV2487 :ISA PATHWAY :PREDICATION MV2488 :RAW-TEXT "pathways")
 (:VAR MV2488 :ISA INVOLVE :THEME MV2487 :THEME MV2489 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2489 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2486 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
256: "Show me pathways with SRF in them"

                    SOURCE-START
e13   SHOW          1 "Show me pathways with SRF in them" 8
                    END-OF-SOURCE
("Show me pathways with SRF in them"
 (:VAR MV2490 :ISA SHOW :STATEMENT-OR-THEME MV2492 :BENEFICIARY MV2491 :PRESENT
  "PRESENT")
 (:VAR MV2492 :ISA PATHWAY :PATHWAYCOMPONENT MV2494 :RAW-TEXT "pathways")
 (:VAR MV2494 :ISA PROTEIN
  :CELL-LINE-OR-CELL-TYPE-OR-CELLULAR-LOCATION-OR-CONTEXT-OR-INFO-CONTEXT-OR-ORGAN-OR-PREPARATION-OR-ORGANISM-OR-IN-EQUILIBRIUM-WITH-OR-COMPLEX-OR-EQUILIBRIUM-STATE-OR-STATE-OR-IN-PATHWAY
  MV2496 :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2496 :ISA PRONOUN/PLURAL :WORD "them")
 (:VAR MV2491 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
257: "Show me pathways with SRF"

                    SOURCE-START
e8    SHOW          1 "Show me pathways with SRF" 6
                    END-OF-SOURCE
("Show me pathways with SRF"
 (:VAR MV2499 :ISA SHOW :STATEMENT-OR-THEME MV2501 :BENEFICIARY MV2500 :PRESENT
  "PRESENT")
 (:VAR MV2501 :ISA PATHWAY :PATHWAYCOMPONENT MV2503 :RAW-TEXT "pathways")
 (:VAR MV2503 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2500 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
258: "Show me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras decreases frizzled8."
 (:VAR MV2506 :ISA SHOW :STATEMENT-OR-THEME MV2513 :BENEFICIARY MV2507 :PRESENT
  "PRESENT")
 (:VAR MV2513 :ISA EVIDENCE :STATEMENT MV2512 :HAS-DETERMINER "THE")
 (:VAR MV2512 :ISA DECREASE :AGENT MV2511 :OBJECT MV2505 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2511 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2505 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2507 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
259: "Show me the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   SHOW          1 "Show me the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV2515 :ISA SHOW :STATEMENT-OR-THEME MV2526 :BENEFICIARY MV2516 :PRESENT
  "PRESENT")
 (:VAR MV2526 :ISA EVIDENCE :STATEMENT MV2521 :HAS-DETERMINER "THE")
 (:VAR MV2521 :ISA DECREASE :AGENT MV2520 :AFFECTED-PROCESS-OR-OBJECT MV2523
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV2520 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2523 :ISA BIO-AMOUNT :MEASURED-ITEM MV2514 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV2514 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2516 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
260: "Show me the evidence that kras regulates frizzled8?"

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras regulates frizzled8?"
 (:VAR MV2528 :ISA SHOW :STATEMENT-OR-THEME MV2535 :BENEFICIARY MV2529 :PRESENT
  "PRESENT")
 (:VAR MV2535 :ISA EVIDENCE :STATEMENT MV2534 :HAS-DETERMINER "THE")
 (:VAR MV2534 :ISA REGULATE :AGENT MV2533 :OBJECT MV2527 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2533 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2527 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2529 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
261: "Show transcription factors shared by elk1 and srf"

                    SOURCE-START
e13   SHOW          1 "Show transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Show transcription factors shared by elk1 and srf"
 (:VAR MV2538 :ISA SHOW :STATEMENT-OR-THEME MV2536 :PRESENT "PRESENT")
 (:VAR MV2536 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2539 :RAW-TEXT
  "transcription factors")
 (:VAR MV2539 :ISA SHARE :OBJECT MV2536 :PARTICIPANT MV2543 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV2543 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2537 MV2542))
 (:VAR MV2537 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2542 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV2553 :ISA TELL :THEME MV2565 :THEME MV2554 :PRESENT "PRESENT")
 (:VAR MV2565 :ISA REGULATE :AFFECTED-PROCESS MV2558 :AGENT MV2552 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2558 :ISA PATHWAY :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2556
  :RAW-TEXT "pathways")
 (:VAR MV2556 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2552 :ISA PROTEIN :ORGAN MV2564 :RAW-TEXT "stat3" :UID "UP:P40763"
  :NAME "STAT3_HUMAN")
 (:VAR MV2564 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2554 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
264: "Tell me what genes elk1 and srf regulate"

                    SOURCE-START
e15   TELL          1 "Tell me what genes elk1 and srf regulate" 10
                    END-OF-SOURCE
("Tell me what genes elk1 and srf regulate"
 (:VAR MV2569 :ISA TELL :THEME MV2572 :BENEFICIARY MV2570 :PRESENT "PRESENT")
 (:VAR MV2572 :ISA GENE :PREDICATION MV2575 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2575 :ISA REGULATE :OBJECT MV2572 :AGENT MV2576 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2576 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2568 MV2574))
 (:VAR MV2568 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2574 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2570 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
265: "Tell me what pathways are regulated by stat3 in the liver"

                    SOURCE-START
e24   TELL          1 "Tell me what pathways are regulated by stat3 in the liver" 13
                    END-OF-SOURCE
("Tell me what pathways are regulated by stat3 in the liver"
 (:VAR MV2578 :ISA TELL :THEME MV2588 :THEME MV2579 :PRESENT "PRESENT")
 (:VAR MV2588 :ISA REGULATE :AFFECTED-PROCESS MV2581 :AGENT MV2577 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2581 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV2577 :ISA PROTEIN :ORGAN MV2587 :RAW-TEXT "stat3" :UID "UP:P40763"
  :NAME "STAT3_HUMAN")
 (:VAR MV2587 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV2579 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
266: "What KEGG pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What KEGG pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve immune signaling?"
 (:VAR MV2594 :ISA INVOLVE :THEME MV2593 :THEME MV2596 :PRESENT "PRESENT")
 (:VAR MV2593 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV2592 :RAW-TEXT
  "pathways")
 (:VAR MV2592 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV2596 :ISA SIGNAL :MODIFIER MV2595 :RAW-TEXT "signaling")
 (:VAR MV2595 :ISA IMMUNE :NAME "immune"))

___________________
267: "What MAP kinase phosphatases are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatases are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatases are regulated by ELK1?"
 (:VAR MV2604 :ISA REGULATE :OBJECT MV2600 :AGENT MV2598 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2600 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV2597 :RAW-TEXT
  "phosphatases")
 (:VAR MV2597 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME
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
 (:VAR MV2598 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
268: "What apoptotic genes are downstream of stat3?"

                    SOURCE-START
e16   BE            1 "What apoptotic genes are downstream of stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes are downstream of stat3?"
 (:VAR MV2611 :ISA BE :SUBJECT MV2610 :PREDICATE MV2612 :PRESENT "PRESENT")
 (:VAR MV2610 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2608
  :RAW-TEXT "genes")
 (:VAR MV2608 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2612 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2606 :RAW-TEXT
  "downstream")
 (:VAR MV2606 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
269: "What apoptotic genes does stat3 regulate in the liver?"

                    SOURCE-START
e19   REGULATE      1 "What apoptotic genes does stat3 regulate in the liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate in the liver?"
 (:VAR MV2622 :ISA REGULATE :OBJECT MV2620 :AGENT MV2616 :ORGAN MV2625 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2620 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2618
  :RAW-TEXT "genes")
 (:VAR MV2618 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2616 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2625 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
270: "What apoptotic genes does stat3 regulate?"

                    SOURCE-START
e11   REGULATE      1 "What apoptotic genes does stat3 regulate" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate?"
 (:VAR MV2633 :ISA REGULATE :OBJECT MV2631 :AGENT MV2627 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2631 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2629
  :RAW-TEXT "genes")
 (:VAR MV2629 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2627 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
271: "What apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "What apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes is stat3 upstream of?"
 (:VAR MV2639 :ISA BE :SUBJECT MV2638 :PREDICATE MV2640 :PRESENT "PRESENT")
 (:VAR MV2638 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2636
  :RAW-TEXT "genes")
 (:VAR MV2636 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2640 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV2638 :MODIFIER MV2634
  :RAW-TEXT "upstream")
 (:VAR MV2638 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2636
  :RAW-TEXT "genes")
 (:VAR MV2636 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2634 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
272: "What apoptotic pathways involve stat3?"

                    SOURCE-START
e10   INVOLVE       1 "What apoptotic pathways involve stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic pathways involve stat3?"
 (:VAR MV2648 :ISA INVOLVE :THEME MV2647 :THEME MV2643 :PRESENT "PRESENT")
 (:VAR MV2647 :ISA PATHWAY :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2645
  :RAW-TEXT "pathways")
 (:VAR MV2645 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2643 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
273: "What are Selumetinib's targets?"

                    SOURCE-START
e9    BE            1 "What are Selumetinib's targets" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are Selumetinib's targets?"
 (:VAR MV2650 :ISA BE :SUBJECT MV2649 :PREDICATE MV2653 :PRESENT "PRESENT")
 (:VAR MV2649 :ISA WHAT)
 (:VAR MV2653 :ISA TARGET-PROTEIN :AGENT MV2652 :RAW-TEXT "targets")
 (:VAR MV2652 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
274: "What are some JAK1 inhibitors?"

                    SOURCE-START
e9    BE            1 "What are some JAK1 inhibitors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some JAK1 inhibitors?"
 (:VAR MV2657 :ISA BE :SUBJECT MV2656 :PREDICATE MV2659 :PRESENT "PRESENT")
 (:VAR MV2656 :ISA WHAT)
 (:VAR MV2659 :ISA INHIBITOR :QUANTIFIER MV2658 :PROTEIN MV2655 :RAW-TEXT
  "inhibitors")
 (:VAR MV2658 :ISA SOME :WORD "some")
 (:VAR MV2655 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
275: "What are some drugs that inhibit BRAF?"

                    SOURCE-START
e14   BE            1 "What are some drugs that inhibit BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs that inhibit BRAF?"
 (:VAR MV2661 :ISA BE :SUBJECT MV2660 :PREDICATE MV2663 :PRESENT "PRESENT")
 (:VAR MV2660 :ISA WHAT)
 (:VAR MV2663 :ISA DRUG :PREDICATION MV2665 :QUANTIFIER MV2662 :RAW-TEXT
  "drugs")
 (:VAR MV2665 :ISA INHIBIT :AGENT MV2663 :THAT-REL T :OBJECT MV2666 :PRESENT
  "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV2666 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV2662 :ISA SOME :WORD "some"))

___________________
276: "What are some genes in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some genes in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes in the MAPK signaling pathway?"
 (:VAR MV2669 :ISA BE :SUBJECT MV2668 :PREDICATE MV2671 :PRESENT "PRESENT")
 (:VAR MV2668 :ISA WHAT)
 (:VAR MV2671 :ISA GENE :CONTEXT MV2667 :QUANTIFIER MV2670 :RAW-TEXT "genes")
 (:VAR MV2667 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2674
  :RAW-TEXT "signaling pathway")
 (:VAR MV2674 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2670 :ISA SOME :WORD "some"))

___________________
277: "What are some proteins in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some proteins in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some proteins in the MAPK signaling pathway?"
 (:VAR MV2678 :ISA BE :SUBJECT MV2677 :PREDICATE MV2680 :PRESENT "PRESENT")
 (:VAR MV2677 :ISA WHAT)
 (:VAR MV2680 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV2676 :QUANTIFIER MV2679
  :RAW-TEXT "proteins")
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
278: "What are the members of RAS?"

                    SOURCE-START
e12   BE            1 "What are the members of RAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of RAS?"
 (:VAR MV2686 :ISA BE :SUBJECT MV2685 :PREDICATE MV2688 :PRESENT "PRESENT")
 (:VAR MV2685 :ISA WHAT)
 (:VAR MV2688 :ISA MEMBER :SET MV2690 :HAS-DETERMINER "THE")
 (:VAR MV2690 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3
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
 (:VAR MV2696 :ISA BE :SUBJECT MV2695 :PREDICATE MV2698 :PRESENT "PRESENT")
 (:VAR MV2695 :ISA WHAT)
 (:VAR MV2698 :ISA MICRO-RNA :PREDICATION MV2700 :HAS-DETERMINER "THE"
  :RAW-TEXT "miRNAS")
 (:VAR MV2700 :ISA REGULATE :AGENT MV2698 :THAT-REL T :OBJECT MV2704 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2704 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2701 MV2702 MV2692 MV2693 MV2694))
 (:VAR MV2701 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2702 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2692 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2693 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2694 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
280: "What are the regulators of MAPPK14 in bladder"

                    SOURCE-START
e19   BE            1 "What are the regulators of MAPPK14 in bladder" 10
                    END-OF-SOURCE
("What are the regulators of MAPPK14 in bladder"
 (:VAR MV2706 :ISA BE :SUBJECT MV2705 :PREDICATE MV2708 :PRESENT "PRESENT")
 (:VAR MV2705 :ISA WHAT)
 (:VAR MV2708 :ISA REGULATOR :THEME MV2714 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2714 :ISA BIO-ENTITY :ORGAN MV2713 :NAME "MAPPK14")
 (:VAR MV2713 :ISA BIO-ORGAN :NAME "bladder" :UID "BTO:0001418"))

___________________
281: "What are the regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What are the regulators of SMURF2 in liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2 in liver?"
 (:VAR MV2719 :ISA BE :SUBJECT MV2718 :PREDICATE MV2721 :PRESENT "PRESENT")
 (:VAR MV2718 :ISA WHAT)
 (:VAR MV2721 :ISA REGULATOR :THEME MV2717 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2717 :ISA PROTEIN :ORGAN MV2724 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV2724 :ISA LIVER))

___________________
282: "What are the regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What are the regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2?"
 (:VAR MV2729 :ISA BE :SUBJECT MV2728 :PREDICATE MV2731 :PRESENT "PRESENT")
 (:VAR MV2728 :ISA WHAT)
 (:VAR MV2731 :ISA REGULATOR :THEME MV2727 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2727 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
283: "What are the regulators of c-fos in lung?"

                    SOURCE-START
e18   BE            1 "What are the regulators of c-fos in lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of c-fos in lung?"
 (:VAR MV2736 :ISA BE :SUBJECT MV2735 :PREDICATE MV2738 :PRESENT "PRESENT")
 (:VAR MV2735 :ISA WHAT)
 (:VAR MV2738 :ISA REGULATOR :THEME MV2734 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2734 :ISA PROTEIN :ORGAN MV2741 :RAW-TEXT "c-fos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2741 :ISA LUNG))

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
 (:VAR MV2759 :ISA BE :SUBJECT MV2758 :PREDICATE MV2761 :PRESENT "PRESENT")
 (:VAR MV2758 :ISA WHAT)
 (:VAR MV2761 :ISA REGULATOR :THEME MV2757 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2757 :ISA PROTEIN :RAW-TEXT "mapk14" :UID "UP:Q16539" :NAME
  "MK14_HUMAN"))

___________________
286: "What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e28   COPULAR-PREDICATION 1 "What are the transcription factors in common to the SRF, HRAS, and elk1 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
 (:VAR MV2778 :ISA COPULAR-PREDICATION :ITEM MV2767 :VALUE MV2765 :PREDICATE
  MV2768)
 (:VAR MV2767 :ISA WHAT) (:VAR MV2765 :ISA IN-COMMON :THEME MV2775)
 (:VAR MV2775 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2776 :RAW-TEXT
  "genes")
 (:VAR MV2776 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV2772 MV2773 MV2766))
 (:VAR MV2772 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2773 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV2766 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2768 :ISA BE :PREDICATE MV2764 :PRESENT "PRESENT")
 (:VAR MV2764 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :RAW-TEXT
  "transcription factors"))

___________________
287: "What are the transcription factors that regulate EELK1 and SRF?"

                    SOURCE-START
e21   BE            1 "What are the transcription factors that regulate EELK1 and SRF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EELK1 and SRF?"
 (:VAR MV2781 :ISA BE :SUBJECT MV2780 :PREDICATE MV2779 :PRESENT "PRESENT")
 (:VAR MV2780 :ISA WHAT)
 (:VAR MV2779 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2784 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2784 :ISA REGULATE :AGENT MV2779 :THAT-REL T :OBJECT MV2790 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2790 :ISA COLLECTION :RAW-TEXT "EELK1 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2789 MV2788))
 (:VAR MV2789 :ISA BIO-ENTITY :NAME "EELK1")
 (:VAR MV2788 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
288: "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"

                    SOURCE-START
e30   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
 (:VAR MV2795 :ISA BE :SUBJECT MV2794 :PREDICATE MV2791 :PRESENT "PRESENT")
 (:VAR MV2794 :ISA WHAT)
 (:VAR MV2791 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2798 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2798 :ISA REGULATE :AGENT MV2791 :THAT-REL T :OBJECT MV2805 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2805 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2799 MV2800 MV2804 MV2792 MV2793))
 (:VAR MV2799 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2800 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2804 :ISA BIO-ENTITY :NAME "STAAT3")
 (:VAR MV2792 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2793 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
289: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV2811 :ISA BE :SUBJECT MV2810 :PREDICATE MV2806 :PRESENT "PRESENT")
 (:VAR MV2810 :ISA WHAT)
 (:VAR MV2806 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2814 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2814 :ISA REGULATE :AGENT MV2806 :THAT-REL T :OBJECT MV2818 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2818 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2815 MV2816 MV2807 MV2808 MV2809))
 (:VAR MV2815 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2816 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2807 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2808 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2809 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
290: "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"

                    SOURCE-START
e26   BE            1 "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
 (:VAR MV2823 :ISA BE :SUBJECT MV2822 :PREDICATE MV2827 :PRESENT "PRESENT")
 (:VAR MV2822 :ISA WHAT)
 (:VAR MV2827 :ISA REGULATOR :THEME MV2831 :HAS-DETERMINER "THE" :CONTEXT
  MV2825 :RAW-TEXT "regulators")
 (:VAR MV2831 :ISA COLLECTION :RAW-TEXT "CCND1, FOXM1, DHFR, and KLF4" :TYPE
  PROTEIN :NUMBER 4 :ITEMS (MV2819 MV2820 MV2829 MV2821))
 (:VAR MV2819 :ISA PROTEIN :RAW-TEXT "CCND1" :UID "UP:P24385" :NAME
  "CCND1_HUMAN")
 (:VAR MV2820 :ISA PROTEIN :RAW-TEXT "FOXM1" :UID "UP:Q08050" :NAME
  "FOXM1_HUMAN")
 (:VAR MV2829 :ISA PROTEIN :RAW-TEXT "DHFR" :UID "UP:P00374" :NAME "DYR_HUMAN")
 (:VAR MV2821 :ISA PROTEIN :RAW-TEXT "KLF4" :UID "UP:O43474" :NAME
  "KLF4_HUMAN")
 (:VAR MV2825 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
291: "What cell cycle genes are regulated by FOS?"

                    SOURCE-START
e14   REGULATE      1 "What cell cycle genes are regulated by FOS" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What cell cycle genes are regulated by FOS?"
 (:VAR MV2840 :ISA REGULATE :OBJECT MV2835 :AGENT MV2839 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2835 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2833
  :RAW-TEXT "genes")
 (:VAR MV2833 :ISA CELLULAR-PROCESS :RAW-TEXT "cell cycle" :UID "GO:0007049")
 (:VAR MV2839 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
292: "What does ERBB regulate?"

                    SOURCE-START
e5    REGULATE      1 "What does ERBB regulate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERBB regulate?"
 (:VAR MV2845 :ISA REGULATE :OBJECT MV2842 :AGENT MV2844 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2842 :ISA WHAT)
 (:VAR MV2844 :ISA PROTEIN :RAW-TEXT "ERBB" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
293: "What does it regulate in liver"

                    SOURCE-START
e11   REGULATE      1 "What does it regulate in liver" 7
                    END-OF-SOURCE
("What does it regulate in liver"
 (:VAR MV2849 :ISA REGULATE :OBJECT MV2846 :AGENT-OR-CAUSE MV2848 :ORGAN MV2851
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2846 :ISA WHAT) (:VAR MV2848 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2851 :ISA LIVER))

___________________
294: "What does miR-20b-5p target"

                    SOURCE-START
e7    TARGET        1 "What does miR-20b-5p target" 11
                    END-OF-SOURCE
("What does miR-20b-5p target"
 (:VAR MV2857 :ISA TARGET :OBJECT MV2854 :AGENT MV2853 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV2854 :ISA WHAT)
 (:VAR MV2853 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
295: "What does p53 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does p53 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does p53 regulate?"
 (:VAR MV2861 :ISA REGULATE :OBJECT MV2859 :AGENT MV2858 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2859 :ISA WHAT)
 (:VAR MV2858 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
296: "What does rb1 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does rb1 regulate" 6
                    END-OF-SOURCE
("What does rb1 regulate"
 (:VAR MV2865 :ISA REGULATE :OBJECT MV2863 :AGENT MV2862 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2863 :ISA WHAT)
 (:VAR MV2862 :ISA PROTEIN :RAW-TEXT "rb1" :UID "UP:P06400" :NAME "RB_HUMAN"))

___________________
297: "What does smad2 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does smad2 regulate" 6
                    END-OF-SOURCE
("What does smad2 regulate"
 (:VAR MV2869 :ISA REGULATE :OBJECT MV2867 :AGENT MV2866 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2867 :ISA WHAT)
 (:VAR MV2866 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
298: "What does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "What does stat regulate" 5
                    END-OF-SOURCE
("What does stat regulate"
 (:VAR MV2873 :ISA REGULATE :OBJECT MV2870 :AGENT MV2872 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2870 :ISA WHAT)
 (:VAR MV2872 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
299: "What downregulates fzd8?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates fzd8?"
 (:VAR MV2876 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV2875 :OBJECT MV2874 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV2875 :ISA WHAT)
 (:VAR MV2874 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
300: "What drug could I use to target pancreatic cancer?"

                    SOURCE-START
e20   BIO-USE       1 "What drug could I use to target pancreatic cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use to target pancreatic cancer?"
 (:VAR MV2890 :ISA BIO-USE :PATIENT MV2879 :MODAL MV2880 :AGENT MV2881 :THEME
  MV2889 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV2879 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV2880 :ISA COULD) (:VAR MV2881 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2889 :ISA TARGET :OBJECT MV2877 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV2877 :ISA CANCER :UID "TS-0739"))

___________________
301: "What drug should I use for pancreatic cancer?"

                    SOURCE-START
e17   BIO-USE       1 "What drug should I use for pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug should I use for pancreatic cancer?"
 (:VAR MV2902 :ISA BIO-USE :OBJECT MV2893 :MODAL MV2894 :AGENT MV2895 :DISEASE
  MV2891 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV2893 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV2894 :ISA SHOULD) (:VAR MV2895 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2891 :ISA CANCER :UID "TS-0739"))

___________________
302: "What drugs are inhibitors of GRB2?"

                    SOURCE-START
e12   BE            1 "What drugs are inhibitors of GRB2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs are inhibitors of GRB2?"
 (:VAR MV2906 :ISA BE :SUBJECT MV2905 :PREDICATE MV2907 :PRESENT "PRESENT")
 (:VAR MV2905 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2907 :ISA INHIBITOR :PROTEIN MV2903 :RAW-TEXT "inhibitors")
 (:VAR MV2903 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN"))

___________________
303: "What drugs inhibit MAP2K1?"

                    SOURCE-START
e7    INHIBIT       1 "What drugs inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs inhibit MAP2K1?"
 (:VAR MV2913 :ISA INHIBIT :AGENT MV2912 :OBJECT MV2910 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV2912 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2910 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
304: "What drugs regulate BRAF?"

                    SOURCE-START
e6    REGULATE      1 "What drugs regulate BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs regulate BRAF?"
 (:VAR MV2916 :ISA REGULATE :AGENT MV2915 :OBJECT MV2917 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2915 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2917 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
305: "What drugs target BRAF?"

                    SOURCE-START
e7    TARGET        1 "What drugs target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target BRAF?"
 (:VAR MV2921 :ISA TARGET :AGENT MV2919 :OBJECT MV2922 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV2919 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2922 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
306: "What genes are downstream of stat3?"

                    SOURCE-START
e13   BE            1 "What genes are downstream of stat3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are downstream of stat3?"
 (:VAR MV2926 :ISA BE :SUBJECT MV2925 :PREDICATE MV2927 :PRESENT "PRESENT")
 (:VAR MV2925 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2927 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2923 :RAW-TEXT
  "downstream")
 (:VAR MV2923 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
307: "What genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathway?"
 (:VAR MV2941 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2933 :VALUE MV2940 :PREP
  "IN" :PREDICATE MV2934)
 (:VAR MV2933 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2940 :ISA GENE :CONTEXT MV2931 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2931 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2937
  :RAW-TEXT "signaling pathway")
 (:VAR MV2937 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2934 :ISA BE :PRESENT "PRESENT"))

___________________
308: "What genes are in the MAPK signaling pathways?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathways?"
 (:VAR MV2953 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2945 :VALUE MV2952 :PREP
  "IN" :PREDICATE MV2946)
 (:VAR MV2945 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2952 :ISA GENE :CONTEXT MV2943 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2943 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2949
  :RAW-TEXT "signaling pathways")
 (:VAR MV2949 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2946 :ISA BE :PRESENT "PRESENT"))

___________________
309: "What genes are in the immune system pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the immune system pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the immune system pathway?"
 (:VAR MV2965 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2957 :VALUE MV2964 :PREP
  "IN" :PREDICATE MV2958)
 (:VAR MV2957 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2964 :ISA GENE :CONTEXT MV2961 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2961 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2955
  :RAW-TEXT "pathway")
 (:VAR MV2955 :ISA BIO-ORGAN :UID "UBERON:0002405")
 (:VAR MV2958 :ISA BE :PRESENT "PRESENT"))

___________________
310: "What genes are in the prolactin signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the prolactin signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the prolactin signaling pathway?"
 (:VAR MV2977 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2969 :VALUE MV2976 :PREP
  "IN" :PREDICATE MV2970)
 (:VAR MV2969 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2976 :ISA GENE :CONTEXT MV2967 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2967 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2973
  :RAW-TEXT "signaling pathway")
 (:VAR MV2973 :ISA PROTEIN :RAW-TEXT "prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN")
 (:VAR MV2970 :ISA BE :PRESENT "PRESENT"))

___________________
311: "What genes are involved in the IL-12 pathway?"

                    SOURCE-START
e18   INVOLVE       1 "What genes are involved in the IL-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the IL-12 pathway?"
 (:VAR MV2990 :ISA INVOLVE :THEME MV2982 :CONTEXT MV2987 :PRESENT "PRESENT")
 (:VAR MV2982 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2987 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2980 :RAW-TEXT
  "pathway")
 (:VAR MV2980 :ISA PROTEIN :RAW-TEXT "IL-12" :UID "NCIT:C20514" :NAME
  "NCIT:C20514"))

___________________
312: "What genes are involved in the Prolactin pathway?"

                    SOURCE-START
e16   INVOLVE       1 "What genes are involved in the Prolactin pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the Prolactin pathway?"
 (:VAR MV3001 :ISA INVOLVE :THEME MV2992 :CONTEXT MV2998 :PRESENT "PRESENT")
 (:VAR MV2992 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2998 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2997 :RAW-TEXT
  "pathway")
 (:VAR MV2997 :ISA PROTEIN :RAW-TEXT "Prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN"))

___________________
313: "What genes are involved in the il-12 pathway?"

                    SOURCE-START
e17   INVOLVE       1 "What genes are involved in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the il-12 pathway?"
 (:VAR MV3012 :ISA INVOLVE :THEME MV3004 :CONTEXT MV3009 :PRESENT "PRESENT")
 (:VAR MV3004 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3009 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3002 :RAW-TEXT
  "pathway")
 (:VAR MV3002 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
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
 (:VAR MV3023 :ISA INVOLVE :THEME MV3015 :CONTEXT MV3020 :PRESENT "PRESENT")
 (:VAR MV3015 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3020 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV3013
  :RAW-TEXT "pathway")
 (:VAR MV3013 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
315: "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"

                    SOURCE-START
e23   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p" 28
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
 (:VAR MV3036 :ISA REGULATE :OBJECT MV3028 :AGENT MV3035 :PRESENT "PRESENT"
  :SUPERLATIVE MV3030 :ADVERB MV3031 :RAW-TEXT "regulated")
 (:VAR MV3028 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3035 :ISA COLLECTION :RAW-TEXT "miR-335-5p, miR-155-5p and miR-145-5p"
  :TYPE MICRO-RNA :NUMBER 3 :ITEMS (MV3024 MV3025 MV3026))
 (:VAR MV3024 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3025 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3026 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3030 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3031 :ISA FREQUENTLY :NAME "frequently"))

___________________
316: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"

                    SOURCE-START
e26   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" 36
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
 (:VAR MV3051 :ISA REGULATE :OBJECT MV3043 :AGENT MV3050 :PRESENT "PRESENT"
  :SUPERLATIVE MV3045 :ADVERB MV3046 :RAW-TEXT "regulated")
 (:VAR MV3043 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3050 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" :TYPE MICRO-RNA :NUMBER 4
  :ITEMS (MV3038 MV3039 MV3040 MV3041))
 (:VAR MV3038 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3039 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3040 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3041 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075")
 (:VAR MV3045 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3046 :ISA FREQUENTLY :NAME "frequently"))

___________________
317: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"

                    SOURCE-START
e27   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" 37
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
 (:VAR MV3066 :ISA REGULATE :OBJECT MV3058 :AGENT MV3065 :PRESENT "PRESENT"
  :SUPERLATIVE MV3060 :ADVERB MV3061 :RAW-TEXT "regulated")
 (:VAR MV3058 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3065 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" :TYPE MICRO-RNA :NUMBER
  4 :ITEMS (MV3053 MV3054 MV3055 MV3056))
 (:VAR MV3053 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3054 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3055 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3056 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075")
 (:VAR MV3060 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3061 :ISA FREQUENTLY :NAME "frequently"))

___________________
318: "What genes are regulated by FAKEPRTN"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by FAKEPRTN" 7
                    END-OF-SOURCE
("What genes are regulated by FAKEPRTN"
 (:VAR MV3074 :ISA REGULATE :OBJECT MV3069 :AGENT MV3073 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3069 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3073 :ISA BIO-ENTITY :NAME "FAKEPRTN"))

___________________
319: "What genes are regulated by elk1 and srf?"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by elk1 and srf" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by elk1 and srf?"
 (:VAR MV3085 :ISA REGULATE :OBJECT MV3078 :AGENT MV3084 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3078 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3084 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3076 MV3083))
 (:VAR MV3076 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV3083 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
320: "What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"

                    SOURCE-START
e16   REGULATE      1 "What genes are regulated by miR-20b-5p and MIR-29B-1-5P" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
 (:VAR MV3096 :ISA REGULATE :OBJECT MV3090 :AGENT MV3095 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3090 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3095 :ISA COLLECTION :RAW-TEXT "miR-20b-5p and MIR-29B-1-5P" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV3087 MV3088))
 (:VAR MV3087 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV3088 :ISA MICRO-RNA :RAW-TEXT "MIR-29B-1-5P" :NAME
  "microRNA 29b-1-5pm" :UID "MIMAT0004514"))

___________________
321: "What genes are regulated by smda2"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by smda2" 8
                    END-OF-SOURCE
("What genes are regulated by smda2"
 (:VAR MV3106 :ISA REGULATE :OBJECT MV3099 :AGENT MV3105 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3099 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3105 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
322: "What genes are regulated by srf"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by srf" 7
                    END-OF-SOURCE
("What genes are regulated by srf"
 (:VAR MV3114 :ISA REGULATE :OBJECT MV3109 :AGENT MV3113 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3109 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3113 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
323: "What genes are regulated by stat3 and srf"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by stat3 and srf" 10
                    END-OF-SOURCE
("What genes are regulated by stat3 and srf"
 (:VAR MV3125 :ISA REGULATE :OBJECT MV3118 :AGENT MV3124 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3118 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3124 :ISA COLLECTION :RAW-TEXT "stat3 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3116 MV3123))
 (:VAR MV3116 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3123 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
324: "What genes are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What genes are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are targeted by lung cancer?"
 (:VAR MV3133 :ISA TARGET :OBJECT MV3129 :CAUSE MV3127 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3129 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3127 :ISA CANCER :UID "TS-0571"))

___________________
325: "What genes are there in the MAPK signaling pathway?"

                    SOURCE-START
e21   COPULAR-PREDICATE 1 "What genes are there in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are there in the MAPK signaling pathway?"
 (:VAR MV3147 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3137 :VALUE MV3146 :PREP
  "IN" :PREDICATE MV3138)
 (:VAR MV3137 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3146 :ISA GENE :CONTEXT MV3135 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3135 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3143
  :RAW-TEXT "signaling pathway")
 (:VAR MV3143 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3138 :ISA BE :PRESENT "PRESENT"))

___________________
326: "What genes are used in the MAPK signaling pathway?"

                    SOURCE-START
e17   BIO-USE       1 "What genes are used in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are used in the MAPK signaling pathway?"
 (:VAR MV3157 :ISA BIO-USE :OBJECT MV3151 :CONTEXT MV3149 :PRESENT "PRESENT"
  :RAW-TEXT "used")
 (:VAR MV3151 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3149 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3156
  :RAW-TEXT "signaling pathway")
 (:VAR MV3156 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3164 :ISA TARGET :OBJECT MV3161 :CAUSE MV3159 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3161 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3159 :ISA CANCER :UID "TS-0571"))

___________________
328: "What genes does miR-20b-5p target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-20b-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-20b-5p target?"
 (:VAR MV3170 :ISA TARGET :OBJECT MV3167 :AGENT MV3165 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3167 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3165 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
329: "What genes does miR-562 target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-562 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-562 target?"
 (:VAR MV3176 :ISA TARGET :OBJECT MV3173 :AGENT MV3171 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3173 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3171 :ISA MICRO-RNA :RAW-TEXT "miR-562" :NAME "microRNA 562" :UID
  "MI0003569"))

___________________
330: "What genes does smad2 upregulate?"

                    SOURCE-START
e8    UPREGULATE    1 "What genes does smad2 upregulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does smad2 upregulate?"
 (:VAR MV3181 :ISA UPREGULATE :OBJECT MV3179 :AGENT MV3177 :PRESENT "PRESENT"
  :RAW-TEXT "upregulate")
 (:VAR MV3179 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3177 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
331: "What genes does stat3 regulate in liver cells?"

                    SOURCE-START
e15   REGULATE      1 "What genes does stat3 regulate in liver cells" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver cells?"
 (:VAR MV3186 :ISA REGULATE :OBJECT MV3184 :AGENT MV3182 :CELL-TYPE MV3189
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3184 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3182 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3189 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV3188)
 (:VAR MV3188 :ISA LIVER))

___________________
332: "What genes does stat3 regulate in liver?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver?"
 (:VAR MV3195 :ISA REGULATE :OBJECT MV3193 :AGENT MV3191 :ORGAN MV3197 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3193 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3191 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3197 :ISA LIVER))

___________________
333: "What genes does stat3 regulate in lung?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in lung" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in lung?"
 (:VAR MV3203 :ISA REGULATE :OBJECT MV3201 :AGENT MV3199 :ORGAN MV3205 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3201 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3199 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3205 :ISA LUNG))

___________________
334: "What genes does stat3 regulate"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    END-OF-SOURCE
("What genes does stat3 regulate"
 (:VAR MV3211 :ISA REGULATE :OBJECT MV3209 :AGENT MV3207 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3209 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3207 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
335: "What genes in the liver does stat3 regulate?"

                    SOURCE-START
e16   REGULATE      1 "What genes in the liver does stat3 regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes in the liver does stat3 regulate?"
 (:VAR MV3219 :ISA REGULATE :OBJECT MV3214 :AGENT MV3212 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3214 :ISA GENE :ORGAN MV3217 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3217 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV3212 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
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
 (:VAR MV3231 :ISA BE :SUBJECT MV3230 :PREDICATE MV3232 :PRESENT "PRESENT")
 (:VAR MV3230 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3232 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3230 :MODIFIER MV3228
  :RAW-TEXT "upstream")
 (:VAR MV3230 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3228 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
338: "What genes regulated by FOS are kinases?"

                    SOURCE-START
e14   BE            1 "What genes regulated by FOS are kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by FOS are kinases?"
 (:VAR MV3240 :ISA BE :SUBJECT MV3236 :PREDICATE MV3241 :PRESENT "PRESENT")
 (:VAR MV3236 :ISA GENE :PREDICATION MV3237 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3237 :ISA REGULATE :OBJECT MV3236 :AGENT MV3239 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3239 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV3241 :ISA KINASE :RAW-TEXT "kinases"))

___________________
339: "What genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "What genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by stat3 are kinases?"
 (:VAR MV3248 :ISA BE :SUBJECT MV3245 :PREDICATE MV3249 :PRESENT "PRESENT")
 (:VAR MV3245 :ISA GENE :PREDICATION MV3246 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3246 :ISA REGULATE :OBJECT MV3245 :AGENT MV3243 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3243 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3249 :ISA KINASE :RAW-TEXT "kinases"))

___________________
340: "What immune pathways involve KRAS and ELK1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve KRAS and ELK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve KRAS and ELK1?"
 (:VAR MV3255 :ISA INVOLVE :THEME MV3254 :THEME MV3258 :PRESENT "PRESENT")
 (:VAR MV3254 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3253 :RAW-TEXT
  "pathways")
 (:VAR MV3253 :ISA IMMUNE :NAME "immune")
 (:VAR MV3258 :ISA COLLECTION :RAW-TEXT "KRAS and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3256 MV3251))
 (:VAR MV3256 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3251 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
341: "What immune pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "What immune pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve SRF?"
 (:VAR MV3262 :ISA INVOLVE :THEME MV3261 :THEME MV3263 :PRESENT "PRESENT")
 (:VAR MV3261 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3260 :RAW-TEXT
  "pathways")
 (:VAR MV3260 :ISA IMMUNE :NAME "immune")
 (:VAR MV3263 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
342: "What immune pathways involve kras and elk1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve kras and elk1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve kras and elk1?"
 (:VAR MV3268 :ISA INVOLVE :THEME MV3267 :THEME MV3271 :PRESENT "PRESENT")
 (:VAR MV3267 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3266 :RAW-TEXT
  "pathways")
 (:VAR MV3266 :ISA IMMUNE :NAME "immune")
 (:VAR MV3271 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3269 MV3264))
 (:VAR MV3269 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3264 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
343: "What immune pathways involve tap1 and jak1?"

                    SOURCE-START
e17   INVOLVE       1 "What immune pathways involve tap1 and jak1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve tap1 and jak1?"
 (:VAR MV3275 :ISA INVOLVE :THEME MV3274 :THEME MV3285 :PRESENT "PRESENT")
 (:VAR MV3274 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3273 :RAW-TEXT
  "pathways")
 (:VAR MV3273 :ISA IMMUNE :NAME "immune")
 (:VAR MV3285 :ISA COLLECTION :RAW-TEXT "tap1 and jak1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3283 MV3284))
 (:VAR MV3283 :ISA PROTEIN :RAW-TEXT "tap1" :UID "UP:Q03518" :NAME
  "TAP1_HUMAN")
 (:VAR MV3284 :ISA PROTEIN :RAW-TEXT "jak1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
344: "What inhibits BRAF?"

                    SOURCE-START
e4    INHIBIT       1 "What inhibits BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits BRAF?"
 (:VAR MV3287 :ISA INHIBIT :AGENT-OR-CAUSE MV3286 :OBJECT MV3288 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV3286 :ISA WHAT)
 (:VAR MV3288 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
345: "What is STAT3?"

                    SOURCE-START
e5    BE            1 "What is STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT3?"
 (:VAR MV3291 :ISA BE :SUBJECT MV3290 :PREDICATE MV3289 :PRESENT "PRESENT")
 (:VAR MV3290 :ISA WHAT)
 (:VAR MV3289 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
346: "What is STAT?"

                    SOURCE-START
e4    BE            1 "What is STAT" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT?"
 (:VAR MV3293 :ISA BE :SUBJECT MV3292 :PREDICATE MV3294 :PRESENT "PRESENT")
 (:VAR MV3292 :ISA WHAT)
 (:VAR MV3294 :ISA PROTEIN :RAW-TEXT "STAT" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
347: "What is downstream of stat3?"

                    SOURCE-START
e11   BE            1 "What is downstream of stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is downstream of stat3?"
 (:VAR MV3297 :ISA BE :SUBJECT MV3296 :PREDICATE MV3298 :PRESENT "PRESENT")
 (:VAR MV3296 :ISA WHAT)
 (:VAR MV3298 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV3295 :RAW-TEXT
  "downstream")
 (:VAR MV3295 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
348: "What is erbb?"

                    SOURCE-START
e4    BE            1 "What is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is erbb?"
 (:VAR MV3303 :ISA BE :SUBJECT MV3302 :PREDICATE MV3304 :PRESENT "PRESENT")
 (:VAR MV3302 :ISA WHAT)
 (:VAR MV3304 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
349: "What is errb?"

                    SOURCE-START
e4    BE            1 "What is errb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is errb?"
 (:VAR MV3306 :ISA BE :SUBJECT MV3305 :PREDICATE MV3307 :PRESENT "PRESENT")
 (:VAR MV3305 :ISA WHAT) (:VAR MV3307 :ISA BIO-ENTITY :NAME "errb"))

___________________
350: "What is regulated by elk1"

                    SOURCE-START
e10   REGULATE      1 "What is regulated by elk1" 7
                    END-OF-SOURCE
("What is regulated by elk1"
 (:VAR MV3313 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3309 :AGENT MV3308
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3309 :ISA WHAT)
 (:VAR MV3308 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
351: "What is the evidence that kras decreases frizzled8?"

                    SOURCE-START
e17   BE            1 "What is the evidence that kras decreases frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases frizzled8?"
 (:VAR MV3317 :ISA BE :SUBJECT MV3316 :PREDICATE MV3323 :PRESENT "PRESENT")
 (:VAR MV3316 :ISA WHAT)
 (:VAR MV3323 :ISA EVIDENCE :STATEMENT MV3322 :HAS-DETERMINER "THE")
 (:VAR MV3322 :ISA DECREASE :AGENT MV3321 :OBJECT MV3315 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV3321 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3315 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
352: "What is the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   BE            1 "What is the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV3326 :ISA BE :SUBJECT MV3325 :PREDICATE MV3336 :PRESENT "PRESENT")
 (:VAR MV3325 :ISA WHAT)
 (:VAR MV3336 :ISA EVIDENCE :STATEMENT MV3331 :HAS-DETERMINER "THE")
 (:VAR MV3331 :ISA DECREASE :AGENT MV3330 :AFFECTED-PROCESS-OR-OBJECT MV3333
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV3330 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3333 :ISA BIO-AMOUNT :MEASURED-ITEM MV3324 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV3324 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
353: "What is the target of Selumetinib?"

                    SOURCE-START
e13   BE            1 "What is the target of Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the target of Selumetinib?"
 (:VAR MV3338 :ISA BE :SUBJECT MV3337 :PREDICATE MV3340 :PRESENT "PRESENT")
 (:VAR MV3337 :ISA WHAT)
 (:VAR MV3340 :ISA TARGET-PROTEIN :AGENT MV3343 :HAS-DETERMINER "THE" :RAW-TEXT
  "target")
 (:VAR MV3343 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
354: "What kinases does smad2 regulate"

                    SOURCE-START
e8    REGULATE      1 "What kinases does smad2 regulate" 7
                    END-OF-SOURCE
("What kinases does smad2 regulate"
 (:VAR MV3349 :ISA REGULATE :OBJECT MV3347 :AGENT MV3345 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3347 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV3345 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
355: "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e23   REGULATE      1 "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3357 :ISA REGULATE :AGENT MV3354 :OBJECT MV3361 :PRESENT "PRESENT"
  :ADVERB MV3355 :ADVERB MV3356 :RAW-TEXT "regulate")
 (:VAR MV3354 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3361 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3358 MV3359 MV3350 MV3351 MV3352))
 (:VAR MV3358 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV3359 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3350 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3351 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV3352 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN")
 (:VAR MV3355 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3356 :ISA FREQUENTLY :NAME "frequently"))

___________________
356: "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3367 :ISA REGULATE :AGENT MV3366 :OBJECT MV3371 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3366 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3371 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3368 MV3369 MV3362 MV3363 MV3364))
 (:VAR MV3368 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV3369 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3362 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3363 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV3364 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
357: "What micrornas are regulated by p53?"

                    SOURCE-START
e12   REGULATE      1 "What micrornas are regulated by p53" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What micrornas are regulated by p53?"
 (:VAR MV3378 :ISA REGULATE :OBJECT MV3374 :AGENT MV3372 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3374 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3372 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
358: "What micrornas regulate genes in the mapk signaling pathways"

                    SOURCE-START
e17   REGULATE      1 "What micrornas regulate genes in the mapk signaling pathways" 10
                    END-OF-SOURCE
("What micrornas regulate genes in the mapk signaling pathways"
 (:VAR MV3383 :ISA REGULATE :AGENT MV3382 :OBJECT MV3384 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3382 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3384 :ISA GENE :CONTEXT MV3380 :RAW-TEXT "genes")
 (:VAR MV3380 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3387
  :RAW-TEXT "signaling pathways")
 (:VAR MV3387 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
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
 (:VAR MV3390 :ISA INVOLVE :THEME MV3392 :THEME MV3391 :PRESENT "PRESENT")
 (:VAR MV3392 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :NAME "pahtways")
 (:VAR MV3391 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
360: "What pathways are common to STAT3 and SRF?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What pathways are common to STAT3 and SRF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are common to STAT3 and SRF?"
 (:VAR MV3403 :ISA COPULAR-PREDICATION :ITEM MV3395 :VALUE MV3397 :PREDICATE
  MV3396)
 (:VAR MV3395 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3397 :ISA COMMON :THEME MV3401)
 (:VAR MV3401 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3393 MV3400))
 (:VAR MV3393 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3400 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3396 :ISA BE :PRESENT "PRESENT"))

___________________
361: "What pathways involve cfos?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve cfos" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve cfos?"
 (:VAR MV3406 :ISA INVOLVE :THEME MV3405 :THEME MV3407 :PRESENT "PRESENT")
 (:VAR MV3405 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3407 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
362: "What pathways involve kras and elk1?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve kras and elk1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve kras and elk1?"
 (:VAR MV3411 :ISA INVOLVE :THEME MV3410 :THEME MV3414 :PRESENT "PRESENT")
 (:VAR MV3410 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3414 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3412 MV3408))
 (:VAR MV3412 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3408 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
363: "What pathways involve the SRF transcription factor?"

                    SOURCE-START
e12   INVOLVE       1 "What pathways involve the SRF transcription factor" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the SRF transcription factor?"
 (:VAR MV3418 :ISA INVOLVE :THEME MV3417 :THEME MV3415 :PRESENT "PRESENT")
 (:VAR MV3417 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3415 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :MODIFIER MV3420
  :RAW-TEXT "transcription factor")
 (:VAR MV3420 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV3441 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3432 :VALUE MV3439 :PREP
  MV3434 :PREDICATE MV3433)
 (:VAR MV3432 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3439 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3434 :ISA IN :WORD "in") (:VAR MV3433 :ISA BE :PRESENT "PRESENT"))

___________________
366: "What proteins are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by lung cancer?"
 (:VAR MV3448 :ISA TARGET :OBJECT MV3444 :CAUSE MV3442 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3444 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3442 :ISA CANCER :UID "TS-0571"))

___________________
367: "What proteins does PLX-4720 target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does PLX-4720 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does PLX-4720 target?"
 (:VAR MV3455 :ISA TARGET :OBJECT MV3452 :AGENT MV3450 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3452 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3450 :ISA MOLECULE :RAW-TEXT "PLX-4720" :UID "PCID:24180719"))

___________________
368: "What proteins does lung cancer target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does lung cancer target" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does lung cancer target?"
 (:VAR MV3461 :ISA TARGET :OBJECT MV3458 :CAUSE MV3456 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3458 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3456 :ISA CANCER :UID "TS-0571"))

___________________
369: "What proteins does vemurafenib target?"

                    SOURCE-START
e8    TARGET        1 "What proteins does vemurafenib target" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does vemurafenib target?"
 (:VAR MV3467 :ISA TARGET :OBJECT MV3463 :AGENT MV3465 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3463 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3465 :ISA DRUG :RAW-TEXT "vemurafenib" :NAME "vemurafenib"))

___________________
370: "What proteins might lead to the development of lung cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of lung cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins might lead to the development of lung cancer?"
 (:VAR MV3472 :ISA LEAD :AGENT MV3470 :THEME MV3475 :MODAL MV3471 :RAW-TEXT
  "lead")
 (:VAR MV3470 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3475 :ISA DEVELOPMENT :DISEASE MV3468 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV3468 :ISA CANCER :UID "TS-0571") (:VAR MV3471 :ISA MIGHT))

___________________
371: "What proteins might lead to the development of pancreatic cancer."

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE
("What proteins might lead to the development of pancreatic cancer."
 (:VAR MV3483 :ISA LEAD :AGENT MV3481 :THEME MV3486 :MODAL MV3482 :RAW-TEXT
  "lead")
 (:VAR MV3481 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3486 :ISA DEVELOPMENT :DISEASE MV3479 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV3479 :ISA CANCER :UID "TS-0739") (:VAR MV3482 :ISA MIGHT))

___________________
372: "What reactome pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What reactome pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune signaling?"
 (:VAR MV3493 :ISA INVOLVE :THEME MV3492 :THEME MV3495 :PRESENT "PRESENT")
 (:VAR MV3492 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3491 :RAW-TEXT
  "pathways")
 (:VAR MV3491 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV3495 :ISA SIGNAL :MODIFIER MV3494 :RAW-TEXT "signaling")
 (:VAR MV3494 :ISA IMMUNE :NAME "immune"))

___________________
373: "What regulates HGF?"

                    SOURCE-START
e4    REGULATE      1 "What regulates HGF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates HGF?"
 (:VAR MV3497 :ISA REGULATE :AGENT-OR-CAUSE MV3496 :OBJECT MV3498 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3496 :ISA WHAT)
 (:VAR MV3498 :ISA PROTEIN :RAW-TEXT "HGF" :UID "UP:P14210" :NAME "HGF_HUMAN"))

___________________
374: "What regulates SMURF2?"

                    SOURCE-START
e5    REGULATE      1 "What regulates SMURF2" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates SMURF2?"
 (:VAR MV3501 :ISA REGULATE :AGENT-OR-CAUSE MV3500 :OBJECT MV3499 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3500 :ISA WHAT)
 (:VAR MV3499 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
375: "What regulates smurf2 in liver"

                    SOURCE-START
e10   REGULATE      1 "What regulates smurf2 in liver" 7
                    END-OF-SOURCE
("What regulates smurf2 in liver"
 (:VAR MV3504 :ISA REGULATE :AGENT-OR-CAUSE MV3503 :OBJECT MV3502 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3503 :ISA WHAT)
 (:VAR MV3502 :ISA PROTEIN :ORGAN MV3506 :RAW-TEXT "smurf2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3506 :ISA LIVER))

___________________
376: "What signaling pathways are shared by RELA and ELK1?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by RELA and ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by RELA and ELK1?"
 (:VAR MV3517 :ISA SHARE :OBJECT MV3508 :PARTICIPANT MV3516 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3508 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3516 :ISA COLLECTION :RAW-TEXT "RELA and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3514 MV3509))
 (:VAR MV3514 :ISA PROTEIN :RAW-TEXT "RELA" :UID "UP:Q04206" :NAME
  "TF65_HUMAN")
 (:VAR MV3509 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
377: "What signaling pathways are shared by STAT3 and SRF?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by STAT3 and SRF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3 and SRF?"
 (:VAR MV3528 :ISA SHARE :OBJECT MV3519 :PARTICIPANT MV3527 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3519 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3527 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3520 MV3526))
 (:VAR MV3520 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3526 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
378: "What signaling pathways are shared by STAT3, SOCS3 and SRF?"

                    SOURCE-START
e19   SHARE         1 "What signaling pathways are shared by STAT3, SOCS3 and SRF" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
 (:VAR MV3540 :ISA SHARE :OBJECT MV3530 :PARTICIPANT MV3539 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3530 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3539 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3 and SRF" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3531 MV3532 MV3538))
 (:VAR MV3531 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3532 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3538 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV3551 :ISA BIO-PRODUCE :AGENT MV3548 :OBJECT MV3549 :PRESENT "PRESENT"
  :RAW-TEXT "produces")
 (:VAR MV3548 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV3549 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
381: "What transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factor transcribes SMURF2?"
 (:VAR MV3555 :ISA TRANSCRIBE :AGENT MV3552 :OBJECT MV3553 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV3552 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV3553 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
382: "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e31   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3571 :ISA COPULAR-PREDICATION :ITEM MV3556 :VALUE MV3563 :PREDICATE
  MV3562)
 (:VAR MV3556 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3563 :ISA COMMON :THEME MV3568)
 (:VAR MV3568 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3569 :RAW-TEXT
  "genes")
 (:VAR MV3569 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3557 MV3558 MV3566 MV3559 MV3560))
 (:VAR MV3557 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3558 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3566 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3559 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3560 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3562 :ISA BE :PRESENT "PRESENT"))

___________________
383: "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e26   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3585 :ISA COPULAR-PREDICATION :ITEM MV3572 :VALUE MV3578 :PREDICATE
  MV3577)
 (:VAR MV3572 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3578 :ISA COMMON :THEME MV3582)
 (:VAR MV3582 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3583 :RAW-TEXT
  "genes")
 (:VAR MV3583 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3573 MV3574 MV3575))
 (:VAR MV3573 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3574 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3575 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3577 :ISA BE :PRESENT "PRESENT"))

___________________
384: "What genes does stat3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate?"
 (:VAR MV3590 :ISA REGULATE :OBJECT MV3588 :AGENT MV3586 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3588 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3586 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
385: "What transcription factors are common to these genes?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "What transcription factors are common to these genes" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to these genes?"
 (:VAR MV3599 :ISA COPULAR-PREDICATION :ITEM MV3591 :VALUE MV3594 :PREDICATE
  MV3593)
 (:VAR MV3591 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3594 :ISA COMMON :THEME MV3597)
 (:VAR MV3597 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV3593 :ISA BE :PRESENT "PRESENT"))

___________________
386: "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e32   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3615 :ISA COPULAR-PREDICATION :ITEM MV3600 :VALUE MV3601 :PREDICATE
  MV3607)
 (:VAR MV3600 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3601 :ISA IN-COMMON :THEME MV3612)
 (:VAR MV3612 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3613 :RAW-TEXT
  "genes")
 (:VAR MV3613 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3602 MV3603 MV3610 MV3604 MV3605))
 (:VAR MV3602 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3603 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3610 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3604 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3605 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3607 :ISA BE :PRESENT "PRESENT"))

___________________
387: "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3629 :ISA COPULAR-PREDICATION :ITEM MV3616 :VALUE MV3617 :PREDICATE
  MV3622)
 (:VAR MV3616 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3617 :ISA IN-COMMON :THEME MV3626)
 (:VAR MV3626 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3627 :RAW-TEXT
  "genes")
 (:VAR MV3627 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3618 MV3619 MV3620))
 (:VAR MV3618 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3619 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3620 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3622 :ISA BE :PRESENT "PRESENT"))

___________________
388: "What transcription factors are regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What transcription factors are regulators of SMURF2 in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2 in liver?"
 (:VAR MV3633 :ISA BE :SUBJECT MV3630 :PREDICATE MV3634 :PRESENT "PRESENT")
 (:VAR MV3630 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3634 :ISA REGULATOR :THEME MV3631 :RAW-TEXT "regulators")
 (:VAR MV3631 :ISA PROTEIN :ORGAN MV3637 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3637 :ISA LIVER))

___________________
389: "What transcription factors are regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What transcription factors are regulators of SMURF2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2?"
 (:VAR MV3643 :ISA BE :SUBJECT MV3640 :PREDICATE MV3644 :PRESENT "PRESENT")
 (:VAR MV3640 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3644 :ISA REGULATOR :THEME MV3641 :RAW-TEXT "regulators")
 (:VAR MV3641 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
390: "What transcription factors are shared by the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e24   SHARE         1 "What transcription factors are shared by the SRF, HRAS, and elk1 genes" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
 (:VAR MV3659 :ISA SHARE :OBJECT MV3647 :PARTICIPANT MV3657 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3647 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3657 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3658 :RAW-TEXT
  "genes")
 (:VAR MV3658 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3654 MV3655 MV3648))
 (:VAR MV3654 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3655 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV3648 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
391: "What transcription factors regulate SMURF2 in liver?"

                    SOURCE-START
e13   REGULATE      1 "What transcription factors regulate SMURF2 in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate SMURF2 in liver?"
 (:VAR MV3664 :ISA REGULATE :AGENT MV3661 :OBJECT MV3662 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3661 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3662 :ISA PROTEIN :ORGAN MV3666 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3666 :ISA LIVER))

___________________
392: "What transcription factors regulate ZEB1?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate ZEB1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate ZEB1?"
 (:VAR MV3671 :ISA REGULATE :AGENT MV3668 :OBJECT MV3669 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3668 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3669 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME
  "ZEB1_HUMAN"))

___________________
393: "What transcription factors regulate erk"

                    SOURCE-START
e7    REGULATE      1 "What transcription factors regulate erk" 6
                    END-OF-SOURCE
("What transcription factors regulate erk"
 (:VAR MV3674 :ISA REGULATE :AGENT MV3672 :OBJECT MV3675 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3672 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3675 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
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
 (:VAR MV3678 :ISA REGULATE :AGENT MV3676 :THEME MV3684 :OBJECT MV3679 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3676 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3684 :ISA BIO-ENTITY :HAS-DETERMINER "THE" :MODIFIER MV3682
  :CELLULAR-PROCESS MV3683 :NAME "pathwya")
 (:VAR MV3682 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
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
 (:VAR MV3683 :ISA SIGNAL :RAW-TEXT "signaling")
 (:VAR MV3679 :ISA GENE :RAW-TEXT "genes"))

___________________
395: "What transcription factors regulated frizzled8?"

                    SOURCE-START
e9    PROTEIN       1 "What transcription factors regulated frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulated frizzled8?"
 (:VAR MV3687 :ISA PROTEIN :HAS-DETERMINER "WHAT" :PREDICATION MV3689 :RAW-TEXT
  "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV3689 :ISA REGULATE :OBJECT MV3687 :AGENT MV3686 :RAW-TEXT "regulated")
 (:VAR MV3686 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
396: "What transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors transcribe SMURF2?"
 (:VAR MV3693 :ISA TRANSCRIBE :AGENT MV3690 :OBJECT MV3691 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV3690 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3691 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
397: "What upregulates fzd8?"

                    SOURCE-START
e5    UPREGULATE    1 "What upregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates fzd8?"
 (:VAR MV3696 :ISA UPREGULATE :AGENT-OR-CAUSE MV3695 :OBJECT MV3694 :PRESENT
  "PRESENT" :RAW-TEXT "upregulates")
 (:VAR MV3695 :ISA WHAT)
 (:VAR MV3694 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
398: "Where is STAT3 expressed?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Where is STAT3 expressed" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Where is STAT3 expressed?"
 (:VAR MV3702 :ISA GENE-TRANSCRIPT-EXPRESS :LOCATION MV3698 :OBJECT MV3697
  :PAST "PAST" :RAW-TEXT "expressed")
 (:VAR MV3698 :ISA WHERE)
 (:VAR MV3697 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
399: "Which KEGG pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve SRF?"
 (:VAR MV3706 :ISA INVOLVE :THEME MV3705 :THEME MV3707 :PRESENT "PRESENT")
 (:VAR MV3705 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3704 :RAW-TEXT
  "pathways")
 (:VAR MV3704 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3707 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
400: "Which KEGG pathways use SRF?"

                    SOURCE-START
e9    BIO-USE       1 "Which KEGG pathways use SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways use SRF?"
 (:VAR MV3712 :ISA BIO-USE :AGENT MV3710 :OBJECT MV3713 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3710 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3709 :RAW-TEXT
  "pathways")
 (:VAR MV3709 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3713 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
401: "What transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate frizzled8?"
 (:VAR MV3717 :ISA REGULATE :AGENT MV3714 :OBJECT MV3715 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3714 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3715 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
402: "Which also regulate srf"

                    SOURCE-START
e7    REGULATE      1 "Which also regulate srf" 5
                    END-OF-SOURCE
("Which also regulate srf"
 (:VAR MV3721 :ISA REGULATE :AGENT-OR-CAUSE MV3718 :OBJECT MV3722 :PRESENT
  "PRESENT" :ADVERB MV3719 :RAW-TEXT "regulate")
 (:VAR MV3718 :ISA WHICH)
 (:VAR MV3722 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3719 :ISA ALSO :NAME "also"))

___________________
403: "Which apoptotic genes are regulated by stat3?"

                    SOURCE-START
e15   REGULATE      1 "Which apoptotic genes are regulated by stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes are regulated by stat3?"
 (:VAR MV3731 :ISA REGULATE :OBJECT MV3727 :AGENT MV3723 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3727 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3725
  :RAW-TEXT "genes")
 (:VAR MV3725 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3723 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
404: "Which apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "Which apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes is stat3 upstream of?"
 (:VAR MV3738 :ISA BE :SUBJECT MV3737 :PREDICATE MV3739 :PRESENT "PRESENT")
 (:VAR MV3737 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3735
  :RAW-TEXT "genes")
 (:VAR MV3735 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3739 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3737 :MODIFIER MV3733
  :RAW-TEXT "upstream")
 (:VAR MV3737 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3735
  :RAW-TEXT "genes")
 (:VAR MV3735 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3733 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
405: "Which genes are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which genes are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are targeted by STAT3?"
 (:VAR MV3748 :ISA TARGET :OBJECT MV3744 :AGENT MV3742 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3744 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV3742 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
406: "Which genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "Which genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes regulated by stat3 are kinases?"
 (:VAR MV3755 :ISA BE :SUBJECT MV3752 :PREDICATE MV3756 :PRESENT "PRESENT")
 (:VAR MV3752 :ISA GENE :PREDICATION MV3753 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV3753 :ISA REGULATE :OBJECT MV3752 :AGENT MV3750 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3750 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3756 :ISA KINASE :RAW-TEXT "kinases"))

___________________
407: "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e29   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3772 :ISA SHARE :OBJECT MV3764 :PARTICIPANT MV3770 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3764 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3763 :RAW-TEXT
  "pathways")
 (:VAR MV3763 :ISA IMMUNE :NAME "immune")
 (:VAR MV3770 :ISA GENE :EXPRESSES MV3771 :RAW-TEXT "genes")
 (:VAR MV3771 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3758 MV3759 MV3768 MV3760 MV3761))
 (:VAR MV3758 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3759 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3768 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3760 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3761 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
408: "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3787 :ISA SHARE :OBJECT MV3779 :PARTICIPANT MV3785 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3779 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3778 :RAW-TEXT
  "pathways")
 (:VAR MV3778 :ISA IMMUNE :NAME "immune")
 (:VAR MV3785 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3786 :RAW-TEXT
  "genes")
 (:VAR MV3786 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3774 MV3775 MV3776))
 (:VAR MV3774 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3775 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3776 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
409: "Which kegg pathways utilize genes regulated by smad2"

                    SOURCE-START
e15   UTILIZE       1 "Which kegg pathways utilize genes regulated by smad2" 10
                    END-OF-SOURCE
("Which kegg pathways utilize genes regulated by smad2"
 (:VAR MV3793 :ISA UTILIZE :PARTICIPANT MV3792 :OBJECT MV3794 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3792 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3791 :RAW-TEXT
  "pathways")
 (:VAR MV3791 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3794 :ISA GENE :PREDICATION MV3795 :RAW-TEXT "genes")
 (:VAR MV3795 :ISA REGULATE :OBJECT MV3794 :AGENT MV3789 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3789 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
410: "Which Reactome pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which Reactome pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which Reactome pathways utilize SRF?"
 (:VAR MV3801 :ISA UTILIZE :PARTICIPANT MV3800 :OBJECT MV3802 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3800 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3799 :RAW-TEXT
  "pathways")
 (:VAR MV3799 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV3802 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
411: "Which kegg pathways utilize it"

                    SOURCE-START
e9    UTILIZE       1 "Which kegg pathways utilize it" 6
                    END-OF-SOURCE
("Which kegg pathways utilize it"
 (:VAR MV3806 :ISA UTILIZE :PARTICIPANT MV3805 :OBJECT MV3807 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3805 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3804 :RAW-TEXT
  "pathways")
 (:VAR MV3804 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3807 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
412: "Which of them are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of them are regulated by elk1" 9
                    END-OF-SOURCE
("Which of them are regulated by elk1"
 (:VAR MV3815 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3811 :AGENT MV3808
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3811 :ISA PRONOUN/PLURAL :QUANTIFIER MV3809 :WORD "them")
 (:VAR MV3809 :ISA WHICH)
 (:VAR MV3808 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
413: "Which of these are expressed in liver"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of these are expressed in liver" 8
                    END-OF-SOURCE
("Which of these are expressed in liver"
 (:VAR MV3825 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV3820 :ORGAN MV3824
  :PRESENT "PRESENT" :RAW-TEXT "expressed")
 (:VAR MV3820 :ISA THESE :QUANTIFIER MV3818 :WORD "these")
 (:VAR MV3818 :ISA WHICH) (:VAR MV3824 :ISA LIVER))

___________________
414: "Which of these are in immune pathways"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    END-OF-SOURCE
("Which of these are in immune pathways"
 (:VAR MV3836 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3830 :VALUE MV3834 :PREP
  MV3832 :PREDICATE MV3831)
 (:VAR MV3830 :ISA THESE :QUANTIFIER MV3828 :WORD "these")
 (:VAR MV3828 :ISA WHICH)
 (:VAR MV3834 :ISA PATHWAY :MODIFIER MV3833 :RAW-TEXT "pathways")
 (:VAR MV3833 :ISA IMMUNE :NAME "immune") (:VAR MV3832 :ISA IN :WORD "in")
 (:VAR MV3831 :ISA BE :PRESENT "PRESENT"))

___________________
415: "what proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "what proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("what proteins does MEK phosphorylate?"
 (:VAR MV3842 :ISA PHOSPHORYLATE :AMINO-ACID MV3839 :AGENT MV3841 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV3839 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3841 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV3846 :ISA BE :SUBJECT MV3845 :PREDICATE MV3847 :PRESENT "PRESENT")
 (:VAR MV3845 :ISA THESE :QUANTIFIER MV3843 :WORD "these")
 (:VAR MV3843 :ISA WHICH) (:VAR MV3847 :ISA KINASE :RAW-TEXT "kinases"))

___________________
417: "Which of those are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by elk1" 9
                    END-OF-SOURCE
("Which of those are regulated by elk1"
 (:VAR MV3856 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3852 :AGENT MV3849
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3852 :ISA THOSE :QUANTIFIER MV3850 :WORD "those")
 (:VAR MV3850 :ISA WHICH)
 (:VAR MV3849 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
418: "Which of these are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by elk1" 9
                    END-OF-SOURCE
("Which of these are regulated by elk1"
 (:VAR MV3866 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3862 :AGENT MV3859
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3862 :ISA THESE :QUANTIFIER MV3860 :WORD "these")
 (:VAR MV3860 :ISA WHICH)
 (:VAR MV3859 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
419: "Which of these are regulated by fakeprotein"

                    SOURCE-START
e14   REGULATE      1 "Which of these are regulated by fakeprotein" 8
                    END-OF-SOURCE
("Which of these are regulated by fakeprotein"
 (:VAR MV3876 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3871 :AGENT MV3875
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3871 :ISA THESE :QUANTIFIER MV3869 :WORD "these")
 (:VAR MV3869 :ISA WHICH) (:VAR MV3875 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
420: "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3892 :ISA SHARE :OBJECT MV3884 :PARTICIPANT MV3890 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3884 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3890 :ISA GENE :EXPRESSES MV3891 :RAW-TEXT "genes")
 (:VAR MV3891 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3879 MV3880 MV3888 MV3881 MV3882))
 (:VAR MV3879 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3880 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3888 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3881 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3882 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
421: "Which pathways are shared by stat3, socs3, and creb5"

                    SOURCE-START
e21   SHARE         1 "Which pathways are shared by stat3, socs3, and creb5" 15
                    END-OF-SOURCE
("Which pathways are shared by stat3, socs3, and creb5"
 (:VAR MV3906 :ISA SHARE :OBJECT MV3897 :PARTICIPANT MV3905 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3897 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3905 :ISA COLLECTION :RAW-TEXT "stat3, socs3, and creb5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3894 MV3895 MV3904))
 (:VAR MV3894 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3895 :ISA PROTEIN :RAW-TEXT "socs3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3904 :ISA PROTEIN :RAW-TEXT "creb5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
422: "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e30   SHARE         1 "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3922 :ISA SHARE :OBJECT MV3913 :PARTICIPANT MV3920 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3913 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3920 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3921 :RAW-TEXT
  "genes")
 (:VAR MV3921 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3908 MV3909 MV3918 MV3910 MV3911))
 (:VAR MV3908 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3909 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3918 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3910 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3911 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
423: "Which pathways involve TAP1 and JAK1?"

                    SOURCE-START
e11   INVOLVE       1 "Which pathways involve TAP1 and JAK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve TAP1 and JAK1?"
 (:VAR MV3928 :ISA INVOLVE :THEME MV3927 :THEME MV3930 :PRESENT "PRESENT")
 (:VAR MV3927 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3930 :ISA COLLECTION :RAW-TEXT "TAP1 and JAK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3924 MV3925))
 (:VAR MV3924 :ISA PROTEIN :RAW-TEXT "TAP1" :UID "UP:Q03518" :NAME
  "TAP1_HUMAN")
 (:VAR MV3925 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
424: "Which pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "Which pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve calcium?"
 (:VAR MV3933 :ISA INVOLVE :THEME MV3932 :THEME MV3934 :PRESENT "PRESENT")
 (:VAR MV3932 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3934 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
425: "Which pathways use SRF?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use SRF?"
 (:VAR MV3938 :ISA BIO-USE :AGENT MV3936 :OBJECT MV3939 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3936 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3939 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
426: "Which pathways use these"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    END-OF-SOURCE
("Which pathways use these"
 (:VAR MV3943 :ISA BIO-USE :AGENT MV3941 :OBJECT MV3944 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3941 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3944 :ISA THESE :WORD "these"))

___________________
427: "Which pathways utilize SRF?"

                    SOURCE-START
e6    UTILIZE       1 "Which pathways utilize SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways utilize SRF?"
 (:VAR MV3947 :ISA UTILIZE :PARTICIPANT MV3946 :OBJECT MV3948 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3946 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3948 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
428: "Which pathways utilize these genes"

                    SOURCE-START
e8    UTILIZE       1 "Which pathways utilize these genes" 6
                    END-OF-SOURCE
("Which pathways utilize these genes"
 (:VAR MV3951 :ISA UTILIZE :PARTICIPANT MV3950 :OBJECT MV3953 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3950 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3953 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
429: "Which proteins are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which proteins are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which proteins are targeted by STAT3?"
 (:VAR MV3960 :ISA TARGET :OBJECT MV3956 :AGENT MV3954 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3956 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "proteins")
 (:VAR MV3954 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
430: "Which reactome pathways utilize srf"

                    SOURCE-START
e8    UTILIZE       1 "Which reactome pathways utilize srf" 6
                    END-OF-SOURCE
("Which reactome pathways utilize srf"
 (:VAR MV3965 :ISA UTILIZE :PARTICIPANT MV3964 :OBJECT MV3966 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3964 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3963 :RAW-TEXT
  "pathways")
 (:VAR MV3963 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV3966 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
431: "Which transcription factors are in the MAPK signaling pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "Which transcription factors are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors are in the MAPK signaling pathway?"
 (:VAR MV3977 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3967 :VALUE MV3976 :PREP
  "IN" :PREDICATE MV3970)
 (:VAR MV3967 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3976 :ISA TRANSCRIPTION-FACTOR :CONTEXT-OR-IN-PATHWAY MV3968
  :HAS-DETERMINER "WHICH" :RAW-TEXT "transcription factors")
 (:VAR MV3968 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3973
  :RAW-TEXT "signaling pathway")
 (:VAR MV3973 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3970 :ISA BE :PRESENT "PRESENT"))

___________________
432: "Which transcription factors regulate frizzled8 in the liver?"

                    SOURCE-START
e16   REGULATE      1 "Which transcription factors regulate frizzled8 in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8 in the liver?"
 (:VAR MV3982 :ISA REGULATE :AGENT MV3979 :OBJECT MV3980 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3979 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3980 :ISA PROTEIN :ORGAN MV3985 :RAW-TEXT "frizzled8" :UID "UP:Q9H461"
  :NAME "FZD8_HUMAN")
 (:VAR MV3985 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
433: "Which transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "Which transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8?"
 (:VAR MV3990 :ISA REGULATE :AGENT MV3987 :OBJECT MV3988 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3987 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3988 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
434: "Let's move AKT1 on top."

                    SOURCE-START
e12   EXPLICIT-SUGGESTION 1 "Let's move AKT1 on top" 9
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 on top."
 (:VAR MV3998 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV3993 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV3993 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV3995 :THEME
  MV3992 :PRESENT "PRESENT")
 (:VAR MV3995 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV3992 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
435: "Let's show the phosphorylated AKT1 on top."

                    SOURCE-START
e19   EXPLICIT-SUGGESTION 1 "Let's show the phosphorylated AKT1 on top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show the phosphorylated AKT1 on top."
 (:VAR MV4010 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4001 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4001 :ISA SHOW :STATEMENT-OR-THEME MV4009 :PRESENT "PRESENT")
 (:VAR MV4009 :ISA PROTEIN :HAS-DETERMINER "THE" :PREDICATION MV4008 :RAW-TEXT
  "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4008 :ISA PHOSPHORYLATE :SUBSTRATE MV4005 :SUBSTRATE MV4009 :RAW-TEXT
  "phosphorylated")
 (:VAR MV4005 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
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
 (:VAR MV4013 :ISA BE :SUBJECT MV4012 :PREDICATE MV4016 :PRESENT "PRESENT")
 (:VAR MV4012 :ISA WHAT)
 (:VAR MV4016 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4020 :HAS-DETERMINER
  "THE" :PREDICATION MV4015 :RAW-TEXT "upstreams")
 (:VAR MV4020 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV4011 MV4019))
 (:VAR MV4011 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4019 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV4015 :ISA COMMON))

___________________
437: "Is stat3 expressed exclusively in liver?"

                    SOURCE-START
e11   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed exclusively in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed exclusively in liver?"
 (:VAR MV4029 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV4027 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV4027 :ISA LIVER))

___________________
438: "Is stat3 expressed in spleen?"

                    SOURCE-START
e9    GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in spleen" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in spleen?"
 (:VAR MV4036 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV4034 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV4034 :ISA SPLEEN))

___________________
439: "Show phosphorylated akt1 on top."

                    SOURCE-START
e13   SHOW          1 "Show phosphorylated akt1 on top" 7
                    PERIOD
                    END-OF-SOURCE
("Show phosphorylated akt1 on top."
 (:VAR MV4038 :ISA SHOW :STATEMENT-OR-THEME MV4045 :PRESENT "PRESENT")
 (:VAR MV4045 :ISA PROTEIN :PREDICATION MV4044 :RAW-TEXT "akt1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4044 :ISA PHOSPHORYLATE :SUBSTRATE MV4041 :SUBSTRATE MV4045 :RAW-TEXT
  "phosphorylated")
 (:VAR MV4041 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
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
 (:VAR MV4048 :ISA BE :SUBJECT MV4047 :PREDICATE MV4051 :PRESENT "PRESENT")
 (:VAR MV4047 :ISA WHAT)
 (:VAR MV4051 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4055 :HAS-DETERMINER
  "THE" :PREDICATION MV4050 :RAW-TEXT "upstreams")
 (:VAR MV4055 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRA" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4046 MV4054))
 (:VAR MV4046 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4054 :ISA BIO-ENTITY :NAME "BRA") (:VAR MV4050 :ISA COMMON))

___________________
441: "RAF activates MEK and MEK activates ERK."

                    SOURCE-START
e11   BIO-ACTIVATE  1 "RAF activates MEK and MEK activates ERK" 8
                    PERIOD
                    END-OF-SOURCE
("RAF activates MEK and MEK activates ERK."
 (:VAR MV4064 :ISA COLLECTION :RAW-TEXT
  "RAF activates MEK and MEK activates ERK" :TYPE BIO-ACTIVATE :NUMBER 2 :ITEMS
  (MV4058 MV4062))
 (:VAR MV4058 :ISA BIO-ACTIVATE :AGENT MV4057 :OBJECT MV4059 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4057 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV4059 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4062 :ISA BIO-ACTIVATE :AGENT MV4061 :OBJECT MV4063 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4061 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4063 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV4066 :ISA BE :SUBJECT MV4065 :PREDICATE MV4068 :PRESENT "PRESENT")
 (:VAR MV4065 :ISA WHAT)
 (:VAR MV4068 :ISA PATH :END MV4072 :START MV4070 :HAS-DETERMINER "THE")
 (:VAR MV4072 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4070 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
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
 (:VAR MV4075 :ISA REMOVE :OBJECT MV4082 :PRESENT "PRESENT" :RAW-TEXT "remove")
 (:VAR MV4082 :ISA FACT :STATEMENT MV4080 :HAS-DETERMINER "THE")
 (:VAR MV4080 :ISA BIO-ACTIVATE :AGENT MV4079 :OBJECT MV4081 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4079 :ISA PROTEIN-FAMILY :RAW-TEXT "mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4081 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
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
 (:VAR MV4093 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4085 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4085 :ISA SHOW :STATEMENT-OR-THEME MV4092 :PRESENT "PRESENT")
 (:VAR MV4092 :ISA PROTEIN :PREDICATION MV4091 :RAW-TEXT "akt1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4091 :ISA PHOSPHORYLATE :SUBSTRATE MV4088 :SUBSTRATE MV4092 :RAW-TEXT
  "phosphorylated")
 (:VAR MV4088 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
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
 (:VAR MV4096 :ISA BE :SUBJECT MV4095 :PREDICATE MV4094 :PRESENT "PRESENT")
 (:VAR MV4095 :ISA WHAT)
 (:VAR MV4094 :ISA POSITIVE-REGULATOR :THEME MV4100 :RAW-TEXT
  "positive regulators")
 (:VAR MV4100 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4099 :RAW-TEXT
  "gene")
 (:VAR MV4099 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
446: "what transcription factors regulate FOS in soft tissue?"

                    SOURCE-START
e13   REGULATE      1 "what transcription factors regulate FOS in soft tissue" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors regulate FOS in soft tissue?"
 (:VAR MV4105 :ISA REGULATE :AGENT MV4102 :OBJECT MV4106 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV4102 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4106 :ISA PROTEIN :ORGAN MV4103 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV4103 :ISA BIO-ORGAN :NAME "soft tissue" :UID "NCIT:C12471"))

___________________
447: "Are there any drugs inhibiting MEK?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there any drugs inhibiting MEK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs inhibiting MEK?"
 (:VAR MV4116 :ISA THERE-EXISTS :VALUE MV4113 :PREDICATE MV4110)
 (:VAR MV4113 :ISA DRUG :PREDICATION MV4114 :QUANTIFIER MV4112 :RAW-TEXT
  "drugs")
 (:VAR MV4114 :ISA INHIBIT :AGENT MV4113 :OBJECT MV4115 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "inhibiting")
 (:VAR MV4115 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4112 :ISA ANY :WORD "any") (:VAR MV4110 :ISA SYNTACTIC-THERE))

___________________
448: "Are there any drugs targeting KRAS?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there any drugs targeting KRAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs targeting KRAS?"
 (:VAR MV4124 :ISA THERE-EXISTS :VALUE MV4121 :PREDICATE MV4118)
 (:VAR MV4121 :ISA DRUG :PREDICATION MV4122 :QUANTIFIER MV4120 :RAW-TEXT
  "drugs")
 (:VAR MV4122 :ISA TARGET :AGENT MV4121 :OBJECT MV4123 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "targeting")
 (:VAR MV4123 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV4120 :ISA ANY :WORD "any") (:VAR MV4118 :ISA SYNTACTIC-THERE))

___________________
449: "Are there any genes in the liver that are regulated by stat3?"

                    SOURCE-START
e30   THERE-EXISTS  1 "Are there any genes in the liver that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes in the liver that are regulated by stat3?"
 (:VAR MV4138 :ISA THERE-EXISTS :VALUE MV4130 :PREDICATE MV4127)
 (:VAR MV4130 :ISA GENE :PREDICATION MV4139 :ORGAN MV4133 :QUANTIFIER MV4129
  :RAW-TEXT "genes")
 (:VAR MV4139 :ISA REGULATE :OBJECT MV4130 :THAT-REL T :AGENT MV4125 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4125 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4133 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4129 :ISA ANY :WORD "any") (:VAR MV4127 :ISA SYNTACTIC-THERE))

___________________
450: "Are there any genes involved in apoptosis that are regulated by stat3?"

                    SOURCE-START
e30   THERE-EXISTS  1 "Are there any genes involved in apoptosis that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes involved in apoptosis that are regulated by stat3?"
 (:VAR MV4155 :ISA THERE-EXISTS :VALUE MV4147 :PREDICATE MV4144)
 (:VAR MV4147 :ISA GENE :PREDICATION MV4148 :QUANTIFIER MV4146 :RAW-TEXT
  "genes")
 (:VAR MV4148 :ISA INVOLVE :THEME MV4147 :THEME MV4150 :PAST "PAST")
 (:VAR MV4150 :ISA APOPTOSIS :PREDICATION MV4156 :RAW-TEXT "apoptosis")
 (:VAR MV4156 :ISA REGULATE :AFFECTED-PROCESS MV4150 :THAT-REL T :AGENT MV4142
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4142 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4146 :ISA ANY :WORD "any") (:VAR MV4144 :ISA SYNTACTIC-THERE))

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
 (:VAR MV4177 :ISA THERE-EXISTS :VALUE MV4175 :PREDICATE MV4172)
 (:VAR MV4175 :ISA INHIBITOR :TARGET-OR-PROTEIN MV4170 :QUANTIFIER MV4174
  :RAW-TEXT "inhibitors")
 (:VAR MV4170 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV4174 :ISA ANY :WORD "any") (:VAR MV4172 :ISA SYNTACTIC-THERE))

___________________
453: "Are there genes regulated by elk1 and srf"

                    SOURCE-START
e18   THERE-EXISTS  1 "Are there genes regulated by elk1 and srf" 10
                    END-OF-SOURCE
("Are there genes regulated by elk1 and srf"
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
 (:VAR MV4250 :ISA POLAR-QUESTION :STATEMENT MV4244)
 (:VAR MV4244 :ISA SHOW :AGENT MV4243 :STATEMENT-OR-THEME MV4246 :BENEFICIARY
  MV4245 :MODAL "CAN")
 (:VAR MV4243 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4246 :ISA GENE :PREDICATION MV4247 :RAW-TEXT "genes")
 (:VAR MV4247 :ISA REGULATE :OBJECT MV4246 :AGENT MV4241 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4241 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4245 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
458: "Can you show me genes that are regulated by ELK1"

                    SOURCE-START
e26   SHOW          1 "Can you show me genes that are regulated by ELK1" 12
                    END-OF-SOURCE
("Can you show me genes that are regulated by ELK1"
 (:VAR MV4263 :ISA POLAR-QUESTION :STATEMENT MV4254)
 (:VAR MV4254 :ISA SHOW :AGENT MV4253 :STATEMENT-OR-THEME MV4256 :BENEFICIARY
  MV4255 :MODAL "CAN")
 (:VAR MV4253 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4256 :ISA GENE :PREDICATION MV4261 :RAW-TEXT "genes")
 (:VAR MV4261 :ISA REGULATE :OBJECT MV4256 :THAT-REL T :AGENT MV4251 :MODAL
  "CAN" :RAW-TEXT "regulated")
 (:VAR MV4251 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4255 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
459: "Can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "Can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("Can you show me the pahtways that involve SRF"
 (:VAR MV4273 :ISA POLAR-QUESTION :STATEMENT MV4266)
 (:VAR MV4266 :ISA SHOW :AGENT MV4265 :STATEMENT-OR-THEME MV4269 :BENEFICIARY
  MV4267 :MODAL "CAN")
 (:VAR MV4265 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4269 :ISA BIO-ENTITY :PREDICATION MV4271 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4271 :ISA INVOLVE :THEME MV4269 :THAT-REL T :THEME MV4272 :MODAL
  "CAN")
 (:VAR MV4272 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4267 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
460: "Can you tell me the genes regulated by STAT3"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes regulated by STAT3" 11
                    END-OF-SOURCE
("Can you tell me the genes regulated by STAT3"
 (:VAR MV4284 :ISA POLAR-QUESTION :STATEMENT MV4277)
 (:VAR MV4277 :ISA TELL :AGENT MV4276 :THEME MV4280 :BENEFICIARY MV4278 :MODAL
  "CAN")
 (:VAR MV4276 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4280 :ISA GENE :PREDICATION MV4281 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4281 :ISA REGULATE :OBJECT MV4280 :AGENT MV4274 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4274 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4278 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
461: "Can you tell me the genes that STAT3 regulates"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes that STAT3 regulates" 11
                    END-OF-SOURCE
("Can you tell me the genes that STAT3 regulates"
 (:VAR MV4294 :ISA POLAR-QUESTION :STATEMENT MV4288)
 (:VAR MV4288 :ISA TELL :AGENT MV4287 :THEME MV4291 :BENEFICIARY MV4289 :MODAL
  "CAN")
 (:VAR MV4287 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4291 :ISA GENE :PREDICATION MV4293 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4293 :ISA REGULATE :OBJECT MV4291 :THAT-REL T :AGENT MV4285 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4285 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4289 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
462: "Can you tell me the genes that are regulated by STAT3"

                    SOURCE-START
e29   TELL          1 "Can you tell me the genes that are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes that are regulated by STAT3"
 (:VAR MV4308 :ISA POLAR-QUESTION :STATEMENT MV4298)
 (:VAR MV4298 :ISA TELL :AGENT MV4297 :THEME MV4301 :BENEFICIARY MV4299 :MODAL
  "CAN")
 (:VAR MV4297 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4301 :ISA GENE :PREDICATION MV4306 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4306 :ISA REGULATE :OBJECT MV4301 :THAT-REL T :AGENT MV4295 :MODAL
  "CAN" :RAW-TEXT "regulated")
 (:VAR MV4295 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4299 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
463: "Can you tell me the genes which are regulated by STAT3"

                    SOURCE-START
e28   TELL          1 "Can you tell me the genes which are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes which are regulated by STAT3"
 (:VAR MV4323 :ISA POLAR-QUESTION :STATEMENT MV4312)
 (:VAR MV4312 :ISA TELL :AGENT MV4311 :THEME MV4315 :BENEFICIARY MV4313 :MODAL
  "CAN")
 (:VAR MV4311 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4315 :ISA GENE :PREDICATION MV4322 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4322 :ISA REGULATE :OBJECT MV4315 :AGENT MV4309 :MODAL MV4310
  :RAW-TEXT "regulated")
 (:VAR MV4309 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4310 :ISA CAN) (:VAR MV4313 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
464: "Can you tell me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf"
 (:VAR MV4339 :ISA POLAR-QUESTION :STATEMENT MV4328)
 (:VAR MV4328 :ISA TELL :AGENT MV4327 :THEME MV4337 :THEME MV4329 :MODAL "CAN")
 (:VAR MV4327 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4337 :ISA SHARE :OBJECT MV4324 :PARTICIPANT MV4336 :MODAL "CAN"
  :RAW-TEXT "shared")
 (:VAR MV4324 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4336 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4325 MV4335))
 (:VAR MV4325 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4335 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4329 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
465: "Can you tell me which genes are regulated by STAT3"

                    SOURCE-START
e24   TELL          1 "Can you tell me which genes are regulated by STAT3" 12
                    END-OF-SOURCE
("Can you tell me which genes are regulated by STAT3"
 (:VAR MV4352 :ISA POLAR-QUESTION :STATEMENT MV4343)
 (:VAR MV4343 :ISA TELL :AGENT MV4342 :THEME MV4350 :THEME MV4344 :MODAL "CAN")
 (:VAR MV4342 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4350 :ISA REGULATE :OBJECT MV4346 :AGENT MV4340 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4346 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4340 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4344 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
466: "Can you tell me which genes in the liver are regulated by stat3?"

                    SOURCE-START
e32   TELL          1 "Can you tell me which genes in the liver are regulated by stat3" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes in the liver are regulated by stat3?"
 (:VAR MV4369 :ISA POLAR-QUESTION :STATEMENT MV4356)
 (:VAR MV4356 :ISA TELL :AGENT MV4355 :THEME MV4366 :THEME MV4357 :MODAL "CAN")
 (:VAR MV4355 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4366 :ISA REGULATE :OBJECT MV4359 :AGENT MV4353 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4359 :ISA GENE :ORGAN MV4362 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV4362 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4353 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4357 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
467: "Can you tell me which genes stat3 regulates?"

                    SOURCE-START
e18   TELL          1 "Can you tell me which genes stat3 regulates" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes stat3 regulates?"
 (:VAR MV4378 :ISA POLAR-QUESTION :STATEMENT MV4373)
 (:VAR MV4373 :ISA TELL :AGENT MV4372 :THEME MV4376 :BENEFICIARY MV4374 :MODAL
  "CAN")
 (:VAR MV4372 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4376 :ISA GENE :PREDICATION MV4377 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV4377 :ISA REGULATE :OBJECT MV4376 :AGENT MV4370 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4370 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4374 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
468: "Does STAT3 affect the expression of c-fos?"

                    SOURCE-START
e18   AFFECT        1 "Does STAT3 affect the expression of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of c-fos?"
 (:VAR MV4388 :ISA POLAR-QUESTION :STATEMENT MV4386)
 (:VAR MV4386 :ISA AFFECT :AGENT MV4379 :AFFECTED-PROCESS MV4384 :RAW-TEXT
  "affect")
 (:VAR MV4379 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4384 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4380 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4380 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
469: "Does STAT3 affect the expression of the c-fos gene?"

                    SOURCE-START
e23   AFFECT        1 "Does STAT3 affect the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of the c-fos gene?"
 (:VAR MV4400 :ISA POLAR-QUESTION :STATEMENT MV4398)
 (:VAR MV4398 :ISA AFFECT :AGENT MV4389 :AFFECTED-PROCESS MV4394 :RAW-TEXT
  "affect")
 (:VAR MV4389 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4394 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4397 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4397 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4390 :RAW-TEXT
  "gene")
 (:VAR MV4390 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
470: "Does STAT3 increase the expression of the c-fos gene?"

                    SOURCE-START
e24   INCREASE      1 "Does STAT3 increase the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase the expression of the c-fos gene?"
 (:VAR MV4413 :ISA POLAR-QUESTION :STATEMENT MV4411)
 (:VAR MV4411 :ISA INCREASE :AGENT MV4401 :AFFECTED-PROCESS MV4407 :RAW-TEXT
  "increase")
 (:VAR MV4401 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4407 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4410 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4410 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4402 :RAW-TEXT
  "gene")
 (:VAR MV4402 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
471: "Does STAT3 increase transcription of the c-fos gene?"

                    SOURCE-START
e21   INCREASE      1 "Does STAT3 increase transcription of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase transcription of the c-fos gene?"
 (:VAR MV4425 :ISA POLAR-QUESTION :STATEMENT MV4423)
 (:VAR MV4423 :ISA INCREASE :AGENT MV4414 :AFFECTED-PROCESS MV4419 :RAW-TEXT
  "increase")
 (:VAR MV4414 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4419 :ISA TRANSCRIBE :OBJECT MV4422 :RAW-TEXT "transcription")
 (:VAR MV4422 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4415 :RAW-TEXT
  "gene")
 (:VAR MV4415 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
472: "Does stat3 affect the expression of cfos?"

                    SOURCE-START
e17   AFFECT        1 "Does stat3 affect the expression of cfos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 affect the expression of cfos?"
 (:VAR MV4435 :ISA POLAR-QUESTION :STATEMENT MV4433)
 (:VAR MV4433 :ISA AFFECT :AGENT MV4426 :AFFECTED-PROCESS MV4430 :RAW-TEXT
  "affect")
 (:VAR MV4426 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4430 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4432 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV4432 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
473: "Does the mTor pathway contain SGK1?"

                    SOURCE-START
e16   CONTAIN       1 "Does the mTor pathway contain SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway contain SGK1?"
 (:VAR MV4445 :ISA POLAR-QUESTION :STATEMENT MV4444)
 (:VAR MV4444 :ISA CONTAIN :THEME MV4442 :PATIENT MV4436)
 (:VAR MV4442 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4439 :RAW-TEXT
  "pathway")
 (:VAR MV4439 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME
  "MTOR_HUMAN")
 (:VAR MV4436 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
474: "Find a treatment for pancreatic cancer."

                    SOURCE-START
e12   BIO-FIND      1 "Find a treatment for pancreatic cancer" 7
                    PERIOD
                    END-OF-SOURCE
("Find a treatment for pancreatic cancer."
 (:VAR MV4448 :ISA BIO-FIND :OBJECT MV4450 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4450 :ISA TREATMENT :DISEASE MV4446 :HAS-DETERMINER "A" :RAW-TEXT
  "treatment")
 (:VAR MV4446 :ISA CANCER :UID "TS-0739"))

___________________
475: "Find genes in the liver regulated by stat3"

                    SOURCE-START
e18   BIO-FIND      1 "Find genes in the liver regulated by stat3" 10
                    END-OF-SOURCE
("Find genes in the liver regulated by stat3"
 (:VAR MV4455 :ISA BIO-FIND :OBJECT MV4456 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4456 :ISA GENE :PREDICATION MV4460 :ORGAN MV4459 :RAW-TEXT "genes")
 (:VAR MV4460 :ISA REGULATE :OBJECT MV4456 :AGENT MV4453 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4453 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4459 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
476: "Find genes that stat3 regulates"

                    SOURCE-START
e12   BIO-FIND      1 "Find genes that stat3 regulates" 7
                    END-OF-SOURCE
("Find genes that stat3 regulates"
 (:VAR MV4466 :ISA BIO-FIND :OBJECT MV4467 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4467 :ISA GENE :PREDICATION MV4469 :RAW-TEXT "genes")
 (:VAR MV4469 :ISA REGULATE :OBJECT MV4467 :THAT-REL T :AGENT MV4464 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4464 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
477: "Find transcription factors shared by elk1 and srf"

                    SOURCE-START
e14   BIO-FIND      1 "Find transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Find transcription factors shared by elk1 and srf"
 (:VAR MV4473 :ISA BIO-FIND :OBJECT MV4470 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4470 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4474 :RAW-TEXT
  "transcription factors")
 (:VAR MV4474 :ISA SHARE :OBJECT MV4470 :PARTICIPANT MV4478 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV4478 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4471 MV4477))
 (:VAR MV4471 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4477 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
478: "How does KRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does KRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS activate MAPK3?"
 (:VAR MV4484 :ISA BIO-ACTIVATE :MANNER MV4481 :AGENT MV4483 :OBJECT MV4480
  :PRESENT "PRESENT" :RAW-TEXT "activate")
 (:VAR MV4481 :ISA HOW)
 (:VAR MV4483 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV4480 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
479: "How does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e14   REGULATE      1 "How does STAT3 regulate the c-fos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("How does STAT3 regulate the c-fos gene?"
 (:VAR MV4489 :ISA REGULATE :MANNER MV4487 :AGENT MV4485 :OBJECT MV4491
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4487 :ISA HOW)
 (:VAR MV4485 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4491 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4486 :RAW-TEXT
  "gene")
 (:VAR MV4486 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
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
 (:VAR MV4514 :ISA REGULATE :MANNER MV4512 :AGENT MV4511 :AFFECTED-PROCESS
  MV4515 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4512 :ISA HOW)
 (:VAR MV4511 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4515 :ISA APOPTOSIS :ORGAN MV4518 :RAW-TEXT "apoptosis")
 (:VAR MV4518 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
482: "How does stat3 regulate apoptosis?"

                    SOURCE-START
e8    REGULATE      1 "How does stat3 regulate apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis?"
 (:VAR MV4523 :ISA REGULATE :MANNER MV4521 :AGENT MV4520 :AFFECTED-PROCESS
  MV4524 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4521 :ISA HOW)
 (:VAR MV4520 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4524 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
483: "How does stat3 regulate apoptotic genes?"

                    SOURCE-START
e11   REGULATE      1 "How does stat3 regulate apoptotic genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptotic genes?"
 (:VAR MV4528 :ISA REGULATE :MANNER MV4526 :AGENT MV4525 :OBJECT MV4531
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4526 :ISA HOW)
 (:VAR MV4525 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4531 :ISA GENE :CELLULAR-PROCESS MV4529 :RAW-TEXT "genes")
 (:VAR MV4529 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
484: "How is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e15   INVOLVE       1 "How is stat3 involved in apoptotic regulation" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotic regulation?"
 (:VAR MV4542 :ISA INVOLVE :MANNER MV4533 :THEME MV4532 :THEME MV4539 :PAST
  "PAST")
 (:VAR MV4533 :ISA HOW)
 (:VAR MV4532 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4539 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV4537 :RAW-TEXT
  "regulation")
 (:VAR MV4537 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
485: "How is stat3 involved in apoptotis regulation in the liver?"

                    SOURCE-START
e22   INVOLVE       1 "How is stat3 involved in apoptotis regulation in the liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotis regulation in the liver?"
 (:VAR MV4556 :ISA INVOLVE :MANNER MV4544 :THEME MV4543 :THEME MV4548 :PAST
  "PAST")
 (:VAR MV4544 :ISA HOW)
 (:VAR MV4543 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4548 :ISA REGULATE :OBJECT MV4552 :ORGAN MV4551 :AGENT-OR-OBJECT
  MV4552 :RAW-TEXT "regulation")
 (:VAR MV4552 :ISA BIO-ENTITY :NAME "apoptotis")
 (:VAR MV4551 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4552 :ISA BIO-ENTITY :NAME "apoptotis"))

___________________
486: "How is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e14   INVOLVE       1 "How is stat3 involved in regulating apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in regulating apoptosis?"
 (:VAR MV4566 :ISA INVOLVE :MANNER MV4558 :THEME MV4557 :THEME MV4562 :PAST
  "PAST")
 (:VAR MV4558 :ISA HOW)
 (:VAR MV4557 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4562 :ISA REGULATE :AFFECTED-PROCESS MV4563 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV4563 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
487: "How is stat3 used to regulate apoptosis?"

                    SOURCE-START
e14   BIO-USE       1 "How is stat3 used to regulate apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 used to regulate apoptosis?"
 (:VAR MV4576 :ISA BIO-USE :MANNER MV4568 :OBJECT MV4567 :THEME MV4574 :PAST
  "PAST" :RAW-TEXT "used")
 (:VAR MV4568 :ISA HOW)
 (:VAR MV4567 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4574 :ISA REGULATE :AFFECTED-PROCESS MV4573 :RAW-TEXT "regulate")
 (:VAR MV4573 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
488: "How many genes are in the MAPK signaling pathway?"

                    SOURCE-START
e19   COPULAR-PREDICATE 1 "How many genes are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How many genes are in the MAPK signaling pathway?"
 (:VAR MV4588 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4580 :VALUE MV4587 :PREP
  "IN" :PREDICATE MV4581)
 (:VAR MV4580 :ISA GENE :HAS-DETERMINER "HOW" :QUANTIFIER MV4579 :RAW-TEXT
  "genes")
 (:VAR MV4579 :ISA MANY :WORD "many")
 (:VAR MV4587 :ISA GENE :CONTEXT MV4577 :HAS-DETERMINER "HOW" :QUANTIFIER
  MV4579 :RAW-TEXT "genes")
 (:VAR MV4577 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4584
  :RAW-TEXT "signaling pathway")
 (:VAR MV4584 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV4579 :ISA MANY :WORD "many") (:VAR MV4581 :ISA BE :PRESENT "PRESENT"))

___________________
489: "How might a STAT3 mutation affect breast cancer?"

                    SOURCE-START
e14   AFFECT        1 "How might a STAT3 mutation affect breast cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How might a STAT3 mutation affect breast cancer?"
 (:VAR MV4597 :ISA AFFECT :MANNER MV4592 :MODAL MV4593 :AGENT MV4595 :OBJECT
  MV4591 :PRESENT "PRESENT" :RAW-TEXT "affect")
 (:VAR MV4592 :ISA HOW) (:VAR MV4593 :ISA MIGHT)
 (:VAR MV4595 :ISA MUTATION :OBJECT MV4590 :HAS-DETERMINER "A" :AGENT-OR-OBJECT
  MV4590 :RAW-TEXT "mutation")
 (:VAR MV4590 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4590 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4591 :ISA CANCER :UID "TS-0591"))

___________________
490: "Is STAT3 a regulator for c-fos?"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator for c-fos" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator for c-fos?"
 (:VAR MV4605 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91565>
   (PREDICATE
    (#<regulator 91564>
     (THEME
      (#<protein "FOS_HUMAN" 88500> (RAW-TEXT "c-fos") (UID "UP:P01100")
       (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
491: "Is STAT3 a regulator of c-fos"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator of c-fos" 10
                    END-OF-SOURCE
("Is STAT3 a regulator of c-fos"
 (:VAR MV4613 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91565>
   (PREDICATE
    (#<regulator 91564>
     (THEME
      (#<protein "FOS_HUMAN" 88500> (RAW-TEXT "c-fos") (UID "UP:P01100")
       (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
492: "Is STAT3 a regulator of the c-fos gene"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene"
 (:VAR MV4623 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91569>
   (PREDICATE
    (#<regulator 91568>
     (THEME
      (#<gene 89863> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88500> (RAW-TEXT "c-fos") (UID "UP:P01100")
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
 (:VAR MV4633 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91569>
   (PREDICATE
    (#<regulator 91568>
     (THEME
      (#<gene 89863> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88500> (RAW-TEXT "c-fos") (UID "UP:P01100")
         (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
494: "Is STAT3 a transcription factor for c-fos gene"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene"
 (:VAR MV4642 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89967>
   (PREDICATE
    (#<transcription-factor 89966>
     (CONTROLLED-GENE
      (#<gene 89862>
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88500> (RAW-TEXT "c-fos") (UID "UP:P01100")
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
 (:VAR MV4650 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91573>
   (PREDICATE
    (#<transcription-factor 91572>
     (CONTROLLED-GENE
      (#<protein "FOS_HUMAN" 88500> (RAW-TEXT "c-fos") (UID "UP:P01100")
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
 (:VAR MV4658 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91573>
   (PREDICATE
    (#<transcription-factor 91572>
     (CONTROLLED-GENE
      (#<protein "FOS_HUMAN" 88500> (RAW-TEXT "c-fos") (UID "UP:P01100")
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
 (:VAR MV4668 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91578>
   (PREDICATE
    (#<transcription-factor 91577>
     (CONTROLLED-GENE
      (#<gene 89863> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88500> (RAW-TEXT "c-fos") (UID "UP:P01100")
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
 (:VAR MV4676 :ISA POLAR-QUESTION :STATEMENT MV4675)
 (:VAR MV4675 :ISA REGULATE :AGENT MV4669 :AGENT MV4670 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4669 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4670 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
499: "Is Stat3 a transcription factor for the c-fos gene"

                    SOURCE-START
e21   BE            1 "Is Stat3 a transcription factor for the c-fos gene" 13
                    END-OF-SOURCE
("Is Stat3 a transcription factor for the c-fos gene"
 (:VAR MV4686 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91578>
   (PREDICATE
    (#<transcription-factor 91577>
     (CONTROLLED-GENE
      (#<gene 89863> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 88500> (RAW-TEXT "c-fos") (UID "UP:P01100")
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
 (:VAR MV4688 :ISA LIST :THEME MV4689 :PRESENT "PRESENT")
 (:VAR MV4689 :ISA GENE :PREDICATION MV4690 :RAW-TEXT "genes")
 (:VAR MV4690 :ISA REGULATE :OBJECT MV4689 :AGENT MV4687 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4687 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
501: "List genes that are regulated by ELK1"

                    SOURCE-START
e16   LIST          1 "List genes that are regulated by ELK1" 9
                    END-OF-SOURCE
("List genes that are regulated by ELK1"
 (:VAR MV4694 :ISA LIST :THEME MV4695 :PRESENT "PRESENT")
 (:VAR MV4695 :ISA GENE :PREDICATION MV4700 :RAW-TEXT "genes")
 (:VAR MV4700 :ISA REGULATE :OBJECT MV4695 :THAT-REL T :AGENT MV4693 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4693 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
502: "List some genes that stat3 regulates"

                    SOURCE-START
e13   LIST          1 "List some genes that stat3 regulates" 8
                    END-OF-SOURCE
("List some genes that stat3 regulates"
 (:VAR MV4703 :ISA LIST :THEME MV4705 :PRESENT "PRESENT")
 (:VAR MV4705 :ISA GENE :PREDICATION MV4707 :QUANTIFIER MV4704 :RAW-TEXT
  "genes")
 (:VAR MV4707 :ISA REGULATE :OBJECT MV4705 :THAT-REL T :AGENT MV4702 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4702 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4704 :ISA SOME :WORD "some"))

___________________
503: "List the genes STAT3 regulates"

                    SOURCE-START
e11   LIST          1 "List the genes STAT3 regulates" 7
                    END-OF-SOURCE
("List the genes STAT3 regulates"
 (:VAR MV4709 :ISA LIST :THEME MV4711 :PRESENT "PRESENT")
 (:VAR MV4711 :ISA GENE :PREDICATION MV4712 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4712 :ISA REGULATE :OBJECT MV4711 :AGENT MV4708 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4708 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
504: "List the genes that are regulated by STAT3"

                    SOURCE-START
e19   LIST          1 "List the genes that are regulated by STAT3" 10
                    END-OF-SOURCE
("List the genes that are regulated by STAT3"
 (:VAR MV4714 :ISA LIST :THEME MV4716 :PRESENT "PRESENT")
 (:VAR MV4716 :ISA GENE :PREDICATION MV4721 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4721 :ISA REGULATE :OBJECT MV4716 :THAT-REL T :AGENT MV4713 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4713 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
505: "List the genes which STAT3 regulates"

                    SOURCE-START
e13   LIST          1 "List the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("List the genes which STAT3 regulates"
 (:VAR MV4724 :ISA LIST :THEME MV4726 :PRESENT "PRESENT")
 (:VAR MV4726 :ISA GENE :PREDICATION MV4728 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4728 :ISA REGULATE :OBJECT MV4726 :AGENT MV4723 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4723 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
506: "List the pahtways that involve SRF"

                    SOURCE-START
e13   LIST          1 "List the pahtways that involve SRF" 7
                    END-OF-SOURCE
("List the pahtways that involve SRF"
 (:VAR MV4729 :ISA LIST :THEME MV4731 :PRESENT "PRESENT")
 (:VAR MV4731 :ISA BIO-ENTITY :PREDICATION MV4733 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4733 :ISA INVOLVE :THEME MV4731 :THAT-REL T :THEME MV4734 :PRESENT
  "PRESENT")
 (:VAR MV4734 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
507: "Show me genes regulated by ELK1"

                    SOURCE-START
e13   SHOW          1 "Show me genes regulated by ELK1" 8
                    END-OF-SOURCE
("Show me genes regulated by ELK1"
 (:VAR MV4736 :ISA SHOW :STATEMENT-OR-THEME MV4738 :BENEFICIARY MV4737 :PRESENT
  "PRESENT")
 (:VAR MV4738 :ISA GENE :PREDICATION MV4739 :RAW-TEXT "genes")
 (:VAR MV4739 :ISA REGULATE :OBJECT MV4738 :AGENT MV4735 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4735 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4737 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
508: "Show me genes that are regulated by ELK1"

                    SOURCE-START
e18   SHOW          1 "Show me genes that are regulated by ELK1" 10
                    END-OF-SOURCE
("Show me genes that are regulated by ELK1"
 (:VAR MV4743 :ISA SHOW :STATEMENT-OR-THEME MV4745 :BENEFICIARY MV4744 :PRESENT
  "PRESENT")
 (:VAR MV4745 :ISA GENE :PREDICATION MV4750 :RAW-TEXT "genes")
 (:VAR MV4750 :ISA REGULATE :OBJECT MV4745 :THAT-REL T :AGENT MV4742 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4742 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4744 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
509: "Show me genes that stat3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show me genes that stat3 regulates" 8
                    END-OF-SOURCE
("Show me genes that stat3 regulates"
 (:VAR MV4753 :ISA SHOW :STATEMENT-OR-THEME MV4755 :BENEFICIARY MV4754 :PRESENT
  "PRESENT")
 (:VAR MV4755 :ISA GENE :PREDICATION MV4757 :RAW-TEXT "genes")
 (:VAR MV4757 :ISA REGULATE :OBJECT MV4755 :THAT-REL T :AGENT MV4752 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4752 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4754 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
510: "Show me the pahtways that involve SRF"

                    SOURCE-START
e15   SHOW          1 "Show me the pahtways that involve SRF" 8
                    END-OF-SOURCE
("Show me the pahtways that involve SRF"
 (:VAR MV4758 :ISA SHOW :STATEMENT-OR-THEME MV4761 :BENEFICIARY MV4759 :PRESENT
  "PRESENT")
 (:VAR MV4761 :ISA BIO-ENTITY :PREDICATION MV4763 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4763 :ISA INVOLVE :THEME MV4761 :THAT-REL T :THEME MV4764 :PRESENT
  "PRESENT")
 (:VAR MV4764 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4759 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
511: "Show me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show me what transcription factors are shared by elk1 and srf" 13
                    END-OF-SOURCE
("Show me what transcription factors are shared by elk1 and srf"
 (:VAR MV4778 :ISA SHOW :STATEMENT MV4776 :THEME MV4768 :PRESENT "PRESENT")
 (:VAR MV4776 :ISA SHARE :OBJECT MV4765 :PARTICIPANT MV4775 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV4765 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4775 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4766 MV4774))
 (:VAR MV4766 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4774 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4768 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
512: "Show me which genes are regulated by STAT3"

                    SOURCE-START
e16   SHOW          1 "Show me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Show me which genes are regulated by STAT3"
 (:VAR MV4789 :ISA SHOW :STATEMENT MV4787 :THEME MV4781 :PRESENT "PRESENT")
 (:VAR MV4787 :ISA REGULATE :OBJECT MV4783 :AGENT MV4779 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4783 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4779 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4781 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
513: "Show the genes which STAT3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("Show the genes which STAT3 regulates"
 (:VAR MV4791 :ISA SHOW :STATEMENT-OR-THEME MV4793 :PRESENT "PRESENT")
 (:VAR MV4793 :ISA GENE :PREDICATION MV4795 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4795 :ISA REGULATE :OBJECT MV4793 :AGENT MV4790 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4790 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
514: "Show the pahtways that involve SRF"

                    SOURCE-START
e13   SHOW          1 "Show the pahtways that involve SRF" 7
                    END-OF-SOURCE
("Show the pahtways that involve SRF"
 (:VAR MV4796 :ISA SHOW :STATEMENT-OR-THEME MV4798 :PRESENT "PRESENT")
 (:VAR MV4798 :ISA BIO-ENTITY :PREDICATION MV4800 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV4800 :ISA INVOLVE :THEME MV4798 :THAT-REL T :THEME MV4801 :PRESENT
  "PRESENT")
 (:VAR MV4801 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
515: "Show transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show transcription factors that are shared by elk1 and srf" 12
                    END-OF-SOURCE
("Show transcription factors that are shared by elk1 and srf"
 (:VAR MV4804 :ISA SHOW :STATEMENT-OR-THEME MV4802 :PRESENT "PRESENT")
 (:VAR MV4802 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4812 :RAW-TEXT
  "transcription factors")
 (:VAR MV4812 :ISA SHARE :OBJECT MV4802 :THAT-REL T :PARTICIPANT MV4811
  :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV4811 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4803 MV4810))
 (:VAR MV4803 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4810 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
516: "Tell me the genes which are regulated by STAT3"

                    SOURCE-START
e20   TELL          1 "Tell me the genes which are regulated by STAT3" 11
                    END-OF-SOURCE
("Tell me the genes which are regulated by STAT3"
 (:VAR MV4815 :ISA TELL :THEME MV4818 :BENEFICIARY MV4816 :PRESENT "PRESENT")
 (:VAR MV4818 :ISA GENE :PREDICATION MV4825 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4825 :ISA REGULATE :OBJECT MV4818 :AGENT MV4814 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4814 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4816 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
517: "Tell me what genes are regulated by elk1 and srf"

                    SOURCE-START
e19   TELL          1 "Tell me what genes are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("Tell me what genes are regulated by elk1 and srf"
 (:VAR MV4827 :ISA TELL :THEME MV4837 :THEME MV4828 :PRESENT "PRESENT")
 (:VAR MV4837 :ISA REGULATE :OBJECT MV4830 :AGENT MV4836 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4830 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV4836 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4826 MV4835))
 (:VAR MV4826 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4835 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4828 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
518: "Tell me which genes are regulated by STAT3"

                    SOURCE-START
e16   TELL          1 "Tell me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Tell me which genes are regulated by STAT3"
 (:VAR MV4840 :ISA TELL :THEME MV4847 :THEME MV4841 :PRESENT "PRESENT")
 (:VAR MV4847 :ISA REGULATE :OBJECT MV4843 :AGENT MV4839 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4843 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4839 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4841 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
519: "What are positive regulators of cfos?"

                    SOURCE-START
e10   BE            1 "What are positive regulators of cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of cfos?"
 (:VAR MV4851 :ISA BE :SUBJECT MV4850 :PREDICATE MV4849 :PRESENT "PRESENT")
 (:VAR MV4850 :ISA WHAT)
 (:VAR MV4849 :ISA POSITIVE-REGULATOR :THEME MV4853 :RAW-TEXT
  "positive regulators")
 (:VAR MV4853 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
520: "What are some regulators of SMURF2?"

                    SOURCE-START
e12   BE            1 "What are some regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some regulators of SMURF2?"
 (:VAR MV4857 :ISA BE :SUBJECT MV4856 :PREDICATE MV4859 :PRESENT "PRESENT")
 (:VAR MV4856 :ISA WHAT)
 (:VAR MV4859 :ISA REGULATOR :THEME MV4855 :QUANTIFIER MV4858 :RAW-TEXT
  "regulators")
 (:VAR MV4855 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN")
 (:VAR MV4858 :ISA SOME :WORD "some"))

___________________
521: "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"

                    SOURCE-START
e31   BE            1 "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
 (:VAR MV4868 :ISA BE :SUBJECT MV4867 :PREDICATE MV4871 :PRESENT "PRESENT")
 (:VAR MV4867 :ISA WHAT)
 (:VAR MV4871 :ISA REGULATOR :THEME MV4875 :HAS-DETERMINER "THE" :PREDICATION
  MV4870 :RAW-TEXT "regulators")
 (:VAR MV4875 :ISA COLLECTION :RAW-TEXT
  "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :TYPE PROTEIN :NUMBER 6 :ITEMS
  (MV4862 MV4863 MV4873 MV4864 MV4865 MV4866))
 (:VAR MV4862 :ISA PROTEIN :RAW-TEXT "ABI2" :UID "UP:Q9NYB9" :NAME
  "ABI2_HUMAN")
 (:VAR MV4863 :ISA PROTEIN :RAW-TEXT "ABL1" :UID "UP:P00519" :NAME
  "ABL1_HUMAN")
 (:VAR MV4873 :ISA PROTEIN :RAW-TEXT "ACADSB" :UID "UP:P45954" :NAME
  "ACDSB_HUMAN")
 (:VAR MV4864 :ISA PROTEIN :RAW-TEXT "ADGRL1" :UID "UP:O94910" :NAME
  "AGRL1_HUMAN")
 (:VAR MV4865 :ISA PROTEIN :RAW-TEXT "ADRM1" :UID "UP:Q16186" :NAME
  "ADRM1_HUMAN")
 (:VAR MV4866 :ISA PROTEIN :RAW-TEXT "AGAP1" :UID "UP:Q9UPQ3" :NAME
  "AGAP1_HUMAN")
 (:VAR MV4870 :ISA COMMON))

___________________
522: "What are the common regulators of elk1 and srf"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srf" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srf"
 (:VAR MV4879 :ISA BE :SUBJECT MV4878 :PREDICATE MV4882 :PRESENT "PRESENT")
 (:VAR MV4878 :ISA WHAT)
 (:VAR MV4882 :ISA REGULATOR :THEME MV4886 :HAS-DETERMINER "THE" :PREDICATION
  MV4881 :RAW-TEXT "regulators")
 (:VAR MV4886 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4877 MV4885))
 (:VAR MV4877 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4885 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4881 :ISA COMMON))

___________________
523: "What are the common regulators of elk1 and srg"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srg" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srg"
 (:VAR MV4890 :ISA BE :SUBJECT MV4889 :PREDICATE MV4893 :PRESENT "PRESENT")
 (:VAR MV4889 :ISA WHAT)
 (:VAR MV4893 :ISA REGULATOR :THEME MV4897 :HAS-DETERMINER "THE" :PREDICATION
  MV4892 :RAW-TEXT "regulators")
 (:VAR MV4897 :ISA COLLECTION :RAW-TEXT "elk1 and srg" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4888 MV4896))
 (:VAR MV4888 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4896 :ISA BIO-ENTITY :NAME "srg") (:VAR MV4892 :ISA COMMON))

___________________
524: "What are the common regulators of those genes"

                    SOURCE-START
e16   BE            1 "What are the common regulators of those genes" 9
                    END-OF-SOURCE
("What are the common regulators of those genes"
 (:VAR MV4900 :ISA BE :SUBJECT MV4899 :PREDICATE MV4903 :PRESENT "PRESENT")
 (:VAR MV4899 :ISA WHAT)
 (:VAR MV4903 :ISA REGULATOR :THEME MV4906 :HAS-DETERMINER "THE" :PREDICATION
  MV4902 :RAW-TEXT "regulators")
 (:VAR MV4906 :ISA GENE :HAS-DETERMINER "THOSE" :RAW-TEXT "genes")
 (:VAR MV4902 :ISA COMMON))

___________________
525: "What are the genes regulated by STAT3?"

                    SOURCE-START
e13   REGULATE      1 "What are the genes regulated by STAT3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes regulated by STAT3?"
 (:VAR MV4913 :ISA REGULATE :OBJECT
  (#<gene 91745> (HAS-DETERMINER (#<what 88303>))
   (HAS-DETERMINER (#<the 106> (WORD "the"))) (RAW-TEXT "genes"))
  :AGENT MV4908 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4908 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
526: "What are the genes which STAT3 regulates?"

                    SOURCE-START
e15   BE            1 "What are the genes which STAT3 regulates" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes which STAT3 regulates?"
 (:VAR MV4918 :ISA BE :SUBJECT MV4917 :PREDICATE MV4920 :PRESENT "PRESENT")
 (:VAR MV4917 :ISA WHAT)
 (:VAR MV4920 :ISA GENE :PREDICATION MV4922 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV4922 :ISA REGULATE :OBJECT MV4920 :AGENT MV4916 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV4916 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
527: "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV4927 :ISA BE :SUBJECT MV4926 :PREDICATE MV4931 :PRESENT "PRESENT")
 (:VAR MV4926 :ISA WHAT)
 (:VAR MV4931 :ISA REGULATOR :THEME MV4936 :HAS-DETERMINER "THE" :MODIFIER
  MV4930 :RAW-TEXT "regulators")
 (:VAR MV4936 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV4933 MV4934 MV4923 MV4924 MV4925))
 (:VAR MV4933 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV4934 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4923 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4924 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV4925 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN")
 (:VAR MV4930 :ISA FREQUENT :COMPARATIVE MV4929 :NAME "frequent")
 (:VAR MV4929 :ISA SUPERLATIVE-QUANTIFIER :NAME "most"))

___________________
528: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e28   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV4943 :ISA BE :SUBJECT MV4942 :PREDICATE MV4938 :PRESENT "PRESENT")
 (:VAR MV4942 :ISA WHAT)
 (:VAR MV4938 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4946 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV4946 :ISA REGULATE :AGENT MV4938 :THAT-REL T :OBJECT MV4950 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4950 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV4947 MV4948 MV4939 MV4940 MV4941))
 (:VAR MV4947 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV4948 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4939 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4940 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV4941 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
529: "What other genes are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other genes are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other genes are in the first pathway?"
 (:VAR MV4962 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4953 :VALUE MV4961 :PREP
  "IN" :PREDICATE MV4954)
 (:VAR MV4953 :ISA GENE :HAS-DETERMINER "WHAT" :QUANTIFIER MV4952 :RAW-TEXT
  "genes")
 (:VAR MV4952 :ISA OTHER :WORD "other")
 (:VAR MV4961 :ISA GENE :CONTEXT MV4958 :HAS-DETERMINER "WHAT" :QUANTIFIER
  MV4952 :RAW-TEXT "genes")
 (:VAR MV4958 :ISA PATHWAY :QUANTIFIER MV4957 :RAW-TEXT "pathway")
 (:VAR MV4957 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4952 :ISA OTHER :WORD "other")
 (:VAR MV4954 :ISA BE :PRESENT "PRESENT"))

___________________
530: "What other proteins are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other proteins are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other proteins are in the first pathway?"
 (:VAR MV4975 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4966 :VALUE MV4974 :PREP
  "IN" :PREDICATE MV4967)
 (:VAR MV4966 :ISA PROTEIN :HAS-DETERMINER "WHAT" :QUANTIFIER MV4965 :RAW-TEXT
  "proteins")
 (:VAR MV4965 :ISA OTHER :WORD "other")
 (:VAR MV4974 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV4971 :HAS-DETERMINER "WHAT"
  :QUANTIFIER MV4965 :RAW-TEXT "proteins")
 (:VAR MV4971 :ISA PATHWAY :QUANTIFIER MV4970 :RAW-TEXT "pathway")
 (:VAR MV4970 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4965 :ISA OTHER :WORD "other")
 (:VAR MV4967 :ISA BE :PRESENT "PRESENT"))

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
 (:VAR MV4995 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4986 :VALUE MV4994 :PREP
  "IN" :PREDICATE MV4987)
 (:VAR MV4986 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV4994 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV4991 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "proteins")
 (:VAR MV4991 :ISA PATHWAY :QUANTIFIER MV4990 :RAW-TEXT "pathway")
 (:VAR MV4990 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4987 :ISA BE :PRESENT "PRESENT"))

___________________
534: "What pathways involve frizzled8?"

                    SOURCE-START
e7    INVOLVE       1 "What pathways involve frizzled8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve frizzled8?"
 (:VAR MV5000 :ISA INVOLVE :THEME MV4999 :THEME MV4997 :PRESENT "PRESENT")
 (:VAR MV4999 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV4997 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
535: "What genes are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What genes are in the first pathway" 8
                    END-OF-SOURCE
("What genes are in the first pathway"
 (:VAR MV5011 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5002 :VALUE MV5010 :PREP
  "IN" :PREDICATE MV5003)
 (:VAR MV5002 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5010 :ISA GENE :CONTEXT MV5007 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV5007 :ISA PATHWAY :QUANTIFIER MV5006 :RAW-TEXT "pathway")
 (:VAR MV5006 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV5003 :ISA BE :PRESENT "PRESENT"))

___________________
536: "What questions can you answer about microRNAs?"

                    SOURCE-START
e13   ANSWER        1 "What questions can you answer about microRNAs" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What questions can you answer about microRNAs?"
 (:VAR MV5023 :ISA ANSWER :PATIENT MV5014 :MODAL MV5016 :AGENT MV5017 :THEME
  MV5021 :PRESENT "PRESENT")
 (:VAR MV5014 :ISA BIO-QUESTION :HAS-DETERMINER "WHAT") (:VAR MV5016 :ISA CAN)
 (:VAR MV5017 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5021 :ISA MICRO-RNA :RAW-TEXT "microRNAs"))

___________________
537: "What transcription factors regulate mothers against decapentaplegic?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate mothers against decapentaplegic" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate mothers against decapentaplegic?"
 (:VAR MV5027 :ISA REGULATE :AGENT MV5024 :OBJECT MV5025 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5024 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5025 :ISA PROTEIN-FAMILY :RAW-TEXT "mothers against decapentaplegic"
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
 (:VAR MV5031 :ISA REGULATE :LOCATION MV5029 :AGENT MV5028 :OBJECT MV5032
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5029 :ISA WHERE)
 (:VAR MV5028 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5032 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
539: "Which KEGG pathways involve ATP?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve ATP" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve ATP?"
 (:VAR MV5036 :ISA INVOLVE :THEME MV5035 :THEME MV5037 :PRESENT "PRESENT")
 (:VAR MV5035 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5034 :RAW-TEXT
  "pathways")
 (:VAR MV5034 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV5037 :ISA NUCLEOTIDE :RAW-TEXT "ATP" :UID "PCID:5957"))

___________________
540: "Which genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are in the MAPK signaling pathway?"
 (:VAR MV5048 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5040 :VALUE MV5047 :PREP
  "IN" :PREDICATE MV5041)
 (:VAR MV5040 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5047 :ISA GENE :CONTEXT MV5038 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV5038 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5044
  :RAW-TEXT "signaling pathway")
 (:VAR MV5044 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV5041 :ISA BE :PRESENT "PRESENT"))

___________________
541: "Which genes are involved in the oncogenic MAPK signaling pathway?"

                    SOURCE-START
e19   INVOLVE       1 "Which genes are involved in the oncogenic MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are involved in the oncogenic MAPK signaling pathway?"
 (:VAR MV5061 :ISA INVOLVE :THEME MV5052 :CONTEXT MV5050 :PRESENT "PRESENT")
 (:VAR MV5052 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5050 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :PREDICATION MV5057
  :MODIFIER MV5058 :RAW-TEXT "signaling pathway")
 (:VAR MV5057 :ISA ONCOGENIC)
 (:VAR MV5058 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV5064 :ISA REGULATE :AGENT MV5063 :OBJECT MV5065 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5063 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5065 :ISA BIO-ENTITY :NAME "x"))

___________________
543: "Which kinases negatively regulate x?"

                    SOURCE-START
e7    DOWNREGULATE  1 "Which kinases negatively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate x?"
 (:VAR MV5066 :ISA DOWNREGULATE :AGENT MV5068 :OBJECT MV5069 :PRESENT "PRESENT"
  :RAW-TEXT "negatively regulate")
 (:VAR MV5068 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5069 :ISA BIO-ENTITY :NAME "x"))

___________________
544: "Which kinases positively regulate x?"

                    SOURCE-START
e7    UPREGULATE    1 "Which kinases positively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases positively regulate x?"
 (:VAR MV5070 :ISA UPREGULATE :AGENT MV5072 :OBJECT MV5073 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulate")
 (:VAR MV5072 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5073 :ISA BIO-ENTITY :NAME "x"))

___________________
545: "Which of these are in immune pathways?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune pathways?"
 (:VAR MV5082 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5076 :VALUE MV5080 :PREP
  MV5078 :PREDICATE MV5077)
 (:VAR MV5076 :ISA THESE :QUANTIFIER MV5074 :WORD "these")
 (:VAR MV5074 :ISA WHICH)
 (:VAR MV5080 :ISA PATHWAY :MODIFIER MV5079 :RAW-TEXT "pathways")
 (:VAR MV5079 :ISA IMMUNE :NAME "immune") (:VAR MV5078 :ISA IN :WORD "in")
 (:VAR MV5077 :ISA BE :PRESENT "PRESENT"))

___________________
546: "Which of these are in immune system pathways?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which of these are in immune system pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune system pathways?"
 (:VAR MV5092 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5087 :VALUE MV5090 :PREP
  MV5089 :PREDICATE MV5088)
 (:VAR MV5087 :ISA THESE :QUANTIFIER MV5085 :WORD "these")
 (:VAR MV5085 :ISA WHICH)
 (:VAR MV5090 :ISA PATHWAY :NON-CELLULAR-LOCATION MV5084 :RAW-TEXT "pathways")
 (:VAR MV5084 :ISA BIO-ORGAN :UID "UBERON:0002405")
 (:VAR MV5089 :ISA IN :WORD "in") (:VAR MV5088 :ISA BE :PRESENT "PRESENT"))

___________________
547: "What are the genes STAT3 regulates?"

                    SOURCE-START
e13   BE            1 "What are the genes STAT3 regulates" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes STAT3 regulates?"
 (:VAR MV5096 :ISA BE :SUBJECT MV5095 :PREDICATE MV5098 :PRESENT "PRESENT")
 (:VAR MV5095 :ISA WHAT)
 (:VAR MV5098 :ISA GENE :PREDICATION MV5099 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV5099 :ISA REGULATE :OBJECT MV5098 :AGENT MV5094 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5094 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
548: "Which of those are in the immune pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Which of those are in the immune pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are in the immune pathway?"
 (:VAR MV5109 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5102 :VALUE MV5107 :PREP
  MV5104 :PREDICATE MV5103)
 (:VAR MV5102 :ISA THOSE :QUANTIFIER MV5100 :WORD "those")
 (:VAR MV5100 :ISA WHICH)
 (:VAR MV5107 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5106 :RAW-TEXT
  "pathway")
 (:VAR MV5106 :ISA IMMUNE :NAME "immune") (:VAR MV5104 :ISA IN :WORD "in")
 (:VAR MV5103 :ISA BE :PRESENT "PRESENT"))

___________________
549: "Which pathways involve p53?"

                    SOURCE-START
e7    INVOLVE       1 "Which pathways involve p53" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve p53?"
 (:VAR MV5114 :ISA INVOLVE :THEME MV5113 :THEME MV5111 :PRESENT "PRESENT")
 (:VAR MV5113 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV5111 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
550: "can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("can you show me the pahtways that involve SRF"
 (:VAR MV5124 :ISA POLAR-QUESTION :STATEMENT MV5117)
 (:VAR MV5117 :ISA SHOW :AGENT MV5116 :STATEMENT-OR-THEME MV5120 :BENEFICIARY
  MV5118 :MODAL "CAN")
 (:VAR MV5116 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5120 :ISA BIO-ENTITY :PREDICATION MV5122 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV5122 :ISA INVOLVE :THEME MV5120 :THAT-REL T :THEME MV5123 :MODAL
  "CAN")
 (:VAR MV5123 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5118 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
551: "Does Selumetinib inhibit MAP2K1?"

                    SOURCE-START
e9    INHIBIT       1 "Does Selumetinib inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib inhibit MAP2K1?"
 (:VAR MV5130 :ISA POLAR-QUESTION :STATEMENT MV5129)
 (:VAR MV5129 :ISA INHIBIT :AGENT MV5127 :OBJECT MV5125 :RAW-TEXT "inhibit")
 (:VAR MV5127 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV5125 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
552: "Let's build a model of the KRAS neighborhood."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's build a model of the KRAS neighborhood" 11
                    PERIOD
                    END-OF-SOURCE
("Let's build a model of the KRAS neighborhood."
 (:VAR MV5140 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV5132 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV5132 :ISA BUILD :ARTIFACT MV5134 :PRESENT "PRESENT")
 (:VAR MV5134 :ISA MODEL :OBJECT MV5138 :HAS-DETERMINER "A")
 (:VAR MV5138 :ISA NEIGHBORHOOD :HAS-DETERMINER "THE" :MODIFIER MV5137)
 (:VAR MV5137 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN"))

___________________
553: "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."

                    SOURCE-START
e28   KNOW          1 "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk" 15
                    PERIOD
                    END-OF-SOURCE
("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
 (:VAR MV5158 :ISA COLLECTION :TYPE KNOW :NUMBER 2 :ITEMS (MV5156 MV5157))
 (:VAR MV5156 :ISA KNOW :AGENT MV5141 :STATEMENT MV5147 :PRESENT "PRESENT")
 (:VAR MV5141 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV5147 :ISA BIO-ACTIVATE :AGENT MV5146 :OBJECT MV5148 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5146 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5148 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5157 :ISA COLLECTION :RAW-TEXT
  "Raf activates Mek and Mek activates Erk" :TYPE BIO-ACTIVATE :NUMBER 2 :ITEMS
  (MV5150 MV5154))
 (:VAR MV5150 :ISA BIO-ACTIVATE :AGENT MV5149 :OBJECT MV5151 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5149 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5151 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5154 :ISA BIO-ACTIVATE :AGENT MV5153 :OBJECT MV5155 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5153 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5155 :ISA PROTEIN-FAMILY :RAW-TEXT "Erk" :NAME "ERK" :COUNT 7
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
 (:VAR MV5161 :ISA PHOSPHORYLATE :AGENT MV5159 :SUBSTRATE MV5160 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV5159 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV5160 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
555: "DUSP6 dephosphorylates MAPK1."

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1."
 (:VAR MV5164 :ISA DEPHOSPHORYLATE :AGENT MV5162 :SUBSTRATE MV5163 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV5162 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV5163 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
556: "Is the amount of phosphorylated MAPK1 always high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always high?"
 (:VAR MV5175 :ISA POLAR-QUESTION :STATEMENT MV5174)
 (:VAR MV5174 :ISA COPULAR-PREDICATION :ITEM MV5168 :VALUE MV5172 :PREDICATE
  MV5166)
 (:VAR MV5168 :ISA BIO-AMOUNT :MEASURED-ITEM MV5165 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5165 :ISA PROTEIN :PREDICATION MV5170 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5170 :ISA PHOSPHORYLATE :SUBSTRATE MV5165 :RAW-TEXT "phosphorylated")
 (:VAR MV5172 :ISA HIGH :ADVERB MV5171)
 (:VAR MV5171 :ISA ALWAYS :NAME "always") (:VAR MV5166 :ISA BE))

___________________
557: "Is the amount of phosphorylated MAPK1 always low?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always low" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always low?"
 (:VAR MV5186 :ISA POLAR-QUESTION :STATEMENT MV5185)
 (:VAR MV5185 :ISA COPULAR-PREDICATION :ITEM MV5179 :VALUE MV5183 :PREDICATE
  MV5177)
 (:VAR MV5179 :ISA BIO-AMOUNT :MEASURED-ITEM MV5176 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5176 :ISA PROTEIN :PREDICATION MV5181 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5181 :ISA PHOSPHORYLATE :SUBSTRATE MV5176 :RAW-TEXT "phosphorylated")
 (:VAR MV5183 :ISA LOW :ADVERB MV5182) (:VAR MV5182 :ISA ALWAYS :NAME "always")
 (:VAR MV5177 :ISA BE))

___________________
558: "Does the MAP2K1-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the MAP2K1-MAPK1 complex vanish" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the MAP2K1-MAPK1 complex vanish?"
 (:VAR MV5196 :ISA POLAR-QUESTION :STATEMENT MV5195)
 (:VAR MV5195 :ISA VANISH :AGENT MV5194 :RAW-TEXT "vanish")
 (:VAR MV5194 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV5188 :COMPONENT MV5187)
 (:VAR MV5188 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5187 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
559: "Does the DUSP6-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the DUSP6-MAPK1 complex vanish" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the DUSP6-MAPK1 complex vanish?"
 (:VAR MV5206 :ISA POLAR-QUESTION :STATEMENT MV5205)
 (:VAR MV5205 :ISA VANISH :AGENT MV5204 :RAW-TEXT "vanish")
 (:VAR MV5204 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "DUSP6-MAPK1"
  :COMPONENT MV5198 :COMPONENT MV5197)
 (:VAR MV5198 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5197 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN"))

___________________
560: "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e49   EVENT-RELATION  1 "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV5234 :ISA POLAR-QUESTION :STATEMENT MV5233)
 (:VAR MV5233 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV5230 :EVENT MV5226)
 (:VAR MV5230 :ISA WH-QUESTION :STATEMENT MV5227 :WH IF)
 (:VAR MV5227 :ISA INCREASE :AGENT-OR-CAUSE MV5216 :MULTIPLIER MV5225
  :AFFECTED-PROCESS-OR-OBJECT MV5220 :RAW-TEXT "increase")
 (:VAR MV5216 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV5225 :ISA N-FOLD :NUMBER MV5224) (:VAR MV5224 :ISA NUMBER :VALUE 10)
 (:VAR MV5220 :ISA BIO-AMOUNT :MEASURED-ITEM MV5208 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5208 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV5226 :ISA VANISH :CAUSE MV5211 :RAW-TEXT "vanish")
 (:VAR MV5211 :ISA BIO-AMOUNT :MEASURED-ITEM MV5207 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5207 :ISA PROTEIN :PREDICATION MV5213 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5213 :ISA PHOSPHORYLATE :SUBSTRATE MV5207 :RAW-TEXT "phosphorylated"))

___________________
561: "Show me the evidence that kras regulates fzd8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates fzd8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras regulates fzd8."
 (:VAR MV5236 :ISA SHOW :STATEMENT-OR-THEME MV5243 :BENEFICIARY MV5237 :PRESENT
  "PRESENT")
 (:VAR MV5243 :ISA EVIDENCE :STATEMENT MV5242 :HAS-DETERMINER "THE")
 (:VAR MV5242 :ISA REGULATE :AGENT MV5241 :OBJECT MV5235 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5241 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5235 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV5237 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
562: "What increases the amount of fzd8?"

                    SOURCE-START
e14   INCREASE      1 "What increases the amount of fzd8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of fzd8?"
 (:VAR MV5247 :ISA INCREASE :AGENT-OR-CAUSE MV5245 :AFFECTED-PROCESS-OR-OBJECT
  MV5249 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5245 :ISA WHAT)
 (:VAR MV5249 :ISA BIO-AMOUNT :MEASURED-ITEM MV5244 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5244 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
563: "Which kinases are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signaling pathway?"
 (:VAR MV5262 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5254 :VALUE MV5261 :PREP
  "IN" :PREDICATE MV5255)
 (:VAR MV5254 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5261 :ISA KINASE :CONTEXT-OR-IN-PATHWAY MV5252 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "kinases")
 (:VAR MV5252 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5258
  :RAW-TEXT "signaling pathway")
 (:VAR MV5258 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV5255 :ISA BE :PRESENT "PRESENT"))

___________________
564: "Does STAT3 regulate the c-fos gene in the liver?"

                    SOURCE-START
e23   REGULATE      1 "Does STAT3 regulate the c-fos gene in the liver" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in the liver?"
 (:VAR MV5275 :ISA POLAR-QUESTION :STATEMENT MV5273)
 (:VAR MV5273 :ISA REGULATE :AGENT MV5264 :OBJECT MV5269 :RAW-TEXT "regulate")
 (:VAR MV5264 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5269 :ISA GENE :ORGAN MV5272 :HAS-DETERMINER "THE" :EXPRESSES MV5265
  :RAW-TEXT "gene")
 (:VAR MV5272 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV5265 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
565: "what genes are regulated by smad2?"

                    SOURCE-START
e12   REGULATE      1 "what genes are regulated by smad2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by smad2?"
 (:VAR MV5282 :ISA REGULATE :OBJECT MV5278 :AGENT MV5276 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5278 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5276 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
566: "Which of these are regulated by smad2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by smad2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by smad2?"
 (:VAR MV5291 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV5287 :AGENT MV5284
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV5287 :ISA THESE :QUANTIFIER MV5285 :WORD "these")
 (:VAR MV5285 :ISA WHICH)
 (:VAR MV5284 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
567: "Which of these also regulate cfos?"

                    SOURCE-START
e12   REGULATE      1 "Which of these also regulate cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these also regulate cfos?"
 (:VAR MV5299 :ISA REGULATE :AGENT-OR-CAUSE MV5296 :OBJECT MV5300 :PRESENT
  "PRESENT" :ADVERB MV5297 :RAW-TEXT "regulate")
 (:VAR MV5296 :ISA THESE :QUANTIFIER MV5294 :WORD "these")
 (:VAR MV5294 :ISA WHICH)
 (:VAR MV5300 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV5297 :ISA ALSO :NAME "also"))

___________________
568: "what transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors transcribe SMURF2?"
 (:VAR MV5305 :ISA TRANSCRIBE :AGENT MV5302 :OBJECT MV5303 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV5302 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5303 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
569: "what transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factor transcribes SMURF2?"
 (:VAR MV5309 :ISA TRANSCRIBE :AGENT MV5306 :OBJECT MV5307 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV5306 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV5307 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
570: "Which KEGG pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which KEGG pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways utilize SRF?"
 (:VAR MV5313 :ISA UTILIZE :PARTICIPANT MV5312 :OBJECT MV5314 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV5312 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5311 :RAW-TEXT
  "pathways")
 (:VAR MV5311 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV5314 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV5328 :ISA INVOLVE :THEME MV5327 :THEME MV5325 :PRESENT "PRESENT")
 (:VAR MV5327 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5325 :ISA BIO-ORGAN :HAS-DETERMINER "THE" :UID "UBERON:0002405"))

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
 (:VAR MV5387 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
580: "Is stat3 a kinase?"

                    SOURCE-START
e9    BE            1 "Is stat3 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 a kinase?"
 (:VAR MV5396 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89953>
   (PREDICATE
    (#<kinase 89952> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
581: "Is STAT3 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is STAT3 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor?"
 (:VAR MV5401 :ISA POLAR-QUESTION :STATEMENT
  (#<be 92018>
   (PREDICATE
    (#<transcription-factor 89964> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

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
e11   BE            1 "Which of these are tyrosine kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinases?"
 (:VAR MV5412 :ISA BE :SUBJECT MV5411 :PREDICATE MV5414 :PRESENT "PRESENT")
 (:VAR MV5411 :ISA THESE :QUANTIFIER MV5409 :WORD "these")
 (:VAR MV5409 :ISA WHICH)
 (:VAR MV5414 :ISA KINASE :AMINO-ACID MV5413 :RAW-TEXT "kinases")
 (:VAR MV5413 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

___________________
584: "Which of these are serine/threonine kinases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine kinases?"
 (:VAR MV5419 :ISA BE :SUBJECT MV5418 :PREDICATE MV5422 :PRESENT "PRESENT")
 (:VAR MV5418 :ISA THESE :QUANTIFIER MV5416 :WORD "these")
 (:VAR MV5416 :ISA WHICH)
 (:VAR MV5422 :ISA KINASE :AMINO-ACID MV5423 :RAW-TEXT "kinases")
 (:VAR MV5423 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID
  :ITEMS (MV5420 MV5421))
 (:VAR MV5420 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5421 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
585: "Which of these are phosphatases?"

                    SOURCE-START
e9    BE            1 "Which of these are phosphatases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are phosphatases?"
 (:VAR MV5428 :ISA BE :SUBJECT MV5427 :PREDICATE MV5429 :PRESENT "PRESENT")
 (:VAR MV5427 :ISA THESE :QUANTIFIER MV5425 :WORD "these")
 (:VAR MV5425 :ISA WHICH)
 (:VAR MV5429 :ISA PHOSPHATASE :RAW-TEXT "phosphatases"))

___________________
586: "Which of these are proteases?"

                    SOURCE-START
e9    BE            1 "Which of these are proteases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are proteases?"
 (:VAR MV5434 :ISA BE :SUBJECT MV5433 :PREDICATE MV5435 :PRESENT "PRESENT")
 (:VAR MV5433 :ISA THESE :QUANTIFIER MV5431 :WORD "these")
 (:VAR MV5431 :ISA WHICH)
 (:VAR MV5435 :ISA PROTEIN :RAW-TEXT "proteases" :UID "UP:P63127" :NAME
  "VPK9_HUMAN"))

___________________
587: "Which of these are receptors?"

                    SOURCE-START
e9    BE            1 "Which of these are receptors" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptors?"
 (:VAR MV5440 :ISA BE :SUBJECT MV5439 :PREDICATE MV5441 :PRESENT "PRESENT")
 (:VAR MV5439 :ISA THESE :QUANTIFIER MV5437 :WORD "these")
 (:VAR MV5437 :ISA WHICH) (:VAR MV5441 :ISA RECEPTOR :RAW-TEXT "receptors"))

___________________
588: "Which of these are tyrosine kinase receptors?"

                    SOURCE-START
e13   BE            1 "Which of these are tyrosine kinase receptors" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinase receptors?"
 (:VAR MV5446 :ISA BE :SUBJECT MV5445 :PREDICATE MV5449 :PRESENT "PRESENT")
 (:VAR MV5445 :ISA THESE :QUANTIFIER MV5443 :WORD "these")
 (:VAR MV5443 :ISA WHICH)
 (:VAR MV5449 :ISA RECEPTOR :MODIFIER MV5447 :MODIFIER MV5448 :RAW-TEXT
  "receptors")
 (:VAR MV5447 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine")
 (:VAR MV5448 :ISA KINASE :RAW-TEXT "kinase"))

___________________
589: "Which of these are histone demethylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone demethylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone demethylases?"
 (:VAR MV5455 :ISA BE :SUBJECT MV5454 :PREDICATE MV5451 :PRESENT "PRESENT")
 (:VAR MV5454 :ISA THESE :QUANTIFIER MV5452 :WORD "these")
 (:VAR MV5452 :ISA WHICH)
 (:VAR MV5451 :ISA PROTEIN-FAMILY :RAW-TEXT "histone demethylases" :NAME
  "histone demethylase" :UID "GO:0032452"))

___________________
590: "Which of these are histone methylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methylases?"
 (:VAR MV5461 :ISA BE :SUBJECT MV5460 :PREDICATE MV5457 :PRESENT "PRESENT")
 (:VAR MV5460 :ISA THESE :QUANTIFIER MV5458 :WORD "these")
 (:VAR MV5458 :ISA WHICH)
 (:VAR MV5457 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methylases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
591: "Which of these are histone methyltransferases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methyltransferases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methyltransferases?"
 (:VAR MV5467 :ISA BE :SUBJECT MV5466 :PREDICATE MV5463 :PRESENT "PRESENT")
 (:VAR MV5466 :ISA THESE :QUANTIFIER MV5464 :WORD "these")
 (:VAR MV5464 :ISA WHICH)
 (:VAR MV5463 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methyltransferases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
592: "Which of these are demethylases?"

                    SOURCE-START
e9    BE            1 "Which of these are demethylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are demethylases?"
 (:VAR MV5472 :ISA BE :SUBJECT MV5471 :PREDICATE MV5473 :PRESENT "PRESENT")
 (:VAR MV5471 :ISA THESE :QUANTIFIER MV5469 :WORD "these")
 (:VAR MV5469 :ISA WHICH)
 (:VAR MV5473 :ISA PROTEIN-FAMILY :RAW-TEXT "demethylases" :NAME "demethylase"
  :UID "GO:0032451"))

___________________
593: "Which of these are methylases?"

                    SOURCE-START
e9    BE            1 "Which of these are methylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methylases?"
 (:VAR MV5478 :ISA BE :SUBJECT MV5477 :PREDICATE MV5479 :PRESENT "PRESENT")
 (:VAR MV5477 :ISA THESE :QUANTIFIER MV5475 :WORD "these")
 (:VAR MV5475 :ISA WHICH)
 (:VAR MV5479 :ISA PROTEIN-FAMILY :RAW-TEXT "methylases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
594: "Which of these are methyltransferases?"

                    SOURCE-START
e9    BE            1 "Which of these are methyltransferases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methyltransferases?"
 (:VAR MV5484 :ISA BE :SUBJECT MV5483 :PREDICATE MV5485 :PRESENT "PRESENT")
 (:VAR MV5483 :ISA THESE :QUANTIFIER MV5481 :WORD "these")
 (:VAR MV5481 :ISA WHICH)
 (:VAR MV5485 :ISA PROTEIN-FAMILY :RAW-TEXT "methyltransferases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
595: "Which of these are steroid receptors?"

                    SOURCE-START
e11   BE            1 "Which of these are steroid receptors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are steroid receptors?"
 (:VAR MV5490 :ISA BE :SUBJECT MV5489 :PREDICATE MV5492 :PRESENT "PRESENT")
 (:VAR MV5489 :ISA THESE :QUANTIFIER MV5487 :WORD "these")
 (:VAR MV5487 :ISA WHICH)
 (:VAR MV5492 :ISA RECEPTOR :MODIFIER MV5491 :RAW-TEXT "receptors")
 (:VAR MV5491 :ISA MOLECULE :RAW-TEXT "steroid" :NAME "steroid" :UID
  "CHEBI:35341"))

___________________
596: "Which of these are receptor tyrosine kinases?"

                    SOURCE-START
e10   BE            1 "Which of these are receptor tyrosine kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptor tyrosine kinases?"
 (:VAR MV5498 :ISA BE :SUBJECT MV5497 :PREDICATE MV5494 :PRESENT "PRESENT")
 (:VAR MV5497 :ISA THESE :QUANTIFIER MV5495 :WORD "these")
 (:VAR MV5495 :ISA WHICH)
 (:VAR MV5494 :ISA PROTEIN-FAMILY :RAW-TEXT "receptor tyrosine kinases" :NAME
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
 (:VAR MV5504 :ISA BE :SUBJECT MV5503 :PREDICATE MV5500 :PRESENT "PRESENT")
 (:VAR MV5503 :ISA THESE :QUANTIFIER MV5501 :WORD "these")
 (:VAR MV5501 :ISA WHICH)
 (:VAR MV5500 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
598: "Which of these are DNA binding proteins?"

                    SOURCE-START
e12   BE            1 "Which of these are DNA binding proteins" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are DNA binding proteins?"
 (:VAR MV5510 :ISA BE :SUBJECT MV5509 :PREDICATE MV5511 :PRESENT "PRESENT")
 (:VAR MV5509 :ISA THESE :QUANTIFIER MV5507 :WORD "these")
 (:VAR MV5507 :ISA WHICH)
 (:VAR MV5511 :ISA PROTEIN :MODIFIER MV5506 :RAW-TEXT "proteins")
 (:VAR MV5506 :ISA DNA-BINDING :RAW-TEXT "DNA binding"))

___________________
599: "Which of these are serine/threonine phosphatases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine phosphatases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine phosphatases?"
 (:VAR MV5516 :ISA BE :SUBJECT MV5515 :PREDICATE MV5519 :PRESENT "PRESENT")
 (:VAR MV5515 :ISA THESE :QUANTIFIER MV5513 :WORD "these")
 (:VAR MV5513 :ISA WHICH)
 (:VAR MV5519 :ISA PHOSPHATASE :MODIFIER MV5520 :RAW-TEXT "phosphatases")
 (:VAR MV5520 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID
  :ITEMS (MV5517 MV5518))
 (:VAR MV5517 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5518 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
600: "Which of these are tyrosine phosphatases?"

                    SOURCE-START
e11   BE            1 "Which of these are tyrosine phosphatases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine phosphatases?"
 (:VAR MV5525 :ISA BE :SUBJECT MV5524 :PREDICATE MV5527 :PRESENT "PRESENT")
 (:VAR MV5524 :ISA THESE :QUANTIFIER MV5522 :WORD "these")
 (:VAR MV5522 :ISA WHICH)
 (:VAR MV5527 :ISA PHOSPHATASE :MODIFIER MV5526 :RAW-TEXT "phosphatases")
 (:VAR MV5526 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

___________________
601: "What does MEK phosphorylate?"

                    SOURCE-START
e5    PHOSPHORYLATE 1 "What does MEK phosphorylate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does MEK phosphorylate?"
 (:VAR MV5532 :ISA PHOSPHORYLATE :AMINO-ACID MV5529 :AGENT MV5531 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV5529 :ISA WHAT)
 (:VAR MV5531 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV5541 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5535 :ORGAN MV5540
  :PRESENT "PRESENT" :ADVERB MV5537 :RAW-TEXT "expressed")
 (:VAR MV5535 :ISA THESE :QUANTIFIER MV5533 :WORD "these")
 (:VAR MV5533 :ISA WHICH) (:VAR MV5540 :ISA LIVER)
 (:VAR MV5537 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
603: "What regulates frizzled8?"

                    SOURCE-START
e5    REGULATE      1 "What regulates frizzled8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates frizzled8?"
 (:VAR MV5546 :ISA REGULATE :AGENT-OR-CAUSE MV5545 :OBJECT MV5544 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5545 :ISA WHAT)
 (:VAR MV5544 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
604: "What increases the amount of myc?"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of myc?"
 (:VAR MV5549 :ISA INCREASE :AGENT-OR-CAUSE MV5547 :AFFECTED-PROCESS-OR-OBJECT
  MV5551 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5547 :ISA WHAT)
 (:VAR MV5551 :ISA BIO-AMOUNT :MEASURED-ITEM MV5553 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5553 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
605: "What upregulates myc?"

                    SOURCE-START
e4    UPREGULATE    1 "What upregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates myc?"
 (:VAR MV5556 :ISA UPREGULATE :AGENT-OR-CAUSE MV5555 :OBJECT MV5557 :PRESENT
  "PRESENT" :RAW-TEXT "upregulates")
 (:VAR MV5555 :ISA WHAT)
 (:VAR MV5557 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
606: "What downregulates myc?"

                    SOURCE-START
e4    DOWNREGULATE  1 "What downregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates myc?"
 (:VAR MV5559 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV5558 :OBJECT MV5560 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV5558 :ISA WHAT)
 (:VAR MV5560 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
607: "What decreases the amount of GFAP?"

                    SOURCE-START
e12   DECREASE      1 "What decreases the amount of GFAP" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What decreases the amount of GFAP?"
 (:VAR MV5562 :ISA DECREASE :AGENT-OR-CAUSE MV5561 :AFFECTED-PROCESS-OR-OBJECT
  MV5564 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5561 :ISA WHAT)
 (:VAR MV5564 :ISA BIO-AMOUNT :MEASURED-ITEM MV5566 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5566 :ISA PROTEIN :RAW-TEXT "GFAP" :UID "UP:P14136" :NAME
  "GFAP_HUMAN"))

___________________
608: "What regulates GLUL?"

                    SOURCE-START
e4    REGULATE      1 "What regulates GLUL" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL?"
 (:VAR MV5569 :ISA REGULATE :AGENT-OR-CAUSE MV5568 :OBJECT MV5570 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5568 :ISA WHAT)
 (:VAR MV5570 :ISA PROTEIN :RAW-TEXT "GLUL" :UID "UP:P15104" :NAME
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
("Is stat3 expressed in liver?"
 (:VAR MV5669 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV5667 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV5667 :ISA LIVER))

___________________
621: "Is stat3 exclusively expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 exclusively expressed in liver?"
 (:VAR MV5678 :ISA POLAR-QUESTION :STATEMENT MV5676)
 (:VAR MV5676 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5670 :ORGAN MV5675 :ADVERB
  MV5672 :RAW-TEXT "expressed")
 (:VAR MV5670 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5675 :ISA LIVER) (:VAR MV5672 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
622: "How does MAP4K2 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP4K2 affect CXCL8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP4K2 affect CXCL8?"
 (:VAR MV5683 :ISA AFFECT :MANNER MV5681 :AGENT MV5679 :OBJECT MV5680 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5681 :ISA HOW)
 (:VAR MV5679 :ISA PROTEIN :RAW-TEXT "MAP4K2" :UID "UP:Q12851" :NAME
  "M4K2_HUMAN")
 (:VAR MV5680 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
623: "How does ERK affect CXCL8?"

                    SOURCE-START
e8    AFFECT        1 "How does ERK affect CXCL8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does ERK affect CXCL8?"
 (:VAR MV5688 :ISA AFFECT :MANNER MV5685 :AGENT MV5687 :OBJECT MV5684 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5685 :ISA HOW)
 (:VAR MV5687 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5684 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
624: "What are the common upstream regulators of CXCL8 and CXCL10?"

                    SOURCE-START
e22   BE            1 "What are the common upstream regulators of CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of CXCL8 and CXCL10?"
 (:VAR MV5692 :ISA BE :SUBJECT MV5691 :PREDICATE MV5697 :PRESENT "PRESENT")
 (:VAR MV5691 :ISA WHAT)
 (:VAR MV5697 :ISA REGULATOR :THEME MV5700 :HAS-DETERMINER "THE" :PREDICATION
  MV5694 :CONTEXT MV5695 :RAW-TEXT "regulators")
 (:VAR MV5700 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5689 MV5690))
 (:VAR MV5689 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5690 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV5694 :ISA COMMON)
 (:VAR MV5695 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
625: "What are the paths between MAP3K7 and CXCL8?"

                    SOURCE-START
e16   BE            1 "What are the paths between MAP3K7 and CXCL8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between MAP3K7 and CXCL8?"
 (:VAR MV5705 :ISA BE :SUBJECT MV5704 :PREDICATE MV5707 :PRESENT "PRESENT")
 (:VAR MV5704 :ISA WHAT)
 (:VAR MV5707 :ISA PATH :ENDPOINTS MV5710 :HAS-DETERMINER "THE")
 (:VAR MV5710 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5702 MV5703))
 (:VAR MV5702 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5703 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
626: "Does MAP3K7 affect IKK?"

                    SOURCE-START
e9    AFFECT        1 "Does MAP3K7 affect IKK" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP3K7 affect IKK?" (:VAR MV5717 :ISA POLAR-QUESTION :STATEMENT MV5716)
 (:VAR MV5716 :ISA AFFECT :AGENT MV5712 :OBJECT MV5715 :RAW-TEXT "affect")
 (:VAR MV5712 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5715 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5719 :ISA REGULATE :AGENT MV5718 :OBJECT MV5720 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5718 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5720 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5722 :ISA UPREGULATE :AGENT MV5721 :OBJECT MV5723 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV5721 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5723 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5724 :ISA UPREGULATE :AGENT MV5726 :OBJECT MV5725 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV5726 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5725 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
630: "Does NFkappaB regulate the CXCL8 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does NFkappaB regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate the CXCL8 gene?"
 (:VAR MV5736 :ISA POLAR-QUESTION :STATEMENT MV5735)
 (:VAR MV5735 :ISA REGULATE :AGENT MV5730 :OBJECT MV5734 :RAW-TEXT "regulate")
 (:VAR MV5730 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5734 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5728 :RAW-TEXT
  "gene")
 (:VAR MV5728 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
631: "Show me the evidence that NFkappaB regulates CXCL8"

                    SOURCE-START
e18   SHOW          1 "Show me the evidence that NFkappaB regulates CXCL8" 10
                    END-OF-SOURCE
("Show me the evidence that NFkappaB regulates CXCL8"
 (:VAR MV5738 :ISA SHOW :STATEMENT-OR-THEME MV5746 :BENEFICIARY MV5739 :PRESENT
  "PRESENT")
 (:VAR MV5746 :ISA EVIDENCE :STATEMENT MV5745 :HAS-DETERMINER "THE")
 (:VAR MV5745 :ISA REGULATE :AGENT MV5743 :OBJECT MV5737 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5743 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5737 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5739 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
632: "Does ERK regulate the CXCL8 gene?"

                    SOURCE-START
e14   REGULATE      1 "Does ERK regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the CXCL8 gene?"
 (:VAR MV5754 :ISA POLAR-QUESTION :STATEMENT MV5753)
 (:VAR MV5753 :ISA REGULATE :AGENT MV5749 :OBJECT MV5752 :RAW-TEXT "regulate")
 (:VAR MV5749 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5752 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5747 :RAW-TEXT
  "gene")
 (:VAR MV5747 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
633: "ERK decreases the amount of CXCL8"

                    SOURCE-START
e13   DECREASE      1 "ERK decreases the amount of CXCL8" 8
                    END-OF-SOURCE
("ERK decreases the amount of CXCL8"
 (:VAR MV5757 :ISA DECREASE :AGENT MV5756 :AFFECTED-PROCESS-OR-OBJECT MV5759
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5756 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5759 :ISA BIO-AMOUNT :MEASURED-ITEM MV5755 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5755 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
634: "Does TNG regulate ERK?"

                    SOURCE-START
e8    REGULATE      1 "Does TNG regulate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNG regulate ERK?" (:VAR MV5767 :ISA POLAR-QUESTION :STATEMENT MV5766)
 (:VAR MV5766 :ISA REGULATE :AGENT MV5765 :OBJECT MV5764 :RAW-TEXT "regulate")
 (:VAR MV5765 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV5764 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5775 :ISA POLAR-QUESTION :STATEMENT MV5774)
 (:VAR MV5774 :ISA REGULATE :AGENT MV5769 :OBJECT MV5773 :RAW-TEXT "regulate")
 (:VAR MV5769 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5773 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5772 :RAW-TEXT
  "gene")
 (:VAR MV5772 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5777 :ISA BE :SUBJECT MV5776 :PREDICATE MV5779 :PRESENT "PRESENT")
 (:VAR MV5776 :ISA WHAT)
 (:VAR MV5779 :ISA PATHWAY :PATHWAYCOMPONENT MV5784 :HAS-DETERMINER "THE"
  :RAW-TEXT "pathways")
 (:VAR MV5784 :ISA COLLECTION :RAW-TEXT "TNG and ERK" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV5781 MV5783))
 (:VAR MV5781 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV5783 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5787 :ISA BE :SUBJECT MV5786 :PREDICATE MV5789 :PRESENT "PRESENT")
 (:VAR MV5786 :ISA WHAT)
 (:VAR MV5789 :ISA PATHWAY :PATHWAYCOMPONENT MV5794 :HAS-DETERMINER "THE"
  :RAW-TEXT "pathways")
 (:VAR MV5794 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV5791 MV5793))
 (:VAR MV5791 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
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
638: "Does NFkappaB regulate ERK?"

                    SOURCE-START
e9    REGULATE      1 "Does NFkappaB regulate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate ERK?"
 (:VAR MV5802 :ISA POLAR-QUESTION :STATEMENT MV5801)
 (:VAR MV5801 :ISA REGULATE :AGENT MV5797 :OBJECT MV5800 :RAW-TEXT "regulate")
 (:VAR MV5797 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5800 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5811 :ISA POLAR-QUESTION :STATEMENT MV5810)
 (:VAR MV5810 :ISA REGULATE :AGENT MV5804 :OBJECT MV5809 :RAW-TEXT "regulate")
 (:VAR MV5804 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5809 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5808 :RAW-TEXT
  "gene")
 (:VAR MV5808 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5824 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5813 :VALUE MV5823 :PREP
  "BETWEEN" :PREDICATE MV5814)
 (:VAR MV5813 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5823 :ISA PATHWAY :PATHWAYCOMPONENT MV5820 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "pathways")
 (:VAR MV5820 :ISA COLLECTION :RAW-TEXT "NFkappaB and ERK" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV5817 MV5819))
 (:VAR MV5817 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5819 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5814 :ISA EXIST :PRESENT "PRESENT"))

___________________
641: "How does NFkappaB affect ERK?"

                    SOURCE-START
e8    AFFECT        1 "How does NFkappaB affect ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does NFkappaB affect ERK?"
 (:VAR MV5830 :ISA AFFECT :MANNER MV5826 :AGENT MV5828 :OBJECT MV5831 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5826 :ISA HOW)
 (:VAR MV5828 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
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
642: "MAP3K7 activates IKK"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "MAP3K7 activates IKK" 7
                    END-OF-SOURCE
("MAP3K7 activates IKK"
 (:VAR MV5833 :ISA BIO-ACTIVATE :AGENT MV5832 :OBJECT MV5834 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5832 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5834 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5836 :ISA BIO-ACTIVATE :AGENT MV5835 :OBJECT MV5837 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5835 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199")
 (:VAR MV5837 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN"))

___________________
644: "What are the paths between TNF and ERK?"

                    SOURCE-START
e14   BE            1 "What are the paths between TNF and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and ERK?"
 (:VAR MV5839 :ISA BE :SUBJECT MV5838 :PREDICATE MV5841 :PRESENT "PRESENT")
 (:VAR MV5838 :ISA WHAT)
 (:VAR MV5841 :ISA PATH :ENDPOINTS MV5846 :HAS-DETERMINER "THE")
 (:VAR MV5846 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV5843 MV5845))
 (:VAR MV5843 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5845 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
("Does TNF regulate ERK?" (:VAR MV5853 :ISA POLAR-QUESTION :STATEMENT MV5852)
 (:VAR MV5852 :ISA REGULATE :AGENT MV5849 :OBJECT MV5851 :RAW-TEXT "regulate")
 (:VAR MV5849 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5851 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5858 :ISA AFFECT :MANNER MV5856 :AGENT MV5854 :OBJECT MV5855 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5856 :ISA HOW)
 (:VAR MV5854 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5855 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
647: "TNF activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "TNF activates ERK" 4
                    END-OF-SOURCE
("TNF activates ERK"
 (:VAR MV5860 :ISA BIO-ACTIVATE :AGENT MV5859 :OBJECT MV5861 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
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
648: " Active ERK decreases the amount of CXCL8"

                    SOURCE-START
e15   DECREASE      1 "Active ERK decreases the amount of CXCL8" 9
                    END-OF-SOURCE
("Active ERK decreases the amount of CXCL8"
 (:VAR MV5865 :ISA DECREASE :AGENT MV5864 :AFFECTED-PROCESS-OR-OBJECT MV5867
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5864 :ISA PROTEIN-FAMILY :PREDICATION MV5863 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5863 :ISA ACTIVE)
 (:VAR MV5867 :ISA BIO-AMOUNT :MEASURED-ITEM MV5862 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5862 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
649: "What are the common upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e19   BE            1 "What are the common upstreams of CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of CXCL8 and CXCL10?"
 (:VAR MV5873 :ISA BE :SUBJECT MV5872 :PREDICATE MV5876 :PRESENT "PRESENT")
 (:VAR MV5872 :ISA WHAT)
 (:VAR MV5876 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV5879 :HAS-DETERMINER
  "THE" :PREDICATION MV5875 :RAW-TEXT "upstreams")
 (:VAR MV5879 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5870 MV5871))
 (:VAR MV5870 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5871 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV5875 :ISA COMMON))

___________________
650: "How does CXCL8 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does CXCL8 affect CXCL8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does CXCL8 affect CXCL8?"
 (:VAR MV5885 :ISA AFFECT :MANNER MV5883 :AGENT MV5881 :OBJECT MV5882 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5883 :ISA HOW)
 (:VAR MV5881 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5882 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
651: "Does CXCL8 regulate CXCL10?"

                    SOURCE-START
e10   REGULATE      1 "Does CXCL8 regulate CXCL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate CXCL10?"
 (:VAR MV5891 :ISA POLAR-QUESTION :STATEMENT MV5890)
 (:VAR MV5890 :ISA REGULATE :AGENT MV5886 :OBJECT MV5887 :RAW-TEXT "regulate")
 (:VAR MV5886 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5887 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
652: "Does CXCL8 regulate the CXCL10 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does CXCL8 regulate the CXCL10 gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate the CXCL10 gene?"
 (:VAR MV5899 :ISA POLAR-QUESTION :STATEMENT MV5898)
 (:VAR MV5898 :ISA REGULATE :AGENT MV5892 :OBJECT MV5897 :RAW-TEXT "regulate")
 (:VAR MV5892 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5897 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5893 :RAW-TEXT
  "gene")
 (:VAR MV5893 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
653: "How does MAP3k7 affect CXCL10?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP3k7 affect CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP3k7 affect CXCL10?"
 (:VAR MV5904 :ISA AFFECT :MANNER MV5902 :AGENT MV5900 :OBJECT MV5901 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5902 :ISA HOW)
 (:VAR MV5900 :ISA PROTEIN :RAW-TEXT "MAP3k7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5901 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
654: "What are the paths between TNF and CXCL10?"

                    SOURCE-START
e15   BE            1 "What are the paths between TNF and CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and CXCL10?"
 (:VAR MV5907 :ISA BE :SUBJECT MV5906 :PREDICATE MV5909 :PRESENT "PRESENT")
 (:VAR MV5906 :ISA WHAT)
 (:VAR MV5909 :ISA PATH :ENDPOINTS MV5913 :HAS-DETERMINER "THE")
 (:VAR MV5913 :ISA COLLECTION :RAW-TEXT "TNF and CXCL10" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV5911 MV5905))
 (:VAR MV5911 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5905 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
655: "Does ERK regulate the expression of CXCL10?"

                    SOURCE-START
e17   REGULATE      1 "Does ERK regulate the expression of CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the expression of CXCL10?"
 (:VAR MV5924 :ISA POLAR-QUESTION :STATEMENT MV5922)
 (:VAR MV5922 :ISA REGULATE :AGENT MV5917 :AFFECTED-PROCESS MV5920 :RAW-TEXT
  "regulate")
 (:VAR MV5917 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5920 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5915 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV5915 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
656: "active ERK decreases the expression of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the expression of CXCL10" 9
                    END-OF-SOURCE
("active ERK decreases the expression of CXCL10"
 (:VAR MV5928 :ISA DECREASE :AGENT MV5927 :AFFECTED-PROCESS MV5930 :PRESENT
  "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5927 :ISA PROTEIN-FAMILY :PREDICATION MV5926 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5926 :ISA ACTIVE)
 (:VAR MV5930 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5925 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV5925 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
657: "active ERK decreases the amount of CXCL8"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the amount of CXCL8" 9
                    END-OF-SOURCE
("active ERK decreases the amount of CXCL8"
 (:VAR MV5936 :ISA DECREASE :AGENT MV5935 :AFFECTED-PROCESS-OR-OBJECT MV5938
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5935 :ISA PROTEIN-FAMILY :PREDICATION MV5934 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5934 :ISA ACTIVE)
 (:VAR MV5938 :ISA BIO-AMOUNT :MEASURED-ITEM MV5933 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5933 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
658: "Active ERK decreases the amount of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "Active ERK decreases the amount of CXCL10" 9
                    END-OF-SOURCE
("Active ERK decreases the amount of CXCL10"
 (:VAR MV5944 :ISA DECREASE :AGENT MV5943 :AFFECTED-PROCESS-OR-OBJECT MV5946
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5943 :ISA PROTEIN-FAMILY :PREDICATION MV5942 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5942 :ISA ACTIVE)
 (:VAR MV5946 :ISA BIO-AMOUNT :MEASURED-ITEM MV5941 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5941 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
659: "NG25 inhibits the activity of MAP3K7"

                    SOURCE-START
e16   INHIBIT       1 "NG25 inhibits the activity of MAP3K7" 11
                    END-OF-SOURCE
("NG25 inhibits the activity of MAP3K7"
 (:VAR MV5952 :ISA INHIBIT :AGENT MV5956 :AFFECTED-PROCESS MV5954 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV5956 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV5954 :ISA BIO-ACTIVITY :PARTICIPANT MV5949 :HAS-DETERMINER "THE"
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
 (:VAR MV5969 :ISA POLAR-QUESTION :STATEMENT MV5967)
 (:VAR MV5967 :ISA DECREASE :AGENT MV5958 :OBJECT MV5959 :RAW-TEXT "decrease")
 (:VAR MV5958 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV5959 :ISA PROTEIN :INFO-CONTEXT MV5966 :HAS-DETERMINER "THE" :RAW-TEXT
  "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5966 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
661: "Does NG25 decrease CXCL10 in the model?"

                    SOURCE-START
e19   DECREASE      1 "Does NG25 decrease CXCL10 in the model" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease CXCL10 in the model?"
 (:VAR MV5980 :ISA POLAR-QUESTION :STATEMENT MV5978)
 (:VAR MV5978 :ISA DECREASE :AGENT MV5970 :OBJECT MV5971 :RAW-TEXT "decrease")
 (:VAR MV5970 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV5971 :ISA PROTEIN :INFO-CONTEXT MV5977 :RAW-TEXT "CXCL10" :UID
  "UP:P02778" :NAME "CXL10_HUMAN")
 (:VAR MV5977 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
662: "TNF activates NFkappaB"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "TNF activates NFkappaB" 4
                    END-OF-SOURCE
("TNF activates NFkappaB"
 (:VAR MV5982 :ISA BIO-ACTIVATE :AGENT MV5981 :OBJECT MV5983 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5981 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5983 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
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
 (:VAR MV5989 :ISA WANT :AGENT MV5986 :THEME MV6000 :PRESENT "PRESENT")
 (:VAR MV5986 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6000 :ISA FIND-OUT :AGENT MV5986 :STATEMENT MV5997)
 (:VAR MV5986 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV5997 :ISA WH-QUESTION :STATEMENT MV5996 :VAR NIL :WH HOW)
 (:VAR MV5996 :ISA DECREASE :AGENT MV5995 :OBJECT MV5985 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV5995 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tofacitinib")
 (:VAR MV5985 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
664: "I want to find out how Selumetinib decreases FOS in BT20 cells"

                    SOURCE-START
e31   WANT          1 "I want to find out how Selumetinib decreases FOS in BT20 cells" 14
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in BT20 cells"
 (:VAR MV6004 :ISA WANT :AGENT MV6001 :THEME MV6023 :PRESENT "PRESENT")
 (:VAR MV6001 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6023 :ISA FIND-OUT :AGENT MV6001 :STATEMENT MV6020)
 (:VAR MV6001 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6020 :ISA WH-QUESTION :STATEMENT MV6011 :VAR NIL :WH HOW)
 (:VAR MV6011 :ISA DECREASE :AGENT MV6010 :OBJECT MV6012 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6010 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV6012 :ISA PROTEIN :CELL-TYPE MV6017 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV6017 :ISA CELL-TYPE :MODIFIER MV6018)
 (:VAR MV6018 :ISA BIO-ENTITY :NAME "BT20"))

___________________
665: "I want to find out how ERBB3 activates JUN in SKBR3 cells"

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells"
 (:VAR MV6029 :ISA WANT :AGENT MV6026 :THEME MV6043 :PRESENT "PRESENT")
 (:VAR MV6026 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6043 :ISA FIND-OUT :AGENT MV6026 :STATEMENT MV6040)
 (:VAR MV6026 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6040 :ISA WH-QUESTION :STATEMENT MV6035 :VAR NIL :WH HOW)
 (:VAR MV6035 :ISA BIO-ACTIVATE :AGENT MV6024 :OBJECT MV6036 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6024 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME
  "ERBB3_HUMAN")
 (:VAR MV6036 :ISA PROTEIN :CELL-TYPE MV6038 :RAW-TEXT "JUN" :UID "UP:P05412"
  :NAME "JUN_HUMAN")
 (:VAR MV6038 :ISA CELL-TYPE :CELL-LINE MV6025)
 (:VAR MV6025 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
666: "Does MEK phosphorylate ERK?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "Does MEK phosphorylate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MEK phosphorylate ERK?"
 (:VAR MV6049 :ISA POLAR-QUESTION :STATEMENT MV6048)
 (:VAR MV6048 :ISA PHOSPHORYLATE :AGENT MV6045 :SUBSTRATE MV6047 :RAW-TEXT
  "phosphorylate")
 (:VAR MV6045 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6047 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV6057 :ISA POLAR-QUESTION :STATEMENT MV6056)
 (:VAR MV6056 :ISA INHIBIT :AGENT MV6050 :OBJECT MV6055 :RAW-TEXT "inhibit")
 (:VAR MV6050 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6055 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6051 :RAW-TEXT
  "gene")
 (:VAR MV6051 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
668: "Does STAT3 stimulate the c-fos gene?"

                    SOURCE-START
e15   STIMULATE     1 "Does STAT3 stimulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 stimulate the c-fos gene?"
 (:VAR MV6065 :ISA POLAR-QUESTION :STATEMENT MV6064)
 (:VAR MV6064 :ISA STIMULATE :AGENT MV6058 :OBJECT MV6063 :RAW-TEXT
  "stimulate")
 (:VAR MV6058 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6063 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6059 :RAW-TEXT
  "gene")
 (:VAR MV6059 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
669: "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."

                    SOURCE-START
e33   WANT          1 "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells" 16
                    PERIOD
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
 (:VAR MV6069 :ISA WANT :AGENT MV6066 :THEME MV6087 :PRESENT "PRESENT")
 (:VAR MV6066 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6087 :ISA FIND-OUT :AGENT MV6066 :STATEMENT MV6084)
 (:VAR MV6066 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6084 :ISA WH-QUESTION :STATEMENT MV6076 :VAR NIL :WH HOW)
 (:VAR MV6076 :ISA DECREASE :AGENT MV6075 :OBJECT MV6077 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6075 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV6077 :ISA PROTEIN :CELL-TYPE MV6081 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV6081 :ISA CELL-TYPE :MODIFIER MV6082 :CONTEXT-OR-ASSOCIATED-DISEASE
  MV6080)
 (:VAR MV6082 :ISA BIO-ENTITY :NAME "SKMEL-133") (:VAR MV6080 :ISA MELANOMA))

___________________
670: "Is ERK a transcription factor?"

                    SOURCE-START
e9    BE            1 "Is ERK a transcription factor" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK a transcription factor?"
 (:VAR MV6092 :ISA POLAR-QUESTION :STATEMENT
  (#<be 92018>
   (PREDICATE
    (#<transcription-factor 89964> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
671: "List all the genes regulated by elk1 and srf."

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    PERIOD
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf."
 (:VAR MV6094 :ISA LIST :THEME MV6097 :PRESENT "PRESENT")
 (:VAR MV6097 :ISA GENE :PREDICATION MV6098 :QUANTIFIER MV6095 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6098 :ISA REGULATE :OBJECT MV6097 :AGENT MV6102 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6102 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6093 MV6101))
 (:VAR MV6093 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6101 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6095 :ISA ALL :WORD "all"))

___________________
672: "List some of the genes regulated by elk1 and srf."

                    SOURCE-START
e20   LIST          1 "List some of the genes regulated by elk1 and srf" 12
                    PERIOD
                    END-OF-SOURCE
("List some of the genes regulated by elk1 and srf."
 (:VAR MV6105 :ISA LIST :THEME MV6109 :PRESENT "PRESENT")
 (:VAR MV6109 :ISA GENE :PREDICATION MV6110 :QUANTIFIER MV6106 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6110 :ISA REGULATE :OBJECT MV6109 :AGENT MV6114 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6114 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6104 MV6113))
 (:VAR MV6104 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6113 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6106 :ISA SOME :WORD "some"))

___________________
673: "Show me the  mutations of TP53 and BRAF in ovarian cancer."

                    SOURCE-START
e22   SHOW          1 "Show me the  mutations of TP53 and BRAF in ovarian cancer" 13
                    PERIOD
                    END-OF-SOURCE
("Show me the  mutations of TP53 and BRAF in ovarian cancer."
 (:VAR MV6120 :ISA SHOW :STATEMENT-OR-THEME MV6123 :BENEFICIARY MV6121 :PRESENT
  "PRESENT")
 (:VAR MV6123 :ISA MUTATION :OBJECT MV6128 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6128 :ISA COLLECTION :CONTEXT MV6119 :RAW-TEXT "TP53 and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV6118 MV6126))
 (:VAR MV6119 :ISA CANCER :UID "TS-1223")
 (:VAR MV6118 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6126 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6121 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
674: "What are the mutations of TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutations of TP53 and BRAF in ovarian cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of TP53 and BRAF in ovarian cancer?"
 (:VAR MV6134 :ISA BE :SUBJECT MV6133 :PREDICATE MV6136 :PRESENT "PRESENT")
 (:VAR MV6133 :ISA WHAT)
 (:VAR MV6136 :ISA MUTATION :OBJECT MV6141 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6141 :ISA COLLECTION :CONTEXT MV6132 :RAW-TEXT "TP53 and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV6131 MV6139))
 (:VAR MV6132 :ISA CANCER :UID "TS-1223")
 (:VAR MV6131 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6139 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
675: "What are the mutually exclusive genes with CDH1 for breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with CDH1 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with CDH1 for breast cancer?"
 (:VAR MV6148 :ISA BE :SUBJECT MV6147 :PREDICATE MV6155 :PRESENT "PRESENT")
 (:VAR MV6147 :ISA WHAT)
 (:VAR MV6155 :ISA GENE :DISEASE MV6146 :HAS-DETERMINER "THE" :PREDICATION
  MV6144 :RAW-TEXT "genes")
 (:VAR MV6146 :ISA CANCER :UID "TS-0591")
 (:VAR MV6144 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6145)
 (:VAR MV6145 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN"))

___________________
676: "What are the mutually exclusive genes with CDH1 in breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with CDH1 in breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with CDH1 in breast cancer?"
 (:VAR MV6160 :ISA BE :SUBJECT MV6159 :PREDICATE MV6167 :PRESENT "PRESENT")
 (:VAR MV6159 :ISA WHAT)
 (:VAR MV6167 :ISA GENE :HAS-DETERMINER "THE" :PREDICATION MV6156 :RAW-TEXT
  "genes")
 (:VAR MV6156 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6157)
 (:VAR MV6157 :ISA PROTEIN :CONTEXT MV6158 :RAW-TEXT "CDH1" :UID "UP:P12830"
  :NAME "CADH1_HUMAN")
 (:VAR MV6158 :ISA CANCER :UID "TS-0591"))

___________________
677: "What downregulates it?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates it" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates it?"
 (:VAR MV6169 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV6168
  :AFFECTED-PROCESS-OR-OBJECT MV6170 :PRESENT "PRESENT" :RAW-TEXT
  "downregulates")
 (:VAR MV6168 :ISA WHAT) (:VAR MV6170 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
678: "What genes have strong evidence of being regulated by mir-122-5p?"

                    SOURCE-START
e21   HAVE          1 "What genes have strong evidence of being regulated by mir-122-5p" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes have strong evidence of being regulated by mir-122-5p?"
 (:VAR MV6174 :ISA HAVE :POSSESSOR MV6173 :THING-POSSESSED MV6176 :PRESENT
  "PRESENT")
 (:VAR MV6173 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6176 :ISA EVIDENCE :FACT MV6179 :PREDICATION MV6175)
 (:VAR MV6179 :ISA REGULATE :AGENT MV6171 :PROGRESSIVE MV6178 :RAW-TEXT
  "regulated")
 (:VAR MV6171 :ISA MICRO-RNA :RAW-TEXT "mir-122-5p" :NAME "microRNA 122-5p"
  :UID "MIMAT0000421")
 (:VAR MV6178 :ISA BE) (:VAR MV6175 :ISA STRONG))

___________________
679: "What increases the amount of myc"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    END-OF-SOURCE
("What increases the amount of myc"
 (:VAR MV6185 :ISA INCREASE :AGENT-OR-CAUSE MV6183 :AFFECTED-PROCESS-OR-OBJECT
  MV6187 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV6183 :ISA WHAT)
 (:VAR MV6187 :ISA BIO-AMOUNT :MEASURED-ITEM MV6189 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV6189 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
680: "What inhibits fzd8?"

                    SOURCE-START
e5    INHIBIT       1 "What inhibits fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits fzd8?"
 (:VAR MV6193 :ISA INHIBIT :AGENT-OR-CAUSE MV6192 :OBJECT MV6191 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV6192 :ISA WHAT)
 (:VAR MV6191 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
681: "What is the most likely cellular location of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e26   BE            1 "What is the most likely cellular location of AKT1, BRAF and MAPK1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
 (:VAR MV6197 :ISA BE :SUBJECT MV6196 :PREDICATE MV6209 :PRESENT "PRESENT")
 (:VAR MV6196 :ISA WHAT)
 (:VAR MV6209 :ISA QUALITY-PREDICATE :ITEM MV6207 :ATTRIBUTE MV6203)
 (:VAR MV6207 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6194 MV6205 MV6195))
 (:VAR MV6194 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6205 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6195 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6203 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6201
  :MODIFIER MV6202)
 (:VAR MV6201 :ISA LIKELY :COMPARATIVE MV6199)
 (:VAR MV6199 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6202 :ISA CELLULAR :NAME "cellular"))

___________________
682: "What is the most likely cellular location of AKT1?"

                    SOURCE-START
e20   BE            1 "What is the most likely cellular location of AKT1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1?"
 (:VAR MV6212 :ISA BE :SUBJECT MV6211 :PREDICATE MV6221 :PRESENT "PRESENT")
 (:VAR MV6211 :ISA WHAT)
 (:VAR MV6221 :ISA QUALITY-PREDICATE :ITEM MV6210 :ATTRIBUTE MV6218)
 (:VAR MV6210 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6218 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6216
  :MODIFIER MV6217)
 (:VAR MV6216 :ISA LIKELY :COMPARATIVE MV6214)
 (:VAR MV6214 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6217 :ISA CELLULAR :NAME "cellular"))

___________________
683: "What is the mutation significance of TP53 in lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in lung cancer?"
 (:VAR MV6225 :ISA BE :SUBJECT MV6224 :PREDICATE MV6228 :PRESENT "PRESENT")
 (:VAR MV6224 :ISA WHAT)
 (:VAR MV6228 :ISA SIGNIFICANCE :AGENT MV6222 :HAS-DETERMINER "THE" :MODIFIER
  MV6227)
 (:VAR MV6222 :ISA PROTEIN :CONTEXT MV6223 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV6223 :ISA CANCER :UID "TS-0571")
 (:VAR MV6227 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
684: "Which of those are regulated by tp53?"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by tp53" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are regulated by tp53?"
 (:VAR MV6240 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6236 :AGENT MV6233
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV6236 :ISA THOSE :QUANTIFIER MV6234 :WORD "those")
 (:VAR MV6234 :ISA WHICH)
 (:VAR MV6233 :ISA PROTEIN :RAW-TEXT "tp53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
685: "Which of those genes are in the MAPK signaling pathway?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Which of those genes are in the MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those genes are in the MAPK signaling pathway?"
 (:VAR MV6256 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6247 :VALUE MV6255 :PREP
  "IN" :PREDICATE MV6248)
 (:VAR MV6247 :ISA GENE :QUANTIFIER MV6244 :HAS-DETERMINER "THOSE" :RAW-TEXT
  "genes")
 (:VAR MV6244 :ISA WHICH)
 (:VAR MV6255 :ISA GENE :CONTEXT MV6243 :QUANTIFIER MV6244 :HAS-DETERMINER
  "THOSE" :RAW-TEXT "genes")
 (:VAR MV6243 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV6251
  :RAW-TEXT "signaling pathway")
 (:VAR MV6251 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV6244 :ISA WHICH) (:VAR MV6248 :ISA BE :PRESENT "PRESENT"))

___________________
686: "Which of these are in the il-12 pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which of these are in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in the il-12 pathway?"
 (:VAR MV6267 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6261 :VALUE MV6265 :PREP
  MV6263 :PREDICATE MV6262)
 (:VAR MV6261 :ISA THESE :QUANTIFIER MV6259 :WORD "these")
 (:VAR MV6259 :ISA WHICH)
 (:VAR MV6265 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV6258 :RAW-TEXT
  "pathway")
 (:VAR MV6258 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV6263 :ISA IN :WORD "in") (:VAR MV6262 :ISA BE :PRESENT "PRESENT"))

___________________
687: "Which of them are expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of them are expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of them are expressed in liver?"
 (:VAR MV6276 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV6271 :ORGAN MV6275
  :PRESENT "PRESENT" :RAW-TEXT "expressed")
 (:VAR MV6271 :ISA PRONOUN/PLURAL :QUANTIFIER MV6269 :WORD "them")
 (:VAR MV6269 :ISA WHICH) (:VAR MV6275 :ISA LIVER))

___________________
688: "Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"

                    SOURCE-START
e23   REGULATE      1 "Which of them are most frequently regulated by miR-335-5p and miR-155-5p" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
 (:VAR MV6291 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6283 :AGENT MV6290
  :PRESENT "PRESENT" :SUPERLATIVE MV6285 :ADVERB MV6286 :RAW-TEXT "regulated")
 (:VAR MV6283 :ISA PRONOUN/PLURAL :QUANTIFIER MV6281 :WORD "them")
 (:VAR MV6281 :ISA WHICH)
 (:VAR MV6290 :ISA COLLECTION :RAW-TEXT "miR-335-5p and miR-155-5p" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV6279 MV6280))
 (:VAR MV6279 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV6280 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV6285 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6286 :ISA FREQUENTLY :NAME "frequently"))

___________________
689: "What transcription factors target SMURF2?"

                    SOURCE-START
e9    TARGET        1 "What transcription factors target SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors target SMURF2?"
 (:VAR MV6298 :ISA TARGET :AGENT MV6294 :OBJECT MV6295 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV6294 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV6295 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
690: "Which of those target frizzled8?"

                    SOURCE-START
e11   PROTEIN       1 "Which of those target frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those target frizzled8?"
 (:VAR MV6299 :ISA PROTEIN :QUANTIFIER MV6300 :HAS-DETERMINER "THOSE" :MODIFIER
  MV6303 :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV6300 :ISA WHICH) (:VAR MV6303 :ISA TARGET-PROTEIN :RAW-TEXT "target"))

___________________
691: "What is Selumetinib?"

                    SOURCE-START
e4    BE            1 "What is Selumetinib" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is Selumetinib?"
 (:VAR MV6307 :ISA BE :SUBJECT MV6306 :PREDICATE MV6308 :PRESENT "PRESENT")
 (:VAR MV6306 :ISA WHAT)
 (:VAR MV6308 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
692: "What is MAPK3?"

                    SOURCE-START
e5    BE            1 "What is MAPK3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is MAPK3?"
 (:VAR MV6311 :ISA BE :SUBJECT MV6310 :PREDICATE MV6309 :PRESENT "PRESENT")
 (:VAR MV6310 :ISA WHAT)
 (:VAR MV6309 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
693: "What does it do?"

                    SOURCE-START
e6    DO            1 "What does it do" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it do?" (:VAR MV6317 :ISA DO :PATIENT MV6312 :PRESENT "PRESENT")
 (:VAR MV6312 :ISA WHAT))

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
  (#<be 92989>
   (PREDICATE
    (#<member 92988>
     (SET
      (#<protein-family Raf 88471> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (RAW-TEXT "RAF") (NAME "Raf")
       (FAMILY-MEMBERS
        (#<collection #<"RAF1_HUMAN" 12179> #<"BRAF_HUMAN" 15489> #<"ARAF_HUMAN" 14429> 82070>
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
  (#<be 92018>
   (PREDICATE
    (#<transcription-factor 89964> (HAS-DETERMINER (#<a 110> (WORD "a")))
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
  (#<be 89953>
   (PREDICATE
    (#<kinase 89952> (HAS-DETERMINER (#<a 110> (WORD "a")))
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
  (#<be 93128>
   (PREDICATE
    (#<collection #<kinase 89952> #<transcription-factor 89964> 93127>
     (RAW-TEXT "a kinase or a transcription factor")
     (TYPE #<ref-category KINASE>) (NUMBER 2)
     (ITEMS
      (COLLECTION
       (:MEMBERS
        ((#<kinase 89952> (HAS-DETERMINER (#<a 110> (WORD "a")))
          (RAW-TEXT "kinase"))
         (#<transcription-factor 89964> (HAS-DETERMINER (#<a 110>))
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
  (#<be 93290>
   (PREDICATE
    (#<protein-family transcriptional regulator 93289>
     (MOLECULE-TYPE
      (#<protein "FOS_HUMAN" 88500> (RAW-TEXT "c-fos") (UID "UP:P01100")
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
  (#<be 89953>
   (PREDICATE
    (#<kinase 89952> (HAS-DETERMINER (#<a 110> (WORD "a")))
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
  (#<be 92018>
   (PREDICATE
    (#<transcription-factor 89964> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
862: "Is it a kinase?"

                    SOURCE-START
e9    BE            1 "Is it a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is it a kinase?"
 (:VAR MV7705 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89953>
   (PREDICATE
    (#<kinase 89952> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "kinase"))))))

___________________
863: "What is PLX-4720?"

                    SOURCE-START
e5    BE            1 "What is PLX-4720" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What is PLX-4720?"
 (:VAR MV7708 :ISA BE :SUBJECT MV7707 :PREDICATE MV7706 :PRESENT "PRESENT")
 (:VAR MV7707 :ISA WHAT)
 (:VAR MV7706 :ISA MOLECULE :RAW-TEXT "PLX-4720" :UID "PCID:24180719"))

___________________
864: "What does it target?"

                    SOURCE-START
e7    TARGET        1 "What does it target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it target?"
 (:VAR MV7713 :ISA TARGET :OBJECT MV7709 :AGENT-OR-CAUSE MV7711 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV7709 :ISA WHAT) (:VAR MV7711 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
865: "What genes does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does STAT3 regulate?"
 (:VAR MV7718 :ISA REGULATE :OBJECT MV7716 :AGENT MV7714 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7716 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7714 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
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
 (:VAR MV7726 :ISA BE :SUBJECT MV7725 :PREDICATE MV7728 :PRESENT "PRESENT")
 (:VAR MV7725 :ISA WHAT)
 (:VAR MV7728 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV7724 :HAS-DETERMINER "THE"
  :RAW-TEXT "targets")
 (:VAR MV7724 :ISA MOLECULE :RAW-TEXT "PLX-4720" :UID "PCID:24180719"))

___________________
868: "Does it target BRAF?"

                    SOURCE-START
e10   TARGET        1 "Does it target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does it target BRAF?" (:VAR MV7738 :ISA POLAR-QUESTION :STATEMENT MV7737)
 (:VAR MV7737 :ISA TARGET :AGENT-OR-CAUSE MV7733 :OBJECT MV7736 :RAW-TEXT
  "target")
 (:VAR MV7733 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV7736 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
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
 (:VAR MV7750 :ISA BIO-ACTIVATE :AGENT MV7748 :OBJECT MV7749 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7748 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV7749 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
871: "I want to find out how Jak1 activates IL2"

                    SOURCE-START
e23   WANT          1 "I want to find out how Jak1 activates IL2" 12
                    END-OF-SOURCE
("I want to find out how Jak1 activates IL2"
 (:VAR MV7756 :ISA WANT :AGENT MV7753 :THEME MV7766 :PRESENT "PRESENT")
 (:VAR MV7753 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7766 :ISA FIND-OUT :AGENT MV7753 :STATEMENT MV7763)
 (:VAR MV7753 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7763 :ISA WH-QUESTION :STATEMENT MV7762 :VAR NIL :WH HOW)
 (:VAR MV7762 :ISA BIO-ACTIVATE :AGENT MV7751 :OBJECT MV7752 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7751 :ISA PROTEIN :RAW-TEXT "Jak1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV7752 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
872: "I want to find out how ERBB3 activates JUN in SKBR3 cells."

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    PERIOD
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells."
 (:VAR MV7772 :ISA WANT :AGENT MV7769 :THEME MV7786 :PRESENT "PRESENT")
 (:VAR MV7769 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7786 :ISA FIND-OUT :AGENT MV7769 :STATEMENT MV7783)
 (:VAR MV7769 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7783 :ISA WH-QUESTION :STATEMENT MV7778 :VAR NIL :WH HOW)
 (:VAR MV7778 :ISA BIO-ACTIVATE :AGENT MV7767 :OBJECT MV7779 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7767 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME
  "ERBB3_HUMAN")
 (:VAR MV7779 :ISA PROTEIN :CELL-TYPE MV7781 :RAW-TEXT "JUN" :UID "UP:P05412"
  :NAME "JUN_HUMAN")
 (:VAR MV7781 :ISA CELL-TYPE :CELL-LINE MV7768)
 (:VAR MV7768 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
873: "Let's build a model."

                    SOURCE-START
e8    EXPLICIT-SUGGESTION 1 "Let's build a model" 7
                    PERIOD
                    END-OF-SOURCE
("Let's build a model."
 (:VAR MV7791 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV7788 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV7788 :ISA BUILD :ARTIFACT MV7790 :PRESENT "PRESENT")
 (:VAR MV7790 :ISA MODEL :HAS-DETERMINER "A"))

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
 (:VAR MV7801 :ISA REGULATE :AGENT MV7800 :OBJECT MV7798 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7800 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7798 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
876: "What positively regulates IL2?"

                    SOURCE-START
e6    UPREGULATE    1 "What positively regulates IL2" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What positively regulates IL2?"
 (:VAR MV7802 :ISA UPREGULATE :AGENT-OR-CAUSE MV7804 :OBJECT MV7803 :PRESENT
  "PRESENT" :RAW-TEXT "positively regulates")
 (:VAR MV7804 :ISA WHAT)
 (:VAR MV7803 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
877: "What can have the effect of activation on STAT3? "

                    SOURCE-START
e21   HAVE          1 "What can have the effect of activation on STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What can have the effect of activation on STAT3?"
 (:VAR MV7808 :ISA HAVE :POSSESSOR MV7806 :THING-POSSESSED MV7810 :MODAL
  MV7807)
 (:VAR MV7806 :ISA WHAT)
 (:VAR MV7810 :ISA EFFECT :OBJECT MV7805 :AFFECTED-PROCESS MV7813
  :HAS-DETERMINER "THE" :RAW-TEXT "effect")
 (:VAR MV7805 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7813 :ISA BIO-ACTIVATE :RAW-TEXT "activation") (:VAR MV7807 :ISA CAN))

___________________
878: "Are there any drugs for IL10?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs for IL10" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for IL10?"
 (:VAR MV7824 :ISA THERE-EXISTS :VALUE MV7822 :PREDICATE MV7819)
 (:VAR MV7822 :ISA DRUG :TARGET MV7817 :QUANTIFIER MV7821 :RAW-TEXT "drugs")
 (:VAR MV7817 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7821 :ISA ANY :WORD "any") (:VAR MV7819 :ISA SYNTACTIC-THERE))

___________________
879: "Which tissues express STAT3?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Which tissues express STAT3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which tissues express STAT3?"
 (:VAR MV7829 :ISA GENE-TRANSCRIPT-EXPRESS :AGENT MV7828 :OBJECT MV7826
  :PRESENT "PRESENT" :RAW-TEXT "express")
 (:VAR MV7828 :ISA TISSUE :HAS-DETERMINER "WHICH")
 (:VAR MV7826 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
880: "How does MEK1 regulate ERK1?"

                    SOURCE-START
e9    REGULATE      1 "How does MEK1 regulate ERK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MEK1 regulate ERK1?"
 (:VAR MV7834 :ISA REGULATE :MANNER MV7832 :AGENT MV7830 :OBJECT MV7831
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV7832 :ISA HOW)
 (:VAR MV7830 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7831 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
881: "What are transcription factors that bind the IL15 and IL2 genes?"

                    SOURCE-START
e23   BE            1 "What are transcription factors that bind the IL15 and IL2 genes" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What are transcription factors that bind the IL15 and IL2 genes?"
 (:VAR MV7839 :ISA BE :SUBJECT MV7838 :PREDICATE MV7835 :PRESENT "PRESENT")
 (:VAR MV7838 :ISA WHAT)
 (:VAR MV7835 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7841 :RAW-TEXT
  "transcription factors")
 (:VAR MV7841 :ISA BINDING :BINDER MV7835 :THAT-REL T :DIRECT-BINDEE MV7844
  :PRESENT "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7844 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV7845 :RAW-TEXT
  "genes")
 (:VAR MV7845 :ISA COLLECTION :RAW-TEXT "IL15 and IL2" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV7836 MV7837))
 (:VAR MV7836 :ISA PROTEIN :RAW-TEXT "IL15" :UID "UP:P40933" :NAME
  "IL15_HUMAN")
 (:VAR MV7837 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
882: "What kinases regulate the IL15 and IL2?"

                    SOURCE-START
e14   REGULATE      1 "What kinases regulate the IL15 and IL2" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases regulate the IL15 and IL2?"
 (:VAR MV7850 :ISA REGULATE :AGENT MV7849 :OBJECT MV7853 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7849 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7853 :ISA COLLECTION :HAS-DETERMINER "THE" :RAW-TEXT "IL15 and IL2"
  :TYPE PROTEIN :NUMBER 2 :ITEMS (MV7846 MV7847))
 (:VAR MV7846 :ISA PROTEIN :RAW-TEXT "IL15" :UID "UP:P40933" :NAME
  "IL15_HUMAN")
 (:VAR MV7847 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

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
 (:VAR MV7878 :ISA BE :SUBJECT MV7877 :PREDICATE MV7876 :PRESENT "PRESENT")
 (:VAR MV7877 :ISA WHAT)
 (:VAR MV7876 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN"))

___________________
886: "Is MAP3K7 a protein?"

                    SOURCE-START
e9    BE            1 "Is MAP3K7 a protein" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAP3K7 a protein?"
 (:VAR MV7883 :ISA POLAR-QUESTION :STATEMENT
  (#<be 93720>
   (PREDICATE
    (#<protein 93719> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "protein"))))))

___________________
887: "What does SMAD2 transcribe?"

                    SOURCE-START
e6    TRANSCRIBE    1 "What does SMAD2 transcribe" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does SMAD2 transcribe?"
 (:VAR MV7887 :ISA TRANSCRIBE :OBJECT MV7885 :AGENT MV7884 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV7885 :ISA WHAT)
 (:VAR MV7884 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
888: "Are there drugs for IL10?"

                    SOURCE-START
e12   THERE-EXISTS  1 "Are there drugs for IL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there drugs for IL10?"
 (:VAR MV7894 :ISA THERE-EXISTS :VALUE MV7892 :PREDICATE MV7890)
 (:VAR MV7892 :ISA DRUG :TARGET MV7888 :RAW-TEXT "drugs")
 (:VAR MV7888 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7890 :ISA SYNTACTIC-THERE))

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
