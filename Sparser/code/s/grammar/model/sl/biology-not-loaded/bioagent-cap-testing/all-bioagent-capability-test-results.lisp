

___________________
0: "What genes does mir-128 regulate?"

                    SOURCE-START
e10   REGULATE      1 "What genes does mir-128 regulate" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does mir-128 regulate?"
 (:VAR MV5 :ISA REGULATE :OBJECT MV2 :AGENT MV6 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6 :ISA BIO-ENTITY :NAME "mir-128"))

___________________
1: "what transcription factors does miR-200c regulate?"

                    SOURCE-START
e9    REGULATE      1 "what transcription factors does miR-200c regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-200c regulate?"
 (:VAR MV11 :ISA REGULATE :OBJECT MV7 :AGENT MV8 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV7 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV8 :ISA MICRO-RNA :RAW-TEXT "miR-200c" :NAME "MIR200C" :UID "NCIT:C82157"))

___________________
2: "Tell me about stat3's involvement in apoptosis"

                    SOURCE-START
e17   TELL          1 "Tell me about stat3's involvement in apoptosis" 11
                    END-OF-SOURCE
("Tell me about stat3's involvement in apoptosis"
 (:VAR MV13 :ISA TELL :THEME MV18 :THEME MV14 :PRESENT "PRESENT")
 (:VAR MV18 :ISA INVOLVE :THEME MV20 :PARTICIPANT MV17)
 (:VAR MV20 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV17 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV14 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
3: "What are the genes that have strong evidence of being regulated by mir-122-5p?"

                    SOURCE-START
e30   BE            1 "What are the genes that have strong evidence of being regulated by mir-122-5p" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes that have strong evidence of being regulated by mir-122-5p?"
 (:VAR MV25 :ISA BE :SUBJECT MV24 :PREDICATE MV27 :PRESENT "PRESENT") (:VAR MV24 :ISA WHAT)
 (:VAR MV27 :ISA GENE :PREDICATION MV29 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV29 :ISA HAVE :POSSESSOR MV27 :THAT-REL T :THING-POSSESSED MV31 :PRESENT "PRESENT")
 (:VAR MV31 :ISA EVIDENCE :FACT MV34 :PREDICATION MV30)
 (:VAR MV34 :ISA REGULATE :AGENT MV23 :PROGRESSIVE MV33 :RAW-TEXT "regulated")
 (:VAR MV23 :ISA MICRO-RNA :RAW-TEXT "mir-122-5p" :NAME "microRNA 122-5p" :UID "MIMAT0000421")
 (:VAR MV33 :ISA BE) (:VAR MV30 :ISA STRONG))

___________________
4: "What is stat3's involvement in apoptosis?"

                    SOURCE-START
e14   BE            1 "What is stat3's involvement in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's involvement in apoptosis?"
 (:VAR MV40 :ISA BE :SUBJECT MV39 :PREDICATE MV42 :PRESENT "PRESENT") (:VAR MV39 :ISA WHAT)
 (:VAR MV42 :ISA INVOLVE :THEME MV44 :PARTICIPANT MV41)
 (:VAR MV44 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV41 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
5: "What is stat3's role in apoptosis?"

                    SOURCE-START
e14   BE            1 "What is stat3's role in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's role in apoptosis?"
 (:VAR MV48 :ISA BE :SUBJECT MV47 :PREDICATE MV50 :PRESENT "PRESENT") (:VAR MV47 :ISA WHAT)
 (:VAR MV50 :ISA ROLE :PROCESS MV52 :PARTICIPANT MV49)
 (:VAR MV52 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV49 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
6: "What is stat3's role in apoptotic regulation?"

                    SOURCE-START
e17   BE            1 "What is stat3's role in apoptotic regulation" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's role in apoptotic regulation?"
 (:VAR MV56 :ISA BE :SUBJECT MV55 :PREDICATE MV58 :PRESENT "PRESENT") (:VAR MV55 :ISA WHAT)
 (:VAR MV58 :ISA ROLE :PROCESS MV62 :PARTICIPANT MV57)
 (:VAR MV62 :ISA REGULATE :AGENT MV60 :RAW-TEXT "regulation")
 (:VAR MV60 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV57 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
7: "What is the evidence that miR-148a-3p targets DNMT1?"

                    SOURCE-START
e19   BE            1 "What is the evidence that miR-148a-3p targets DNMT1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that miR-148a-3p targets DNMT1?"
 (:VAR MV67 :ISA BE :SUBJECT MV66 :PREDICATE MV73 :PRESENT "PRESENT") (:VAR MV66 :ISA WHAT)
 (:VAR MV73 :ISA EVIDENCE :STATEMENT MV72 :HAS-DETERMINER "THE")
 (:VAR MV72 :ISA TARGET :AGENT MV64 :OBJECT MV65 :PRESENT "PRESENT" :RAW-TEXT "targets")
 (:VAR MV64 :ISA MICRO-RNA :RAW-TEXT "miR-148a-3p" :NAME "microRNA 148a-3p" :UID "MIMAT0000243")
 (:VAR MV65 :ISA PROTEIN :RAW-TEXT "DNMT1" :UID "UP:P26358" :NAME "DNMT1_HUMAN"))

___________________
8: "what transcription factors does miR-124-3p regulate?"

                    SOURCE-START
e9    REGULATE      1 "what transcription factors does miR-124-3p regulate" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-124-3p regulate?"
 (:VAR MV78 :ISA REGULATE :OBJECT MV74 :AGENT MV75 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV74 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV75 :ISA MICRO-RNA :RAW-TEXT "miR-124-3p" :NAME "microRNA 124-3p" :UID "MIMAT0000422"))

___________________
9: "what transcription factors does miR-200c-3p regulate?"

                    SOURCE-START
e9    REGULATE      1 "what transcription factors does miR-200c-3p regulate" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-200c-3p regulate?"
 (:VAR MV83 :ISA REGULATE :OBJECT MV79 :AGENT MV80 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV79 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV80 :ISA MICRO-RNA :RAW-TEXT "miR-200c-3p" :NAME "microRNA 200c-3p" :UID "MIMAT0000617"))

___________________
10: "What is the mutation significance of TP53 in ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in ovarian cancer?"
 (:VAR MV87 :ISA BE :SUBJECT MV86 :PREDICATE MV90 :PRESENT "PRESENT") (:VAR MV86 :ISA WHAT)
 (:VAR MV90 :ISA SIGNIFICANCE :AGENT MV84 :HAS-DETERMINER "THE" :MODIFIER MV89)
 (:VAR MV84 :ISA PROTEIN :CONTEXT-OR-DISEASE MV85 :RAW-TEXT "TP53" :UID "UP:P04637" :NAME
  "P53_HUMAN")
 (:VAR MV85 :ISA CANCER :UID "TS-1223") (:VAR MV89 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
11: "What is the mutation significance of TP53 for ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 for ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 for ovarian cancer?"
 (:VAR MV98 :ISA BE :SUBJECT MV97 :PREDICATE MV101 :PRESENT "PRESENT") (:VAR MV97 :ISA WHAT)
 (:VAR MV101 :ISA SIGNIFICANCE :AGENT MV95 :HAS-DETERMINER "THE" :MODIFIER MV100)
 (:VAR MV95 :ISA PROTEIN :DISEASE MV96 :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV96 :ISA CANCER :UID "TS-1223") (:VAR MV100 :ISA MUTATION :RAW-TEXT "mutation"))

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
 (:VAR MV114 :ISA BE :SUBJECT MV113 :PREDICATE MV116 :PRESENT "PRESENT") (:VAR MV113 :ISA WHAT)
 (:VAR MV116 :ISA GENE :PREDICATION MV121 :QUANTIFIER MV115 :RAW-TEXT "genes")
 (:VAR MV121 :ISA MUTATION :OBJECT MV116 :THAT-REL T :CONTEXT-OR-DISEASE MV112 :PRESENT "PRESENT"
  :RAW-TEXT "mutated")
 (:VAR MV112 :ISA CANCER :UID "TS-0591") (:VAR MV115 :ISA SOME :WORD "some"))

___________________
14: "what genes are mutated in breast cancer?"

                    SOURCE-START
e12   MUTATION      1 "what genes are mutated in breast cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are mutated in breast cancer?"
 (:VAR MV129 :ISA MUTATION :OBJECT MV125 :CONTEXT-OR-DISEASE MV123 :PRESENT "PRESENT" :RAW-TEXT
  "mutated")
 (:VAR MV125 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV123 :ISA CANCER :UID "TS-0591"))

___________________
15: "Does phosphorylation at S221 activate MAP2K2?"

                    SOURCE-START
e18   BIO-ACTIVATE  1 "Does phosphorylation at S221 activate MAP2K2" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylation at S221 activate MAP2K2?" (:VAR MV142 :ISA POLAR-QUESTION :STATEMENT MV140)
 (:VAR MV140 :ISA BIO-ACTIVATE :AGENT MV133 :OBJECT MV131 :RAW-TEXT "activate")
 (:VAR MV133 :ISA PHOSPHORYLATE :SITE MV139 :RAW-TEXT "phosphorylation")
 (:VAR MV139 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S221" :POSITION MV137 :AMINO-ACID MV136)
 (:VAR MV137 :ISA NUMBER :VALUE 221) (:VAR MV136 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV131 :ISA PROTEIN :RAW-TEXT "MAP2K2" :UID "UP:P36507" :NAME "MP2K2_HUMAN"))

___________________
16: "Does phosphorylation at S222 activate MAP2K1?"

                    SOURCE-START
e18   BIO-ACTIVATE  1 "Does phosphorylation at S222 activate MAP2K1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylation at S222 activate MAP2K1?" (:VAR MV154 :ISA POLAR-QUESTION :STATEMENT MV152)
 (:VAR MV152 :ISA BIO-ACTIVATE :AGENT MV145 :OBJECT MV143 :RAW-TEXT "activate")
 (:VAR MV145 :ISA PHOSPHORYLATE :SITE MV151 :RAW-TEXT "phosphorylation")
 (:VAR MV151 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S222" :POSITION MV149 :AMINO-ACID MV148)
 (:VAR MV149 :ISA NUMBER :VALUE 222) (:VAR MV148 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV143 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
17: "Simulate the MAP2K1-MAPK1 complex"

                    SOURCE-START
e13   SIMULATE      1 "Simulate the MAP2K1-MAPK1 complex" 11
                    END-OF-SOURCE
("Simulate the MAP2K1-MAPK1 complex"
 (:VAR MV157 :ISA SIMULATE :OBJECT MV159 :PRESENT "PRESENT" :RAW-TEXT "Simulate")
 (:VAR MV159 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :COMPONENT MV155 :COMPONENT MV160 :RAW-TEXT
  "complex")
 (:VAR MV155 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV160 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
18: "What are the members of ERK?"

                    SOURCE-START
e12   BE            1 "What are the members of ERK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of ERK?"
 (:VAR MV162 :ISA BE :SUBJECT MV161 :PREDICATE MV164 :PRESENT "PRESENT") (:VAR MV161 :ISA WHAT)
 (:VAR MV164 :ISA MEMBER :SET MV166 :HAS-DETERMINER "THE")
 (:VAR MV166 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV169 :ISA BE :SUBJECT MV168 :PREDICATE MV171 :PRESENT "PRESENT") (:VAR MV168 :ISA WHAT)
 (:VAR MV171 :ISA MEMBER :SET MV173 :HAS-DETERMINER "THE")
 (:VAR MV173 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
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
 (:VAR MV176 :ISA BE :SUBJECT MV175 :PREDICATE MV178 :PRESENT "PRESENT") (:VAR MV175 :ISA WHAT)
 (:VAR MV178 :ISA MEMBER :SET MV180 :HAS-DETERMINER "THE")
 (:VAR MV180 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV183 :ISA BE :SUBJECT MV182 :PREDICATE MV185 :PRESENT "PRESENT") (:VAR MV182 :ISA WHAT)
 (:VAR MV185 :ISA MEMBER :SET MV191 :HAS-DETERMINER "THE")
 (:VAR MV191 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
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
 (:VAR MV195 :ISA BE :SUBJECT MV194 :PREDICATE MV197 :PRESENT "PRESENT") (:VAR MV194 :ISA WHAT)
 (:VAR MV197 :ISA MEMBER :SET MV193 :HAS-DETERMINER "THE")
 (:VAR MV193 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAS family" :NAME "Ras" :COUNT 3
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
 (:VAR MV202 :ISA BE :SUBJECT MV201 :PREDICATE MV205 :PRESENT "PRESENT") (:VAR MV201 :ISA WHAT)
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
 (:VAR MV212 :ISA BE :SUBJECT MV211 :PREDICATE MV215 :PRESENT "PRESENT") (:VAR MV211 :ISA WHAT)
 (:VAR MV215 :ISA HAS-NAME :ITEM MV210 :QUANTIFIER MV213)
 (:VAR MV210 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV213 :ISA ANOTHER :WORD "another"))

___________________
25: "How does STAT3 affect c-fos"

                    SOURCE-START
e9    AFFECT        1 "How does STAT3 affect c-fos" 9
                    END-OF-SOURCE
("How does STAT3 affect c-fos"
 (:VAR MV223 :ISA AFFECT :MANNER MV221 :AGENT MV219 :OBJECT MV220 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV221 :ISA HOW)
 (:VAR MV219 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV220 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
26: "List some genes regulated by elk1"

                    SOURCE-START
e11   LIST          1 "List some genes regulated by elk1" 8
                    END-OF-SOURCE
("List some genes regulated by elk1" (:VAR MV225 :ISA LIST :THEME MV227 :PRESENT "PRESENT")
 (:VAR MV227 :ISA GENE :PREDICATION MV228 :QUANTIFIER MV226 :RAW-TEXT "genes")
 (:VAR MV228 :ISA REGULATE :OBJECT MV227 :AGENT MV224 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV224 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV226 :ISA SOME :WORD "some"))

___________________
27: "List some of the genes regulated by elk1"

                    SOURCE-START
e17   LIST          1 "List some of the genes regulated by elk1" 10
                    END-OF-SOURCE
("List some of the genes regulated by elk1" (:VAR MV232 :ISA LIST :THEME MV236 :PRESENT "PRESENT")
 (:VAR MV236 :ISA GENE :PREDICATION MV237 :QUANTIFIER MV233 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV237 :ISA REGULATE :OBJECT MV236 :AGENT MV231 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV231 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV233 :ISA SOME :WORD "some"))

___________________
28: "List the genes regulated by elk1"

                    SOURCE-START
e12   LIST          1 "List the genes regulated by elk1" 8
                    END-OF-SOURCE
("List the genes regulated by elk1" (:VAR MV243 :ISA LIST :THEME MV245 :PRESENT "PRESENT")
 (:VAR MV245 :ISA GENE :PREDICATION MV246 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV246 :ISA REGULATE :OBJECT MV245 :AGENT MV242 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV242 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
29: "What are the common upstream regulators of AKT1 and BRAF?"

                    SOURCE-START
e21   BE            1 "What are the common upstream regulators of AKT1 and BRAF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of AKT1 and BRAF?"
 (:VAR MV251 :ISA BE :SUBJECT MV250 :PREDICATE MV256 :PRESENT "PRESENT") (:VAR MV250 :ISA WHAT)
 (:VAR MV256 :ISA REGULATOR :THEME MV260 :HAS-DETERMINER "THE" :PREDICATION MV253 :CONTEXT MV254
  :RAW-TEXT "regulators")
 (:VAR MV260 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV249 MV259))
 (:VAR MV249 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV259 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV253 :ISA COMMON) (:VAR MV254 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
30: "What are the common upstreams of AKT and BRAF?"

                    SOURCE-START
e17   BE            1 "What are the common upstreams of AKT and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT and BRAF?"
 (:VAR MV263 :ISA BE :SUBJECT MV262 :PREDICATE MV266 :PRESENT "PRESENT") (:VAR MV262 :ISA WHAT)
 (:VAR MV266 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV271 :HAS-DETERMINER "THE" :PREDICATION MV265
  :RAW-TEXT "upstreams")
 (:VAR MV271 :ISA COLLECTION :RAW-TEXT "AKT and BRAF" :TYPE PROTEIN-FAMILY :NUMBER 2 :ITEMS
  (MV268 MV270))
 (:VAR MV268 :ISA PROTEIN-FAMILY :RAW-TEXT "AKT" :NAME "Rac" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV275 :ISA BE :SUBJECT MV274 :PREDICATE MV278 :PRESENT "PRESENT") (:VAR MV274 :ISA WHAT)
 (:VAR MV278 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV282 :HAS-DETERMINER "THE" :PREDICATION MV277
  :RAW-TEXT "upstreams")
 (:VAR MV282 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV273 MV281))
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
 (:VAR MV286 :ISA BE :SUBJECT MV285 :PREDICATE MV288 :PRESENT "PRESENT") (:VAR MV285 :ISA WHAT)
 (:VAR MV288 :ISA GENE :PREDICATION MV290 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV290 :ISA REGULATE :OBJECT MV288 :THAT-REL T :AGENT MV284 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV284 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
33: "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e27   BE            1 "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV295 :ISA BE :SUBJECT MV294 :PREDICATE MV297 :PRESENT "PRESENT") (:VAR MV294 :ISA WHAT)
 (:VAR MV297 :ISA MICRO-RNA :PREDICATION MV299 :HAS-DETERMINER "THE" :RAW-TEXT "miRNAs")
 (:VAR MV299 :ISA REGULATE :AGENT MV297 :THAT-REL T :OBJECT MV303 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV303 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV300 MV301 MV291 MV292 MV293))
 (:VAR MV300 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV301 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV291 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV292 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV293 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN"))

___________________
34: "What are the miRNAs that regulate EGFR, SRF, and STAT3"

                    SOURCE-START
e22   BE            1 "What are the miRNAs that regulate EGFR, SRF, and STAT3" 14
                    END-OF-SOURCE
("What are the miRNAs that regulate EGFR, SRF, and STAT3"
 (:VAR MV306 :ISA BE :SUBJECT MV305 :PREDICATE MV308 :PRESENT "PRESENT") (:VAR MV305 :ISA WHAT)
 (:VAR MV308 :ISA MICRO-RNA :PREDICATION MV310 :HAS-DETERMINER "THE" :RAW-TEXT "miRNAs")
 (:VAR MV310 :ISA REGULATE :AGENT MV308 :THAT-REL T :OBJECT MV314 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV314 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, and STAT3" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV311 MV312 MV304))
 (:VAR MV311 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV312 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV304 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
35: "What are the regulators of SRF?"

                    SOURCE-START
e12   BE            1 "What are the regulators of SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SRF?"
 (:VAR MV316 :ISA BE :SUBJECT MV315 :PREDICATE MV318 :PRESENT "PRESENT") (:VAR MV315 :ISA WHAT)
 (:VAR MV318 :ISA REGULATOR :THEME MV320 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV320 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
36: "What does STAT3 regulate in the liver?"

                    SOURCE-START
e14   REGULATE      1 "What does STAT3 regulate in the liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 regulate in the liver?"
 (:VAR MV325 :ISA REGULATE :OBJECT MV323 :AGENT MV322 :ORGAN MV328 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV323 :ISA WHAT)
 (:VAR MV322 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV328 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
37: "What does it regulate in the liver?"

                    SOURCE-START
e14   REGULATE      1 "What does it regulate in the liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it regulate in the liver?"
 (:VAR MV333 :ISA REGULATE :OBJECT MV330 :AGENT-OR-CAUSE MV332 :ORGAN MV336 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV330 :ISA WHAT) (:VAR MV332 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV336 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
38: "What genes are regulated by SMAD2?"

                    SOURCE-START
e12   REGULATE      1 "What genes are regulated by SMAD2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SMAD2?"
 (:VAR MV344 :ISA REGULATE :OBJECT MV340 :AGENT MV338 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV340 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV338 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
39: "What genes are regulated by SMDA2?"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by SMDA2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SMDA2?"
 (:VAR MV354 :ISA REGULATE :OBJECT MV347 :AGENT MV353 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV347 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV353 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
40: "What genes are regulated by SRF?"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SRF?"
 (:VAR MV362 :ISA REGULATE :OBJECT MV357 :AGENT MV361 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV357 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV361 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
41: "What genes does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does STAT3 regulate?"
 (:VAR MV368 :ISA REGULATE :OBJECT MV366 :AGENT MV364 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV366 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV364 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
42: "Which of these are regulated by SMAD2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by SMAD2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by SMAD2?"
 (:VAR MV376 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV372 :AGENT MV369 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV372 :ISA THESE :QUANTIFIER MV370 :WORD "these") (:VAR MV370 :ISA WHICH)
 (:VAR MV369 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
43: "Which of these are regulated by SMDA2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by SMDA2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by SMDA2?"
 (:VAR MV386 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV382 :AGENT MV379 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV382 :ISA THESE :QUANTIFIER MV380 :WORD "these") (:VAR MV380 :ISA WHICH)
 (:VAR MV379 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
44: "Which pathways use these?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use these?"
 (:VAR MV392 :ISA BIO-USE :AGENT MV390 :OBJECT MV393 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV390 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV393 :ISA THESE :WORD "these"))

___________________
45: "Where does STAT3 regulate the expression of c-fos?"

                    SOURCE-START
e17   REGULATE      1 "Where does STAT3 regulate the expression of c-fos" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Where does STAT3 regulate the expression of c-fos?"
 (:VAR MV398 :ISA REGULATE :LOCATION MV396 :AGENT MV394 :AFFECTED-PROCESS MV400 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV396 :ISA WHERE)
 (:VAR MV394 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV400 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV395 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV395 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
46: "can you tell me all the transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e35   TELL          1 "can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    END-OF-SOURCE
("can you tell me all the transcription factors that are shared by elk1 and srf"
 (:VAR MV420 :ISA POLAR-QUESTION :STATEMENT MV407)
 (:VAR MV407 :ISA TELL :AGENT MV406 :THEME MV403 :BENEFICIARY MV408 :MODAL "CAN")
 (:VAR MV406 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV403 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV418 :QUANTIFIER MV409 :HAS-DETERMINER "THE"
  :RAW-TEXT "transcription factors")
 (:VAR MV418 :ISA SHARE :OBJECT MV403 :THAT-REL T :PARTICIPANT MV417 :MODAL "CAN" :RAW-TEXT
  "shared")
 (:VAR MV417 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS (MV404 MV416))
 (:VAR MV404 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV416 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV409 :ISA ALL :WORD "all") (:VAR MV408 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
47: "can you tell me which transcription factors are shared by elk1 and srf"

                    SOURCE-START
e28   TELL          1 "can you tell me which transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("can you tell me which transcription factors are shared by elk1 and srf"
 (:VAR MV436 :ISA POLAR-QUESTION :STATEMENT MV425)
 (:VAR MV425 :ISA TELL :AGENT MV424 :THEME MV434 :THEME MV426 :MODAL "CAN")
 (:VAR MV424 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV434 :ISA SHARE :OBJECT MV421 :PARTICIPANT MV433 :MODAL "CAN" :RAW-TEXT "shared")
 (:VAR MV421 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT "transcription factors")
 (:VAR MV433 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS (MV422 MV432))
 (:VAR MV422 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV432 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV426 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
48: "what are the regulators of SRF?"

                    SOURCE-START
e12   BE            1 "what are the regulators of SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what are the regulators of SRF?"
 (:VAR MV438 :ISA BE :SUBJECT MV437 :PREDICATE MV440 :PRESENT "PRESENT") (:VAR MV437 :ISA WHAT)
 (:VAR MV440 :ISA REGULATOR :THEME MV442 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV442 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
49: "what does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "what does stat regulate" 5
                    END-OF-SOURCE
("what does stat regulate"
 (:VAR MV447 :ISA REGULATE :OBJECT MV444 :AGENT MV446 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV444 :ISA WHAT)
 (:VAR MV446 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME "SOAT1_HUMAN"))

___________________
50: "what is erbb?"

                    SOURCE-START
e4    BE            1 "what is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("what is erbb?" (:VAR MV449 :ISA BE :SUBJECT MV448 :PREDICATE MV450 :PRESENT "PRESENT")
 (:VAR MV448 :ISA WHAT)
 (:VAR MV450 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
51: "Is STAT3 involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "Is STAT3 involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptosis?" (:VAR MV458 :ISA POLAR-QUESTION :STATEMENT MV457)
 (:VAR MV457 :ISA INVOLVE :THEME MV451 :THEME MV455 :PAST "PAST")
 (:VAR MV451 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV455 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
52: "Is STAT3 involved in apoptotic regulation?"

                    SOURCE-START
e14   INVOLVE       1 "Is STAT3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptotic regulation?" (:VAR MV468 :ISA POLAR-QUESTION :STATEMENT MV467)
 (:VAR MV467 :ISA INVOLVE :THEME MV459 :THEME MV465 :PAST "PAST")
 (:VAR MV459 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV465 :ISA REGULATE :AGENT MV463 :RAW-TEXT "regulation")
 (:VAR MV463 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
53: "Is STAT3 involved in regulating apoptosis?"

                    SOURCE-START
e13   INVOLVE       1 "Is STAT3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in regulating apoptosis?" (:VAR MV477 :ISA POLAR-QUESTION :STATEMENT MV476)
 (:VAR MV476 :ISA INVOLVE :THEME MV469 :THEME MV473 :PAST "PAST")
 (:VAR MV469 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV473 :ISA REGULATE :AFFECTED-PROCESS MV474 :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT
  "regulating")
 (:VAR MV474 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
54: "What apoptotic genes are regulated by STAT3"

                    SOURCE-START
e15   REGULATE      1 "What apoptotic genes are regulated by STAT3" 9
                    END-OF-SOURCE
("What apoptotic genes are regulated by STAT3"
 (:VAR MV486 :ISA REGULATE :OBJECT MV482 :AGENT MV478 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV482 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV481 :RAW-TEXT "genes")
 (:VAR MV481 :ISA APOPTOTIC)
 (:VAR MV478 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
55: "List the apoptotic genes"

                    SOURCE-START
e8    LIST          1 "List the apoptotic genes" 5
                    END-OF-SOURCE
("List the apoptotic genes" (:VAR MV488 :ISA LIST :THEME MV492 :PRESENT "PRESENT")
 (:VAR MV492 :ISA GENE :HAS-DETERMINER "THE" :MODIFIER MV491 :RAW-TEXT "genes")
 (:VAR MV491 :ISA APOPTOTIC))

___________________
56: "What genes regulated by STAT3 are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes regulated by STAT3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by STAT3 are involved in apoptosis?"
 (:VAR MV502 :ISA INVOLVE :THEME MV495 :THEME MV501 :PRESENT "PRESENT")
 (:VAR MV495 :ISA GENE :PREDICATION MV496 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV496 :ISA REGULATE :OBJECT MV495 :AGENT MV493 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV493 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV501 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
57: "List genes regulated by STAT3"

                    SOURCE-START
e9    LIST          1 "List genes regulated by STAT3" 7
                    END-OF-SOURCE
("List genes regulated by STAT3" (:VAR MV506 :ISA LIST :THEME MV507 :PRESENT "PRESENT")
 (:VAR MV507 :ISA GENE :PREDICATION MV508 :RAW-TEXT "genes")
 (:VAR MV508 :ISA REGULATE :OBJECT MV507 :AGENT MV505 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV505 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
58: "What genes are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What genes are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in apoptosis?"
 (:VAR MV517 :ISA INVOLVE :THEME MV512 :THEME MV516 :PRESENT "PRESENT")
 (:VAR MV512 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV516 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
59: "What genes that STAT3 regulates are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes that STAT3 regulates are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes that STAT3 regulates are involved in apoptosis?"
 (:VAR MV528 :ISA INVOLVE :THEME MV521 :THEME MV527 :PRESENT "PRESENT")
 (:VAR MV521 :ISA GENE :PREDICATION MV523 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV523 :ISA REGULATE :OBJECT MV521 :THAT-REL T :AGENT MV519 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV519 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV527 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
60: "List the genes regulated by STAT3"

                    SOURCE-START
e12   LIST          1 "List the genes regulated by STAT3" 8
                    END-OF-SOURCE
("List the genes regulated by STAT3" (:VAR MV531 :ISA LIST :THEME MV533 :PRESENT "PRESENT")
 (:VAR MV533 :ISA GENE :PREDICATION MV534 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV534 :ISA REGULATE :OBJECT MV533 :AGENT MV530 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV530 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
61: "List the STAT3 regulated genes"

                    SOURCE-START
e11   LIST          1 "List the STAT3 regulated genes" 7
                    END-OF-SOURCE
("List the STAT3 regulated genes" (:VAR MV538 :ISA LIST :THEME MV541 :PRESENT "PRESENT")
 (:VAR MV541 :ISA GENE :HAS-DETERMINER "THE" :PREDICATION MV540 :RAW-TEXT "genes")
 (:VAR MV540 :ISA REGULATE :OBJECT MV541 :AGENT MV537 :RAW-TEXT "regulated")
 (:VAR MV537 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
62: "What kinases are regulated by STAT3?"

                    SOURCE-START
e12   REGULATE      1 "What kinases are regulated by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are regulated by STAT3?"
 (:VAR MV548 :ISA REGULATE :OBJECT MV544 :AGENT MV542 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV544 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV542 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
63: "What kinases are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What kinases are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are involved in apoptosis?"
 (:VAR MV556 :ISA INVOLVE :THEME MV551 :THEME MV555 :PRESENT "PRESENT")
 (:VAR MV551 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV555 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
64: "What STAT3 regulated genes are involved in aptosis"

                    SOURCE-START
e16   INVOLVE       1 "What STAT3 regulated genes are involved " 8
e15   IN            8 "in aptosis" 10
                    END-OF-SOURCE
                    SOURCE-START
e16   S             1 "What STAT3 regulated genes are involved " 8
e15   PP            8 "in aptosis" 10
                    END-OF-SOURCE


___________________
65: "Let me know if any of the genes stat3 regulates are involved in apoptosis"

                    SOURCE-START
e31   LET           1 "Let me know if any of the genes stat3 regulates are involved in apoptosis" 16
                    END-OF-SOURCE
("Let me know if any of the genes stat3 regulates are involved in apoptosis"
 (:VAR MV569 :ISA LET :COMPLEMENT MV586 :PRESENT "PRESENT")
 (:VAR MV586 :ISA KNOW :AGENT MV570 :STATEMENT MV585 :PRESENT "PRESENT")
 (:VAR MV570 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV585 :ISA WH-QUESTION :STATEMENT MV582 :WH IF)
 (:VAR MV582 :ISA INVOLVE :THEME MV576 :THEME MV581 :PRESENT "PRESENT")
 (:VAR MV576 :ISA GENE :QUANTIFIER MV573 :PREDICATION MV577 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV573 :ISA ANY :WORD "any")
 (:VAR MV577 :ISA REGULATE :OBJECT MV576 :AGENT MV568 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV568 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV581 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
66: "Let me know whether any of the genes stat3 regulates are involved in apoptosis"

                    SOURCE-START
e32   LET           1 "Let me know whether any of the genes stat3 regulates are involved in apoptosis" 16
                    END-OF-SOURCE
("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
 (:VAR MV588 :ISA LET :COMPLEMENT MV606 :PRESENT "PRESENT")
 (:VAR MV606 :ISA KNOW :AGENT MV589 :STATEMENT MV605 :PRESENT "PRESENT")
 (:VAR MV589 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV605 :ISA WH-QUESTION :STATEMENT MV602 :WH WHETHER)
 (:VAR MV602 :ISA INVOLVE :THEME MV596 :THEME MV601 :PRESENT "PRESENT")
 (:VAR MV596 :ISA GENE :QUANTIFIER MV593 :PREDICATION MV597 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV593 :ISA ANY :WORD "any")
 (:VAR MV597 :ISA REGULATE :OBJECT MV596 :AGENT MV587 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV587 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV601 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

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
e15   VG            1 "Tell me " 3
e14   HOWCOMP       3 "how stat3 is involved in apoptosis" 10
                    END-OF-SOURCE


___________________
69: "Tell me if stat3 is involved in apoptosis"

                    SOURCE-START
e16   TELL          1 "Tell me if stat3 is involved in apoptosis" 10
                    END-OF-SOURCE
("Tell me if stat3 is involved in apoptosis"
 (:VAR MV635 :ISA TELL :THEME MV644 :BENEFICIARY MV636 :PRESENT "PRESENT")
 (:VAR MV644 :ISA WH-QUESTION :STATEMENT MV642 :WH IF)
 (:VAR MV642 :ISA INVOLVE :THEME MV634 :THEME MV641 :PRESENT "PRESENT")
 (:VAR MV634 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV641 :ISA APOPTOSIS :RAW-TEXT "apoptosis") (:VAR MV636 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
70: "Tell me whether stat3 is involved in apoptosis"

                    SOURCE-START
e17   TELL          1 "Tell me whether stat3 is involved in apoptosis" 10
                    END-OF-SOURCE
("Tell me whether stat3 is involved in apoptosis"
 (:VAR MV646 :ISA TELL :THEME MV656 :THEME MV647 :PRESENT "PRESENT")
 (:VAR MV656 :ISA WH-QUESTION :STATEMENT MV654 :WH WHETHER)
 (:VAR MV654 :ISA INVOLVE :THEME MV645 :THEME MV653 :PRESENT "PRESENT")
 (:VAR MV645 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV653 :ISA APOPTOSIS :RAW-TEXT "apoptosis") (:VAR MV647 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
71: "What are STAT3 regulated genes that are involved in apoptosis. "

                    SOURCE-START
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    PERIOD
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis."
 (:VAR MV659 :ISA BE :SUBJECT MV658 :PREDICATE MV661 :PRESENT "PRESENT") (:VAR MV658 :ISA WHAT)
 (:VAR MV661 :ISA GENE :PREDICATION MV667 :EXPRESSES MV657 :PREDICATION MV660 :RAW-TEXT "genes")
 (:VAR MV667 :ISA INVOLVE :THEME MV661 :THAT-REL T :THEME MV666 :PRESENT "PRESENT")
 (:VAR MV666 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV657 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV660 :ISA REGULATE :OBJECT MV661 :RAW-TEXT "regulated"))

___________________
72: "What are STAT3 regulated genes that are involved in apoptosis?"

                    SOURCE-START
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis?"
 (:VAR MV671 :ISA BE :SUBJECT MV670 :PREDICATE MV673 :PRESENT "PRESENT") (:VAR MV670 :ISA WHAT)
 (:VAR MV673 :ISA GENE :PREDICATION MV679 :EXPRESSES MV669 :PREDICATION MV672 :RAW-TEXT "genes")
 (:VAR MV679 :ISA INVOLVE :THEME MV673 :THAT-REL T :THEME MV678 :PRESENT "PRESENT")
 (:VAR MV678 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV669 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV672 :ISA REGULATE :OBJECT MV673 :RAW-TEXT "regulated"))

___________________
73: "What genes downstream of stat3 are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes downstream of stat3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes downstream of stat3 are involved in apoptosis?"
 (:VAR MV691 :ISA INVOLVE :THEME MV684 :THEME MV690 :PRESENT "PRESENT")
 (:VAR MV684 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV681 :HAS-DETERMINER "WHAT" :MODIFIER MV683
  :RAW-TEXT "downstream")
 (:VAR MV681 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV683 :ISA GENE :RAW-TEXT "genes") (:VAR MV690 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
74: "What is the involvement of stat3 in apoptotic regulation?"

                    SOURCE-START
e21   BE            1 "What is the involvement of stat3 in apoptotic regulation" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the involvement of stat3 in apoptotic regulation?"
 (:VAR MV696 :ISA BE :SUBJECT MV695 :PREDICATE MV698 :PRESENT "PRESENT") (:VAR MV695 :ISA WHAT)
 (:VAR MV698 :ISA INVOLVE :THEME MV703 :PARTICIPANT MV694 :HAS-DETERMINER "THE")
 (:VAR MV703 :ISA REGULATE :AGENT MV701 :RAW-TEXT "regulation")
 (:VAR MV701 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV694 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
75: "What pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve calcium?"
 (:VAR MV708 :ISA INVOLVE :THEME MV707 :THEME MV709 :PRESENT "PRESENT")
 (:VAR MV707 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV709 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
76: "What processes involve srf"

                    SOURCE-START
e7    INVOLVE       1 "What processes involve srf" 5
                    END-OF-SOURCE
("What processes involve srf"
 (:VAR MV713 :ISA INVOLVE :THEME MV711 :THEME MV714 :PRESENT "PRESENT")
 (:VAR MV711 :ISA BIO-PROCESS :HAS-DETERMINER "WHAT" :RAW-TEXT "processes")
 (:VAR MV714 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
77: "Which stat3 regulated genes are involved in apoptosis?"

                    SOURCE-START
e17   INVOLVE       1 "Which stat3 regulated genes are involved in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes are involved in apoptosis?"
 (:VAR MV723 :ISA INVOLVE :THEME MV718 :THEME MV722 :PRESENT "PRESENT")
 (:VAR MV718 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV717 :RAW-TEXT "genes")
 (:VAR MV717 :ISA REGULATE :OBJECT MV718 :AGENT MV715 :RAW-TEXT "regulated")
 (:VAR MV715 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV722 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
78: "Which stat3 regulated genes in the liver are involved in apoptosis?"

                    SOURCE-START
e25   INVOLVE       1 "Which stat3 regulated genes in the liver are involved in apoptosis" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes in the liver are involved in apoptosis?"
 (:VAR MV736 :ISA INVOLVE :THEME MV728 :THEME MV735 :PRESENT "PRESENT")
 (:VAR MV728 :ISA GENE :ORGAN MV731 :HAS-DETERMINER "WHICH" :PREDICATION MV727 :RAW-TEXT "genes")
 (:VAR MV731 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV727 :ISA REGULATE :OBJECT MV728 :AGENT MV725 :RAW-TEXT "regulated")
 (:VAR MV725 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV735 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
79: "Which stat3-regulated genes are involved in apoptosis?"

                    SOURCE-START
e18   INVOLVE       1 "Which stat3-regulated genes are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3-regulated genes are involved in apoptosis?"
 (:VAR MV748 :ISA INVOLVE :THEME MV742 :THEME MV746 :PRESENT "PRESENT")
 (:VAR MV742 :ISA GENE :HAS-DETERMINER "WHICH" :EXPRESSES MV739 :PREDICATION MV747 :RAW-TEXT
  "genes")
 (:VAR MV739 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV747 :ISA REGULATE :RAW-TEXT "regulated") (:VAR MV746 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
80: "Mek activates MAPK1."

                    SOURCE-START
e5    BIO-ACTIVATE  1 "Mek activates MAPK1" 5
                    PERIOD
                    END-OF-SOURCE
("Mek activates MAPK1."
 (:VAR MV752 :ISA BIO-ACTIVATE :AGENT MV751 :OBJECT MV750 :PRESENT "PRESENT" :RAW-TEXT "activates")
 (:VAR MV751 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV750 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
81: "NRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "NRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("NRAS activates RAF."
 (:VAR MV754 :ISA BIO-ACTIVATE :AGENT MV753 :OBJECT MV755 :PRESENT "PRESENT" :RAW-TEXT "activates")
 (:VAR MV753 :ISA PROTEIN :RAW-TEXT "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV755 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV758 :ISA PHOSPHORYLATE :AGENT MV756 :SUBSTRATE MV757 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV756 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV757 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
83: "DUSP6 dephosphorylates MAPK1"

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1"
 (:VAR MV761 :ISA DEPHOSPHORYLATE :AGENT MV759 :SUBSTRATE MV760 :PRESENT "PRESENT" :RAW-TEXT
  "dephosphorylates")
 (:VAR MV759 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV760 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
84: "ELK1 positively regulates FOS."

                    SOURCE-START
e6    UPREGULATE    1 "ELK1 positively regulates FOS" 6
                    PERIOD
                    END-OF-SOURCE
("ELK1 positively regulates FOS."
 (:VAR MV763 :ISA UPREGULATE :AGENT MV762 :OBJECT MV764 :PRESENT "PRESENT" :RAW-TEXT
  "positively regulates")
 (:VAR MV762 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV764 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
85: "EGFR binds the growth factor ligand EGF."

                    SOURCE-START
e13   BINDING       1 "EGFR binds the growth factor ligand EGF" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR binds the growth factor ligand EGF."
 (:VAR MV768 :ISA BINDING :BINDER MV767 :DIRECT-BINDEE MV771 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV767 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV771 :ISA PROTEIN :HAS-DETERMINER "THE" :MODIFIER MV766 :MODIFIER MV770 :RAW-TEXT "EGF"
  :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV766 :ISA GROWTH-FACTOR :RAW-TEXT "growth factor")
 (:VAR MV770 :ISA LIGAND :RAW-TEXT "ligand"))

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
 (:VAR MV778 :ISA BINDING :BINDER MV785 :DIRECT-BINDEE MV786 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV785 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGF" :COMPONENT MV776
  :COMPONENT MV775)
 (:VAR MV776 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV775 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV786 :ISA BIO-COMPLEX :QUANTIFIER MV779 :RAW-TEXT "EGFR-EGF" :COMPONENT MV781 :COMPONENT
  MV780)
 (:VAR MV779 :ISA ANOTHER :WORD "another")
 (:VAR MV781 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV780 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
88: "The EGFR-EGFR complex binds GRB2."

                    SOURCE-START
e13   BINDING       1 "The EGFR-EGFR complex binds GRB2" 9
                    PERIOD
                    END-OF-SOURCE
("The EGFR-EGFR complex binds GRB2."
 (:VAR MV792 :ISA BINDING :BINDER MV794 :DIRECT-BINDEE MV787 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV794 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGFR" :COMPONENT MV789
  :COMPONENT MV789)
 (:VAR MV789 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV789 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV787 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN"))

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
 (:VAR MV801 :ISA BINDING :BINDER MV797 :DIRECT-BINDEE MV798 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV797 :ISA PROTEIN :PREDICATION MV800 :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN")
 (:VAR MV800 :ISA BINDING :DIRECT-BINDEE MV797 :BINDER MV799 :RAW-TEXT "bound")
 (:VAR MV799 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV798 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN"))

___________________
91: "GRB2-bound SOS1 binds NRAS that is not bound to BRAF."

                    SOURCE-START
e27   BINDING       1 "GRB2-bound SOS1 binds NRAS that is not bound to BRAF" 15
                    PERIOD
                    END-OF-SOURCE
("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
 (:VAR MV805 :ISA BINDING :BINDER MV803 :DIRECT-BINDEE MV806 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV803 :ISA PROTEIN :MODIFIER MV802 :PREDICATION MV813 :RAW-TEXT "SOS1" :UID "UP:Q07889"
  :NAME "SOS1_HUMAN")
 (:VAR MV802 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN")
 (:VAR MV813 :ISA BINDING :RAW-TEXT "bound")
 (:VAR MV806 :ISA PROTEIN :PREDICATION MV814 :RAW-TEXT "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV814 :ISA BINDING :DIRECT-BINDEE MV806 :THAT-REL T :BINDEE MV812 :PRESENT "PRESENT"
  :NEGATION MV809 :RAW-TEXT "bound")
 (:VAR MV812 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV809 :ISA NOT :WORD "not"))

___________________
92: "SOS1-bound NRAS binds GTP."

                    SOURCE-START
e11   BINDING       1 "SOS1-bound NRAS binds GTP" 8
                    PERIOD
                    END-OF-SOURCE
("SOS1-bound NRAS binds GTP."
 (:VAR MV819 :ISA BINDING :BINDER MV818 :DIRECT-BINDEE MV820 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV818 :ISA PROTEIN :MODIFIER MV816 :PREDICATION MV821 :RAW-TEXT "NRAS" :UID "UP:P01111"
  :NAME "RASN_HUMAN")
 (:VAR MV816 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV821 :ISA BINDING :RAW-TEXT "bound")
 (:VAR MV820 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP"))

___________________
93: "GTP-bound NRAS that is not bound to SOS1 binds BRAF."

                    SOURCE-START
e26   BINDING       1 "GTP-bound NRAS that is not bound to SOS1 binds BRAF" 14
                    PERIOD
                    END-OF-SOURCE
("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
 (:VAR MV831 :ISA BINDING :BINDER MV825 :DIRECT-BINDEE MV832 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV825 :ISA PROTEIN :PREDICATION MV833 :PREDICATION MV824 :RAW-TEXT "NRAS" :UID "UP:P01111"
  :NAME "RASN_HUMAN")
 (:VAR MV833 :ISA BINDING :DIRECT-BINDEE MV825 :THAT-REL T :BINDEE MV822 :PRESENT "PRESENT"
  :NEGATION MV828 :RAW-TEXT "bound")
 (:VAR MV822 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV828 :ISA NOT :WORD "not")
 (:VAR MV824 :ISA BINDING :DIRECT-BINDEE MV825 :BINDER MV823 :RAW-TEXT "bound")
 (:VAR MV823 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP")
 (:VAR MV832 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
94: "Undo"

                    SOURCE-START
e0    UNDO          1 "Undo" 2
                    END-OF-SOURCE
("Undo" (:VAR MV835 :ISA UNDO :PRESENT "PRESENT" :RAW-TEXT "Undo"))

___________________
95: "How does BRAF affect MAP2K1?"

                    SOURCE-START
e8    AFFECT        1 "How does BRAF affect MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does BRAF affect MAP2K1?"
 (:VAR MV840 :ISA AFFECT :MANNER MV837 :AGENT MV839 :OBJECT MV836 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV837 :ISA HOW)
 (:VAR MV839 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV836 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
96: "Let's highlight the downstream of AKT1."

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's highlight the downstream of AKT1" 10
                    PERIOD
                    END-OF-SOURCE
("Let's highlight the downstream of AKT1."
 (:VAR MV849 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV843 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV843 :ISA HIGHLIGHT :THEME MV845 :PRESENT "PRESENT")
 (:VAR MV845 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV842 :HAS-DETERMINER "THE" :RAW-TEXT
  "downstream")
 (:VAR MV842 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
97: "Let's move phosphorylated MAPK1 to the bottom."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated MAPK1 to the bottom" 11
                    PERIOD
                    END-OF-SOURCE
("Let's move phosphorylated MAPK1 to the bottom."
 (:VAR MV858 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV852 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV852 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV856 :THEME MV851 :PRESENT "PRESENT")
 (:VAR MV856 :ISA BOTTOM :HAS-DETERMINER "THE")
 (:VAR MV851 :ISA PROTEIN :PREDICATION MV853 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV853 :ISA PHOSPHORYLATE :SUBSTRATE MV851 :RAW-TEXT "phosphorylated"))

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
 (:VAR MV876 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV870 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV870 :ISA SHOW :AT-RELATIVE-LOCATION MV873 :STATEMENT-OR-THEME MV869 :PRESENT "PRESENT")
 (:VAR MV873 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV869 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
100: "Does ELK1 decrease FOS in the model?"

                    SOURCE-START
e18   DECREASE      1 "Does ELK1 decrease FOS in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ELK1 decrease FOS in the model?" (:VAR MV887 :ISA POLAR-QUESTION :STATEMENT MV885)
 (:VAR MV885 :ISA DECREASE :AGENT MV877 :OBJECT MV881 :RAW-TEXT "decrease")
 (:VAR MV877 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV881 :ISA PROTEIN :INFO-CONTEXT MV884 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV884 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
101: "Does ELK1 decrease the amount of FOS in the model?"

                    SOURCE-START
e26   DECREASE      1 "Does ELK1 decrease the amount of FOS in the model" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ELK1 decrease the amount of FOS in the model?"
 (:VAR MV902 :ISA POLAR-QUESTION :STATEMENT MV899)
 (:VAR MV899 :ISA DECREASE :AGENT MV888 :AFFECTED-PROCESS-OR-OBJECT MV893 :RAW-TEXT "decrease")
 (:VAR MV888 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV893 :ISA BIO-AMOUNT :MEASURED-ITEM MV895 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV895 :ISA PROTEIN :INFO-CONTEXT MV898 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV898 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
102: "Does FOS decrease ELK1 in the model?"

                    SOURCE-START
e18   DECREASE      1 "Does FOS decrease ELK1 in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS decrease ELK1 in the model?" (:VAR MV913 :ISA POLAR-QUESTION :STATEMENT MV911)
 (:VAR MV911 :ISA DECREASE :AGENT MV905 :OBJECT MV903 :RAW-TEXT "decrease")
 (:VAR MV905 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV903 :ISA PROTEIN :INFO-CONTEXT MV910 :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV910 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
103: "Does FOS vanish if we increase the amount of ELK1 10 fold?"

                    SOURCE-START
e34   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS vanish if we increase the amount of ELK1 10 fold?"
 (:VAR MV934 :ISA POLAR-QUESTION :STATEMENT MV933)
 (:VAR MV933 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV931 :EVENT MV928)
 (:VAR MV931 :ISA WH-QUESTION :STATEMENT MV929 :WH IF)
 (:VAR MV929 :ISA INCREASE :AGENT-OR-CAUSE MV919 :ADVERB MV927 :AFFECTED-PROCESS-OR-OBJECT MV923
  :RAW-TEXT "increase")
 (:VAR MV919 :ISA INTERLOCUTOR :NAME "person-and-machine") (:VAR MV927 :ISA N-FOLD :NUMBER MV926)
 (:VAR MV926 :ISA NUMBER :VALUE 10)
 (:VAR MV923 :ISA BIO-AMOUNT :MEASURED-ITEM MV914 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV914 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV928 :ISA VANISH :AGENT MV916 :RAW-TEXT "vanish")
 (:VAR MV916 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
104: "Does FOS vanish if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e37   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 by 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV957 :ISA POLAR-QUESTION :STATEMENT MV956)
 (:VAR MV956 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV954 :EVENT MV950)
 (:VAR MV954 :ISA WH-QUESTION :STATEMENT MV951 :WH IF)
 (:VAR MV951 :ISA INCREASE :AGENT-OR-CAUSE MV940 :MULTIPLIER MV949 :AFFECTED-PROCESS-OR-OBJECT
  MV944 :RAW-TEXT "increase")
 (:VAR MV940 :ISA INTERLOCUTOR :NAME "person-and-machine") (:VAR MV949 :ISA N-FOLD :NUMBER MV948)
 (:VAR MV948 :ISA NUMBER :VALUE 10)
 (:VAR MV944 :ISA BIO-AMOUNT :MEASURED-ITEM MV935 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV935 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV950 :ISA VANISH :AGENT MV937 :RAW-TEXT "vanish")
 (:VAR MV937 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
105: "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
 (:VAR MV977 :ISA POLAR-QUESTION :STATEMENT MV976)
 (:VAR MV976 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV974 :EVENT MV971)
 (:VAR MV974 :ISA WH-QUESTION :STATEMENT MV972 :WH IF)
 (:VAR MV972 :ISA INCREASE :AGENT-OR-CAUSE MV964 :MULTIPLIER MV970 :OBJECT MV959 :RAW-TEXT
  "increase")
 (:VAR MV964 :ISA INTERLOCUTOR :NAME "person-and-machine") (:VAR MV970 :ISA N-FOLD :NUMBER MV969)
 (:VAR MV969 :ISA NUMBER :VALUE 10)
 (:VAR MV959 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV971 :ISA VANISH :AGENT MV958 :RAW-TEXT "vanish")
 (:VAR MV958 :ISA PROTEIN :PREDICATION MV961 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV961 :ISA PHOSPHORYLATE :SUBSTRATE MV958 :RAW-TEXT "phosphorylated"))

___________________
106: "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e41   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV1001 :ISA POLAR-QUESTION :STATEMENT MV1000)
 (:VAR MV1000 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV998 :EVENT MV994)
 (:VAR MV998 :ISA WH-QUESTION :STATEMENT MV995 :WH IF)
 (:VAR MV995 :ISA INCREASE :AGENT-OR-CAUSE MV984 :MULTIPLIER MV993 :AFFECTED-PROCESS-OR-OBJECT
  MV988 :RAW-TEXT "increase")
 (:VAR MV984 :ISA INTERLOCUTOR :NAME "person-and-machine") (:VAR MV993 :ISA N-FOLD :NUMBER MV992)
 (:VAR MV992 :ISA NUMBER :VALUE 10)
 (:VAR MV988 :ISA BIO-AMOUNT :MEASURED-ITEM MV979 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV979 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV994 :ISA VANISH :AGENT MV978 :RAW-TEXT "vanish")
 (:VAR MV978 :ISA PROTEIN :PREDICATION MV981 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV981 :ISA PHOSPHORYLATE :SUBSTRATE MV978 :RAW-TEXT "phosphorylated"))

___________________
107: "Does the amount of phosphorylated MAPK1 ever increase?"

                    SOURCE-START
e21   INCREASE      1 "Does the amount of phosphorylated MAPK1 ever increase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 ever increase?"
 (:VAR MV1013 :ISA POLAR-QUESTION :STATEMENT MV1011)
 (:VAR MV1011 :ISA INCREASE :CAUSE MV1005 :ADVERB MV1008 :RAW-TEXT "increase")
 (:VAR MV1005 :ISA BIO-AMOUNT :MEASURED-ITEM MV1002 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1002 :ISA PROTEIN :PREDICATION MV1007 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1007 :ISA PHOSPHORYLATE :SUBSTRATE MV1002 :RAW-TEXT "phosphorylated")
 (:VAR MV1008 :ISA EVER))

___________________
108: "Is MAP2K1 bound to MAPK1 eventually high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is MAP2K1 bound to MAPK1 eventually high" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAP2K1 bound to MAPK1 eventually high?" (:VAR MV1023 :ISA POLAR-QUESTION :STATEMENT MV1022)
 (:VAR MV1022 :ISA COPULAR-PREDICATION :ITEM MV1014 :VALUE MV1020 :PREDICATE MV1016)
 (:VAR MV1014 :ISA PROTEIN :PREDICATION MV1017 :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV1017 :ISA BINDING :DIRECT-BINDEE MV1014 :BINDEE MV1015 :PAST "PAST" :RAW-TEXT "bound")
 (:VAR MV1015 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1020 :ISA HIGH :ADVERB MV1019) (:VAR MV1019 :ISA EVENTUALLY) (:VAR MV1016 :ISA BE))

___________________
109: "Is MAPK1 bound to MAP2K1 transient?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Is MAPK1 bound to MAP2K1 transient" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAPK1 bound to MAP2K1 transient?" (:VAR MV1032 :ISA POLAR-QUESTION :STATEMENT MV1031)
 (:VAR MV1031 :ISA COPULAR-PREDICATION :ITEM MV1024 :VALUE MV1029 :PREDICATE MV1026)
 (:VAR MV1024 :ISA PROTEIN :PREDICATION MV1027 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1027 :ISA BINDING :DIRECT-BINDEE MV1024 :BINDEE MV1025 :PAST "PAST" :RAW-TEXT "bound")
 (:VAR MV1025 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1029 :ISA TRANSIENT) (:VAR MV1026 :ISA BE))

___________________
110: "Is MAPK1-bound MAP2K1 sustained?"

                    SOURCE-START
e13   SUSTAINED     1 "Is MAPK1-bound MAP2K1 sustained" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAPK1-bound MAP2K1 sustained?" (:VAR MV1040 :ISA POLAR-QUESTION :STATEMENT MV1038)
 (:VAR MV1038 :ISA SUSTAINED :PARTICIPANT MV1034 :PAST "PAST")
 (:VAR MV1034 :ISA PROTEIN :MODIFIER MV1033 :PREDICATION MV1039 :RAW-TEXT "MAP2K1" :UID "UP:Q02750"
  :NAME "MP2K1_HUMAN")
 (:VAR MV1033 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1039 :ISA BINDING :RAW-TEXT "bound"))

___________________
111: "Is phosphorylated MAPK1 always high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 always high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 always high?" (:VAR MV1047 :ISA POLAR-QUESTION :STATEMENT MV1046)
 (:VAR MV1046 :ISA COPULAR-PREDICATION :ITEM MV1041 :VALUE MV1045 :PREDICATE MV1042)
 (:VAR MV1041 :ISA PROTEIN :PREDICATION MV1043 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1043 :ISA PHOSPHORYLATE :SUBSTRATE MV1041 :RAW-TEXT "phosphorylated")
 (:VAR MV1045 :ISA HIGH :ADVERB MV1044) (:VAR MV1044 :ISA ALWAYS) (:VAR MV1042 :ISA BE))

___________________
112: "Is phosphorylated MAPK1 eventually high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 eventually high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 eventually high?" (:VAR MV1054 :ISA POLAR-QUESTION :STATEMENT MV1053)
 (:VAR MV1053 :ISA COPULAR-PREDICATION :ITEM MV1048 :VALUE MV1052 :PREDICATE MV1049)
 (:VAR MV1048 :ISA PROTEIN :PREDICATION MV1050 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1050 :ISA PHOSPHORYLATE :SUBSTRATE MV1048 :RAW-TEXT "phosphorylated")
 (:VAR MV1052 :ISA HIGH :ADVERB MV1051) (:VAR MV1051 :ISA EVENTUALLY) (:VAR MV1049 :ISA BE))

___________________
113: "Is phosphorylated MAPK1 ever high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 ever high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 ever high?" (:VAR MV1061 :ISA POLAR-QUESTION :STATEMENT MV1060)
 (:VAR MV1060 :ISA COPULAR-PREDICATION :ITEM MV1055 :VALUE MV1059 :PREDICATE MV1056)
 (:VAR MV1055 :ISA PROTEIN :PREDICATION MV1057 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1057 :ISA PHOSPHORYLATE :SUBSTRATE MV1055 :RAW-TEXT "phosphorylated")
 (:VAR MV1059 :ISA HIGH :ADVERB MV1058) (:VAR MV1058 :ISA EVER) (:VAR MV1056 :ISA BE))

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
("Is phosphorylated MAPK1 high?" (:VAR MV1077 :ISA POLAR-QUESTION :STATEMENT MV1076)
 (:VAR MV1076 :ISA COPULAR-PREDICATION :ITEM MV1072 :VALUE MV1075 :PREDICATE MV1073)
 (:VAR MV1072 :ISA PROTEIN :PREDICATION MV1074 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1074 :ISA PHOSPHORYLATE :SUBSTRATE MV1072 :RAW-TEXT "phosphorylated")
 (:VAR MV1075 :ISA HIGH) (:VAR MV1073 :ISA BE))

___________________
116: "Is phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e20   SUSTAINED     1 "Is phosphorylated MAPK1 sustained at a high level" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1089 :ISA POLAR-QUESTION :STATEMENT MV1088)
 (:VAR MV1088 :ISA SUSTAINED :PARTICIPANT MV1078 :LEVEL MV1086 :PAST "PAST")
 (:VAR MV1078 :ISA PROTEIN :PREDICATION MV1080 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1080 :ISA PHOSPHORYLATE :SUBSTRATE MV1078 :RAW-TEXT "phosphorylated")
 (:VAR MV1086 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1085 :RAW-TEXT "level")
 (:VAR MV1085 :ISA HIGH))

___________________
117: "Is phosphorylated MAPK1 sustained?"

                    SOURCE-START
e9    SUSTAINED     1 "Is phosphorylated MAPK1 sustained" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained?" (:VAR MV1095 :ISA POLAR-QUESTION :STATEMENT MV1094)
 (:VAR MV1094 :ISA SUSTAINED :PARTICIPANT MV1090 :PAST "PAST")
 (:VAR MV1090 :ISA PROTEIN :PREDICATION MV1092 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1092 :ISA PHOSPHORYLATE :SUBSTRATE MV1090 :RAW-TEXT "phosphorylated"))

___________________
118: "Is phosphorylated MAPK1 transient?"

                    SOURCE-START
e9    COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 transient" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 transient?" (:VAR MV1101 :ISA POLAR-QUESTION :STATEMENT MV1100)
 (:VAR MV1100 :ISA COPULAR-PREDICATION :ITEM MV1096 :VALUE MV1099 :PREDICATE MV1097)
 (:VAR MV1096 :ISA PROTEIN :PREDICATION MV1098 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1098 :ISA PHOSPHORYLATE :SUBSTRATE MV1096 :RAW-TEXT "phosphorylated")
 (:VAR MV1099 :ISA TRANSIENT) (:VAR MV1097 :ISA BE))

___________________
119: "Is the MAP2K1-MAPK1 complex ever high?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Is the MAP2K1-MAPK1 complex ever high" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex ever high?" (:VAR MV1111 :ISA POLAR-QUESTION :STATEMENT MV1110)
 (:VAR MV1110 :ISA COPULAR-PREDICATION :ITEM MV1106 :VALUE MV1108 :PREDICATE MV1104)
 (:VAR MV1106 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :COMPONENT MV1102 :COMPONENT MV1109 :RAW-TEXT
  "complex")
 (:VAR MV1102 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1109 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1108 :ISA HIGH :ADVERB MV1107) (:VAR MV1107 :ISA EVER) (:VAR MV1104 :ISA BE))

___________________
120: "Is the MAP2K1-MAPK1 complex formed?"

                    SOURCE-START
e15   BIO-FORM      1 "Is the MAP2K1-MAPK1 complex formed" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex formed?" (:VAR MV1119 :ISA POLAR-QUESTION :STATEMENT MV1117)
 (:VAR MV1117 :ISA BIO-FORM :AGENT MV1116 :PAST "PAST" :RAW-TEXT "formed")
 (:VAR MV1116 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :COMPONENT MV1112 :COMPONENT MV1118 :RAW-TEXT
  "complex")
 (:VAR MV1112 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1118 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
121: "Is the amount of FOS always low if we increase ELK1 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 10 fold?"
 (:VAR MV1140 :ISA POLAR-QUESTION :STATEMENT MV1139)
 (:VAR MV1139 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1135 :EVENT MV1137)
 (:VAR MV1135 :ISA WH-QUESTION :STATEMENT MV1131 :WH IF)
 (:VAR MV1131 :ISA INCREASE :AGENT-OR-CAUSE MV1129 :ADVERB MV1134 :OBJECT MV1120 :PRESENT "PRESENT"
  :RAW-TEXT "increase")
 (:VAR MV1129 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1134 :ISA N-FOLD :NUMBER MV1133) (:VAR MV1133 :ISA NUMBER :VALUE 10)
 (:VAR MV1120 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1137 :ISA COPULAR-PREDICATION :ITEM MV1123 :VALUE MV1127 :PREDICATE MV1121)
 (:VAR MV1123 :ISA BIO-AMOUNT :MEASURED-ITEM MV1125 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1125 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1127 :ISA LOW :ADVERB MV1126) (:VAR MV1126 :ISA ALWAYS) (:VAR MV1121 :ISA BE))

___________________
122: "Is the amount of FOS always low if we increase ELK1 by 100 fold?"

                    SOURCE-START
e36   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 by 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
 (:VAR MV1163 :ISA POLAR-QUESTION :STATEMENT MV1162)
 (:VAR MV1162 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1158 :EVENT MV1160)
 (:VAR MV1158 :ISA WH-QUESTION :STATEMENT MV1152 :WH IF)
 (:VAR MV1152 :ISA INCREASE :AGENT-OR-CAUSE MV1150 :MULTIPLIER MV1156 :OBJECT MV1141 :PRESENT
  "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1150 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1156 :ISA N-FOLD :NUMBER MV1155) (:VAR MV1155 :ISA NUMBER :VALUE 100)
 (:VAR MV1141 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1160 :ISA COPULAR-PREDICATION :ITEM MV1144 :VALUE MV1148 :PREDICATE MV1142)
 (:VAR MV1144 :ISA BIO-AMOUNT :MEASURED-ITEM MV1146 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1146 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1148 :ISA LOW :ADVERB MV1147) (:VAR MV1147 :ISA ALWAYS) (:VAR MV1142 :ISA BE))

___________________
123: "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"

                    SOURCE-START
e41   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
 (:VAR MV1188 :ISA POLAR-QUESTION :STATEMENT MV1187)
 (:VAR MV1187 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1183 :EVENT MV1185)
 (:VAR MV1183 :ISA WH-QUESTION :STATEMENT MV1175 :WH IF)
 (:VAR MV1175 :ISA INCREASE :AGENT-OR-CAUSE MV1173 :ADVERB MV1181 :AFFECTED-PROCESS-OR-OBJECT
  MV1177 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1173 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1181 :ISA N-FOLD :NUMBER MV1180) (:VAR MV1180 :ISA NUMBER :VALUE 100)
 (:VAR MV1177 :ISA BIO-AMOUNT :MEASURED-ITEM MV1164 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1164 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1185 :ISA COPULAR-PREDICATION :ITEM MV1167 :VALUE MV1171 :PREDICATE MV1165)
 (:VAR MV1167 :ISA BIO-AMOUNT :MEASURED-ITEM MV1169 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1169 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1171 :ISA HIGH :ADVERB MV1170) (:VAR MV1170 :ISA EVER) (:VAR MV1165 :ISA BE))

___________________
124: "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"

                    SOURCE-START
e44   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
 (:VAR MV1215 :ISA POLAR-QUESTION :STATEMENT MV1214)
 (:VAR MV1214 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1210 :EVENT MV1212)
 (:VAR MV1210 :ISA WH-QUESTION :STATEMENT MV1200 :WH IF)
 (:VAR MV1200 :ISA INCREASE :AGENT-OR-CAUSE MV1198 :MULTIPLIER MV1207 :AFFECTED-PROCESS-OR-OBJECT
  MV1202 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1198 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1207 :ISA N-FOLD :NUMBER MV1206) (:VAR MV1206 :ISA NUMBER :VALUE 100)
 (:VAR MV1202 :ISA BIO-AMOUNT :MEASURED-ITEM MV1189 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1189 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1212 :ISA COPULAR-PREDICATION :ITEM MV1192 :VALUE MV1196 :PREDICATE MV1190)
 (:VAR MV1192 :ISA BIO-AMOUNT :MEASURED-ITEM MV1194 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1194 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1196 :ISA HIGH :ADVERB MV1195) (:VAR MV1195 :ISA EVER) (:VAR MV1190 :ISA BE))

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
 (:VAR MV1236 :ISA POLAR-QUESTION :STATEMENT MV1235)
 (:VAR MV1235 :ISA COPULAR-PREDICATION :ITEM MV1229 :VALUE MV1233 :PREDICATE MV1227)
 (:VAR MV1229 :ISA BIO-AMOUNT :MEASURED-ITEM MV1226 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1226 :ISA PROTEIN :PREDICATION MV1231 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1231 :ISA PHOSPHORYLATE :SUBSTRATE MV1226 :RAW-TEXT "phosphorylated")
 (:VAR MV1233 :ISA HIGH :ADVERB MV1232) (:VAR MV1232 :ISA EVENTUALLY) (:VAR MV1227 :ISA BE))

___________________
127: "Is the amount of phosphorylated MAPK1 ever high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 ever high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever high?"
 (:VAR MV1247 :ISA POLAR-QUESTION :STATEMENT MV1246)
 (:VAR MV1246 :ISA COPULAR-PREDICATION :ITEM MV1240 :VALUE MV1244 :PREDICATE MV1238)
 (:VAR MV1240 :ISA BIO-AMOUNT :MEASURED-ITEM MV1237 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1237 :ISA PROTEIN :PREDICATION MV1242 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1242 :ISA PHOSPHORYLATE :SUBSTRATE MV1237 :RAW-TEXT "phosphorylated")
 (:VAR MV1244 :ISA HIGH :ADVERB MV1243) (:VAR MV1243 :ISA EVER) (:VAR MV1238 :ISA BE))

___________________
128: "Is the amount of phosphorylated MAPK1 ever increasing?"

                    SOURCE-START
e20   INCREASE      1 "Is the amount of phosphorylated MAPK1 ever increasing" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever increasing?"
 (:VAR MV1258 :ISA POLAR-QUESTION :STATEMENT MV1256)
 (:VAR MV1256 :ISA INCREASE :CAUSE MV1251 :ADVERB MV1254 :RAW-TEXT "increasing")
 (:VAR MV1251 :ISA BIO-AMOUNT :MEASURED-ITEM MV1248 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1248 :ISA PROTEIN :PREDICATION MV1253 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1253 :ISA PHOSPHORYLATE :SUBSTRATE MV1248 :RAW-TEXT "phosphorylated")
 (:VAR MV1254 :ISA EVER))

___________________
129: "Is the amount of phosphorylated MAPK1 high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 high" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 high?" (:VAR MV1268 :ISA POLAR-QUESTION :STATEMENT MV1267)
 (:VAR MV1267 :ISA COPULAR-PREDICATION :ITEM MV1262 :VALUE MV1265 :PREDICATE MV1260)
 (:VAR MV1262 :ISA BIO-AMOUNT :MEASURED-ITEM MV1259 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1259 :ISA PROTEIN :PREDICATION MV1264 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1264 :ISA PHOSPHORYLATE :SUBSTRATE MV1259 :RAW-TEXT "phosphorylated")
 (:VAR MV1265 :ISA HIGH) (:VAR MV1260 :ISA BE))

___________________
130: "Is the amount of phosphorylated MAPK1 sometimes high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 sometimes high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sometimes high?"
 (:VAR MV1279 :ISA POLAR-QUESTION :STATEMENT MV1278)
 (:VAR MV1278 :ISA COPULAR-PREDICATION :ITEM MV1272 :VALUE MV1276 :PREDICATE MV1270)
 (:VAR MV1272 :ISA BIO-AMOUNT :MEASURED-ITEM MV1269 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1269 :ISA PROTEIN :PREDICATION MV1274 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1274 :ISA PHOSPHORYLATE :SUBSTRATE MV1269 :RAW-TEXT "phosphorylated")
 (:VAR MV1276 :ISA HIGH :ADVERB MV1275) (:VAR MV1275 :ISA SOMETIMES) (:VAR MV1270 :ISA BE))

___________________
131: "Is the amount of phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e28   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained at a high level" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1295 :ISA POLAR-QUESTION :STATEMENT MV1294)
 (:VAR MV1294 :ISA SUSTAINED :PARTICIPANT MV1283 :LEVEL MV1291 :PAST "PAST")
 (:VAR MV1283 :ISA BIO-AMOUNT :MEASURED-ITEM MV1280 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1280 :ISA PROTEIN :PREDICATION MV1285 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1285 :ISA PHOSPHORYLATE :SUBSTRATE MV1280 :RAW-TEXT "phosphorylated")
 (:VAR MV1291 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1290 :RAW-TEXT "level")
 (:VAR MV1290 :ISA HIGH))

___________________
132: "Is the amount of phosphorylated MAPK1 sustained?"

                    SOURCE-START
e17   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained?"
 (:VAR MV1305 :ISA POLAR-QUESTION :STATEMENT MV1303)
 (:VAR MV1303 :ISA SUSTAINED :PARTICIPANT MV1299 :PAST "PAST")
 (:VAR MV1299 :ISA BIO-AMOUNT :MEASURED-ITEM MV1296 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1296 :ISA PROTEIN :PREDICATION MV1301 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1301 :ISA PHOSPHORYLATE :SUBSTRATE MV1296 :RAW-TEXT "phosphorylated"))

___________________
133: "Is the amount of phosphorylated MAPK1 transient?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 transient" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 transient?"
 (:VAR MV1315 :ISA POLAR-QUESTION :STATEMENT MV1314)
 (:VAR MV1314 :ISA COPULAR-PREDICATION :ITEM MV1309 :VALUE MV1312 :PREDICATE MV1307)
 (:VAR MV1309 :ISA BIO-AMOUNT :MEASURED-ITEM MV1306 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1306 :ISA PROTEIN :PREDICATION MV1311 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1311 :ISA PHOSPHORYLATE :SUBSTRATE MV1306 :RAW-TEXT "phosphorylated")
 (:VAR MV1312 :ISA TRANSIENT) (:VAR MV1307 :ISA BE))

___________________
134: "Will the amount of phosphorylated MAPK1 be high?"

                    SOURCE-START
e20   COPULAR-PREDICATION 1 "Will the amount of phosphorylated MAPK1 be high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Will the amount of phosphorylated MAPK1 be high?"
 (:VAR MV1326 :ISA POLAR-QUESTION :STATEMENT MV1324)
 (:VAR MV1324 :ISA COPULAR-PREDICATION :ITEM MV1319 :VALUE MV1323 :PREDICATE MV1322)
 (:VAR MV1319 :ISA BIO-AMOUNT :MEASURED-ITEM MV1316 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1316 :ISA PROTEIN :PREDICATION MV1321 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1321 :ISA PHOSPHORYLATE :SUBSTRATE MV1316 :RAW-TEXT "phosphorylated")
 (:VAR MV1323 :ISA HIGH) (:VAR MV1322 :ISA BE :MODAL "WILL"))

___________________
135: "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e34   EVENT-RELATION  1 "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
 (:VAR MV1347 :ISA POLAR-QUESTION :STATEMENT MV1346)
 (:VAR MV1346 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1343 :EVENT MV1344)
 (:VAR MV1343 :ISA WH-QUESTION :STATEMENT MV1335 :WH IF)
 (:VAR MV1335 :ISA INCREASE :AGENT-OR-CAUSE MV1333 :ADVERB MV1341 :AFFECTED-PROCESS-OR-OBJECT
  MV1337 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1333 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1341 :ISA N-FOLD :NUMBER MV1340) (:VAR MV1340 :ISA NUMBER :VALUE 100)
 (:VAR MV1337 :ISA BIO-AMOUNT :MEASURED-ITEM MV1328 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1328 :ISA MOLECULE :RAW-TEXT "SB525334" :UID "PCID:9967941")
 (:VAR MV1344 :ISA COPULAR-PREDICATION :ITEM MV1327 :VALUE MV1331 :PREDICATE MV1329)
 (:VAR MV1327 :ISA PROTEIN :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME "TGFR1_HUMAN")
 (:VAR MV1331 :ISA LOW :ADVERB MV1330) (:VAR MV1330 :ISA EVENTUALLY) (:VAR MV1329 :ISA BE))

___________________
136: "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"

                    SOURCE-START
e39   EVENT-RELATION  1 "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
 (:VAR MV1372 :ISA POLAR-QUESTION :STATEMENT MV1371)
 (:VAR MV1371 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1368 :EVENT MV1369)
 (:VAR MV1368 :ISA WH-QUESTION :STATEMENT MV1365 :WH IF)
 (:VAR MV1365 :ISA INCREASE :AFFECTED-PROCESS-OR-OBJECT MV1356 :MULTIPLIER MV1363 :RAW-TEXT
  "increased")
 (:VAR MV1356 :ISA BIO-AMOUNT :MEASURED-ITEM MV1349 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1349 :ISA MOLECULE :RAW-TEXT "SB525334" :UID "PCID:9967941")
 (:VAR MV1363 :ISA N-FOLD :NUMBER MV1362) (:VAR MV1362 :ISA NUMBER :VALUE 100)
 (:VAR MV1369 :ISA COPULAR-PREDICATION :ITEM MV1348 :VALUE MV1353 :PREDICATE MV1350)
 (:VAR MV1348 :ISA PROTEIN :PREDICATION MV1351 :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME
  "TGFR1_HUMAN")
 (:VAR MV1351 :ISA ACTIVE) (:VAR MV1353 :ISA LOW :ADVERB MV1352) (:VAR MV1352 :ISA EVENTUALLY)
 (:VAR MV1350 :ISA BE))

___________________
137: "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e42   EVENT-RELATION  1 "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
 (:VAR MV1397 :ISA POLAR-QUESTION :STATEMENT MV1396)
 (:VAR MV1396 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1392 :EVENT MV1394)
 (:VAR MV1392 :ISA WH-QUESTION :STATEMENT MV1384 :WH IF)
 (:VAR MV1384 :ISA INCREASE :AGENT-OR-CAUSE MV1382 :ADVERB MV1390 :AFFECTED-PROCESS-OR-OBJECT
  MV1386 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1382 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1390 :ISA N-FOLD :NUMBER MV1389) (:VAR MV1389 :ISA NUMBER :VALUE 100)
 (:VAR MV1386 :ISA BIO-AMOUNT :MEASURED-ITEM MV1374 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1374 :ISA MOLECULE :RAW-TEXT "SB525334" :UID "PCID:9967941")
 (:VAR MV1394 :ISA COPULAR-PREDICATION :ITEM MV1377 :VALUE MV1380 :PREDICATE MV1375)
 (:VAR MV1377 :ISA BIO-AMOUNT :MEASURED-ITEM MV1373 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1373 :ISA PROTEIN :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME "TGFR1_HUMAN")
 (:VAR MV1380 :ISA LOW :ADVERB MV1379) (:VAR MV1379 :ISA EVENTUALLY) (:VAR MV1375 :ISA BE))

___________________
138: "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"

                    SOURCE-START
e44   EVENT-RELATION  1 "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold" 21
                    END-OF-SOURCE
("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
 (:VAR MV1423 :ISA POLAR-QUESTION :STATEMENT MV1422)
 (:VAR MV1422 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1418 :EVENT MV1420)
 (:VAR MV1418 :ISA WH-QUESTION :STATEMENT MV1410 :WH IF)
 (:VAR MV1410 :ISA INCREASE :AGENT-OR-CAUSE MV1408 :ADVERB MV1416 :AFFECTED-PROCESS-OR-OBJECT
  MV1412 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1408 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1416 :ISA N-FOLD :NUMBER MV1415) (:VAR MV1415 :ISA NUMBER :VALUE 100)
 (:VAR MV1412 :ISA BIO-AMOUNT :MEASURED-ITEM MV1399 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1399 :ISA MOLECULE :RAW-TEXT "SB-525334" :UID "PCID:9967941")
 (:VAR MV1420 :ISA COPULAR-PREDICATION :ITEM MV1402 :VALUE MV1406 :PREDICATE MV1400)
 (:VAR MV1402 :ISA BIO-AMOUNT :MEASURED-ITEM MV1398 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1398 :ISA PROTEIN :PREDICATION MV1404 :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME
  "TGFR1_HUMAN")
 (:VAR MV1404 :ISA ACTIVE) (:VAR MV1406 :ISA LOW :ADVERB MV1405) (:VAR MV1405 :ISA ALWAYS)
 (:VAR MV1400 :ISA BE))

___________________
139: "Let's move AKT1 and MAPK1 into mitochondrion."

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's move AKT1 and MAPK1 into mitochondrion" 12
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 and MAPK1 into mitochondrion."
 (:VAR MV1433 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1427 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV1427 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV1430 :THEME MV1431 :PRESENT
  "PRESENT")
 (:VAR MV1430 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME "Mitochondrion" :UID
  "UP:SL-0173")
 (:VAR MV1431 :ISA COLLECTION :RAW-TEXT "AKT1 and MAPK1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV1425 MV1426))
 (:VAR MV1425 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV1426 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
140: "FEN1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "FEN1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("FEN1 phosphorylates AKT1."
 (:VAR MV1436 :ISA PHOSPHORYLATE :AGENT MV1434 :SUBSTRATE MV1435 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV1434 :ISA PROTEIN :RAW-TEXT "FEN1" :UID "UP:P39748" :NAME "FEN1_HUMAN")
 (:VAR MV1435 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
141: "Move all into mitochondrion."

                    SOURCE-START
e7    MOVE-SOMETHING-SOMEWHERE  1 "Move all into mitochondrion" 5
                    PERIOD
                    END-OF-SOURCE
("Move all into mitochondrion."
 (:VAR MV1437 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV1440 :THEME MV1442 :PRESENT
  "PRESENT")
 (:VAR MV1440 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME "Mitochondrion" :UID
  "UP:SL-0173")
 (:VAR MV1442 :ISA ALL :WORD "all"))

___________________
142: "AKT1 phosphorylates MAPK1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("AKT1 phosphorylates MAPK1."
 (:VAR MV1445 :ISA PHOSPHORYLATE :AGENT MV1443 :SUBSTRATE MV1444 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV1443 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV1444 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
143: "Let's highlight the upstream of phosphorylated MAPK1."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's highlight the upstream of phosphorylated MAPK1" 11
                    PERIOD
                    END-OF-SOURCE
("Let's highlight the upstream of phosphorylated MAPK1."
 (:VAR MV1455 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1448 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV1448 :ISA HIGHLIGHT :THEME MV1450 :PRESENT "PRESENT")
 (:VAR MV1450 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1447 :HAS-DETERMINER "THE" :RAW-TEXT
  "upstream")
 (:VAR MV1447 :ISA PROTEIN :PREDICATION MV1453 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1453 :ISA PHOSPHORYLATE :SUBSTRATE MV1447 :RAW-TEXT "phosphorylated"))

___________________
144: "Let's show phosphorylated MAPK1 on the top."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's show phosphorylated MAPK1 on the top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show phosphorylated MAPK1 on the top."
 (:VAR MV1465 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1458 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV1458 :ISA SHOW :AT-RELATIVE-LOCATION MV1462 :STATEMENT-OR-THEME MV1457 :PRESENT "PRESENT")
 (:VAR MV1462 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV1457 :ISA PROTEIN :PREDICATION MV1459 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1459 :ISA PHOSPHORYLATE :SUBSTRATE MV1457 :RAW-TEXT "phosphorylated"))

___________________
145: "Let's show the downstream of AKT1 on the top."

                    SOURCE-START
e24   EXPLICIT-SUGGESTION 1 "Let's show the downstream of AKT1 on the top" 13
                    PERIOD
                    END-OF-SOURCE
("Let's show the downstream of AKT1 on the top."
 (:VAR MV1479 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1468 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV1468 :ISA SHOW :AT-RELATIVE-LOCATION MV1475 :STATEMENT-OR-THEME MV1470 :PRESENT "PRESENT")
 (:VAR MV1475 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV1470 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV1467 :HAS-DETERMINER "THE" :RAW-TEXT
  "downstream")
 (:VAR MV1467 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
146: "Let's move mitochondrion elements to the top."

                    SOURCE-START
e16   EXPLICIT-SUGGESTION 1 "Let's move mitochondrion elements to the top" 10
                    PERIOD
                    END-OF-SOURCE
("Let's move mitochondrion elements to the top."
 (:VAR MV1489 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1481 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV1481 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV1486 :THEME MV1483 :PRESENT "PRESENT")
 (:VAR MV1486 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV1483 :ISA ELEMENT :MODIFIER MV1482)
 (:VAR MV1482 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME "Mitochondrion" :UID
  "UP:SL-0173"))

___________________
147: "How does BRAF affect MAPK1?"

                    SOURCE-START
e8    AFFECT        1 "How does BRAF affect MAPK1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does BRAF affect MAPK1?"
 (:VAR MV1494 :ISA AFFECT :MANNER MV1491 :AGENT MV1493 :OBJECT MV1490 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV1491 :ISA HOW)
 (:VAR MV1493 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1490 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
148: "How does MAPK1 affect BRAF?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect BRAF?"
 (:VAR MV1498 :ISA AFFECT :MANNER MV1496 :AGENT MV1495 :OBJECT MV1499 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV1496 :ISA HOW)
 (:VAR MV1495 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1499 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
149: "What is the path between BRAF and MAPK1?"

                    SOURCE-START
e15   BE            1 "What is the path between BRAF and MAPK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the path between BRAF and MAPK1?"
 (:VAR MV1502 :ISA BE :SUBJECT MV1501 :PREDICATE MV1504 :PRESENT "PRESENT") (:VAR MV1501 :ISA WHAT)
 (:VAR MV1504 :ISA PATH :ENDPOINTS MV1508 :HAS-DETERMINER "THE")
 (:VAR MV1508 :ISA COLLECTION :RAW-TEXT "BRAF and MAPK1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV1506 MV1500))
 (:VAR MV1506 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1500 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
150: "How does MAPK1 affect JUND?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect JUND" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect JUND?"
 (:VAR MV1513 :ISA AFFECT :MANNER MV1511 :AGENT MV1510 :OBJECT MV1514 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV1511 :ISA HOW)
 (:VAR MV1510 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1514 :ISA PROTEIN :RAW-TEXT "JUND" :UID "UP:P17535" :NAME "JUND_HUMAN"))

___________________
151: "How does SETDB1 affect ADAM17?"

                    SOURCE-START
e9    AFFECT        1 "How does SETDB1 affect ADAM17" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does SETDB1 affect ADAM17?"
 (:VAR MV1519 :ISA AFFECT :MANNER MV1517 :AGENT MV1515 :OBJECT MV1516 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV1517 :ISA HOW)
 (:VAR MV1515 :ISA PROTEIN :RAW-TEXT "SETDB1" :UID "UP:Q15047" :NAME "SETB1_HUMAN")
 (:VAR MV1516 :ISA PROTEIN :RAW-TEXT "ADAM17" :UID "UP:P78536" :NAME "ADA17_HUMAN"))

___________________
152: "How does KRAS affect MAPK3?"

                    SOURCE-START
e8    AFFECT        1 "How does KRAS affect MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS affect MAPK3?"
 (:VAR MV1524 :ISA AFFECT :MANNER MV1521 :AGENT MV1523 :OBJECT MV1520 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV1521 :ISA HOW)
 (:VAR MV1523 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV1520 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME "MK03_HUMAN"))

___________________
153: "How does  ITGAV affect ILK?"

                    SOURCE-START
e7    AFFECT        1 "How does  ITGAV affect ILK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does  ITGAV affect ILK?"
 (:VAR MV1528 :ISA AFFECT :MANNER MV1525 :AGENT MV1527 :OBJECT MV1529 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV1525 :ISA HOW)
 (:VAR MV1527 :ISA PROTEIN :RAW-TEXT "ITGAV" :UID "UP:P06756" :NAME "ITAV_HUMAN")
 (:VAR MV1529 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

___________________
154: "What genes does MAPK1 phosphorylate?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "What genes does MAPK1 phosphorylate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does MAPK1 phosphorylate?"
 (:VAR MV1534 :ISA PHOSPHORYLATE :AMINO-ACID MV1532 :AGENT MV1530 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylate")
 (:VAR MV1532 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1530 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
155: "What pathways affect BRAF?"

                    SOURCE-START
e6    AFFECT        1 "What pathways affect BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways affect BRAF?"
 (:VAR MV1537 :ISA AFFECT :AGENT MV1536 :OBJECT MV1538 :PRESENT "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1536 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV1538 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
156: "What genes activate ILK?"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "What genes activate ILK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes activate ILK?"
 (:VAR MV1541 :ISA BIO-ACTIVATE :AGENT MV1540 :OBJECT MV1542 :PRESENT "PRESENT" :RAW-TEXT
  "activate")
 (:VAR MV1540 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1542 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

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
159: "What is its relationship with PTPN1?"

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
160: "AKT1 phosphorylates IFT140. "

                    SOURCE-START
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates IFT140" 6
                    PERIOD
                    END-OF-SOURCE
("AKT1 phosphorylates IFT140."
 (:VAR MV1568 :ISA PHOSPHORYLATE :AGENT MV1566 :SUBSTRATE MV1567 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV1566 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV1567 :ISA PROTEIN :RAW-TEXT "IFT140" :UID "UP:Q96RY7" :NAME "IF140_HUMAN"))

___________________
161: "What is the next correlation of AKT1?"

                    SOURCE-START
e2    WHAT          1 "What " 2
e3    BE            2 "is " 3
e5    THE           3 "the " 4
e13   SEQUENCER     4 "next correlation of AKT1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e2    WH-PRONOUN    1 "What " 2
e3    VG            2 "is " 3
e5    DET           3 "the " 4
e13   PP            4 "next correlation of AKT1" 9
                    QUESTION-MARK
                    END-OF-SOURCE


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
e21   BE            1 "What is the drug response on cells with TP53 alterations" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the drug response on cells with TP53 alterations?"
 (:VAR MV1588 :ISA BE :SUBJECT MV1587 :PREDICATE MV1591 :PRESENT "PRESENT") (:VAR MV1587 :ISA WHAT)
 (:VAR MV1591 :ISA RESPONSE :BENEFICIARY MV1593 :HAS-DETERMINER "THE" :MODIFIER MV1590 :RAW-TEXT
  "response")
 (:VAR MV1593 :ISA CELL-TYPE :MUTATION MV1595)
 (:VAR MV1595 :ISA ALTER :OBJECT MV1586 :AGENT-OR-OBJECT MV1586 :RAW-TEXT "alterations")
 (:VAR MV1586 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1586 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1590 :ISA DRUG :RAW-TEXT "drug"))

___________________
164: "What is the drug response for cells with TP53 alterations?"

                    SOURCE-START
e21   BE            1 "What is the drug response for cells with TP53 alterations" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the drug response for cells with TP53 alterations?"
 (:VAR MV1600 :ISA BE :SUBJECT MV1599 :PREDICATE MV1603 :PRESENT "PRESENT") (:VAR MV1599 :ISA WHAT)
 (:VAR MV1603 :ISA RESPONSE :CELL-TYPE MV1605 :HAS-DETERMINER "THE" :MODIFIER MV1602 :RAW-TEXT
  "response")
 (:VAR MV1605 :ISA CELL-TYPE :MUTATION MV1607)
 (:VAR MV1607 :ISA ALTER :OBJECT MV1598 :AGENT-OR-OBJECT MV1598 :RAW-TEXT "alterations")
 (:VAR MV1598 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1598 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1602 :ISA DRUG :RAW-TEXT "drug"))

___________________
165: "What is the mutation frequency of EGFR in glioblastoma?"

                    SOURCE-START
e19   BE            1 "What is the mutation frequency of EGFR in glioblastoma" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of EGFR in glioblastoma?"
 (:VAR MV1611 :ISA BE :SUBJECT MV1610 :PREDICATE MV1614 :PRESENT "PRESENT") (:VAR MV1610 :ISA WHAT)
 (:VAR MV1614 :ISA FREQUENCY :MEASURED-ITEM MV1616 :HAS-DETERMINER "THE" :MEASURED-ITEM MV1613
  :RAW-TEXT "frequency")
 (:VAR MV1616 :ISA PROTEIN :CONTEXT-OR-DISEASE MV1618 :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV1618 :ISA GLIOBLASTOMA) (:VAR MV1613 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
166: "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1624 :ISA BE :SUBJECT MV1623 :PREDICATE MV1627 :PRESENT "PRESENT") (:VAR MV1623 :ISA WHAT)
 (:VAR MV1627 :ISA FREQUENCY :MEASURED-ITEM MV1621 :HAS-DETERMINER "THE" :MEASURED-ITEM MV1626
  :RAW-TEXT "frequency")
 (:VAR MV1621 :ISA PROTEIN :CONTEXT-OR-DISEASE MV1622 :RAW-TEXT "TP53" :UID "UP:P04637" :NAME
  "P53_HUMAN")
 (:VAR MV1622 :ISA CANCER :NAME "ovarian serous cystadenocarcinoma" :UID "NCIT:C7978")
 (:VAR MV1626 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
167: "Show me the mutations of PTEN and BRAF in ovarian cancer."

                    SOURCE-START
e21   SHOW          1 "Show me the mutations of PTEN and BRAF in ovarian cancer" 12
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN and BRAF in ovarian cancer."
 (:VAR MV1633 :ISA SHOW :STATEMENT-OR-THEME MV1636 :BENEFICIARY MV1634 :PRESENT "PRESENT")
 (:VAR MV1636 :ISA MUTATION :OBJECT MV1642 :HAS-DETERMINER "THE" :RAW-TEXT "mutations")
 (:VAR MV1642 :ISA COLLECTION :CONTEXT-OR-DISEASE MV1632 :RAW-TEXT "PTEN and BRAF" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV1638 MV1640))
 (:VAR MV1632 :ISA CANCER :UID "TS-1223")
 (:VAR MV1638 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME "PTEN_HUMAN")
 (:VAR MV1640 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1634 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
168: "Show me the mutations of PTEN in ovarian cancer."

                    SOURCE-START
e18   SHOW          1 "Show me the mutations of PTEN in ovarian cancer" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN in ovarian cancer."
 (:VAR MV1646 :ISA SHOW :STATEMENT-OR-THEME MV1649 :BENEFICIARY MV1647 :PRESENT "PRESENT")
 (:VAR MV1649 :ISA MUTATION :OBJECT MV1651 :HAS-DETERMINER "THE" :RAW-TEXT "mutations")
 (:VAR MV1651 :ISA PROTEIN :CONTEXT-OR-DISEASE MV1645 :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV1645 :ISA CANCER :UID "TS-1223") (:VAR MV1647 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
169: "What are the mutations of PTEN in ovarian cancer?"

                    SOURCE-START
e18   BE            1 "What are the mutations of PTEN in ovarian cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in ovarian cancer?"
 (:VAR MV1657 :ISA BE :SUBJECT MV1656 :PREDICATE MV1659 :PRESENT "PRESENT") (:VAR MV1656 :ISA WHAT)
 (:VAR MV1659 :ISA MUTATION :OBJECT MV1661 :HAS-DETERMINER "THE" :RAW-TEXT "mutations")
 (:VAR MV1661 :ISA PROTEIN :CONTEXT-OR-DISEASE MV1655 :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV1655 :ISA CANCER :UID "TS-1223"))

___________________
170: "What is the most likely cellular location of AKT1 and BRAF?"

                    SOURCE-START
e23   BE            1 "What is the most likely cellular location of AKT1 and BRAF" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1 and BRAF?"
 (:VAR MV1667 :ISA BE :SUBJECT MV1666 :PREDICATE MV1679 :PRESENT "PRESENT") (:VAR MV1666 :ISA WHAT)
 (:VAR MV1679 :ISA QUALITY-PREDICATE :ITEM MV1677 :ATTRIBUTE MV1673)
 (:VAR MV1677 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV1665 MV1676))
 (:VAR MV1665 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV1676 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1673 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV1671 :MODIFIER MV1672)
 (:VAR MV1671 :ISA LIKELY :COMPARATIVE MV1669)
 (:VAR MV1669 :ISA SUPERLATIVE-QUANTIFIER :NAME "most") (:VAR MV1672 :ISA CELLULAR))

___________________
171: "Are there common upstreams of AKT1 and BRAF?"

                    SOURCE-START
e17   THERE-EXISTS  1 "Are there common upstreams of AKT1 and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1 and BRAF?"
 (:VAR MV1689 :ISA THERE-EXISTS :VALUE MV1685 :PREDICATE MV1682)
 (:VAR MV1685 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1690 :PREDICATION MV1684 :RAW-TEXT
  "upstreams")
 (:VAR MV1690 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV1680 MV1688))
 (:VAR MV1680 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV1688 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1684 :ISA COMMON) (:VAR MV1682 :ISA SYNTACTIC-THERE))

___________________
172: "What are the common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e21   BE            1 "What are the common upstreams of AKT1, BRAF and MAPK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV1695 :ISA BE :SUBJECT MV1694 :PREDICATE MV1698 :PRESENT "PRESENT") (:VAR MV1694 :ISA WHAT)
 (:VAR MV1698 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1702 :HAS-DETERMINER "THE" :PREDICATION
  MV1697 :RAW-TEXT "upstreams")
 (:VAR MV1702 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV1692 MV1700 MV1693))
 (:VAR MV1692 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV1700 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1693 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1697 :ISA COMMON))

___________________
173: "What genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "What genes are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV1714 :ISA COPULAR-PREDICATION :ITEM MV1708 :VALUE MV1704 :PREDICATE MV1709)
 (:VAR MV1708 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1704 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV1705)
 (:VAR MV1705 :ISA PROTEIN :DISEASE MV1706 :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME "CADH1_HUMAN")
 (:VAR MV1706 :ISA CANCER :UID "TS-0591") (:VAR MV1709 :ISA BE :PRESENT "PRESENT"))

___________________
174: "What are the mutually exclusive genes with TP53 for breast cancer?"

                    SOURCE-START
e20   BE            1 "What are the mutually exclusive genes " 7
e18   WITH          7 "with TP53 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e20   S             1 "What are the mutually exclusive genes " 7
e18   PP            7 "with TP53 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
175: "What is the mutation significance of TP53 for lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 for lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 for lung cancer?"
 (:VAR MV1729 :ISA BE :SUBJECT MV1728 :PREDICATE MV1732 :PRESENT "PRESENT") (:VAR MV1728 :ISA WHAT)
 (:VAR MV1732 :ISA SIGNIFICANCE :AGENT MV1726 :HAS-DETERMINER "THE" :MODIFIER MV1731)
 (:VAR MV1726 :ISA PROTEIN :DISEASE MV1727 :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1727 :ISA CANCER :UID "TS-0571") (:VAR MV1731 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
176: "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1740 :ISA BE :SUBJECT MV1739 :PREDICATE MV1743 :PRESENT "PRESENT") (:VAR MV1739 :ISA WHAT)
 (:VAR MV1743 :ISA SIGNIFICANCE :AGENT MV1737 :HAS-DETERMINER "THE" :MODIFIER MV1742)
 (:VAR MV1737 :ISA PROTEIN :CONTEXT-OR-DISEASE MV1738 :RAW-TEXT "TP53" :UID "UP:P04637" :NAME
  "P53_HUMAN")
 (:VAR MV1738 :ISA CANCER :NAME "ovarian serous cystadenocarcinoma" :UID "NCIT:C7978")
 (:VAR MV1742 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
177: "What is the mutation significance of PTEN in pancreatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of PTEN in pancreatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
 (:VAR MV1749 :ISA BE :SUBJECT MV1748 :PREDICATE MV1752 :PRESENT "PRESENT") (:VAR MV1748 :ISA WHAT)
 (:VAR MV1752 :ISA SIGNIFICANCE :AGENT MV1754 :HAS-DETERMINER "THE" :MODIFIER MV1751)
 (:VAR MV1754 :ISA PROTEIN :CONTEXT-OR-DISEASE MV1757 :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV1757 :ISA CANCER :ORGAN MV1756 :NAME "adenocarcinoma" :UID "EFO:0000228")
 (:VAR MV1756 :ISA PANCREAS) (:VAR MV1751 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
178: "What is the mutation significance of BRAF in prostatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of BRAF in prostatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
 (:VAR MV1761 :ISA BE :SUBJECT MV1760 :PREDICATE MV1764 :PRESENT "PRESENT") (:VAR MV1760 :ISA WHAT)
 (:VAR MV1764 :ISA SIGNIFICANCE :AGENT MV1766 :HAS-DETERMINER "THE" :MODIFIER MV1763)
 (:VAR MV1766 :ISA PROTEIN :CONTEXT-OR-DISEASE MV1769 :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1769 :ISA CANCER :MODIFIER MV1768 :NAME "adenocarcinoma" :UID "EFO:0000228")
 (:VAR MV1768 :ISA PROTEIN :RAW-TEXT "prostatic" :UID "UP:P20151" :NAME "KLK2_HUMAN")
 (:VAR MV1763 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
179: "MEK phosphorylates ERK."

                    SOURCE-START
e4    PHOSPHORYLATE 1 "MEK phosphorylates ERK" 4
                    PERIOD
                    END-OF-SOURCE
("MEK phosphorylates ERK."
 (:VAR MV1773 :ISA PHOSPHORYLATE :AGENT MV1772 :SUBSTRATE MV1774 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV1772 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV1774 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV1776 :ISA BINDING :BINDER MV1775 :DIRECT-BINDEE MV1777 :PRESENT "PRESENT" :RAW-TEXT
  "binds")
 (:VAR MV1775 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1777 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
181: "EGFR bound to EGF binds GRB2."

                    SOURCE-START
e13   BINDING       1 "EGFR bound to EGF binds GRB2" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR bound to EGF binds GRB2."
 (:VAR MV1783 :ISA BINDING :BINDER MV1779 :DIRECT-BINDEE MV1778 :PRESENT "PRESENT" :RAW-TEXT
  "binds")
 (:VAR MV1779 :ISA PROTEIN :PREDICATION MV1780 :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV1780 :ISA BINDING :DIRECT-BINDEE MV1779 :BINDEE MV1782 :PAST "PAST" :RAW-TEXT "bound")
 (:VAR MV1782 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1778 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN"))

___________________
182: "Phosphorylated ERK is active."

                    SOURCE-START
e7    COPULAR-PREDICATION 1 "Phosphorylated ERK is active" 5
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK is active."
 (:VAR MV1789 :ISA COPULAR-PREDICATION :ITEM MV1786 :VALUE MV1788 :PREDICATE MV1787)
 (:VAR MV1786 :ISA PROTEIN-FAMILY :PREDICATION MV1785 :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1785 :ISA PHOSPHORYLATE :SUBSTRATE MV1786 :RAW-TEXT "Phosphorylated")
 (:VAR MV1788 :ISA ACTIVE) (:VAR MV1787 :ISA BE :PRESENT "PRESENT"))

___________________
183: "MAP2K1 phosphorylated at S220 phosphoryates MAPK1."

                    SOURCE-START
e17   PROTEIN       1 "MAP2K1 phosphorylated at S220 phosphoryates MAPK1" 12
                    PERIOD
                    END-OF-SOURCE
("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
 (:VAR MV1790 :ISA PROTEIN :PREDICATION MV1792 :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV1792 :ISA PHOSPHORYLATE :SUBSTRATE MV1790 :TARGET MV1791 :PAST "PAST" :RAW-TEXT
  "phosphorylated")
 (:VAR MV1791 :ISA PROTEIN :SITE MV1797 :MODIFIER MV1798 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1797 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S220" :POSITION MV1796 :AMINO-ACID MV1795)
 (:VAR MV1796 :ISA NUMBER :VALUE 220) (:VAR MV1795 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV1798 :ISA BIO-ENTITY :NAME "phosphoryates"))

___________________
184: "Active TP53 transcribes MDM2."

                    SOURCE-START
e8    TRANSCRIBE    1 "Active TP53 transcribes MDM2" 7
                    PERIOD
                    END-OF-SOURCE
("Active TP53 transcribes MDM2."
 (:VAR MV1803 :ISA TRANSCRIBE :AGENT MV1800 :OBJECT MV1801 :PRESENT "PRESENT" :RAW-TEXT
  "transcribes")
 (:VAR MV1800 :ISA PROTEIN :PREDICATION MV1802 :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1802 :ISA ACTIVE)
 (:VAR MV1801 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME "MDM2_HUMAN"))

___________________
185: "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e44   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV1830 :ISA POLAR-QUESTION :STATEMENT MV1829)
 (:VAR MV1829 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1825 :EVENT MV1827)
 (:VAR MV1825 :ISA WH-QUESTION :STATEMENT MV1815 :WH IF)
 (:VAR MV1815 :ISA INCREASE :AGENT-OR-CAUSE MV1813 :MULTIPLIER MV1822 :AFFECTED-PROCESS-OR-OBJECT
  MV1817 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1813 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1822 :ISA N-FOLD :NUMBER MV1821) (:VAR MV1821 :ISA NUMBER :VALUE 10)
 (:VAR MV1817 :ISA BIO-AMOUNT :MEASURED-ITEM MV1804 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1804 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1827 :ISA COPULAR-PREDICATION :ITEM MV1807 :VALUE MV1811 :PREDICATE MV1805)
 (:VAR MV1807 :ISA BIO-AMOUNT :MEASURED-ITEM MV1809 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1809 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1811 :ISA HIGH :ADVERB MV1810) (:VAR MV1810 :ISA EVER) (:VAR MV1805 :ISA BE))

___________________
186: "Does Vemurafenib decrease phosphorylated ERK in the model?"

                    SOURCE-START
e20   DECREASE      1 "Does Vemurafenib decrease phosphorylated ERK in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib decrease phosphorylated ERK in the model?"
 (:VAR MV1842 :ISA POLAR-QUESTION :STATEMENT MV1840)
 (:VAR MV1840 :ISA DECREASE :AGENT MV1832 :OBJECT MV1836 :RAW-TEXT "decrease")
 (:VAR MV1832 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV1836 :ISA PROTEIN-FAMILY :INFO-CONTEXT MV1839 :PREDICATION MV1835 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1839 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV1835 :ISA PHOSPHORYLATE :SUBSTRATE MV1836 :RAW-TEXT "phosphorylated"))

___________________
187: "Does Selumetinib decrease JUN in the model?"

                    SOURCE-START
e17   DECREASE      1 "Does Selumetinib decrease JUN in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib decrease JUN in the model?" (:VAR MV1853 :ISA POLAR-QUESTION :STATEMENT MV1851)
 (:VAR MV1851 :ISA DECREASE :AGENT MV1844 :OBJECT MV1847 :RAW-TEXT "decrease")
 (:VAR MV1844 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV1847 :ISA PROTEIN :INFO-CONTEXT MV1850 :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV1850 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
188: "How does KRAS regulate MAP2K1?"

                    SOURCE-START
e8    REGULATE      1 "How does KRAS regulate MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS regulate MAP2K1?"
 (:VAR MV1858 :ISA REGULATE :MANNER MV1855 :AGENT MV1857 :OBJECT MV1854 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV1855 :ISA HOW)
 (:VAR MV1857 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV1854 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
189: "How does HRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does HRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does HRAS activate MAPK3?"
 (:VAR MV1863 :ISA BIO-ACTIVATE :MANNER MV1860 :AGENT MV1862 :OBJECT MV1859 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV1860 :ISA HOW)
 (:VAR MV1862 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME "RASH_HUMAN")
 (:VAR MV1859 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME "MK03_HUMAN"))

___________________
190: "Does Vemurafenib inhibit BRAF?"

                    SOURCE-START
e8    INHIBIT       1 "Does Vemurafenib inhibit BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib inhibit BRAF?" (:VAR MV1869 :ISA POLAR-QUESTION :STATEMENT MV1868)
 (:VAR MV1868 :ISA INHIBIT :AGENT MV1865 :OBJECT MV1867 :RAW-TEXT "inhibit")
 (:VAR MV1865 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV1867 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
191: "What transcription factors are shared by SRF, HRAS, and ELK1?"

                    SOURCE-START
e19   SHARE         1 "What transcription factors are shared by SRF, HRAS, and ELK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by SRF, HRAS, and ELK1?"
 (:VAR MV1880 :ISA SHARE :OBJECT MV1870 :PARTICIPANT MV1879 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV1870 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV1879 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and ELK1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV1876 MV1877 MV1871))
 (:VAR MV1876 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1877 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME "RASH_HUMAN")
 (:VAR MV1871 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

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
 (:VAR MV1892 :ISA BE :SUBJECT MV1891 :PREDICATE MV1893 :PRESENT "PRESENT") (:VAR MV1891 :ISA WHAT)
 (:VAR MV1893 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1890 :RAW-TEXT "upstream")
 (:VAR MV1890 :ISA PROTEIN :RAW-TEXT "CD3E" :UID "UP:P07766" :NAME "CD3E_HUMAN"))

___________________
194: "I want to find a treatment for pancreatic cancer."

                    SOURCE-START
e22   WANT          1 "I want to find a treatment for pancreatic cancer" 10
                    PERIOD
                    END-OF-SOURCE
("I want to find a treatment for pancreatic cancer."
 (:VAR MV1901 :ISA WANT :AGENT MV1898 :THEME MV1909 :PRESENT "PRESENT")
 (:VAR MV1898 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV1909 :ISA BIO-FIND :AGENT MV1898 :OBJECT MV1906 :PRESENT "PRESENT" :RAW-TEXT "find")
 (:VAR MV1898 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV1906 :ISA TREATMENT :DISEASE MV1897 :HAS-DETERMINER "A" :RAW-TEXT "treatment")
 (:VAR MV1897 :ISA CANCER :UID "TS-0739"))

___________________
195: "What drug could I use?"

                    SOURCE-START
e9    DRUG          1 "What drug " 3
e2    MODAL         3 "could " 4
e10   BIO-USE       4 "I use" 6
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e9    NP            1 "What drug " 3
e2    MODAL         3 "could " 4
e10   TRANSITIVE-CLAUSE-WITHOUT-OBJECT  4 "I use" 6
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
196: "Are there any drugs for BRAF?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there any drugs for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for BRAF?" (:VAR MV1925 :ISA THERE-EXISTS :VALUE MV1922 :PREDICATE MV1919)
 (:VAR MV1922 :ISA DRUG :TARGET MV1924 :QUANTIFIER MV1921 :RAW-TEXT "drugs")
 (:VAR MV1924 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1921 :ISA ANY :WORD "any") (:VAR MV1919 :ISA SYNTACTIC-THERE))

___________________
197: "Are they kinases?"

                    SOURCE-START
e3    BE            1 "Are they kinases" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for BRAF?" (:VAR MV1925 :ISA THERE-EXISTS :VALUE MV1922 :PREDICATE MV1919)
 (:VAR MV1922 :ISA DRUG :TARGET MV1924 :QUANTIFIER MV1921 :RAW-TEXT "drugs")
 (:VAR MV1924 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1921 :ISA ANY :WORD "any") (:VAR MV1919 :ISA SYNTACTIC-THERE))

___________________
198: "Can you find a drug for BRAF?"

                    SOURCE-START
e17   BIO-FIND      1 "Can you find a drug for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you find a drug for BRAF?" (:VAR MV1939 :ISA POLAR-QUESTION :STATEMENT MV1933)
 (:VAR MV1933 :ISA BIO-FIND :AGENT MV1931 :OBJECT MV1935 :MODAL "CAN" :RAW-TEXT "find")
 (:VAR MV1931 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1935 :ISA DRUG :TARGET MV1937 :HAS-DETERMINER "A" :RAW-TEXT "drug")
 (:VAR MV1937 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
199: "Can you tell me all the transcription factors that are shared by elk1 and srf?"

                    SOURCE-START
e35   TELL          1 "Can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me all the transcription factors that are shared by elk1 and srf?"
 (:VAR MV1957 :ISA POLAR-QUESTION :STATEMENT MV1944)
 (:VAR MV1944 :ISA TELL :AGENT MV1943 :THEME MV1940 :BENEFICIARY MV1945 :MODAL "CAN")
 (:VAR MV1943 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1940 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV1955 :QUANTIFIER MV1946 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV1955 :ISA SHARE :OBJECT MV1940 :THAT-REL T :PARTICIPANT MV1954 :MODAL "CAN" :RAW-TEXT
  "shared")
 (:VAR MV1954 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV1941 MV1953))
 (:VAR MV1941 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1953 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1946 :ISA ALL :WORD "all") (:VAR MV1945 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
200: "Can you tell me what transcription factors are shared by elk1 and srf?"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf?"
 (:VAR MV1973 :ISA POLAR-QUESTION :STATEMENT MV1962)
 (:VAR MV1962 :ISA TELL :AGENT MV1961 :THEME MV1971 :THEME MV1963 :MODAL "CAN")
 (:VAR MV1961 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1971 :ISA SHARE :OBJECT MV1958 :PARTICIPANT MV1970 :MODAL "CAN" :RAW-TEXT "shared")
 (:VAR MV1958 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV1970 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV1959 MV1969))
 (:VAR MV1959 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1969 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1963 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
201: "Do you know any drugs for BRAF?"

                    SOURCE-START
e15   KNOW          1 "Do you know any drugs for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do you know any drugs for BRAF?" (:VAR MV1984 :ISA POLAR-QUESTION :STATEMENT MV1983)
 (:VAR MV1983 :ISA KNOW :AGENT MV1975 :STATEMENT MV1978)
 (:VAR MV1975 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1978 :ISA DRUG :TARGET MV1980 :QUANTIFIER MV1977 :RAW-TEXT "drugs")
 (:VAR MV1980 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1977 :ISA ANY :WORD "any"))

___________________
202: "Does STAT3 regulate the JUN gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the JUN gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the JUN gene in the lung?"
 (:VAR MV1996 :ISA POLAR-QUESTION :STATEMENT MV1994)
 (:VAR MV1994 :ISA REGULATE :AGENT MV1985 :OBJECT MV1990 :RAW-TEXT "regulate")
 (:VAR MV1985 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV1990 :ISA GENE :ORGAN MV1993 :HAS-DETERMINER "THE" :EXPRESSES MV1989 :RAW-TEXT "gene")
 (:VAR MV1993 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV1989 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN"))

___________________
203: "Does STAT3 regulate the c-fos gene in liver?"

                    SOURCE-START
e20   REGULATE      1 "Does STAT3 regulate the c-fos gene in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in liver?" (:VAR MV2007 :ISA POLAR-QUESTION :STATEMENT MV2005)
 (:VAR MV2005 :ISA REGULATE :AGENT MV1997 :OBJECT MV2002 :RAW-TEXT "regulate")
 (:VAR MV1997 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2002 :ISA GENE :ORGAN MV2004 :HAS-DETERMINER "THE" :EXPRESSES MV1998 :RAW-TEXT "gene")
 (:VAR MV2004 :ISA LIVER)
 (:VAR MV1998 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
204: "Does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e15   REGULATE      1 "Does STAT3 regulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene?" (:VAR MV2015 :ISA POLAR-QUESTION :STATEMENT MV2014)
 (:VAR MV2014 :ISA REGULATE :AGENT MV2008 :OBJECT MV2013 :RAW-TEXT "regulate")
 (:VAR MV2008 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2013 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2009 :RAW-TEXT "gene")
 (:VAR MV2009 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
205: "Does STAT3 regulate the cfos gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the cfos gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the cfos gene in the lung?"
 (:VAR MV2027 :ISA POLAR-QUESTION :STATEMENT MV2025)
 (:VAR MV2025 :ISA REGULATE :AGENT MV2016 :OBJECT MV2021 :RAW-TEXT "regulate")
 (:VAR MV2016 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2021 :ISA GENE :ORGAN MV2024 :HAS-DETERMINER "THE" :EXPRESSES MV2020 :RAW-TEXT "gene")
 (:VAR MV2024 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV2020 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
206: "Does TP53 target MDM2?"

                    SOURCE-START
e11   TARGET        1 "Does TP53 target MDM2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TP53 target MDM2?" (:VAR MV2034 :ISA POLAR-QUESTION :STATEMENT MV2033)
 (:VAR MV2033 :ISA TARGET :AGENT MV2028 :OBJECT MV2029 :RAW-TEXT "target")
 (:VAR MV2028 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV2029 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME "MDM2_HUMAN"))

___________________
207: "Does miR-2000-5p target stat3"

                    SOURCE-START
e11   TARGET        1 "Does miR-2000-5p target stat3" 11
                    END-OF-SOURCE
("Does miR-2000-5p target stat3" (:VAR MV2041 :ISA POLAR-QUESTION :STATEMENT MV2040)
 (:VAR MV2040 :ISA TARGET :AGENT MV2035 :OBJECT MV2036 :RAW-TEXT "target")
 (:VAR MV2035 :ISA MICRO-RNA :RAW-TEXT "miR-2000-5p" :NAME "microRNA 2000-5p" :UID
  "MIMAmiR-2000-5p")
 (:VAR MV2036 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
208: "Does miR-20b-5p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-20b-5p target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5p target STAT3?" (:VAR MV2048 :ISA POLAR-QUESTION :STATEMENT MV2047)
 (:VAR MV2047 :ISA TARGET :AGENT MV2042 :OBJECT MV2043 :RAW-TEXT "target")
 (:VAR MV2042 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm" :UID "MIMAT0001413")
 (:VAR MV2043 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
209: "Does miR-222-3p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-222-3p target STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-222-3p target STAT3?" (:VAR MV2055 :ISA POLAR-QUESTION :STATEMENT MV2054)
 (:VAR MV2054 :ISA TARGET :AGENT MV2049 :OBJECT MV2050 :RAW-TEXT "target")
 (:VAR MV2049 :ISA MICRO-RNA :RAW-TEXT "miR-222-3p" :NAME "microRNA 222-3p" :UID "MIMAT0000279")
 (:VAR MV2050 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
210: "Does stat3 regulate cfors in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfors in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfors in liver" (:VAR MV2064 :ISA POLAR-QUESTION :STATEMENT MV2062)
 (:VAR MV2062 :ISA REGULATE :AGENT MV2056 :OBJECT MV2061 :RAW-TEXT "regulate")
 (:VAR MV2056 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2061 :ISA BIO-ENTITY :ORGAN MV2060 :NAME "cfors") (:VAR MV2060 :ISA LIVER))

___________________
211: "Does stat3 regulate cfos in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfos in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfos in liver" (:VAR MV2073 :ISA POLAR-QUESTION :STATEMENT MV2071)
 (:VAR MV2071 :ISA REGULATE :AGENT MV2065 :OBJECT MV2068 :RAW-TEXT "regulate")
 (:VAR MV2065 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2068 :ISA PROTEIN :ORGAN MV2070 :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV2070 :ISA LIVER))

___________________
212: "Does it regulate cfos in brain"

                    SOURCE-START
e14   REGULATE      1 "Does it regulate cfos in brain" 7
                    END-OF-SOURCE
("Does it regulate cfos in brain" (:VAR MV2082 :ISA POLAR-QUESTION :STATEMENT MV2080)
 (:VAR MV2080 :ISA REGULATE :AGENT-OR-CAUSE MV2075 :OBJECT MV2077 :RAW-TEXT "regulate")
 (:VAR MV2075 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2077 :ISA PROTEIN :ORGAN MV2079 :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV2079 :ISA BRAIN))

___________________
213: "Does stat3 regulate cfos?"

                    SOURCE-START
e9    REGULATE      1 "Does stat3 regulate cfos" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 regulate cfos?" (:VAR MV2088 :ISA POLAR-QUESTION :STATEMENT MV2087)
 (:VAR MV2087 :ISA REGULATE :AGENT MV2083 :OBJECT MV2086 :RAW-TEXT "regulate")
 (:VAR MV2083 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2086 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
214: "Does stat3 regulate the cfos gene in blood cells"

                    SOURCE-START
e21   REGULATE      1 "Does stat3 regulate the cfos gene in blood cells" 11
                    END-OF-SOURCE
("Does stat3 regulate the cfos gene in blood cells"
 (:VAR MV2100 :ISA POLAR-QUESTION :STATEMENT MV2098)
 (:VAR MV2098 :ISA REGULATE :AGENT MV2089 :OBJECT MV2094 :RAW-TEXT "regulate")
 (:VAR MV2089 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2094 :ISA GENE :CELL-TYPE MV2097 :HAS-DETERMINER "THE" :EXPRESSES MV2093 :RAW-TEXT "gene")
 (:VAR MV2097 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV2096)
 (:VAR MV2096 :ISA BIO-ORGAN :NAME "blood" :UID "BTO:0000089")
 (:VAR MV2093 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
215: "Does the il-12 pathway utilize SGK1?"

                    SOURCE-START
e17   UTILIZE       1 "Does the il-12 pathway utilize SGK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the il-12 pathway utilize SGK1?" (:VAR MV2110 :ISA POLAR-QUESTION :STATEMENT MV2109)
 (:VAR MV2109 :ISA UTILIZE :PARTICIPANT MV2106 :OBJECT MV2101 :RAW-TEXT "utilize")
 (:VAR MV2106 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2108 :RAW-TEXT "pathway")
 (:VAR MV2108 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV2101 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME "SGK1_HUMAN"))

___________________
216: "Does the mTor pathway utilize SGK1?"

                    SOURCE-START
e16   UTILIZE       1 "Does the mTor pathway utilize SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway utilize SGK1?" (:VAR MV2120 :ISA POLAR-QUESTION :STATEMENT MV2119)
 (:VAR MV2119 :ISA UTILIZE :PARTICIPANT MV2117 :OBJECT MV2111 :RAW-TEXT "utilize")
 (:VAR MV2117 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2114 :RAW-TEXT "pathway")
 (:VAR MV2114 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME "MTOR_HUMAN")
 (:VAR MV2111 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME "SGK1_HUMAN"))

___________________
217: "Give me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras decreases frizzled8."
 (:VAR MV2122 :ISA GIVE :THEME MV2129 :BENEFICIARY MV2123 :PRESENT "PRESENT")
 (:VAR MV2129 :ISA EVIDENCE :STATEMENT MV2128 :HAS-DETERMINER "THE")
 (:VAR MV2128 :ISA DECREASE :AGENT MV2127 :OBJECT MV2121 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV2127 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV2121 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV2123 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
218: "Give me the evidence that kras regulates frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras regulates frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras regulates frizzled8."
 (:VAR MV2131 :ISA GIVE :THEME MV2138 :BENEFICIARY MV2132 :PRESENT "PRESENT")
 (:VAR MV2138 :ISA EVIDENCE :STATEMENT MV2137 :HAS-DETERMINER "THE")
 (:VAR MV2137 :ISA REGULATE :AGENT MV2136 :OBJECT MV2130 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2136 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV2130 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV2132 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
219: "Is MEK a kinase?"

                    SOURCE-START
e8    BE            1 "Is MEK a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK a kinase?"
 (:VAR MV2143 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88035>
   (PREDICATE (#<kinase 88034> (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "kinase"))))))

___________________
220: "Is MEK2 inhibited by Selumetinib?"

                    SOURCE-START
e11   INHIBIT       1 "Is MEK2 inhibited by Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK2 inhibited by Selumetinib?" (:VAR MV2151 :ISA POLAR-QUESTION :STATEMENT MV2150)
 (:VAR MV2150 :ISA INHIBIT :AGENT MV2144 :AGENT MV2148 :PAST "PAST" :RAW-TEXT "inhibited")
 (:VAR MV2144 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME "MP2K2_HUMAN")
 (:VAR MV2148 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
221: "Is STAT3 a transcription factor for c-fos gene?"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene?"
 (:VAR MV2160 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88049>
   (PREDICATE
    (#<transcription-factor 88048>
     (CONTROLLED-GENE
      (#<gene 87944>
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86579> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "transcription factor"))))))

___________________
222: "Is STAT3 one of the regulators of the c-fos gene?"

                    SOURCE-START
e27   BE            1 "Is STAT3 one of the regulators of the c-fos gene" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 one of the regulators of the c-fos gene?"
 (:VAR MV2175 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88056>
   (PREDICATE
    (#<regulator 88055> (QUANTIFIER 1)
     (THEME
      (#<gene 87945> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86579> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<the 106>)) (RAW-TEXT "regulators"))))))

___________________
223: "Is Selumetinib an inhibitor of MEK1?"

                    SOURCE-START
e14   BE            1 "Is Selumetinib an inhibitor of MEK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Selumetinib an inhibitor of MEK1?"
 (:VAR MV2183 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88065>
   (PREDICATE
    (#<inhibitor 88064>
     (PROTEIN
      (#<protein "MP2K1_HUMAN" 88059> (RAW-TEXT "MEK1") (UID "UP:Q02750") (NAME "MP2K1_HUMAN")))
     (HAS-DETERMINER (#<an 108> (WORD "an"))) (RAW-TEXT "inhibitor"))))))

___________________
224: "Is Vemurafenib an inhibitor for BRAF?"

                    SOURCE-START
e13   BE            1 "Is Vemurafenib an inhibitor for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Vemurafenib an inhibitor for BRAF?"
 (:VAR MV2191 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88069>
   (PREDICATE
    (#<inhibitor 88068>
     (TARGET-OR-PROTEIN
      (#<protein "BRAF_HUMAN" 86460> (RAW-TEXT "BRAF") (UID "UP:P15056") (NAME "BRAF_HUMAN")))
     (HAS-DETERMINER (#<an 108> (WORD "an"))) (RAW-TEXT "inhibitor"))))))

___________________
225: "Is fakeprotein a kinase"

                    SOURCE-START
e8    BE            1 "Is fakeprotein a kinase" 5
                    END-OF-SOURCE
("Is fakeprotein a kinase"
 (:VAR MV2196 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88035>
   (PREDICATE (#<kinase 88034> (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "kinase"))))))

___________________
226: "Is hmga2 a kinase"

                    SOURCE-START
e9    BE            1 "Is hmga2 a kinase" 6
                    END-OF-SOURCE
("Is hmga2 a kinase"
 (:VAR MV2201 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88035>
   (PREDICATE (#<kinase 88034> (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "kinase"))))))

___________________
227: "Is stat3 an apoptotic regulator?"

                    SOURCE-START
e12   BE            1 "Is stat3 an apoptotic regulator" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 an apoptotic regulator?"
 (:VAR MV2208 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88079>
   (PREDICATE
    (#<regulator 88078> (HAS-DETERMINER (#<an 108> (WORD "an"))) (MODIFIER (#<apoptotic 86406>))
     (RAW-TEXT "regulator"))))))

___________________
228: "Is stat3 involved in any apoptotic pathways?"

                    SOURCE-START
e16   INVOLVE       1 "Is stat3 involved in any apoptotic pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in any apoptotic pathways?" (:VAR MV2220 :ISA POLAR-QUESTION :STATEMENT MV2219)
 (:VAR MV2219 :ISA INVOLVE :THEME MV2209 :CONTEXT MV2216 :PAST "PAST")
 (:VAR MV2209 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2216 :ISA PATHWAY :QUANTIFIER MV2213 :PROCESS MV2214 :RAW-TEXT "pathways")
 (:VAR MV2213 :ISA ANY :WORD "any") (:VAR MV2214 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
229: "Is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e14   INVOLVE       1 "Is stat3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in apoptotic regulation?" (:VAR MV2230 :ISA POLAR-QUESTION :STATEMENT MV2229)
 (:VAR MV2229 :ISA INVOLVE :THEME MV2221 :THEME MV2227 :PAST "PAST")
 (:VAR MV2221 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2227 :ISA REGULATE :AGENT MV2225 :RAW-TEXT "regulation")
 (:VAR MV2225 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
230: "Is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e13   INVOLVE       1 "Is stat3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in regulating apoptosis?" (:VAR MV2239 :ISA POLAR-QUESTION :STATEMENT MV2238)
 (:VAR MV2238 :ISA INVOLVE :THEME MV2231 :THEME MV2235 :PAST "PAST")
 (:VAR MV2231 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2235 :ISA REGULATE :AFFECTED-PROCESS MV2236 :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT
  "regulating")
 (:VAR MV2236 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
231: "What proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "What proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does MEK phosphorylate?"
 (:VAR MV2244 :ISA PHOSPHORYLATE :AMINO-ACID MV2241 :AGENT MV2243 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylate")
 (:VAR MV2241 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV2243 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
232: "Is the first one a kinase"

                    SOURCE-START
e15   BE            1 "Is the first one a kinase" 7
                    END-OF-SOURCE
("Is the first one a kinase"
 (:VAR MV2253 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88035>
   (PREDICATE (#<kinase 88034> (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "kinase"))))))

___________________
233: "Is there a drug that targets BRAF?"

                    SOURCE-START
e18   THERE-EXISTS  1 "Is there a drug that targets BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there a drug that targets BRAF?"
 (:VAR MV2263 :ISA THERE-EXISTS :VALUE MV2258 :PREDICATE MV2255)
 (:VAR MV2258 :ISA DRUG :PREDICATION MV2261 :HAS-DETERMINER "A" :RAW-TEXT "drug")
 (:VAR MV2261 :ISA TARGET :AGENT MV2258 :THAT-REL T :OBJECT MV2262 :PRESENT "PRESENT" :RAW-TEXT
  "targets")
 (:VAR MV2262 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV2255 :ISA SYNTACTIC-THERE))

___________________
234: "Is there an apoptotic pathway regulated by stat3?"

                    SOURCE-START
e21   THERE-EXISTS  1 "Is there an apoptotic pathway regulated by stat3" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway regulated by stat3?"
 (:VAR MV2274 :ISA THERE-EXISTS :VALUE MV2271 :PREDICATE MV2266)
 (:VAR MV2271 :ISA PATHWAY :PREDICATION MV2272 :HAS-DETERMINER "AN" :PROCESS MV2269 :RAW-TEXT
  "pathway")
 (:VAR MV2272 :ISA REGULATE :AFFECTED-PROCESS MV2271 :AGENT MV2264 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2264 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2269 :ISA APOPTOSIS :RAW-TEXT "apoptotic") (:VAR MV2266 :ISA SYNTACTIC-THERE))

___________________
235: "Is there an apoptotic pathway that is regulated by stat3?"

                    SOURCE-START
e26   THERE-EXISTS  1 "Is there an apoptotic pathway that is regulated by stat3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway that is regulated by stat3?"
 (:VAR MV2288 :ISA THERE-EXISTS :VALUE MV2283 :PREDICATE MV2278)
 (:VAR MV2283 :ISA PATHWAY :PREDICATION MV2289 :HAS-DETERMINER "AN" :PROCESS MV2281 :RAW-TEXT
  "pathway")
 (:VAR MV2289 :ISA REGULATE :AFFECTED-PROCESS MV2283 :THAT-REL T :AGENT MV2276 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2276 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2281 :ISA APOPTOSIS :RAW-TEXT "apoptotic") (:VAR MV2278 :ISA SYNTACTIC-THERE))

___________________
236: "Let me know if there are any apoptotic genes stat3 regulates"

                    SOURCE-START
e25   LET           1 "Let me know if there are any apoptotic genes stat3 regulates" 13
                    END-OF-SOURCE
("Let me know if there are any apoptotic genes stat3 regulates"
 (:VAR MV2292 :ISA LET :COMPLEMENT MV2306 :PRESENT "PRESENT")
 (:VAR MV2306 :ISA KNOW :AGENT MV2293 :STATEMENT MV2305 :PRESENT "PRESENT")
 (:VAR MV2293 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2305 :ISA WH-QUESTION :STATEMENT MV2304 :WH IF)
 (:VAR MV2304 :ISA THERE-EXISTS :VALUE MV2302 :PREDICATE MV2298)
 (:VAR MV2302 :ISA GENE :PREDICATION MV2303 :QUANTIFIER MV2299 :MODIFIER MV2301 :RAW-TEXT "genes")
 (:VAR MV2303 :ISA REGULATE :OBJECT MV2302 :AGENT MV2291 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2291 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2299 :ISA ANY :WORD "any") (:VAR MV2301 :ISA APOPTOTIC) (:VAR MV2298 :ISA BE))

___________________
237: "Let me know which genes stat3 regulates"

                    SOURCE-START
e14   LET           1 "Let me know which genes stat3 regulates" 9
                    END-OF-SOURCE
("Let me know which genes stat3 regulates"
 (:VAR MV2308 :ISA LET :COMPLEMENT MV2314 :PRESENT "PRESENT")
 (:VAR MV2314 :ISA KNOW :AGENT MV2309 :STATEMENT MV2312 :PRESENT "PRESENT")
 (:VAR MV2309 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2312 :ISA GENE :PREDICATION MV2313 :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV2313 :ISA REGULATE :OBJECT MV2312 :AGENT MV2307 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2307 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
238: "List all the genes regulated by elk1 and srf?"

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf?"
 (:VAR MV2316 :ISA LIST :THEME MV2319 :PRESENT "PRESENT")
 (:VAR MV2319 :ISA GENE :PREDICATION MV2320 :QUANTIFIER MV2317 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV2320 :ISA REGULATE :OBJECT MV2319 :AGENT MV2324 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV2324 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2315 MV2323))
 (:VAR MV2315 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2323 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2317 :ISA ALL :WORD "all"))

___________________
239: "List genes regulated by elk1 and srf"

                    SOURCE-START
e12   LIST          1 "List genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("List genes regulated by elk1 and srf" (:VAR MV2327 :ISA LIST :THEME MV2328 :PRESENT "PRESENT")
 (:VAR MV2328 :ISA GENE :PREDICATION MV2329 :RAW-TEXT "genes")
 (:VAR MV2329 :ISA REGULATE :OBJECT MV2328 :AGENT MV2333 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV2333 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2326 MV2332))
 (:VAR MV2326 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2332 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
240: "List some genes that are regulated by elk1 and srf"

                    SOURCE-START
e21   LIST          1 "List some genes that are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("List some genes that are regulated by elk1 and srf"
 (:VAR MV2336 :ISA LIST :THEME MV2338 :PRESENT "PRESENT")
 (:VAR MV2338 :ISA GENE :PREDICATION MV2346 :QUANTIFIER MV2337 :RAW-TEXT "genes")
 (:VAR MV2346 :ISA REGULATE :OBJECT MV2338 :THAT-REL T :AGENT MV2345 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV2345 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2335 MV2344))
 (:VAR MV2335 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2344 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2337 :ISA SOME :WORD "some"))

___________________
241: "List the evidence that kras decreases frizzled8."

                    SOURCE-START
e15   LIST          1 "List the evidence that kras decreases frizzled8" 9
                    PERIOD
                    END-OF-SOURCE
("List the evidence that kras decreases frizzled8."
 (:VAR MV2349 :ISA LIST :THEME MV2355 :PRESENT "PRESENT")
 (:VAR MV2355 :ISA EVIDENCE :STATEMENT MV2354 :HAS-DETERMINER "THE")
 (:VAR MV2354 :ISA DECREASE :AGENT MV2353 :OBJECT MV2348 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV2353 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV2348 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
242: "Name genes regulated by elk1 and srf"

                    SOURCE-START
e14   NAME-SOMETHING  1 "Name genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("Name genes regulated by elk1 and srf"
 (:VAR MV2357 :ISA NAME-SOMETHING :PATIENT MV2360 :PRESENT "PRESENT")
 (:VAR MV2360 :ISA GENE :PREDICATION MV2361 :RAW-TEXT "genes")
 (:VAR MV2361 :ISA REGULATE :OBJECT MV2360 :AGENT MV2365 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV2365 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2356 MV2364))
 (:VAR MV2356 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2364 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
243: "Of the apoptotic genes regulated by stat3, which are active in the liver?"

                    SOURCE-START
e33   COPULAR-PREDICATE 1 "Of the apoptotic genes regulated by stat3, which are active in the liver" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes regulated by stat3, which are active in the liver?"
 (:VAR MV2383 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2372 :VALUE MV2377 :PREDICATE MV2376)
 (:VAR MV2372 :ISA GENE :PREDICATION MV2373 :HAS-DETERMINER "THE" :MODIFIER MV2371 :RAW-TEXT
  "genes")
 (:VAR MV2373 :ISA REGULATE :OBJECT MV2372 :AGENT MV2367 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV2367 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2371 :ISA APOPTOTIC) (:VAR MV2377 :ISA ACTIVE :ORGAN MV2380)
 (:VAR MV2380 :ISA LIVER :HAS-DETERMINER "THE") (:VAR MV2376 :ISA BE :PRESENT "PRESENT"))

___________________
244: "Of the apoptotic genes stat3 regulates, which are active in the liver?"

                    SOURCE-START
e30   COPULAR-PREDICATE 1 "Of the apoptotic genes stat3 regulates, which are active in the liver" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes stat3 regulates, which are active in the liver?"
 (:VAR MV2401 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2391 :VALUE MV2395 :PREDICATE MV2394)
 (:VAR MV2391 :ISA GENE :PREDICATION MV2392 :HAS-DETERMINER "THE" :MODIFIER MV2390 :RAW-TEXT
  "genes")
 (:VAR MV2392 :ISA REGULATE :OBJECT MV2391 :AGENT MV2386 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2386 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2390 :ISA APOPTOTIC) (:VAR MV2395 :ISA ACTIVE :ORGAN MV2398)
 (:VAR MV2398 :ISA LIVER :HAS-DETERMINER "THE") (:VAR MV2394 :ISA BE :PRESENT "PRESENT"))

___________________
245: "Of the genes stat3 regulates in the liver, which are apoptotic?"

                    SOURCE-START
e28   COPULAR-PREDICATE 1 "Of the genes stat3 regulates in the liver, which are apoptotic" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the genes stat3 regulates in the liver, which are apoptotic?"
 (:VAR MV2416 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2406 :VALUE MV2413 :PREDICATE MV2412)
 (:VAR MV2406 :ISA GENE :PREDICATION MV2407 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV2407 :ISA REGULATE :OBJECT MV2406 :AGENT MV2403 :ORGAN MV2410 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV2403 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2410 :ISA LIVER :HAS-DETERMINER "THE") (:VAR MV2413 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2412 :ISA BE :PRESENT "PRESENT"))

___________________
246: "Of the hepatic genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Of the hepatic genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the hepatic genes stat3 regulates, which are apoptotic?"
 (:VAR MV2430 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2423 :VALUE MV2427 :PREDICATE MV2426)
 (:VAR MV2423 :ISA GENE :PREDICATION MV2424 :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2422
  :RAW-TEXT "genes")
 (:VAR MV2424 :ISA REGULATE :OBJECT MV2423 :AGENT MV2419 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2419 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2422 :ISA LIVER) (:VAR MV2427 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2426 :ISA BE :PRESENT "PRESENT"))

___________________
247: "Of the liver genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Of the liver genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the liver genes stat3 regulates, which are apoptotic?"
 (:VAR MV2443 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2436 :VALUE MV2440 :PREDICATE MV2439)
 (:VAR MV2436 :ISA GENE :PREDICATION MV2437 :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2435
  :RAW-TEXT "genes")
 (:VAR MV2437 :ISA REGULATE :OBJECT MV2436 :AGENT MV2432 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2432 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2435 :ISA LIVER) (:VAR MV2440 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2439 :ISA BE :PRESENT "PRESENT"))

___________________
248: "Please find pathways involving SRF"

                    SOURCE-START
e8    FIND-OUT      1 "Please find pathways " 4
e7    INVOLVE       4 "involving SRF" 6
                    END-OF-SOURCE
                    SOURCE-START
e8    VP            1 "Please find pathways " 4
e7    VP+ING        4 "involving SRF" 6
                    END-OF-SOURCE


___________________
249: "Please show me KEGG pathways involving SRF"

                    SOURCE-START
e13   SHOW          1 "Please show me KEGG pathways involving SRF" 8
                    END-OF-SOURCE
("Please show me KEGG pathways involving SRF"
 (:VAR MV2453 :ISA SHOW :STATEMENT-OR-THEME MV2455 :BENEFICIARY MV2454 :PRESENT "PRESENT" :ADVERB
  MV2452)
 (:VAR MV2455 :ISA PATHWAY :PREDICATION MV2456 :MODIFIER MV2458 :RAW-TEXT "pathways")
 (:VAR MV2456 :ISA INVOLVE :THEME MV2455 :THEME MV2457 :PROGRESSIVE "PROGRESSIVE")
 (:VAR MV2457 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2458 :ISA BIO-ENTITY :NAME "KEGG") (:VAR MV2454 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2452 :ISA PLEASE))

___________________
250: "Please show me pathways involving SRF"

                    SOURCE-START
e11   SHOW          1 "Please show me pathways involving SRF" 7
                    END-OF-SOURCE
("Please show me pathways involving SRF"
 (:VAR MV2460 :ISA SHOW :STATEMENT-OR-THEME MV2462 :BENEFICIARY MV2461 :PRESENT "PRESENT" :ADVERB
  MV2459)
 (:VAR MV2462 :ISA PATHWAY :PREDICATION MV2463 :RAW-TEXT "pathways")
 (:VAR MV2463 :ISA INVOLVE :THEME MV2462 :THEME MV2464 :PROGRESSIVE "PROGRESSIVE")
 (:VAR MV2464 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2461 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV2459 :ISA PLEASE))

___________________
251: "MEK activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "MEK activates ERK" 4
                    END-OF-SOURCE
("MEK activates ERK"
 (:VAR MV2466 :ISA BIO-ACTIVATE :AGENT MV2465 :OBJECT MV2467 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV2465 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2467 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV2468 :ISA REMOVE :OBJECT MV2475 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2475 :ISA FACT :STATEMENT MV2473 :HAS-DETERMINER "THE")
 (:VAR MV2473 :ISA BIO-ACTIVATE :AGENT MV2472 :OBJECT MV2474 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV2472 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2474 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV2480 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV2477 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV2477 :ISA BUILD :ARTIFACT MV2479 :PRESENT "PRESENT")
 (:VAR MV2479 :ISA MODEL :HAS-DETERMINER "A"))

___________________
254: "Inactive MEK activates ERK"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "Inactive MEK activates ERK" 5
                    END-OF-SOURCE
("Inactive MEK activates ERK"
 (:VAR MV2483 :ISA BIO-ACTIVATE :AGENT MV2482 :OBJECT MV2484 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV2482 :ISA PROTEIN-FAMILY :PREDICATION MV2481 :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2481 :ISA INACTIVE)
 (:VAR MV2484 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV2485 :ISA REMOVE :OBJECT MV2493 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2493 :ISA FACT :STATEMENT MV2491 :HAS-DETERMINER "THE")
 (:VAR MV2491 :ISA BIO-ACTIVATE :AGENT MV2490 :OBJECT MV2492 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV2490 :ISA PROTEIN-FAMILY :PREDICATION MV2489 :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2489 :ISA INACTIVE)
 (:VAR MV2492 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV2495 :ISA SHOW :STATEMENT-OR-THEME MV2496 :PRESENT "PRESENT")
 (:VAR MV2496 :ISA PATHWAY :NON-CELLULAR-LOCATION MV2494 :RAW-TEXT "pathways")
 (:VAR MV2494 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
257: "Show me pathways involving SRF"

                    SOURCE-START
e9    SHOW          1 "Show me pathways involving SRF" 6
                    END-OF-SOURCE
("Show me pathways involving SRF"
 (:VAR MV2497 :ISA SHOW :STATEMENT-OR-THEME MV2499 :BENEFICIARY MV2498 :PRESENT "PRESENT")
 (:VAR MV2499 :ISA PATHWAY :PREDICATION MV2500 :RAW-TEXT "pathways")
 (:VAR MV2500 :ISA INVOLVE :THEME MV2499 :THEME MV2501 :PROGRESSIVE "PROGRESSIVE")
 (:VAR MV2501 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2498 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
258: "Show me pathways with SRF in them"

                    SOURCE-START
e13   SHOW          1 "Show me pathways with SRF in them" 8
                    END-OF-SOURCE
("Show me pathways with SRF in them"
 (:VAR MV2502 :ISA SHOW :STATEMENT-OR-THEME MV2504 :BENEFICIARY MV2503 :PRESENT "PRESENT")
 (:VAR MV2504 :ISA PATHWAY :PATHWAYCOMPONENT MV2506 :RAW-TEXT "pathways")
 (:VAR MV2506 :ISA PROTEIN
  :CELL-LINE-OR-CELL-TYPE-OR-CELLULAR-LOCATION-OR-CONTEXT-OR-INFO-CONTEXT-OR-ORGAN-OR-PREPARATION-OR-ORGANISM-OR-DISEASE-OR-IN-EQUILIBRIUM-WITH-OR-COMPLEX-OR-EQUILIBRIUM-STATE-OR-STATE-OR-IN-PATHWAY
  MV2508 :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2508 :ISA PRONOUN/PLURAL :WORD "them") (:VAR MV2503 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
259: "Show me pathways with SRF"

                    SOURCE-START
e8    SHOW          1 "Show me pathways with SRF" 6
                    END-OF-SOURCE
("Show me pathways with SRF"
 (:VAR MV2511 :ISA SHOW :STATEMENT-OR-THEME MV2513 :BENEFICIARY MV2512 :PRESENT "PRESENT")
 (:VAR MV2513 :ISA PATHWAY :PATHWAYCOMPONENT MV2515 :RAW-TEXT "pathways")
 (:VAR MV2515 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2512 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
260: "Show me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras decreases frizzled8."
 (:VAR MV2518 :ISA SHOW :STATEMENT-OR-THEME MV2525 :BENEFICIARY MV2519 :PRESENT "PRESENT")
 (:VAR MV2525 :ISA EVIDENCE :STATEMENT MV2524 :HAS-DETERMINER "THE")
 (:VAR MV2524 :ISA DECREASE :AGENT MV2523 :OBJECT MV2517 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV2523 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV2517 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV2519 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
261: "Show me the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   SHOW          1 "Show me the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV2527 :ISA SHOW :STATEMENT-OR-THEME MV2538 :BENEFICIARY MV2528 :PRESENT "PRESENT")
 (:VAR MV2538 :ISA EVIDENCE :STATEMENT MV2533 :HAS-DETERMINER "THE")
 (:VAR MV2533 :ISA DECREASE :AGENT MV2532 :AFFECTED-PROCESS-OR-OBJECT MV2535 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2532 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV2535 :ISA BIO-AMOUNT :MEASURED-ITEM MV2526 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV2526 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV2528 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
262: "Show me the evidence that kras regulates frizzled8?"

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras regulates frizzled8?"
 (:VAR MV2540 :ISA SHOW :STATEMENT-OR-THEME MV2547 :BENEFICIARY MV2541 :PRESENT "PRESENT")
 (:VAR MV2547 :ISA EVIDENCE :STATEMENT MV2546 :HAS-DETERMINER "THE")
 (:VAR MV2546 :ISA REGULATE :AGENT MV2545 :OBJECT MV2539 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2545 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV2539 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV2541 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
263: "Show transcription factors shared by elk1 and srf"

                    SOURCE-START
e13   SHOW          1 "Show transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Show transcription factors shared by elk1 and srf"
 (:VAR MV2550 :ISA SHOW :STATEMENT-OR-THEME MV2548 :PRESENT "PRESENT")
 (:VAR MV2548 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2551 :RAW-TEXT "transcription factors")
 (:VAR MV2551 :ISA SHARE :OBJECT MV2548 :PARTICIPANT MV2555 :PAST "PAST" :RAW-TEXT "shared")
 (:VAR MV2555 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2549 MV2554))
 (:VAR MV2549 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2554 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
264: "Tell me how stat3 regulates apoptosis"

                    SOURCE-START
e10   TELL          1 "Tell me " 3
e9    REGULATE      3 "how stat3 regulates apoptosis" 8
                    END-OF-SOURCE
                    SOURCE-START
e10   VG            1 "Tell me " 3
e9    HOWCOMP       3 "how stat3 regulates apoptosis" 8
                    END-OF-SOURCE


___________________
265: "Tell me what apoptotic pathways are regulated by stat3 in the liver"

                    SOURCE-START
e27   TELL          1 "Tell me what apoptotic pathways are regulated by stat3 in the liver" 14
                    END-OF-SOURCE
("Tell me what apoptotic pathways are regulated by stat3 in the liver"
 (:VAR MV2565 :ISA TELL :THEME MV2577 :THEME MV2566 :PRESENT "PRESENT")
 (:VAR MV2577 :ISA REGULATE :AFFECTED-PROCESS MV2570 :AGENT MV2564 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV2570 :ISA PATHWAY :HAS-DETERMINER "WHAT" :PROCESS MV2568 :RAW-TEXT "pathways")
 (:VAR MV2568 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2564 :ISA PROTEIN :ORGAN MV2576 :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2576 :ISA LIVER :HAS-DETERMINER "THE") (:VAR MV2566 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
266: "Tell me what genes elk1 and srf regulate"

                    SOURCE-START
e15   TELL          1 "Tell me what genes elk1 and srf regulate" 10
                    END-OF-SOURCE
("Tell me what genes elk1 and srf regulate"
 (:VAR MV2581 :ISA TELL :THEME MV2584 :BENEFICIARY MV2582 :PRESENT "PRESENT")
 (:VAR MV2584 :ISA GENE :PREDICATION MV2587 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2587 :ISA REGULATE :OBJECT MV2584 :AGENT MV2588 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2588 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2580 MV2586))
 (:VAR MV2580 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2586 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2582 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
267: "Tell me what pathways are regulated by stat3 in the liver"

                    SOURCE-START
e24   TELL          1 "Tell me what pathways are regulated by stat3 in the liver" 13
                    END-OF-SOURCE
("Tell me what pathways are regulated by stat3 in the liver"
 (:VAR MV2590 :ISA TELL :THEME MV2600 :THEME MV2591 :PRESENT "PRESENT")
 (:VAR MV2600 :ISA REGULATE :AFFECTED-PROCESS MV2593 :AGENT MV2589 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV2593 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV2589 :ISA PROTEIN :ORGAN MV2599 :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2599 :ISA LIVER :HAS-DETERMINER "THE") (:VAR MV2591 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
268: "What KEGG pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What KEGG pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve immune signaling?"
 (:VAR MV2606 :ISA INVOLVE :THEME MV2605 :THEME MV2608 :PRESENT "PRESENT")
 (:VAR MV2605 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV2604 :RAW-TEXT "pathways")
 (:VAR MV2604 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV2608 :ISA SIGNAL :MODIFIER MV2607 :RAW-TEXT "signaling") (:VAR MV2607 :ISA IMMUNE))

___________________
269: "What MAP kinase phosphatases are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatases are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatases are regulated by ELK1?"
 (:VAR MV2616 :ISA REGULATE :OBJECT MV2612 :AGENT MV2610 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2612 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV2609 :RAW-TEXT "phosphatases")
 (:VAR MV2609 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME "mitogen activated protein kinase"
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
 (:VAR MV2610 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
270: "What apoptotic genes are downstream of stat3?"

                    SOURCE-START
e16   BE            1 "What apoptotic genes are downstream of stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes are downstream of stat3?"
 (:VAR MV2623 :ISA BE :SUBJECT MV2622 :PREDICATE MV2624 :PRESENT "PRESENT")
 (:VAR MV2622 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV2621 :RAW-TEXT "genes")
 (:VAR MV2621 :ISA APOPTOTIC)
 (:VAR MV2624 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2618 :RAW-TEXT "downstream")
 (:VAR MV2618 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
271: "What apoptotic genes does stat3 regulate in the liver?"

                    SOURCE-START
e19   REGULATE      1 "What apoptotic genes does stat3 regulate in the liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate in the liver?"
 (:VAR MV2634 :ISA REGULATE :OBJECT MV2632 :AGENT MV2628 :ORGAN MV2637 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV2632 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV2631 :RAW-TEXT "genes")
 (:VAR MV2631 :ISA APOPTOTIC)
 (:VAR MV2628 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2637 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
272: "What apoptotic genes does stat3 regulate?"

                    SOURCE-START
e11   REGULATE      1 "What apoptotic genes does stat3 regulate" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate?"
 (:VAR MV2645 :ISA REGULATE :OBJECT MV2643 :AGENT MV2639 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2643 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV2642 :RAW-TEXT "genes")
 (:VAR MV2642 :ISA APOPTOTIC)
 (:VAR MV2639 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
273: "What apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "What apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes is stat3 upstream of?"
 (:VAR MV2651 :ISA BE :SUBJECT MV2650 :PREDICATE MV2652 :PRESENT "PRESENT")
 (:VAR MV2650 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV2649 :RAW-TEXT "genes")
 (:VAR MV2649 :ISA APOPTOTIC)
 (:VAR MV2652 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV2650 :MODIFIER MV2646 :RAW-TEXT "upstream")
 (:VAR MV2650 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV2649 :RAW-TEXT "genes")
 (:VAR MV2649 :ISA APOPTOTIC)
 (:VAR MV2646 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
274: "What apoptotic pathways involve stat3?"

                    SOURCE-START
e10   INVOLVE       1 "What apoptotic pathways involve stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic pathways involve stat3?"
 (:VAR MV2660 :ISA INVOLVE :THEME MV2659 :THEME MV2655 :PRESENT "PRESENT")
 (:VAR MV2659 :ISA PATHWAY :HAS-DETERMINER "WHAT" :PROCESS MV2657 :RAW-TEXT "pathways")
 (:VAR MV2657 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2655 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
275: "What are Selumetinib's targets?"

                    SOURCE-START
e9    BE            1 "What are Selumetinib's targets" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are Selumetinib's targets?"
 (:VAR MV2662 :ISA BE :SUBJECT MV2661 :PREDICATE MV2665 :PRESENT "PRESENT") (:VAR MV2661 :ISA WHAT)
 (:VAR MV2665 :ISA TARGET-PROTEIN :AGENT MV2664 :RAW-TEXT "targets")
 (:VAR MV2664 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
276: "What are some JAK1 inhibitors?"

                    SOURCE-START
e9    BE            1 "What are some JAK1 inhibitors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some JAK1 inhibitors?"
 (:VAR MV2669 :ISA BE :SUBJECT MV2668 :PREDICATE MV2671 :PRESENT "PRESENT") (:VAR MV2668 :ISA WHAT)
 (:VAR MV2671 :ISA INHIBITOR :QUANTIFIER MV2670 :PROTEIN MV2667 :RAW-TEXT "inhibitors")
 (:VAR MV2670 :ISA SOME :WORD "some")
 (:VAR MV2667 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME "JAK1_HUMAN"))

___________________
277: "What are some drugs that inhibit BRAF?"

                    SOURCE-START
e14   BE            1 "What are some drugs that inhibit BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs that inhibit BRAF?"
 (:VAR MV2673 :ISA BE :SUBJECT MV2672 :PREDICATE MV2675 :PRESENT "PRESENT") (:VAR MV2672 :ISA WHAT)
 (:VAR MV2675 :ISA DRUG :PREDICATION MV2677 :QUANTIFIER MV2674 :RAW-TEXT "drugs")
 (:VAR MV2677 :ISA INHIBIT :AGENT MV2675 :THAT-REL T :OBJECT MV2678 :PRESENT "PRESENT" :RAW-TEXT
  "inhibit")
 (:VAR MV2678 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV2674 :ISA SOME :WORD "some"))

___________________
278: "What are some genes in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some genes in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes in the MAPK signaling pathway?"
 (:VAR MV2681 :ISA BE :SUBJECT MV2680 :PREDICATE MV2683 :PRESENT "PRESENT") (:VAR MV2680 :ISA WHAT)
 (:VAR MV2683 :ISA GENE :CONTEXT MV2679 :QUANTIFIER MV2682 :RAW-TEXT "genes")
 (:VAR MV2679 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2686 :RAW-TEXT
  "signaling pathway")
 (:VAR MV2686 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV2682 :ISA SOME :WORD "some"))

___________________
279: "What are some proteins in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some proteins in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some proteins in the MAPK signaling pathway?"
 (:VAR MV2690 :ISA BE :SUBJECT MV2689 :PREDICATE MV2692 :PRESENT "PRESENT") (:VAR MV2689 :ISA WHAT)
 (:VAR MV2692 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV2688 :QUANTIFIER MV2691 :RAW-TEXT "proteins")
 (:VAR MV2688 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2695 :RAW-TEXT
  "signaling pathway")
 (:VAR MV2695 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV2691 :ISA SOME :WORD "some"))

___________________
280: "What are the members of RAS?"

                    SOURCE-START
e12   BE            1 "What are the members of RAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of RAS?"
 (:VAR MV2698 :ISA BE :SUBJECT MV2697 :PREDICATE MV2700 :PRESENT "PRESENT") (:VAR MV2697 :ISA WHAT)
 (:VAR MV2700 :ISA MEMBER :SET MV2702 :HAS-DETERMINER "THE")
 (:VAR MV2702 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV2708 :ISA BE :SUBJECT MV2707 :PREDICATE MV2710 :PRESENT "PRESENT") (:VAR MV2707 :ISA WHAT)
 (:VAR MV2710 :ISA MICRO-RNA :PREDICATION MV2712 :HAS-DETERMINER "THE" :RAW-TEXT "miRNAS")
 (:VAR MV2712 :ISA REGULATE :AGENT MV2710 :THAT-REL T :OBJECT MV2716 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV2716 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV2713 MV2714 MV2704 MV2705 MV2706))
 (:VAR MV2713 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV2714 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2704 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2705 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV2706 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN"))

___________________
282: "What are the regulators of MAPPK14 in bladder"

                    SOURCE-START
e19   BE            1 "What are the regulators of MAPPK14 in bladder" 10
                    END-OF-SOURCE
("What are the regulators of MAPPK14 in bladder"
 (:VAR MV2718 :ISA BE :SUBJECT MV2717 :PREDICATE MV2720 :PRESENT "PRESENT") (:VAR MV2717 :ISA WHAT)
 (:VAR MV2720 :ISA REGULATOR :THEME MV2726 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV2726 :ISA BIO-ENTITY :ORGAN MV2725 :NAME "MAPPK14")
 (:VAR MV2725 :ISA BIO-ORGAN :NAME "bladder" :UID "BTO:0001418"))

___________________
283: "What are the regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What are the regulators of SMURF2 in liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2 in liver?"
 (:VAR MV2731 :ISA BE :SUBJECT MV2730 :PREDICATE MV2733 :PRESENT "PRESENT") (:VAR MV2730 :ISA WHAT)
 (:VAR MV2733 :ISA REGULATOR :THEME MV2729 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV2729 :ISA PROTEIN :ORGAN MV2736 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN")
 (:VAR MV2736 :ISA LIVER))

___________________
284: "What are the regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What are the regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2?"
 (:VAR MV2741 :ISA BE :SUBJECT MV2740 :PREDICATE MV2743 :PRESENT "PRESENT") (:VAR MV2740 :ISA WHAT)
 (:VAR MV2743 :ISA REGULATOR :THEME MV2739 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV2739 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
285: "What are the regulators of c-fos in lung?"

                    SOURCE-START
e18   BE            1 "What are the regulators of c-fos in lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of c-fos in lung?"
 (:VAR MV2748 :ISA BE :SUBJECT MV2747 :PREDICATE MV2750 :PRESENT "PRESENT") (:VAR MV2747 :ISA WHAT)
 (:VAR MV2750 :ISA REGULATOR :THEME MV2746 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV2746 :ISA PROTEIN :ORGAN MV2753 :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV2753 :ISA LUNG))

___________________
286: "What are the regulators of mapk14 in bladeeer"

                    SOURCE-START
e19   BE            1 "What are the regulators of mapk14 " 8
e15   IN            8 "in bladeeer" 10
                    END-OF-SOURCE
                    SOURCE-START
e19   S             1 "What are the regulators of mapk14 " 8
e15   PP            8 "in bladeeer" 10
                    END-OF-SOURCE


___________________
287: "What are the regulators of mapk14"

                    SOURCE-START
e13   BE            1 "What are the regulators of mapk14" 8
                    END-OF-SOURCE
("What are the regulators of mapk14"
 (:VAR MV2771 :ISA BE :SUBJECT MV2770 :PREDICATE MV2773 :PRESENT "PRESENT") (:VAR MV2770 :ISA WHAT)
 (:VAR MV2773 :ISA REGULATOR :THEME MV2769 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV2769 :ISA PROTEIN :RAW-TEXT "mapk14" :UID "UP:Q16539" :NAME "MK14_HUMAN"))

___________________
288: "What are the targets of PLX-4720?"

                    SOURCE-START
e14   BE            1 "What are the targets of PLX-4720" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the targets of PLX-4720?"
 (:VAR MV2778 :ISA BE :SUBJECT MV2777 :PREDICATE MV2780 :PRESENT "PRESENT") (:VAR MV2777 :ISA WHAT)
 (:VAR MV2780 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV2776 :HAS-DETERMINER "THE" :RAW-TEXT "targets")
 (:VAR MV2776 :ISA MOLECULE :RAW-TEXT "PLX-4720" :UID "PCID:24180719"))

___________________
289: "What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e28   COPULAR-PREDICATION 1 "What are the transcription factors in common to the SRF, HRAS, and elk1 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
 (:VAR MV2798 :ISA COPULAR-PREDICATION :ITEM MV2787 :VALUE MV2785 :PREDICATE MV2788)
 (:VAR MV2787 :ISA WHAT) (:VAR MV2785 :ISA IN-COMMON :THEME MV2795)
 (:VAR MV2795 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2796 :RAW-TEXT "genes")
 (:VAR MV2796 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV2792 MV2793 MV2786))
 (:VAR MV2792 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2793 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME "RASH_HUMAN")
 (:VAR MV2786 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2788 :ISA BE :PREDICATE MV2784 :PRESENT "PRESENT")
 (:VAR MV2784 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :RAW-TEXT "transcription factors"))

___________________
290: "What are the transcription factors that regulate EELK1 and SRF?"

                    SOURCE-START
e21   BE            1 "What are the transcription factors that regulate EELK1 and SRF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EELK1 and SRF?"
 (:VAR MV2801 :ISA BE :SUBJECT MV2800 :PREDICATE MV2799 :PRESENT "PRESENT") (:VAR MV2800 :ISA WHAT)
 (:VAR MV2799 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2804 :HAS-DETERMINER "THE" :RAW-TEXT
  "transcription factors")
 (:VAR MV2804 :ISA REGULATE :AGENT MV2799 :THAT-REL T :OBJECT MV2810 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV2810 :ISA COLLECTION :RAW-TEXT "EELK1 and SRF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2809 MV2808))
 (:VAR MV2809 :ISA BIO-ENTITY :NAME "EELK1")
 (:VAR MV2808 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
291: "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"

                    SOURCE-START
e30   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
 (:VAR MV2815 :ISA BE :SUBJECT MV2814 :PREDICATE MV2811 :PRESENT "PRESENT") (:VAR MV2814 :ISA WHAT)
 (:VAR MV2811 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2818 :HAS-DETERMINER "THE" :RAW-TEXT
  "transcription factors")
 (:VAR MV2818 :ISA REGULATE :AGENT MV2811 :THAT-REL T :OBJECT MV2825 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV2825 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAAT3, JAK2, and SMAD3" :TYPE PROTEIN :NUMBER
  5 :ITEMS (MV2819 MV2820 MV2824 MV2812 MV2813))
 (:VAR MV2819 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV2820 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2824 :ISA BIO-ENTITY :NAME "STAAT3")
 (:VAR MV2812 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV2813 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN"))

___________________
292: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV2831 :ISA BE :SUBJECT MV2830 :PREDICATE MV2826 :PRESENT "PRESENT") (:VAR MV2830 :ISA WHAT)
 (:VAR MV2826 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2834 :HAS-DETERMINER "THE" :RAW-TEXT
  "transcription factors")
 (:VAR MV2834 :ISA REGULATE :AGENT MV2826 :THAT-REL T :OBJECT MV2838 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV2838 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV2835 MV2836 MV2827 MV2828 MV2829))
 (:VAR MV2835 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV2836 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2827 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2828 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV2829 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN"))

___________________
293: "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"

                    SOURCE-START
e26   BE            1 "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
 (:VAR MV2843 :ISA BE :SUBJECT MV2842 :PREDICATE MV2847 :PRESENT "PRESENT") (:VAR MV2842 :ISA WHAT)
 (:VAR MV2847 :ISA REGULATOR :THEME MV2851 :HAS-DETERMINER "THE" :CONTEXT MV2845 :RAW-TEXT
  "regulators")
 (:VAR MV2851 :ISA COLLECTION :RAW-TEXT "CCND1, FOXM1, DHFR, and KLF4" :TYPE PROTEIN :NUMBER 4
  :ITEMS (MV2839 MV2840 MV2849 MV2841))
 (:VAR MV2839 :ISA PROTEIN :RAW-TEXT "CCND1" :UID "UP:P24385" :NAME "CCND1_HUMAN")
 (:VAR MV2840 :ISA PROTEIN :RAW-TEXT "FOXM1" :UID "UP:Q08050" :NAME "FOXM1_HUMAN")
 (:VAR MV2849 :ISA PROTEIN :RAW-TEXT "DHFR" :UID "UP:P00374" :NAME "DYR_HUMAN")
 (:VAR MV2841 :ISA PROTEIN :RAW-TEXT "KLF4" :UID "UP:O43474" :NAME "KLF4_HUMAN")
 (:VAR MV2845 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
294: "What cell cycle genes are regulated by FOS?"

                    SOURCE-START
e14   REGULATE      1 "What cell cycle genes are regulated by FOS" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What cell cycle genes are regulated by FOS?"
 (:VAR MV2860 :ISA REGULATE :OBJECT MV2855 :AGENT MV2859 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2855 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV2853 :RAW-TEXT "genes")
 (:VAR MV2853 :ISA CELLULAR-PROCESS :RAW-TEXT "cell cycle" :UID "GO:0007049")
 (:VAR MV2859 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
295: "What does ERBB regulate?"

                    SOURCE-START
e5    REGULATE      1 "What does ERBB regulate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERBB regulate?"
 (:VAR MV2865 :ISA REGULATE :OBJECT MV2862 :AGENT MV2864 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2862 :ISA WHAT)
 (:VAR MV2864 :ISA PROTEIN :RAW-TEXT "ERBB" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
296: "What does it regulate in liver"

                    SOURCE-START
e11   REGULATE      1 "What does it regulate in liver" 7
                    END-OF-SOURCE
("What does it regulate in liver"
 (:VAR MV2869 :ISA REGULATE :OBJECT MV2866 :AGENT-OR-CAUSE MV2868 :ORGAN MV2871 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2866 :ISA WHAT) (:VAR MV2868 :ISA PRONOUN/INANIMATE :WORD "it") (:VAR MV2871 :ISA LIVER))

___________________
297: "What does miR-20b-5p target"

                    SOURCE-START
e7    TARGET        1 "What does miR-20b-5p target" 11
                    END-OF-SOURCE
("What does miR-20b-5p target"
 (:VAR MV2877 :ISA TARGET :OBJECT MV2874 :AGENT MV2873 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV2874 :ISA WHAT)
 (:VAR MV2873 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm" :UID "MIMAT0001413"))

___________________
298: "What does p53 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does p53 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does p53 regulate?"
 (:VAR MV2881 :ISA REGULATE :OBJECT MV2879 :AGENT MV2878 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2879 :ISA WHAT)
 (:VAR MV2878 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
299: "What does rb1 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does rb1 regulate" 6
                    END-OF-SOURCE
("What does rb1 regulate"
 (:VAR MV2885 :ISA REGULATE :OBJECT MV2883 :AGENT MV2882 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2883 :ISA WHAT)
 (:VAR MV2882 :ISA PROTEIN :RAW-TEXT "rb1" :UID "UP:P06400" :NAME "RB_HUMAN"))

___________________
300: "What does smad2 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does smad2 regulate" 6
                    END-OF-SOURCE
("What does smad2 regulate"
 (:VAR MV2889 :ISA REGULATE :OBJECT MV2887 :AGENT MV2886 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2887 :ISA WHAT)
 (:VAR MV2886 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
301: "What does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "What does stat regulate" 5
                    END-OF-SOURCE
("What does stat regulate"
 (:VAR MV2893 :ISA REGULATE :OBJECT MV2890 :AGENT MV2892 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2890 :ISA WHAT)
 (:VAR MV2892 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME "SOAT1_HUMAN"))

___________________
302: "What downregulates fzd8?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates fzd8?"
 (:VAR MV2896 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV2895 :OBJECT MV2894 :PRESENT "PRESENT" :RAW-TEXT
  "downregulates")
 (:VAR MV2895 :ISA WHAT)
 (:VAR MV2894 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
303: "What drug could I use to target pancreatic cancer?"

                    SOURCE-START
e20   BIO-USE       1 "What drug could I use to target pancreatic cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use to target pancreatic cancer?"
 (:VAR MV2910 :ISA BIO-USE :PATIENT MV2899 :MODAL MV2900 :AGENT MV2901 :THEME MV2909 :PRESENT
  "PRESENT" :RAW-TEXT "use")
 (:VAR MV2899 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug") (:VAR MV2900 :ISA COULD)
 (:VAR MV2901 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2909 :ISA TARGET :OBJECT MV2897 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV2897 :ISA CANCER :UID "TS-0739"))

___________________
304: "What drug should I use for pancreatic cancer?"

                    SOURCE-START
e13   DRUG          1 "What drug " 3
e4    MODAL         3 "should " 4
e16   BIO-USE       4 "I use for pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e13   NP            1 "What drug " 3
e4    MODAL         3 "should " 4
e16   TRANSITIVE-CLAUSE-WITHOUT-OBJECT  4 "I use for pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
305: "What drugs are inhibitors of GRB2?"

                    SOURCE-START
e12   BE            1 "What drugs are inhibitors of GRB2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs are inhibitors of GRB2?"
 (:VAR MV2925 :ISA BE :SUBJECT MV2924 :PREDICATE MV2926 :PRESENT "PRESENT")
 (:VAR MV2924 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2926 :ISA INHIBITOR :PROTEIN MV2922 :RAW-TEXT "inhibitors")
 (:VAR MV2922 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN"))

___________________
306: "What drugs inhibit MAP2K1?"

                    SOURCE-START
e7    INHIBIT       1 "What drugs inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs inhibit MAP2K1?"
 (:VAR MV2932 :ISA INHIBIT :AGENT MV2931 :OBJECT MV2929 :PRESENT "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV2931 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2929 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
307: "What drugs regulate BRAF?"

                    SOURCE-START
e6    REGULATE      1 "What drugs regulate BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs regulate BRAF?"
 (:VAR MV2935 :ISA REGULATE :AGENT MV2934 :OBJECT MV2936 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2934 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2936 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
308: "What drugs target BRAF?"

                    SOURCE-START
e7    TARGET        1 "What drugs target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target BRAF?"
 (:VAR MV2940 :ISA TARGET :AGENT MV2938 :OBJECT MV2941 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV2938 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2941 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
309: "What genes are downstream of stat3?"

                    SOURCE-START
e13   BE            1 "What genes are downstream of stat3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are downstream of stat3?"
 (:VAR MV2945 :ISA BE :SUBJECT MV2944 :PREDICATE MV2946 :PRESENT "PRESENT")
 (:VAR MV2944 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2946 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2942 :RAW-TEXT "downstream")
 (:VAR MV2942 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
310: "What genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathway?"
 (:VAR MV2960 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2952 :VALUE MV2959 :PREP "IN" :PREDICATE
  MV2953)
 (:VAR MV2952 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2959 :ISA GENE :CONTEXT MV2950 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2950 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2956 :RAW-TEXT
  "signaling pathway")
 (:VAR MV2956 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV2953 :ISA BE :PRESENT "PRESENT"))

___________________
311: "What genes are in the MAPK signaling pathways?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathways?"
 (:VAR MV2972 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2964 :VALUE MV2971 :PREP "IN" :PREDICATE
  MV2965)
 (:VAR MV2964 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2971 :ISA GENE :CONTEXT MV2962 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2962 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2968 :RAW-TEXT
  "signaling pathways")
 (:VAR MV2968 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV2965 :ISA BE :PRESENT "PRESENT"))

___________________
312: "What genes are in the immune system pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the immune system pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the immune system pathway?"
 (:VAR MV2984 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2976 :VALUE MV2983 :PREP "IN" :PREDICATE
  MV2977)
 (:VAR MV2976 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2983 :ISA GENE :CONTEXT MV2980 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2980 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2974 :RAW-TEXT "pathway")
 (:VAR MV2974 :ISA BIO-ORGAN :UID "UBERON:0002405") (:VAR MV2977 :ISA BE :PRESENT "PRESENT"))

___________________
313: "What genes are in the prolactin signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the prolactin signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the prolactin signaling pathway?"
 (:VAR MV2996 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2988 :VALUE MV2995 :PREP "IN" :PREDICATE
  MV2989)
 (:VAR MV2988 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2995 :ISA GENE :CONTEXT MV2986 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2986 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2992 :RAW-TEXT
  "signaling pathway")
 (:VAR MV2992 :ISA PROTEIN :RAW-TEXT "prolactin" :UID "UP:P01236" :NAME "PRL_HUMAN")
 (:VAR MV2989 :ISA BE :PRESENT "PRESENT"))

___________________
314: "What genes are involved in the IL-12 pathway?"

                    SOURCE-START
e18   INVOLVE       1 "What genes are involved in the IL-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the IL-12 pathway?"
 (:VAR MV3009 :ISA INVOLVE :THEME MV3001 :CONTEXT MV3006 :PRESENT "PRESENT")
 (:VAR MV3001 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3006 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2999 :RAW-TEXT "pathway")
 (:VAR MV2999 :ISA PROTEIN :RAW-TEXT "IL-12" :UID "NCIT:C20514" :NAME "NCIT:C20514"))

___________________
315: "What genes are involved in the Prolactin pathway?"

                    SOURCE-START
e16   INVOLVE       1 "What genes are involved in the Prolactin pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the Prolactin pathway?"
 (:VAR MV3020 :ISA INVOLVE :THEME MV3011 :CONTEXT MV3017 :PRESENT "PRESENT")
 (:VAR MV3011 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3017 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3016 :RAW-TEXT "pathway")
 (:VAR MV3016 :ISA PROTEIN :RAW-TEXT "Prolactin" :UID "UP:P01236" :NAME "PRL_HUMAN"))

___________________
316: "What genes are involved in the il-12 pathway?"

                    SOURCE-START
e17   INVOLVE       1 "What genes are involved in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the il-12 pathway?"
 (:VAR MV3031 :ISA INVOLVE :THEME MV3023 :CONTEXT MV3028 :PRESENT "PRESENT")
 (:VAR MV3023 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3028 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3021 :RAW-TEXT "pathway")
 (:VAR MV3021 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2 :FAMILY-MEMBERS
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
 (:VAR MV3042 :ISA INVOLVE :THEME MV3034 :CONTEXT MV3039 :PRESENT "PRESENT")
 (:VAR MV3034 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3039 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV3032 :RAW-TEXT "pathway")
 (:VAR MV3032 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
318: "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"

                    SOURCE-START
e23   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p" 28
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
 (:VAR MV3055 :ISA REGULATE :OBJECT MV3047 :AGENT MV3054 :PRESENT "PRESENT" :SUPERLATIVE MV3049
  :ADVERB MV3050 :RAW-TEXT "regulated")
 (:VAR MV3047 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3054 :ISA COLLECTION :RAW-TEXT "miR-335-5p, miR-155-5p and miR-145-5p" :TYPE MICRO-RNA
  :NUMBER 3 :ITEMS (MV3043 MV3044 MV3045))
 (:VAR MV3043 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p" :UID "MIMAT0000765")
 (:VAR MV3044 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p" :UID "MIMAT0000646")
 (:VAR MV3045 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p" :UID "MIMAT0000437")
 (:VAR MV3049 :ISA SUPERLATIVE-QUANTIFIER :NAME "most") (:VAR MV3050 :ISA FREQUENTLY))

___________________
319: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"

                    SOURCE-START
e26   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" 36
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
 (:VAR MV3070 :ISA REGULATE :OBJECT MV3062 :AGENT MV3069 :PRESENT "PRESENT" :SUPERLATIVE MV3064
  :ADVERB MV3065 :RAW-TEXT "regulated")
 (:VAR MV3062 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3069 :ISA COLLECTION :RAW-TEXT "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" :TYPE
  MICRO-RNA :NUMBER 4 :ITEMS (MV3057 MV3058 MV3059 MV3060))
 (:VAR MV3057 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p" :UID "MIMAT0000765")
 (:VAR MV3058 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p" :UID "MIMAT0000646")
 (:VAR MV3059 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p" :UID "MIMAT0000437")
 (:VAR MV3060 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm" :UID "MIMAT0000075")
 (:VAR MV3064 :ISA SUPERLATIVE-QUANTIFIER :NAME "most") (:VAR MV3065 :ISA FREQUENTLY))

___________________
320: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"

                    SOURCE-START
e27   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" 37
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
 (:VAR MV3085 :ISA REGULATE :OBJECT MV3077 :AGENT MV3084 :PRESENT "PRESENT" :SUPERLATIVE MV3079
  :ADVERB MV3080 :RAW-TEXT "regulated")
 (:VAR MV3077 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3084 :ISA COLLECTION :RAW-TEXT "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" :TYPE
  MICRO-RNA :NUMBER 4 :ITEMS (MV3072 MV3073 MV3074 MV3075))
 (:VAR MV3072 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p" :UID "MIMAT0000765")
 (:VAR MV3073 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p" :UID "MIMAT0000646")
 (:VAR MV3074 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p" :UID "MIMAT0000437")
 (:VAR MV3075 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm" :UID "MIMAT0000075")
 (:VAR MV3079 :ISA SUPERLATIVE-QUANTIFIER :NAME "most") (:VAR MV3080 :ISA FREQUENTLY))

___________________
321: "What genes are regulated by FAKEPRTN"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by FAKEPRTN" 7
                    END-OF-SOURCE
("What genes are regulated by FAKEPRTN"
 (:VAR MV3093 :ISA REGULATE :OBJECT MV3088 :AGENT MV3092 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3088 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3092 :ISA BIO-ENTITY :NAME "FAKEPRTN"))

___________________
322: "What genes are regulated by elk1 and srf?"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by elk1 and srf" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by elk1 and srf?"
 (:VAR MV3104 :ISA REGULATE :OBJECT MV3097 :AGENT MV3103 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3097 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3103 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3095 MV3102))
 (:VAR MV3095 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV3102 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
323: "What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"

                    SOURCE-START
e16   REGULATE      1 "What genes are regulated by miR-20b-5p and MIR-29B-1-5P" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
 (:VAR MV3115 :ISA REGULATE :OBJECT MV3109 :AGENT MV3114 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3109 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3114 :ISA COLLECTION :RAW-TEXT "miR-20b-5p and MIR-29B-1-5P" :TYPE MICRO-RNA :NUMBER 2
  :ITEMS (MV3106 MV3107))
 (:VAR MV3106 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm" :UID "MIMAT0001413")
 (:VAR MV3107 :ISA MICRO-RNA :RAW-TEXT "MIR-29B-1-5P" :NAME "microRNA 29b-1-5pm" :UID
  "MIMAT0004514"))

___________________
324: "What genes are regulated by smda2"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by smda2" 8
                    END-OF-SOURCE
("What genes are regulated by smda2"
 (:VAR MV3125 :ISA REGULATE :OBJECT MV3118 :AGENT MV3124 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3118 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3124 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
325: "What genes are regulated by srf"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by srf" 7
                    END-OF-SOURCE
("What genes are regulated by srf"
 (:VAR MV3133 :ISA REGULATE :OBJECT MV3128 :AGENT MV3132 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3128 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3132 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
326: "What genes are regulated by stat3 and srf"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by stat3 and srf" 10
                    END-OF-SOURCE
("What genes are regulated by stat3 and srf"
 (:VAR MV3144 :ISA REGULATE :OBJECT MV3137 :AGENT MV3143 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3137 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3143 :ISA COLLECTION :RAW-TEXT "stat3 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3135 MV3142))
 (:VAR MV3135 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3142 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
327: "What genes are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What genes are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are targeted by lung cancer?"
 (:VAR MV3152 :ISA TARGET :OBJECT MV3148 :CAUSE MV3146 :PRESENT "PRESENT" :RAW-TEXT "targeted")
 (:VAR MV3148 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3146 :ISA CANCER :UID "TS-0571"))

___________________
328: "What genes are there in the MAPK signaling pathway?"

                    SOURCE-START
e21   COPULAR-PREDICATE 1 "What genes are there in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are there in the MAPK signaling pathway?"
 (:VAR MV3166 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3156 :VALUE MV3165 :PREP "IN" :PREDICATE
  MV3157)
 (:VAR MV3156 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3165 :ISA GENE :CONTEXT MV3154 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3154 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3162 :RAW-TEXT
  "signaling pathway")
 (:VAR MV3162 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV3157 :ISA BE :PRESENT "PRESENT"))

___________________
329: "What genes are used in the MAPK signaling pathway?"

                    SOURCE-START
e17   BIO-USE       1 "What genes are used in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are used in the MAPK signaling pathway?"
 (:VAR MV3176 :ISA BIO-USE :OBJECT MV3170 :CONTEXT MV3168 :PRESENT "PRESENT" :RAW-TEXT "used")
 (:VAR MV3170 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3168 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3175 :RAW-TEXT
  "signaling pathway")
 (:VAR MV3175 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
330: "What genes does lung cancer target?"

                    SOURCE-START
e9    TARGET        1 "What genes does lung cancer target" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does lung cancer target?"
 (:VAR MV3183 :ISA TARGET :OBJECT MV3180 :CAUSE MV3178 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3180 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3178 :ISA CANCER :UID "TS-0571"))

___________________
331: "What genes does miR-20b-5p target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-20b-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-20b-5p target?"
 (:VAR MV3189 :ISA TARGET :OBJECT MV3186 :AGENT MV3184 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3186 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3184 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm" :UID "MIMAT0001413"))

___________________
332: "What genes does miR-562 target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-562 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-562 target?"
 (:VAR MV3195 :ISA TARGET :OBJECT MV3192 :AGENT MV3190 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3192 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3190 :ISA MICRO-RNA :RAW-TEXT "miR-562" :NAME "microRNA 562" :UID "MI0003569"))

___________________
333: "What genes does smad2 upregulate?"

                    SOURCE-START
e8    UPREGULATE    1 "What genes does smad2 upregulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does smad2 upregulate?"
 (:VAR MV3200 :ISA UPREGULATE :OBJECT MV3198 :AGENT MV3196 :PRESENT "PRESENT" :RAW-TEXT
  "upregulate")
 (:VAR MV3198 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3196 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
334: "What genes does stat3 regulate in liver cells?"

                    SOURCE-START
e15   REGULATE      1 "What genes does stat3 regulate in liver cells" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver cells?"
 (:VAR MV3205 :ISA REGULATE :OBJECT MV3203 :AGENT MV3201 :CELL-TYPE MV3208 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3203 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3201 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3208 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV3207) (:VAR MV3207 :ISA LIVER))

___________________
335: "What genes does stat3 regulate in liver?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver?"
 (:VAR MV3214 :ISA REGULATE :OBJECT MV3212 :AGENT MV3210 :ORGAN MV3216 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV3212 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3210 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3216 :ISA LIVER))

___________________
336: "What genes does stat3 regulate in lung?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in lung" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in lung?"
 (:VAR MV3222 :ISA REGULATE :OBJECT MV3220 :AGENT MV3218 :ORGAN MV3224 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV3220 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3218 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3224 :ISA LUNG))

___________________
337: "What genes does stat3 regulate"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    END-OF-SOURCE
("What genes does stat3 regulate"
 (:VAR MV3230 :ISA REGULATE :OBJECT MV3228 :AGENT MV3226 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3228 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3226 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
338: "What genes in the liver does stat3 regulate?"

                    SOURCE-START
e16   REGULATE      1 "What genes in the liver does stat3 regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes in the liver does stat3 regulate?"
 (:VAR MV3238 :ISA REGULATE :OBJECT MV3233 :AGENT MV3231 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3233 :ISA GENE :ORGAN MV3236 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3236 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV3231 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

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
 (:VAR MV3250 :ISA BE :SUBJECT MV3249 :PREDICATE MV3251 :PRESENT "PRESENT")
 (:VAR MV3249 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3251 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3249 :MODIFIER MV3247 :RAW-TEXT "upstream")
 (:VAR MV3249 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3247 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
341: "What genes regulated by FOS are kinases?"

                    SOURCE-START
e14   BE            1 "What genes regulated by FOS are kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by FOS are kinases?"
 (:VAR MV3259 :ISA BE :SUBJECT MV3255 :PREDICATE MV3260 :PRESENT "PRESENT")
 (:VAR MV3255 :ISA GENE :PREDICATION MV3256 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3256 :ISA REGULATE :OBJECT MV3255 :AGENT MV3258 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV3258 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV3260 :ISA KINASE :RAW-TEXT "kinases"))

___________________
342: "What genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "What genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by stat3 are kinases?"
 (:VAR MV3267 :ISA BE :SUBJECT MV3264 :PREDICATE MV3268 :PRESENT "PRESENT")
 (:VAR MV3264 :ISA GENE :PREDICATION MV3265 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3265 :ISA REGULATE :OBJECT MV3264 :AGENT MV3262 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV3262 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3268 :ISA KINASE :RAW-TEXT "kinases"))

___________________
343: "What immune pathways involve KRAS and ELK1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve KRAS and ELK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve KRAS and ELK1?"
 (:VAR MV3274 :ISA INVOLVE :THEME MV3273 :THEME MV3277 :PRESENT "PRESENT")
 (:VAR MV3273 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3272 :RAW-TEXT "pathways")
 (:VAR MV3272 :ISA IMMUNE)
 (:VAR MV3277 :ISA COLLECTION :RAW-TEXT "KRAS and ELK1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3275 MV3270))
 (:VAR MV3275 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV3270 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
344: "What immune pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "What immune pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve SRF?"
 (:VAR MV3281 :ISA INVOLVE :THEME MV3280 :THEME MV3282 :PRESENT "PRESENT")
 (:VAR MV3280 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3279 :RAW-TEXT "pathways")
 (:VAR MV3279 :ISA IMMUNE)
 (:VAR MV3282 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
345: "What immune pathways involve kras and elk1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve kras and elk1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve kras and elk1?"
 (:VAR MV3287 :ISA INVOLVE :THEME MV3286 :THEME MV3290 :PRESENT "PRESENT")
 (:VAR MV3286 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3285 :RAW-TEXT "pathways")
 (:VAR MV3285 :ISA IMMUNE)
 (:VAR MV3290 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3288 MV3283))
 (:VAR MV3288 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV3283 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
346: "What immune pathways involve tap1 and jak1?"

                    SOURCE-START
e17   INVOLVE       1 "What immune pathways involve tap1 and jak1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve tap1 and jak1?"
 (:VAR MV3294 :ISA INVOLVE :THEME MV3293 :THEME MV3304 :PRESENT "PRESENT")
 (:VAR MV3293 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3292 :RAW-TEXT "pathways")
 (:VAR MV3292 :ISA IMMUNE)
 (:VAR MV3304 :ISA COLLECTION :RAW-TEXT "tap1 and jak1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3302 MV3303))
 (:VAR MV3302 :ISA PROTEIN :RAW-TEXT "tap1" :UID "UP:Q03518" :NAME "TAP1_HUMAN")
 (:VAR MV3303 :ISA PROTEIN :RAW-TEXT "jak1" :UID "UP:P23458" :NAME "JAK1_HUMAN"))

___________________
347: "What inhibits BRAF?"

                    SOURCE-START
e4    INHIBIT       1 "What inhibits BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits BRAF?"
 (:VAR MV3306 :ISA INHIBIT :AGENT-OR-CAUSE MV3305 :OBJECT MV3307 :PRESENT "PRESENT" :RAW-TEXT
  "inhibits")
 (:VAR MV3305 :ISA WHAT)
 (:VAR MV3307 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
348: "What is STAT3?"

                    SOURCE-START
e5    BE            1 "What is STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT3?" (:VAR MV3310 :ISA BE :SUBJECT MV3309 :PREDICATE MV3308 :PRESENT "PRESENT")
 (:VAR MV3309 :ISA WHAT)
 (:VAR MV3308 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
349: "What is STAT?"

                    SOURCE-START
e4    BE            1 "What is STAT" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT?" (:VAR MV3312 :ISA BE :SUBJECT MV3311 :PREDICATE MV3313 :PRESENT "PRESENT")
 (:VAR MV3311 :ISA WHAT)
 (:VAR MV3313 :ISA PROTEIN :RAW-TEXT "STAT" :UID "UP:P35610" :NAME "SOAT1_HUMAN"))

___________________
350: "What is downstream of stat3?"

                    SOURCE-START
e11   BE            1 "What is downstream of stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is downstream of stat3?"
 (:VAR MV3316 :ISA BE :SUBJECT MV3315 :PREDICATE MV3317 :PRESENT "PRESENT") (:VAR MV3315 :ISA WHAT)
 (:VAR MV3317 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV3314 :RAW-TEXT "downstream")
 (:VAR MV3314 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
351: "What is erbb?"

                    SOURCE-START
e4    BE            1 "What is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is erbb?" (:VAR MV3322 :ISA BE :SUBJECT MV3321 :PREDICATE MV3323 :PRESENT "PRESENT")
 (:VAR MV3321 :ISA WHAT)
 (:VAR MV3323 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
352: "What is errb?"

                    SOURCE-START
e4    BE            1 "What is errb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is errb?" (:VAR MV3325 :ISA BE :SUBJECT MV3324 :PREDICATE MV3326 :PRESENT "PRESENT")
 (:VAR MV3324 :ISA WHAT) (:VAR MV3326 :ISA BIO-ENTITY :NAME "errb"))

___________________
353: "What is regulated by elk1"

                    SOURCE-START
e10   REGULATE      1 "What is regulated by elk1" 7
                    END-OF-SOURCE
("What is regulated by elk1"
 (:VAR MV3332 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3328 :AGENT MV3327 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3328 :ISA WHAT)
 (:VAR MV3327 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
354: "What is the evidence that kras decreases frizzled8?"

                    SOURCE-START
e17   BE            1 "What is the evidence that kras decreases frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases frizzled8?"
 (:VAR MV3336 :ISA BE :SUBJECT MV3335 :PREDICATE MV3342 :PRESENT "PRESENT") (:VAR MV3335 :ISA WHAT)
 (:VAR MV3342 :ISA EVIDENCE :STATEMENT MV3341 :HAS-DETERMINER "THE")
 (:VAR MV3341 :ISA DECREASE :AGENT MV3340 :OBJECT MV3334 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV3340 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV3334 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
355: "What is the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   BE            1 "What is the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV3345 :ISA BE :SUBJECT MV3344 :PREDICATE MV3355 :PRESENT "PRESENT") (:VAR MV3344 :ISA WHAT)
 (:VAR MV3355 :ISA EVIDENCE :STATEMENT MV3350 :HAS-DETERMINER "THE")
 (:VAR MV3350 :ISA DECREASE :AGENT MV3349 :AFFECTED-PROCESS-OR-OBJECT MV3352 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV3349 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV3352 :ISA BIO-AMOUNT :MEASURED-ITEM MV3343 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV3343 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
356: "What is the target of Selumetinib?"

                    SOURCE-START
e13   BE            1 "What is the target of Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the target of Selumetinib?"
 (:VAR MV3357 :ISA BE :SUBJECT MV3356 :PREDICATE MV3359 :PRESENT "PRESENT") (:VAR MV3356 :ISA WHAT)
 (:VAR MV3359 :ISA TARGET-PROTEIN :AGENT MV3362 :HAS-DETERMINER "THE" :RAW-TEXT "target")
 (:VAR MV3362 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
357: "What kinases does smad2 regulate"

                    SOURCE-START
e8    REGULATE      1 "What kinases does smad2 regulate" 7
                    END-OF-SOURCE
("What kinases does smad2 regulate"
 (:VAR MV3368 :ISA REGULATE :OBJECT MV3366 :AGENT MV3364 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3366 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV3364 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
358: "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e23   REGULATE      1 "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3376 :ISA REGULATE :AGENT MV3373 :OBJECT MV3380 :PRESENT "PRESENT" :ADVERB MV3374 :ADVERB
  MV3375 :RAW-TEXT "regulate")
 (:VAR MV3373 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3380 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV3377 MV3378 MV3369 MV3370 MV3371))
 (:VAR MV3377 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV3378 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3369 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3370 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV3371 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN")
 (:VAR MV3374 :ISA SUPERLATIVE-QUANTIFIER :NAME "most") (:VAR MV3375 :ISA FREQUENTLY))

___________________
359: "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3386 :ISA REGULATE :AGENT MV3385 :OBJECT MV3390 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3385 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3390 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV3387 MV3388 MV3381 MV3382 MV3383))
 (:VAR MV3387 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV3388 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3381 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3382 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV3383 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN"))

___________________
360: "What microRNAs target STAT3?"

                    SOURCE-START
e8    TARGET        1 "What microRNAs target STAT3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What microRNAs target STAT3?"
 (:VAR MV3395 :ISA TARGET :AGENT MV3393 :OBJECT MV3391 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3393 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "microRNAs")
 (:VAR MV3391 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
361: "What micrornas are regulated by p53?"

                    SOURCE-START
e12   REGULATE      1 "What micrornas are regulated by p53" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What micrornas are regulated by p53?"
 (:VAR MV3402 :ISA REGULATE :OBJECT MV3398 :AGENT MV3396 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3398 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3396 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
362: "What micrornas regulate genes in the mapk signaling pathways"

                    SOURCE-START
e17   REGULATE      1 "What micrornas regulate genes in the mapk signaling pathways" 10
                    END-OF-SOURCE
("What micrornas regulate genes in the mapk signaling pathways"
 (:VAR MV3407 :ISA REGULATE :AGENT MV3406 :OBJECT MV3408 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3406 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3408 :ISA GENE :CONTEXT MV3404 :RAW-TEXT "genes")
 (:VAR MV3404 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3411 :RAW-TEXT
  "signaling pathways")
 (:VAR MV3411 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME "mitogen activated protein kinase" :COUNT
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
363: "What pahtways involve SRF?"

                    SOURCE-START
e6    INVOLVE       1 "What pahtways involve SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pahtways involve SRF?"
 (:VAR MV3414 :ISA INVOLVE :THEME MV3416 :THEME MV3415 :PRESENT "PRESENT")
 (:VAR MV3416 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :NAME "pahtways")
 (:VAR MV3415 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
364: "What pathways are common to STAT3 and SRF?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What pathways are common to STAT3 and SRF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are common to STAT3 and SRF?"
 (:VAR MV3427 :ISA COPULAR-PREDICATION :ITEM MV3419 :VALUE MV3421 :PREDICATE MV3420)
 (:VAR MV3419 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3421 :ISA COMMON :THEME MV3425)
 (:VAR MV3425 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3417 MV3424))
 (:VAR MV3417 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3424 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3420 :ISA BE :PRESENT "PRESENT"))

___________________
365: "What pathways involve SRF?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF?"
 (:VAR MV3430 :ISA INVOLVE :THEME MV3429 :THEME MV3431 :PRESENT "PRESENT")
 (:VAR MV3429 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3431 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
366: "What pathways involve cfos?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve cfos" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve cfos?"
 (:VAR MV3434 :ISA INVOLVE :THEME MV3433 :THEME MV3435 :PRESENT "PRESENT")
 (:VAR MV3433 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3435 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
367: "What pathways involve kras and elk1?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve kras and elk1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve kras and elk1?"
 (:VAR MV3439 :ISA INVOLVE :THEME MV3438 :THEME MV3442 :PRESENT "PRESENT")
 (:VAR MV3438 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3442 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3440 MV3436))
 (:VAR MV3440 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV3436 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
368: "What pathways involve the SRF transcription factor?"

                    SOURCE-START
e12   INVOLVE       1 "What pathways involve the SRF transcription factor" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the SRF transcription factor?"
 (:VAR MV3446 :ISA INVOLVE :THEME MV3445 :THEME MV3443 :PRESENT "PRESENT")
 (:VAR MV3445 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3443 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :MODIFIER MV3448 :RAW-TEXT
  "transcription factor")
 (:VAR MV3448 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
369: "What pathways utilize srf and is srf a kinase"

                    SOURCE-START
e15   UTILIZE       1 "What pathways utilize srf and is srf " 8
e11   KINASE        8 "a kinase" 10
                    END-OF-SOURCE
                    SOURCE-START
e15   S             1 "What pathways utilize srf and is srf " 8
e11   NP            8 "a kinase" 10
                    END-OF-SOURCE


___________________
370: "What proteins are in the MAPK family?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What proteins are in the MAPK family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are in the MAPK family?"
 (:VAR MV3469 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3460 :VALUE MV3467 :PREP "IN" :PREDICATE
  MV3461)
 (:VAR MV3460 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3467 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3461 :ISA BE :PRESENT "PRESENT"))

___________________
371: "What proteins are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by lung cancer?"
 (:VAR MV3476 :ISA TARGET :OBJECT MV3472 :CAUSE MV3470 :PRESENT "PRESENT" :RAW-TEXT "targeted")
 (:VAR MV3472 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3470 :ISA CANCER :UID "TS-0571"))

___________________
372: "What proteins does PLX-4720 target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does PLX-4720 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does PLX-4720 target?"
 (:VAR MV3483 :ISA TARGET :OBJECT MV3480 :AGENT MV3478 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3480 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3478 :ISA MOLECULE :RAW-TEXT "PLX-4720" :UID "PCID:24180719"))

___________________
373: "What proteins does lung cancer target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does lung cancer target" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does lung cancer target?"
 (:VAR MV3489 :ISA TARGET :OBJECT MV3486 :CAUSE MV3484 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3486 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3484 :ISA CANCER :UID "TS-0571"))

___________________
374: "What proteins does vemurafenib target?"

                    SOURCE-START
e8    TARGET        1 "What proteins does vemurafenib target" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does vemurafenib target?"
 (:VAR MV3495 :ISA TARGET :OBJECT MV3491 :AGENT MV3493 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3491 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3493 :ISA DRUG :RAW-TEXT "vemurafenib" :NAME "vemurafenib"))

___________________
375: "What proteins might lead to the development of lung cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of lung cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins might lead to the development of lung cancer?"
 (:VAR MV3500 :ISA LEAD :AGENT MV3498 :THEME MV3503 :MODAL MV3499 :RAW-TEXT "lead")
 (:VAR MV3498 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3503 :ISA DEVELOPMENT :DISEASE MV3496 :HAS-DETERMINER "THE" :RAW-TEXT "development")
 (:VAR MV3496 :ISA CANCER :UID "TS-0571") (:VAR MV3499 :ISA MIGHT))

___________________
376: "What proteins might lead to the development of pancreatic cancer."

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE
("What proteins might lead to the development of pancreatic cancer."
 (:VAR MV3511 :ISA LEAD :AGENT MV3509 :THEME MV3514 :MODAL MV3510 :RAW-TEXT "lead")
 (:VAR MV3509 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3514 :ISA DEVELOPMENT :DISEASE MV3507 :HAS-DETERMINER "THE" :RAW-TEXT "development")
 (:VAR MV3507 :ISA CANCER :UID "TS-0739") (:VAR MV3510 :ISA MIGHT))

___________________
377: "What reactome pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What reactome pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune signaling?"
 (:VAR MV3520 :ISA INVOLVE :THEME MV3519 :THEME MV3522 :PRESENT "PRESENT")
 (:VAR MV3519 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3523 :RAW-TEXT "pathways")
 (:VAR MV3523 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV3522 :ISA SIGNAL :MODIFIER MV3521 :RAW-TEXT "signaling") (:VAR MV3521 :ISA IMMUNE))

___________________
378: "What regulates HGF?"

                    SOURCE-START
e4    REGULATE      1 "What regulates HGF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates HGF?"
 (:VAR MV3525 :ISA REGULATE :AGENT-OR-CAUSE MV3524 :OBJECT MV3526 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV3524 :ISA WHAT)
 (:VAR MV3526 :ISA PROTEIN :RAW-TEXT "HGF" :UID "UP:P14210" :NAME "HGF_HUMAN"))

___________________
379: "What regulates SMURF2?"

                    SOURCE-START
e5    REGULATE      1 "What regulates SMURF2" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates SMURF2?"
 (:VAR MV3529 :ISA REGULATE :AGENT-OR-CAUSE MV3528 :OBJECT MV3527 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV3528 :ISA WHAT)
 (:VAR MV3527 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
380: "What regulates smurf2 in liver"

                    SOURCE-START
e10   REGULATE      1 "What regulates smurf2 in liver" 7
                    END-OF-SOURCE
("What regulates smurf2 in liver"
 (:VAR MV3532 :ISA REGULATE :AGENT-OR-CAUSE MV3531 :OBJECT MV3530 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV3531 :ISA WHAT)
 (:VAR MV3530 :ISA PROTEIN :ORGAN MV3534 :RAW-TEXT "smurf2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN")
 (:VAR MV3534 :ISA LIVER))

___________________
381: "What signaling pathways are shared by RELA and ELK1?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by RELA and ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by RELA and ELK1?"
 (:VAR MV3545 :ISA SHARE :OBJECT MV3536 :PARTICIPANT MV3544 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV3536 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "signaling pathways")
 (:VAR MV3544 :ISA COLLECTION :RAW-TEXT "RELA and ELK1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3542 MV3537))
 (:VAR MV3542 :ISA PROTEIN :RAW-TEXT "RELA" :UID "UP:Q04206" :NAME "TF65_HUMAN")
 (:VAR MV3537 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
382: "What signaling pathways are shared by STAT3 and SRF?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by STAT3 and SRF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3 and SRF?"
 (:VAR MV3556 :ISA SHARE :OBJECT MV3547 :PARTICIPANT MV3555 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV3547 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "signaling pathways")
 (:VAR MV3555 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3548 MV3554))
 (:VAR MV3548 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3554 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
383: "What signaling pathways are shared by STAT3, SOCS3 and SRF?"

                    SOURCE-START
e19   SHARE         1 "What signaling pathways are shared by STAT3, SOCS3 and SRF" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
 (:VAR MV3568 :ISA SHARE :OBJECT MV3558 :PARTICIPANT MV3567 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV3558 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "signaling pathways")
 (:VAR MV3567 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3 and SRF" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV3559 MV3560 MV3566))
 (:VAR MV3559 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3560 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3566 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV3579 :ISA BIO-PRODUCE :AGENT MV3576 :OBJECT MV3577 :PRESENT "PRESENT" :RAW-TEXT
  "produces")
 (:VAR MV3576 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factor")
 (:VAR MV3577 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
386: "What transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factor transcribes SMURF2?"
 (:VAR MV3583 :ISA TRANSCRIBE :AGENT MV3580 :OBJECT MV3581 :PRESENT "PRESENT" :RAW-TEXT
  "transcribes")
 (:VAR MV3580 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factor")
 (:VAR MV3581 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
387: "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e31   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3599 :ISA COPULAR-PREDICATION :ITEM MV3584 :VALUE MV3591 :PREDICATE MV3590)
 (:VAR MV3584 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3591 :ISA COMMON :THEME MV3596)
 (:VAR MV3596 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3597 :RAW-TEXT "genes")
 (:VAR MV3597 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :TYPE PROTEIN
  :NUMBER 5 :ITEMS (MV3585 MV3586 MV3594 MV3587 MV3588))
 (:VAR MV3585 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3586 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3594 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME "IFNG_HUMAN")
 (:VAR MV3587 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME "FOXO3_HUMAN")
 (:VAR MV3588 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN")
 (:VAR MV3590 :ISA BE :PRESENT "PRESENT"))

___________________
388: "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e26   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3613 :ISA COPULAR-PREDICATION :ITEM MV3600 :VALUE MV3606 :PREDICATE MV3605)
 (:VAR MV3600 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3606 :ISA COMMON :THEME MV3610)
 (:VAR MV3610 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3611 :RAW-TEXT "genes")
 (:VAR MV3611 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV3601 MV3602 MV3603))
 (:VAR MV3601 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3602 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3603 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN")
 (:VAR MV3605 :ISA BE :PRESENT "PRESENT"))

___________________
389: "What genes does stat3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate?"
 (:VAR MV3618 :ISA REGULATE :OBJECT MV3616 :AGENT MV3614 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3616 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3614 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
390: "What transcription factors are common to these genes?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "What transcription factors are common to these genes" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to these genes?"
 (:VAR MV3627 :ISA COPULAR-PREDICATION :ITEM MV3619 :VALUE MV3622 :PREDICATE MV3621)
 (:VAR MV3619 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3622 :ISA COMMON :THEME MV3625)
 (:VAR MV3625 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV3621 :ISA BE :PRESENT "PRESENT"))

___________________
391: "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e32   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3643 :ISA COPULAR-PREDICATION :ITEM MV3628 :VALUE MV3629 :PREDICATE MV3635)
 (:VAR MV3628 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3629 :ISA IN-COMMON :THEME MV3640)
 (:VAR MV3640 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3641 :RAW-TEXT "genes")
 (:VAR MV3641 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :TYPE PROTEIN
  :NUMBER 5 :ITEMS (MV3630 MV3631 MV3638 MV3632 MV3633))
 (:VAR MV3630 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3631 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3638 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME "IFNG_HUMAN")
 (:VAR MV3632 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME "FOXO3_HUMAN")
 (:VAR MV3633 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN")
 (:VAR MV3635 :ISA BE :PRESENT "PRESENT"))

___________________
392: "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3657 :ISA COPULAR-PREDICATION :ITEM MV3644 :VALUE MV3645 :PREDICATE MV3650)
 (:VAR MV3644 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3645 :ISA IN-COMMON :THEME MV3654)
 (:VAR MV3654 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3655 :RAW-TEXT "genes")
 (:VAR MV3655 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV3646 MV3647 MV3648))
 (:VAR MV3646 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3647 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3648 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN")
 (:VAR MV3650 :ISA BE :PRESENT "PRESENT"))

___________________
393: "What transcription factors are regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What transcription factors are regulators of SMURF2 in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2 in liver?"
 (:VAR MV3661 :ISA BE :SUBJECT MV3658 :PREDICATE MV3662 :PRESENT "PRESENT")
 (:VAR MV3658 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3662 :ISA REGULATOR :THEME MV3659 :RAW-TEXT "regulators")
 (:VAR MV3659 :ISA PROTEIN :ORGAN MV3665 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN")
 (:VAR MV3665 :ISA LIVER))

___________________
394: "What transcription factors are regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What transcription factors are regulators of SMURF2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2?"
 (:VAR MV3671 :ISA BE :SUBJECT MV3668 :PREDICATE MV3672 :PRESENT "PRESENT")
 (:VAR MV3668 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3672 :ISA REGULATOR :THEME MV3669 :RAW-TEXT "regulators")
 (:VAR MV3669 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
395: "What transcription factors are shared by the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e24   SHARE         1 "What transcription factors are shared by the SRF, HRAS, and elk1 genes" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
 (:VAR MV3687 :ISA SHARE :OBJECT MV3675 :PARTICIPANT MV3685 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV3675 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3685 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3686 :RAW-TEXT "genes")
 (:VAR MV3686 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV3682 MV3683 MV3676))
 (:VAR MV3682 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3683 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME "RASH_HUMAN")
 (:VAR MV3676 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
396: "What transcription factors regulate SMURF2 in liver?"

                    SOURCE-START
e13   REGULATE      1 "What transcription factors regulate SMURF2 in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate SMURF2 in liver?"
 (:VAR MV3692 :ISA REGULATE :AGENT MV3689 :OBJECT MV3690 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3689 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3690 :ISA PROTEIN :ORGAN MV3694 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN")
 (:VAR MV3694 :ISA LIVER))

___________________
397: "What transcription factors regulate ZEB1?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate ZEB1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate ZEB1?"
 (:VAR MV3699 :ISA REGULATE :AGENT MV3696 :OBJECT MV3697 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3696 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3697 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME "ZEB1_HUMAN"))

___________________
398: "What transcription factors regulate erk"

                    SOURCE-START
e7    REGULATE      1 "What transcription factors regulate erk" 6
                    END-OF-SOURCE
("What transcription factors regulate erk"
 (:VAR MV3702 :ISA REGULATE :AGENT MV3700 :OBJECT MV3703 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3700 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3703 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV3706 :ISA REGULATE :AGENT MV3704 :THEME MV3712 :OBJECT MV3707 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV3704 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3712 :ISA BIO-ENTITY :HAS-DETERMINER "THE" :MODIFIER MV3710 :MODIFIER MV3711 :NAME
  "pathwya")
 (:VAR MV3710 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV3711 :ISA SIGNAL :RAW-TEXT "signaling") (:VAR MV3707 :ISA GENE :RAW-TEXT "genes"))

___________________
400: "What transcription factors regulated frizzled8?"

                    SOURCE-START
e9    PROTEIN       1 "What transcription factors regulated frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulated frizzled8?"
 (:VAR MV3715 :ISA PROTEIN :HAS-DETERMINER "WHAT" :PREDICATION MV3717 :RAW-TEXT "frizzled8" :UID
  "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV3717 :ISA REGULATE :OBJECT MV3715 :AGENT MV3714 :RAW-TEXT "regulated")
 (:VAR MV3714 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
401: "What transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors transcribe SMURF2?"
 (:VAR MV3721 :ISA TRANSCRIBE :AGENT MV3718 :OBJECT MV3719 :PRESENT "PRESENT" :RAW-TEXT
  "transcribe")
 (:VAR MV3718 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3719 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
402: "What upregulates fzd8?"

                    SOURCE-START
e5    UPREGULATE    1 "What upregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates fzd8?"
 (:VAR MV3724 :ISA UPREGULATE :AGENT-OR-CAUSE MV3723 :OBJECT MV3722 :PRESENT "PRESENT" :RAW-TEXT
  "upregulates")
 (:VAR MV3723 :ISA WHAT)
 (:VAR MV3722 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
403: "Where is STAT3 expressed?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Where is STAT3 expressed" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Where is STAT3 expressed?"
 (:VAR MV3730 :ISA GENE-TRANSCRIPT-EXPRESS :LOCATION MV3726 :OBJECT MV3725 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV3726 :ISA WHERE)
 (:VAR MV3725 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
404: "Which KEGG pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve SRF?"
 (:VAR MV3734 :ISA INVOLVE :THEME MV3733 :THEME MV3735 :PRESENT "PRESENT")
 (:VAR MV3733 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3732 :RAW-TEXT "pathways")
 (:VAR MV3732 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV3735 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
405: "Which KEGG pathways use SRF?"

                    SOURCE-START
e9    BIO-USE       1 "Which KEGG pathways use SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways use SRF?"
 (:VAR MV3740 :ISA BIO-USE :AGENT MV3738 :OBJECT MV3741 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV3738 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3737 :RAW-TEXT "pathways")
 (:VAR MV3737 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV3741 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
406: "What transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate frizzled8?"
 (:VAR MV3745 :ISA REGULATE :AGENT MV3742 :OBJECT MV3743 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3742 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3743 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
407: "Which also regulate srf"

                    SOURCE-START
e7    REGULATE      1 "Which also regulate srf" 5
                    END-OF-SOURCE
("Which also regulate srf"
 (:VAR MV3749 :ISA REGULATE :AGENT-OR-CAUSE MV3746 :OBJECT MV3750 :PRESENT "PRESENT" :ADVERB MV3747
  :RAW-TEXT "regulate")
 (:VAR MV3746 :ISA WHICH)
 (:VAR MV3750 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3747 :ISA ALSO))

___________________
408: "Which apoptotic genes are regulated by stat3?"

                    SOURCE-START
e15   REGULATE      1 "Which apoptotic genes are regulated by stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes are regulated by stat3?"
 (:VAR MV3759 :ISA REGULATE :OBJECT MV3755 :AGENT MV3751 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3755 :ISA GENE :HAS-DETERMINER "WHICH" :MODIFIER MV3754 :RAW-TEXT "genes")
 (:VAR MV3754 :ISA APOPTOTIC)
 (:VAR MV3751 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
409: "Which apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "Which apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes is stat3 upstream of?"
 (:VAR MV3766 :ISA BE :SUBJECT MV3765 :PREDICATE MV3767 :PRESENT "PRESENT")
 (:VAR MV3765 :ISA GENE :HAS-DETERMINER "WHICH" :MODIFIER MV3764 :RAW-TEXT "genes")
 (:VAR MV3764 :ISA APOPTOTIC)
 (:VAR MV3767 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3765 :MODIFIER MV3761 :RAW-TEXT "upstream")
 (:VAR MV3765 :ISA GENE :HAS-DETERMINER "WHICH" :MODIFIER MV3764 :RAW-TEXT "genes")
 (:VAR MV3764 :ISA APOPTOTIC)
 (:VAR MV3761 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
410: "Which genes are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which genes are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are targeted by STAT3?"
 (:VAR MV3776 :ISA TARGET :OBJECT MV3772 :AGENT MV3770 :PRESENT "PRESENT" :RAW-TEXT "targeted")
 (:VAR MV3772 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV3770 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
411: "Which genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "Which genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes regulated by stat3 are kinases?"
 (:VAR MV3783 :ISA BE :SUBJECT MV3780 :PREDICATE MV3784 :PRESENT "PRESENT")
 (:VAR MV3780 :ISA GENE :PREDICATION MV3781 :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV3781 :ISA REGULATE :OBJECT MV3780 :AGENT MV3778 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV3778 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3784 :ISA KINASE :RAW-TEXT "kinases"))

___________________
412: "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e29   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3800 :ISA SHARE :OBJECT MV3792 :PARTICIPANT MV3798 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV3792 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3791 :RAW-TEXT "pathways")
 (:VAR MV3791 :ISA IMMUNE) (:VAR MV3798 :ISA GENE :EXPRESSES MV3799 :RAW-TEXT "genes")
 (:VAR MV3799 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :TYPE PROTEIN
  :NUMBER 5 :ITEMS (MV3786 MV3787 MV3796 MV3788 MV3789))
 (:VAR MV3786 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3787 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3796 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME "IFNG_HUMAN")
 (:VAR MV3788 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME "FOXO3_HUMAN")
 (:VAR MV3789 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN"))

___________________
413: "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3815 :ISA SHARE :OBJECT MV3807 :PARTICIPANT MV3813 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV3807 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3806 :RAW-TEXT "pathways")
 (:VAR MV3806 :ISA IMMUNE)
 (:VAR MV3813 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3814 :RAW-TEXT "genes")
 (:VAR MV3814 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV3802 MV3803 MV3804))
 (:VAR MV3802 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3803 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3804 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN"))

___________________
414: "Which kegg pathways utilize genes regulated by smad2"

                    SOURCE-START
e15   UTILIZE       1 "Which kegg pathways utilize genes regulated by smad2" 10
                    END-OF-SOURCE
("Which kegg pathways utilize genes regulated by smad2"
 (:VAR MV3820 :ISA UTILIZE :PARTICIPANT MV3819 :OBJECT MV3821 :PRESENT "PRESENT" :RAW-TEXT
  "utilize")
 (:VAR MV3819 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3824 :RAW-TEXT "pathways")
 (:VAR MV3824 :ISA BIO-ENTITY :NAME "kegg")
 (:VAR MV3821 :ISA GENE :PREDICATION MV3822 :RAW-TEXT "genes")
 (:VAR MV3822 :ISA REGULATE :OBJECT MV3821 :AGENT MV3817 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV3817 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
415: "Which Reactome pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which Reactome pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which Reactome pathways utilize SRF?"
 (:VAR MV3829 :ISA UTILIZE :PARTICIPANT MV3828 :OBJECT MV3830 :PRESENT "PRESENT" :RAW-TEXT
  "utilize")
 (:VAR MV3828 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3827 :RAW-TEXT "pathways")
 (:VAR MV3827 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV3830 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
416: "Which kegg pathways utilize it"

                    SOURCE-START
e9    UTILIZE       1 "Which kegg pathways utilize it" 6
                    END-OF-SOURCE
("Which kegg pathways utilize it"
 (:VAR MV3834 :ISA UTILIZE :PARTICIPANT MV3833 :OBJECT MV3835 :PRESENT "PRESENT" :RAW-TEXT
  "utilize")
 (:VAR MV3833 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3832 :RAW-TEXT "pathways")
 (:VAR MV3832 :ISA BIO-ENTITY :NAME "kegg") (:VAR MV3835 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
417: "Which of them are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of them are regulated by elk1" 9
                    END-OF-SOURCE
("Which of them are regulated by elk1"
 (:VAR MV3843 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3839 :AGENT MV3836 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3839 :ISA PRONOUN/PLURAL :QUANTIFIER MV3837 :WORD "them") (:VAR MV3837 :ISA WHICH)
 (:VAR MV3836 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
418: "Which of these are expressed in liver"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of these are expressed in liver" 8
                    END-OF-SOURCE
("Which of these are expressed in liver"
 (:VAR MV3853 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV3848 :ORGAN MV3852 :PRESENT "PRESENT"
  :RAW-TEXT "expressed")
 (:VAR MV3848 :ISA THESE :QUANTIFIER MV3846 :WORD "these") (:VAR MV3846 :ISA WHICH)
 (:VAR MV3852 :ISA LIVER))

___________________
419: "Which of these are in immune pathways"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    END-OF-SOURCE
("Which of these are in immune pathways"
 (:VAR MV3864 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3858 :VALUE MV3862 :PREP "IN" :PREDICATE
  MV3859)
 (:VAR MV3858 :ISA THESE :QUANTIFIER MV3856 :WORD "these") (:VAR MV3856 :ISA WHICH)
 (:VAR MV3862 :ISA PATHWAY :MODIFIER MV3861 :RAW-TEXT "pathways") (:VAR MV3861 :ISA IMMUNE)
 (:VAR MV3859 :ISA BE :PRESENT "PRESENT"))

___________________
420: "what proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "what proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("what proteins does MEK phosphorylate?"
 (:VAR MV3870 :ISA PHOSPHORYLATE :AMINO-ACID MV3867 :AGENT MV3869 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylate")
 (:VAR MV3867 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3869 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
421: "Which of these are kinases"

                    SOURCE-START
e9    BE            1 "Which of these are kinases" 6
                    END-OF-SOURCE
("Which of these are kinases"
 (:VAR MV3874 :ISA BE :SUBJECT MV3873 :PREDICATE MV3875 :PRESENT "PRESENT")
 (:VAR MV3873 :ISA THESE :QUANTIFIER MV3871 :WORD "these") (:VAR MV3871 :ISA WHICH)
 (:VAR MV3875 :ISA KINASE :RAW-TEXT "kinases"))

___________________
422: "Which of those are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by elk1" 9
                    END-OF-SOURCE
("Which of those are regulated by elk1"
 (:VAR MV3884 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3880 :AGENT MV3877 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3880 :ISA THOSE :QUANTIFIER MV3878 :WORD "those") (:VAR MV3878 :ISA WHICH)
 (:VAR MV3877 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
423: "Which of these are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by elk1" 9
                    END-OF-SOURCE
("Which of these are regulated by elk1"
 (:VAR MV3894 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3890 :AGENT MV3887 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3890 :ISA THESE :QUANTIFIER MV3888 :WORD "these") (:VAR MV3888 :ISA WHICH)
 (:VAR MV3887 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
424: "Which of these are regulated by fakeprotein"

                    SOURCE-START
e14   REGULATE      1 "Which of these are regulated by fakeprotein" 8
                    END-OF-SOURCE
("Which of these are regulated by fakeprotein"
 (:VAR MV3904 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3899 :AGENT MV3903 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3899 :ISA THESE :QUANTIFIER MV3897 :WORD "these") (:VAR MV3897 :ISA WHICH)
 (:VAR MV3903 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
425: "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3920 :ISA SHARE :OBJECT MV3912 :PARTICIPANT MV3918 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV3912 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3918 :ISA GENE :EXPRESSES MV3919 :RAW-TEXT "genes")
 (:VAR MV3919 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :TYPE PROTEIN
  :NUMBER 5 :ITEMS (MV3907 MV3908 MV3916 MV3909 MV3910))
 (:VAR MV3907 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3908 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3916 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME "IFNG_HUMAN")
 (:VAR MV3909 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME "FOXO3_HUMAN")
 (:VAR MV3910 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN"))

___________________
426: "Which pathways are shared by stat3, socs3, and creb5"

                    SOURCE-START
e21   SHARE         1 "Which pathways are shared by stat3, socs3, and creb5" 15
                    END-OF-SOURCE
("Which pathways are shared by stat3, socs3, and creb5"
 (:VAR MV3934 :ISA SHARE :OBJECT MV3925 :PARTICIPANT MV3933 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV3925 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3933 :ISA COLLECTION :RAW-TEXT "stat3, socs3, and creb5" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV3922 MV3923 MV3932))
 (:VAR MV3922 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3923 :ISA PROTEIN :RAW-TEXT "socs3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3932 :ISA PROTEIN :RAW-TEXT "creb5" :UID "UP:Q02930" :NAME "CREB5_HUMAN"))

___________________
427: "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e30   SHARE         1 "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3950 :ISA SHARE :OBJECT MV3941 :PARTICIPANT MV3948 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV3941 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3948 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3949 :RAW-TEXT "genes")
 (:VAR MV3949 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :TYPE PROTEIN
  :NUMBER 5 :ITEMS (MV3936 MV3937 MV3946 MV3938 MV3939))
 (:VAR MV3936 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3937 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3946 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME "IFNG_HUMAN")
 (:VAR MV3938 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME "FOXO3_HUMAN")
 (:VAR MV3939 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN"))

___________________
428: "Which pathways involve TAP1 and JAK1?"

                    SOURCE-START
e11   INVOLVE       1 "Which pathways involve TAP1 and JAK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve TAP1 and JAK1?"
 (:VAR MV3956 :ISA INVOLVE :THEME MV3955 :THEME MV3958 :PRESENT "PRESENT")
 (:VAR MV3955 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3958 :ISA COLLECTION :RAW-TEXT "TAP1 and JAK1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3952 MV3953))
 (:VAR MV3952 :ISA PROTEIN :RAW-TEXT "TAP1" :UID "UP:Q03518" :NAME "TAP1_HUMAN")
 (:VAR MV3953 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME "JAK1_HUMAN"))

___________________
429: "Which pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "Which pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve calcium?"
 (:VAR MV3961 :ISA INVOLVE :THEME MV3960 :THEME MV3962 :PRESENT "PRESENT")
 (:VAR MV3960 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3962 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
430: "Which pathways use SRF?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use SRF?"
 (:VAR MV3966 :ISA BIO-USE :AGENT MV3964 :OBJECT MV3967 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV3964 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3967 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
431: "Which pathways use these"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    END-OF-SOURCE
("Which pathways use these"
 (:VAR MV3971 :ISA BIO-USE :AGENT MV3969 :OBJECT MV3972 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV3969 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3972 :ISA THESE :WORD "these"))

___________________
432: "Which pathways utilize SRF?"

                    SOURCE-START
e6    UTILIZE       1 "Which pathways utilize SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways utilize SRF?"
 (:VAR MV3975 :ISA UTILIZE :PARTICIPANT MV3974 :OBJECT MV3976 :PRESENT "PRESENT" :RAW-TEXT
  "utilize")
 (:VAR MV3974 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3976 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
433: "Which pathways utilize these genes"

                    SOURCE-START
e8    UTILIZE       1 "Which pathways utilize these genes" 6
                    END-OF-SOURCE
("Which pathways utilize these genes"
 (:VAR MV3979 :ISA UTILIZE :PARTICIPANT MV3978 :OBJECT MV3981 :PRESENT "PRESENT" :RAW-TEXT
  "utilize")
 (:VAR MV3978 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3981 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
434: "Which proteins are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which proteins are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which proteins are targeted by STAT3?"
 (:VAR MV3988 :ISA TARGET :OBJECT MV3984 :AGENT MV3982 :PRESENT "PRESENT" :RAW-TEXT "targeted")
 (:VAR MV3984 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "proteins")
 (:VAR MV3982 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
435: "Which reactome pathways utilize srf"

                    SOURCE-START
e8    UTILIZE       1 "Which reactome pathways utilize srf" 6
                    END-OF-SOURCE
("Which reactome pathways utilize srf"
 (:VAR MV3993 :ISA UTILIZE :PARTICIPANT MV3992 :OBJECT MV3994 :PRESENT "PRESENT" :RAW-TEXT
  "utilize")
 (:VAR MV3992 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3991 :RAW-TEXT "pathways")
 (:VAR MV3991 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV3994 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
436: "Which transcription factors are in the MAPK signaling pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "Which transcription factors are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors are in the MAPK signaling pathway?"
 (:VAR MV4005 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3995 :VALUE MV4004 :PREP "IN" :PREDICATE
  MV3998)
 (:VAR MV3995 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT "transcription factors")
 (:VAR MV4004 :ISA TRANSCRIPTION-FACTOR :CONTEXT-OR-IN-PATHWAY MV3996 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "transcription factors")
 (:VAR MV3996 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4001 :RAW-TEXT
  "signaling pathway")
 (:VAR MV4001 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV3998 :ISA BE :PRESENT "PRESENT"))

___________________
437: "Which transcription factors regulate frizzled8 in the liver?"

                    SOURCE-START
e16   REGULATE      1 "Which transcription factors regulate frizzled8 in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8 in the liver?"
 (:VAR MV4010 :ISA REGULATE :AGENT MV4007 :OBJECT MV4008 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4007 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT "transcription factors")
 (:VAR MV4008 :ISA PROTEIN :ORGAN MV4013 :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV4013 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
438: "Which transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "Which transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8?"
 (:VAR MV4018 :ISA REGULATE :AGENT MV4015 :OBJECT MV4016 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4015 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT "transcription factors")
 (:VAR MV4016 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
439: "Let's move AKT1 on top."

                    SOURCE-START
e12   EXPLICIT-SUGGESTION 1 "Let's move AKT1 on top" 9
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 on top."
 (:VAR MV4026 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4021 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV4021 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV4023 :THEME MV4020 :PRESENT
  "PRESENT")
 (:VAR MV4023 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV4020 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
440: "Let's show the phosphorylated AKT1 on top."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's show the phosphorylated AKT1 on top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show the phosphorylated AKT1 on top."
 (:VAR MV4036 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4029 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV4029 :ISA SHOW :AT-RELATIVE-LOCATION MV4033 :STATEMENT-OR-THEME MV4028 :PRESENT "PRESENT")
 (:VAR MV4033 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV4028 :ISA PROTEIN :HAS-DETERMINER "THE" :PREDICATION MV4031 :RAW-TEXT "AKT1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4031 :ISA PHOSPHORYLATE :SUBSTRATE MV4028 :RAW-TEXT "phosphorylated"))

___________________
441: "What are the common upstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRAF?"
 (:VAR MV4039 :ISA BE :SUBJECT MV4038 :PREDICATE MV4042 :PRESENT "PRESENT") (:VAR MV4038 :ISA WHAT)
 (:VAR MV4042 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4046 :HAS-DETERMINER "THE" :PREDICATION
  MV4041 :RAW-TEXT "upstreams")
 (:VAR MV4046 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4037 MV4045))
 (:VAR MV4037 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4045 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV4041 :ISA COMMON))

___________________
442: "Is stat3 expressed exclusively in liver?"

                    SOURCE-START
e11   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed exclusively in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed exclusively in liver?"
 (:VAR MV4055 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV4053 :PAST "PAST" :RAW-TEXT "expressed")
 (:VAR MV4053 :ISA LIVER))

___________________
443: "Is stat3 expressed in spleen?"

                    SOURCE-START
e9    GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in spleen" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in spleen?"
 (:VAR MV4062 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV4060 :PAST "PAST" :RAW-TEXT "expressed")
 (:VAR MV4060 :ISA SPLEEN))

___________________
444: "Show phosphorylated akt1 on top."

                    SOURCE-START
e12   SHOW          1 "Show phosphorylated akt1 on top" 7
                    PERIOD
                    END-OF-SOURCE
("Show phosphorylated akt1 on top."
 (:VAR MV4064 :ISA SHOW :AT-RELATIVE-LOCATION MV4067 :STATEMENT-OR-THEME MV4063 :PRESENT "PRESENT")
 (:VAR MV4067 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV4063 :ISA PROTEIN :PREDICATION MV4065 :RAW-TEXT "akt1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4065 :ISA PHOSPHORYLATE :SUBSTRATE MV4063 :RAW-TEXT "phosphorylated"))

___________________
445: "What are the common upstreams of AKT1 and  BRA?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRA" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRA?"
 (:VAR MV4072 :ISA BE :SUBJECT MV4071 :PREDICATE MV4075 :PRESENT "PRESENT") (:VAR MV4071 :ISA WHAT)
 (:VAR MV4075 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4079 :HAS-DETERMINER "THE" :PREDICATION
  MV4074 :RAW-TEXT "upstreams")
 (:VAR MV4079 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRA" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4070 MV4078))
 (:VAR MV4070 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4078 :ISA BIO-ENTITY :NAME "BRA") (:VAR MV4074 :ISA COMMON))

___________________
446: "RAF activates MEK and MEK activates ERK."

                    SOURCE-START
e11   BIO-ACTIVATE  1 "RAF activates MEK and MEK activates ERK" 8
                    PERIOD
                    END-OF-SOURCE
("RAF activates MEK and MEK activates ERK."
 (:VAR MV4088 :ISA COLLECTION :RAW-TEXT "RAF activates MEK and MEK activates ERK" :TYPE
  BIO-ACTIVATE :NUMBER 2 :ITEMS (MV4082 MV4086))
 (:VAR MV4082 :ISA BIO-ACTIVATE :AGENT MV4081 :OBJECT MV4083 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV4081 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV4083 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4086 :ISA BIO-ACTIVATE :AGENT MV4085 :OBJECT MV4087 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV4085 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4087 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV4090 :ISA BE :SUBJECT MV4089 :PREDICATE MV4092 :PRESENT "PRESENT") (:VAR MV4089 :ISA WHAT)
 (:VAR MV4092 :ISA PATH :END MV4096 :START MV4094 :HAS-DETERMINER "THE")
 (:VAR MV4096 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4094 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV4099 :ISA REMOVE :OBJECT MV4106 :PRESENT "PRESENT" :RAW-TEXT "remove")
 (:VAR MV4106 :ISA FACT :STATEMENT MV4104 :HAS-DETERMINER "THE")
 (:VAR MV4104 :ISA BIO-ACTIVATE :AGENT MV4103 :OBJECT MV4105 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV4103 :ISA PROTEIN-FAMILY :RAW-TEXT "mek" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4105 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV4116 :ISA ASK :PATIENT MV4108 :MODAL MV4109 :AGENT MV4110 :PRESENT "PRESENT")
 (:VAR MV4108 :ISA TISSUE :HAS-DETERMINER "WHAT") (:VAR MV4109 :ISA CAN)
 (:VAR MV4110 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
450: "let's show phosphorylated akt1 on top."

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "let's show phosphorylated akt1 on top" 10
                    PERIOD
                    END-OF-SOURCE
("let's show phosphorylated akt1 on top."
 (:VAR MV4125 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4119 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV4119 :ISA SHOW :AT-RELATIVE-LOCATION MV4122 :STATEMENT-OR-THEME MV4118 :PRESENT "PRESENT")
 (:VAR MV4122 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV4118 :ISA PROTEIN :PREDICATION MV4120 :RAW-TEXT "akt1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4120 :ISA PHOSPHORYLATE :SUBSTRATE MV4118 :RAW-TEXT "phosphorylated"))

___________________
451: "what are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "what are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what are positive regulators of the cfos gene?"
 (:VAR MV4128 :ISA BE :SUBJECT MV4127 :PREDICATE MV4126 :PRESENT "PRESENT") (:VAR MV4127 :ISA WHAT)
 (:VAR MV4126 :ISA POSITIVE-REGULATOR :THEME MV4132 :RAW-TEXT "positive regulators")
 (:VAR MV4132 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4131 :RAW-TEXT "gene")
 (:VAR MV4131 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
452: "what transcription factors regulate FOS in soft tissue?"

                    SOURCE-START
e13   REGULATE      1 "what transcription factors regulate FOS in soft tissue" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors regulate FOS in soft tissue?"
 (:VAR MV4137 :ISA REGULATE :AGENT MV4134 :OBJECT MV4138 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4134 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV4138 :ISA PROTEIN :ORGAN MV4135 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV4135 :ISA BIO-ORGAN :NAME "soft tissue" :UID "NCIT:C12471"))

___________________
453: "Are there any drugs inhibiting MEK?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there any drugs inhibiting MEK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs inhibiting MEK?"
 (:VAR MV4148 :ISA THERE-EXISTS :VALUE MV4145 :PREDICATE MV4142)
 (:VAR MV4145 :ISA DRUG :PREDICATION MV4146 :QUANTIFIER MV4144 :RAW-TEXT "drugs")
 (:VAR MV4146 :ISA INHIBIT :AGENT MV4145 :OBJECT MV4147 :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT
  "inhibiting")
 (:VAR MV4147 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4144 :ISA ANY :WORD "any") (:VAR MV4142 :ISA SYNTACTIC-THERE))

___________________
454: "Are there any drugs targeting KRAS?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there any drugs targeting KRAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs targeting KRAS?"
 (:VAR MV4156 :ISA THERE-EXISTS :VALUE MV4153 :PREDICATE MV4150)
 (:VAR MV4153 :ISA DRUG :PREDICATION MV4154 :QUANTIFIER MV4152 :RAW-TEXT "drugs")
 (:VAR MV4154 :ISA TARGET :AGENT MV4153 :OBJECT MV4155 :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT
  "targeting")
 (:VAR MV4155 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV4152 :ISA ANY :WORD "any") (:VAR MV4150 :ISA SYNTACTIC-THERE))

___________________
455: "Are there any genes in the liver that are regulated by stat3?"

                    SOURCE-START
e30   THERE-EXISTS  1 "Are there any genes in the liver that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes in the liver that are regulated by stat3?"
 (:VAR MV4170 :ISA THERE-EXISTS :VALUE MV4162 :PREDICATE MV4159)
 (:VAR MV4162 :ISA GENE :PREDICATION MV4171 :ORGAN MV4165 :QUANTIFIER MV4161 :RAW-TEXT "genes")
 (:VAR MV4171 :ISA REGULATE :OBJECT MV4162 :THAT-REL T :AGENT MV4157 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV4157 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4165 :ISA LIVER :HAS-DETERMINER "THE") (:VAR MV4161 :ISA ANY :WORD "any")
 (:VAR MV4159 :ISA SYNTACTIC-THERE))

___________________
456: "Are there any genes involved in apoptosis that are regulated by stat3?"

                    SOURCE-START
e30   THERE-EXISTS  1 "Are there any genes involved in apoptosis that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes involved in apoptosis that are regulated by stat3?"
 (:VAR MV4187 :ISA THERE-EXISTS :VALUE MV4179 :PREDICATE MV4176)
 (:VAR MV4179 :ISA GENE :PREDICATION MV4180 :QUANTIFIER MV4178 :RAW-TEXT "genes")
 (:VAR MV4180 :ISA INVOLVE :THEME MV4179 :THEME MV4182 :PAST "PAST")
 (:VAR MV4182 :ISA APOPTOSIS :PREDICATION MV4188 :RAW-TEXT "apoptosis")
 (:VAR MV4188 :ISA REGULATE :AFFECTED-PROCESS MV4182 :THAT-REL T :AGENT MV4174 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4174 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4178 :ISA ANY :WORD "any") (:VAR MV4176 :ISA SYNTACTIC-THERE))

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
 (:VAR MV4209 :ISA THERE-EXISTS :VALUE MV4207 :PREDICATE MV4204)
 (:VAR MV4207 :ISA INHIBITOR :TARGET-OR-PROTEIN MV4202 :QUANTIFIER MV4206 :RAW-TEXT "inhibitors")
 (:VAR MV4202 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME "JAK1_HUMAN")
 (:VAR MV4206 :ISA ANY :WORD "any") (:VAR MV4204 :ISA SYNTACTIC-THERE))

___________________
459: "Are there genes regulated by elk1 and srf"

                    SOURCE-START
e18   THERE-EXISTS  1 "Are there genes regulated by elk1 and srf" 10
                    END-OF-SOURCE
("Are there genes regulated by elk1 and srf"
 (:VAR MV4220 :ISA THERE-EXISTS :VALUE MV4215 :PREDICATE MV4213)
 (:VAR MV4215 :ISA GENE :PREDICATION MV4216 :RAW-TEXT "genes")
 (:VAR MV4216 :ISA REGULATE :OBJECT MV4215 :AGENT MV4221 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4221 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4211 MV4219))
 (:VAR MV4211 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4219 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4213 :ISA SYNTACTIC-THERE))

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
("Can you show me genes regulated by ELK1" (:VAR MV4281 :ISA POLAR-QUESTION :STATEMENT MV4275)
 (:VAR MV4275 :ISA SHOW :AGENT MV4274 :STATEMENT-OR-THEME MV4277 :BENEFICIARY MV4276 :MODAL "CAN")
 (:VAR MV4274 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4277 :ISA GENE :PREDICATION MV4278 :RAW-TEXT "genes")
 (:VAR MV4278 :ISA REGULATE :OBJECT MV4277 :AGENT MV4272 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4272 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4276 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
464: "Can you show me genes that are regulated by ELK1"

                    SOURCE-START
e26   SHOW          1 "Can you show me genes that are regulated by ELK1" 12
                    END-OF-SOURCE
("Can you show me genes that are regulated by ELK1"
 (:VAR MV4294 :ISA POLAR-QUESTION :STATEMENT MV4285)
 (:VAR MV4285 :ISA SHOW :AGENT MV4284 :STATEMENT-OR-THEME MV4287 :BENEFICIARY MV4286 :MODAL "CAN")
 (:VAR MV4284 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4287 :ISA GENE :PREDICATION MV4292 :RAW-TEXT "genes")
 (:VAR MV4292 :ISA REGULATE :OBJECT MV4287 :THAT-REL T :AGENT MV4282 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4282 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4286 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
465: "Can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "Can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("Can you show me the pahtways that involve SRF"
 (:VAR MV4304 :ISA POLAR-QUESTION :STATEMENT MV4297)
 (:VAR MV4297 :ISA SHOW :AGENT MV4296 :STATEMENT-OR-THEME MV4300 :BENEFICIARY MV4298 :MODAL "CAN")
 (:VAR MV4296 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4300 :ISA BIO-ENTITY :PREDICATION MV4302 :HAS-DETERMINER "THE" :NAME "pahtways")
 (:VAR MV4302 :ISA INVOLVE :THEME MV4300 :THAT-REL T :THEME MV4303 :MODAL "CAN")
 (:VAR MV4303 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4298 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
466: "Can you tell me the genes regulated by STAT3"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes regulated by STAT3" 11
                    END-OF-SOURCE
("Can you tell me the genes regulated by STAT3" (:VAR MV4315 :ISA POLAR-QUESTION :STATEMENT MV4308)
 (:VAR MV4308 :ISA TELL :AGENT MV4307 :THEME MV4311 :BENEFICIARY MV4309 :MODAL "CAN")
 (:VAR MV4307 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4311 :ISA GENE :PREDICATION MV4312 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4312 :ISA REGULATE :OBJECT MV4311 :AGENT MV4305 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4305 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4309 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
467: "Can you tell me the genes that STAT3 regulates"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes that STAT3 regulates" 11
                    END-OF-SOURCE
("Can you tell me the genes that STAT3 regulates"
 (:VAR MV4325 :ISA POLAR-QUESTION :STATEMENT MV4319)
 (:VAR MV4319 :ISA TELL :AGENT MV4318 :THEME MV4322 :BENEFICIARY MV4320 :MODAL "CAN")
 (:VAR MV4318 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4322 :ISA GENE :PREDICATION MV4324 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4324 :ISA REGULATE :OBJECT MV4322 :THAT-REL T :AGENT MV4316 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV4316 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4320 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
468: "Can you tell me the genes that are regulated by STAT3"

                    SOURCE-START
e29   TELL          1 "Can you tell me the genes that are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes that are regulated by STAT3"
 (:VAR MV4339 :ISA POLAR-QUESTION :STATEMENT MV4329)
 (:VAR MV4329 :ISA TELL :AGENT MV4328 :THEME MV4332 :BENEFICIARY MV4330 :MODAL "CAN")
 (:VAR MV4328 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4332 :ISA GENE :PREDICATION MV4337 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4337 :ISA REGULATE :OBJECT MV4332 :THAT-REL T :AGENT MV4326 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4326 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4330 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
469: "Can you tell me the genes which are regulated by STAT3"

                    SOURCE-START
e28   TELL          1 "Can you tell me the genes which are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes which are regulated by STAT3"
 (:VAR MV4354 :ISA POLAR-QUESTION :STATEMENT MV4343)
 (:VAR MV4343 :ISA TELL :AGENT MV4342 :THEME MV4346 :BENEFICIARY MV4344 :MODAL "CAN")
 (:VAR MV4342 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4346 :ISA GENE :PREDICATION MV4353 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4353 :ISA REGULATE :OBJECT MV4346 :AGENT MV4340 :MODAL MV4341 :RAW-TEXT "regulated")
 (:VAR MV4340 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4341 :ISA CAN) (:VAR MV4344 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
470: "Can you tell me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf"
 (:VAR MV4370 :ISA POLAR-QUESTION :STATEMENT MV4359)
 (:VAR MV4359 :ISA TELL :AGENT MV4358 :THEME MV4368 :THEME MV4360 :MODAL "CAN")
 (:VAR MV4358 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4368 :ISA SHARE :OBJECT MV4355 :PARTICIPANT MV4367 :MODAL "CAN" :RAW-TEXT "shared")
 (:VAR MV4355 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV4367 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4356 MV4366))
 (:VAR MV4356 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4366 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4360 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
471: "Can you tell me which genes are regulated by STAT3"

                    SOURCE-START
e24   TELL          1 "Can you tell me which genes are regulated by STAT3" 12
                    END-OF-SOURCE
("Can you tell me which genes are regulated by STAT3"
 (:VAR MV4383 :ISA POLAR-QUESTION :STATEMENT MV4374)
 (:VAR MV4374 :ISA TELL :AGENT MV4373 :THEME MV4381 :THEME MV4375 :MODAL "CAN")
 (:VAR MV4373 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4381 :ISA REGULATE :OBJECT MV4377 :AGENT MV4371 :MODAL "CAN" :RAW-TEXT "regulated")
 (:VAR MV4377 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4371 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4375 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
472: "Can you tell me which genes in the liver are regulated by stat3?"

                    SOURCE-START
e32   TELL          1 "Can you tell me which genes in the liver are regulated by stat3" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes in the liver are regulated by stat3?"
 (:VAR MV4400 :ISA POLAR-QUESTION :STATEMENT MV4387)
 (:VAR MV4387 :ISA TELL :AGENT MV4386 :THEME MV4397 :THEME MV4388 :MODAL "CAN")
 (:VAR MV4386 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4397 :ISA REGULATE :OBJECT MV4390 :AGENT MV4384 :MODAL "CAN" :RAW-TEXT "regulated")
 (:VAR MV4390 :ISA GENE :ORGAN MV4393 :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4393 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4384 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4388 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
473: "Can you tell me which genes stat3 regulates?"

                    SOURCE-START
e18   TELL          1 "Can you tell me which genes stat3 regulates" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes stat3 regulates?" (:VAR MV4409 :ISA POLAR-QUESTION :STATEMENT MV4404)
 (:VAR MV4404 :ISA TELL :AGENT MV4403 :THEME MV4407 :BENEFICIARY MV4405 :MODAL "CAN")
 (:VAR MV4403 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4407 :ISA GENE :PREDICATION MV4408 :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4408 :ISA REGULATE :OBJECT MV4407 :AGENT MV4401 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4401 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4405 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
474: "Does STAT3 affect the expression of c-fos?"

                    SOURCE-START
e18   AFFECT        1 "Does STAT3 affect the expression of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of c-fos?" (:VAR MV4419 :ISA POLAR-QUESTION :STATEMENT MV4417)
 (:VAR MV4417 :ISA AFFECT :AGENT MV4410 :AFFECTED-PROCESS MV4415 :RAW-TEXT "affect")
 (:VAR MV4410 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4415 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4411 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV4411 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
475: "Does STAT3 affect the expression of the c-fos gene?"

                    SOURCE-START
e23   AFFECT        1 "Does STAT3 affect the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of the c-fos gene?"
 (:VAR MV4431 :ISA POLAR-QUESTION :STATEMENT MV4429)
 (:VAR MV4429 :ISA AFFECT :AGENT MV4420 :AFFECTED-PROCESS MV4425 :RAW-TEXT "affect")
 (:VAR MV4420 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4425 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4428 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV4428 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4421 :RAW-TEXT "gene")
 (:VAR MV4421 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
476: "Does STAT3 increase the expression of the c-fos gene?"

                    SOURCE-START
e24   INCREASE      1 "Does STAT3 increase the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase the expression of the c-fos gene?"
 (:VAR MV4444 :ISA POLAR-QUESTION :STATEMENT MV4442)
 (:VAR MV4442 :ISA INCREASE :AGENT MV4432 :AFFECTED-PROCESS MV4438 :RAW-TEXT "increase")
 (:VAR MV4432 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4438 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4441 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV4441 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4433 :RAW-TEXT "gene")
 (:VAR MV4433 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
477: "Does STAT3 increase transcription of the c-fos gene?"

                    SOURCE-START
e21   INCREASE      1 "Does STAT3 increase transcription of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase transcription of the c-fos gene?"
 (:VAR MV4456 :ISA POLAR-QUESTION :STATEMENT MV4454)
 (:VAR MV4454 :ISA INCREASE :AGENT MV4445 :AFFECTED-PROCESS MV4450 :RAW-TEXT "increase")
 (:VAR MV4445 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4450 :ISA TRANSCRIBE :OBJECT MV4453 :RAW-TEXT "transcription")
 (:VAR MV4453 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4446 :RAW-TEXT "gene")
 (:VAR MV4446 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
478: "Does stat3 affect the expression of cfos?"

                    SOURCE-START
e17   AFFECT        1 "Does stat3 affect the expression of cfos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 affect the expression of cfos?" (:VAR MV4466 :ISA POLAR-QUESTION :STATEMENT MV4464)
 (:VAR MV4464 :ISA AFFECT :AGENT MV4457 :AFFECTED-PROCESS MV4461 :RAW-TEXT "affect")
 (:VAR MV4457 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4461 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4463 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV4463 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
479: "Does the mTor pathway contain SGK1?"

                    SOURCE-START
e16   CONTAIN       1 "Does the mTor pathway contain SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway contain SGK1?" (:VAR MV4476 :ISA POLAR-QUESTION :STATEMENT MV4475)
 (:VAR MV4475 :ISA CONTAIN :THEME MV4473 :PARTICIPANT MV4467)
 (:VAR MV4473 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4470 :RAW-TEXT "pathway")
 (:VAR MV4470 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME "MTOR_HUMAN")
 (:VAR MV4467 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME "SGK1_HUMAN"))

___________________
480: "Find a treatment for pancreatic cancer."

                    SOURCE-START
e12   BIO-FIND      1 "Find a treatment for pancreatic cancer" 7
                    PERIOD
                    END-OF-SOURCE
("Find a treatment for pancreatic cancer."
 (:VAR MV4479 :ISA BIO-FIND :OBJECT MV4481 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4481 :ISA TREATMENT :DISEASE MV4477 :HAS-DETERMINER "A" :RAW-TEXT "treatment")
 (:VAR MV4477 :ISA CANCER :UID "TS-0739"))

___________________
481: "Find genes in the liver regulated by stat3"

                    SOURCE-START
e18   BIO-FIND      1 "Find genes in the liver regulated by stat3" 10
                    END-OF-SOURCE
("Find genes in the liver regulated by stat3"
 (:VAR MV4486 :ISA BIO-FIND :OBJECT MV4487 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4487 :ISA GENE :PREDICATION MV4491 :ORGAN MV4490 :RAW-TEXT "genes")
 (:VAR MV4491 :ISA REGULATE :OBJECT MV4487 :AGENT MV4484 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4484 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4490 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
482: "Find genes that stat3 regulates"

                    SOURCE-START
e12   BIO-FIND      1 "Find genes that stat3 regulates" 7
                    END-OF-SOURCE
("Find genes that stat3 regulates"
 (:VAR MV4497 :ISA BIO-FIND :OBJECT MV4498 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4498 :ISA GENE :PREDICATION MV4500 :RAW-TEXT "genes")
 (:VAR MV4500 :ISA REGULATE :OBJECT MV4498 :THAT-REL T :AGENT MV4495 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV4495 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
483: "Find transcription factors shared by elk1 and srf"

                    SOURCE-START
e14   BIO-FIND      1 "Find transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Find transcription factors shared by elk1 and srf"
 (:VAR MV4504 :ISA BIO-FIND :OBJECT MV4501 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4501 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4505 :RAW-TEXT "transcription factors")
 (:VAR MV4505 :ISA SHARE :OBJECT MV4501 :PARTICIPANT MV4509 :PAST "PAST" :RAW-TEXT "shared")
 (:VAR MV4509 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4502 MV4508))
 (:VAR MV4502 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4508 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
484: "How does KRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does KRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS activate MAPK3?"
 (:VAR MV4515 :ISA BIO-ACTIVATE :MANNER MV4512 :AGENT MV4514 :OBJECT MV4511 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV4512 :ISA HOW)
 (:VAR MV4514 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV4511 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME "MK03_HUMAN"))

___________________
485: "How does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e14   REGULATE      1 "How does STAT3 regulate the c-fos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("How does STAT3 regulate the c-fos gene?"
 (:VAR MV4520 :ISA REGULATE :MANNER MV4518 :AGENT MV4516 :OBJECT MV4522 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV4518 :ISA HOW)
 (:VAR MV4516 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4522 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4517 :RAW-TEXT "gene")
 (:VAR MV4517 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
486: "How does knocking out p53 cause cancer via its effect on miRNAs?"

                    SOURCE-START
e2    HOW           1 "How " 2
e3    DO            2 "does " 3
e24   KNOCK-OUT     3 "knocking out p53 cause cancer via its effect on miRNAs" 14
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e2    WH-PRONOUN    1 "How " 2
e3    VERB+PRESENT  2 "does " 3
e24   VP            3 "knocking out p53 cause cancer via its effect on miRNAs" 14
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
487: "How does stat3 regulate apoptosis in the liver?"

                    SOURCE-START
e16   REGULATE      1 "How does stat3 regulate apoptosis in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis in the liver?"
 (:VAR MV4544 :ISA REGULATE :MANNER MV4542 :AGENT MV4541 :AFFECTED-PROCESS MV4545 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4542 :ISA HOW)
 (:VAR MV4541 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4545 :ISA APOPTOSIS :ORGAN MV4548 :RAW-TEXT "apoptosis")
 (:VAR MV4548 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
488: "How does stat3 regulate apoptosis?"

                    SOURCE-START
e8    REGULATE      1 "How does stat3 regulate apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis?"
 (:VAR MV4553 :ISA REGULATE :MANNER MV4551 :AGENT MV4550 :AFFECTED-PROCESS MV4554 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4551 :ISA HOW)
 (:VAR MV4550 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4554 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
489: "How does stat3 regulate apoptotic genes?"

                    SOURCE-START
e11   REGULATE      1 "How does stat3 regulate apoptotic genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptotic genes?"
 (:VAR MV4558 :ISA REGULATE :MANNER MV4556 :AGENT MV4555 :OBJECT MV4561 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV4556 :ISA HOW)
 (:VAR MV4555 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4561 :ISA GENE :MODIFIER MV4560 :RAW-TEXT "genes") (:VAR MV4560 :ISA APOPTOTIC))

___________________
490: "How is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e15   INVOLVE       1 "How is stat3 involved in apoptotic regulation" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotic regulation?"
 (:VAR MV4572 :ISA INVOLVE :MANNER MV4563 :THEME MV4562 :THEME MV4569 :PAST "PAST")
 (:VAR MV4563 :ISA HOW)
 (:VAR MV4562 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4569 :ISA REGULATE :AGENT MV4567 :RAW-TEXT "regulation")
 (:VAR MV4567 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
491: "How is stat3 involved in apoptotis regulation in the liver?"

                    SOURCE-START
e22   INVOLVE       1 "How is stat3 involved in apoptotis regulation in the liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotis regulation in the liver?"
 (:VAR MV4586 :ISA INVOLVE :MANNER MV4574 :THEME MV4573 :THEME MV4578 :PAST "PAST")
 (:VAR MV4574 :ISA HOW)
 (:VAR MV4573 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4578 :ISA REGULATE :OBJECT MV4582 :ORGAN MV4581 :AGENT-OR-OBJECT MV4582 :RAW-TEXT
  "regulation")
 (:VAR MV4582 :ISA BIO-ENTITY :NAME "apoptotis") (:VAR MV4581 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4582 :ISA BIO-ENTITY :NAME "apoptotis"))

___________________
492: "How is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e14   INVOLVE       1 "How is stat3 involved in regulating apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in regulating apoptosis?"
 (:VAR MV4596 :ISA INVOLVE :MANNER MV4588 :THEME MV4587 :THEME MV4592 :PAST "PAST")
 (:VAR MV4588 :ISA HOW)
 (:VAR MV4587 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4592 :ISA REGULATE :AFFECTED-PROCESS MV4593 :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT
  "regulating")
 (:VAR MV4593 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
493: "How is stat3 used to regulate apoptosis?"

                    SOURCE-START
e14   BIO-USE       1 "How is stat3 used to regulate apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 used to regulate apoptosis?"
 (:VAR MV4606 :ISA BIO-USE :MANNER MV4598 :OBJECT MV4597 :THEME MV4604 :PAST "PAST" :RAW-TEXT
  "used")
 (:VAR MV4598 :ISA HOW)
 (:VAR MV4597 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4604 :ISA REGULATE :AFFECTED-PROCESS MV4603 :RAW-TEXT "regulate")
 (:VAR MV4603 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
494: "How many genes are in the MAPK signaling pathway?"

                    SOURCE-START
e19   COPULAR-PREDICATE 1 "How many genes are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How many genes are in the MAPK signaling pathway?"
 (:VAR MV4618 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4610 :VALUE MV4617 :PREP "IN" :PREDICATE
  MV4611)
 (:VAR MV4610 :ISA GENE :HAS-DETERMINER "HOW" :QUANTIFIER MV4609 :RAW-TEXT "genes")
 (:VAR MV4609 :ISA MANY :WORD "many")
 (:VAR MV4617 :ISA GENE :CONTEXT MV4607 :HAS-DETERMINER "HOW" :QUANTIFIER MV4609 :RAW-TEXT "genes")
 (:VAR MV4607 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4614 :RAW-TEXT
  "signaling pathway")
 (:VAR MV4614 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV4609 :ISA MANY :WORD "many") (:VAR MV4611 :ISA BE :PRESENT "PRESENT"))

___________________
495: "How might a STAT3 mutation affect breast cancer?"

                    SOURCE-START
e14   AFFECT        1 "How might a STAT3 mutation affect breast cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How might a STAT3 mutation affect breast cancer?"
 (:VAR MV4627 :ISA AFFECT :MANNER MV4622 :MODAL MV4623 :AGENT MV4625 :OBJECT MV4621 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV4622 :ISA HOW) (:VAR MV4623 :ISA MIGHT)
 (:VAR MV4625 :ISA MUTATION :OBJECT MV4620 :HAS-DETERMINER "A" :AGENT-OR-OBJECT MV4620 :RAW-TEXT
  "mutation")
 (:VAR MV4620 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4620 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4621 :ISA CANCER :UID "TS-0591"))

___________________
496: "Is STAT3 a regulator for c-fos?"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator for c-fos" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator for c-fos?"
 (:VAR MV4635 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89651>
   (PREDICATE
    (#<regulator 89650>
     (THEME (#<protein "FOS_HUMAN" 86579> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
497: "Is STAT3 a regulator of c-fos"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator of c-fos" 10
                    END-OF-SOURCE
("Is STAT3 a regulator of c-fos"
 (:VAR MV4643 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89651>
   (PREDICATE
    (#<regulator 89650>
     (THEME (#<protein "FOS_HUMAN" 86579> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
498: "Is STAT3 a regulator of the c-fos gene"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene"
 (:VAR MV4653 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89655>
   (PREDICATE
    (#<regulator 89654>
     (THEME
      (#<gene 87945> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86579> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
499: "Is STAT3 a regulator of the c-fos gene?"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene?"
 (:VAR MV4663 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89655>
   (PREDICATE
    (#<regulator 89654>
     (THEME
      (#<gene 87945> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86579> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
500: "Is STAT3 a transcription factor for c-fos gene"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene"
 (:VAR MV4672 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88049>
   (PREDICATE
    (#<transcription-factor 88048>
     (CONTROLLED-GENE
      (#<gene 87944>
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86579> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "transcription factor"))))))

___________________
501: "Is STAT3 a transcription factor for c-fos"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos"
 (:VAR MV4680 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89659>
   (PREDICATE
    (#<transcription-factor 89658>
     (CONTROLLED-GENE
      (#<protein "FOS_HUMAN" 86579> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "transcription factor"))))))

___________________
502: "Is STAT3 a transcription factor for c-fos?"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos?"
 (:VAR MV4688 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89659>
   (PREDICATE
    (#<transcription-factor 89658>
     (CONTROLLED-GENE
      (#<protein "FOS_HUMAN" 86579> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "transcription factor"))))))

___________________
503: "Is STAT3 a transcription factor for the c-fos gene?"

                    SOURCE-START
e21   BE            1 "Is STAT3 a transcription factor for the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for the c-fos gene?"
 (:VAR MV4698 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89664>
   (PREDICATE
    (#<transcription-factor 89663>
     (CONTROLLED-GENE
      (#<gene 87945> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86579> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "transcription factor"))))))

___________________
504: "Is STAT3 regulated by c-fos?"

                    SOURCE-START
e12   REGULATE      1 "Is STAT3 regulated by c-fos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 regulated by c-fos?" (:VAR MV4706 :ISA POLAR-QUESTION :STATEMENT MV4705)
 (:VAR MV4705 :ISA REGULATE :AGENT MV4699 :AGENT MV4700 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4699 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4700 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
505: "Is Stat3 a transcription factor for the c-fos gene"

                    SOURCE-START
e21   BE            1 "Is Stat3 a transcription factor for the c-fos gene" 13
                    END-OF-SOURCE
("Is Stat3 a transcription factor for the c-fos gene"
 (:VAR MV4716 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89664>
   (PREDICATE
    (#<transcription-factor 89663>
     (CONTROLLED-GENE
      (#<gene 87945> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86579> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "transcription factor"))))))

___________________
506: "List genes regulated by ELK1"

                    SOURCE-START
e9    LIST          1 "List genes regulated by ELK1" 7
                    END-OF-SOURCE
("List genes regulated by ELK1" (:VAR MV4718 :ISA LIST :THEME MV4719 :PRESENT "PRESENT")
 (:VAR MV4719 :ISA GENE :PREDICATION MV4720 :RAW-TEXT "genes")
 (:VAR MV4720 :ISA REGULATE :OBJECT MV4719 :AGENT MV4717 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4717 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
507: "List genes that are regulated by ELK1"

                    SOURCE-START
e16   LIST          1 "List genes that are regulated by ELK1" 9
                    END-OF-SOURCE
("List genes that are regulated by ELK1" (:VAR MV4724 :ISA LIST :THEME MV4725 :PRESENT "PRESENT")
 (:VAR MV4725 :ISA GENE :PREDICATION MV4730 :RAW-TEXT "genes")
 (:VAR MV4730 :ISA REGULATE :OBJECT MV4725 :THAT-REL T :AGENT MV4723 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV4723 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
508: "List some genes that stat3 regulates"

                    SOURCE-START
e13   LIST          1 "List some genes that stat3 regulates" 8
                    END-OF-SOURCE
("List some genes that stat3 regulates" (:VAR MV4733 :ISA LIST :THEME MV4735 :PRESENT "PRESENT")
 (:VAR MV4735 :ISA GENE :PREDICATION MV4737 :QUANTIFIER MV4734 :RAW-TEXT "genes")
 (:VAR MV4737 :ISA REGULATE :OBJECT MV4735 :THAT-REL T :AGENT MV4732 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV4732 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4734 :ISA SOME :WORD "some"))

___________________
509: "List the genes STAT3 regulates"

                    SOURCE-START
e11   LIST          1 "List the genes STAT3 regulates" 7
                    END-OF-SOURCE
("List the genes STAT3 regulates" (:VAR MV4739 :ISA LIST :THEME MV4741 :PRESENT "PRESENT")
 (:VAR MV4741 :ISA GENE :PREDICATION MV4742 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4742 :ISA REGULATE :OBJECT MV4741 :AGENT MV4738 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4738 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
510: "List the genes that are regulated by STAT3"

                    SOURCE-START
e19   LIST          1 "List the genes that are regulated by STAT3" 10
                    END-OF-SOURCE
("List the genes that are regulated by STAT3"
 (:VAR MV4744 :ISA LIST :THEME MV4746 :PRESENT "PRESENT")
 (:VAR MV4746 :ISA GENE :PREDICATION MV4751 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4751 :ISA REGULATE :OBJECT MV4746 :THAT-REL T :AGENT MV4743 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV4743 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
511: "List the genes which STAT3 regulates"

                    SOURCE-START
e13   LIST          1 "List the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("List the genes which STAT3 regulates" (:VAR MV4754 :ISA LIST :THEME MV4756 :PRESENT "PRESENT")
 (:VAR MV4756 :ISA GENE :PREDICATION MV4758 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4758 :ISA REGULATE :OBJECT MV4756 :AGENT MV4753 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4753 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
512: "List the pahtways that involve SRF"

                    SOURCE-START
e13   LIST          1 "List the pahtways that involve SRF" 7
                    END-OF-SOURCE
("List the pahtways that involve SRF" (:VAR MV4759 :ISA LIST :THEME MV4761 :PRESENT "PRESENT")
 (:VAR MV4761 :ISA BIO-ENTITY :PREDICATION MV4763 :HAS-DETERMINER "THE" :NAME "pahtways")
 (:VAR MV4763 :ISA INVOLVE :THEME MV4761 :THAT-REL T :THEME MV4764 :PRESENT "PRESENT")
 (:VAR MV4764 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
513: "Show me genes regulated by ELK1"

                    SOURCE-START
e13   SHOW          1 "Show me genes regulated by ELK1" 8
                    END-OF-SOURCE
("Show me genes regulated by ELK1"
 (:VAR MV4766 :ISA SHOW :STATEMENT-OR-THEME MV4768 :BENEFICIARY MV4767 :PRESENT "PRESENT")
 (:VAR MV4768 :ISA GENE :PREDICATION MV4769 :RAW-TEXT "genes")
 (:VAR MV4769 :ISA REGULATE :OBJECT MV4768 :AGENT MV4765 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4765 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4767 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
514: "Show me genes that are regulated by ELK1"

                    SOURCE-START
e18   SHOW          1 "Show me genes that are regulated by ELK1" 10
                    END-OF-SOURCE
("Show me genes that are regulated by ELK1"
 (:VAR MV4773 :ISA SHOW :STATEMENT-OR-THEME MV4775 :BENEFICIARY MV4774 :PRESENT "PRESENT")
 (:VAR MV4775 :ISA GENE :PREDICATION MV4780 :RAW-TEXT "genes")
 (:VAR MV4780 :ISA REGULATE :OBJECT MV4775 :THAT-REL T :AGENT MV4772 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV4772 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4774 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
515: "Show me genes that stat3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show me genes that stat3 regulates" 8
                    END-OF-SOURCE
("Show me genes that stat3 regulates"
 (:VAR MV4783 :ISA SHOW :STATEMENT-OR-THEME MV4785 :BENEFICIARY MV4784 :PRESENT "PRESENT")
 (:VAR MV4785 :ISA GENE :PREDICATION MV4787 :RAW-TEXT "genes")
 (:VAR MV4787 :ISA REGULATE :OBJECT MV4785 :THAT-REL T :AGENT MV4782 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV4782 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4784 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
516: "Show me the pahtways that involve SRF"

                    SOURCE-START
e15   SHOW          1 "Show me the pahtways that involve SRF" 8
                    END-OF-SOURCE
("Show me the pahtways that involve SRF"
 (:VAR MV4788 :ISA SHOW :STATEMENT-OR-THEME MV4791 :BENEFICIARY MV4789 :PRESENT "PRESENT")
 (:VAR MV4791 :ISA BIO-ENTITY :PREDICATION MV4793 :HAS-DETERMINER "THE" :NAME "pahtways")
 (:VAR MV4793 :ISA INVOLVE :THEME MV4791 :THAT-REL T :THEME MV4794 :PRESENT "PRESENT")
 (:VAR MV4794 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4789 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
517: "Show me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show me what transcription factors are shared by elk1 and srf" 13
                    END-OF-SOURCE
("Show me what transcription factors are shared by elk1 and srf"
 (:VAR MV4808 :ISA SHOW :STATEMENT MV4806 :THEME MV4798 :PRESENT "PRESENT")
 (:VAR MV4806 :ISA SHARE :OBJECT MV4795 :PARTICIPANT MV4805 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV4795 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV4805 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4796 MV4804))
 (:VAR MV4796 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4804 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4798 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
518: "Show me which genes are regulated by STAT3"

                    SOURCE-START
e16   SHOW          1 "Show me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Show me which genes are regulated by STAT3"
 (:VAR MV4819 :ISA SHOW :STATEMENT MV4817 :THEME MV4811 :PRESENT "PRESENT")
 (:VAR MV4817 :ISA REGULATE :OBJECT MV4813 :AGENT MV4809 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4813 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4809 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4811 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
519: "Show the genes which STAT3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("Show the genes which STAT3 regulates"
 (:VAR MV4821 :ISA SHOW :STATEMENT-OR-THEME MV4823 :PRESENT "PRESENT")
 (:VAR MV4823 :ISA GENE :PREDICATION MV4825 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4825 :ISA REGULATE :OBJECT MV4823 :AGENT MV4820 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4820 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
520: "Show the pahtways that involve SRF"

                    SOURCE-START
e13   SHOW          1 "Show the pahtways that involve SRF" 7
                    END-OF-SOURCE
("Show the pahtways that involve SRF"
 (:VAR MV4826 :ISA SHOW :STATEMENT-OR-THEME MV4828 :PRESENT "PRESENT")
 (:VAR MV4828 :ISA BIO-ENTITY :PREDICATION MV4830 :HAS-DETERMINER "THE" :NAME "pahtways")
 (:VAR MV4830 :ISA INVOLVE :THEME MV4828 :THAT-REL T :THEME MV4831 :PRESENT "PRESENT")
 (:VAR MV4831 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
521: "Show transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show transcription factors that are shared by elk1 and srf" 12
                    END-OF-SOURCE
("Show transcription factors that are shared by elk1 and srf"
 (:VAR MV4834 :ISA SHOW :STATEMENT-OR-THEME MV4832 :PRESENT "PRESENT")
 (:VAR MV4832 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4842 :RAW-TEXT "transcription factors")
 (:VAR MV4842 :ISA SHARE :OBJECT MV4832 :THAT-REL T :PARTICIPANT MV4841 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV4841 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4833 MV4840))
 (:VAR MV4833 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4840 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
522: "Tell me the genes which are regulated by STAT3"

                    SOURCE-START
e20   TELL          1 "Tell me the genes which are regulated by STAT3" 11
                    END-OF-SOURCE
("Tell me the genes which are regulated by STAT3"
 (:VAR MV4845 :ISA TELL :THEME MV4848 :BENEFICIARY MV4846 :PRESENT "PRESENT")
 (:VAR MV4848 :ISA GENE :PREDICATION MV4855 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4855 :ISA REGULATE :OBJECT MV4848 :AGENT MV4844 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4844 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4846 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
523: "Tell me what genes are regulated by elk1 and srf"

                    SOURCE-START
e19   TELL          1 "Tell me what genes are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("Tell me what genes are regulated by elk1 and srf"
 (:VAR MV4857 :ISA TELL :THEME MV4867 :THEME MV4858 :PRESENT "PRESENT")
 (:VAR MV4867 :ISA REGULATE :OBJECT MV4860 :AGENT MV4866 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4860 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV4866 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4856 MV4865))
 (:VAR MV4856 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4865 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4858 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
524: "Tell me which genes are regulated by STAT3"

                    SOURCE-START
e16   TELL          1 "Tell me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Tell me which genes are regulated by STAT3"
 (:VAR MV4870 :ISA TELL :THEME MV4877 :THEME MV4871 :PRESENT "PRESENT")
 (:VAR MV4877 :ISA REGULATE :OBJECT MV4873 :AGENT MV4869 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4873 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4869 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4871 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
525: "What are positive regulators of cfos?"

                    SOURCE-START
e10   BE            1 "What are positive regulators of cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of cfos?"
 (:VAR MV4881 :ISA BE :SUBJECT MV4880 :PREDICATE MV4879 :PRESENT "PRESENT") (:VAR MV4880 :ISA WHAT)
 (:VAR MV4879 :ISA POSITIVE-REGULATOR :THEME MV4883 :RAW-TEXT "positive regulators")
 (:VAR MV4883 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
526: "What are some regulators of SMURF2?"

                    SOURCE-START
e12   BE            1 "What are some regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some regulators of SMURF2?"
 (:VAR MV4887 :ISA BE :SUBJECT MV4886 :PREDICATE MV4889 :PRESENT "PRESENT") (:VAR MV4886 :ISA WHAT)
 (:VAR MV4889 :ISA REGULATOR :THEME MV4885 :QUANTIFIER MV4888 :RAW-TEXT "regulators")
 (:VAR MV4885 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN")
 (:VAR MV4888 :ISA SOME :WORD "some"))

___________________
527: "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"

                    SOURCE-START
e31   BE            1 "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
 (:VAR MV4898 :ISA BE :SUBJECT MV4897 :PREDICATE MV4901 :PRESENT "PRESENT") (:VAR MV4897 :ISA WHAT)
 (:VAR MV4901 :ISA REGULATOR :THEME MV4905 :HAS-DETERMINER "THE" :PREDICATION MV4900 :RAW-TEXT
  "regulators")
 (:VAR MV4905 :ISA COLLECTION :RAW-TEXT "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :TYPE
  PROTEIN :NUMBER 6 :ITEMS (MV4892 MV4893 MV4903 MV4894 MV4895 MV4896))
 (:VAR MV4892 :ISA PROTEIN :RAW-TEXT "ABI2" :UID "UP:Q9NYB9" :NAME "ABI2_HUMAN")
 (:VAR MV4893 :ISA PROTEIN :RAW-TEXT "ABL1" :UID "UP:P00519" :NAME "ABL1_HUMAN")
 (:VAR MV4903 :ISA PROTEIN :RAW-TEXT "ACADSB" :UID "UP:P45954" :NAME "ACDSB_HUMAN")
 (:VAR MV4894 :ISA PROTEIN :RAW-TEXT "ADGRL1" :UID "UP:O94910" :NAME "AGRL1_HUMAN")
 (:VAR MV4895 :ISA PROTEIN :RAW-TEXT "ADRM1" :UID "UP:Q16186" :NAME "ADRM1_HUMAN")
 (:VAR MV4896 :ISA PROTEIN :RAW-TEXT "AGAP1" :UID "UP:Q9UPQ3" :NAME "AGAP1_HUMAN")
 (:VAR MV4900 :ISA COMMON))

___________________
528: "What are the common regulators of elk1 and srf"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srf" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srf"
 (:VAR MV4909 :ISA BE :SUBJECT MV4908 :PREDICATE MV4912 :PRESENT "PRESENT") (:VAR MV4908 :ISA WHAT)
 (:VAR MV4912 :ISA REGULATOR :THEME MV4916 :HAS-DETERMINER "THE" :PREDICATION MV4911 :RAW-TEXT
  "regulators")
 (:VAR MV4916 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4907 MV4915))
 (:VAR MV4907 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4915 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4911 :ISA COMMON))

___________________
529: "What are the common regulators of elk1 and srg"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srg" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srg"
 (:VAR MV4920 :ISA BE :SUBJECT MV4919 :PREDICATE MV4923 :PRESENT "PRESENT") (:VAR MV4919 :ISA WHAT)
 (:VAR MV4923 :ISA REGULATOR :THEME MV4927 :HAS-DETERMINER "THE" :PREDICATION MV4922 :RAW-TEXT
  "regulators")
 (:VAR MV4927 :ISA COLLECTION :RAW-TEXT "elk1 and srg" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4918 MV4926))
 (:VAR MV4918 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4926 :ISA BIO-ENTITY :NAME "srg") (:VAR MV4922 :ISA COMMON))

___________________
530: "What are the common regulators of those genes"

                    SOURCE-START
e16   BE            1 "What are the common regulators of those genes" 9
                    END-OF-SOURCE
("What are the common regulators of those genes"
 (:VAR MV4930 :ISA BE :SUBJECT MV4929 :PREDICATE MV4933 :PRESENT "PRESENT") (:VAR MV4929 :ISA WHAT)
 (:VAR MV4933 :ISA REGULATOR :THEME MV4936 :HAS-DETERMINER "THE" :PREDICATION MV4932 :RAW-TEXT
  "regulators")
 (:VAR MV4936 :ISA GENE :HAS-DETERMINER "THOSE" :RAW-TEXT "genes") (:VAR MV4932 :ISA COMMON))

___________________
531: "What are the genes regulated by STAT3?"

                    SOURCE-START
e13   REGULATE      1 "What are the genes regulated by STAT3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes regulated by STAT3?"
 (:VAR MV4943 :ISA REGULATE :OBJECT
  (#<gene 89831> (HAS-DETERMINER (#<what 86377>)) (HAS-DETERMINER (#<the 106> (WORD "the")))
   (RAW-TEXT "genes"))
  :AGENT MV4938 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4938 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
532: "What are the genes which STAT3 regulates?"

                    SOURCE-START
e15   BE            1 "What are the genes which STAT3 regulates" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes which STAT3 regulates?"
 (:VAR MV4948 :ISA BE :SUBJECT MV4947 :PREDICATE MV4950 :PRESENT "PRESENT") (:VAR MV4947 :ISA WHAT)
 (:VAR MV4950 :ISA GENE :PREDICATION MV4952 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4952 :ISA REGULATE :OBJECT MV4950 :AGENT MV4946 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4946 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
533: "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV4957 :ISA BE :SUBJECT MV4956 :PREDICATE MV4961 :PRESENT "PRESENT") (:VAR MV4956 :ISA WHAT)
 (:VAR MV4961 :ISA REGULATOR :THEME MV4966 :HAS-DETERMINER "THE" :MODIFIER MV4960 :RAW-TEXT
  "regulators")
 (:VAR MV4966 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV4963 MV4964 MV4953 MV4954 MV4955))
 (:VAR MV4963 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV4964 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4953 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4954 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV4955 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN")
 (:VAR MV4960 :ISA FREQUENT :COMPARATIVE MV4959)
 (:VAR MV4959 :ISA SUPERLATIVE-QUANTIFIER :NAME "most"))

___________________
534: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e28   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV4973 :ISA BE :SUBJECT MV4972 :PREDICATE MV4968 :PRESENT "PRESENT") (:VAR MV4972 :ISA WHAT)
 (:VAR MV4968 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4976 :HAS-DETERMINER "THE" :RAW-TEXT
  "transcription factors")
 (:VAR MV4976 :ISA REGULATE :AGENT MV4968 :THAT-REL T :OBJECT MV4980 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV4980 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV4977 MV4978 MV4969 MV4970 MV4971))
 (:VAR MV4977 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV4978 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4969 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4970 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV4971 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN"))

___________________
535: "What other genes are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other genes are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other genes are in the first pathway?"
 (:VAR MV4992 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4983 :VALUE MV4991 :PREP "IN" :PREDICATE
  MV4984)
 (:VAR MV4983 :ISA GENE :HAS-DETERMINER "WHAT" :QUANTIFIER MV4982 :RAW-TEXT "genes")
 (:VAR MV4982 :ISA OTHER :WORD "other")
 (:VAR MV4991 :ISA GENE :CONTEXT MV4988 :HAS-DETERMINER "WHAT" :QUANTIFIER MV4982 :RAW-TEXT
  "genes")
 (:VAR MV4988 :ISA PATHWAY :HAS-DETERMINER "THE" :NUMBER MV4987 :RAW-TEXT "pathway")
 (:VAR MV4987 :ISA ORDINAL :WORD "first" :NUMBER 1) (:VAR MV4982 :ISA OTHER :WORD "other")
 (:VAR MV4984 :ISA BE :PRESENT "PRESENT"))

___________________
536: "What other proteins are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other proteins are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other proteins are in the first pathway?"
 (:VAR MV5005 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4996 :VALUE MV5004 :PREP "IN" :PREDICATE
  MV4997)
 (:VAR MV4996 :ISA PROTEIN :HAS-DETERMINER "WHAT" :QUANTIFIER MV4995 :RAW-TEXT "proteins")
 (:VAR MV4995 :ISA OTHER :WORD "other")
 (:VAR MV5004 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV5001 :HAS-DETERMINER "WHAT" :QUANTIFIER MV4995
  :RAW-TEXT "proteins")
 (:VAR MV5001 :ISA PATHWAY :HAS-DETERMINER "THE" :NUMBER MV5000 :RAW-TEXT "pathway")
 (:VAR MV5000 :ISA ORDINAL :WORD "first" :NUMBER 1) (:VAR MV4995 :ISA OTHER :WORD "other")
 (:VAR MV4997 :ISA BE :PRESENT "PRESENT"))

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
539: "What proteins are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What proteins are in the first pathway" 8
                    END-OF-SOURCE
("What proteins are in the first pathway"
 (:VAR MV5025 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5016 :VALUE MV5024 :PREP "IN" :PREDICATE
  MV5017)
 (:VAR MV5016 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV5024 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV5021 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "proteins")
 (:VAR MV5021 :ISA PATHWAY :HAS-DETERMINER "THE" :NUMBER MV5020 :RAW-TEXT "pathway")
 (:VAR MV5020 :ISA ORDINAL :WORD "first" :NUMBER 1) (:VAR MV5017 :ISA BE :PRESENT "PRESENT"))

___________________
540: "What pathways involve frizzled8?"

                    SOURCE-START
e7    INVOLVE       1 "What pathways involve frizzled8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve frizzled8?"
 (:VAR MV5030 :ISA INVOLVE :THEME MV5029 :THEME MV5027 :PRESENT "PRESENT")
 (:VAR MV5029 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5027 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
541: "What genes are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What genes are in the first pathway" 8
                    END-OF-SOURCE
("What genes are in the first pathway"
 (:VAR MV5041 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5032 :VALUE MV5040 :PREP "IN" :PREDICATE
  MV5033)
 (:VAR MV5032 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5040 :ISA GENE :CONTEXT MV5037 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5037 :ISA PATHWAY :HAS-DETERMINER "THE" :NUMBER MV5036 :RAW-TEXT "pathway")
 (:VAR MV5036 :ISA ORDINAL :WORD "first" :NUMBER 1) (:VAR MV5033 :ISA BE :PRESENT "PRESENT"))

___________________
542: "What questions can you answer about microRNAs?"

                    SOURCE-START
e14   ANSWER        1 "What questions can you answer about microRNAs" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What questions can you answer about microRNAs?"
 (:VAR MV5054 :ISA ANSWER :PATIENT MV5044 :MODAL MV5046 :AGENT MV5047 :THEME MV5052 :PRESENT
  "PRESENT")
 (:VAR MV5044 :ISA BIO-QUESTION :HAS-DETERMINER "WHAT") (:VAR MV5046 :ISA CAN)
 (:VAR MV5047 :ISA INTERLOCUTOR :NAME "hearer") (:VAR MV5052 :ISA MICRO-RNA :RAW-TEXT "microRNAs"))

___________________
543: "What transcription factors regulate mothers against decapentaplegic?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate mothers against decapentaplegic" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate mothers against decapentaplegic?"
 (:VAR MV5058 :ISA REGULATE :AGENT MV5055 :OBJECT MV5056 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5055 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV5056 :ISA PROTEIN-FAMILY :RAW-TEXT "mothers against decapentaplegic" :NAME "SMAD" :COUNT 8
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
544: "Where does stat3 regulate cfos"

                    SOURCE-START
e8    REGULATE      1 "Where does stat3 regulate cfos" 7
                    END-OF-SOURCE
("Where does stat3 regulate cfos"
 (:VAR MV5062 :ISA REGULATE :LOCATION MV5060 :AGENT MV5059 :OBJECT MV5063 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5060 :ISA WHERE)
 (:VAR MV5059 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5063 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
545: "Which KEGG pathways involve ATP?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve ATP" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve ATP?"
 (:VAR MV5067 :ISA INVOLVE :THEME MV5066 :THEME MV5068 :PRESENT "PRESENT")
 (:VAR MV5066 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5065 :RAW-TEXT "pathways")
 (:VAR MV5065 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV5068 :ISA NUCLEOTIDE :RAW-TEXT "ATP" :UID "PCID:5957"))

___________________
546: "Which genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are in the MAPK signaling pathway?"
 (:VAR MV5079 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5071 :VALUE MV5078 :PREP "IN" :PREDICATE
  MV5072)
 (:VAR MV5071 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5078 :ISA GENE :CONTEXT MV5069 :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5069 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5075 :RAW-TEXT
  "signaling pathway")
 (:VAR MV5075 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV5072 :ISA BE :PRESENT "PRESENT"))

___________________
547: "Which genes are involved in the oncogenic MAPK signaling pathway?"

                    SOURCE-START
e19   INVOLVE       1 "Which genes are involved in the oncogenic MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are involved in the oncogenic MAPK signaling pathway?"
 (:VAR MV5092 :ISA INVOLVE :THEME MV5083 :CONTEXT MV5081 :PRESENT "PRESENT")
 (:VAR MV5083 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5081 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :PREDICATION MV5088 :MODIFIER MV5089
  :RAW-TEXT "signaling pathway")
 (:VAR MV5088 :ISA ONCOGENIC)
 (:VAR MV5089 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
548: "Which kinases regulate x?"

                    SOURCE-START
e6    REGULATE      1 "Which kinases regulate x" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases regulate x?"
 (:VAR MV5095 :ISA REGULATE :AGENT MV5094 :OBJECT MV5096 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5094 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5096 :ISA BIO-ENTITY :NAME "x"))

___________________
549: "Which kinases negatively regulate x?"

                    SOURCE-START
e7    DOWNREGULATE  1 "Which kinases negatively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate x?"
 (:VAR MV5097 :ISA DOWNREGULATE :AGENT MV5099 :OBJECT MV5100 :PRESENT "PRESENT" :RAW-TEXT
  "negatively regulate")
 (:VAR MV5099 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5100 :ISA BIO-ENTITY :NAME "x"))

___________________
550: "Which kinases positively regulate x?"

                    SOURCE-START
e7    UPREGULATE    1 "Which kinases positively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases positively regulate x?"
 (:VAR MV5101 :ISA UPREGULATE :AGENT MV5103 :OBJECT MV5104 :PRESENT "PRESENT" :RAW-TEXT
  "positively regulate")
 (:VAR MV5103 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5104 :ISA BIO-ENTITY :NAME "x"))

___________________
551: "Which of these are in immune pathways?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune pathways?"
 (:VAR MV5113 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5107 :VALUE MV5111 :PREP "IN" :PREDICATE
  MV5108)
 (:VAR MV5107 :ISA THESE :QUANTIFIER MV5105 :WORD "these") (:VAR MV5105 :ISA WHICH)
 (:VAR MV5111 :ISA PATHWAY :MODIFIER MV5110 :RAW-TEXT "pathways") (:VAR MV5110 :ISA IMMUNE)
 (:VAR MV5108 :ISA BE :PRESENT "PRESENT"))

___________________
552: "Which of these are in immune system pathways?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which of these are in immune system pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune system pathways?"
 (:VAR MV5123 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5118 :VALUE MV5121 :PREP "IN" :PREDICATE
  MV5119)
 (:VAR MV5118 :ISA THESE :QUANTIFIER MV5116 :WORD "these") (:VAR MV5116 :ISA WHICH)
 (:VAR MV5121 :ISA PATHWAY :NON-CELLULAR-LOCATION MV5115 :RAW-TEXT "pathways")
 (:VAR MV5115 :ISA BIO-ORGAN :UID "UBERON:0002405") (:VAR MV5119 :ISA BE :PRESENT "PRESENT"))

___________________
553: "What are the genes STAT3 regulates?"

                    SOURCE-START
e13   BE            1 "What are the genes STAT3 regulates" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes STAT3 regulates?"
 (:VAR MV5127 :ISA BE :SUBJECT MV5126 :PREDICATE MV5129 :PRESENT "PRESENT") (:VAR MV5126 :ISA WHAT)
 (:VAR MV5129 :ISA GENE :PREDICATION MV5130 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV5130 :ISA REGULATE :OBJECT MV5129 :AGENT MV5125 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5125 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
554: "Which of those are in the immune pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Which of those are in the immune pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are in the immune pathway?"
 (:VAR MV5140 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5133 :VALUE MV5138 :PREP "IN" :PREDICATE
  MV5134)
 (:VAR MV5133 :ISA THOSE :QUANTIFIER MV5131 :WORD "those") (:VAR MV5131 :ISA WHICH)
 (:VAR MV5138 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5137 :RAW-TEXT "pathway")
 (:VAR MV5137 :ISA IMMUNE) (:VAR MV5134 :ISA BE :PRESENT "PRESENT"))

___________________
555: "Which pathways involve p53?"

                    SOURCE-START
e7    INVOLVE       1 "Which pathways involve p53" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve p53?"
 (:VAR MV5145 :ISA INVOLVE :THEME MV5144 :THEME MV5142 :PRESENT "PRESENT")
 (:VAR MV5144 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV5142 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
556: "can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("can you show me the pahtways that involve SRF"
 (:VAR MV5155 :ISA POLAR-QUESTION :STATEMENT MV5148)
 (:VAR MV5148 :ISA SHOW :AGENT MV5147 :STATEMENT-OR-THEME MV5151 :BENEFICIARY MV5149 :MODAL "CAN")
 (:VAR MV5147 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5151 :ISA BIO-ENTITY :PREDICATION MV5153 :HAS-DETERMINER "THE" :NAME "pahtways")
 (:VAR MV5153 :ISA INVOLVE :THEME MV5151 :THAT-REL T :THEME MV5154 :MODAL "CAN")
 (:VAR MV5154 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5149 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
557: "Does Selumetinib inhibit MAP2K1?"

                    SOURCE-START
e9    INHIBIT       1 "Does Selumetinib inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib inhibit MAP2K1?" (:VAR MV5161 :ISA POLAR-QUESTION :STATEMENT MV5160)
 (:VAR MV5160 :ISA INHIBIT :AGENT MV5158 :OBJECT MV5156 :RAW-TEXT "inhibit")
 (:VAR MV5158 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV5156 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
558: "Let's build a model of the KRAS neighborhood."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's build a model of the KRAS neighborhood" 11
                    PERIOD
                    END-OF-SOURCE
("Let's build a model of the KRAS neighborhood."
 (:VAR MV5171 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV5163 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV5163 :ISA BUILD :ARTIFACT MV5165 :PRESENT "PRESENT")
 (:VAR MV5165 :ISA MODEL :OBJECT MV5169 :HAS-DETERMINER "A")
 (:VAR MV5169 :ISA NEIGHBORHOOD :HAS-DETERMINER "THE" :MODIFIER MV5168)
 (:VAR MV5168 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN"))

___________________
559: "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."

                    SOURCE-START
e28   KNOW          1 "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk" 15
                    PERIOD
                    END-OF-SOURCE
("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
 (:VAR MV5189 :ISA COLLECTION :TYPE KNOW :NUMBER 2 :ITEMS (MV5187 MV5188))
 (:VAR MV5187 :ISA KNOW :AGENT MV5172 :STATEMENT MV5178 :PRESENT "PRESENT")
 (:VAR MV5172 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV5178 :ISA BIO-ACTIVATE :AGENT MV5177 :OBJECT MV5179 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV5177 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV5179 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5188 :ISA COLLECTION :RAW-TEXT "Raf activates Mek and Mek activates Erk" :TYPE
  BIO-ACTIVATE :NUMBER 2 :ITEMS (MV5181 MV5185))
 (:VAR MV5181 :ISA BIO-ACTIVATE :AGENT MV5180 :OBJECT MV5182 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV5180 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5182 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5185 :ISA BIO-ACTIVATE :AGENT MV5184 :OBJECT MV5186 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV5184 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5186 :ISA PROTEIN-FAMILY :RAW-TEXT "Erk" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV5192 :ISA PHOSPHORYLATE :AGENT MV5190 :SUBSTRATE MV5191 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV5190 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV5191 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
561: "DUSP6 dephosphorylates MAPK1."

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1."
 (:VAR MV5195 :ISA DEPHOSPHORYLATE :AGENT MV5193 :SUBSTRATE MV5194 :PRESENT "PRESENT" :RAW-TEXT
  "dephosphorylates")
 (:VAR MV5193 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV5194 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
562: "Is the amount of phosphorylated MAPK1 always high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always high?"
 (:VAR MV5206 :ISA POLAR-QUESTION :STATEMENT MV5205)
 (:VAR MV5205 :ISA COPULAR-PREDICATION :ITEM MV5199 :VALUE MV5203 :PREDICATE MV5197)
 (:VAR MV5199 :ISA BIO-AMOUNT :MEASURED-ITEM MV5196 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5196 :ISA PROTEIN :PREDICATION MV5201 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5201 :ISA PHOSPHORYLATE :SUBSTRATE MV5196 :RAW-TEXT "phosphorylated")
 (:VAR MV5203 :ISA HIGH :ADVERB MV5202) (:VAR MV5202 :ISA ALWAYS) (:VAR MV5197 :ISA BE))

___________________
563: "Is the amount of phosphorylated MAPK1 always low?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always low" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always low?"
 (:VAR MV5217 :ISA POLAR-QUESTION :STATEMENT MV5216)
 (:VAR MV5216 :ISA COPULAR-PREDICATION :ITEM MV5210 :VALUE MV5214 :PREDICATE MV5208)
 (:VAR MV5210 :ISA BIO-AMOUNT :MEASURED-ITEM MV5207 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5207 :ISA PROTEIN :PREDICATION MV5212 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5212 :ISA PHOSPHORYLATE :SUBSTRATE MV5207 :RAW-TEXT "phosphorylated")
 (:VAR MV5214 :ISA LOW :ADVERB MV5213) (:VAR MV5213 :ISA ALWAYS) (:VAR MV5208 :ISA BE))

___________________
564: "Does the MAP2K1-MAPK1 complex vanish?"

                    SOURCE-START
e17   VANISH        1 "Does the MAP2K1-MAPK1 complex vanish" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the MAP2K1-MAPK1 complex vanish?" (:VAR MV5226 :ISA POLAR-QUESTION :STATEMENT MV5225)
 (:VAR MV5225 :ISA VANISH :AGENT MV5222 :RAW-TEXT "vanish")
 (:VAR MV5222 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :COMPONENT MV5218 :COMPONENT MV5224 :RAW-TEXT
  "complex")
 (:VAR MV5218 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV5224 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
565: "Does the DUSP6-MAPK1 complex vanish?"

                    SOURCE-START
e17   VANISH        1 "Does the DUSP6-MAPK1 complex vanish" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the DUSP6-MAPK1 complex vanish?" (:VAR MV5235 :ISA POLAR-QUESTION :STATEMENT MV5234)
 (:VAR MV5234 :ISA VANISH :AGENT MV5231 :RAW-TEXT "vanish")
 (:VAR MV5231 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :COMPONENT MV5227 :COMPONENT MV5233 :RAW-TEXT
  "complex")
 (:VAR MV5227 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV5233 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
566: "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e49   EVENT-RELATION  1 "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV5263 :ISA POLAR-QUESTION :STATEMENT MV5262)
 (:VAR MV5262 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV5259 :EVENT MV5255)
 (:VAR MV5259 :ISA WH-QUESTION :STATEMENT MV5256 :WH IF)
 (:VAR MV5256 :ISA INCREASE :AGENT-OR-CAUSE MV5245 :MULTIPLIER MV5254 :AFFECTED-PROCESS-OR-OBJECT
  MV5249 :RAW-TEXT "increase")
 (:VAR MV5245 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV5254 :ISA N-FOLD :NUMBER MV5253) (:VAR MV5253 :ISA NUMBER :VALUE 10)
 (:VAR MV5249 :ISA BIO-AMOUNT :MEASURED-ITEM MV5237 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5237 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV5255 :ISA VANISH :CAUSE MV5240 :RAW-TEXT "vanish")
 (:VAR MV5240 :ISA BIO-AMOUNT :MEASURED-ITEM MV5236 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5236 :ISA PROTEIN :PREDICATION MV5242 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5242 :ISA PHOSPHORYLATE :SUBSTRATE MV5236 :RAW-TEXT "phosphorylated"))

___________________
567: "Show me the evidence that kras regulates fzd8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates fzd8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras regulates fzd8."
 (:VAR MV5265 :ISA SHOW :STATEMENT-OR-THEME MV5272 :BENEFICIARY MV5266 :PRESENT "PRESENT")
 (:VAR MV5272 :ISA EVIDENCE :STATEMENT MV5271 :HAS-DETERMINER "THE")
 (:VAR MV5271 :ISA REGULATE :AGENT MV5270 :OBJECT MV5264 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5270 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV5264 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV5266 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
568: "What increases the amount of fzd8?"

                    SOURCE-START
e14   INCREASE      1 "What increases the amount of fzd8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of fzd8?"
 (:VAR MV5276 :ISA INCREASE :AGENT-OR-CAUSE MV5274 :AFFECTED-PROCESS-OR-OBJECT MV5278 :PRESENT
  "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5274 :ISA WHAT)
 (:VAR MV5278 :ISA BIO-AMOUNT :MEASURED-ITEM MV5273 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5273 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
569: "Which kinases are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signaling pathway?"
 (:VAR MV5291 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5283 :VALUE MV5290 :PREP "IN" :PREDICATE
  MV5284)
 (:VAR MV5283 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5290 :ISA KINASE :CONTEXT-OR-IN-PATHWAY MV5281 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "kinases")
 (:VAR MV5281 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5287 :RAW-TEXT
  "signaling pathway")
 (:VAR MV5287 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV5284 :ISA BE :PRESENT "PRESENT"))

___________________
570: "Does STAT3 regulate the c-fos gene in the liver?"

                    SOURCE-START
e23   REGULATE      1 "Does STAT3 regulate the c-fos gene in the liver" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in the liver?"
 (:VAR MV5304 :ISA POLAR-QUESTION :STATEMENT MV5302)
 (:VAR MV5302 :ISA REGULATE :AGENT MV5293 :OBJECT MV5298 :RAW-TEXT "regulate")
 (:VAR MV5293 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5298 :ISA GENE :ORGAN MV5301 :HAS-DETERMINER "THE" :EXPRESSES MV5294 :RAW-TEXT "gene")
 (:VAR MV5301 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV5294 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
571: "what genes are regulated by smad2?"

                    SOURCE-START
e12   REGULATE      1 "what genes are regulated by smad2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by smad2?"
 (:VAR MV5311 :ISA REGULATE :OBJECT MV5307 :AGENT MV5305 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV5307 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5305 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
572: "Which of these are regulated by smad2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by smad2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by smad2?"
 (:VAR MV5320 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV5316 :AGENT MV5313 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5316 :ISA THESE :QUANTIFIER MV5314 :WORD "these") (:VAR MV5314 :ISA WHICH)
 (:VAR MV5313 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
573: "Which of these also regulate cfos?"

                    SOURCE-START
e12   REGULATE      1 "Which of these also regulate cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these also regulate cfos?"
 (:VAR MV5328 :ISA REGULATE :AGENT-OR-CAUSE MV5325 :OBJECT MV5329 :PRESENT "PRESENT" :ADVERB MV5326
  :RAW-TEXT "regulate")
 (:VAR MV5325 :ISA THESE :QUANTIFIER MV5323 :WORD "these") (:VAR MV5323 :ISA WHICH)
 (:VAR MV5329 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV5326 :ISA ALSO))

___________________
574: "what transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors transcribe SMURF2?"
 (:VAR MV5334 :ISA TRANSCRIBE :AGENT MV5331 :OBJECT MV5332 :PRESENT "PRESENT" :RAW-TEXT
  "transcribe")
 (:VAR MV5331 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV5332 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
575: "what transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factor transcribes SMURF2?"
 (:VAR MV5338 :ISA TRANSCRIBE :AGENT MV5335 :OBJECT MV5336 :PRESENT "PRESENT" :RAW-TEXT
  "transcribes")
 (:VAR MV5335 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factor")
 (:VAR MV5336 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
576: "Which KEGG pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which KEGG pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways utilize SRF?"
 (:VAR MV5342 :ISA UTILIZE :PARTICIPANT MV5341 :OBJECT MV5343 :PRESENT "PRESENT" :RAW-TEXT
  "utilize")
 (:VAR MV5341 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5340 :RAW-TEXT "pathways")
 (:VAR MV5340 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV5343 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
577: "What transcription factors are in the calcium regulated pathways?"

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
578: "What pathways involve the immune system?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve the immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the immune system?"
 (:VAR MV5357 :ISA INVOLVE :THEME MV5356 :THEME MV5354 :PRESENT "PRESENT")
 (:VAR MV5356 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5354 :ISA BIO-ORGAN :HAS-DETERMINER "THE" :UID "UBERON:0002405"))

___________________
579: "What KEGG pathways involve ERBB2, JUN, and MAPK8?"

                    SOURCE-START
e16   INVOLVE       1 "What KEGG pathways involve ERBB2, JUN, and MAPK8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
 (:VAR MV5364 :ISA INVOLVE :THEME MV5363 :THEME MV5367 :PRESENT "PRESENT")
 (:VAR MV5363 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5362 :RAW-TEXT "pathways")
 (:VAR MV5362 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV5367 :ISA COLLECTION :RAW-TEXT "ERBB2, JUN, and MAPK8" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV5359 MV5365 MV5360))
 (:VAR MV5359 :ISA PROTEIN :RAW-TEXT "ERBB2" :UID "UP:P04626" :NAME "ERBB2_HUMAN")
 (:VAR MV5365 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV5360 :ISA PROTEIN :RAW-TEXT "MAPK8" :UID "UP:P45983" :NAME "MK08_HUMAN"))

___________________
580: "What pathways are shared by these genes?"

                    SOURCE-START
e13   SHARE         1 "What pathways are shared by these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are shared by these genes?"
 (:VAR MV5375 :ISA SHARE :OBJECT MV5369 :PARTICIPANT MV5374 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV5369 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5374 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
581: "what genes are regulated by srf?"

                    SOURCE-START
e11   REGULATE      1 "what genes are regulated by srf" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by srf?"
 (:VAR MV5383 :ISA REGULATE :OBJECT MV5378 :AGENT MV5382 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV5378 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5382 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
582: "What are common pathways for these genes?"

                    SOURCE-START
e13   BE            1 "What are common pathways for these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common pathways for these genes?"
 (:VAR MV5386 :ISA BE :SUBJECT MV5385 :PREDICATE MV5388 :PRESENT "PRESENT") (:VAR MV5385 :ISA WHAT)
 (:VAR MV5388 :ISA PATHWAY :PATHWAYCOMPONENT MV5391 :PREDICATION MV5387 :RAW-TEXT "pathways")
 (:VAR MV5391 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes") (:VAR MV5387 :ISA COMMON))

___________________
583: "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e24   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV5405 :ISA SHARE :OBJECT MV5398 :PARTICIPANT MV5403 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV5398 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5397 :RAW-TEXT "pathways")
 (:VAR MV5397 :ISA IMMUNE) (:VAR MV5403 :ISA GENE :EXPRESSES MV5404 :RAW-TEXT "genes")
 (:VAR MV5404 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV5393 MV5394 MV5395))
 (:VAR MV5393 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5394 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV5395 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN"))

___________________
584: "What MAP kinase phosphatase are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatase are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatase are regulated by ELK1?"
 (:VAR MV5414 :ISA REGULATE :OBJECT MV5410 :AGENT MV5408 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV5410 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV5407 :RAW-TEXT "phosphatase")
 (:VAR MV5407 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME "mitogen activated protein kinase"
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
 (:VAR MV5408 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
585: "What reactome pathways involve immune system?"

                    SOURCE-START
e9    INVOLVE       1 "What reactome pathways involve immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune system?"
 (:VAR MV5420 :ISA INVOLVE :THEME MV5419 :THEME MV5416 :PRESENT "PRESENT")
 (:VAR MV5419 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5418 :RAW-TEXT "pathways")
 (:VAR MV5418 :ISA BIO-ENTITY :NAME "reactome") (:VAR MV5416 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
586: "Is stat3 a kinase?"

                    SOURCE-START
e9    BE            1 "Is stat3 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 a kinase?"
 (:VAR MV5425 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88035>
   (PREDICATE (#<kinase 88034> (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "kinase"))))))

___________________
587: "Is STAT3 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is STAT3 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor?"
 (:VAR MV5430 :ISA POLAR-QUESTION :STATEMENT
  (#<be 90098>
   (PREDICATE
    (#<transcription-factor 88046> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
588: "Which of these are protein kinases?"

                    SOURCE-START
e11   BE            1 "Which of these are protein kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are protein kinases?"
 (:VAR MV5434 :ISA BE :SUBJECT MV5433 :PREDICATE MV5436 :PRESENT "PRESENT")
 (:VAR MV5433 :ISA THESE :QUANTIFIER MV5431 :WORD "these") (:VAR MV5431 :ISA WHICH)
 (:VAR MV5436 :ISA KINASE :ENZYME MV5435 :RAW-TEXT "kinases")
 (:VAR MV5435 :ISA PROTEIN :RAW-TEXT "protein"))

___________________
589: "Which of these are tyrosine kinases?"

                    SOURCE-START
e11   BE            1 "Which of these are tyrosine kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinases?"
 (:VAR MV5441 :ISA BE :SUBJECT MV5440 :PREDICATE MV5443 :PRESENT "PRESENT")
 (:VAR MV5440 :ISA THESE :QUANTIFIER MV5438 :WORD "these") (:VAR MV5438 :ISA WHICH)
 (:VAR MV5443 :ISA KINASE :AMINO-ACID MV5442 :RAW-TEXT "kinases")
 (:VAR MV5442 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

___________________
590: "Which of these are serine/threonine kinases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine kinases?"
 (:VAR MV5448 :ISA BE :SUBJECT MV5447 :PREDICATE MV5451 :PRESENT "PRESENT")
 (:VAR MV5447 :ISA THESE :QUANTIFIER MV5445 :WORD "these") (:VAR MV5445 :ISA WHICH)
 (:VAR MV5451 :ISA KINASE :AMINO-ACID MV5452 :RAW-TEXT "kinases")
 (:VAR MV5452 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID :ITEMS (MV5449 MV5450))
 (:VAR MV5449 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5450 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
591: "Which of these are phosphatases?"

                    SOURCE-START
e9    BE            1 "Which of these are phosphatases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are phosphatases?"
 (:VAR MV5457 :ISA BE :SUBJECT MV5456 :PREDICATE MV5458 :PRESENT "PRESENT")
 (:VAR MV5456 :ISA THESE :QUANTIFIER MV5454 :WORD "these") (:VAR MV5454 :ISA WHICH)
 (:VAR MV5458 :ISA PHOSPHATASE :RAW-TEXT "phosphatases"))

___________________
592: "Which of these are proteases?"

                    SOURCE-START
e9    BE            1 "Which of these are proteases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are proteases?"
 (:VAR MV5463 :ISA BE :SUBJECT MV5462 :PREDICATE MV5464 :PRESENT "PRESENT")
 (:VAR MV5462 :ISA THESE :QUANTIFIER MV5460 :WORD "these") (:VAR MV5460 :ISA WHICH)
 (:VAR MV5464 :ISA PROTEIN :RAW-TEXT "proteases" :UID "UP:P63127" :NAME "VPK9_HUMAN"))

___________________
593: "Which of these are receptors?"

                    SOURCE-START
e9    BE            1 "Which of these are receptors" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptors?"
 (:VAR MV5469 :ISA BE :SUBJECT MV5468 :PREDICATE MV5470 :PRESENT "PRESENT")
 (:VAR MV5468 :ISA THESE :QUANTIFIER MV5466 :WORD "these") (:VAR MV5466 :ISA WHICH)
 (:VAR MV5470 :ISA RECEPTOR :RAW-TEXT "receptors"))

___________________
594: "Which of these are tyrosine kinase receptors?"

                    SOURCE-START
e13   BE            1 "Which of these are tyrosine kinase receptors" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinase receptors?"
 (:VAR MV5475 :ISA BE :SUBJECT MV5474 :PREDICATE MV5478 :PRESENT "PRESENT")
 (:VAR MV5474 :ISA THESE :QUANTIFIER MV5472 :WORD "these") (:VAR MV5472 :ISA WHICH)
 (:VAR MV5478 :ISA RECEPTOR :MODIFIER MV5476 :MODIFIER MV5477 :RAW-TEXT "receptors")
 (:VAR MV5476 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine")
 (:VAR MV5477 :ISA KINASE :RAW-TEXT "kinase"))

___________________
595: "Which of these are histone demethylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone demethylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone demethylases?"
 (:VAR MV5484 :ISA BE :SUBJECT MV5483 :PREDICATE MV5480 :PRESENT "PRESENT")
 (:VAR MV5483 :ISA THESE :QUANTIFIER MV5481 :WORD "these") (:VAR MV5481 :ISA WHICH)
 (:VAR MV5480 :ISA PROTEIN-FAMILY :RAW-TEXT "histone demethylases" :NAME "histone demethylase" :UID
  "GO:0032452"))

___________________
596: "Which of these are histone methylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methylases?"
 (:VAR MV5490 :ISA BE :SUBJECT MV5489 :PREDICATE MV5486 :PRESENT "PRESENT")
 (:VAR MV5489 :ISA THESE :QUANTIFIER MV5487 :WORD "these") (:VAR MV5487 :ISA WHICH)
 (:VAR MV5486 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methylases" :NAME "histone methyltransferase"
  :UID "GO:0042054"))

___________________
597: "Which of these are histone methyltransferases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methyltransferases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methyltransferases?"
 (:VAR MV5496 :ISA BE :SUBJECT MV5495 :PREDICATE MV5492 :PRESENT "PRESENT")
 (:VAR MV5495 :ISA THESE :QUANTIFIER MV5493 :WORD "these") (:VAR MV5493 :ISA WHICH)
 (:VAR MV5492 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methyltransferases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
598: "Which of these are demethylases?"

                    SOURCE-START
e9    BE            1 "Which of these are demethylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are demethylases?"
 (:VAR MV5501 :ISA BE :SUBJECT MV5500 :PREDICATE MV5502 :PRESENT "PRESENT")
 (:VAR MV5500 :ISA THESE :QUANTIFIER MV5498 :WORD "these") (:VAR MV5498 :ISA WHICH)
 (:VAR MV5502 :ISA PROTEIN-FAMILY :RAW-TEXT "demethylases" :NAME "demethylase" :UID "GO:0032451"))

___________________
599: "Which of these are methylases?"

                    SOURCE-START
e9    BE            1 "Which of these are methylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methylases?"
 (:VAR MV5507 :ISA BE :SUBJECT MV5506 :PREDICATE MV5508 :PRESENT "PRESENT")
 (:VAR MV5506 :ISA THESE :QUANTIFIER MV5504 :WORD "these") (:VAR MV5504 :ISA WHICH)
 (:VAR MV5508 :ISA PROTEIN-FAMILY :RAW-TEXT "methylases" :NAME "methyltransferase" :UID
  "GO:0008168"))

___________________
600: "Which of these are methyltransferases?"

                    SOURCE-START
e9    BE            1 "Which of these are methyltransferases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methyltransferases?"
 (:VAR MV5513 :ISA BE :SUBJECT MV5512 :PREDICATE MV5514 :PRESENT "PRESENT")
 (:VAR MV5512 :ISA THESE :QUANTIFIER MV5510 :WORD "these") (:VAR MV5510 :ISA WHICH)
 (:VAR MV5514 :ISA PROTEIN-FAMILY :RAW-TEXT "methyltransferases" :NAME "methyltransferase" :UID
  "GO:0008168"))

___________________
601: "Which of these are steroid receptors?"

                    SOURCE-START
e11   BE            1 "Which of these are steroid receptors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are steroid receptors?"
 (:VAR MV5519 :ISA BE :SUBJECT MV5518 :PREDICATE MV5521 :PRESENT "PRESENT")
 (:VAR MV5518 :ISA THESE :QUANTIFIER MV5516 :WORD "these") (:VAR MV5516 :ISA WHICH)
 (:VAR MV5521 :ISA RECEPTOR :MODIFIER MV5520 :RAW-TEXT "receptors")
 (:VAR MV5520 :ISA MOLECULE :RAW-TEXT "steroid" :NAME "steroid" :UID "CHEBI:35341"))

___________________
602: "Which of these are receptor tyrosine kinases?"

                    SOURCE-START
e10   BE            1 "Which of these are receptor tyrosine kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptor tyrosine kinases?"
 (:VAR MV5527 :ISA BE :SUBJECT MV5526 :PREDICATE MV5523 :PRESENT "PRESENT")
 (:VAR MV5526 :ISA THESE :QUANTIFIER MV5524 :WORD "these") (:VAR MV5524 :ISA WHICH)
 (:VAR MV5523 :ISA PROTEIN-FAMILY :RAW-TEXT "receptor tyrosine kinases" :NAME
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
 (:VAR MV5533 :ISA BE :SUBJECT MV5532 :PREDICATE MV5529 :PRESENT "PRESENT")
 (:VAR MV5532 :ISA THESE :QUANTIFIER MV5530 :WORD "these") (:VAR MV5530 :ISA WHICH)
 (:VAR MV5529 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
604: "Which of these are DNA binding proteins?"

                    SOURCE-START
e12   BE            1 "Which of these are DNA binding proteins" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are DNA binding proteins?"
 (:VAR MV5539 :ISA BE :SUBJECT MV5538 :PREDICATE MV5540 :PRESENT "PRESENT")
 (:VAR MV5538 :ISA THESE :QUANTIFIER MV5536 :WORD "these") (:VAR MV5536 :ISA WHICH)
 (:VAR MV5540 :ISA PROTEIN :MODIFIER MV5535 :RAW-TEXT "proteins")
 (:VAR MV5535 :ISA DNA-BINDING :RAW-TEXT "DNA binding"))

___________________
605: "Which of these are serine/threonine phosphatases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine phosphatases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine phosphatases?"
 (:VAR MV5545 :ISA BE :SUBJECT MV5544 :PREDICATE MV5548 :PRESENT "PRESENT")
 (:VAR MV5544 :ISA THESE :QUANTIFIER MV5542 :WORD "these") (:VAR MV5542 :ISA WHICH)
 (:VAR MV5548 :ISA PHOSPHATASE :MODIFIER MV5549 :RAW-TEXT "phosphatases")
 (:VAR MV5549 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID :ITEMS (MV5546 MV5547))
 (:VAR MV5546 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5547 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
606: "Which of these are tyrosine phosphatases?"

                    SOURCE-START
e11   BE            1 "Which of these are tyrosine phosphatases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine phosphatases?"
 (:VAR MV5554 :ISA BE :SUBJECT MV5553 :PREDICATE MV5556 :PRESENT "PRESENT")
 (:VAR MV5553 :ISA THESE :QUANTIFIER MV5551 :WORD "these") (:VAR MV5551 :ISA WHICH)
 (:VAR MV5556 :ISA PHOSPHATASE :MODIFIER MV5555 :RAW-TEXT "phosphatases")
 (:VAR MV5555 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

___________________
607: "What does MEK phosphorylate?"

                    SOURCE-START
e5    PHOSPHORYLATE 1 "What does MEK phosphorylate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does MEK phosphorylate?"
 (:VAR MV5561 :ISA PHOSPHORYLATE :AMINO-ACID MV5558 :AGENT MV5560 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylate")
 (:VAR MV5558 :ISA WHAT)
 (:VAR MV5560 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
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
 (:VAR MV5570 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5564 :ORGAN MV5569 :PRESENT "PRESENT" :ADVERB
  MV5566 :RAW-TEXT "expressed")
 (:VAR MV5564 :ISA THESE :QUANTIFIER MV5562 :WORD "these") (:VAR MV5562 :ISA WHICH)
 (:VAR MV5569 :ISA LIVER) (:VAR MV5566 :ISA EXCLUSIVELY))

___________________
609: "What regulates frizzled8?"

                    SOURCE-START
e5    REGULATE      1 "What regulates frizzled8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates frizzled8?"
 (:VAR MV5575 :ISA REGULATE :AGENT-OR-CAUSE MV5574 :OBJECT MV5573 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV5574 :ISA WHAT)
 (:VAR MV5573 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
610: "What increases the amount of myc?"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of myc?"
 (:VAR MV5578 :ISA INCREASE :AGENT-OR-CAUSE MV5576 :AFFECTED-PROCESS-OR-OBJECT MV5580 :PRESENT
  "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5576 :ISA WHAT)
 (:VAR MV5580 :ISA BIO-AMOUNT :MEASURED-ITEM MV5582 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5582 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
611: "What upregulates myc?"

                    SOURCE-START
e4    UPREGULATE    1 "What upregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates myc?"
 (:VAR MV5585 :ISA UPREGULATE :AGENT-OR-CAUSE MV5584 :OBJECT MV5586 :PRESENT "PRESENT" :RAW-TEXT
  "upregulates")
 (:VAR MV5584 :ISA WHAT)
 (:VAR MV5586 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
612: "What downregulates myc?"

                    SOURCE-START
e4    DOWNREGULATE  1 "What downregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates myc?"
 (:VAR MV5588 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV5587 :OBJECT MV5589 :PRESENT "PRESENT" :RAW-TEXT
  "downregulates")
 (:VAR MV5587 :ISA WHAT)
 (:VAR MV5589 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
613: "What decreases the amount of GFAP?"

                    SOURCE-START
e12   DECREASE      1 "What decreases the amount of GFAP" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What decreases the amount of GFAP?"
 (:VAR MV5591 :ISA DECREASE :AGENT-OR-CAUSE MV5590 :AFFECTED-PROCESS-OR-OBJECT MV5593 :PRESENT
  "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5590 :ISA WHAT)
 (:VAR MV5593 :ISA BIO-AMOUNT :MEASURED-ITEM MV5595 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5595 :ISA PROTEIN :RAW-TEXT "GFAP" :UID "UP:P14136" :NAME "GFAP_HUMAN"))

___________________
614: "What regulates GLUL?"

                    SOURCE-START
e4    REGULATE      1 "What regulates GLUL" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL?"
 (:VAR MV5598 :ISA REGULATE :AGENT-OR-CAUSE MV5597 :OBJECT MV5599 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV5597 :ISA WHAT)
 (:VAR MV5599 :ISA PROTEIN :RAW-TEXT "GLUL" :UID "UP:P15104" :NAME "GLNA_HUMAN"))

___________________
615: "What regulates GLUL from the literature?"

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
616: "What regulates GLUL from the GEO RNAi database?"

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
617: "Which kinases regulate the cfos gene?"

                    SOURCE-START
e11   REGULATE      1 "Which kinases regulate the cfos gene" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases regulate the cfos gene?"
 (:VAR MV5618 :ISA REGULATE :AGENT MV5617 :OBJECT MV5621 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5617 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5621 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5620 :RAW-TEXT "gene")
 (:VAR MV5620 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
618: "Which kinases negatively regulate the cfos gene?"

                    SOURCE-START
e12   DOWNREGULATE  1 "Which kinases negatively regulate the cfos gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate the cfos gene?"
 (:VAR MV5622 :ISA DOWNREGULATE :AGENT MV5624 :OBJECT MV5627 :PRESENT "PRESENT" :RAW-TEXT
  "negatively regulate")
 (:VAR MV5624 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5627 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5626 :RAW-TEXT "gene")
 (:VAR MV5626 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
619: "What are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "What are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of the cfos gene?"
 (:VAR MV5630 :ISA BE :SUBJECT MV5629 :PREDICATE MV5628 :PRESENT "PRESENT") (:VAR MV5629 :ISA WHAT)
 (:VAR MV5628 :ISA POSITIVE-REGULATOR :THEME MV5634 :RAW-TEXT "positive regulators")
 (:VAR MV5634 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5633 :RAW-TEXT "gene")
 (:VAR MV5633 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
620: "What transcribes ZEB1?"

                    SOURCE-START
e5    TRANSCRIBE    1 "What transcribes ZEB1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcribes ZEB1?"
 (:VAR MV5638 :ISA TRANSCRIBE :AGENT-OR-CAUSE MV5637 :OBJECT MV5636 :PRESENT "PRESENT" :RAW-TEXT
  "transcribes")
 (:VAR MV5637 :ISA WHAT)
 (:VAR MV5636 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME "ZEB1_HUMAN"))

___________________
621: "Show me the evidence that IL6 increases the amount of SOCS1."

                    SOURCE-START
e27   SHOW          1 "Show me the evidence that IL6 increases the amount of SOCS1" 14
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that IL6 increases the amount of SOCS1."
 (:VAR MV5641 :ISA SHOW :STATEMENT-OR-THEME MV5652 :BENEFICIARY MV5642 :PRESENT "PRESENT")
 (:VAR MV5652 :ISA EVIDENCE :STATEMENT MV5647 :HAS-DETERMINER "THE")
 (:VAR MV5647 :ISA INCREASE :AGENT MV5639 :AFFECTED-PROCESS-OR-OBJECT MV5649 :PRESENT "PRESENT"
  :RAW-TEXT "increases")
 (:VAR MV5639 :ISA PROTEIN :RAW-TEXT "IL6" :UID "UP:P05231" :NAME "IL6_HUMAN")
 (:VAR MV5649 :ISA BIO-AMOUNT :MEASURED-ITEM MV5640 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5640 :ISA PROTEIN :RAW-TEXT "SOCS1" :UID "UP:O15524" :NAME "SOCS1_HUMAN")
 (:VAR MV5642 :ISA INTERLOCUTOR :NAME "speaker"))

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
 (:VAR MV5667 :ISA BE :SUBJECT MV5666 :PREDICATE MV5673 :PRESENT "PRESENT") (:VAR MV5666 :ISA WHAT)
 (:VAR MV5673 :ISA EVIDENCE :STATEMENT MV5672 :HAS-DETERMINER "THE")
 (:VAR MV5672 :ISA REGULATE :AGENT MV5671 :OBJECT MV5665 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5671 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV5665 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
624: "What is the evidence that SRF binds the cfos gene?"

                    SOURCE-START
e21   BE            1 "What is the evidence that SRF binds the cfos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that SRF binds the cfos gene?"
 (:VAR MV5675 :ISA BE :SUBJECT MV5674 :PREDICATE MV5684 :PRESENT "PRESENT") (:VAR MV5674 :ISA WHAT)
 (:VAR MV5684 :ISA EVIDENCE :STATEMENT MV5680 :HAS-DETERMINER "THE")
 (:VAR MV5680 :ISA BINDING :BINDER MV5679 :DIRECT-BINDEE MV5683 :PRESENT "PRESENT" :RAW-TEXT
  "binds")
 (:VAR MV5679 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5683 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5682 :RAW-TEXT "gene")
 (:VAR MV5682 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
625: "what genes are exclusively expressed in liver?"

                    SOURCE-START
e13   GENE-TRANSCRIPT-EXPRESS 1 "what genes are exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are exclusively expressed in liver?"
 (:VAR MV5692 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5686 :ORGAN MV5691 :PRESENT "PRESENT" :ADVERB
  MV5688 :RAW-TEXT "expressed")
 (:VAR MV5686 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes") (:VAR MV5691 :ISA LIVER)
 (:VAR MV5688 :ISA EXCLUSIVELY))

___________________
626: "Is stat3 expressed in liver?"

                    SOURCE-START
e9    GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in liver" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in liver?"
 (:VAR MV5700 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV5698 :PAST "PAST" :RAW-TEXT "expressed")
 (:VAR MV5698 :ISA LIVER))

___________________
627: "Is stat3 exclusively expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 exclusively expressed in liver?" (:VAR MV5709 :ISA POLAR-QUESTION :STATEMENT MV5707)
 (:VAR MV5707 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5701 :ORGAN MV5706 :ADVERB MV5703 :RAW-TEXT
  "expressed")
 (:VAR MV5701 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5706 :ISA LIVER) (:VAR MV5703 :ISA EXCLUSIVELY))

___________________
628: "Let's build a model."

                    SOURCE-START
e8    EXPLICIT-SUGGESTION 1 "Let's build a model" 7
                    PERIOD
                    END-OF-SOURCE
("Let's build a model."
 (:VAR MV5714 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV5711 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV5711 :ISA BUILD :ARTIFACT MV5713 :PRESENT "PRESENT")
 (:VAR MV5713 :ISA MODEL :HAS-DETERMINER "A"))

___________________
629: "What are the targets of NG25?"

                    SOURCE-START
e15   BE            1 "What are the targets " 5
e13   OF            5 "of NG25" 8
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e15   S             1 "What are the targets " 5
e13   PP            5 "of NG25" 8
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
630: "How does MAP4K2 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP4K2 affect CXCL8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP4K2 affect CXCL8?"
 (:VAR MV5729 :ISA AFFECT :MANNER MV5727 :AGENT MV5725 :OBJECT MV5726 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV5727 :ISA HOW)
 (:VAR MV5725 :ISA PROTEIN :RAW-TEXT "MAP4K2" :UID "UP:Q12851" :NAME "M4K2_HUMAN")
 (:VAR MV5726 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
631: "How does ERK affect CXCL8?"

                    SOURCE-START
e8    AFFECT        1 "How does ERK affect CXCL8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does ERK affect CXCL8?"
 (:VAR MV5734 :ISA AFFECT :MANNER MV5731 :AGENT MV5733 :OBJECT MV5730 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV5731 :ISA HOW)
 (:VAR MV5733 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5730 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
632: "What are the common upstream regulators of CXCL8 and CXCL10?"

                    SOURCE-START
e22   BE            1 "What are the common upstream regulators of CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of CXCL8 and CXCL10?"
 (:VAR MV5738 :ISA BE :SUBJECT MV5737 :PREDICATE MV5743 :PRESENT "PRESENT") (:VAR MV5737 :ISA WHAT)
 (:VAR MV5743 :ISA REGULATOR :THEME MV5746 :HAS-DETERMINER "THE" :PREDICATION MV5740 :CONTEXT
  MV5741 :RAW-TEXT "regulators")
 (:VAR MV5746 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV5735 MV5736))
 (:VAR MV5735 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5736 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN")
 (:VAR MV5740 :ISA COMMON) (:VAR MV5741 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
633: "What are the paths between MAP3K7 and CXCL8?"

                    SOURCE-START
e16   BE            1 "What are the paths between MAP3K7 and CXCL8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between MAP3K7 and CXCL8?"
 (:VAR MV5751 :ISA BE :SUBJECT MV5750 :PREDICATE MV5753 :PRESENT "PRESENT") (:VAR MV5750 :ISA WHAT)
 (:VAR MV5753 :ISA PATH :ENDPOINTS MV5756 :HAS-DETERMINER "THE")
 (:VAR MV5756 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV5748 MV5749))
 (:VAR MV5748 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV5749 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
634: "Does MAP3K7 affect IKK?"

                    SOURCE-START
e9    AFFECT        1 "Does MAP3K7 affect IKK" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP3K7 affect IKK?" (:VAR MV5763 :ISA POLAR-QUESTION :STATEMENT MV5762)
 (:VAR MV5762 :ISA AFFECT :AGENT MV5758 :OBJECT MV5761 :RAW-TEXT "affect")
 (:VAR MV5758 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV5761 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV5765 :ISA REGULATE :AGENT MV5764 :OBJECT MV5766 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5764 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV5766 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV5768 :ISA UPREGULATE :AGENT MV5767 :OBJECT MV5769 :PRESENT "PRESENT" :RAW-TEXT
  "positively regulates")
 (:VAR MV5767 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV5769 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV5770 :ISA UPREGULATE :AGENT MV5772 :OBJECT MV5771 :PRESENT "PRESENT" :RAW-TEXT
  "positively regulates")
 (:VAR MV5772 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5771 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
638: "Does NFkappaB regulate the CXCL8 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does NFkappaB regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate the CXCL8 gene?" (:VAR MV5782 :ISA POLAR-QUESTION :STATEMENT MV5781)
 (:VAR MV5781 :ISA REGULATE :AGENT MV5776 :OBJECT MV5780 :RAW-TEXT "regulate")
 (:VAR MV5776 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5780 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5774 :RAW-TEXT "gene")
 (:VAR MV5774 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
639: "Show me the evidence that NFkappaB regulates CXCL8"

                    SOURCE-START
e18   SHOW          1 "Show me the evidence that NFkappaB regulates CXCL8" 10
                    END-OF-SOURCE
("Show me the evidence that NFkappaB regulates CXCL8"
 (:VAR MV5784 :ISA SHOW :STATEMENT-OR-THEME MV5792 :BENEFICIARY MV5785 :PRESENT "PRESENT")
 (:VAR MV5792 :ISA EVIDENCE :STATEMENT MV5791 :HAS-DETERMINER "THE")
 (:VAR MV5791 :ISA REGULATE :AGENT MV5789 :OBJECT MV5783 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5789 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5783 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5785 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
640: "Does ERK regulate the CXCL8 gene?"

                    SOURCE-START
e14   REGULATE      1 "Does ERK regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the CXCL8 gene?" (:VAR MV5800 :ISA POLAR-QUESTION :STATEMENT MV5799)
 (:VAR MV5799 :ISA REGULATE :AGENT MV5795 :OBJECT MV5798 :RAW-TEXT "regulate")
 (:VAR MV5795 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5798 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5793 :RAW-TEXT "gene")
 (:VAR MV5793 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
641: "ERK decreases the amount of CXCL8"

                    SOURCE-START
e13   DECREASE      1 "ERK decreases the amount of CXCL8" 8
                    END-OF-SOURCE
("ERK decreases the amount of CXCL8"
 (:VAR MV5803 :ISA DECREASE :AGENT MV5802 :AFFECTED-PROCESS-OR-OBJECT MV5805 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV5802 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5805 :ISA BIO-AMOUNT :MEASURED-ITEM MV5801 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5801 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
642: "Does TNG regulate ERK?"

                    SOURCE-START
e8    REGULATE      1 "Does TNG regulate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNG regulate ERK?" (:VAR MV5813 :ISA POLAR-QUESTION :STATEMENT MV5812)
 (:VAR MV5812 :ISA REGULATE :AGENT MV5811 :OBJECT MV5810 :RAW-TEXT "regulate")
 (:VAR MV5811 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV5810 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
("Does TNF regulate the ERK gene?" (:VAR MV5821 :ISA POLAR-QUESTION :STATEMENT MV5820)
 (:VAR MV5820 :ISA REGULATE :AGENT MV5815 :OBJECT MV5819 :RAW-TEXT "regulate")
 (:VAR MV5815 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5819 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5818 :RAW-TEXT "gene")
 (:VAR MV5818 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV5823 :ISA BE :SUBJECT MV5822 :PREDICATE MV5825 :PRESENT "PRESENT") (:VAR MV5822 :ISA WHAT)
 (:VAR MV5825 :ISA PATHWAY :PATHWAYCOMPONENT MV5830 :HAS-DETERMINER "THE" :RAW-TEXT "pathways")
 (:VAR MV5830 :ISA COLLECTION :RAW-TEXT "TNG and ERK" :TYPE PROTEIN-FAMILY :NUMBER 2 :ITEMS
  (MV5827 MV5829))
 (:VAR MV5827 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV5829 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV5833 :ISA BE :SUBJECT MV5832 :PREDICATE MV5835 :PRESENT "PRESENT") (:VAR MV5832 :ISA WHAT)
 (:VAR MV5835 :ISA PATHWAY :PATHWAYCOMPONENT MV5840 :HAS-DETERMINER "THE" :RAW-TEXT "pathways")
 (:VAR MV5840 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV5837 MV5839))
 (:VAR MV5837 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5839 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
("Does NFkappaB regulate ERK?" (:VAR MV5848 :ISA POLAR-QUESTION :STATEMENT MV5847)
 (:VAR MV5847 :ISA REGULATE :AGENT MV5843 :OBJECT MV5846 :RAW-TEXT "regulate")
 (:VAR MV5843 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5846 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
("Does NFkappaB regulate the ERK gene?" (:VAR MV5857 :ISA POLAR-QUESTION :STATEMENT MV5856)
 (:VAR MV5856 :ISA REGULATE :AGENT MV5850 :OBJECT MV5855 :RAW-TEXT "regulate")
 (:VAR MV5850 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5855 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5854 :RAW-TEXT "gene")
 (:VAR MV5854 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV5870 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5859 :VALUE MV5869 :PREP "BETWEEN" :PREDICATE
  MV5860)
 (:VAR MV5859 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5869 :ISA PATHWAY :PATHWAYCOMPONENT MV5866 :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5866 :ISA COLLECTION :RAW-TEXT "NFkappaB and ERK" :TYPE PROTEIN-FAMILY :NUMBER 2 :ITEMS
  (MV5863 MV5865))
 (:VAR MV5863 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5865 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5860 :ISA EXIST :PRESENT "PRESENT"))

___________________
649: "How does NFkappaB affect ERK?"

                    SOURCE-START
e8    AFFECT        1 "How does NFkappaB affect ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does NFkappaB affect ERK?"
 (:VAR MV5876 :ISA AFFECT :MANNER MV5872 :AGENT MV5874 :OBJECT MV5877 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV5872 :ISA HOW)
 (:VAR MV5874 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5877 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV5879 :ISA BIO-ACTIVATE :AGENT MV5878 :OBJECT MV5880 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV5878 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV5880 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV5882 :ISA BIO-ACTIVATE :AGENT MV5881 :OBJECT MV5883 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV5881 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199")
 (:VAR MV5883 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN"))

___________________
652: "What are the paths between TNF and ERK?"

                    SOURCE-START
e14   BE            1 "What are the paths between TNF and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and ERK?"
 (:VAR MV5885 :ISA BE :SUBJECT MV5884 :PREDICATE MV5887 :PRESENT "PRESENT") (:VAR MV5884 :ISA WHAT)
 (:VAR MV5887 :ISA PATH :ENDPOINTS MV5892 :HAS-DETERMINER "THE")
 (:VAR MV5892 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV5889 MV5891))
 (:VAR MV5889 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5891 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
("Does TNF regulate ERK?" (:VAR MV5899 :ISA POLAR-QUESTION :STATEMENT MV5898)
 (:VAR MV5898 :ISA REGULATE :AGENT MV5895 :OBJECT MV5897 :RAW-TEXT "regulate")
 (:VAR MV5895 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5897 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV5904 :ISA AFFECT :MANNER MV5902 :AGENT MV5900 :OBJECT MV5901 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV5902 :ISA HOW)
 (:VAR MV5900 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV5901 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
655: "TNF activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "TNF activates ERK" 4
                    END-OF-SOURCE
("TNF activates ERK"
 (:VAR MV5906 :ISA BIO-ACTIVATE :AGENT MV5905 :OBJECT MV5907 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV5905 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5907 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV5911 :ISA DECREASE :AGENT MV5910 :AFFECTED-PROCESS-OR-OBJECT MV5913 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV5910 :ISA PROTEIN-FAMILY :PREDICATION MV5909 :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5909 :ISA ACTIVE)
 (:VAR MV5913 :ISA BIO-AMOUNT :MEASURED-ITEM MV5908 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5908 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
657: "What are the common upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e19   BE            1 "What are the common upstreams of CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of CXCL8 and CXCL10?"
 (:VAR MV5919 :ISA BE :SUBJECT MV5918 :PREDICATE MV5922 :PRESENT "PRESENT") (:VAR MV5918 :ISA WHAT)
 (:VAR MV5922 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV5925 :HAS-DETERMINER "THE" :PREDICATION
  MV5921 :RAW-TEXT "upstreams")
 (:VAR MV5925 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV5916 MV5917))
 (:VAR MV5916 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5917 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN")
 (:VAR MV5921 :ISA COMMON))

___________________
658: "How does CXCL8 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does CXCL8 affect CXCL8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does CXCL8 affect CXCL8?"
 (:VAR MV5931 :ISA AFFECT :MANNER MV5929 :AGENT MV5927 :OBJECT MV5928 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV5929 :ISA HOW)
 (:VAR MV5927 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5928 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
659: "Does CXCL8 regulate CXCL10?"

                    SOURCE-START
e10   REGULATE      1 "Does CXCL8 regulate CXCL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate CXCL10?" (:VAR MV5937 :ISA POLAR-QUESTION :STATEMENT MV5936)
 (:VAR MV5936 :ISA REGULATE :AGENT MV5932 :OBJECT MV5933 :RAW-TEXT "regulate")
 (:VAR MV5932 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5933 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
660: "Does CXCL8 regulate the CXCL10 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does CXCL8 regulate the CXCL10 gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate the CXCL10 gene?" (:VAR MV5945 :ISA POLAR-QUESTION :STATEMENT MV5944)
 (:VAR MV5944 :ISA REGULATE :AGENT MV5938 :OBJECT MV5943 :RAW-TEXT "regulate")
 (:VAR MV5938 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5943 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5939 :RAW-TEXT "gene")
 (:VAR MV5939 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
661: "How does MAP3k7 affect CXCL10?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP3k7 affect CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP3k7 affect CXCL10?"
 (:VAR MV5950 :ISA AFFECT :MANNER MV5948 :AGENT MV5946 :OBJECT MV5947 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV5948 :ISA HOW)
 (:VAR MV5946 :ISA PROTEIN :RAW-TEXT "MAP3k7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV5947 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
662: "What are the paths between TNF and CXCL10?"

                    SOURCE-START
e15   BE            1 "What are the paths between TNF and CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and CXCL10?"
 (:VAR MV5953 :ISA BE :SUBJECT MV5952 :PREDICATE MV5955 :PRESENT "PRESENT") (:VAR MV5952 :ISA WHAT)
 (:VAR MV5955 :ISA PATH :ENDPOINTS MV5959 :HAS-DETERMINER "THE")
 (:VAR MV5959 :ISA COLLECTION :RAW-TEXT "TNF and CXCL10" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV5957 MV5951))
 (:VAR MV5957 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5951 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
663: "Does ERK regulate the expression of CXCL10?"

                    SOURCE-START
e17   REGULATE      1 "Does ERK regulate the expression of CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the expression of CXCL10?" (:VAR MV5970 :ISA POLAR-QUESTION :STATEMENT MV5968)
 (:VAR MV5968 :ISA REGULATE :AGENT MV5963 :AFFECTED-PROCESS MV5966 :RAW-TEXT "regulate")
 (:VAR MV5963 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5966 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5961 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV5961 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
664: "active ERK decreases the expression of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the expression of CXCL10" 9
                    END-OF-SOURCE
("active ERK decreases the expression of CXCL10"
 (:VAR MV5974 :ISA DECREASE :AGENT MV5973 :AFFECTED-PROCESS MV5976 :PRESENT "PRESENT" :RAW-TEXT
  "decreases")
 (:VAR MV5973 :ISA PROTEIN-FAMILY :PREDICATION MV5972 :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5972 :ISA ACTIVE)
 (:VAR MV5976 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5971 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV5971 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
665: "active ERK decreases the amount of CXCL8"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the amount of CXCL8" 9
                    END-OF-SOURCE
("active ERK decreases the amount of CXCL8"
 (:VAR MV5982 :ISA DECREASE :AGENT MV5981 :AFFECTED-PROCESS-OR-OBJECT MV5984 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV5981 :ISA PROTEIN-FAMILY :PREDICATION MV5980 :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5980 :ISA ACTIVE)
 (:VAR MV5984 :ISA BIO-AMOUNT :MEASURED-ITEM MV5979 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5979 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
666: "Active ERK decreases the amount of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "Active ERK decreases the amount of CXCL10" 9
                    END-OF-SOURCE
("Active ERK decreases the amount of CXCL10"
 (:VAR MV5990 :ISA DECREASE :AGENT MV5989 :AFFECTED-PROCESS-OR-OBJECT MV5992 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV5989 :ISA PROTEIN-FAMILY :PREDICATION MV5988 :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5988 :ISA ACTIVE)
 (:VAR MV5992 :ISA BIO-AMOUNT :MEASURED-ITEM MV5987 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5987 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
667: "NG25 inhibits the activity of MAP3K7"

                    SOURCE-START
e14   INHIBIT       1 "NG25 inhibits the activity of MAP3K7" 11
                    END-OF-SOURCE
("NG25 inhibits the activity of MAP3K7"
 (:VAR MV5997 :ISA INHIBIT :AGENT MV5995 :AFFECTED-PROCESS MV5999 :PRESENT "PRESENT" :RAW-TEXT
  "inhibits")
 (:VAR MV5995 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV5999 :ISA BIO-ACTIVITY :PARTICIPANT MV5996 :HAS-DETERMINER "THE" :RAW-TEXT "activity")
 (:VAR MV5996 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN"))

___________________
668: "Does NG25 decrease the CXCL8 in the model?"

                    SOURCE-START
e22   DECREASE      1 "Does NG25 decrease the CXCL8 in the model" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease the CXCL8 in the model?" (:VAR MV6013 :ISA POLAR-QUESTION :STATEMENT MV6011)
 (:VAR MV6011 :ISA DECREASE :AGENT MV6002 :OBJECT MV6003 :RAW-TEXT "decrease")
 (:VAR MV6002 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV6003 :ISA PROTEIN :INFO-CONTEXT MV6010 :HAS-DETERMINER "THE" :RAW-TEXT "CXCL8" :UID
  "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV6010 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
669: "Does NG25 decrease CXCL10 in the model?"

                    SOURCE-START
e19   DECREASE      1 "Does NG25 decrease CXCL10 in the model" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease CXCL10 in the model?" (:VAR MV6024 :ISA POLAR-QUESTION :STATEMENT MV6022)
 (:VAR MV6022 :ISA DECREASE :AGENT MV6014 :OBJECT MV6015 :RAW-TEXT "decrease")
 (:VAR MV6014 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV6015 :ISA PROTEIN :INFO-CONTEXT MV6021 :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV6021 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
670: "TNF activates NFkappaB"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "TNF activates NFkappaB" 4
                    END-OF-SOURCE
("TNF activates NFkappaB"
 (:VAR MV6026 :ISA BIO-ACTIVATE :AGENT MV6025 :OBJECT MV6027 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV6025 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV6027 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB"))

___________________
671: "I want to find out how tofacitinib decreases IL2"

                    SOURCE-START
e22   WANT          1 "I want to find out how tofacitinib decreases IL2" 11
                    END-OF-SOURCE
("I want to find out how tofacitinib decreases IL2"
 (:VAR MV6033 :ISA WANT :AGENT MV6030 :THEME MV6044 :PRESENT "PRESENT")
 (:VAR MV6030 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6044 :ISA FIND-OUT :AGENT MV6030 :STATEMENT MV6041)
 (:VAR MV6030 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6041 :ISA WH-QUESTION :STATEMENT MV6040 :VAR NIL :WH HOW)
 (:VAR MV6040 :ISA DECREASE :AGENT MV6039 :OBJECT MV6029 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV6039 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tofacitinib")
 (:VAR MV6029 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
672: "I want to find out how Selumetinib decreases FOS in BT20 cells"

                    SOURCE-START
e31   WANT          1 "I want to find out how Selumetinib decreases FOS in BT20 cells" 14
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in BT20 cells"
 (:VAR MV6048 :ISA WANT :AGENT MV6045 :THEME MV6067 :PRESENT "PRESENT")
 (:VAR MV6045 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6067 :ISA FIND-OUT :AGENT MV6045 :STATEMENT MV6064)
 (:VAR MV6045 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6064 :ISA WH-QUESTION :STATEMENT MV6055 :VAR NIL :WH HOW)
 (:VAR MV6055 :ISA DECREASE :AGENT MV6054 :OBJECT MV6056 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV6054 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV6056 :ISA PROTEIN :CELL-TYPE MV6061 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV6061 :ISA CELL-TYPE :MODIFIER MV6062) (:VAR MV6062 :ISA BIO-ENTITY :NAME "BT20"))

___________________
673: "I want to find out how ERBB3 activates JUN in SKBR3 cells"

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells"
 (:VAR MV6073 :ISA WANT :AGENT MV6070 :THEME MV6087 :PRESENT "PRESENT")
 (:VAR MV6070 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6087 :ISA FIND-OUT :AGENT MV6070 :STATEMENT MV6084)
 (:VAR MV6070 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6084 :ISA WH-QUESTION :STATEMENT MV6079 :VAR NIL :WH HOW)
 (:VAR MV6079 :ISA BIO-ACTIVATE :AGENT MV6068 :OBJECT MV6080 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV6068 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME "ERBB3_HUMAN")
 (:VAR MV6080 :ISA PROTEIN :CELL-TYPE MV6082 :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV6082 :ISA CELL-TYPE :CELL-LINE MV6069)
 (:VAR MV6069 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
674: "Does MEK phosphorylate ERK?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "Does MEK phosphorylate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MEK phosphorylate ERK?" (:VAR MV6093 :ISA POLAR-QUESTION :STATEMENT MV6092)
 (:VAR MV6092 :ISA PHOSPHORYLATE :AGENT MV6089 :SUBSTRATE MV6091 :RAW-TEXT "phosphorylate")
 (:VAR MV6089 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6091 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
("Does STAT3 inhibit the c-fos gene?" (:VAR MV6101 :ISA POLAR-QUESTION :STATEMENT MV6100)
 (:VAR MV6100 :ISA INHIBIT :AGENT MV6094 :OBJECT MV6099 :RAW-TEXT "inhibit")
 (:VAR MV6094 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV6099 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6095 :RAW-TEXT "gene")
 (:VAR MV6095 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
676: "Does STAT3 stimulate the c-fos gene?"

                    SOURCE-START
e15   STIMULATE     1 "Does STAT3 stimulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 stimulate the c-fos gene?" (:VAR MV6109 :ISA POLAR-QUESTION :STATEMENT MV6108)
 (:VAR MV6108 :ISA STIMULATE :AGENT MV6102 :OBJECT MV6107 :RAW-TEXT "stimulate")
 (:VAR MV6102 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV6107 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6103 :RAW-TEXT "gene")
 (:VAR MV6103 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
677: "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."

                    SOURCE-START
e33   WANT          1 "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells" 16
                    PERIOD
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
 (:VAR MV6113 :ISA WANT :AGENT MV6110 :THEME MV6131 :PRESENT "PRESENT")
 (:VAR MV6110 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6131 :ISA FIND-OUT :AGENT MV6110 :STATEMENT MV6128)
 (:VAR MV6110 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6128 :ISA WH-QUESTION :STATEMENT MV6120 :VAR NIL :WH HOW)
 (:VAR MV6120 :ISA DECREASE :AGENT MV6119 :OBJECT MV6121 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV6119 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV6121 :ISA PROTEIN :CELL-TYPE MV6125 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV6125 :ISA CELL-TYPE :MODIFIER MV6126 :CONTEXT-OR-ASSOCIATED-DISEASE MV6124)
 (:VAR MV6126 :ISA BIO-ENTITY :NAME "SKMEL-133") (:VAR MV6124 :ISA MELANOMA))

___________________
678: "Is ERK a transcription factor?"

                    SOURCE-START
e9    BE            1 "Is ERK a transcription factor" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK a transcription factor?"
 (:VAR MV6136 :ISA POLAR-QUESTION :STATEMENT
  (#<be 90098>
   (PREDICATE
    (#<transcription-factor 88046> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
679: "List all the genes regulated by elk1 and srf."

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    PERIOD
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf."
 (:VAR MV6138 :ISA LIST :THEME MV6141 :PRESENT "PRESENT")
 (:VAR MV6141 :ISA GENE :PREDICATION MV6142 :QUANTIFIER MV6139 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV6142 :ISA REGULATE :OBJECT MV6141 :AGENT MV6146 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV6146 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV6137 MV6145))
 (:VAR MV6137 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV6145 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6139 :ISA ALL :WORD "all"))

___________________
680: "List some of the genes regulated by elk1 and srf."

                    SOURCE-START
e20   LIST          1 "List some of the genes regulated by elk1 and srf" 12
                    PERIOD
                    END-OF-SOURCE
("List some of the genes regulated by elk1 and srf."
 (:VAR MV6149 :ISA LIST :THEME MV6153 :PRESENT "PRESENT")
 (:VAR MV6153 :ISA GENE :PREDICATION MV6154 :QUANTIFIER MV6150 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV6154 :ISA REGULATE :OBJECT MV6153 :AGENT MV6158 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV6158 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV6148 MV6157))
 (:VAR MV6148 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV6157 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6150 :ISA SOME :WORD "some"))

___________________
681: "Show me the  mutations of TP53 and BRAF in ovarian cancer."

                    SOURCE-START
e22   SHOW          1 "Show me the  mutations of TP53 and BRAF in ovarian cancer" 13
                    PERIOD
                    END-OF-SOURCE
("Show me the  mutations of TP53 and BRAF in ovarian cancer."
 (:VAR MV6164 :ISA SHOW :STATEMENT-OR-THEME MV6167 :BENEFICIARY MV6165 :PRESENT "PRESENT")
 (:VAR MV6167 :ISA MUTATION :OBJECT MV6172 :HAS-DETERMINER "THE" :RAW-TEXT "mutations")
 (:VAR MV6172 :ISA COLLECTION :CONTEXT-OR-DISEASE MV6163 :RAW-TEXT "TP53 and BRAF" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV6162 MV6170))
 (:VAR MV6163 :ISA CANCER :UID "TS-1223")
 (:VAR MV6162 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6170 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV6165 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
682: "What are the mutations of TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutations of TP53 and BRAF in ovarian cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of TP53 and BRAF in ovarian cancer?"
 (:VAR MV6178 :ISA BE :SUBJECT MV6177 :PREDICATE MV6180 :PRESENT "PRESENT") (:VAR MV6177 :ISA WHAT)
 (:VAR MV6180 :ISA MUTATION :OBJECT MV6185 :HAS-DETERMINER "THE" :RAW-TEXT "mutations")
 (:VAR MV6185 :ISA COLLECTION :CONTEXT-OR-DISEASE MV6176 :RAW-TEXT "TP53 and BRAF" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV6175 MV6183))
 (:VAR MV6176 :ISA CANCER :UID "TS-1223")
 (:VAR MV6175 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6183 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
683: "What are the mutually exclusive genes with CDH1 for breast cancer?"

                    SOURCE-START
e20   BE            1 "What are the mutually exclusive genes " 7
e18   WITH          7 "with CDH1 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e20   S             1 "What are the mutually exclusive genes " 7
e18   PP            7 "with CDH1 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
684: "What are the mutually exclusive genes with CDH1 in breast cancer?"

                    SOURCE-START
e20   BE            1 "What are the mutually exclusive genes " 7
e18   WITH          7 "with CDH1 in breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e20   S             1 "What are the mutually exclusive genes " 7
e18   PP            7 "with CDH1 in breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
685: "What downregulates it?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates it" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates it?"
 (:VAR MV6211 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV6210 :AFFECTED-PROCESS-OR-OBJECT MV6212 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV6210 :ISA WHAT) (:VAR MV6212 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
686: "What genes have strong evidence of being regulated by mir-122-5p?"

                    SOURCE-START
e21   HAVE          1 "What genes have strong evidence of being regulated by mir-122-5p" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes have strong evidence of being regulated by mir-122-5p?"
 (:VAR MV6216 :ISA HAVE :POSSESSOR MV6215 :THING-POSSESSED MV6218 :PRESENT "PRESENT")
 (:VAR MV6215 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6218 :ISA EVIDENCE :FACT MV6221 :PREDICATION MV6217)
 (:VAR MV6221 :ISA REGULATE :AGENT MV6213 :PROGRESSIVE MV6220 :RAW-TEXT "regulated")
 (:VAR MV6213 :ISA MICRO-RNA :RAW-TEXT "mir-122-5p" :NAME "microRNA 122-5p" :UID "MIMAT0000421")
 (:VAR MV6220 :ISA BE) (:VAR MV6217 :ISA STRONG))

___________________
687: "What increases the amount of myc"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    END-OF-SOURCE
("What increases the amount of myc"
 (:VAR MV6227 :ISA INCREASE :AGENT-OR-CAUSE MV6225 :AFFECTED-PROCESS-OR-OBJECT MV6229 :PRESENT
  "PRESENT" :RAW-TEXT "increases")
 (:VAR MV6225 :ISA WHAT)
 (:VAR MV6229 :ISA BIO-AMOUNT :MEASURED-ITEM MV6231 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV6231 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
688: "What inhibits fzd8?"

                    SOURCE-START
e5    INHIBIT       1 "What inhibits fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits fzd8?"
 (:VAR MV6235 :ISA INHIBIT :AGENT-OR-CAUSE MV6234 :OBJECT MV6233 :PRESENT "PRESENT" :RAW-TEXT
  "inhibits")
 (:VAR MV6234 :ISA WHAT)
 (:VAR MV6233 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
689: "What is the most likely cellular location of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e26   BE            1 "What is the most likely cellular location of AKT1, BRAF and MAPK1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
 (:VAR MV6239 :ISA BE :SUBJECT MV6238 :PREDICATE MV6251 :PRESENT "PRESENT") (:VAR MV6238 :ISA WHAT)
 (:VAR MV6251 :ISA QUALITY-PREDICATE :ITEM MV6249 :ATTRIBUTE MV6245)
 (:VAR MV6249 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV6236 MV6247 MV6237))
 (:VAR MV6236 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6247 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV6237 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6245 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6243 :MODIFIER MV6244)
 (:VAR MV6243 :ISA LIKELY :COMPARATIVE MV6241)
 (:VAR MV6241 :ISA SUPERLATIVE-QUANTIFIER :NAME "most") (:VAR MV6244 :ISA CELLULAR))

___________________
690: "What is the most likely cellular location of AKT1?"

                    SOURCE-START
e20   BE            1 "What is the most likely cellular location of AKT1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1?"
 (:VAR MV6254 :ISA BE :SUBJECT MV6253 :PREDICATE MV6263 :PRESENT "PRESENT") (:VAR MV6253 :ISA WHAT)
 (:VAR MV6263 :ISA QUALITY-PREDICATE :ITEM MV6252 :ATTRIBUTE MV6260)
 (:VAR MV6252 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6260 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6258 :MODIFIER MV6259)
 (:VAR MV6258 :ISA LIKELY :COMPARATIVE MV6256)
 (:VAR MV6256 :ISA SUPERLATIVE-QUANTIFIER :NAME "most") (:VAR MV6259 :ISA CELLULAR))

___________________
691: "What is the mutation significance of TP53 in lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in lung cancer?"
 (:VAR MV6267 :ISA BE :SUBJECT MV6266 :PREDICATE MV6270 :PRESENT "PRESENT") (:VAR MV6266 :ISA WHAT)
 (:VAR MV6270 :ISA SIGNIFICANCE :AGENT MV6264 :HAS-DETERMINER "THE" :MODIFIER MV6269)
 (:VAR MV6264 :ISA PROTEIN :CONTEXT-OR-DISEASE MV6265 :RAW-TEXT "TP53" :UID "UP:P04637" :NAME
  "P53_HUMAN")
 (:VAR MV6265 :ISA CANCER :UID "TS-0571") (:VAR MV6269 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
692: "Which of those are regulated by tp53?"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by tp53" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are regulated by tp53?"
 (:VAR MV6282 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6278 :AGENT MV6275 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV6278 :ISA THOSE :QUANTIFIER MV6276 :WORD "those") (:VAR MV6276 :ISA WHICH)
 (:VAR MV6275 :ISA PROTEIN :RAW-TEXT "tp53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
693: "Is there an inhibitor of ERK1?"

                    SOURCE-START
e15   THERE-EXISTS  1 "Is there an inhibitor of ERK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an inhibitor of ERK1?" (:VAR MV6292 :ISA THERE-EXISTS :VALUE MV6290 :PREDICATE MV6287)
 (:VAR MV6290 :ISA INHIBITOR :PROTEIN MV6285 :HAS-DETERMINER "AN" :RAW-TEXT "inhibitor")
 (:VAR MV6285 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME "MK03_HUMAN")
 (:VAR MV6287 :ISA SYNTACTIC-THERE))

___________________
694: "Name some drugs that inhibit AKT1."

                    SOURCE-START
e15   NAME-SOMETHING  1 "Name some drugs that inhibit AKT1" 8
                    PERIOD
                    END-OF-SOURCE
("Name some drugs that inhibit AKT1."
 (:VAR MV6295 :ISA NAME-SOMETHING :PATIENT MV6299 :PRESENT "PRESENT")
 (:VAR MV6299 :ISA DRUG :PREDICATION MV6301 :QUANTIFIER MV6298 :RAW-TEXT "drugs")
 (:VAR MV6301 :ISA INHIBIT :AGENT MV6299 :THAT-REL T :OBJECT MV6294 :PRESENT "PRESENT" :RAW-TEXT
  "inhibit")
 (:VAR MV6294 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6298 :ISA SOME :WORD "some"))

___________________
695: "Are there any Map2K1 inhibitors?"

                    SOURCE-START
e16   THERE-EXISTS  1 "Are there any Map2K1 inhibitors" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any Map2K1 inhibitors?" (:VAR MV6312 :ISA THERE-EXISTS :VALUE MV6310 :PREDICATE MV6304)
 (:VAR MV6310 :ISA INHIBITOR :QUANTIFIER MV6306 :PROTEIN MV6302 :MODIFIER MV6311 :RAW-TEXT
  "inhibitors")
 (:VAR MV6306 :ISA ANY :WORD "any")
 (:VAR MV6302 :ISA PROTEIN :RAW-TEXT "Map2" :UID "UP:P11137" :NAME "MTAP2_HUMAN")
 (:VAR MV6311 :ISA TWO-PART-LABEL :PART-TWO "1" :PART-ONE "k") (:VAR MV6304 :ISA SYNTACTIC-THERE))

___________________
696: "Are there targets of Selumetinib?"

                    SOURCE-START
e12   THERE-EXISTS  1 "Are there targets of Selumetinib" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there targets of Selumetinib?"
 (:VAR MV6320 :ISA THERE-EXISTS :VALUE MV6316 :PREDICATE MV6314)
 (:VAR MV6316 :ISA TARGET-PROTEIN :AGENT MV6319 :RAW-TEXT "targets")
 (:VAR MV6319 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV6314 :ISA SYNTACTIC-THERE))

___________________
697: "What does Selumetinib inhibit?"

                    SOURCE-START
e5    INHIBIT       1 "What does Selumetinib inhibit" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib inhibit?"
 (:VAR MV6325 :ISA INHIBIT :OBJECT MV6322 :AGENT MV6324 :PRESENT "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV6322 :ISA WHAT) (:VAR MV6324 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
698: "What does Selumetinib target?"

                    SOURCE-START
e6    TARGET        1 "What does Selumetinib target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib target?"
 (:VAR MV6330 :ISA TARGET :OBJECT MV6326 :AGENT MV6328 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV6326 :ISA WHAT) (:VAR MV6328 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
699: "Does Vemurafenib target BRAF?"

                    SOURCE-START
e9    TARGET        1 "Does Vemurafenib target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib target BRAF?" (:VAR MV6337 :ISA POLAR-QUESTION :STATEMENT MV6336)
 (:VAR MV6336 :ISA TARGET :AGENT MV6332 :OBJECT MV6335 :RAW-TEXT "target")
 (:VAR MV6332 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV6335 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
700: "What are some targets for treating pancreatic cancer?"

                    SOURCE-START
e15   BE            1 "What are some targets for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for treating pancreatic cancer?"
 (:VAR MV6340 :ISA BE :SUBJECT MV6339 :PREDICATE MV6342 :PRESENT "PRESENT") (:VAR MV6339 :ISA WHAT)
 (:VAR MV6342 :ISA TARGET-PROTEIN :QUANTIFIER MV6341 :TREATMENT MV6345 :RAW-TEXT "targets")
 (:VAR MV6341 :ISA SOME :WORD "some")
 (:VAR MV6345 :ISA TREATMENT :DISEASE MV6338 :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT "treating")
 (:VAR MV6338 :ISA CANCER :UID "TS-0739"))

___________________
701: "What are some targets for pancreatic cancer?"

                    SOURCE-START
e13   BE            1 "What are some targets for pancreatic cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for pancreatic cancer?"
 (:VAR MV6349 :ISA BE :SUBJECT MV6348 :PREDICATE MV6351 :PRESENT "PRESENT") (:VAR MV6348 :ISA WHAT)
 (:VAR MV6351 :ISA TARGET-PROTEIN :QUANTIFIER MV6350 :DISEASE MV6347 :RAW-TEXT "targets")
 (:VAR MV6350 :ISA SOME :WORD "some") (:VAR MV6347 :ISA CANCER :UID "TS-0739"))

___________________
702: "What targets could lead to the development of pancreatic cancer?"

                    SOURCE-START
e21   LEAD          1 "What targets could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What targets could lead to the development of pancreatic cancer?"
 (:VAR MV6360 :ISA LEAD :AGENT MV6357 :THEME MV6363 :MODAL MV6359 :RAW-TEXT "lead")
 (:VAR MV6357 :ISA TARGET-PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "targets")
 (:VAR MV6363 :ISA DEVELOPMENT :DISEASE MV6355 :HAS-DETERMINER "THE" :RAW-TEXT "development")
 (:VAR MV6355 :ISA CANCER :UID "TS-0739") (:VAR MV6359 :ISA COULD))

___________________
703: "What proteins could lead to the development of pancreatic cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins could lead to the development of pancreatic cancer?"
 (:VAR MV6371 :ISA LEAD :AGENT MV6369 :THEME MV6374 :MODAL MV6370 :RAW-TEXT "lead")
 (:VAR MV6369 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV6374 :ISA DEVELOPMENT :DISEASE MV6367 :HAS-DETERMINER "THE" :RAW-TEXT "development")
 (:VAR MV6367 :ISA CANCER :UID "TS-0739") (:VAR MV6370 :ISA COULD))

___________________
704: "What mutated genes could lead to pancreatic cancer?"

                    SOURCE-START
e15   LEAD          1 "What mutated genes could lead to pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What mutated genes could lead to pancreatic cancer?"
 (:VAR MV6383 :ISA LEAD :AGENT MV6381 :THEME MV6378 :MODAL MV6382 :RAW-TEXT "lead")
 (:VAR MV6381 :ISA GENE :HAS-DETERMINER "WHAT" :PREDICATION MV6380 :RAW-TEXT "genes")
 (:VAR MV6380 :ISA MUTATION :OBJECT MV6381 :RAW-TEXT "mutated")
 (:VAR MV6378 :ISA CANCER :UID "TS-0739") (:VAR MV6382 :ISA COULD))

___________________
705: "What is the top gene mutation that leads to pancreatic cancer?"

                    SOURCE-START
e24   BE            1 "What is the top gene mutation that leads to pancreatic cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the top gene mutation that leads to pancreatic cancer?"
 (:VAR MV6388 :ISA BE :SUBJECT MV6387 :PREDICATE MV6393 :PRESENT "PRESENT") (:VAR MV6387 :ISA WHAT)
 (:VAR MV6393 :ISA MUTATION :AGENT MV6392 :OBJECT MV6390 :PREDICATION MV6395 :HAS-DETERMINER "THE"
  :AGENT-OR-OBJECT MV6390 :AGENT-OR-OBJECT MV6392 :RAW-TEXT "mutation")
 (:VAR MV6392 :ISA GENE :RAW-TEXT "gene")
 (:VAR MV6390 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6395 :ISA LEAD :AGENT MV6393 :THAT-REL T :THEME MV6386 :PRESENT "PRESENT" :RAW-TEXT
  "leads")
 (:VAR MV6386 :ISA CANCER :UID "TS-0739")
 (:VAR MV6390 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6392 :ISA GENE :RAW-TEXT "gene"))

___________________
706: "I would like to find a treatement for pancreatic cancer."

                    SOURCE-START
e21   LIKE          1 "I would like " 4
e20   FIND-OUT      4 "to find " 6
e18   TREATEMENT    6 "a treatement " 8
e19   FOR           8 "for pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE
                    SOURCE-START
e21   S             1 "I would like " 4
e20   INFINITIVE    4 "to find " 6
e18   NP            6 "a treatement " 8
e19   PP            8 "for pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE


___________________
707: "What drug could I use to treat pancreatic cancer?"

                    SOURCE-START
e19   BIO-USE       1 "What drug could I use to treat pancreatic cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use to treat pancreatic cancer?"
 (:VAR MV6424 :ISA BIO-USE :PATIENT MV6414 :MODAL MV6415 :AGENT MV6416 :THEME MV6423 :PRESENT
  "PRESENT" :RAW-TEXT "use")
 (:VAR MV6414 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug") (:VAR MV6415 :ISA COULD)
 (:VAR MV6416 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6423 :ISA TREATMENT :DISEASE MV6412 :RAW-TEXT "treat")
 (:VAR MV6412 :ISA CANCER :UID "TS-0739"))

___________________
708: "What are some drugs for treating pancreatic cancer?"

                    SOURCE-START
e14   BE            1 "What are some drugs for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs for treating pancreatic cancer?"
 (:VAR MV6427 :ISA BE :SUBJECT MV6426 :PREDICATE MV6429 :PRESENT "PRESENT") (:VAR MV6426 :ISA WHAT)
 (:VAR MV6429 :ISA DRUG :TREATMENT MV6431 :QUANTIFIER MV6428 :RAW-TEXT "drugs")
 (:VAR MV6431 :ISA TREATMENT :DISEASE MV6425 :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT "treating")
 (:VAR MV6425 :ISA CANCER :UID "TS-0739") (:VAR MV6428 :ISA SOME :WORD "some"))

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
e8    VG            4 "like " 5
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
("Does MEK act on ERK?" (:VAR MV6457 :ISA POLAR-QUESTION :STATEMENT MV6455)
 (:VAR MV6455 :ISA BIO-ACT :AGENT MV6451 :ACTED-ON MV6454 :RAW-TEXT "act")
 (:VAR MV6451 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6454 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV6460 :ISA BIO-ACTIVATE :AGENT MV6459 :OBJECT MV6458 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV6459 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6458 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME "MK03_HUMAN"))

___________________
713: "HRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "HRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("HRAS activates RAF."
 (:VAR MV6462 :ISA BIO-ACTIVATE :AGENT MV6461 :OBJECT MV6463 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV6461 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME "RASH_HUMAN")
 (:VAR MV6463 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV6464 :ISA REMOVE :OBJECT MV6471 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV6471 :ISA FACT :STATEMENT MV6469 :HAS-DETERMINER "THE")
 (:VAR MV6469 :ISA BIO-ACTIVATE :AGENT MV6468 :OBJECT MV6470 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV6468 :ISA PROTEIN :RAW-TEXT "hras" :UID "UP:P01112" :NAME "RASH_HUMAN")
 (:VAR MV6470 :ISA PROTEIN-FAMILY :RAW-TEXT "ras" :NAME "Ras" :COUNT 3 :FAMILY-MEMBERS
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
("Can you tell me what is in the model?" (:VAR MV6483 :ISA POLAR-QUESTION :STATEMENT MV6474)
 (:VAR MV6474 :ISA TELL :AGENT MV6473 :THEME MV6482 :THEME MV6475 :MODAL "CAN")
 (:VAR MV6473 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV6482 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6476 :VALUE MV6480 :PREP "IN" :PREDICATE
  MV6477)
 (:VAR MV6476 :ISA WHAT) (:VAR MV6480 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV6477 :ISA BE :PRESENT "PRESENT") (:VAR MV6475 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
716: "Summarize the model."

                    SOURCE-START
e5    SUMMARIZE     1 "Summarize the model" 4
                    PERIOD
                    END-OF-SOURCE
("Summarize the model." (:VAR MV6487 :ISA SUMMARIZE :STATEMENT MV6486 :PRESENT "PRESENT")
 (:VAR MV6486 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
717: "Summarize the current model."

                    SOURCE-START
e7    SUMMARIZE     1 "Summarize the current model" 5
                    PERIOD
                    END-OF-SOURCE
("Summarize the current model." (:VAR MV6492 :ISA SUMMARIZE :STATEMENT MV6491 :PRESENT "PRESENT")
 (:VAR MV6491 :ISA MODEL :HAS-DETERMINER "THE" :PREDICATION MV6490) (:VAR MV6490 :ISA CURRENT))

___________________
718: "What phosphorylates BRAF?"

                    SOURCE-START
e4    PHOSPHORYLATE 1 "What phosphorylates BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What phosphorylates BRAF?"
 (:VAR MV6494 :ISA PHOSPHORYLATE :AGENT-OR-CAUSE MV6493 :SUBSTRATE MV6495 :PRESENT "PRESENT"
  :RAW-TEXT "phosphorylates")
 (:VAR MV6493 :ISA WHAT)
 (:VAR MV6495 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
719: "Vemurafenib binds BRAF."

                    SOURCE-START
e4    BINDING       1 "Vemurafenib binds BRAF" 4
                    PERIOD
                    END-OF-SOURCE
("Vemurafenib binds BRAF."
 (:VAR MV6497 :ISA BINDING :BINDER MV6496 :DIRECT-BINDEE MV6498 :PRESENT "PRESENT" :RAW-TEXT
  "binds")
 (:VAR MV6496 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV6498 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
720: "Phosphorylated MAP2K1 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated MAP2K1 is activated" 8
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAP2K1 is activated."
 (:VAR MV6503 :ISA BIO-ACTIVATE :OBJECT MV6499 :PRESENT "PRESENT" :RAW-TEXT "activated")
 (:VAR MV6499 :ISA PROTEIN :PREDICATION MV6500 :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV6500 :ISA PHOSPHORYLATE :SUBSTRATE MV6499 :RAW-TEXT "Phosphorylated"))

___________________
721: "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2" 18
                    PERIOD
                    END-OF-SOURCE
("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
 (:VAR MV6507 :ISA DEPHOSPHORYLATE :AGENT MV6504 :SUBSTRATE MV6505 :PRESENT "PRESENT" :RAW-TEXT
  "dephosphorylates")
 (:VAR MV6504 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME "PP2AA_HUMAN")
 (:VAR MV6505 :ISA PROTEIN :PREDICATION MV6513 :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV6513 :ISA BINDING :DIRECT-BINDEE MV6505 :THAT-REL T :BINDEE MV6506 :PRESENT "PRESENT"
  :NEGATION MV6510 :RAW-TEXT "bound")
 (:VAR MV6506 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6510 :ISA NOT :WORD "not"))

___________________
722: "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."

                    SOURCE-START
e24   PHOSPHORYLATE 1 "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2" 19
                    PERIOD
                    END-OF-SOURCE
("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
 (:VAR MV6524 :ISA PHOSPHORYLATE :AGENT MV6515 :SUBSTRATE MV6517 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV6515 :ISA PROTEIN :PREDICATION MV6525 :PREDICATION MV6518 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6525 :ISA BINDING :DIRECT-BINDEE MV6515 :THAT-REL T :BINDEE MV6516 :PRESENT "PRESENT"
  :NEGATION MV6521 :RAW-TEXT "bound")
 (:VAR MV6516 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME "PP2AA_HUMAN")
 (:VAR MV6521 :ISA NOT :WORD "not") (:VAR MV6518 :ISA ACTIVE)
 (:VAR MV6517 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
723: "Phosphorylated ERK2 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated ERK2 is activated" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK2 is activated."
 (:VAR MV6531 :ISA BIO-ACTIVATE :OBJECT MV6527 :PRESENT "PRESENT" :RAW-TEXT "activated")
 (:VAR MV6527 :ISA PROTEIN :PREDICATION MV6528 :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6528 :ISA PHOSPHORYLATE :SUBSTRATE MV6527 :RAW-TEXT "Phosphorylated"))

___________________
724: "DUSP6 dephosphorylates ERK2 that is not bound to SOS1."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates ERK2 that is not bound to SOS1" 13
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
 (:VAR MV6535 :ISA DEPHOSPHORYLATE :AGENT MV6532 :SUBSTRATE MV6533 :PRESENT "PRESENT" :RAW-TEXT
  "dephosphorylates")
 (:VAR MV6532 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV6533 :ISA PROTEIN :PREDICATION MV6541 :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6541 :ISA BINDING :DIRECT-BINDEE MV6533 :THAT-REL T :BINDEE MV6534 :PRESENT "PRESENT"
  :NEGATION MV6538 :RAW-TEXT "bound")
 (:VAR MV6534 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV6538 :ISA NOT :WORD "not"))

___________________
725: "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."

                    SOURCE-START
e28   PHOSPHORYLATE 1 "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1" 16
                    PERIOD
                    END-OF-SOURCE
("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
 (:VAR MV6555 :ISA PHOSPHORYLATE :AGENT MV6544 :SUBSTRATE MV6543 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV6544 :ISA PROTEIN :PREDICATION MV6558 :MUTATION MV6557 :RAW-TEXT "BRAF" :UID "UP:P15056"
  :NAME "BRAF_HUMAN")
 (:VAR MV6558 :ISA BINDING :DIRECT-BINDEE MV6544 :THAT-REL T :BINDEE MV6554 :PRESENT "PRESENT"
  :NEGATION MV6551 :RAW-TEXT "bound")
 (:VAR MV6554 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV6551 :ISA NOT :WORD "not")
 (:VAR MV6557 :ISA POINT-MUTATED-PROTEIN :POSITION MV6546 :NEW-AMINO-ACID MV6548
  :ORIGINAL-AMINO-ACID MV6545)
 (:VAR MV6546 :ISA NUMBER :VALUE 600)
 (:VAR MV6548 :ISA AMINO-ACID :NAME "glutamic acid" :LETTER "E")
 (:VAR MV6545 :ISA AMINO-ACID :NAME "valine" :LETTER "V")
 (:VAR MV6543 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
726: "Phosphorylated MAPK1 is active."

                    SOURCE-START
e8    COPULAR-PREDICATION 1 "Phosphorylated MAPK1 is active" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAPK1 is active."
 (:VAR MV6564 :ISA COPULAR-PREDICATION :ITEM MV6560 :VALUE MV6563 :PREDICATE MV6562)
 (:VAR MV6560 :ISA PROTEIN :PREDICATION MV6561 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6561 :ISA PHOSPHORYLATE :SUBSTRATE MV6560 :RAW-TEXT "Phosphorylated")
 (:VAR MV6563 :ISA ACTIVE) (:VAR MV6562 :ISA BE :PRESENT "PRESENT"))

___________________
727: "PDK1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "PDK1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("PDK1 phosphorylates AKT1."
 (:VAR MV6567 :ISA PHOSPHORYLATE :AGENT MV6565 :SUBSTRATE MV6566 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV6565 :ISA PROTEIN :RAW-TEXT "PDK1" :UID "UP:O15530" :NAME "PDPK1_HUMAN")
 (:VAR MV6566 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
728: "Let's move phosphorylated AKT1 to the top"

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 to the top" 11
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 to the top"
 (:VAR MV6577 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6570 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV6570 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV6574 :THEME MV6569 :PRESENT "PRESENT")
 (:VAR MV6574 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6569 :ISA PROTEIN :PREDICATION MV6571 :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6571 :ISA PHOSPHORYLATE :SUBSTRATE MV6569 :RAW-TEXT "phosphorylated"))

___________________
729: "Let's move phosphorylated AKT1 on top"

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 on top" 10
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 on top"
 (:VAR MV6586 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6580 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV6580 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV6583 :THEME MV6579 :PRESENT
  "PRESENT")
 (:VAR MV6583 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6579 :ISA PROTEIN :PREDICATION MV6581 :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6581 :ISA PHOSPHORYLATE :SUBSTRATE MV6579 :RAW-TEXT "phosphorylated"))

___________________
730: "show AKT1 on top"

                    SOURCE-START
e9    SHOW          1 "show AKT1 on top" 6
                    END-OF-SOURCE
("show AKT1 on top"
 (:VAR MV6588 :ISA SHOW :AT-RELATIVE-LOCATION MV6590 :STATEMENT-OR-THEME MV6587 :PRESENT "PRESENT")
 (:VAR MV6590 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6587 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
731: "Let's highlight upstream of AKT1"

                    SOURCE-START
e12   EXPLICIT-SUGGESTION 1 "Let's highlight upstream of AKT1" 9
                    END-OF-SOURCE
("Let's highlight upstream of AKT1"
 (:VAR MV6600 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6595 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV6595 :ISA HIGHLIGHT :THEME MV6596 :PRESENT "PRESENT")
 (:VAR MV6596 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV6594 :RAW-TEXT "upstream")
 (:VAR MV6594 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
732: "Let's move nucleus elements to the top"

                    SOURCE-START
e16   EXPLICIT-SUGGESTION 1 "Let's move nucleus elements to the top" 10
                    END-OF-SOURCE
("Let's move nucleus elements to the top"
 (:VAR MV6610 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6602 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV6602 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV6607 :THEME MV6604 :PRESENT "PRESENT")
 (:VAR MV6607 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6604 :ISA ELEMENT :MODIFIER MV6603) (:VAR MV6603 :ISA NUCLEUS :RAW-TEXT "nucleus"))

___________________
733: "What are the common downstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common downstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common downstreams of AKT1 and  BRAF?"
 (:VAR MV6613 :ISA BE :SUBJECT MV6612 :PREDICATE MV6616 :PRESENT "PRESENT") (:VAR MV6612 :ISA WHAT)
 (:VAR MV6616 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV6620 :HAS-DETERMINER "THE" :PREDICATION
  MV6615 :RAW-TEXT "downstreams")
 (:VAR MV6620 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV6611 MV6619))
 (:VAR MV6611 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6619 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV6615 :ISA COMMON))

___________________
734: "Are there common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e20   THERE-EXISTS  1 "Are there common upstreams of AKT1, BRAF and MAPK1" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV6632 :ISA THERE-EXISTS :VALUE MV6628 :PREDICATE MV6625)
 (:VAR MV6628 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV6633 :PREDICATION MV6627 :RAW-TEXT
  "upstreams")
 (:VAR MV6633 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV6622 MV6630 MV6623))
 (:VAR MV6622 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6630 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV6623 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6627 :ISA COMMON) (:VAR MV6625 :ISA SYNTACTIC-THERE))

___________________
735: "What are the common upstream regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e26   BE            1 "What are the common upstream regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6639 :ISA BE :SUBJECT MV6638 :PREDICATE MV6644 :PRESENT "PRESENT") (:VAR MV6638 :ISA WHAT)
 (:VAR MV6644 :ISA REGULATOR :THEME MV6647 :HAS-DETERMINER "THE" :PREDICATION MV6641 :CONTEXT
  MV6642 :RAW-TEXT "regulators")
 (:VAR MV6647 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV6635 MV6636 MV6637))
 (:VAR MV6635 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6636 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME "MMP3_HUMAN")
 (:VAR MV6637 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME "PAI1_HUMAN")
 (:VAR MV6641 :ISA COMMON) (:VAR MV6642 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
736: "What are common downstream regulators of MMP3 and SERPINE1?"

                    SOURCE-START
e19   BE            1 "What are common downstream regulators of MMP3 and SERPINE1" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common downstream regulators of MMP3 and SERPINE1?"
 (:VAR MV6652 :ISA BE :SUBJECT MV6651 :PREDICATE MV6656 :PRESENT "PRESENT") (:VAR MV6651 :ISA WHAT)
 (:VAR MV6656 :ISA REGULATOR :THEME MV6659 :PREDICATION MV6653 :CONTEXT MV6654 :RAW-TEXT
  "regulators")
 (:VAR MV6659 :ISA COLLECTION :RAW-TEXT "MMP3 and SERPINE1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV6649 MV6650))
 (:VAR MV6649 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME "MMP3_HUMAN")
 (:VAR MV6650 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME "PAI1_HUMAN")
 (:VAR MV6653 :ISA COMMON) (:VAR MV6654 :ISA DOWNSTREAM-SEGMENT :RAW-TEXT "downstream"))

___________________
737: "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e24   BE            1 "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6666 :ISA BE :SUBJECT MV6665 :PREDICATE MV6661 :PRESENT "PRESENT") (:VAR MV6665 :ISA WHAT)
 (:VAR MV6661 :ISA PROTEIN-FAMILY :MOLECULE-TYPE MV6672 :PREDICATION MV6667 :CONTEXT MV6668
  :RAW-TEXT "transcriptional regulators" :NAME "transcriptional regulator" :UID "XFAM:PF02082")
 (:VAR MV6672 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV6662 MV6663 MV6664))
 (:VAR MV6662 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6663 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME "MMP3_HUMAN")
 (:VAR MV6664 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME "PAI1_HUMAN")
 (:VAR MV6667 :ISA COMMON) (:VAR MV6668 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
738: "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e24   BE            1 "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
 (:VAR MV6677 :ISA BE :SUBJECT MV6676 :PREDICATE MV6679 :PRESENT "PRESENT") (:VAR MV6676 :ISA WHAT)
 (:VAR MV6679 :ISA MUTATION :OBJECT MV6685 :HAS-DETERMINER "THE" :RAW-TEXT "mutations")
 (:VAR MV6685 :ISA COLLECTION :CONTEXT-OR-DISEASE MV6675 :RAW-TEXT "PTEN, TP53 and BRAF" :TYPE
  PROTEIN :NUMBER 3 :ITEMS (MV6681 MV6674 MV6683))
 (:VAR MV6675 :ISA CANCER :UID "TS-1223")
 (:VAR MV6681 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME "PTEN_HUMAN")
 (:VAR MV6674 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6683 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
739: "What is the mutation frequency of TP53 in ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian cancer?"
 (:VAR MV6691 :ISA BE :SUBJECT MV6690 :PREDICATE MV6694 :PRESENT "PRESENT") (:VAR MV6690 :ISA WHAT)
 (:VAR MV6694 :ISA FREQUENCY :MEASURED-ITEM MV6688 :HAS-DETERMINER "THE" :MEASURED-ITEM MV6693
  :RAW-TEXT "frequency")
 (:VAR MV6688 :ISA PROTEIN :CONTEXT-OR-DISEASE MV6689 :RAW-TEXT "TP53" :UID "UP:P04637" :NAME
  "P53_HUMAN")
 (:VAR MV6689 :ISA CANCER :UID "TS-1223") (:VAR MV6693 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
740: "Which genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV6709 :ISA COPULAR-PREDICATION :ITEM MV6703 :VALUE MV6699 :PREDICATE MV6704)
 (:VAR MV6703 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV6699 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6700)
 (:VAR MV6700 :ISA PROTEIN :DISEASE MV6701 :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME "CADH1_HUMAN")
 (:VAR MV6701 :ISA CANCER :UID "TS-0591") (:VAR MV6704 :ISA BE :PRESENT "PRESENT"))

___________________
741: "Which genes are mutually exclusive with CDH1 in breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 in breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 in breast cancer?"
 (:VAR MV6720 :ISA COPULAR-PREDICATION :ITEM MV6714 :VALUE MV6710 :PREDICATE MV6715)
 (:VAR MV6714 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV6710 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6711)
 (:VAR MV6711 :ISA PROTEIN :CONTEXT-OR-DISEASE MV6712 :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV6712 :ISA CANCER :UID "TS-0591") (:VAR MV6715 :ISA BE :PRESENT "PRESENT"))

___________________
742: "What is the cellular location of akt1?"

                    SOURCE-START
e15   BE            1 "What is the cellular location of akt1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the cellular location of akt1?"
 (:VAR MV6723 :ISA BE :SUBJECT MV6722 :PREDICATE MV6729 :PRESENT "PRESENT") (:VAR MV6722 :ISA WHAT)
 (:VAR MV6729 :ISA QUALITY-PREDICATE :ITEM MV6721 :ATTRIBUTE MV6726)
 (:VAR MV6721 :ISA PROTEIN :RAW-TEXT "akt1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6726 :ISA LOCATION-OF :HAS-DETERMINER "THE" :MODIFIER MV6725) (:VAR MV6725 :ISA CELLULAR))

___________________
743: "How does MAPK regulate BRAF?"

                    SOURCE-START
e7    REGULATE      1 "How does MAPK regulate BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK regulate BRAF?"
 (:VAR MV6733 :ISA REGULATE :MANNER MV6730 :AGENT MV6732 :OBJECT MV6734 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV6730 :ISA HOW)
 (:VAR MV6732 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV6734 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
744: "What is BRAF?"

                    SOURCE-START
e4    BE            1 "What is BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is BRAF?" (:VAR MV6736 :ISA BE :SUBJECT MV6735 :PREDICATE MV6737 :PRESENT "PRESENT")
 (:VAR MV6735 :ISA WHAT)
 (:VAR MV6737 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
745: "Is BRAF a member of the RAF family?"

                    SOURCE-START
e19   BE            1 "Is BRAF a member of the RAF family" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a member of the RAF family?"
 (:VAR MV6749 :ISA POLAR-QUESTION :STATEMENT
  (#<be 91017>
   (PREDICATE
    (#<member 91016>
     (SET
      (#<protein-family Raf 86550> (HAS-DETERMINER (#<the 106> (WORD "the"))) (RAW-TEXT "RAF")
       (NAME "Raf")
       (FAMILY-MEMBERS
        (#<collection #<"RAF1_HUMAN" 10408> #<"BRAF_HUMAN" 13718> #<"ARAF_HUMAN" 12658> 80139>
         (TYPE #<ref-category PROTEIN>)
         (ITEMS
          (COLLECTION
           (:MEMBERS
            ((#<protein "RAF1_HUMAN" 10408> (UID "UP:P04049") (NAME "RAF1_HUMAN"))
             (#<protein "BRAF_HUMAN" 13718> (UID "UP:P15056") (NAME "BRAF_HUMAN"))
             (#<protein "ARAF_HUMAN" 12658> (UID "UP:P10398") (NAME "ARAF_HUMAN"))))))
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
 (:VAR MV6756 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6751 :VALUE MV6754 :PREP "IN" :PREDICATE
  MV6752)
 (:VAR MV6751 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6754 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663")
 (:VAR MV6752 :ISA BE :PRESENT "PRESENT"))

___________________
747: "What genes are in the RAF family?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What genes are in the RAF family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the RAF family?"
 (:VAR MV6767 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6758 :VALUE MV6765 :PREP "IN" :PREDICATE
  MV6759)
 (:VAR MV6758 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6765 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV6759 :ISA BE :PRESENT "PRESENT"))

___________________
748: "What are some other names for BRAF?"

                    SOURCE-START
e15   BE            1 "What are some other names for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some other names for BRAF?"
 (:VAR MV6769 :ISA BE :SUBJECT MV6768 :PREDICATE MV6773 :PRESENT "PRESENT") (:VAR MV6768 :ISA WHAT)
 (:VAR MV6773 :ISA HAS-NAME :QUANTIFIER MV6770 :QUANTIFIER MV6771 :ITEM MV6776)
 (:VAR MV6770 :ISA SOME :WORD "some") (:VAR MV6771 :ISA OTHER :WORD "other")
 (:VAR MV6776 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
749: "What are synonyms for ERK?"

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
749 sentences in *list-of-bio-utterances*
