

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
 (:VAR MV29 :ISA HAVE :POSSESSOR MV27 :THAT-REL T :THING-POSSESSED MV36 :PRESENT "PRESENT")
 (:VAR MV36 :ISA EVIDENCE :FACT MV34)
 (:VAR MV34 :ISA REGULATE :AGENT MV23 :PROGRESSIVE MV33 :RAW-TEXT "regulated")
 (:VAR MV23 :ISA MICRO-RNA :RAW-TEXT "mir-122-5p" :NAME "microRNA 122-5p" :UID "MIMAT0000421")
 (:VAR MV33 :ISA BE))

___________________
4: "What is stat3's involvement in apoptosis?"

                    SOURCE-START
e14   BE            1 "What is stat3's involvement in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's involvement in apoptosis?"
 (:VAR MV41 :ISA BE :SUBJECT MV40 :PREDICATE MV43 :PRESENT "PRESENT") (:VAR MV40 :ISA WHAT)
 (:VAR MV43 :ISA INVOLVE :THEME MV45 :PARTICIPANT MV42)
 (:VAR MV45 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV42 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
5: "What is stat3's role in apoptosis?"

                    SOURCE-START
e14   BE            1 "What is stat3's role in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's role in apoptosis?"
 (:VAR MV49 :ISA BE :SUBJECT MV48 :PREDICATE MV51 :PRESENT "PRESENT") (:VAR MV48 :ISA WHAT)
 (:VAR MV51 :ISA ROLE :PROCESS MV53 :PARTICIPANT MV50)
 (:VAR MV53 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV50 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
6: "What is stat3's role in apoptotic regulation?"

                    SOURCE-START
e17   BE            1 "What is stat3's role in apoptotic regulation" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's role in apoptotic regulation?"
 (:VAR MV57 :ISA BE :SUBJECT MV56 :PREDICATE MV59 :PRESENT "PRESENT") (:VAR MV56 :ISA WHAT)
 (:VAR MV59 :ISA ROLE :PROCESS MV63 :PARTICIPANT MV58)
 (:VAR MV63 :ISA REGULATE :AGENT MV61 :RAW-TEXT "regulation")
 (:VAR MV61 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV58 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
7: "What is the evidence that miR-148a-3p targets DNMT1?"

                    SOURCE-START
e19   BE            1 "What is the evidence that miR-148a-3p targets DNMT1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that miR-148a-3p targets DNMT1?"
 (:VAR MV68 :ISA BE :SUBJECT MV67 :PREDICATE MV74 :PRESENT "PRESENT") (:VAR MV67 :ISA WHAT)
 (:VAR MV74 :ISA EVIDENCE :STATEMENT MV73 :HAS-DETERMINER "THE")
 (:VAR MV73 :ISA TARGET :AGENT MV65 :OBJECT MV66 :PRESENT "PRESENT" :RAW-TEXT "targets")
 (:VAR MV65 :ISA MICRO-RNA :RAW-TEXT "miR-148a-3p" :NAME "microRNA 148a-3p" :UID "MIMAT0000243")
 (:VAR MV66 :ISA PROTEIN :RAW-TEXT "DNMT1" :UID "UP:P26358" :NAME "DNMT1_HUMAN"))

___________________
8: "what transcription factors does miR-124-3p regulate?"

                    SOURCE-START
e9    REGULATE      1 "what transcription factors does miR-124-3p regulate" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-124-3p regulate?"
 (:VAR MV79 :ISA REGULATE :OBJECT MV75 :AGENT MV76 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV75 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV76 :ISA MICRO-RNA :RAW-TEXT "miR-124-3p" :NAME "microRNA 124-3p" :UID "MIMAT0000422"))

___________________
9: "what transcription factors does miR-200c-3p regulate?"

                    SOURCE-START
e9    REGULATE      1 "what transcription factors does miR-200c-3p regulate" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-200c-3p regulate?"
 (:VAR MV84 :ISA REGULATE :OBJECT MV80 :AGENT MV81 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV80 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV81 :ISA MICRO-RNA :RAW-TEXT "miR-200c-3p" :NAME "microRNA 200c-3p" :UID "MIMAT0000617"))

___________________
10: "What is the mutation significance of TP53 in ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in ovarian cancer?"
 (:VAR MV88 :ISA BE :SUBJECT MV87 :PREDICATE MV91 :PRESENT "PRESENT") (:VAR MV87 :ISA WHAT)
 (:VAR MV91 :ISA SIGNIFICANCE :AGENT MV85 :HAS-DETERMINER "THE" :MODIFIER MV90)
 (:VAR MV85 :ISA PROTEIN :CONTEXT MV86 :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV86 :ISA CANCER :UID "TS-1223") (:VAR MV90 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
11: "What is the mutation significance of TP53 for ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 for ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 for ovarian cancer?"
 (:VAR MV99 :ISA BE :SUBJECT MV98 :PREDICATE MV102 :PRESENT "PRESENT") (:VAR MV98 :ISA WHAT)
 (:VAR MV102 :ISA SIGNIFICANCE :RESULT MV97 :AGENT MV96 :HAS-DETERMINER "THE" :MODIFIER MV101)
 (:VAR MV97 :ISA CANCER :UID "TS-1223")
 (:VAR MV96 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV101 :ISA MUTATION :RAW-TEXT "mutation"))

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
 (:VAR MV115 :ISA BE :SUBJECT MV114 :PREDICATE MV117 :PRESENT "PRESENT") (:VAR MV114 :ISA WHAT)
 (:VAR MV117 :ISA GENE :PREDICATION MV122 :QUANTIFIER MV116 :RAW-TEXT "genes")
 (:VAR MV122 :ISA MUTATION :OBJECT MV117 :THAT-REL T :CONTEXT MV113 :PRESENT "PRESENT" :RAW-TEXT
  "mutated")
 (:VAR MV113 :ISA CANCER :UID "TS-0591") (:VAR MV116 :ISA SOME :WORD "some"))

___________________
14: "what genes are mutated in breast cancer?"

                    SOURCE-START
e12   MUTATION      1 "what genes are mutated in breast cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are mutated in breast cancer?"
 (:VAR MV130 :ISA MUTATION :OBJECT MV126 :CONTEXT MV124 :PRESENT "PRESENT" :RAW-TEXT "mutated")
 (:VAR MV126 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV124 :ISA CANCER :UID "TS-0591"))

___________________
15: "Does phosphorylation at S221 activate MAP2K2?"

                    SOURCE-START
e18   BIO-ACTIVATE  1 "Does phosphorylation at S221 activate MAP2K2" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylation at S221 activate MAP2K2?" (:VAR MV143 :ISA POLAR-QUESTION :STATEMENT MV141)
 (:VAR MV141 :ISA BIO-ACTIVATE :AGENT MV134 :OBJECT MV132 :RAW-TEXT "activate")
 (:VAR MV134 :ISA PHOSPHORYLATE :SITE MV140 :RAW-TEXT "phosphorylation")
 (:VAR MV140 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S221" :POSITION MV138 :AMINO-ACID MV137)
 (:VAR MV138 :ISA NUMBER :VALUE 221) (:VAR MV137 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV132 :ISA PROTEIN :RAW-TEXT "MAP2K2" :UID "UP:P36507" :NAME "MP2K2_HUMAN"))

___________________
16: "Does phosphorylation at S222 activate MAP2K1?"

                    SOURCE-START
e18   BIO-ACTIVATE  1 "Does phosphorylation at S222 activate MAP2K1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylation at S222 activate MAP2K1?" (:VAR MV155 :ISA POLAR-QUESTION :STATEMENT MV153)
 (:VAR MV153 :ISA BIO-ACTIVATE :AGENT MV146 :OBJECT MV144 :RAW-TEXT "activate")
 (:VAR MV146 :ISA PHOSPHORYLATE :SITE MV152 :RAW-TEXT "phosphorylation")
 (:VAR MV152 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S222" :POSITION MV150 :AMINO-ACID MV149)
 (:VAR MV150 :ISA NUMBER :VALUE 222) (:VAR MV149 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV144 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
17: "Simulate the MAP2K1-MAPK1 complex"

                    SOURCE-START
e13   SIMULATE      1 "Simulate the MAP2K1-MAPK1 complex" 11
                    END-OF-SOURCE
("Simulate the MAP2K1-MAPK1 complex"
 (:VAR MV158 :ISA SIMULATE :OBJECT MV160 :PRESENT "PRESENT" :RAW-TEXT "Simulate")
 (:VAR MV160 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :COMPONENT MV156 :COMPONENT MV161 :RAW-TEXT
  "complex")
 (:VAR MV156 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV161 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
18: "What are the members of ERK?"

                    SOURCE-START
e12   BE            1 "What are the members of ERK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of ERK?"
 (:VAR MV163 :ISA BE :SUBJECT MV162 :PREDICATE MV165 :PRESENT "PRESENT") (:VAR MV162 :ISA WHAT)
 (:VAR MV165 :ISA MEMBER :SET MV167 :HAS-DETERMINER "THE")
 (:VAR MV167 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV170 :ISA BE :SUBJECT MV169 :PREDICATE MV172 :PRESENT "PRESENT") (:VAR MV169 :ISA WHAT)
 (:VAR MV172 :ISA MEMBER :SET MV174 :HAS-DETERMINER "THE")
 (:VAR MV174 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
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
 (:VAR MV177 :ISA BE :SUBJECT MV176 :PREDICATE MV179 :PRESENT "PRESENT") (:VAR MV176 :ISA WHAT)
 (:VAR MV179 :ISA MEMBER :SET MV181 :HAS-DETERMINER "THE")
 (:VAR MV181 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV184 :ISA BE :SUBJECT MV183 :PREDICATE MV186 :PRESENT "PRESENT") (:VAR MV183 :ISA WHAT)
 (:VAR MV186 :ISA MEMBER :SET MV192 :HAS-DETERMINER "THE")
 (:VAR MV192 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
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
 (:VAR MV196 :ISA BE :SUBJECT MV195 :PREDICATE MV198 :PRESENT "PRESENT") (:VAR MV195 :ISA WHAT)
 (:VAR MV198 :ISA MEMBER :SET MV194 :HAS-DETERMINER "THE")
 (:VAR MV194 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAS family" :NAME "Ras" :COUNT 3
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
 (:VAR MV203 :ISA BE :SUBJECT MV202 :PREDICATE MV206 :PRESENT "PRESENT") (:VAR MV202 :ISA WHAT)
 (:VAR MV206 :ISA HAS-NAME :ITEM MV209 :QUANTIFIER MV204)
 (:VAR MV209 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV204 :ISA ANOTHER :WORD "another"))

___________________
24: "What is another name for MAP2K1?"

                    SOURCE-START
e14   BE            1 "What is another name for MAP2K1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is another name for MAP2K1?"
 (:VAR MV213 :ISA BE :SUBJECT MV212 :PREDICATE MV216 :PRESENT "PRESENT") (:VAR MV212 :ISA WHAT)
 (:VAR MV216 :ISA HAS-NAME :ITEM MV211 :QUANTIFIER MV214)
 (:VAR MV211 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV214 :ISA ANOTHER :WORD "another"))

___________________
25: "How does STAT3 affect c-fos"

                    SOURCE-START
e9    AFFECT        1 "How does STAT3 affect c-fos" 9
                    END-OF-SOURCE
("How does STAT3 affect c-fos"
 (:VAR MV224 :ISA AFFECT :MANNER MV222 :AGENT MV220 :OBJECT MV221 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV222 :ISA HOW)
 (:VAR MV220 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV221 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
26: "List some genes regulated by elk1"

                    SOURCE-START
e11   LIST          1 "List some genes regulated by elk1" 8
                    END-OF-SOURCE
("List some genes regulated by elk1" (:VAR MV226 :ISA LIST :THEME MV228 :PRESENT "PRESENT")
 (:VAR MV228 :ISA GENE :PREDICATION MV229 :QUANTIFIER MV227 :RAW-TEXT "genes")
 (:VAR MV229 :ISA REGULATE :OBJECT MV228 :AGENT MV225 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV225 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV227 :ISA SOME :WORD "some"))

___________________
27: "List some of the genes regulated by elk1"

                    SOURCE-START
e17   LIST          1 "List some of the genes regulated by elk1" 10
                    END-OF-SOURCE
("List some of the genes regulated by elk1" (:VAR MV233 :ISA LIST :THEME MV237 :PRESENT "PRESENT")
 (:VAR MV237 :ISA GENE :PREDICATION MV238 :QUANTIFIER MV234 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV238 :ISA REGULATE :OBJECT MV237 :AGENT MV232 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV232 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV234 :ISA SOME :WORD "some"))

___________________
28: "List the genes regulated by elk1"

                    SOURCE-START
e12   LIST          1 "List the genes regulated by elk1" 8
                    END-OF-SOURCE
("List the genes regulated by elk1" (:VAR MV244 :ISA LIST :THEME MV246 :PRESENT "PRESENT")
 (:VAR MV246 :ISA GENE :PREDICATION MV247 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV247 :ISA REGULATE :OBJECT MV246 :AGENT MV243 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV243 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
29: "What are the common upstream regulators of AKT1 and BRAF?"

                    SOURCE-START
e21   BE            1 "What are the common upstream regulators of AKT1 and BRAF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of AKT1 and BRAF?"
 (:VAR MV252 :ISA BE :SUBJECT MV251 :PREDICATE MV257 :PRESENT "PRESENT") (:VAR MV251 :ISA WHAT)
 (:VAR MV257 :ISA REGULATOR :THEME MV261 :HAS-DETERMINER "THE" :PREDICATION MV254 :CONTEXT MV255
  :RAW-TEXT "regulators")
 (:VAR MV261 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV250 MV260))
 (:VAR MV250 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV260 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV254 :ISA COMMON) (:VAR MV255 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
30: "What are the common upstreams of AKT and BRAF?"

                    SOURCE-START
e17   BE            1 "What are the common upstreams of AKT and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT and BRAF?"
 (:VAR MV264 :ISA BE :SUBJECT MV263 :PREDICATE MV267 :PRESENT "PRESENT") (:VAR MV263 :ISA WHAT)
 (:VAR MV267 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV272 :HAS-DETERMINER "THE" :PREDICATION MV266
  :RAW-TEXT "upstreams")
 (:VAR MV272 :ISA COLLECTION :RAW-TEXT "AKT and BRAF" :TYPE PROTEIN-FAMILY :NUMBER 2 :ITEMS
  (MV269 MV271))
 (:VAR MV269 :ISA PROTEIN-FAMILY :RAW-TEXT "AKT" :NAME "Rac" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "AKT3_HUMAN") (:UID "UP:Q9Y243"))
   (PROTEIN (:NAME "AKT2_HUMAN") (:UID "UP:P31751"))
   (PROTEIN (:NAME "AKT1_HUMAN") (:UID "UP:P31749")))
  :UID "FA:03066")
 (:VAR MV271 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV266 :ISA COMMON))

___________________
31: "What are the common upstreams of AKT1 and BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and BRAF?"
 (:VAR MV276 :ISA BE :SUBJECT MV275 :PREDICATE MV279 :PRESENT "PRESENT") (:VAR MV275 :ISA WHAT)
 (:VAR MV279 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV283 :HAS-DETERMINER "THE" :PREDICATION MV278
  :RAW-TEXT "upstreams")
 (:VAR MV283 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV274 MV282))
 (:VAR MV274 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV282 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV278 :ISA COMMON))

___________________
32: "What are the genes that smad2 regulates?"

                    SOURCE-START
e16   BE            1 "What are the genes that smad2 regulates" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes that smad2 regulates?"
 (:VAR MV287 :ISA BE :SUBJECT MV286 :PREDICATE MV289 :PRESENT "PRESENT") (:VAR MV286 :ISA WHAT)
 (:VAR MV289 :ISA GENE :PREDICATION MV291 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV291 :ISA REGULATE :OBJECT MV289 :THAT-REL T :AGENT MV285 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV285 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
33: "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e27   BE            1 "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV296 :ISA BE :SUBJECT MV295 :PREDICATE MV298 :PRESENT "PRESENT") (:VAR MV295 :ISA WHAT)
 (:VAR MV298 :ISA MICRO-RNA :PREDICATION MV300 :HAS-DETERMINER "THE" :RAW-TEXT "miRNAs")
 (:VAR MV300 :ISA REGULATE :AGENT MV298 :THAT-REL T :OBJECT MV304 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV304 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV301 MV302 MV292 MV293 MV294))
 (:VAR MV301 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV302 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV292 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV293 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV294 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN"))

___________________
34: "What are the miRNAs that regulate EGFR, SRF, and STAT3"

                    SOURCE-START
e22   BE            1 "What are the miRNAs that regulate EGFR, SRF, and STAT3" 14
                    END-OF-SOURCE
("What are the miRNAs that regulate EGFR, SRF, and STAT3"
 (:VAR MV307 :ISA BE :SUBJECT MV306 :PREDICATE MV309 :PRESENT "PRESENT") (:VAR MV306 :ISA WHAT)
 (:VAR MV309 :ISA MICRO-RNA :PREDICATION MV311 :HAS-DETERMINER "THE" :RAW-TEXT "miRNAs")
 (:VAR MV311 :ISA REGULATE :AGENT MV309 :THAT-REL T :OBJECT MV315 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV315 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, and STAT3" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV312 MV313 MV305))
 (:VAR MV312 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV313 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV305 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
35: "What are the regulators of SRF?"

                    SOURCE-START
e12   BE            1 "What are the regulators of SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SRF?"
 (:VAR MV317 :ISA BE :SUBJECT MV316 :PREDICATE MV319 :PRESENT "PRESENT") (:VAR MV316 :ISA WHAT)
 (:VAR MV319 :ISA REGULATOR :THEME MV321 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV321 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
36: "What does STAT3 regulate in the liver?"

                    SOURCE-START
e14   REGULATE      1 "What does STAT3 regulate in the liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 regulate in the liver?"
 (:VAR MV326 :ISA REGULATE :OBJECT MV324 :AGENT MV323 :ORGAN MV329 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV324 :ISA WHAT)
 (:VAR MV323 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV329 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
37: "What does it regulate in the liver?"

                    SOURCE-START
e14   REGULATE      1 "What does it regulate in the liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it regulate in the liver?"
 (:VAR MV334 :ISA REGULATE :OBJECT MV331 :AGENT-OR-CAUSE MV333 :ORGAN MV337 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV331 :ISA WHAT) (:VAR MV333 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV337 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
38: "What genes are regulated by SMAD2?"

                    SOURCE-START
e12   REGULATE      1 "What genes are regulated by SMAD2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SMAD2?"
 (:VAR MV345 :ISA REGULATE :OBJECT MV341 :AGENT MV339 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV341 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV339 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
39: "What genes are regulated by SMDA2?"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by SMDA2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SMDA2?"
 (:VAR MV355 :ISA REGULATE :OBJECT MV348 :AGENT MV354 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV348 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV354 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
40: "What genes are regulated by SRF?"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SRF?"
 (:VAR MV363 :ISA REGULATE :OBJECT MV358 :AGENT MV362 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV358 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV362 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
41: "What genes does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does STAT3 regulate?"
 (:VAR MV369 :ISA REGULATE :OBJECT MV367 :AGENT MV365 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV367 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV365 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
42: "Which of these are regulated by SMAD2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by SMAD2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by SMAD2?"
 (:VAR MV377 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV373 :AGENT MV370 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV373 :ISA THESE :QUANTIFIER MV371 :WORD "these") (:VAR MV371 :ISA WHICH)
 (:VAR MV370 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
43: "Which of these are regulated by SMDA2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by SMDA2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by SMDA2?"
 (:VAR MV387 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV383 :AGENT MV380 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV383 :ISA THESE :QUANTIFIER MV381 :WORD "these") (:VAR MV381 :ISA WHICH)
 (:VAR MV380 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
44: "Which pathways use these?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use these?"
 (:VAR MV393 :ISA BIO-USE :AGENT MV391 :OBJECT MV394 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV391 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV394 :ISA THESE :WORD "these"))

___________________
45: "Where does STAT3 regulate the expression of c-fos?"

                    SOURCE-START
e17   REGULATE      1 "Where does STAT3 regulate the expression of c-fos" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Where does STAT3 regulate the expression of c-fos?"
 (:VAR MV399 :ISA REGULATE :LOCATION MV397 :AGENT MV395 :AFFECTED-PROCESS MV401 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV397 :ISA WHERE)
 (:VAR MV395 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV401 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV396 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV396 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
46: "can you tell me all the transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e35   TELL          1 "can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    END-OF-SOURCE
("can you tell me all the transcription factors that are shared by elk1 and srf"
 (:VAR MV421 :ISA POLAR-QUESTION :STATEMENT MV408)
 (:VAR MV408 :ISA TELL :AGENT MV407 :THEME MV404 :BENEFICIARY MV409 :MODAL "CAN")
 (:VAR MV407 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV404 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV419 :QUANTIFIER MV410 :HAS-DETERMINER "THE"
  :RAW-TEXT "transcription factors")
 (:VAR MV419 :ISA SHARE :OBJECT MV404 :THAT-REL T :PARTICIPANT MV418 :MODAL "CAN" :RAW-TEXT
  "shared")
 (:VAR MV418 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS (MV405 MV417))
 (:VAR MV405 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV417 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV410 :ISA ALL :WORD "all") (:VAR MV409 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
47: "can you tell me which transcription factors are shared by elk1 and srf"

                    SOURCE-START
e28   TELL          1 "can you tell me which transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("can you tell me which transcription factors are shared by elk1 and srf"
 (:VAR MV437 :ISA POLAR-QUESTION :STATEMENT MV426)
 (:VAR MV426 :ISA TELL :AGENT MV425 :THEME MV435 :THEME MV427 :MODAL "CAN")
 (:VAR MV425 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV435 :ISA SHARE :OBJECT MV422 :PARTICIPANT MV434 :MODAL "CAN" :RAW-TEXT "shared")
 (:VAR MV422 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT "transcription factors")
 (:VAR MV434 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS (MV423 MV433))
 (:VAR MV423 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV433 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV427 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
48: "what are the regulators of SRF?"

                    SOURCE-START
e12   BE            1 "what are the regulators of SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what are the regulators of SRF?"
 (:VAR MV439 :ISA BE :SUBJECT MV438 :PREDICATE MV441 :PRESENT "PRESENT") (:VAR MV438 :ISA WHAT)
 (:VAR MV441 :ISA REGULATOR :THEME MV443 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV443 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
49: "what does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "what does stat regulate" 5
                    END-OF-SOURCE
("what does stat regulate"
 (:VAR MV448 :ISA REGULATE :OBJECT MV445 :AGENT MV447 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV445 :ISA WHAT)
 (:VAR MV447 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME "SOAT1_HUMAN"))

___________________
50: "what is erbb?"

                    SOURCE-START
e4    BE            1 "what is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("what is erbb?" (:VAR MV450 :ISA BE :SUBJECT MV449 :PREDICATE MV451 :PRESENT "PRESENT")
 (:VAR MV449 :ISA WHAT)
 (:VAR MV451 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
51: "Is STAT3 involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "Is STAT3 involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptosis?" (:VAR MV459 :ISA POLAR-QUESTION :STATEMENT MV458)
 (:VAR MV458 :ISA INVOLVE :PARTICIPANT MV452 :THEME MV456 :PAST "PAST")
 (:VAR MV452 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV456 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
52: "Is STAT3 involved in apoptotic regulation?"

                    SOURCE-START
e14   INVOLVE       1 "Is STAT3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptotic regulation?" (:VAR MV469 :ISA POLAR-QUESTION :STATEMENT MV468)
 (:VAR MV468 :ISA INVOLVE :PARTICIPANT MV460 :THEME MV466 :PAST "PAST")
 (:VAR MV460 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV466 :ISA REGULATE :AGENT MV464 :RAW-TEXT "regulation")
 (:VAR MV464 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
53: "Is STAT3 involved in regulating apoptosis?"

                    SOURCE-START
e13   INVOLVE       1 "Is STAT3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in regulating apoptosis?" (:VAR MV478 :ISA POLAR-QUESTION :STATEMENT MV477)
 (:VAR MV477 :ISA INVOLVE :PARTICIPANT MV470 :THEME MV474 :PAST "PAST")
 (:VAR MV470 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV474 :ISA REGULATE :AFFECTED-PROCESS MV475 :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT
  "regulating")
 (:VAR MV475 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
54: "What apoptotic genes are regulated by STAT3"

                    SOURCE-START
e15   REGULATE      1 "What apoptotic genes are regulated by STAT3" 9
                    END-OF-SOURCE
("What apoptotic genes are regulated by STAT3"
 (:VAR MV487 :ISA REGULATE :OBJECT MV483 :AGENT MV479 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV483 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV482 :RAW-TEXT "genes")
 (:VAR MV482 :ISA APOPTOTIC)
 (:VAR MV479 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
55: "List the apoptotic genes"

                    SOURCE-START
e8    LIST          1 "List the apoptotic genes" 5
                    END-OF-SOURCE
("List the apoptotic genes" (:VAR MV489 :ISA LIST :THEME MV493 :PRESENT "PRESENT")
 (:VAR MV493 :ISA GENE :HAS-DETERMINER "THE" :MODIFIER MV492 :RAW-TEXT "genes")
 (:VAR MV492 :ISA APOPTOTIC))

___________________
56: "What genes regulated by STAT3 are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes regulated by STAT3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by STAT3 are involved in apoptosis?"
 (:VAR MV503 :ISA INVOLVE :THEME MV496 :THEME MV502 :PRESENT "PRESENT")
 (:VAR MV496 :ISA GENE :PREDICATION MV497 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV497 :ISA REGULATE :OBJECT MV496 :AGENT MV494 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV494 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV502 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
57: "List genes regulated by STAT3"

                    SOURCE-START
e9    LIST          1 "List genes regulated by STAT3" 7
                    END-OF-SOURCE
("List genes regulated by STAT3" (:VAR MV507 :ISA LIST :THEME MV508 :PRESENT "PRESENT")
 (:VAR MV508 :ISA GENE :PREDICATION MV509 :RAW-TEXT "genes")
 (:VAR MV509 :ISA REGULATE :OBJECT MV508 :AGENT MV506 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV506 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
58: "What genes are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What genes are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in apoptosis?"
 (:VAR MV518 :ISA INVOLVE :THEME MV513 :THEME MV517 :PRESENT "PRESENT")
 (:VAR MV513 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV517 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
59: "What genes that STAT3 regulates are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes that STAT3 regulates are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes that STAT3 regulates are involved in apoptosis?"
 (:VAR MV529 :ISA INVOLVE :THEME MV522 :THEME MV528 :PRESENT "PRESENT")
 (:VAR MV522 :ISA GENE :PREDICATION MV524 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV524 :ISA REGULATE :OBJECT MV522 :THAT-REL T :AGENT MV520 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV520 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV528 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
60: "List the genes regulated by STAT3"

                    SOURCE-START
e12   LIST          1 "List the genes regulated by STAT3" 8
                    END-OF-SOURCE
("List the genes regulated by STAT3" (:VAR MV532 :ISA LIST :THEME MV534 :PRESENT "PRESENT")
 (:VAR MV534 :ISA GENE :PREDICATION MV535 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV535 :ISA REGULATE :OBJECT MV534 :AGENT MV531 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV531 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
61: "List the STAT3 regulated genes"

                    SOURCE-START
e11   LIST          1 "List the STAT3 regulated genes" 7
                    END-OF-SOURCE
("List the STAT3 regulated genes" (:VAR MV539 :ISA LIST :THEME MV542 :PRESENT "PRESENT")
 (:VAR MV542 :ISA GENE :HAS-DETERMINER "THE" :PREDICATION MV541 :RAW-TEXT "genes")
 (:VAR MV541 :ISA REGULATE :OBJECT MV542 :AGENT MV538 :RAW-TEXT "regulated")
 (:VAR MV538 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
62: "What kinases are regulated by STAT3?"

                    SOURCE-START
e12   REGULATE      1 "What kinases are regulated by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are regulated by STAT3?"
 (:VAR MV549 :ISA REGULATE :OBJECT MV545 :AGENT MV543 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV545 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV543 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
63: "What kinases are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What kinases are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are involved in apoptosis?"
 (:VAR MV557 :ISA INVOLVE :THEME MV552 :THEME MV556 :PRESENT "PRESENT")
 (:VAR MV552 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV556 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

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
 (:VAR MV570 :ISA LET :COMPLEMENT MV587 :PRESENT "PRESENT")
 (:VAR MV587 :ISA KNOW :AGENT MV571 :STATEMENT MV586 :PRESENT "PRESENT")
 (:VAR MV571 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV586 :ISA WH-QUESTION :STATEMENT MV583 :WH IF)
 (:VAR MV583 :ISA INVOLVE :THEME MV577 :THEME MV582 :PRESENT "PRESENT")
 (:VAR MV577 :ISA GENE :QUANTIFIER MV574 :PREDICATION MV578 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV574 :ISA ANY :WORD "any")
 (:VAR MV578 :ISA REGULATE :OBJECT MV577 :AGENT MV569 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV569 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV582 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
66: "Let me know whether any of the genes stat3 regulates are involved in apoptosis"

                    SOURCE-START
e32   LET           1 "Let me know whether any of the genes stat3 regulates are involved in apoptosis" 16
                    END-OF-SOURCE
("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
 (:VAR MV589 :ISA LET :COMPLEMENT MV607 :PRESENT "PRESENT")
 (:VAR MV607 :ISA KNOW :AGENT MV590 :STATEMENT MV606 :PRESENT "PRESENT")
 (:VAR MV590 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV606 :ISA WH-QUESTION :STATEMENT MV603 :WH WHETHER)
 (:VAR MV603 :ISA INVOLVE :THEME MV597 :THEME MV602 :PRESENT "PRESENT")
 (:VAR MV597 :ISA GENE :QUANTIFIER MV594 :PREDICATION MV598 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV594 :ISA ANY :WORD "any")
 (:VAR MV598 :ISA REGULATE :OBJECT MV597 :AGENT MV588 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV588 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV602 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

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
 (:VAR MV636 :ISA TELL :THEME MV645 :BENEFICIARY MV637 :PRESENT "PRESENT")
 (:VAR MV645 :ISA WH-QUESTION :STATEMENT MV643 :WH IF)
 (:VAR MV643 :ISA INVOLVE :THEME MV635 :THEME MV642 :PRESENT "PRESENT")
 (:VAR MV635 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV642 :ISA APOPTOSIS :RAW-TEXT "apoptosis") (:VAR MV637 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
70: "Tell me whether stat3 is involved in apoptosis"

                    SOURCE-START
e17   TELL          1 "Tell me whether stat3 is involved in apoptosis" 10
                    END-OF-SOURCE
("Tell me whether stat3 is involved in apoptosis"
 (:VAR MV647 :ISA TELL :THEME MV657 :THEME MV648 :PRESENT "PRESENT")
 (:VAR MV657 :ISA WH-QUESTION :STATEMENT MV655 :WH WHETHER)
 (:VAR MV655 :ISA INVOLVE :THEME MV646 :THEME MV654 :PRESENT "PRESENT")
 (:VAR MV646 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV654 :ISA APOPTOSIS :RAW-TEXT "apoptosis") (:VAR MV648 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
71: "What are STAT3 regulated genes that are involved in apoptosis. "

                    SOURCE-START
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    PERIOD
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis."
 (:VAR MV660 :ISA BE :SUBJECT MV659 :PREDICATE MV662 :PRESENT "PRESENT") (:VAR MV659 :ISA WHAT)
 (:VAR MV662 :ISA GENE :PREDICATION MV668 :EXPRESSES MV658 :PREDICATION MV661 :RAW-TEXT "genes")
 (:VAR MV668 :ISA INVOLVE :THEME MV662 :THAT-REL T :THEME MV667 :PRESENT "PRESENT")
 (:VAR MV667 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV658 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV661 :ISA REGULATE :OBJECT MV662 :RAW-TEXT "regulated"))

___________________
72: "What are STAT3 regulated genes that are involved in apoptosis?"

                    SOURCE-START
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis?"
 (:VAR MV672 :ISA BE :SUBJECT MV671 :PREDICATE MV674 :PRESENT "PRESENT") (:VAR MV671 :ISA WHAT)
 (:VAR MV674 :ISA GENE :PREDICATION MV680 :EXPRESSES MV670 :PREDICATION MV673 :RAW-TEXT "genes")
 (:VAR MV680 :ISA INVOLVE :THEME MV674 :THAT-REL T :THEME MV679 :PRESENT "PRESENT")
 (:VAR MV679 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV670 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV673 :ISA REGULATE :OBJECT MV674 :RAW-TEXT "regulated"))

___________________
73: "What genes downstream of stat3 are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes downstream of stat3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes downstream of stat3 are involved in apoptosis?"
 (:VAR MV692 :ISA INVOLVE :THEME MV685 :THEME MV691 :PRESENT "PRESENT")
 (:VAR MV685 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV682 :HAS-DETERMINER "WHAT" :MODIFIER MV684
  :RAW-TEXT "downstream")
 (:VAR MV682 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV684 :ISA GENE :RAW-TEXT "genes") (:VAR MV691 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
74: "What is the involvement of stat3 in apoptotic regulation?"

                    SOURCE-START
e21   BE            1 "What is the involvement of stat3 in apoptotic regulation" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the involvement of stat3 in apoptotic regulation?"
 (:VAR MV697 :ISA BE :SUBJECT MV696 :PREDICATE MV699 :PRESENT "PRESENT") (:VAR MV696 :ISA WHAT)
 (:VAR MV699 :ISA INVOLVE :THEME MV704 :PARTICIPANT MV695 :HAS-DETERMINER "THE")
 (:VAR MV704 :ISA REGULATE :AGENT MV702 :RAW-TEXT "regulation")
 (:VAR MV702 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV695 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
75: "What pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve calcium?"
 (:VAR MV709 :ISA INVOLVE :PARTICIPANT MV708 :THEME MV710 :PRESENT "PRESENT")
 (:VAR MV708 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV710 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
76: "What processes involve srf"

                    SOURCE-START
e7    INVOLVE       1 "What processes involve srf" 5
                    END-OF-SOURCE
("What processes involve srf"
 (:VAR MV714 :ISA INVOLVE :PARTICIPANT MV712 :THEME MV715 :PRESENT "PRESENT")
 (:VAR MV712 :ISA BIO-PROCESS :HAS-DETERMINER "WHAT" :RAW-TEXT "processes")
 (:VAR MV715 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
77: "Which stat3 regulated genes are involved in apoptosis?"

                    SOURCE-START
e17   INVOLVE       1 "Which stat3 regulated genes are involved in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes are involved in apoptosis?"
 (:VAR MV724 :ISA INVOLVE :THEME MV719 :THEME MV723 :PRESENT "PRESENT")
 (:VAR MV719 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV718 :RAW-TEXT "genes")
 (:VAR MV718 :ISA REGULATE :OBJECT MV719 :AGENT MV716 :RAW-TEXT "regulated")
 (:VAR MV716 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV723 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
78: "Which stat3 regulated genes in the liver are involved in apoptosis?"

                    SOURCE-START
e25   INVOLVE       1 "Which stat3 regulated genes in the liver are involved in apoptosis" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes in the liver are involved in apoptosis?"
 (:VAR MV737 :ISA INVOLVE :THEME MV729 :THEME MV736 :PRESENT "PRESENT")
 (:VAR MV729 :ISA GENE :ORGAN MV732 :HAS-DETERMINER "WHICH" :PREDICATION MV728 :RAW-TEXT "genes")
 (:VAR MV732 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV728 :ISA REGULATE :OBJECT MV729 :AGENT MV726 :RAW-TEXT "regulated")
 (:VAR MV726 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV736 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
79: "Which stat3-regulated genes are involved in apoptosis?"

                    SOURCE-START
e18   INVOLVE       1 "Which stat3-regulated genes are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3-regulated genes are involved in apoptosis?"
 (:VAR MV749 :ISA INVOLVE :THEME MV743 :THEME MV747 :PRESENT "PRESENT")
 (:VAR MV743 :ISA GENE :HAS-DETERMINER "WHICH" :EXPRESSES MV740 :PREDICATION MV748 :RAW-TEXT
  "genes")
 (:VAR MV740 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV748 :ISA REGULATE :RAW-TEXT "regulated") (:VAR MV747 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
80: "Mek activates MAPK1."

                    SOURCE-START
e5    BIO-ACTIVATE  1 "Mek activates MAPK1" 5
                    PERIOD
                    END-OF-SOURCE
("Mek activates MAPK1."
 (:VAR MV753 :ISA BIO-ACTIVATE :AGENT MV752 :OBJECT MV751 :PRESENT "PRESENT" :RAW-TEXT "activates")
 (:VAR MV752 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV751 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
81: "NRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "NRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("NRAS activates RAF."
 (:VAR MV755 :ISA BIO-ACTIVATE :AGENT MV754 :OBJECT MV756 :PRESENT "PRESENT" :RAW-TEXT "activates")
 (:VAR MV754 :ISA PROTEIN :RAW-TEXT "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV756 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV759 :ISA PHOSPHORYLATE :AGENT MV757 :SUBSTRATE MV758 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV757 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV758 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
83: "DUSP6 dephosphorylates MAPK1"

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1"
 (:VAR MV762 :ISA DEPHOSPHORYLATE :AGENT MV760 :SUBSTRATE MV761 :PRESENT "PRESENT" :RAW-TEXT
  "dephosphorylates")
 (:VAR MV760 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV761 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
84: "ELK1 positively regulates FOS."

                    SOURCE-START
e6    UPREGULATE    1 "ELK1 positively regulates FOS" 6
                    PERIOD
                    END-OF-SOURCE
("ELK1 positively regulates FOS."
 (:VAR MV764 :ISA UPREGULATE :AGENT MV763 :OBJECT MV765 :PRESENT "PRESENT" :RAW-TEXT
  "positively regulates")
 (:VAR MV763 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV765 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
85: "EGFR binds the growth factor ligand EGF."

                    SOURCE-START
e13   BINDING       1 "EGFR binds the growth factor ligand EGF" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR binds the growth factor ligand EGF."
 (:VAR MV769 :ISA BINDING :BINDER MV768 :DIRECT-BINDEE MV772 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV768 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV772 :ISA PROTEIN :HAS-DETERMINER "THE" :MODIFIER MV767 :MODIFIER MV771 :RAW-TEXT "EGF"
  :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV767 :ISA GROWTH-FACTOR :RAW-TEXT "growth factor")
 (:VAR MV771 :ISA LIGAND :RAW-TEXT "ligand"))

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
 (:VAR MV779 :ISA BINDING :BINDER MV786 :DIRECT-BINDEE MV787 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV786 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGF" :COMPONENT MV777
  :COMPONENT MV776)
 (:VAR MV777 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV776 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV787 :ISA BIO-COMPLEX :QUANTIFIER MV780 :RAW-TEXT "EGFR-EGF" :COMPONENT MV782 :COMPONENT
  MV781)
 (:VAR MV780 :ISA ANOTHER :WORD "another")
 (:VAR MV782 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV781 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
88: "The EGFR-EGFR complex binds GRB2."

                    SOURCE-START
e13   BINDING       1 "The EGFR-EGFR complex binds GRB2" 9
                    PERIOD
                    END-OF-SOURCE
("The EGFR-EGFR complex binds GRB2."
 (:VAR MV793 :ISA BINDING :BINDER MV795 :DIRECT-BINDEE MV788 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV795 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGFR" :COMPONENT MV790
  :COMPONENT MV790)
 (:VAR MV790 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV790 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV788 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN"))

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
 (:VAR MV802 :ISA BINDING :BINDER MV798 :DIRECT-BINDEE MV799 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV798 :ISA PROTEIN :PREDICATION MV801 :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN")
 (:VAR MV801 :ISA BINDING :DIRECT-BINDEE MV798 :BINDER MV800 :RAW-TEXT "bound")
 (:VAR MV800 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV799 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN"))

___________________
91: "GRB2-bound SOS1 binds NRAS that is not bound to BRAF."

                    SOURCE-START
e27   BINDING       1 "GRB2-bound SOS1 binds NRAS that is not bound to BRAF" 15
                    PERIOD
                    END-OF-SOURCE
("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
 (:VAR MV806 :ISA BINDING :BINDER MV804 :DIRECT-BINDEE MV807 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV804 :ISA PROTEIN :MODIFIER MV803 :PREDICATION MV814 :RAW-TEXT "SOS1" :UID "UP:Q07889"
  :NAME "SOS1_HUMAN")
 (:VAR MV803 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN")
 (:VAR MV814 :ISA BINDING :RAW-TEXT "bound")
 (:VAR MV807 :ISA PROTEIN :PREDICATION MV815 :RAW-TEXT "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV815 :ISA BINDING :DIRECT-BINDEE MV807 :THAT-REL T :BINDEE MV813 :PRESENT "PRESENT"
  :NEGATION MV810 :RAW-TEXT "bound")
 (:VAR MV813 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV810 :ISA NOT :WORD "not"))

___________________
92: "SOS1-bound NRAS binds GTP."

                    SOURCE-START
e11   BINDING       1 "SOS1-bound NRAS binds GTP" 8
                    PERIOD
                    END-OF-SOURCE
("SOS1-bound NRAS binds GTP."
 (:VAR MV820 :ISA BINDING :BINDER MV819 :DIRECT-BINDEE MV821 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV819 :ISA PROTEIN :MODIFIER MV817 :PREDICATION MV822 :RAW-TEXT "NRAS" :UID "UP:P01111"
  :NAME "RASN_HUMAN")
 (:VAR MV817 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV822 :ISA BINDING :RAW-TEXT "bound")
 (:VAR MV821 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP"))

___________________
93: "GTP-bound NRAS that is not bound to SOS1 binds BRAF."

                    SOURCE-START
e26   BINDING       1 "GTP-bound NRAS that is not bound to SOS1 binds BRAF" 14
                    PERIOD
                    END-OF-SOURCE
("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
 (:VAR MV832 :ISA BINDING :BINDER MV826 :DIRECT-BINDEE MV833 :PRESENT "PRESENT" :RAW-TEXT "binds")
 (:VAR MV826 :ISA PROTEIN :PREDICATION MV834 :PREDICATION MV825 :RAW-TEXT "NRAS" :UID "UP:P01111"
  :NAME "RASN_HUMAN")
 (:VAR MV834 :ISA BINDING :DIRECT-BINDEE MV826 :THAT-REL T :BINDEE MV823 :PRESENT "PRESENT"
  :NEGATION MV829 :RAW-TEXT "bound")
 (:VAR MV823 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV829 :ISA NOT :WORD "not")
 (:VAR MV825 :ISA BINDING :DIRECT-BINDEE MV826 :BINDER MV824 :RAW-TEXT "bound")
 (:VAR MV824 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP")
 (:VAR MV833 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
94: "Undo"

                    SOURCE-START
e0    UNDO          1 "Undo" 2
                    END-OF-SOURCE
("Undo" (:VAR MV836 :ISA UNDO :PRESENT "PRESENT" :RAW-TEXT "Undo"))

___________________
95: "How does BRAF affect MAP2K1?"

                    SOURCE-START
e8    AFFECT        1 "How does BRAF affect MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does BRAF affect MAP2K1?"
 (:VAR MV841 :ISA AFFECT :MANNER MV838 :AGENT MV840 :OBJECT MV837 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV838 :ISA HOW)
 (:VAR MV840 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV837 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
96: "Let's highlight the downstream of AKT1."

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's highlight the downstream of AKT1" 10
                    PERIOD
                    END-OF-SOURCE
("Let's highlight the downstream of AKT1."
 (:VAR MV850 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV844 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV844 :ISA HIGHLIGHT :THEME MV846 :PRESENT "PRESENT")
 (:VAR MV846 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV843 :HAS-DETERMINER "THE" :RAW-TEXT
  "downstream")
 (:VAR MV843 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
97: "Let's move phosphorylated MAPK1 to the bottom."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated MAPK1 to the bottom" 11
                    PERIOD
                    END-OF-SOURCE
("Let's move phosphorylated MAPK1 to the bottom."
 (:VAR MV859 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV853 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV853 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV857 :THEME MV852 :PRESENT "PRESENT")
 (:VAR MV857 :ISA BOTTOM :HAS-DETERMINER "THE")
 (:VAR MV852 :ISA PROTEIN :PREDICATION MV854 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV854 :ISA PHOSPHORYLATE :SUBSTRATE MV852 :RAW-TEXT "phosphorylated"))

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
 (:VAR MV877 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV871 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV871 :ISA SHOW :AT-RELATIVE-LOCATION MV874 :STATEMENT-OR-THEME MV870 :PRESENT "PRESENT")
 (:VAR MV874 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV870 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
100: "Does ELK1 decrease FOS in the model?"

                    SOURCE-START
e18   DECREASE      1 "Does ELK1 decrease FOS in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ELK1 decrease FOS in the model?" (:VAR MV888 :ISA POLAR-QUESTION :STATEMENT MV886)
 (:VAR MV886 :ISA DECREASE :AGENT MV878 :OBJECT MV882 :RAW-TEXT "decrease")
 (:VAR MV878 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV882 :ISA PROTEIN :INFO-CONTEXT MV885 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV885 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
101: "Does ELK1 decrease the amount of FOS in the model?"

                    SOURCE-START
e26   DECREASE      1 "Does ELK1 decrease the amount of FOS in the model" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ELK1 decrease the amount of FOS in the model?"
 (:VAR MV903 :ISA POLAR-QUESTION :STATEMENT MV900)
 (:VAR MV900 :ISA DECREASE :AGENT MV889 :AFFECTED-PROCESS-OR-OBJECT MV894 :RAW-TEXT "decrease")
 (:VAR MV889 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV894 :ISA BIO-AMOUNT :MEASURED-ITEM MV896 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV896 :ISA PROTEIN :INFO-CONTEXT MV899 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV899 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
102: "Does FOS decrease ELK1 in the model?"

                    SOURCE-START
e18   DECREASE      1 "Does FOS decrease ELK1 in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS decrease ELK1 in the model?" (:VAR MV914 :ISA POLAR-QUESTION :STATEMENT MV912)
 (:VAR MV912 :ISA DECREASE :AGENT MV906 :OBJECT MV904 :RAW-TEXT "decrease")
 (:VAR MV906 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV904 :ISA PROTEIN :INFO-CONTEXT MV911 :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV911 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
103: "Does FOS vanish if we increase the amount of ELK1 10 fold?"

                    SOURCE-START
e34   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS vanish if we increase the amount of ELK1 10 fold?"
 (:VAR MV935 :ISA POLAR-QUESTION :STATEMENT MV934)
 (:VAR MV934 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV932 :EVENT MV929)
 (:VAR MV932 :ISA WH-QUESTION :STATEMENT MV930 :WH IF)
 (:VAR MV930 :ISA INCREASE :AGENT-OR-CAUSE MV920 :ADVERB MV928 :AFFECTED-PROCESS-OR-OBJECT MV924
  :RAW-TEXT "increase")
 (:VAR MV920 :ISA INTERLOCUTOR :NAME "person-and-machine") (:VAR MV928 :ISA N-FOLD :NUMBER MV927)
 (:VAR MV927 :ISA NUMBER :VALUE 10)
 (:VAR MV924 :ISA BIO-AMOUNT :MEASURED-ITEM MV915 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV915 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV929 :ISA VANISH :AGENT MV917 :RAW-TEXT "vanish")
 (:VAR MV917 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
104: "Does FOS vanish if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e37   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 by 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV958 :ISA POLAR-QUESTION :STATEMENT MV957)
 (:VAR MV957 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV955 :EVENT MV951)
 (:VAR MV955 :ISA WH-QUESTION :STATEMENT MV952 :WH IF)
 (:VAR MV952 :ISA INCREASE :AGENT-OR-CAUSE MV941 :MULTIPLIER MV950 :AFFECTED-PROCESS-OR-OBJECT
  MV945 :RAW-TEXT "increase")
 (:VAR MV941 :ISA INTERLOCUTOR :NAME "person-and-machine") (:VAR MV950 :ISA N-FOLD :NUMBER MV949)
 (:VAR MV949 :ISA NUMBER :VALUE 10)
 (:VAR MV945 :ISA BIO-AMOUNT :MEASURED-ITEM MV936 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV936 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV951 :ISA VANISH :AGENT MV938 :RAW-TEXT "vanish")
 (:VAR MV938 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
105: "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
 (:VAR MV978 :ISA POLAR-QUESTION :STATEMENT MV977)
 (:VAR MV977 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV975 :EVENT MV972)
 (:VAR MV975 :ISA WH-QUESTION :STATEMENT MV973 :WH IF)
 (:VAR MV973 :ISA INCREASE :AGENT-OR-CAUSE MV965 :MULTIPLIER MV971 :OBJECT MV960 :RAW-TEXT
  "increase")
 (:VAR MV965 :ISA INTERLOCUTOR :NAME "person-and-machine") (:VAR MV971 :ISA N-FOLD :NUMBER MV970)
 (:VAR MV970 :ISA NUMBER :VALUE 10)
 (:VAR MV960 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV972 :ISA VANISH :AGENT MV959 :RAW-TEXT "vanish")
 (:VAR MV959 :ISA PROTEIN :PREDICATION MV962 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV962 :ISA PHOSPHORYLATE :SUBSTRATE MV959 :RAW-TEXT "phosphorylated"))

___________________
106: "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e41   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV1002 :ISA POLAR-QUESTION :STATEMENT MV1001)
 (:VAR MV1001 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV999 :EVENT MV995)
 (:VAR MV999 :ISA WH-QUESTION :STATEMENT MV996 :WH IF)
 (:VAR MV996 :ISA INCREASE :AGENT-OR-CAUSE MV985 :MULTIPLIER MV994 :AFFECTED-PROCESS-OR-OBJECT
  MV989 :RAW-TEXT "increase")
 (:VAR MV985 :ISA INTERLOCUTOR :NAME "person-and-machine") (:VAR MV994 :ISA N-FOLD :NUMBER MV993)
 (:VAR MV993 :ISA NUMBER :VALUE 10)
 (:VAR MV989 :ISA BIO-AMOUNT :MEASURED-ITEM MV980 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV980 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV995 :ISA VANISH :AGENT MV979 :RAW-TEXT "vanish")
 (:VAR MV979 :ISA PROTEIN :PREDICATION MV982 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV982 :ISA PHOSPHORYLATE :SUBSTRATE MV979 :RAW-TEXT "phosphorylated"))

___________________
107: "Does the amount of phosphorylated MAPK1 ever increase?"

                    SOURCE-START
e21   INCREASE      1 "Does the amount of phosphorylated MAPK1 ever increase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 ever increase?"
 (:VAR MV1014 :ISA POLAR-QUESTION :STATEMENT MV1012)
 (:VAR MV1012 :ISA INCREASE :CAUSE MV1006 :ADVERB MV1009 :RAW-TEXT "increase")
 (:VAR MV1006 :ISA BIO-AMOUNT :MEASURED-ITEM MV1003 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1003 :ISA PROTEIN :PREDICATION MV1008 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1008 :ISA PHOSPHORYLATE :SUBSTRATE MV1003 :RAW-TEXT "phosphorylated")
 (:VAR MV1009 :ISA EVER))

___________________
108: "Is MAP2K1 bound to MAPK1 eventually high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is MAP2K1 bound to MAPK1 eventually high" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAP2K1 bound to MAPK1 eventually high?" (:VAR MV1024 :ISA POLAR-QUESTION :STATEMENT MV1023)
 (:VAR MV1023 :ISA COPULAR-PREDICATION :ITEM MV1015 :VALUE MV1021 :PREDICATE MV1017)
 (:VAR MV1015 :ISA PROTEIN :PREDICATION MV1018 :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV1018 :ISA BINDING :DIRECT-BINDEE MV1015 :BINDEE MV1016 :PAST "PAST" :RAW-TEXT "bound")
 (:VAR MV1016 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1021 :ISA HIGH :ADVERB MV1020) (:VAR MV1020 :ISA EVENTUALLY) (:VAR MV1017 :ISA BE))

___________________
109: "Is MAPK1 bound to MAP2K1 transient?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Is MAPK1 bound to MAP2K1 transient" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAPK1 bound to MAP2K1 transient?" (:VAR MV1033 :ISA POLAR-QUESTION :STATEMENT MV1032)
 (:VAR MV1032 :ISA COPULAR-PREDICATION :ITEM MV1025 :VALUE MV1030 :PREDICATE MV1027)
 (:VAR MV1025 :ISA PROTEIN :PREDICATION MV1028 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1028 :ISA BINDING :DIRECT-BINDEE MV1025 :BINDEE MV1026 :PAST "PAST" :RAW-TEXT "bound")
 (:VAR MV1026 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1030 :ISA TRANSIENT) (:VAR MV1027 :ISA BE))

___________________
110: "Is MAPK1-bound MAP2K1 sustained?"

                    SOURCE-START
e13   SUSTAINED     1 "Is MAPK1-bound MAP2K1 sustained" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAPK1-bound MAP2K1 sustained?" (:VAR MV1041 :ISA POLAR-QUESTION :STATEMENT MV1039)
 (:VAR MV1039 :ISA SUSTAINED :PARTICIPANT MV1035 :PAST "PAST")
 (:VAR MV1035 :ISA PROTEIN :MODIFIER MV1034 :PREDICATION MV1040 :RAW-TEXT "MAP2K1" :UID "UP:Q02750"
  :NAME "MP2K1_HUMAN")
 (:VAR MV1034 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1040 :ISA BINDING :RAW-TEXT "bound"))

___________________
111: "Is phosphorylated MAPK1 always high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 always high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 always high?" (:VAR MV1048 :ISA POLAR-QUESTION :STATEMENT MV1047)
 (:VAR MV1047 :ISA COPULAR-PREDICATION :ITEM MV1042 :VALUE MV1046 :PREDICATE MV1043)
 (:VAR MV1042 :ISA PROTEIN :PREDICATION MV1044 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1044 :ISA PHOSPHORYLATE :SUBSTRATE MV1042 :RAW-TEXT "phosphorylated")
 (:VAR MV1046 :ISA HIGH :ADVERB MV1045) (:VAR MV1045 :ISA ALWAYS) (:VAR MV1043 :ISA BE))

___________________
112: "Is phosphorylated MAPK1 eventually high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 eventually high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 eventually high?" (:VAR MV1055 :ISA POLAR-QUESTION :STATEMENT MV1054)
 (:VAR MV1054 :ISA COPULAR-PREDICATION :ITEM MV1049 :VALUE MV1053 :PREDICATE MV1050)
 (:VAR MV1049 :ISA PROTEIN :PREDICATION MV1051 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1051 :ISA PHOSPHORYLATE :SUBSTRATE MV1049 :RAW-TEXT "phosphorylated")
 (:VAR MV1053 :ISA HIGH :ADVERB MV1052) (:VAR MV1052 :ISA EVENTUALLY) (:VAR MV1050 :ISA BE))

___________________
113: "Is phosphorylated MAPK1 ever high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 ever high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 ever high?" (:VAR MV1062 :ISA POLAR-QUESTION :STATEMENT MV1061)
 (:VAR MV1061 :ISA COPULAR-PREDICATION :ITEM MV1056 :VALUE MV1060 :PREDICATE MV1057)
 (:VAR MV1056 :ISA PROTEIN :PREDICATION MV1058 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1058 :ISA PHOSPHORYLATE :SUBSTRATE MV1056 :RAW-TEXT "phosphorylated")
 (:VAR MV1060 :ISA HIGH :ADVERB MV1059) (:VAR MV1059 :ISA EVER) (:VAR MV1057 :ISA BE))

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
("Is phosphorylated MAPK1 high?" (:VAR MV1078 :ISA POLAR-QUESTION :STATEMENT MV1077)
 (:VAR MV1077 :ISA COPULAR-PREDICATION :ITEM MV1073 :VALUE MV1076 :PREDICATE MV1074)
 (:VAR MV1073 :ISA PROTEIN :PREDICATION MV1075 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1075 :ISA PHOSPHORYLATE :SUBSTRATE MV1073 :RAW-TEXT "phosphorylated")
 (:VAR MV1076 :ISA HIGH) (:VAR MV1074 :ISA BE))

___________________
116: "Is phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e20   SUSTAINED     1 "Is phosphorylated MAPK1 sustained at a high level" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1090 :ISA POLAR-QUESTION :STATEMENT MV1089)
 (:VAR MV1089 :ISA SUSTAINED :PARTICIPANT MV1079 :LEVEL MV1087 :PAST "PAST")
 (:VAR MV1079 :ISA PROTEIN :PREDICATION MV1081 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1081 :ISA PHOSPHORYLATE :SUBSTRATE MV1079 :RAW-TEXT "phosphorylated")
 (:VAR MV1087 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1086 :RAW-TEXT "level")
 (:VAR MV1086 :ISA HIGH))

___________________
117: "Is phosphorylated MAPK1 sustained?"

                    SOURCE-START
e9    SUSTAINED     1 "Is phosphorylated MAPK1 sustained" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained?" (:VAR MV1096 :ISA POLAR-QUESTION :STATEMENT MV1095)
 (:VAR MV1095 :ISA SUSTAINED :PARTICIPANT MV1091 :PAST "PAST")
 (:VAR MV1091 :ISA PROTEIN :PREDICATION MV1093 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1093 :ISA PHOSPHORYLATE :SUBSTRATE MV1091 :RAW-TEXT "phosphorylated"))

___________________
118: "Is phosphorylated MAPK1 transient?"

                    SOURCE-START
e9    COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 transient" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 transient?" (:VAR MV1102 :ISA POLAR-QUESTION :STATEMENT MV1101)
 (:VAR MV1101 :ISA COPULAR-PREDICATION :ITEM MV1097 :VALUE MV1100 :PREDICATE MV1098)
 (:VAR MV1097 :ISA PROTEIN :PREDICATION MV1099 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1099 :ISA PHOSPHORYLATE :SUBSTRATE MV1097 :RAW-TEXT "phosphorylated")
 (:VAR MV1100 :ISA TRANSIENT) (:VAR MV1098 :ISA BE))

___________________
119: "Is the MAP2K1-MAPK1 complex ever high?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Is the MAP2K1-MAPK1 complex ever high" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex ever high?" (:VAR MV1112 :ISA POLAR-QUESTION :STATEMENT MV1111)
 (:VAR MV1111 :ISA COPULAR-PREDICATION :ITEM MV1107 :VALUE MV1109 :PREDICATE MV1105)
 (:VAR MV1107 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :COMPONENT MV1103 :COMPONENT MV1110 :RAW-TEXT
  "complex")
 (:VAR MV1103 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1110 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1109 :ISA HIGH :ADVERB MV1108) (:VAR MV1108 :ISA EVER) (:VAR MV1105 :ISA BE))

___________________
120: "Is the MAP2K1-MAPK1 complex formed?"

                    SOURCE-START
e15   BIO-FORM      1 "Is the MAP2K1-MAPK1 complex formed" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex formed?" (:VAR MV1120 :ISA POLAR-QUESTION :STATEMENT MV1118)
 (:VAR MV1118 :ISA BIO-FORM :AGENT MV1117 :PAST "PAST" :RAW-TEXT "formed")
 (:VAR MV1117 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :COMPONENT MV1113 :COMPONENT MV1119 :RAW-TEXT
  "complex")
 (:VAR MV1113 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1119 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
121: "Is the amount of FOS always low if we increase ELK1 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 10 fold?"
 (:VAR MV1141 :ISA POLAR-QUESTION :STATEMENT MV1140)
 (:VAR MV1140 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1136 :EVENT MV1138)
 (:VAR MV1136 :ISA WH-QUESTION :STATEMENT MV1132 :WH IF)
 (:VAR MV1132 :ISA INCREASE :AGENT-OR-CAUSE MV1130 :ADVERB MV1135 :OBJECT MV1121 :PRESENT "PRESENT"
  :RAW-TEXT "increase")
 (:VAR MV1130 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1135 :ISA N-FOLD :NUMBER MV1134) (:VAR MV1134 :ISA NUMBER :VALUE 10)
 (:VAR MV1121 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1138 :ISA COPULAR-PREDICATION :ITEM MV1124 :VALUE MV1128 :PREDICATE MV1122)
 (:VAR MV1124 :ISA BIO-AMOUNT :MEASURED-ITEM MV1126 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1126 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1128 :ISA LOW :ADVERB MV1127) (:VAR MV1127 :ISA ALWAYS) (:VAR MV1122 :ISA BE))

___________________
122: "Is the amount of FOS always low if we increase ELK1 by 100 fold?"

                    SOURCE-START
e36   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 by 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
 (:VAR MV1164 :ISA POLAR-QUESTION :STATEMENT MV1163)
 (:VAR MV1163 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1159 :EVENT MV1161)
 (:VAR MV1159 :ISA WH-QUESTION :STATEMENT MV1153 :WH IF)
 (:VAR MV1153 :ISA INCREASE :AGENT-OR-CAUSE MV1151 :MULTIPLIER MV1157 :OBJECT MV1142 :PRESENT
  "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1151 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1157 :ISA N-FOLD :NUMBER MV1156) (:VAR MV1156 :ISA NUMBER :VALUE 100)
 (:VAR MV1142 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1161 :ISA COPULAR-PREDICATION :ITEM MV1145 :VALUE MV1149 :PREDICATE MV1143)
 (:VAR MV1145 :ISA BIO-AMOUNT :MEASURED-ITEM MV1147 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1147 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1149 :ISA LOW :ADVERB MV1148) (:VAR MV1148 :ISA ALWAYS) (:VAR MV1143 :ISA BE))

___________________
123: "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"

                    SOURCE-START
e41   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
 (:VAR MV1189 :ISA POLAR-QUESTION :STATEMENT MV1188)
 (:VAR MV1188 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1184 :EVENT MV1186)
 (:VAR MV1184 :ISA WH-QUESTION :STATEMENT MV1176 :WH IF)
 (:VAR MV1176 :ISA INCREASE :AGENT-OR-CAUSE MV1174 :ADVERB MV1182 :AFFECTED-PROCESS-OR-OBJECT
  MV1178 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1174 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1182 :ISA N-FOLD :NUMBER MV1181) (:VAR MV1181 :ISA NUMBER :VALUE 100)
 (:VAR MV1178 :ISA BIO-AMOUNT :MEASURED-ITEM MV1165 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1165 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1186 :ISA COPULAR-PREDICATION :ITEM MV1168 :VALUE MV1172 :PREDICATE MV1166)
 (:VAR MV1168 :ISA BIO-AMOUNT :MEASURED-ITEM MV1170 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1170 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1172 :ISA HIGH :ADVERB MV1171) (:VAR MV1171 :ISA EVER) (:VAR MV1166 :ISA BE))

___________________
124: "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"

                    SOURCE-START
e44   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
 (:VAR MV1216 :ISA POLAR-QUESTION :STATEMENT MV1215)
 (:VAR MV1215 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1211 :EVENT MV1213)
 (:VAR MV1211 :ISA WH-QUESTION :STATEMENT MV1201 :WH IF)
 (:VAR MV1201 :ISA INCREASE :AGENT-OR-CAUSE MV1199 :MULTIPLIER MV1208 :AFFECTED-PROCESS-OR-OBJECT
  MV1203 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1199 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1208 :ISA N-FOLD :NUMBER MV1207) (:VAR MV1207 :ISA NUMBER :VALUE 100)
 (:VAR MV1203 :ISA BIO-AMOUNT :MEASURED-ITEM MV1190 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1190 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1213 :ISA COPULAR-PREDICATION :ITEM MV1193 :VALUE MV1197 :PREDICATE MV1191)
 (:VAR MV1193 :ISA BIO-AMOUNT :MEASURED-ITEM MV1195 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1195 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1197 :ISA HIGH :ADVERB MV1196) (:VAR MV1196 :ISA EVER) (:VAR MV1191 :ISA BE))

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
 (:VAR MV1237 :ISA POLAR-QUESTION :STATEMENT MV1236)
 (:VAR MV1236 :ISA COPULAR-PREDICATION :ITEM MV1230 :VALUE MV1234 :PREDICATE MV1228)
 (:VAR MV1230 :ISA BIO-AMOUNT :MEASURED-ITEM MV1227 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1227 :ISA PROTEIN :PREDICATION MV1232 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1232 :ISA PHOSPHORYLATE :SUBSTRATE MV1227 :RAW-TEXT "phosphorylated")
 (:VAR MV1234 :ISA HIGH :ADVERB MV1233) (:VAR MV1233 :ISA EVENTUALLY) (:VAR MV1228 :ISA BE))

___________________
127: "Is the amount of phosphorylated MAPK1 ever high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 ever high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever high?"
 (:VAR MV1248 :ISA POLAR-QUESTION :STATEMENT MV1247)
 (:VAR MV1247 :ISA COPULAR-PREDICATION :ITEM MV1241 :VALUE MV1245 :PREDICATE MV1239)
 (:VAR MV1241 :ISA BIO-AMOUNT :MEASURED-ITEM MV1238 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1238 :ISA PROTEIN :PREDICATION MV1243 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1243 :ISA PHOSPHORYLATE :SUBSTRATE MV1238 :RAW-TEXT "phosphorylated")
 (:VAR MV1245 :ISA HIGH :ADVERB MV1244) (:VAR MV1244 :ISA EVER) (:VAR MV1239 :ISA BE))

___________________
128: "Is the amount of phosphorylated MAPK1 ever increasing?"

                    SOURCE-START
e20   INCREASE      1 "Is the amount of phosphorylated MAPK1 ever increasing" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever increasing?"
 (:VAR MV1259 :ISA POLAR-QUESTION :STATEMENT MV1257)
 (:VAR MV1257 :ISA INCREASE :CAUSE MV1252 :ADVERB MV1255 :RAW-TEXT "increasing")
 (:VAR MV1252 :ISA BIO-AMOUNT :MEASURED-ITEM MV1249 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1249 :ISA PROTEIN :PREDICATION MV1254 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1254 :ISA PHOSPHORYLATE :SUBSTRATE MV1249 :RAW-TEXT "phosphorylated")
 (:VAR MV1255 :ISA EVER))

___________________
129: "Is the amount of phosphorylated MAPK1 high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 high" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 high?" (:VAR MV1269 :ISA POLAR-QUESTION :STATEMENT MV1268)
 (:VAR MV1268 :ISA COPULAR-PREDICATION :ITEM MV1263 :VALUE MV1266 :PREDICATE MV1261)
 (:VAR MV1263 :ISA BIO-AMOUNT :MEASURED-ITEM MV1260 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1260 :ISA PROTEIN :PREDICATION MV1265 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1265 :ISA PHOSPHORYLATE :SUBSTRATE MV1260 :RAW-TEXT "phosphorylated")
 (:VAR MV1266 :ISA HIGH) (:VAR MV1261 :ISA BE))

___________________
130: "Is the amount of phosphorylated MAPK1 sometimes high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 sometimes high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sometimes high?"
 (:VAR MV1280 :ISA POLAR-QUESTION :STATEMENT MV1279)
 (:VAR MV1279 :ISA COPULAR-PREDICATION :ITEM MV1273 :VALUE MV1277 :PREDICATE MV1271)
 (:VAR MV1273 :ISA BIO-AMOUNT :MEASURED-ITEM MV1270 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1270 :ISA PROTEIN :PREDICATION MV1275 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1275 :ISA PHOSPHORYLATE :SUBSTRATE MV1270 :RAW-TEXT "phosphorylated")
 (:VAR MV1277 :ISA HIGH :ADVERB MV1276) (:VAR MV1276 :ISA SOMETIMES) (:VAR MV1271 :ISA BE))

___________________
131: "Is the amount of phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e28   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained at a high level" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1296 :ISA POLAR-QUESTION :STATEMENT MV1295)
 (:VAR MV1295 :ISA SUSTAINED :PARTICIPANT MV1284 :LEVEL MV1292 :PAST "PAST")
 (:VAR MV1284 :ISA BIO-AMOUNT :MEASURED-ITEM MV1281 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1281 :ISA PROTEIN :PREDICATION MV1286 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1286 :ISA PHOSPHORYLATE :SUBSTRATE MV1281 :RAW-TEXT "phosphorylated")
 (:VAR MV1292 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1291 :RAW-TEXT "level")
 (:VAR MV1291 :ISA HIGH))

___________________
132: "Is the amount of phosphorylated MAPK1 sustained?"

                    SOURCE-START
e17   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained?"
 (:VAR MV1306 :ISA POLAR-QUESTION :STATEMENT MV1304)
 (:VAR MV1304 :ISA SUSTAINED :PARTICIPANT MV1300 :PAST "PAST")
 (:VAR MV1300 :ISA BIO-AMOUNT :MEASURED-ITEM MV1297 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1297 :ISA PROTEIN :PREDICATION MV1302 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1302 :ISA PHOSPHORYLATE :SUBSTRATE MV1297 :RAW-TEXT "phosphorylated"))

___________________
133: "Is the amount of phosphorylated MAPK1 transient?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 transient" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 transient?"
 (:VAR MV1316 :ISA POLAR-QUESTION :STATEMENT MV1315)
 (:VAR MV1315 :ISA COPULAR-PREDICATION :ITEM MV1310 :VALUE MV1313 :PREDICATE MV1308)
 (:VAR MV1310 :ISA BIO-AMOUNT :MEASURED-ITEM MV1307 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1307 :ISA PROTEIN :PREDICATION MV1312 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1312 :ISA PHOSPHORYLATE :SUBSTRATE MV1307 :RAW-TEXT "phosphorylated")
 (:VAR MV1313 :ISA TRANSIENT) (:VAR MV1308 :ISA BE))

___________________
134: "Will the amount of phosphorylated MAPK1 be high?"

                    SOURCE-START
e20   COPULAR-PREDICATION 1 "Will the amount of phosphorylated MAPK1 be high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Will the amount of phosphorylated MAPK1 be high?"
 (:VAR MV1327 :ISA POLAR-QUESTION :STATEMENT MV1325)
 (:VAR MV1325 :ISA COPULAR-PREDICATION :ITEM MV1320 :VALUE MV1324 :PREDICATE MV1323)
 (:VAR MV1320 :ISA BIO-AMOUNT :MEASURED-ITEM MV1317 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1317 :ISA PROTEIN :PREDICATION MV1322 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1322 :ISA PHOSPHORYLATE :SUBSTRATE MV1317 :RAW-TEXT "phosphorylated")
 (:VAR MV1324 :ISA HIGH) (:VAR MV1323 :ISA BE :MODAL "WILL"))

___________________
135: "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e34   EVENT-RELATION  1 "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
 (:VAR MV1348 :ISA POLAR-QUESTION :STATEMENT MV1347)
 (:VAR MV1347 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1344 :EVENT MV1345)
 (:VAR MV1344 :ISA WH-QUESTION :STATEMENT MV1336 :WH IF)
 (:VAR MV1336 :ISA INCREASE :AGENT-OR-CAUSE MV1334 :ADVERB MV1342 :AFFECTED-PROCESS-OR-OBJECT
  MV1338 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1334 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1342 :ISA N-FOLD :NUMBER MV1341) (:VAR MV1341 :ISA NUMBER :VALUE 100)
 (:VAR MV1338 :ISA BIO-AMOUNT :MEASURED-ITEM MV1329 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1329 :ISA MOLECULE :RAW-TEXT "SB525334" :UID "PCID:9967941")
 (:VAR MV1345 :ISA COPULAR-PREDICATION :ITEM MV1328 :VALUE MV1332 :PREDICATE MV1330)
 (:VAR MV1328 :ISA PROTEIN :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME "TGFR1_HUMAN")
 (:VAR MV1332 :ISA LOW :ADVERB MV1331) (:VAR MV1331 :ISA EVENTUALLY) (:VAR MV1330 :ISA BE))

___________________
136: "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"

                    SOURCE-START
e39   EVENT-RELATION  1 "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
 (:VAR MV1373 :ISA POLAR-QUESTION :STATEMENT MV1372)
 (:VAR MV1372 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1369 :EVENT MV1370)
 (:VAR MV1369 :ISA WH-QUESTION :STATEMENT MV1366 :WH IF)
 (:VAR MV1366 :ISA INCREASE :AFFECTED-PROCESS-OR-OBJECT MV1357 :MULTIPLIER MV1364 :RAW-TEXT
  "increased")
 (:VAR MV1357 :ISA BIO-AMOUNT :MEASURED-ITEM MV1350 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1350 :ISA MOLECULE :RAW-TEXT "SB525334" :UID "PCID:9967941")
 (:VAR MV1364 :ISA N-FOLD :NUMBER MV1363) (:VAR MV1363 :ISA NUMBER :VALUE 100)
 (:VAR MV1370 :ISA COPULAR-PREDICATION :ITEM MV1349 :VALUE MV1354 :PREDICATE MV1351)
 (:VAR MV1349 :ISA PROTEIN :PREDICATION MV1352 :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME
  "TGFR1_HUMAN")
 (:VAR MV1352 :ISA ACTIVE) (:VAR MV1354 :ISA LOW :ADVERB MV1353) (:VAR MV1353 :ISA EVENTUALLY)
 (:VAR MV1351 :ISA BE))

___________________
137: "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e42   EVENT-RELATION  1 "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
 (:VAR MV1398 :ISA POLAR-QUESTION :STATEMENT MV1397)
 (:VAR MV1397 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1393 :EVENT MV1395)
 (:VAR MV1393 :ISA WH-QUESTION :STATEMENT MV1385 :WH IF)
 (:VAR MV1385 :ISA INCREASE :AGENT-OR-CAUSE MV1383 :ADVERB MV1391 :AFFECTED-PROCESS-OR-OBJECT
  MV1387 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1383 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1391 :ISA N-FOLD :NUMBER MV1390) (:VAR MV1390 :ISA NUMBER :VALUE 100)
 (:VAR MV1387 :ISA BIO-AMOUNT :MEASURED-ITEM MV1375 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1375 :ISA MOLECULE :RAW-TEXT "SB525334" :UID "PCID:9967941")
 (:VAR MV1395 :ISA COPULAR-PREDICATION :ITEM MV1378 :VALUE MV1381 :PREDICATE MV1376)
 (:VAR MV1378 :ISA BIO-AMOUNT :MEASURED-ITEM MV1374 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1374 :ISA PROTEIN :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME "TGFR1_HUMAN")
 (:VAR MV1381 :ISA LOW :ADVERB MV1380) (:VAR MV1380 :ISA EVENTUALLY) (:VAR MV1376 :ISA BE))

___________________
138: "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"

                    SOURCE-START
e44   EVENT-RELATION  1 "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold" 21
                    END-OF-SOURCE
("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
 (:VAR MV1424 :ISA POLAR-QUESTION :STATEMENT MV1423)
 (:VAR MV1423 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1419 :EVENT MV1421)
 (:VAR MV1419 :ISA WH-QUESTION :STATEMENT MV1411 :WH IF)
 (:VAR MV1411 :ISA INCREASE :AGENT-OR-CAUSE MV1409 :ADVERB MV1417 :AFFECTED-PROCESS-OR-OBJECT
  MV1413 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1409 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1417 :ISA N-FOLD :NUMBER MV1416) (:VAR MV1416 :ISA NUMBER :VALUE 100)
 (:VAR MV1413 :ISA BIO-AMOUNT :MEASURED-ITEM MV1400 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1400 :ISA MOLECULE :RAW-TEXT "SB-525334" :UID "PCID:9967941")
 (:VAR MV1421 :ISA COPULAR-PREDICATION :ITEM MV1403 :VALUE MV1407 :PREDICATE MV1401)
 (:VAR MV1403 :ISA BIO-AMOUNT :MEASURED-ITEM MV1399 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1399 :ISA PROTEIN :PREDICATION MV1405 :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME
  "TGFR1_HUMAN")
 (:VAR MV1405 :ISA ACTIVE) (:VAR MV1407 :ISA LOW :ADVERB MV1406) (:VAR MV1406 :ISA ALWAYS)
 (:VAR MV1401 :ISA BE))

___________________
139: "Let's move AKT1 and MAPK1 into mitochondrion."

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's move AKT1 and MAPK1 into mitochondrion" 12
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 and MAPK1 into mitochondrion."
 (:VAR MV1434 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1428 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV1428 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV1431 :THEME MV1432 :PRESENT
  "PRESENT")
 (:VAR MV1431 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME "Mitochondrion" :UID
  "UP:SL-0173")
 (:VAR MV1432 :ISA COLLECTION :RAW-TEXT "AKT1 and MAPK1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV1426 MV1427))
 (:VAR MV1426 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV1427 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
140: "FEN1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "FEN1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("FEN1 phosphorylates AKT1."
 (:VAR MV1437 :ISA PHOSPHORYLATE :AGENT MV1435 :SUBSTRATE MV1436 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV1435 :ISA PROTEIN :RAW-TEXT "FEN1" :UID "UP:P39748" :NAME "FEN1_HUMAN")
 (:VAR MV1436 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
141: "Move all into mitochondrion."

                    SOURCE-START
e7    MOVE-SOMETHING-SOMEWHERE  1 "Move all into mitochondrion" 5
                    PERIOD
                    END-OF-SOURCE
("Move all into mitochondrion."
 (:VAR MV1438 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV1441 :THEME MV1443 :PRESENT
  "PRESENT")
 (:VAR MV1441 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME "Mitochondrion" :UID
  "UP:SL-0173")
 (:VAR MV1443 :ISA ALL :WORD "all"))

___________________
142: "AKT1 phosphorylates MAPK1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("AKT1 phosphorylates MAPK1."
 (:VAR MV1446 :ISA PHOSPHORYLATE :AGENT MV1444 :SUBSTRATE MV1445 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV1444 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV1445 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
143: "Let's highlight the upstream of phosphorylated MAPK1."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's highlight the upstream of phosphorylated MAPK1" 11
                    PERIOD
                    END-OF-SOURCE
("Let's highlight the upstream of phosphorylated MAPK1."
 (:VAR MV1456 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1449 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV1449 :ISA HIGHLIGHT :THEME MV1451 :PRESENT "PRESENT")
 (:VAR MV1451 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1448 :HAS-DETERMINER "THE" :RAW-TEXT
  "upstream")
 (:VAR MV1448 :ISA PROTEIN :PREDICATION MV1454 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1454 :ISA PHOSPHORYLATE :SUBSTRATE MV1448 :RAW-TEXT "phosphorylated"))

___________________
144: "Let's show phosphorylated MAPK1 on the top."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's show phosphorylated MAPK1 on the top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show phosphorylated MAPK1 on the top."
 (:VAR MV1466 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1459 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV1459 :ISA SHOW :AT-RELATIVE-LOCATION MV1463 :STATEMENT-OR-THEME MV1458 :PRESENT "PRESENT")
 (:VAR MV1463 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV1458 :ISA PROTEIN :PREDICATION MV1460 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1460 :ISA PHOSPHORYLATE :SUBSTRATE MV1458 :RAW-TEXT "phosphorylated"))

___________________
145: "Let's show the downstream of AKT1 on the top."

                    SOURCE-START
e24   EXPLICIT-SUGGESTION 1 "Let's show the downstream of AKT1 on the top" 13
                    PERIOD
                    END-OF-SOURCE
("Let's show the downstream of AKT1 on the top."
 (:VAR MV1480 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1469 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV1469 :ISA SHOW :AT-RELATIVE-LOCATION MV1476 :STATEMENT-OR-THEME MV1471 :PRESENT "PRESENT")
 (:VAR MV1476 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV1471 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV1468 :HAS-DETERMINER "THE" :RAW-TEXT
  "downstream")
 (:VAR MV1468 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
146: "Let's move mitochondrion elements to the top."

                    SOURCE-START
e16   EXPLICIT-SUGGESTION 1 "Let's move mitochondrion elements to the top" 10
                    PERIOD
                    END-OF-SOURCE
("Let's move mitochondrion elements to the top."
 (:VAR MV1490 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV1482 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV1482 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV1487 :THEME MV1484 :PRESENT "PRESENT")
 (:VAR MV1487 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV1484 :ISA ELEMENT :MODIFIER MV1483)
 (:VAR MV1483 :ISA CELLULAR-LOCATION :RAW-TEXT "mitochondrion" :NAME "Mitochondrion" :UID
  "UP:SL-0173"))

___________________
147: "How does BRAF affect MAPK1?"

                    SOURCE-START
e8    AFFECT        1 "How does BRAF affect MAPK1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does BRAF affect MAPK1?"
 (:VAR MV1495 :ISA AFFECT :MANNER MV1492 :AGENT MV1494 :OBJECT MV1491 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV1492 :ISA HOW)
 (:VAR MV1494 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1491 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
148: "How does MAPK1 affect BRAF?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect BRAF?"
 (:VAR MV1499 :ISA AFFECT :MANNER MV1497 :AGENT MV1496 :OBJECT MV1500 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV1497 :ISA HOW)
 (:VAR MV1496 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1500 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
149: "What is the path between BRAF and MAPK1?"

                    SOURCE-START
e15   BE            1 "What is the path between BRAF and MAPK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the path between BRAF and MAPK1?"
 (:VAR MV1503 :ISA BE :SUBJECT MV1502 :PREDICATE MV1505 :PRESENT "PRESENT") (:VAR MV1502 :ISA WHAT)
 (:VAR MV1505 :ISA PATH :ENDPOINTS MV1509 :HAS-DETERMINER "THE")
 (:VAR MV1509 :ISA COLLECTION :RAW-TEXT "BRAF and MAPK1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV1507 MV1501))
 (:VAR MV1507 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1501 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
150: "How does MAPK1 affect JUND?"

                    SOURCE-START
e8    AFFECT        1 "How does MAPK1 affect JUND" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK1 affect JUND?"
 (:VAR MV1514 :ISA AFFECT :MANNER MV1512 :AGENT MV1511 :OBJECT MV1515 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV1512 :ISA HOW)
 (:VAR MV1511 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1515 :ISA PROTEIN :RAW-TEXT "JUND" :UID "UP:P17535" :NAME "JUND_HUMAN"))

___________________
151: "How does SETDB1 affect ADAM17?"

                    SOURCE-START
e9    AFFECT        1 "How does SETDB1 affect ADAM17" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does SETDB1 affect ADAM17?"
 (:VAR MV1520 :ISA AFFECT :MANNER MV1518 :AGENT MV1516 :OBJECT MV1517 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV1518 :ISA HOW)
 (:VAR MV1516 :ISA PROTEIN :RAW-TEXT "SETDB1" :UID "UP:Q15047" :NAME "SETB1_HUMAN")
 (:VAR MV1517 :ISA PROTEIN :RAW-TEXT "ADAM17" :UID "UP:P78536" :NAME "ADA17_HUMAN"))

___________________
152: "How does KRAS affect MAPK3?"

                    SOURCE-START
e8    AFFECT        1 "How does KRAS affect MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS affect MAPK3?"
 (:VAR MV1525 :ISA AFFECT :MANNER MV1522 :AGENT MV1524 :OBJECT MV1521 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV1522 :ISA HOW)
 (:VAR MV1524 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV1521 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME "MK03_HUMAN"))

___________________
153: "How does  ITGAV affect ILK?"

                    SOURCE-START
e7    AFFECT        1 "How does  ITGAV affect ILK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does  ITGAV affect ILK?"
 (:VAR MV1529 :ISA AFFECT :MANNER MV1526 :AGENT MV1528 :OBJECT MV1530 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV1526 :ISA HOW)
 (:VAR MV1528 :ISA PROTEIN :RAW-TEXT "ITGAV" :UID "UP:P06756" :NAME "ITAV_HUMAN")
 (:VAR MV1530 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

___________________
154: "What genes does MAPK1 phosphorylate?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "What genes does MAPK1 phosphorylate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does MAPK1 phosphorylate?"
 (:VAR MV1535 :ISA PHOSPHORYLATE :AMINO-ACID MV1533 :AGENT MV1531 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylate")
 (:VAR MV1533 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1531 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
155: "What pathways affect BRAF?"

                    SOURCE-START
e6    AFFECT        1 "What pathways affect BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways affect BRAF?"
 (:VAR MV1538 :ISA AFFECT :AGENT MV1537 :OBJECT MV1539 :PRESENT "PRESENT" :RAW-TEXT "affect")
 (:VAR MV1537 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV1539 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
156: "What genes activate ILK?"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "What genes activate ILK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes activate ILK?"
 (:VAR MV1542 :ISA BIO-ACTIVATE :AGENT MV1541 :OBJECT MV1543 :PRESENT "PRESENT" :RAW-TEXT
  "activate")
 (:VAR MV1541 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1543 :ISA PROTEIN :RAW-TEXT "ILK" :UID "UP:Q13418" :NAME "ILK_HUMAN"))

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
 (:VAR MV1569 :ISA PHOSPHORYLATE :AGENT MV1567 :SUBSTRATE MV1568 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV1567 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV1568 :ISA PROTEIN :RAW-TEXT "IFT140" :UID "UP:Q96RY7" :NAME "IF140_HUMAN"))

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
e20   BE            1 "What is the drug response " 6
e18   ON            6 "on cells with TP53 alterations" 12
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e20   S             1 "What is the drug response " 6
e18   PP            6 "on cells with TP53 alterations" 12
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
164: "What is the drug response for cells with TP53 alterations?"

                    SOURCE-START
e20   BE            1 "What is the drug response " 6
e18   FOR           6 "for cells with TP53 alterations" 12
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e20   S             1 "What is the drug response " 6
e18   PP            6 "for cells with TP53 alterations" 12
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
165: "What is the mutation frequency of EGFR in glioblastoma?"

                    SOURCE-START
e19   BE            1 "What is the mutation frequency of EGFR in glioblastoma" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of EGFR in glioblastoma?"
 (:VAR MV1612 :ISA BE :SUBJECT MV1611 :PREDICATE MV1615 :PRESENT "PRESENT") (:VAR MV1611 :ISA WHAT)
 (:VAR MV1615 :ISA FREQUENCY :MEASURED-ITEM MV1617 :HAS-DETERMINER "THE" :MEASURED-ITEM MV1614
  :RAW-TEXT "frequency")
 (:VAR MV1617 :ISA PROTEIN :CONTEXT MV1619 :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV1619 :ISA GLIOBLASTOMA) (:VAR MV1614 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
166: "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e23   BE            1 "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1624 :ISA BE :SUBJECT MV1623 :PREDICATE MV1627 :PRESENT "PRESENT") (:VAR MV1623 :ISA WHAT)
 (:VAR MV1627 :ISA FREQUENCY :MEASURED-ITEM MV1622 :HAS-DETERMINER "THE" :MEASURED-ITEM MV1626
  :RAW-TEXT "frequency")
 (:VAR MV1622 :ISA PROTEIN :CONTEXT MV1633 :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1633 :ISA CANCER :NAME "cystadenocarcinoma" :UID "EFO:0006387")
 (:VAR MV1626 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
167: "Show me the mutations of PTEN and BRAF in ovarian cancer."

                    SOURCE-START
e21   SHOW          1 "Show me the mutations of PTEN and BRAF in ovarian cancer" 12
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN and BRAF in ovarian cancer."
 (:VAR MV1637 :ISA SHOW :STATEMENT-OR-THEME MV1640 :BENEFICIARY MV1638 :PRESENT "PRESENT")
 (:VAR MV1640 :ISA MUTATION :OBJECT MV1646 :HAS-DETERMINER "THE" :RAW-TEXT "mutations")
 (:VAR MV1646 :ISA COLLECTION :CONTEXT MV1636 :RAW-TEXT "PTEN and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1642 MV1644))
 (:VAR MV1636 :ISA CANCER :UID "TS-1223")
 (:VAR MV1642 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME "PTEN_HUMAN")
 (:VAR MV1644 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1638 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
168: "Show me the mutations of PTEN in ovarian cancer."

                    SOURCE-START
e18   SHOW          1 "Show me the mutations of PTEN in ovarian cancer" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN in ovarian cancer."
 (:VAR MV1650 :ISA SHOW :STATEMENT-OR-THEME MV1653 :BENEFICIARY MV1651 :PRESENT "PRESENT")
 (:VAR MV1653 :ISA MUTATION :OBJECT MV1655 :HAS-DETERMINER "THE" :RAW-TEXT "mutations")
 (:VAR MV1655 :ISA PROTEIN :CONTEXT MV1649 :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME "PTEN_HUMAN")
 (:VAR MV1649 :ISA CANCER :UID "TS-1223") (:VAR MV1651 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
169: "What are the mutations of PTEN in ovarian cancer?"

                    SOURCE-START
e18   BE            1 "What are the mutations of PTEN in ovarian cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in ovarian cancer?"
 (:VAR MV1661 :ISA BE :SUBJECT MV1660 :PREDICATE MV1663 :PRESENT "PRESENT") (:VAR MV1660 :ISA WHAT)
 (:VAR MV1663 :ISA MUTATION :OBJECT MV1665 :HAS-DETERMINER "THE" :RAW-TEXT "mutations")
 (:VAR MV1665 :ISA PROTEIN :CONTEXT MV1659 :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME "PTEN_HUMAN")
 (:VAR MV1659 :ISA CANCER :UID "TS-1223"))

___________________
170: "What is the most likely cellular location of AKT1 and BRAF?"

                    SOURCE-START
e23   BE            1 "What is the most likely cellular location of AKT1 and BRAF" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1 and BRAF?"
 (:VAR MV1671 :ISA BE :SUBJECT MV1670 :PREDICATE MV1683 :PRESENT "PRESENT") (:VAR MV1670 :ISA WHAT)
 (:VAR MV1683 :ISA QUALITY-PREDICATE :ITEM MV1681 :ATTRIBUTE MV1677)
 (:VAR MV1681 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV1669 MV1680))
 (:VAR MV1669 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV1680 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1677 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV1675 :MODIFIER MV1676)
 (:VAR MV1675 :ISA LIKELY :COMPARATIVE MV1673)
 (:VAR MV1673 :ISA SUPERLATIVE-QUANTIFIER :NAME "most") (:VAR MV1676 :ISA CELLULAR))

___________________
171: "Are there common upstreams of AKT1 and BRAF?"

                    SOURCE-START
e17   THERE-EXISTS  1 "Are there common upstreams of AKT1 and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1 and BRAF?"
 (:VAR MV1693 :ISA THERE-EXISTS :VALUE MV1689 :PREDICATE MV1686)
 (:VAR MV1689 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1694 :PREDICATION MV1688 :RAW-TEXT
  "upstreams")
 (:VAR MV1694 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV1684 MV1692))
 (:VAR MV1684 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV1692 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1688 :ISA COMMON) (:VAR MV1686 :ISA SYNTACTIC-THERE))

___________________
172: "What are the common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e21   BE            1 "What are the common upstreams of AKT1, BRAF and MAPK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV1699 :ISA BE :SUBJECT MV1698 :PREDICATE MV1702 :PRESENT "PRESENT") (:VAR MV1698 :ISA WHAT)
 (:VAR MV1702 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1706 :HAS-DETERMINER "THE" :PREDICATION
  MV1701 :RAW-TEXT "upstreams")
 (:VAR MV1706 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV1696 MV1704 MV1697))
 (:VAR MV1696 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV1704 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1697 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1701 :ISA COMMON))

___________________
173: "What genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "What genes are mutually exclusive with CDH1 " 9
e13   FOR           9 "for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e17   S             1 "What genes are mutually exclusive with CDH1 " 9
e13   PP            9 "for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
174: "What are the mutually exclusive genes with TP53 for breast cancer?"

                    SOURCE-START
e19   BE            1 "What are the mutually exclusive genes " 7
e17   WITH          7 "with TP53 " 10
e16   FOR           10 "for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e19   S             1 "What are the mutually exclusive genes " 7
e17   PP            7 "with TP53 " 10
e16   PP            10 "for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
175: "What is the mutation significance of TP53 for lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 for lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 for lung cancer?"
 (:VAR MV1733 :ISA BE :SUBJECT MV1732 :PREDICATE MV1736 :PRESENT "PRESENT") (:VAR MV1732 :ISA WHAT)
 (:VAR MV1736 :ISA SIGNIFICANCE :RESULT MV1731 :AGENT MV1730 :HAS-DETERMINER "THE" :MODIFIER
  MV1735)
 (:VAR MV1731 :ISA CANCER :UID "TS-0571")
 (:VAR MV1730 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1735 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
176: "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e23   BE            1 "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1743 :ISA BE :SUBJECT MV1742 :PREDICATE MV1746 :PRESENT "PRESENT") (:VAR MV1742 :ISA WHAT)
 (:VAR MV1746 :ISA SIGNIFICANCE :AGENT MV1741 :HAS-DETERMINER "THE" :MODIFIER MV1745)
 (:VAR MV1741 :ISA PROTEIN :CONTEXT MV1752 :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1752 :ISA CANCER :NAME "cystadenocarcinoma" :UID "EFO:0006387")
 (:VAR MV1745 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
177: "What is the mutation significance of PTEN in pancreatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of PTEN in pancreatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
 (:VAR MV1756 :ISA BE :SUBJECT MV1755 :PREDICATE MV1759 :PRESENT "PRESENT") (:VAR MV1755 :ISA WHAT)
 (:VAR MV1759 :ISA SIGNIFICANCE :AGENT MV1761 :HAS-DETERMINER "THE" :MODIFIER MV1758)
 (:VAR MV1761 :ISA PROTEIN :CONTEXT MV1764 :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME "PTEN_HUMAN")
 (:VAR MV1764 :ISA CANCER :ORGAN MV1763 :NAME "adenocarcinoma" :UID "EFO:0000228")
 (:VAR MV1763 :ISA PANCREAS) (:VAR MV1758 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
178: "What is the mutation significance of BRAF in prostatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of BRAF in prostatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
 (:VAR MV1768 :ISA BE :SUBJECT MV1767 :PREDICATE MV1771 :PRESENT "PRESENT") (:VAR MV1767 :ISA WHAT)
 (:VAR MV1771 :ISA SIGNIFICANCE :AGENT MV1773 :HAS-DETERMINER "THE" :MODIFIER MV1770)
 (:VAR MV1773 :ISA PROTEIN :CONTEXT MV1776 :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1776 :ISA CANCER :MODIFIER MV1775 :NAME "adenocarcinoma" :UID "EFO:0000228")
 (:VAR MV1775 :ISA PROTEIN :RAW-TEXT "prostatic" :UID "UP:P20151" :NAME "KLK2_HUMAN")
 (:VAR MV1770 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
179: "MEK phosphorylates ERK."

                    SOURCE-START
e4    PHOSPHORYLATE 1 "MEK phosphorylates ERK" 4
                    PERIOD
                    END-OF-SOURCE
("MEK phosphorylates ERK."
 (:VAR MV1780 :ISA PHOSPHORYLATE :AGENT MV1779 :SUBSTRATE MV1781 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV1779 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV1781 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV1783 :ISA BINDING :BINDER MV1782 :DIRECT-BINDEE MV1784 :PRESENT "PRESENT" :RAW-TEXT
  "binds")
 (:VAR MV1782 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1784 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
181: "EGFR bound to EGF binds GRB2."

                    SOURCE-START
e13   BINDING       1 "EGFR bound to EGF binds GRB2" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR bound to EGF binds GRB2."
 (:VAR MV1790 :ISA BINDING :BINDER MV1786 :DIRECT-BINDEE MV1785 :PRESENT "PRESENT" :RAW-TEXT
  "binds")
 (:VAR MV1786 :ISA PROTEIN :PREDICATION MV1787 :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV1787 :ISA BINDING :DIRECT-BINDEE MV1786 :BINDEE MV1789 :PAST "PAST" :RAW-TEXT "bound")
 (:VAR MV1789 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1785 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN"))

___________________
182: "Phosphorylated ERK is active."

                    SOURCE-START
e7    COPULAR-PREDICATION 1 "Phosphorylated ERK is active" 5
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK is active."
 (:VAR MV1796 :ISA COPULAR-PREDICATION :ITEM MV1793 :VALUE MV1795 :PREDICATE MV1794)
 (:VAR MV1793 :ISA PROTEIN-FAMILY :PREDICATION MV1792 :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1792 :ISA PHOSPHORYLATE :SUBSTRATE MV1793 :RAW-TEXT "Phosphorylated")
 (:VAR MV1795 :ISA ACTIVE) (:VAR MV1794 :ISA BE :PRESENT "PRESENT"))

___________________
183: "MAP2K1 phosphorylated at S220 phosphoryates MAPK1."

                    SOURCE-START
e17   PROTEIN       1 "MAP2K1 phosphorylated at S220 phosphoryates MAPK1" 12
                    PERIOD
                    END-OF-SOURCE
("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
 (:VAR MV1797 :ISA PROTEIN :PREDICATION MV1799 :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV1799 :ISA PHOSPHORYLATE :SUBSTRATE MV1797 :TARGET MV1798 :PAST "PAST" :RAW-TEXT
  "phosphorylated")
 (:VAR MV1798 :ISA PROTEIN :SITE MV1804 :MODIFIER MV1805 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1804 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S220" :POSITION MV1803 :AMINO-ACID MV1802)
 (:VAR MV1803 :ISA NUMBER :VALUE 220) (:VAR MV1802 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV1805 :ISA BIO-ENTITY :NAME "phosphoryates"))

___________________
184: "Active TP53 transcribes MDM2."

                    SOURCE-START
e8    TRANSCRIBE    1 "Active TP53 transcribes MDM2" 7
                    PERIOD
                    END-OF-SOURCE
("Active TP53 transcribes MDM2."
 (:VAR MV1810 :ISA TRANSCRIBE :AGENT MV1807 :OBJECT MV1808 :PRESENT "PRESENT" :RAW-TEXT
  "transcribes")
 (:VAR MV1807 :ISA PROTEIN :PREDICATION MV1809 :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1809 :ISA ACTIVE)
 (:VAR MV1808 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME "MDM2_HUMAN"))

___________________
185: "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e44   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV1837 :ISA POLAR-QUESTION :STATEMENT MV1836)
 (:VAR MV1836 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1832 :EVENT MV1834)
 (:VAR MV1832 :ISA WH-QUESTION :STATEMENT MV1822 :WH IF)
 (:VAR MV1822 :ISA INCREASE :AGENT-OR-CAUSE MV1820 :MULTIPLIER MV1829 :AFFECTED-PROCESS-OR-OBJECT
  MV1824 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1820 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1829 :ISA N-FOLD :NUMBER MV1828) (:VAR MV1828 :ISA NUMBER :VALUE 10)
 (:VAR MV1824 :ISA BIO-AMOUNT :MEASURED-ITEM MV1811 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1811 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1834 :ISA COPULAR-PREDICATION :ITEM MV1814 :VALUE MV1818 :PREDICATE MV1812)
 (:VAR MV1814 :ISA BIO-AMOUNT :MEASURED-ITEM MV1816 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV1816 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1818 :ISA HIGH :ADVERB MV1817) (:VAR MV1817 :ISA EVER) (:VAR MV1812 :ISA BE))

___________________
186: "Does Vemurafenib decrease phosphorylated ERK in the model?"

                    SOURCE-START
e20   DECREASE      1 "Does Vemurafenib decrease phosphorylated ERK in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib decrease phosphorylated ERK in the model?"
 (:VAR MV1849 :ISA POLAR-QUESTION :STATEMENT MV1847)
 (:VAR MV1847 :ISA DECREASE :AGENT MV1839 :OBJECT MV1843 :RAW-TEXT "decrease")
 (:VAR MV1839 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV1843 :ISA PROTEIN-FAMILY :INFO-CONTEXT MV1846 :PREDICATION MV1842 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1846 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV1842 :ISA PHOSPHORYLATE :SUBSTRATE MV1843 :RAW-TEXT "phosphorylated"))

___________________
187: "Does Selumetinib decrease JUN in the model?"

                    SOURCE-START
e17   DECREASE      1 "Does Selumetinib decrease JUN in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib decrease JUN in the model?" (:VAR MV1860 :ISA POLAR-QUESTION :STATEMENT MV1858)
 (:VAR MV1858 :ISA DECREASE :AGENT MV1851 :OBJECT MV1854 :RAW-TEXT "decrease")
 (:VAR MV1851 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV1854 :ISA PROTEIN :INFO-CONTEXT MV1857 :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV1857 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
188: "How does KRAS regulate MAP2K1?"

                    SOURCE-START
e8    REGULATE      1 "How does KRAS regulate MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS regulate MAP2K1?"
 (:VAR MV1865 :ISA REGULATE :MANNER MV1862 :AGENT MV1864 :OBJECT MV1861 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV1862 :ISA HOW)
 (:VAR MV1864 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV1861 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
189: "How does HRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does HRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does HRAS activate MAPK3?"
 (:VAR MV1870 :ISA BIO-ACTIVATE :MANNER MV1867 :AGENT MV1869 :OBJECT MV1866 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV1867 :ISA HOW)
 (:VAR MV1869 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME "RASH_HUMAN")
 (:VAR MV1866 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME "MK03_HUMAN"))

___________________
190: "Does Vemurafenib inhibit BRAF?"

                    SOURCE-START
e8    INHIBIT       1 "Does Vemurafenib inhibit BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib inhibit BRAF?" (:VAR MV1876 :ISA POLAR-QUESTION :STATEMENT MV1875)
 (:VAR MV1875 :ISA INHIBIT :AGENT MV1872 :OBJECT MV1874 :RAW-TEXT "inhibit")
 (:VAR MV1872 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV1874 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
191: "What transcription factors are shared by SRF, HRAS, and ELK1?"

                    SOURCE-START
e19   SHARE         1 "What transcription factors are shared by SRF, HRAS, and ELK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by SRF, HRAS, and ELK1?"
 (:VAR MV1887 :ISA SHARE :OBJECT MV1877 :PARTICIPANT MV1886 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV1877 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV1886 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and ELK1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV1883 MV1884 MV1878))
 (:VAR MV1883 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1884 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME "RASH_HUMAN")
 (:VAR MV1878 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

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
 (:VAR MV1899 :ISA BE :SUBJECT MV1898 :PREDICATE MV1900 :PRESENT "PRESENT") (:VAR MV1898 :ISA WHAT)
 (:VAR MV1900 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1897 :RAW-TEXT "upstream")
 (:VAR MV1897 :ISA PROTEIN :RAW-TEXT "CD3E" :UID "UP:P07766" :NAME "CD3E_HUMAN"))

___________________
194: "I want to find a treatment for pancreatic cancer."

                    SOURCE-START
e22   WANT          1 "I want to find a treatment for pancreatic cancer" 10
                    PERIOD
                    END-OF-SOURCE
("I want to find a treatment for pancreatic cancer."
 (:VAR MV1908 :ISA WANT :AGENT MV1905 :THEME MV1916 :PRESENT "PRESENT")
 (:VAR MV1905 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV1916 :ISA BIO-FIND :AGENT MV1905 :OBJECT MV1913 :PRESENT "PRESENT" :RAW-TEXT "find")
 (:VAR MV1905 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV1913 :ISA TREATMENT :DISEASE MV1904 :HAS-DETERMINER "A" :RAW-TEXT "treatment")
 (:VAR MV1904 :ISA CANCER :UID "TS-0739"))

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
("Are there any drugs for BRAF?" (:VAR MV1932 :ISA THERE-EXISTS :VALUE MV1929 :PREDICATE MV1926)
 (:VAR MV1929 :ISA DRUG :TARGET MV1931 :QUANTIFIER MV1928 :RAW-TEXT "drugs")
 (:VAR MV1931 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1928 :ISA ANY :WORD "any") (:VAR MV1926 :ISA SYNTACTIC-THERE))

___________________
197: "Are they kinases?"

                    SOURCE-START
e3    BE            1 "Are they kinases" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for BRAF?" (:VAR MV1932 :ISA THERE-EXISTS :VALUE MV1929 :PREDICATE MV1926)
 (:VAR MV1929 :ISA DRUG :TARGET MV1931 :QUANTIFIER MV1928 :RAW-TEXT "drugs")
 (:VAR MV1931 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1928 :ISA ANY :WORD "any") (:VAR MV1926 :ISA SYNTACTIC-THERE))

___________________
198: "Can you find a drug for BRAF?"

                    SOURCE-START
e17   BIO-FIND      1 "Can you find a drug for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you find a drug for BRAF?" (:VAR MV1946 :ISA POLAR-QUESTION :STATEMENT MV1940)
 (:VAR MV1940 :ISA BIO-FIND :AGENT MV1938 :OBJECT MV1942 :MODAL "CAN" :RAW-TEXT "find")
 (:VAR MV1938 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1942 :ISA DRUG :TARGET MV1944 :HAS-DETERMINER "A" :RAW-TEXT "drug")
 (:VAR MV1944 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
199: "Can you tell me all the transcription factors that are shared by elk1 and srf?"

                    SOURCE-START
e35   TELL          1 "Can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me all the transcription factors that are shared by elk1 and srf?"
 (:VAR MV1964 :ISA POLAR-QUESTION :STATEMENT MV1951)
 (:VAR MV1951 :ISA TELL :AGENT MV1950 :THEME MV1947 :BENEFICIARY MV1952 :MODAL "CAN")
 (:VAR MV1950 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1947 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV1962 :QUANTIFIER MV1953 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV1962 :ISA SHARE :OBJECT MV1947 :THAT-REL T :PARTICIPANT MV1961 :MODAL "CAN" :RAW-TEXT
  "shared")
 (:VAR MV1961 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV1948 MV1960))
 (:VAR MV1948 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1960 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1953 :ISA ALL :WORD "all") (:VAR MV1952 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
200: "Can you tell me what transcription factors are shared by elk1 and srf?"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf?"
 (:VAR MV1980 :ISA POLAR-QUESTION :STATEMENT MV1969)
 (:VAR MV1969 :ISA TELL :AGENT MV1968 :THEME MV1978 :THEME MV1970 :MODAL "CAN")
 (:VAR MV1968 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1978 :ISA SHARE :OBJECT MV1965 :PARTICIPANT MV1977 :MODAL "CAN" :RAW-TEXT "shared")
 (:VAR MV1965 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV1977 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV1966 MV1976))
 (:VAR MV1966 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV1976 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1970 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
201: "Do you know any drugs for BRAF?"

                    SOURCE-START
e15   KNOW          1 "Do you know any drugs for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do you know any drugs for BRAF?" (:VAR MV1991 :ISA POLAR-QUESTION :STATEMENT MV1990)
 (:VAR MV1990 :ISA KNOW :AGENT MV1982 :STATEMENT MV1985)
 (:VAR MV1982 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1985 :ISA DRUG :TARGET MV1987 :QUANTIFIER MV1984 :RAW-TEXT "drugs")
 (:VAR MV1987 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV1984 :ISA ANY :WORD "any"))

___________________
202: "Does STAT3 regulate the JUN gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the JUN gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the JUN gene in the lung?"
 (:VAR MV2003 :ISA POLAR-QUESTION :STATEMENT MV2001)
 (:VAR MV2001 :ISA REGULATE :AGENT MV1992 :OBJECT MV1997 :RAW-TEXT "regulate")
 (:VAR MV1992 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV1997 :ISA GENE :ORGAN MV2000 :HAS-DETERMINER "THE" :EXPRESSES MV1996 :RAW-TEXT "gene")
 (:VAR MV2000 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV1996 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN"))

___________________
203: "Does STAT3 regulate the c-fos gene in liver?"

                    SOURCE-START
e20   REGULATE      1 "Does STAT3 regulate the c-fos gene in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in liver?" (:VAR MV2014 :ISA POLAR-QUESTION :STATEMENT MV2012)
 (:VAR MV2012 :ISA REGULATE :AGENT MV2004 :OBJECT MV2009 :RAW-TEXT "regulate")
 (:VAR MV2004 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2009 :ISA GENE :ORGAN MV2011 :HAS-DETERMINER "THE" :EXPRESSES MV2005 :RAW-TEXT "gene")
 (:VAR MV2011 :ISA LIVER)
 (:VAR MV2005 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
204: "Does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e15   REGULATE      1 "Does STAT3 regulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene?" (:VAR MV2022 :ISA POLAR-QUESTION :STATEMENT MV2021)
 (:VAR MV2021 :ISA REGULATE :AGENT MV2015 :OBJECT MV2020 :RAW-TEXT "regulate")
 (:VAR MV2015 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2020 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2016 :RAW-TEXT "gene")
 (:VAR MV2016 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
205: "Does STAT3 regulate the cfos gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the cfos gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the cfos gene in the lung?"
 (:VAR MV2034 :ISA POLAR-QUESTION :STATEMENT MV2032)
 (:VAR MV2032 :ISA REGULATE :AGENT MV2023 :OBJECT MV2028 :RAW-TEXT "regulate")
 (:VAR MV2023 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2028 :ISA GENE :ORGAN MV2031 :HAS-DETERMINER "THE" :EXPRESSES MV2027 :RAW-TEXT "gene")
 (:VAR MV2031 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV2027 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
206: "Does TP53 target MDM2?"

                    SOURCE-START
e11   TARGET        1 "Does TP53 target MDM2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TP53 target MDM2?" (:VAR MV2041 :ISA POLAR-QUESTION :STATEMENT MV2040)
 (:VAR MV2040 :ISA TARGET :AGENT MV2035 :OBJECT MV2036 :RAW-TEXT "target")
 (:VAR MV2035 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV2036 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME "MDM2_HUMAN"))

___________________
207: "Does miR-2000-5p target stat3"

                    SOURCE-START
e11   TARGET        1 "Does miR-2000-5p target stat3" 11
                    END-OF-SOURCE
("Does miR-2000-5p target stat3" (:VAR MV2048 :ISA POLAR-QUESTION :STATEMENT MV2047)
 (:VAR MV2047 :ISA TARGET :AGENT MV2042 :OBJECT MV2043 :RAW-TEXT "target")
 (:VAR MV2042 :ISA MICRO-RNA :RAW-TEXT "miR-2000-5p" :NAME "microRNA 2000-5p" :UID
  "MIMAmiR-2000-5p")
 (:VAR MV2043 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
208: "Does miR-20b-5p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-20b-5p target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5p target STAT3?" (:VAR MV2055 :ISA POLAR-QUESTION :STATEMENT MV2054)
 (:VAR MV2054 :ISA TARGET :AGENT MV2049 :OBJECT MV2050 :RAW-TEXT "target")
 (:VAR MV2049 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm" :UID "MIMAT0001413")
 (:VAR MV2050 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
209: "Does miR-222-3p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-222-3p target STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-222-3p target STAT3?" (:VAR MV2062 :ISA POLAR-QUESTION :STATEMENT MV2061)
 (:VAR MV2061 :ISA TARGET :AGENT MV2056 :OBJECT MV2057 :RAW-TEXT "target")
 (:VAR MV2056 :ISA MICRO-RNA :RAW-TEXT "miR-222-3p" :NAME "microRNA 222-3p" :UID "MIMAT0000279")
 (:VAR MV2057 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
210: "Does stat3 regulate cfors in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfors in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfors in liver" (:VAR MV2071 :ISA POLAR-QUESTION :STATEMENT MV2069)
 (:VAR MV2069 :ISA REGULATE :AGENT MV2063 :OBJECT MV2068 :RAW-TEXT "regulate")
 (:VAR MV2063 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2068 :ISA BIO-ENTITY :ORGAN MV2067 :NAME "cfors") (:VAR MV2067 :ISA LIVER))

___________________
211: "Does stat3 regulate cfos in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfos in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfos in liver" (:VAR MV2080 :ISA POLAR-QUESTION :STATEMENT MV2078)
 (:VAR MV2078 :ISA REGULATE :AGENT MV2072 :OBJECT MV2075 :RAW-TEXT "regulate")
 (:VAR MV2072 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2075 :ISA PROTEIN :ORGAN MV2077 :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV2077 :ISA LIVER))

___________________
212: "Does it regulate cfos in brain"

                    SOURCE-START
e14   REGULATE      1 "Does it regulate cfos in brain" 7
                    END-OF-SOURCE
("Does it regulate cfos in brain" (:VAR MV2089 :ISA POLAR-QUESTION :STATEMENT MV2087)
 (:VAR MV2087 :ISA REGULATE :AGENT-OR-CAUSE MV2082 :OBJECT MV2084 :RAW-TEXT "regulate")
 (:VAR MV2082 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2084 :ISA PROTEIN :ORGAN MV2086 :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV2086 :ISA BRAIN))

___________________
213: "Does stat3 regulate cfos?"

                    SOURCE-START
e9    REGULATE      1 "Does stat3 regulate cfos" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 regulate cfos?" (:VAR MV2095 :ISA POLAR-QUESTION :STATEMENT MV2094)
 (:VAR MV2094 :ISA REGULATE :AGENT MV2090 :OBJECT MV2093 :RAW-TEXT "regulate")
 (:VAR MV2090 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2093 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
214: "Does stat3 regulate the cfos gene in blood cells"

                    SOURCE-START
e21   REGULATE      1 "Does stat3 regulate the cfos gene in blood cells" 11
                    END-OF-SOURCE
("Does stat3 regulate the cfos gene in blood cells"
 (:VAR MV2107 :ISA POLAR-QUESTION :STATEMENT MV2105)
 (:VAR MV2105 :ISA REGULATE :AGENT MV2096 :OBJECT MV2101 :RAW-TEXT "regulate")
 (:VAR MV2096 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2101 :ISA GENE :CELL-TYPE MV2104 :HAS-DETERMINER "THE" :EXPRESSES MV2100 :RAW-TEXT "gene")
 (:VAR MV2104 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV2103)
 (:VAR MV2103 :ISA BIO-ORGAN :NAME "blood" :UID "BTO:0000089")
 (:VAR MV2100 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
215: "Does the il-12 pathway utilize SGK1?"

                    SOURCE-START
e17   UTILIZE       1 "Does the il-12 pathway utilize SGK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the il-12 pathway utilize SGK1?" (:VAR MV2117 :ISA POLAR-QUESTION :STATEMENT MV2116)
 (:VAR MV2116 :ISA UTILIZE :PARTICIPANT MV2113 :OBJECT MV2108 :RAW-TEXT "utilize")
 (:VAR MV2113 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2115 :RAW-TEXT "pathway")
 (:VAR MV2115 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV2108 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME "SGK1_HUMAN"))

___________________
216: "Does the mTor pathway utilize SGK1?"

                    SOURCE-START
e16   UTILIZE       1 "Does the mTor pathway utilize SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway utilize SGK1?" (:VAR MV2127 :ISA POLAR-QUESTION :STATEMENT MV2126)
 (:VAR MV2126 :ISA UTILIZE :PARTICIPANT MV2124 :OBJECT MV2118 :RAW-TEXT "utilize")
 (:VAR MV2124 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2121 :RAW-TEXT "pathway")
 (:VAR MV2121 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME "MTOR_HUMAN")
 (:VAR MV2118 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME "SGK1_HUMAN"))

___________________
217: "Give me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras decreases frizzled8."
 (:VAR MV2129 :ISA GIVE :THEME MV2136 :BENEFICIARY MV2130 :PRESENT "PRESENT")
 (:VAR MV2136 :ISA EVIDENCE :STATEMENT MV2135 :HAS-DETERMINER "THE")
 (:VAR MV2135 :ISA DECREASE :AGENT MV2134 :OBJECT MV2128 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV2134 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV2128 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV2130 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
218: "Give me the evidence that kras regulates frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras regulates frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras regulates frizzled8."
 (:VAR MV2138 :ISA GIVE :THEME MV2145 :BENEFICIARY MV2139 :PRESENT "PRESENT")
 (:VAR MV2145 :ISA EVIDENCE :STATEMENT MV2144 :HAS-DETERMINER "THE")
 (:VAR MV2144 :ISA REGULATE :AGENT MV2143 :OBJECT MV2137 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2143 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV2137 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV2139 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
219: "Is MEK a kinase?"

                    SOURCE-START
e8    BE            1 "Is MEK a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK a kinase?"
 (:VAR MV2150 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88017>
   (PREDICATE (#<kinase 88016> (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "kinase"))))))

___________________
220: "Is MEK2 inhibited by Selumetinib?"

                    SOURCE-START
e11   INHIBIT       1 "Is MEK2 inhibited by Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK2 inhibited by Selumetinib?" (:VAR MV2158 :ISA POLAR-QUESTION :STATEMENT MV2157)
 (:VAR MV2157 :ISA INHIBIT :AGENT MV2151 :AGENT MV2155 :PAST "PAST" :RAW-TEXT "inhibited")
 (:VAR MV2151 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME "MP2K2_HUMAN")
 (:VAR MV2155 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
221: "Is STAT3 a transcription factor for c-fos gene?"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene?"
 (:VAR MV2167 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88031>
   (PREDICATE
    (#<transcription-factor 88030>
     (CONTROLLED-GENE
      (#<gene 87926>
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86574> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "transcription factor"))))))

___________________
222: "Is STAT3 one of the regulators of the c-fos gene?"

                    SOURCE-START
e27   BE            1 "Is STAT3 one of the regulators of the c-fos gene" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 one of the regulators of the c-fos gene?"
 (:VAR MV2182 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88038>
   (PREDICATE
    (#<regulator 88037> (QUANTIFIER 1)
     (THEME
      (#<gene 87927> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86574> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<the 106>)) (RAW-TEXT "regulators"))))))

___________________
223: "Is Selumetinib an inhibitor of MEK1?"

                    SOURCE-START
e14   BE            1 "Is Selumetinib an inhibitor of MEK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Selumetinib an inhibitor of MEK1?"
 (:VAR MV2190 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88047>
   (PREDICATE
    (#<inhibitor 88046>
     (PROTEIN
      (#<protein "MP2K1_HUMAN" 88041> (RAW-TEXT "MEK1") (UID "UP:Q02750") (NAME "MP2K1_HUMAN")))
     (HAS-DETERMINER (#<an 108> (WORD "an"))) (RAW-TEXT "inhibitor"))))))

___________________
224: "Is Vemurafenib an inhibitor for BRAF?"

                    SOURCE-START
e13   BE            1 "Is Vemurafenib an inhibitor for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Vemurafenib an inhibitor for BRAF?"
 (:VAR MV2198 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88051>
   (PREDICATE
    (#<inhibitor 88050>
     (TARGET-OR-PROTEIN
      (#<protein "BRAF_HUMAN" 86455> (RAW-TEXT "BRAF") (UID "UP:P15056") (NAME "BRAF_HUMAN")))
     (HAS-DETERMINER (#<an 108> (WORD "an"))) (RAW-TEXT "inhibitor"))))))

___________________
225: "Is fakeprotein a kinase"

                    SOURCE-START
e8    BE            1 "Is fakeprotein a kinase" 5
                    END-OF-SOURCE
("Is fakeprotein a kinase"
 (:VAR MV2203 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88017>
   (PREDICATE (#<kinase 88016> (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "kinase"))))))

___________________
226: "Is hmga2 a kinase"

                    SOURCE-START
e9    BE            1 "Is hmga2 a kinase" 6
                    END-OF-SOURCE
("Is hmga2 a kinase"
 (:VAR MV2208 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88017>
   (PREDICATE (#<kinase 88016> (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "kinase"))))))

___________________
227: "Is stat3 an apoptotic regulator?"

                    SOURCE-START
e12   BE            1 "Is stat3 an apoptotic regulator" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 an apoptotic regulator?"
 (:VAR MV2215 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88061>
   (PREDICATE
    (#<regulator 88060> (HAS-DETERMINER (#<an 108> (WORD "an"))) (MODIFIER (#<apoptotic 86401>))
     (RAW-TEXT "regulator"))))))

___________________
228: "Is stat3 involved in any apoptotic pathways?"

                    SOURCE-START
e16   INVOLVE       1 "Is stat3 involved in any apoptotic pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in any apoptotic pathways?" (:VAR MV2226 :ISA POLAR-QUESTION :STATEMENT MV2225)
 (:VAR MV2225 :ISA INVOLVE :PARTICIPANT MV2216 :CONTEXT-OR-THEME MV2223 :PAST "PAST")
 (:VAR MV2216 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2223 :ISA PATHWAY :QUANTIFIER MV2220 :PROCESS MV2221 :RAW-TEXT "pathways")
 (:VAR MV2220 :ISA ANY :WORD "any") (:VAR MV2221 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
229: "Is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e14   INVOLVE       1 "Is stat3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in apoptotic regulation?" (:VAR MV2236 :ISA POLAR-QUESTION :STATEMENT MV2235)
 (:VAR MV2235 :ISA INVOLVE :PARTICIPANT MV2227 :THEME MV2233 :PAST "PAST")
 (:VAR MV2227 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2233 :ISA REGULATE :AGENT MV2231 :RAW-TEXT "regulation")
 (:VAR MV2231 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
230: "Is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e13   INVOLVE       1 "Is stat3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in regulating apoptosis?" (:VAR MV2245 :ISA POLAR-QUESTION :STATEMENT MV2244)
 (:VAR MV2244 :ISA INVOLVE :PARTICIPANT MV2237 :THEME MV2241 :PAST "PAST")
 (:VAR MV2237 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2241 :ISA REGULATE :AFFECTED-PROCESS MV2242 :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT
  "regulating")
 (:VAR MV2242 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
231: "What proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "What proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does MEK phosphorylate?"
 (:VAR MV2250 :ISA PHOSPHORYLATE :AMINO-ACID MV2247 :AGENT MV2249 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylate")
 (:VAR MV2247 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV2249 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
232: "Is the first one a kinase"

                    SOURCE-START
e15   BE            1 "Is the first one a kinase" 7
                    END-OF-SOURCE
("Is the first one a kinase"
 (:VAR MV2260 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88017>
   (PREDICATE (#<kinase 88016> (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "kinase"))))))

___________________
233: "Is there a drug that targets BRAF?"

                    SOURCE-START
e18   THERE-EXISTS  1 "Is there a drug that targets BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there a drug that targets BRAF?"
 (:VAR MV2270 :ISA THERE-EXISTS :VALUE MV2265 :PREDICATE MV2262)
 (:VAR MV2265 :ISA DRUG :PREDICATION MV2268 :HAS-DETERMINER "A" :RAW-TEXT "drug")
 (:VAR MV2268 :ISA TARGET :AGENT MV2265 :THAT-REL T :OBJECT MV2269 :PRESENT "PRESENT" :RAW-TEXT
  "targets")
 (:VAR MV2269 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV2262 :ISA SYNTACTIC-THERE))

___________________
234: "Is there an apoptotic pathway regulated by stat3?"

                    SOURCE-START
e21   THERE-EXISTS  1 "Is there an apoptotic pathway regulated by stat3" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway regulated by stat3?"
 (:VAR MV2281 :ISA THERE-EXISTS :VALUE MV2278 :PREDICATE MV2273)
 (:VAR MV2278 :ISA PATHWAY :PREDICATION MV2279 :HAS-DETERMINER "AN" :PROCESS MV2276 :RAW-TEXT
  "pathway")
 (:VAR MV2279 :ISA REGULATE :AFFECTED-PROCESS MV2278 :AGENT MV2271 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV2271 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2276 :ISA APOPTOSIS :RAW-TEXT "apoptotic") (:VAR MV2273 :ISA SYNTACTIC-THERE))

___________________
235: "Is there an apoptotic pathway that is regulated by stat3?"

                    SOURCE-START
e26   THERE-EXISTS  1 "Is there an apoptotic pathway that is regulated by stat3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway that is regulated by stat3?"
 (:VAR MV2295 :ISA THERE-EXISTS :VALUE MV2290 :PREDICATE MV2285)
 (:VAR MV2290 :ISA PATHWAY :PREDICATION MV2296 :HAS-DETERMINER "AN" :PROCESS MV2288 :RAW-TEXT
  "pathway")
 (:VAR MV2296 :ISA REGULATE :AFFECTED-PROCESS MV2290 :THAT-REL T :AGENT MV2283 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2283 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2288 :ISA APOPTOSIS :RAW-TEXT "apoptotic") (:VAR MV2285 :ISA SYNTACTIC-THERE))

___________________
236: "Let me know if there are any apoptotic genes stat3 regulates"

                    SOURCE-START
e25   LET           1 "Let me know if there are any apoptotic genes stat3 regulates" 13
                    END-OF-SOURCE
("Let me know if there are any apoptotic genes stat3 regulates"
 (:VAR MV2299 :ISA LET :COMPLEMENT MV2313 :PRESENT "PRESENT")
 (:VAR MV2313 :ISA KNOW :AGENT MV2300 :STATEMENT MV2312 :PRESENT "PRESENT")
 (:VAR MV2300 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2312 :ISA WH-QUESTION :STATEMENT MV2311 :WH IF)
 (:VAR MV2311 :ISA THERE-EXISTS :VALUE MV2309 :PREDICATE MV2305)
 (:VAR MV2309 :ISA GENE :PREDICATION MV2310 :QUANTIFIER MV2306 :MODIFIER MV2308 :RAW-TEXT "genes")
 (:VAR MV2310 :ISA REGULATE :OBJECT MV2309 :AGENT MV2298 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2298 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2306 :ISA ANY :WORD "any") (:VAR MV2308 :ISA APOPTOTIC) (:VAR MV2305 :ISA BE))

___________________
237: "Let me know which genes stat3 regulates"

                    SOURCE-START
e14   LET           1 "Let me know which genes stat3 regulates" 9
                    END-OF-SOURCE
("Let me know which genes stat3 regulates"
 (:VAR MV2315 :ISA LET :COMPLEMENT MV2321 :PRESENT "PRESENT")
 (:VAR MV2321 :ISA KNOW :AGENT MV2316 :STATEMENT MV2319 :PRESENT "PRESENT")
 (:VAR MV2316 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2319 :ISA GENE :PREDICATION MV2320 :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV2320 :ISA REGULATE :OBJECT MV2319 :AGENT MV2314 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2314 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
238: "List all the genes regulated by elk1 and srf?"

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf?"
 (:VAR MV2323 :ISA LIST :THEME MV2326 :PRESENT "PRESENT")
 (:VAR MV2326 :ISA GENE :PREDICATION MV2327 :QUANTIFIER MV2324 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV2327 :ISA REGULATE :OBJECT MV2326 :AGENT MV2331 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV2331 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2322 MV2330))
 (:VAR MV2322 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2330 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2324 :ISA ALL :WORD "all"))

___________________
239: "List genes regulated by elk1 and srf"

                    SOURCE-START
e12   LIST          1 "List genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("List genes regulated by elk1 and srf" (:VAR MV2334 :ISA LIST :THEME MV2335 :PRESENT "PRESENT")
 (:VAR MV2335 :ISA GENE :PREDICATION MV2336 :RAW-TEXT "genes")
 (:VAR MV2336 :ISA REGULATE :OBJECT MV2335 :AGENT MV2340 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV2340 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2333 MV2339))
 (:VAR MV2333 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2339 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
240: "List some genes that are regulated by elk1 and srf"

                    SOURCE-START
e21   LIST          1 "List some genes that are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("List some genes that are regulated by elk1 and srf"
 (:VAR MV2343 :ISA LIST :THEME MV2345 :PRESENT "PRESENT")
 (:VAR MV2345 :ISA GENE :PREDICATION MV2353 :QUANTIFIER MV2344 :RAW-TEXT "genes")
 (:VAR MV2353 :ISA REGULATE :OBJECT MV2345 :THAT-REL T :AGENT MV2352 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV2352 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2342 MV2351))
 (:VAR MV2342 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2351 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2344 :ISA SOME :WORD "some"))

___________________
241: "List the evidence that kras decreases frizzled8."

                    SOURCE-START
e15   LIST          1 "List the evidence that kras decreases frizzled8" 9
                    PERIOD
                    END-OF-SOURCE
("List the evidence that kras decreases frizzled8."
 (:VAR MV2356 :ISA LIST :THEME MV2362 :PRESENT "PRESENT")
 (:VAR MV2362 :ISA EVIDENCE :STATEMENT MV2361 :HAS-DETERMINER "THE")
 (:VAR MV2361 :ISA DECREASE :AGENT MV2360 :OBJECT MV2355 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV2360 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV2355 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
242: "Name genes regulated by elk1 and srf"

                    SOURCE-START
e14   NAME-SOMETHING  1 "Name genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("Name genes regulated by elk1 and srf"
 (:VAR MV2364 :ISA NAME-SOMETHING :PATIENT MV2367 :PRESENT "PRESENT")
 (:VAR MV2367 :ISA GENE :PREDICATION MV2368 :RAW-TEXT "genes")
 (:VAR MV2368 :ISA REGULATE :OBJECT MV2367 :AGENT MV2372 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV2372 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2363 MV2371))
 (:VAR MV2363 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2371 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
243: "Of the apoptotic genes regulated by stat3, which are active in the liver?"

                    SOURCE-START
e33   COPULAR-PREDICATE 1 "Of the apoptotic genes regulated by stat3, which are active in the liver" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes regulated by stat3, which are active in the liver?"
 (:VAR MV2390 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2379 :VALUE MV2384 :PREDICATE MV2383)
 (:VAR MV2379 :ISA GENE :PREDICATION MV2380 :HAS-DETERMINER "THE" :MODIFIER MV2378 :RAW-TEXT
  "genes")
 (:VAR MV2380 :ISA REGULATE :OBJECT MV2379 :AGENT MV2374 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV2374 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2378 :ISA APOPTOTIC) (:VAR MV2384 :ISA ACTIVE :ORGAN MV2387)
 (:VAR MV2387 :ISA LIVER :HAS-DETERMINER "THE") (:VAR MV2383 :ISA BE :PRESENT "PRESENT"))

___________________
244: "Of the apoptotic genes stat3 regulates, which are active in the liver?"

                    SOURCE-START
e30   COPULAR-PREDICATE 1 "Of the apoptotic genes stat3 regulates, which are active in the liver" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes stat3 regulates, which are active in the liver?"
 (:VAR MV2408 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2398 :VALUE MV2402 :PREDICATE MV2401)
 (:VAR MV2398 :ISA GENE :PREDICATION MV2399 :HAS-DETERMINER "THE" :MODIFIER MV2397 :RAW-TEXT
  "genes")
 (:VAR MV2399 :ISA REGULATE :OBJECT MV2398 :AGENT MV2393 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2393 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2397 :ISA APOPTOTIC) (:VAR MV2402 :ISA ACTIVE :ORGAN MV2405)
 (:VAR MV2405 :ISA LIVER :HAS-DETERMINER "THE") (:VAR MV2401 :ISA BE :PRESENT "PRESENT"))

___________________
245: "Of the genes stat3 regulates in the liver, which are apoptotic?"

                    SOURCE-START
e28   COPULAR-PREDICATE 1 "Of the genes stat3 regulates in the liver, which are apoptotic" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the genes stat3 regulates in the liver, which are apoptotic?"
 (:VAR MV2423 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2413 :VALUE MV2420 :PREDICATE MV2419)
 (:VAR MV2413 :ISA GENE :PREDICATION MV2414 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV2414 :ISA REGULATE :OBJECT MV2413 :AGENT MV2410 :ORGAN MV2417 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV2410 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2417 :ISA LIVER :HAS-DETERMINER "THE") (:VAR MV2420 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2419 :ISA BE :PRESENT "PRESENT"))

___________________
246: "Of the hepatic genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Of the hepatic genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the hepatic genes stat3 regulates, which are apoptotic?"
 (:VAR MV2437 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2430 :VALUE MV2434 :PREDICATE MV2433)
 (:VAR MV2430 :ISA GENE :PREDICATION MV2431 :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2429
  :RAW-TEXT "genes")
 (:VAR MV2431 :ISA REGULATE :OBJECT MV2430 :AGENT MV2426 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2426 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2429 :ISA LIVER) (:VAR MV2434 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2433 :ISA BE :PRESENT "PRESENT"))

___________________
247: "Of the liver genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Of the liver genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the liver genes stat3 regulates, which are apoptotic?"
 (:VAR MV2450 :ISA COPULAR-PREDICATION :CIRCUMSTANCE MV2443 :VALUE MV2447 :PREDICATE MV2446)
 (:VAR MV2443 :ISA GENE :PREDICATION MV2444 :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2442
  :RAW-TEXT "genes")
 (:VAR MV2444 :ISA REGULATE :OBJECT MV2443 :AGENT MV2439 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2439 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2442 :ISA LIVER) (:VAR MV2447 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2446 :ISA BE :PRESENT "PRESENT"))

___________________
248: "Please find pathways involving SRF"

                    SOURCE-START
e8    FIND-OUT      1 "Please find pathways involving SRF" 6
                    END-OF-SOURCE
("Please find pathways involving SRF"
 (:VAR MV2458 :ISA FIND-OUT :STATEMENT MV2455 :PRESENT "PRESENT" :ADVERB MV2452)
 (:VAR MV2455 :ISA PATHWAY :PREDICATION MV2456 :RAW-TEXT "pathways")
 (:VAR MV2456 :ISA INVOLVE :PARTICIPANT MV2455 :THEME MV2457 :PROGRESSIVE "PROGRESSIVE")
 (:VAR MV2457 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2452 :ISA PLEASE))

___________________
249: "Please show me KEGG pathways involving SRF"

                    SOURCE-START
e13   SHOW          1 "Please show me KEGG pathways involving SRF" 8
                    END-OF-SOURCE
("Please show me KEGG pathways involving SRF"
 (:VAR MV2460 :ISA SHOW :STATEMENT-OR-THEME MV2462 :BENEFICIARY MV2461 :PRESENT "PRESENT" :ADVERB
  MV2459)
 (:VAR MV2462 :ISA PATHWAY :PREDICATION MV2463 :MODIFIER MV2465 :RAW-TEXT "pathways")
 (:VAR MV2463 :ISA INVOLVE :PARTICIPANT MV2462 :THEME MV2464 :PROGRESSIVE "PROGRESSIVE")
 (:VAR MV2464 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2465 :ISA BIO-ENTITY :NAME "KEGG") (:VAR MV2461 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2459 :ISA PLEASE))

___________________
250: "Please show me pathways involving SRF"

                    SOURCE-START
e11   SHOW          1 "Please show me pathways involving SRF" 7
                    END-OF-SOURCE
("Please show me pathways involving SRF"
 (:VAR MV2467 :ISA SHOW :STATEMENT-OR-THEME MV2469 :BENEFICIARY MV2468 :PRESENT "PRESENT" :ADVERB
  MV2466)
 (:VAR MV2469 :ISA PATHWAY :PREDICATION MV2470 :RAW-TEXT "pathways")
 (:VAR MV2470 :ISA INVOLVE :PARTICIPANT MV2469 :THEME MV2471 :PROGRESSIVE "PROGRESSIVE")
 (:VAR MV2471 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2468 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV2466 :ISA PLEASE))

___________________
251: "MEK activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "MEK activates ERK" 4
                    END-OF-SOURCE
("MEK activates ERK"
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
252: "Remove the fact that MEK activates ERK"

                    SOURCE-START
e14   REMOVE        1 "Remove the fact that MEK activates ERK" 8
                    END-OF-SOURCE
("Remove the fact that MEK activates ERK"
 (:VAR MV2475 :ISA REMOVE :OBJECT MV2482 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2482 :ISA FACT :STATEMENT MV2480 :HAS-DETERMINER "THE")
 (:VAR MV2480 :ISA BIO-ACTIVATE :AGENT MV2479 :OBJECT MV2481 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV2479 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2481 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV2487 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV2484 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV2484 :ISA BUILD :ARTIFACT MV2486 :PRESENT "PRESENT")
 (:VAR MV2486 :ISA MODEL :HAS-DETERMINER "A"))

___________________
254: "Inactive MEK activates ERK"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "Inactive MEK activates ERK" 5
                    END-OF-SOURCE
("Inactive MEK activates ERK"
 (:VAR MV2490 :ISA BIO-ACTIVATE :AGENT MV2489 :OBJECT MV2491 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV2489 :ISA PROTEIN-FAMILY :PREDICATION MV2488 :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2488 :ISA INACTIVE)
 (:VAR MV2491 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV2492 :ISA REMOVE :OBJECT MV2500 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV2500 :ISA FACT :STATEMENT MV2498 :HAS-DETERMINER "THE")
 (:VAR MV2498 :ISA BIO-ACTIVATE :AGENT MV2497 :OBJECT MV2499 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV2497 :ISA PROTEIN-FAMILY :PREDICATION MV2496 :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2496 :ISA INACTIVE)
 (:VAR MV2499 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV2502 :ISA SHOW :STATEMENT-OR-THEME MV2503 :PRESENT "PRESENT")
 (:VAR MV2503 :ISA PATHWAY :NON-CELLULAR-LOCATION MV2501 :RAW-TEXT "pathways")
 (:VAR MV2501 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
257: "Show me pathways involving SRF"

                    SOURCE-START
e9    SHOW          1 "Show me pathways involving SRF" 6
                    END-OF-SOURCE
("Show me pathways involving SRF"
 (:VAR MV2504 :ISA SHOW :STATEMENT-OR-THEME MV2506 :BENEFICIARY MV2505 :PRESENT "PRESENT")
 (:VAR MV2506 :ISA PATHWAY :PREDICATION MV2507 :RAW-TEXT "pathways")
 (:VAR MV2507 :ISA INVOLVE :PARTICIPANT MV2506 :THEME MV2508 :PROGRESSIVE "PROGRESSIVE")
 (:VAR MV2508 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2505 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
258: "Show me pathways with SRF in them"

                    SOURCE-START
e13   SHOW          1 "Show me pathways with SRF in them" 8
                    END-OF-SOURCE
("Show me pathways with SRF in them"
 (:VAR MV2509 :ISA SHOW :STATEMENT-OR-THEME MV2511 :BENEFICIARY MV2510 :PRESENT "PRESENT")
 (:VAR MV2511 :ISA PATHWAY :PATHWAYCOMPONENT MV2513 :RAW-TEXT "pathways")
 (:VAR MV2513 :ISA PROTEIN
  :CELL-LINE-OR-CELL-TYPE-OR-CELLULAR-LOCATION-OR-CONTEXT-OR-INFO-CONTEXT-OR-ORGAN-OR-PREPARATION-OR-ORGANISM-OR-IN-EQUILIBRIUM-WITH-OR-COMPLEX-OR-EQUILIBRIUM-STATE-OR-STATE-OR-IN-PATHWAY
  MV2515 :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2515 :ISA PRONOUN/PLURAL :WORD "them") (:VAR MV2510 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
259: "Show me pathways with SRF"

                    SOURCE-START
e8    SHOW          1 "Show me pathways with SRF" 6
                    END-OF-SOURCE
("Show me pathways with SRF"
 (:VAR MV2518 :ISA SHOW :STATEMENT-OR-THEME MV2520 :BENEFICIARY MV2519 :PRESENT "PRESENT")
 (:VAR MV2520 :ISA PATHWAY :PATHWAYCOMPONENT MV2522 :RAW-TEXT "pathways")
 (:VAR MV2522 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2519 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
260: "Show me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras decreases frizzled8."
 (:VAR MV2525 :ISA SHOW :STATEMENT-OR-THEME MV2532 :BENEFICIARY MV2526 :PRESENT "PRESENT")
 (:VAR MV2532 :ISA EVIDENCE :STATEMENT MV2531 :HAS-DETERMINER "THE")
 (:VAR MV2531 :ISA DECREASE :AGENT MV2530 :OBJECT MV2524 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV2530 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV2524 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV2526 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
261: "Show me the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   SHOW          1 "Show me the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV2534 :ISA SHOW :STATEMENT-OR-THEME MV2545 :BENEFICIARY MV2535 :PRESENT "PRESENT")
 (:VAR MV2545 :ISA EVIDENCE :STATEMENT MV2540 :HAS-DETERMINER "THE")
 (:VAR MV2540 :ISA DECREASE :AGENT MV2539 :AFFECTED-PROCESS-OR-OBJECT MV2542 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2539 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV2542 :ISA BIO-AMOUNT :MEASURED-ITEM MV2533 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV2533 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV2535 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
262: "Show me the evidence that kras regulates frizzled8?"

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras regulates frizzled8?"
 (:VAR MV2547 :ISA SHOW :STATEMENT-OR-THEME MV2554 :BENEFICIARY MV2548 :PRESENT "PRESENT")
 (:VAR MV2554 :ISA EVIDENCE :STATEMENT MV2553 :HAS-DETERMINER "THE")
 (:VAR MV2553 :ISA REGULATE :AGENT MV2552 :OBJECT MV2546 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV2552 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV2546 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV2548 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
263: "Show transcription factors shared by elk1 and srf"

                    SOURCE-START
e13   SHOW          1 "Show transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Show transcription factors shared by elk1 and srf"
 (:VAR MV2557 :ISA SHOW :STATEMENT-OR-THEME MV2555 :PRESENT "PRESENT")
 (:VAR MV2555 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2558 :RAW-TEXT "transcription factors")
 (:VAR MV2558 :ISA SHARE :OBJECT MV2555 :PARTICIPANT MV2562 :PAST "PAST" :RAW-TEXT "shared")
 (:VAR MV2562 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2556 MV2561))
 (:VAR MV2556 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2561 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV2572 :ISA TELL :THEME MV2584 :THEME MV2573 :PRESENT "PRESENT")
 (:VAR MV2584 :ISA REGULATE :AFFECTED-PROCESS MV2577 :AGENT MV2571 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV2577 :ISA PATHWAY :HAS-DETERMINER "WHAT" :PROCESS MV2575 :RAW-TEXT "pathways")
 (:VAR MV2575 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2571 :ISA PROTEIN :ORGAN MV2583 :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2583 :ISA LIVER :HAS-DETERMINER "THE") (:VAR MV2573 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
266: "Tell me what genes elk1 and srf regulate"

                    SOURCE-START
e15   TELL          1 "Tell me what genes elk1 and srf regulate" 10
                    END-OF-SOURCE
("Tell me what genes elk1 and srf regulate"
 (:VAR MV2588 :ISA TELL :THEME MV2591 :BENEFICIARY MV2589 :PRESENT "PRESENT")
 (:VAR MV2591 :ISA GENE :PREDICATION MV2594 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2594 :ISA REGULATE :OBJECT MV2591 :AGENT MV2595 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2595 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2587 MV2593))
 (:VAR MV2587 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2593 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2589 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
267: "Tell me what pathways are regulated by stat3 in the liver"

                    SOURCE-START
e24   TELL          1 "Tell me what pathways are regulated by stat3 in the liver" 13
                    END-OF-SOURCE
("Tell me what pathways are regulated by stat3 in the liver"
 (:VAR MV2597 :ISA TELL :THEME MV2607 :THEME MV2598 :PRESENT "PRESENT")
 (:VAR MV2607 :ISA REGULATE :AFFECTED-PROCESS MV2600 :AGENT MV2596 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV2600 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV2596 :ISA PROTEIN :ORGAN MV2606 :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2606 :ISA LIVER :HAS-DETERMINER "THE") (:VAR MV2598 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
268: "What KEGG pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What KEGG pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve immune signaling?"
 (:VAR MV2613 :ISA INVOLVE :PARTICIPANT MV2612 :THEME MV2615 :PRESENT "PRESENT")
 (:VAR MV2612 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV2611 :RAW-TEXT "pathways")
 (:VAR MV2611 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV2615 :ISA SIGNAL :MODIFIER MV2614 :RAW-TEXT "signaling") (:VAR MV2614 :ISA IMMUNE))

___________________
269: "What MAP kinase phosphatases are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatases are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatases are regulated by ELK1?"
 (:VAR MV2623 :ISA REGULATE :OBJECT MV2619 :AGENT MV2617 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2619 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV2616 :RAW-TEXT "phosphatases")
 (:VAR MV2616 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME "mitogen activated protein kinase"
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
 (:VAR MV2617 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
270: "What apoptotic genes are downstream of stat3?"

                    SOURCE-START
e16   BE            1 "What apoptotic genes are downstream of stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes are downstream of stat3?"
 (:VAR MV2630 :ISA BE :SUBJECT MV2629 :PREDICATE MV2631 :PRESENT "PRESENT")
 (:VAR MV2629 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV2628 :RAW-TEXT "genes")
 (:VAR MV2628 :ISA APOPTOTIC)
 (:VAR MV2631 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2625 :RAW-TEXT "downstream")
 (:VAR MV2625 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
271: "What apoptotic genes does stat3 regulate in the liver?"

                    SOURCE-START
e19   REGULATE      1 "What apoptotic genes does stat3 regulate in the liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate in the liver?"
 (:VAR MV2641 :ISA REGULATE :OBJECT MV2639 :AGENT MV2635 :ORGAN MV2644 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV2639 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV2638 :RAW-TEXT "genes")
 (:VAR MV2638 :ISA APOPTOTIC)
 (:VAR MV2635 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2644 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
272: "What apoptotic genes does stat3 regulate?"

                    SOURCE-START
e11   REGULATE      1 "What apoptotic genes does stat3 regulate" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate?"
 (:VAR MV2652 :ISA REGULATE :OBJECT MV2650 :AGENT MV2646 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2650 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV2649 :RAW-TEXT "genes")
 (:VAR MV2649 :ISA APOPTOTIC)
 (:VAR MV2646 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
273: "What apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "What apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes is stat3 upstream of?"
 (:VAR MV2658 :ISA BE :SUBJECT MV2657 :PREDICATE MV2659 :PRESENT "PRESENT")
 (:VAR MV2657 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV2656 :RAW-TEXT "genes")
 (:VAR MV2656 :ISA APOPTOTIC)
 (:VAR MV2659 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV2657 :MODIFIER MV2653 :RAW-TEXT "upstream")
 (:VAR MV2657 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV2656 :RAW-TEXT "genes")
 (:VAR MV2656 :ISA APOPTOTIC)
 (:VAR MV2653 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
274: "What apoptotic pathways involve stat3?"

                    SOURCE-START
e10   INVOLVE       1 "What apoptotic pathways involve stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic pathways involve stat3?"
 (:VAR MV2667 :ISA INVOLVE :PARTICIPANT MV2666 :THEME MV2662 :PRESENT "PRESENT")
 (:VAR MV2666 :ISA PATHWAY :HAS-DETERMINER "WHAT" :PROCESS MV2664 :RAW-TEXT "pathways")
 (:VAR MV2664 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2662 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
275: "What are Selumetinib's targets?"

                    SOURCE-START
e9    BE            1 "What are Selumetinib's targets" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are Selumetinib's targets?"
 (:VAR MV2669 :ISA BE :SUBJECT MV2668 :PREDICATE MV2672 :PRESENT "PRESENT") (:VAR MV2668 :ISA WHAT)
 (:VAR MV2672 :ISA TARGET-PROTEIN :AGENT MV2671 :RAW-TEXT "targets")
 (:VAR MV2671 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
276: "What are some JAK1 inhibitors?"

                    SOURCE-START
e9    BE            1 "What are some JAK1 inhibitors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some JAK1 inhibitors?"
 (:VAR MV2676 :ISA BE :SUBJECT MV2675 :PREDICATE MV2678 :PRESENT "PRESENT") (:VAR MV2675 :ISA WHAT)
 (:VAR MV2678 :ISA INHIBITOR :QUANTIFIER MV2677 :PROTEIN MV2674 :RAW-TEXT "inhibitors")
 (:VAR MV2677 :ISA SOME :WORD "some")
 (:VAR MV2674 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME "JAK1_HUMAN"))

___________________
277: "What are some drugs that inhibit BRAF?"

                    SOURCE-START
e14   BE            1 "What are some drugs that inhibit BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs that inhibit BRAF?"
 (:VAR MV2680 :ISA BE :SUBJECT MV2679 :PREDICATE MV2682 :PRESENT "PRESENT") (:VAR MV2679 :ISA WHAT)
 (:VAR MV2682 :ISA DRUG :PREDICATION MV2684 :QUANTIFIER MV2681 :RAW-TEXT "drugs")
 (:VAR MV2684 :ISA INHIBIT :AGENT MV2682 :THAT-REL T :OBJECT MV2685 :PRESENT "PRESENT" :RAW-TEXT
  "inhibit")
 (:VAR MV2685 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV2681 :ISA SOME :WORD "some"))

___________________
278: "What are some genes in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some genes in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes in the MAPK signaling pathway?"
 (:VAR MV2688 :ISA BE :SUBJECT MV2687 :PREDICATE MV2690 :PRESENT "PRESENT") (:VAR MV2687 :ISA WHAT)
 (:VAR MV2690 :ISA GENE :CONTEXT MV2686 :QUANTIFIER MV2689 :RAW-TEXT "genes")
 (:VAR MV2686 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2693 :RAW-TEXT
  "signaling pathway")
 (:VAR MV2693 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV2689 :ISA SOME :WORD "some"))

___________________
279: "What are some proteins in the MAPK signaling pathway?"

                    SOURCE-START
e17   BE            1 "What are some proteins in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some proteins in the MAPK signaling pathway?"
 (:VAR MV2697 :ISA BE :SUBJECT MV2696 :PREDICATE MV2699 :PRESENT "PRESENT") (:VAR MV2696 :ISA WHAT)
 (:VAR MV2699 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV2695 :QUANTIFIER MV2698 :RAW-TEXT "proteins")
 (:VAR MV2695 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2702 :RAW-TEXT
  "signaling pathway")
 (:VAR MV2702 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV2698 :ISA SOME :WORD "some"))

___________________
280: "What are the members of RAS?"

                    SOURCE-START
e12   BE            1 "What are the members of RAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of RAS?"
 (:VAR MV2705 :ISA BE :SUBJECT MV2704 :PREDICATE MV2707 :PRESENT "PRESENT") (:VAR MV2704 :ISA WHAT)
 (:VAR MV2707 :ISA MEMBER :SET MV2709 :HAS-DETERMINER "THE")
 (:VAR MV2709 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV2715 :ISA BE :SUBJECT MV2714 :PREDICATE MV2717 :PRESENT "PRESENT") (:VAR MV2714 :ISA WHAT)
 (:VAR MV2717 :ISA MICRO-RNA :PREDICATION MV2719 :HAS-DETERMINER "THE" :RAW-TEXT "miRNAS")
 (:VAR MV2719 :ISA REGULATE :AGENT MV2717 :THAT-REL T :OBJECT MV2723 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV2723 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV2720 MV2721 MV2711 MV2712 MV2713))
 (:VAR MV2720 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV2721 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2711 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2712 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV2713 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN"))

___________________
282: "What are the regulators of MAPPK14 in bladder"

                    SOURCE-START
e19   BE            1 "What are the regulators of MAPPK14 in bladder" 10
                    END-OF-SOURCE
("What are the regulators of MAPPK14 in bladder"
 (:VAR MV2725 :ISA BE :SUBJECT MV2724 :PREDICATE MV2727 :PRESENT "PRESENT") (:VAR MV2724 :ISA WHAT)
 (:VAR MV2727 :ISA REGULATOR :THEME MV2733 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV2733 :ISA BIO-ENTITY :ORGAN MV2732 :NAME "MAPPK14")
 (:VAR MV2732 :ISA BIO-ORGAN :NAME "bladder" :UID "BTO:0001418"))

___________________
283: "What are the regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What are the regulators of SMURF2 in liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2 in liver?"
 (:VAR MV2738 :ISA BE :SUBJECT MV2737 :PREDICATE MV2740 :PRESENT "PRESENT") (:VAR MV2737 :ISA WHAT)
 (:VAR MV2740 :ISA REGULATOR :THEME MV2736 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV2736 :ISA PROTEIN :ORGAN MV2743 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN")
 (:VAR MV2743 :ISA LIVER))

___________________
284: "What are the regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What are the regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2?"
 (:VAR MV2748 :ISA BE :SUBJECT MV2747 :PREDICATE MV2750 :PRESENT "PRESENT") (:VAR MV2747 :ISA WHAT)
 (:VAR MV2750 :ISA REGULATOR :THEME MV2746 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV2746 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
285: "What are the regulators of c-fos in lung?"

                    SOURCE-START
e18   BE            1 "What are the regulators of c-fos in lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of c-fos in lung?"
 (:VAR MV2755 :ISA BE :SUBJECT MV2754 :PREDICATE MV2757 :PRESENT "PRESENT") (:VAR MV2754 :ISA WHAT)
 (:VAR MV2757 :ISA REGULATOR :THEME MV2753 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV2753 :ISA PROTEIN :ORGAN MV2760 :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV2760 :ISA LUNG))

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
 (:VAR MV2778 :ISA BE :SUBJECT MV2777 :PREDICATE MV2780 :PRESENT "PRESENT") (:VAR MV2777 :ISA WHAT)
 (:VAR MV2780 :ISA REGULATOR :THEME MV2776 :HAS-DETERMINER "THE" :RAW-TEXT "regulators")
 (:VAR MV2776 :ISA PROTEIN :RAW-TEXT "mapk14" :UID "UP:Q16539" :NAME "MK14_HUMAN"))

___________________
288: "What are the targets of PLX-4720?"

                    SOURCE-START
e14   BE            1 "What are the targets of PLX-4720" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the targets of PLX-4720?"
 (:VAR MV2785 :ISA BE :SUBJECT MV2784 :PREDICATE MV2787 :PRESENT "PRESENT") (:VAR MV2784 :ISA WHAT)
 (:VAR MV2787 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV2783 :HAS-DETERMINER "THE" :RAW-TEXT "targets")
 (:VAR MV2783 :ISA MOLECULE :RAW-TEXT "PLX-4720" :UID "PCID:24180719"))

___________________
289: "What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e28   COPULAR-PREDICATION 1 "What are the transcription factors in common to the SRF, HRAS, and elk1 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
 (:VAR MV2805 :ISA COPULAR-PREDICATION :ITEM MV2794 :VALUE MV2792 :PREDICATE MV2795)
 (:VAR MV2794 :ISA WHAT) (:VAR MV2792 :ISA IN-COMMON :THEME MV2802)
 (:VAR MV2802 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2803 :RAW-TEXT "genes")
 (:VAR MV2803 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV2799 MV2800 MV2793))
 (:VAR MV2799 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2800 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME "RASH_HUMAN")
 (:VAR MV2793 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV2795 :ISA BE :PREDICATE MV2791 :PRESENT "PRESENT")
 (:VAR MV2791 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :RAW-TEXT "transcription factors"))

___________________
290: "What are the transcription factors that regulate EELK1 and SRF?"

                    SOURCE-START
e21   BE            1 "What are the transcription factors that regulate EELK1 and SRF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EELK1 and SRF?"
 (:VAR MV2808 :ISA BE :SUBJECT MV2807 :PREDICATE MV2806 :PRESENT "PRESENT") (:VAR MV2807 :ISA WHAT)
 (:VAR MV2806 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2811 :HAS-DETERMINER "THE" :RAW-TEXT
  "transcription factors")
 (:VAR MV2811 :ISA REGULATE :AGENT MV2806 :THAT-REL T :OBJECT MV2817 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV2817 :ISA COLLECTION :RAW-TEXT "EELK1 and SRF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV2816 MV2815))
 (:VAR MV2816 :ISA BIO-ENTITY :NAME "EELK1")
 (:VAR MV2815 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
291: "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"

                    SOURCE-START
e30   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
 (:VAR MV2822 :ISA BE :SUBJECT MV2821 :PREDICATE MV2818 :PRESENT "PRESENT") (:VAR MV2821 :ISA WHAT)
 (:VAR MV2818 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2825 :HAS-DETERMINER "THE" :RAW-TEXT
  "transcription factors")
 (:VAR MV2825 :ISA REGULATE :AGENT MV2818 :THAT-REL T :OBJECT MV2832 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV2832 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAAT3, JAK2, and SMAD3" :TYPE PROTEIN :NUMBER
  5 :ITEMS (MV2826 MV2827 MV2831 MV2819 MV2820))
 (:VAR MV2826 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV2827 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2831 :ISA BIO-ENTITY :NAME "STAAT3")
 (:VAR MV2819 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV2820 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN"))

___________________
292: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV2838 :ISA BE :SUBJECT MV2837 :PREDICATE MV2833 :PRESENT "PRESENT") (:VAR MV2837 :ISA WHAT)
 (:VAR MV2833 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2841 :HAS-DETERMINER "THE" :RAW-TEXT
  "transcription factors")
 (:VAR MV2841 :ISA REGULATE :AGENT MV2833 :THAT-REL T :OBJECT MV2845 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV2845 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV2842 MV2843 MV2834 MV2835 MV2836))
 (:VAR MV2842 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV2843 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2834 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV2835 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV2836 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN"))

___________________
293: "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"

                    SOURCE-START
e26   BE            1 "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
 (:VAR MV2850 :ISA BE :SUBJECT MV2849 :PREDICATE MV2854 :PRESENT "PRESENT") (:VAR MV2849 :ISA WHAT)
 (:VAR MV2854 :ISA REGULATOR :THEME MV2858 :HAS-DETERMINER "THE" :CONTEXT MV2852 :RAW-TEXT
  "regulators")
 (:VAR MV2858 :ISA COLLECTION :RAW-TEXT "CCND1, FOXM1, DHFR, and KLF4" :TYPE PROTEIN :NUMBER 4
  :ITEMS (MV2846 MV2847 MV2856 MV2848))
 (:VAR MV2846 :ISA PROTEIN :RAW-TEXT "CCND1" :UID "UP:P24385" :NAME "CCND1_HUMAN")
 (:VAR MV2847 :ISA PROTEIN :RAW-TEXT "FOXM1" :UID "UP:Q08050" :NAME "FOXM1_HUMAN")
 (:VAR MV2856 :ISA PROTEIN :RAW-TEXT "DHFR" :UID "UP:P00374" :NAME "DYR_HUMAN")
 (:VAR MV2848 :ISA PROTEIN :RAW-TEXT "KLF4" :UID "UP:O43474" :NAME "KLF4_HUMAN")
 (:VAR MV2852 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
294: "What cell cycle genes are regulated by FOS?"

                    SOURCE-START
e14   REGULATE      1 "What cell cycle genes are regulated by FOS" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What cell cycle genes are regulated by FOS?"
 (:VAR MV2867 :ISA REGULATE :OBJECT MV2862 :AGENT MV2866 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2862 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV2860 :RAW-TEXT "genes")
 (:VAR MV2860 :ISA CELLULAR-PROCESS :RAW-TEXT "cell cycle" :UID "GO:0007049")
 (:VAR MV2866 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
295: "What does ERBB regulate?"

                    SOURCE-START
e5    REGULATE      1 "What does ERBB regulate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERBB regulate?"
 (:VAR MV2872 :ISA REGULATE :OBJECT MV2869 :AGENT MV2871 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2869 :ISA WHAT)
 (:VAR MV2871 :ISA PROTEIN :RAW-TEXT "ERBB" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
296: "What does it regulate in liver"

                    SOURCE-START
e11   REGULATE      1 "What does it regulate in liver" 7
                    END-OF-SOURCE
("What does it regulate in liver"
 (:VAR MV2876 :ISA REGULATE :OBJECT MV2873 :AGENT-OR-CAUSE MV2875 :ORGAN MV2878 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2873 :ISA WHAT) (:VAR MV2875 :ISA PRONOUN/INANIMATE :WORD "it") (:VAR MV2878 :ISA LIVER))

___________________
297: "What does miR-20b-5p target"

                    SOURCE-START
e7    TARGET        1 "What does miR-20b-5p target" 11
                    END-OF-SOURCE
("What does miR-20b-5p target"
 (:VAR MV2884 :ISA TARGET :OBJECT MV2881 :AGENT MV2880 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV2881 :ISA WHAT)
 (:VAR MV2880 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm" :UID "MIMAT0001413"))

___________________
298: "What does p53 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does p53 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does p53 regulate?"
 (:VAR MV2888 :ISA REGULATE :OBJECT MV2886 :AGENT MV2885 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2886 :ISA WHAT)
 (:VAR MV2885 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
299: "What does rb1 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does rb1 regulate" 6
                    END-OF-SOURCE
("What does rb1 regulate"
 (:VAR MV2892 :ISA REGULATE :OBJECT MV2890 :AGENT MV2889 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2890 :ISA WHAT)
 (:VAR MV2889 :ISA PROTEIN :RAW-TEXT "rb1" :UID "UP:P06400" :NAME "RB_HUMAN"))

___________________
300: "What does smad2 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does smad2 regulate" 6
                    END-OF-SOURCE
("What does smad2 regulate"
 (:VAR MV2896 :ISA REGULATE :OBJECT MV2894 :AGENT MV2893 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2894 :ISA WHAT)
 (:VAR MV2893 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
301: "What does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "What does stat regulate" 5
                    END-OF-SOURCE
("What does stat regulate"
 (:VAR MV2900 :ISA REGULATE :OBJECT MV2897 :AGENT MV2899 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2897 :ISA WHAT)
 (:VAR MV2899 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME "SOAT1_HUMAN"))

___________________
302: "What downregulates fzd8?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates fzd8?"
 (:VAR MV2903 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV2902 :OBJECT MV2901 :PRESENT "PRESENT" :RAW-TEXT
  "downregulates")
 (:VAR MV2902 :ISA WHAT)
 (:VAR MV2901 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
303: "What drug could I use to target pancreatic cancer?"

                    SOURCE-START
e20   BIO-USE       1 "What drug could I use to target pancreatic cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use to target pancreatic cancer?"
 (:VAR MV2917 :ISA BIO-USE :PATIENT MV2906 :MODAL MV2907 :AGENT MV2908 :THEME MV2916 :PRESENT
  "PRESENT" :RAW-TEXT "use")
 (:VAR MV2906 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug") (:VAR MV2907 :ISA COULD)
 (:VAR MV2908 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2916 :ISA TARGET :OBJECT MV2904 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV2904 :ISA CANCER :UID "TS-0739"))

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
 (:VAR MV2932 :ISA BE :SUBJECT MV2931 :PREDICATE MV2933 :PRESENT "PRESENT")
 (:VAR MV2931 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2933 :ISA INHIBITOR :PROTEIN MV2929 :RAW-TEXT "inhibitors")
 (:VAR MV2929 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN"))

___________________
306: "What drugs inhibit MAP2K1?"

                    SOURCE-START
e7    INHIBIT       1 "What drugs inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs inhibit MAP2K1?"
 (:VAR MV2939 :ISA INHIBIT :AGENT MV2938 :OBJECT MV2936 :PRESENT "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV2938 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2936 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
307: "What drugs regulate BRAF?"

                    SOURCE-START
e6    REGULATE      1 "What drugs regulate BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs regulate BRAF?"
 (:VAR MV2942 :ISA REGULATE :AGENT MV2941 :OBJECT MV2943 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2941 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2943 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
308: "What drugs target BRAF?"

                    SOURCE-START
e7    TARGET        1 "What drugs target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target BRAF?"
 (:VAR MV2947 :ISA TARGET :AGENT MV2945 :OBJECT MV2948 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV2945 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2948 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
309: "What genes are downstream of stat3?"

                    SOURCE-START
e13   BE            1 "What genes are downstream of stat3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are downstream of stat3?"
 (:VAR MV2952 :ISA BE :SUBJECT MV2951 :PREDICATE MV2953 :PRESENT "PRESENT")
 (:VAR MV2951 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2953 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2949 :RAW-TEXT "downstream")
 (:VAR MV2949 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
310: "What genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathway?"
 (:VAR MV2967 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2959 :VALUE MV2966 :PREP "IN" :PREDICATE
  MV2960)
 (:VAR MV2959 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2966 :ISA GENE :CONTEXT MV2957 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2957 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2963 :RAW-TEXT
  "signaling pathway")
 (:VAR MV2963 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV2960 :ISA BE :PRESENT "PRESENT"))

___________________
311: "What genes are in the MAPK signaling pathways?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathways?"
 (:VAR MV2979 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2971 :VALUE MV2978 :PREP "IN" :PREDICATE
  MV2972)
 (:VAR MV2971 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2978 :ISA GENE :CONTEXT MV2969 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2969 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2975 :RAW-TEXT
  "signaling pathways")
 (:VAR MV2975 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV2972 :ISA BE :PRESENT "PRESENT"))

___________________
312: "What genes are in the immune system pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the immune system pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the immune system pathway?"
 (:VAR MV2991 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2983 :VALUE MV2990 :PREP "IN" :PREDICATE
  MV2984)
 (:VAR MV2983 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2990 :ISA GENE :CONTEXT MV2987 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2987 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2981 :RAW-TEXT "pathway")
 (:VAR MV2981 :ISA BIO-ORGAN :UID "UBERON:0002405") (:VAR MV2984 :ISA BE :PRESENT "PRESENT"))

___________________
313: "What genes are in the prolactin signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the prolactin signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the prolactin signaling pathway?"
 (:VAR MV3003 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2995 :VALUE MV3002 :PREP "IN" :PREDICATE
  MV2996)
 (:VAR MV2995 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3002 :ISA GENE :CONTEXT MV2993 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2993 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2999 :RAW-TEXT
  "signaling pathway")
 (:VAR MV2999 :ISA PROTEIN :RAW-TEXT "prolactin" :UID "UP:P01236" :NAME "PRL_HUMAN")
 (:VAR MV2996 :ISA BE :PRESENT "PRESENT"))

___________________
314: "What genes are involved in the IL-12 pathway?"

                    SOURCE-START
e18   INVOLVE       1 "What genes are involved in the IL-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the IL-12 pathway?"
 (:VAR MV3016 :ISA INVOLVE :THEME MV3008 :CONTEXT MV3013 :PRESENT "PRESENT")
 (:VAR MV3008 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3013 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3006 :RAW-TEXT "pathway")
 (:VAR MV3006 :ISA PROTEIN :RAW-TEXT "IL-12" :UID "NCIT:C20514" :NAME "NCIT:C20514"))

___________________
315: "What genes are involved in the Prolactin pathway?"

                    SOURCE-START
e16   INVOLVE       1 "What genes are involved in the Prolactin pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the Prolactin pathway?"
 (:VAR MV3027 :ISA INVOLVE :THEME MV3018 :CONTEXT MV3024 :PRESENT "PRESENT")
 (:VAR MV3018 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3024 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3023 :RAW-TEXT "pathway")
 (:VAR MV3023 :ISA PROTEIN :RAW-TEXT "Prolactin" :UID "UP:P01236" :NAME "PRL_HUMAN"))

___________________
316: "What genes are involved in the il-12 pathway?"

                    SOURCE-START
e17   INVOLVE       1 "What genes are involved in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the il-12 pathway?"
 (:VAR MV3038 :ISA INVOLVE :THEME MV3030 :CONTEXT MV3035 :PRESENT "PRESENT")
 (:VAR MV3030 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3035 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3028 :RAW-TEXT "pathway")
 (:VAR MV3028 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2 :FAMILY-MEMBERS
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
 (:VAR MV3049 :ISA INVOLVE :THEME MV3041 :CONTEXT MV3046 :PRESENT "PRESENT")
 (:VAR MV3041 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3046 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV3039 :RAW-TEXT "pathway")
 (:VAR MV3039 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
318: "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"

                    SOURCE-START
e23   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p" 28
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
 (:VAR MV3062 :ISA REGULATE :OBJECT MV3054 :AGENT MV3061 :PRESENT "PRESENT" :SUPERLATIVE MV3056
  :ADVERB MV3057 :RAW-TEXT "regulated")
 (:VAR MV3054 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3061 :ISA COLLECTION :RAW-TEXT "miR-335-5p, miR-155-5p and miR-145-5p" :TYPE MICRO-RNA
  :NUMBER 3 :ITEMS (MV3050 MV3051 MV3052))
 (:VAR MV3050 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p" :UID "MIMAT0000765")
 (:VAR MV3051 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p" :UID "MIMAT0000646")
 (:VAR MV3052 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p" :UID "MIMAT0000437")
 (:VAR MV3056 :ISA SUPERLATIVE-QUANTIFIER :NAME "most") (:VAR MV3057 :ISA FREQUENTLY))

___________________
319: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"

                    SOURCE-START
e26   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" 36
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
 (:VAR MV3077 :ISA REGULATE :OBJECT MV3069 :AGENT MV3076 :PRESENT "PRESENT" :SUPERLATIVE MV3071
  :ADVERB MV3072 :RAW-TEXT "regulated")
 (:VAR MV3069 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3076 :ISA COLLECTION :RAW-TEXT "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" :TYPE
  MICRO-RNA :NUMBER 4 :ITEMS (MV3064 MV3065 MV3066 MV3067))
 (:VAR MV3064 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p" :UID "MIMAT0000765")
 (:VAR MV3065 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p" :UID "MIMAT0000646")
 (:VAR MV3066 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p" :UID "MIMAT0000437")
 (:VAR MV3067 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm" :UID "MIMAT0000075")
 (:VAR MV3071 :ISA SUPERLATIVE-QUANTIFIER :NAME "most") (:VAR MV3072 :ISA FREQUENTLY))

___________________
320: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"

                    SOURCE-START
e27   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" 37
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
 (:VAR MV3092 :ISA REGULATE :OBJECT MV3084 :AGENT MV3091 :PRESENT "PRESENT" :SUPERLATIVE MV3086
  :ADVERB MV3087 :RAW-TEXT "regulated")
 (:VAR MV3084 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3091 :ISA COLLECTION :RAW-TEXT "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" :TYPE
  MICRO-RNA :NUMBER 4 :ITEMS (MV3079 MV3080 MV3081 MV3082))
 (:VAR MV3079 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p" :UID "MIMAT0000765")
 (:VAR MV3080 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p" :UID "MIMAT0000646")
 (:VAR MV3081 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p" :UID "MIMAT0000437")
 (:VAR MV3082 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm" :UID "MIMAT0000075")
 (:VAR MV3086 :ISA SUPERLATIVE-QUANTIFIER :NAME "most") (:VAR MV3087 :ISA FREQUENTLY))

___________________
321: "What genes are regulated by FAKEPRTN"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by FAKEPRTN" 7
                    END-OF-SOURCE
("What genes are regulated by FAKEPRTN"
 (:VAR MV3100 :ISA REGULATE :OBJECT MV3095 :AGENT MV3099 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3095 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3099 :ISA BIO-ENTITY :NAME "FAKEPRTN"))

___________________
322: "What genes are regulated by elk1 and srf?"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by elk1 and srf" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by elk1 and srf?"
 (:VAR MV3111 :ISA REGULATE :OBJECT MV3104 :AGENT MV3110 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3104 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3110 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3102 MV3109))
 (:VAR MV3102 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV3109 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
323: "What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"

                    SOURCE-START
e16   REGULATE      1 "What genes are regulated by miR-20b-5p and MIR-29B-1-5P" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
 (:VAR MV3122 :ISA REGULATE :OBJECT MV3116 :AGENT MV3121 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3116 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3121 :ISA COLLECTION :RAW-TEXT "miR-20b-5p and MIR-29B-1-5P" :TYPE MICRO-RNA :NUMBER 2
  :ITEMS (MV3113 MV3114))
 (:VAR MV3113 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm" :UID "MIMAT0001413")
 (:VAR MV3114 :ISA MICRO-RNA :RAW-TEXT "MIR-29B-1-5P" :NAME "microRNA 29b-1-5pm" :UID
  "MIMAT0004514"))

___________________
324: "What genes are regulated by smda2"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by smda2" 8
                    END-OF-SOURCE
("What genes are regulated by smda2"
 (:VAR MV3132 :ISA REGULATE :OBJECT MV3125 :AGENT MV3131 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3125 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3131 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
325: "What genes are regulated by srf"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by srf" 7
                    END-OF-SOURCE
("What genes are regulated by srf"
 (:VAR MV3140 :ISA REGULATE :OBJECT MV3135 :AGENT MV3139 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3135 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3139 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
326: "What genes are regulated by stat3 and srf"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by stat3 and srf" 10
                    END-OF-SOURCE
("What genes are regulated by stat3 and srf"
 (:VAR MV3151 :ISA REGULATE :OBJECT MV3144 :AGENT MV3150 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3144 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3150 :ISA COLLECTION :RAW-TEXT "stat3 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3142 MV3149))
 (:VAR MV3142 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3149 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
327: "What genes are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What genes are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are targeted by lung cancer?"
 (:VAR MV3159 :ISA TARGET :OBJECT MV3155 :CAUSE MV3153 :PRESENT "PRESENT" :RAW-TEXT "targeted")
 (:VAR MV3155 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3153 :ISA CANCER :UID "TS-0571"))

___________________
328: "What genes are there in the MAPK signaling pathway?"

                    SOURCE-START
e21   COPULAR-PREDICATE 1 "What genes are there in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are there in the MAPK signaling pathway?"
 (:VAR MV3173 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3163 :VALUE MV3172 :PREP "IN" :PREDICATE
  MV3164)
 (:VAR MV3163 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3172 :ISA GENE :CONTEXT MV3161 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3161 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3169 :RAW-TEXT
  "signaling pathway")
 (:VAR MV3169 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV3164 :ISA BE :PRESENT "PRESENT"))

___________________
329: "What genes are used in the MAPK signaling pathway?"

                    SOURCE-START
e17   BIO-USE       1 "What genes are used in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are used in the MAPK signaling pathway?"
 (:VAR MV3183 :ISA BIO-USE :OBJECT MV3177 :CONTEXT MV3175 :PRESENT "PRESENT" :RAW-TEXT "used")
 (:VAR MV3177 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3175 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3182 :RAW-TEXT
  "signaling pathway")
 (:VAR MV3182 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV3190 :ISA TARGET :OBJECT MV3187 :CAUSE MV3185 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3187 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3185 :ISA CANCER :UID "TS-0571"))

___________________
331: "What genes does miR-20b-5p target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-20b-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-20b-5p target?"
 (:VAR MV3196 :ISA TARGET :OBJECT MV3193 :AGENT MV3191 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3193 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3191 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm" :UID "MIMAT0001413"))

___________________
332: "What genes does miR-562 target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-562 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-562 target?"
 (:VAR MV3202 :ISA TARGET :OBJECT MV3199 :AGENT MV3197 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3199 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3197 :ISA MICRO-RNA :RAW-TEXT "miR-562" :NAME "microRNA 562" :UID "MI0003569"))

___________________
333: "What genes does smad2 upregulate?"

                    SOURCE-START
e8    UPREGULATE    1 "What genes does smad2 upregulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does smad2 upregulate?"
 (:VAR MV3207 :ISA UPREGULATE :OBJECT MV3205 :AGENT MV3203 :PRESENT "PRESENT" :RAW-TEXT
  "upregulate")
 (:VAR MV3205 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3203 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
334: "What genes does stat3 regulate in liver cells?"

                    SOURCE-START
e15   REGULATE      1 "What genes does stat3 regulate in liver cells" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver cells?"
 (:VAR MV3212 :ISA REGULATE :OBJECT MV3210 :AGENT MV3208 :CELL-TYPE MV3215 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3210 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3208 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3215 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV3214) (:VAR MV3214 :ISA LIVER))

___________________
335: "What genes does stat3 regulate in liver?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver?"
 (:VAR MV3221 :ISA REGULATE :OBJECT MV3219 :AGENT MV3217 :ORGAN MV3223 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV3219 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3217 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3223 :ISA LIVER))

___________________
336: "What genes does stat3 regulate in lung?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in lung" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in lung?"
 (:VAR MV3229 :ISA REGULATE :OBJECT MV3227 :AGENT MV3225 :ORGAN MV3231 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV3227 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3225 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3231 :ISA LUNG))

___________________
337: "What genes does stat3 regulate"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    END-OF-SOURCE
("What genes does stat3 regulate"
 (:VAR MV3237 :ISA REGULATE :OBJECT MV3235 :AGENT MV3233 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3235 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3233 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
338: "What genes in the liver does stat3 regulate?"

                    SOURCE-START
e16   REGULATE      1 "What genes in the liver does stat3 regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes in the liver does stat3 regulate?"
 (:VAR MV3245 :ISA REGULATE :OBJECT MV3240 :AGENT MV3238 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3240 :ISA GENE :ORGAN MV3243 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3243 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV3238 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

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
 (:VAR MV3257 :ISA BE :SUBJECT MV3256 :PREDICATE MV3258 :PRESENT "PRESENT")
 (:VAR MV3256 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3258 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3256 :MODIFIER MV3254 :RAW-TEXT "upstream")
 (:VAR MV3256 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3254 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
341: "What genes regulated by FOS are kinases?"

                    SOURCE-START
e14   BE            1 "What genes regulated by FOS are kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by FOS are kinases?"
 (:VAR MV3266 :ISA BE :SUBJECT MV3262 :PREDICATE MV3267 :PRESENT "PRESENT")
 (:VAR MV3262 :ISA GENE :PREDICATION MV3263 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3263 :ISA REGULATE :OBJECT MV3262 :AGENT MV3265 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV3265 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV3267 :ISA KINASE :RAW-TEXT "kinases"))

___________________
342: "What genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "What genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by stat3 are kinases?"
 (:VAR MV3274 :ISA BE :SUBJECT MV3271 :PREDICATE MV3275 :PRESENT "PRESENT")
 (:VAR MV3271 :ISA GENE :PREDICATION MV3272 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3272 :ISA REGULATE :OBJECT MV3271 :AGENT MV3269 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV3269 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3275 :ISA KINASE :RAW-TEXT "kinases"))

___________________
343: "What immune pathways involve KRAS and ELK1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve KRAS and ELK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve KRAS and ELK1?"
 (:VAR MV3281 :ISA INVOLVE :PARTICIPANT MV3280 :THEME MV3284 :PRESENT "PRESENT")
 (:VAR MV3280 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3279 :RAW-TEXT "pathways")
 (:VAR MV3279 :ISA IMMUNE)
 (:VAR MV3284 :ISA COLLECTION :RAW-TEXT "KRAS and ELK1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3282 MV3277))
 (:VAR MV3282 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV3277 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
344: "What immune pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "What immune pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve SRF?"
 (:VAR MV3288 :ISA INVOLVE :PARTICIPANT MV3287 :THEME MV3289 :PRESENT "PRESENT")
 (:VAR MV3287 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3286 :RAW-TEXT "pathways")
 (:VAR MV3286 :ISA IMMUNE)
 (:VAR MV3289 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
345: "What immune pathways involve kras and elk1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve kras and elk1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve kras and elk1?"
 (:VAR MV3294 :ISA INVOLVE :PARTICIPANT MV3293 :THEME MV3297 :PRESENT "PRESENT")
 (:VAR MV3293 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3292 :RAW-TEXT "pathways")
 (:VAR MV3292 :ISA IMMUNE)
 (:VAR MV3297 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3295 MV3290))
 (:VAR MV3295 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV3290 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
346: "What immune pathways involve tap1 and jak1?"

                    SOURCE-START
e17   INVOLVE       1 "What immune pathways involve tap1 and jak1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve tap1 and jak1?"
 (:VAR MV3301 :ISA INVOLVE :PARTICIPANT MV3300 :THEME MV3311 :PRESENT "PRESENT")
 (:VAR MV3300 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3299 :RAW-TEXT "pathways")
 (:VAR MV3299 :ISA IMMUNE)
 (:VAR MV3311 :ISA COLLECTION :RAW-TEXT "tap1 and jak1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3309 MV3310))
 (:VAR MV3309 :ISA PROTEIN :RAW-TEXT "tap1" :UID "UP:Q03518" :NAME "TAP1_HUMAN")
 (:VAR MV3310 :ISA PROTEIN :RAW-TEXT "jak1" :UID "UP:P23458" :NAME "JAK1_HUMAN"))

___________________
347: "What inhibits BRAF?"

                    SOURCE-START
e4    INHIBIT       1 "What inhibits BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits BRAF?"
 (:VAR MV3313 :ISA INHIBIT :AGENT-OR-CAUSE MV3312 :OBJECT MV3314 :PRESENT "PRESENT" :RAW-TEXT
  "inhibits")
 (:VAR MV3312 :ISA WHAT)
 (:VAR MV3314 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
348: "What is STAT3?"

                    SOURCE-START
e5    BE            1 "What is STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT3?" (:VAR MV3317 :ISA BE :SUBJECT MV3316 :PREDICATE MV3315 :PRESENT "PRESENT")
 (:VAR MV3316 :ISA WHAT)
 (:VAR MV3315 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
349: "What is STAT?"

                    SOURCE-START
e4    BE            1 "What is STAT" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT?" (:VAR MV3319 :ISA BE :SUBJECT MV3318 :PREDICATE MV3320 :PRESENT "PRESENT")
 (:VAR MV3318 :ISA WHAT)
 (:VAR MV3320 :ISA PROTEIN :RAW-TEXT "STAT" :UID "UP:P35610" :NAME "SOAT1_HUMAN"))

___________________
350: "What is downstream of stat3?"

                    SOURCE-START
e11   BE            1 "What is downstream of stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is downstream of stat3?"
 (:VAR MV3323 :ISA BE :SUBJECT MV3322 :PREDICATE MV3324 :PRESENT "PRESENT") (:VAR MV3322 :ISA WHAT)
 (:VAR MV3324 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV3321 :RAW-TEXT "downstream")
 (:VAR MV3321 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
351: "What is erbb?"

                    SOURCE-START
e4    BE            1 "What is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is erbb?" (:VAR MV3329 :ISA BE :SUBJECT MV3328 :PREDICATE MV3330 :PRESENT "PRESENT")
 (:VAR MV3328 :ISA WHAT)
 (:VAR MV3330 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
352: "What is errb?"

                    SOURCE-START
e4    BE            1 "What is errb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is errb?" (:VAR MV3332 :ISA BE :SUBJECT MV3331 :PREDICATE MV3333 :PRESENT "PRESENT")
 (:VAR MV3331 :ISA WHAT) (:VAR MV3333 :ISA BIO-ENTITY :NAME "errb"))

___________________
353: "What is regulated by elk1"

                    SOURCE-START
e10   REGULATE      1 "What is regulated by elk1" 7
                    END-OF-SOURCE
("What is regulated by elk1"
 (:VAR MV3339 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3335 :AGENT MV3334 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3335 :ISA WHAT)
 (:VAR MV3334 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
354: "What is the evidence that kras decreases frizzled8?"

                    SOURCE-START
e17   BE            1 "What is the evidence that kras decreases frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases frizzled8?"
 (:VAR MV3343 :ISA BE :SUBJECT MV3342 :PREDICATE MV3349 :PRESENT "PRESENT") (:VAR MV3342 :ISA WHAT)
 (:VAR MV3349 :ISA EVIDENCE :STATEMENT MV3348 :HAS-DETERMINER "THE")
 (:VAR MV3348 :ISA DECREASE :AGENT MV3347 :OBJECT MV3341 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV3347 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV3341 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
355: "What is the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   BE            1 "What is the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV3352 :ISA BE :SUBJECT MV3351 :PREDICATE MV3362 :PRESENT "PRESENT") (:VAR MV3351 :ISA WHAT)
 (:VAR MV3362 :ISA EVIDENCE :STATEMENT MV3357 :HAS-DETERMINER "THE")
 (:VAR MV3357 :ISA DECREASE :AGENT MV3356 :AFFECTED-PROCESS-OR-OBJECT MV3359 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV3356 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV3359 :ISA BIO-AMOUNT :MEASURED-ITEM MV3350 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV3350 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
356: "What is the target of Selumetinib?"

                    SOURCE-START
e13   BE            1 "What is the target of Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the target of Selumetinib?"
 (:VAR MV3364 :ISA BE :SUBJECT MV3363 :PREDICATE MV3366 :PRESENT "PRESENT") (:VAR MV3363 :ISA WHAT)
 (:VAR MV3366 :ISA TARGET-PROTEIN :AGENT MV3369 :HAS-DETERMINER "THE" :RAW-TEXT "target")
 (:VAR MV3369 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
357: "What kinases does smad2 regulate"

                    SOURCE-START
e8    REGULATE      1 "What kinases does smad2 regulate" 7
                    END-OF-SOURCE
("What kinases does smad2 regulate"
 (:VAR MV3375 :ISA REGULATE :OBJECT MV3373 :AGENT MV3371 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3373 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV3371 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
358: "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e23   REGULATE      1 "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3383 :ISA REGULATE :AGENT MV3380 :OBJECT MV3387 :PRESENT "PRESENT" :ADVERB MV3381 :ADVERB
  MV3382 :RAW-TEXT "regulate")
 (:VAR MV3380 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3387 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV3384 MV3385 MV3376 MV3377 MV3378))
 (:VAR MV3384 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV3385 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3376 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3377 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV3378 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN")
 (:VAR MV3381 :ISA SUPERLATIVE-QUANTIFIER :NAME "most") (:VAR MV3382 :ISA FREQUENTLY))

___________________
359: "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3393 :ISA REGULATE :AGENT MV3392 :OBJECT MV3397 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3392 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3397 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV3394 MV3395 MV3388 MV3389 MV3390))
 (:VAR MV3394 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV3395 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3388 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3389 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV3390 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN"))

___________________
360: "What microRNAs target STAT3?"

                    SOURCE-START
e8    TARGET        1 "What microRNAs target STAT3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What microRNAs target STAT3?"
 (:VAR MV3402 :ISA TARGET :AGENT MV3400 :OBJECT MV3398 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3400 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "microRNAs")
 (:VAR MV3398 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
361: "What micrornas are regulated by p53?"

                    SOURCE-START
e12   REGULATE      1 "What micrornas are regulated by p53" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What micrornas are regulated by p53?"
 (:VAR MV3409 :ISA REGULATE :OBJECT MV3405 :AGENT MV3403 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3405 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3403 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
362: "What micrornas regulate genes in the mapk signaling pathways"

                    SOURCE-START
e17   REGULATE      1 "What micrornas regulate genes in the mapk signaling pathways" 10
                    END-OF-SOURCE
("What micrornas regulate genes in the mapk signaling pathways"
 (:VAR MV3414 :ISA REGULATE :AGENT MV3413 :OBJECT MV3415 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3413 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3415 :ISA GENE :CONTEXT MV3411 :RAW-TEXT "genes")
 (:VAR MV3411 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3418 :RAW-TEXT
  "signaling pathways")
 (:VAR MV3418 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV3421 :ISA INVOLVE :PARTICIPANT MV3423 :THEME MV3422 :PRESENT "PRESENT")
 (:VAR MV3423 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :NAME "pahtways")
 (:VAR MV3422 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
364: "What pathways are common to STAT3 and SRF?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What pathways are common to STAT3 and SRF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are common to STAT3 and SRF?"
 (:VAR MV3434 :ISA COPULAR-PREDICATION :ITEM MV3426 :VALUE MV3428 :PREDICATE MV3427)
 (:VAR MV3426 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3428 :ISA COMMON :THEME MV3432)
 (:VAR MV3432 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3424 MV3431))
 (:VAR MV3424 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3431 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3427 :ISA BE :PRESENT "PRESENT"))

___________________
365: "What pathways involve SRF?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF?"
 (:VAR MV3437 :ISA INVOLVE :PARTICIPANT MV3436 :THEME MV3438 :PRESENT "PRESENT")
 (:VAR MV3436 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3438 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
366: "What pathways involve cfos?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve cfos" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve cfos?"
 (:VAR MV3441 :ISA INVOLVE :PARTICIPANT MV3440 :THEME MV3442 :PRESENT "PRESENT")
 (:VAR MV3440 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3442 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
367: "What pathways involve kras and elk1?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve kras and elk1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve kras and elk1?"
 (:VAR MV3446 :ISA INVOLVE :PARTICIPANT MV3445 :THEME MV3449 :PRESENT "PRESENT")
 (:VAR MV3445 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3449 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3447 MV3443))
 (:VAR MV3447 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV3443 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
368: "What pathways involve the SRF transcription factor?"

                    SOURCE-START
e12   INVOLVE       1 "What pathways involve the SRF transcription factor" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the SRF transcription factor?"
 (:VAR MV3453 :ISA INVOLVE :PARTICIPANT MV3452 :THEME MV3450 :PRESENT "PRESENT")
 (:VAR MV3452 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3450 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :MODIFIER MV3455 :RAW-TEXT
  "transcription factor")
 (:VAR MV3455 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV3476 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3467 :VALUE MV3474 :PREP "IN" :PREDICATE
  MV3468)
 (:VAR MV3467 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3474 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3468 :ISA BE :PRESENT "PRESENT"))

___________________
371: "What proteins are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by lung cancer?"
 (:VAR MV3483 :ISA TARGET :OBJECT MV3479 :CAUSE MV3477 :PRESENT "PRESENT" :RAW-TEXT "targeted")
 (:VAR MV3479 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3477 :ISA CANCER :UID "TS-0571"))

___________________
372: "What proteins does PLX-4720 target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does PLX-4720 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does PLX-4720 target?"
 (:VAR MV3490 :ISA TARGET :OBJECT MV3487 :AGENT MV3485 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3487 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3485 :ISA MOLECULE :RAW-TEXT "PLX-4720" :UID "PCID:24180719"))

___________________
373: "What proteins does lung cancer target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does lung cancer target" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does lung cancer target?"
 (:VAR MV3496 :ISA TARGET :OBJECT MV3493 :CAUSE MV3491 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3493 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3491 :ISA CANCER :UID "TS-0571"))

___________________
374: "What proteins does vemurafenib target?"

                    SOURCE-START
e8    TARGET        1 "What proteins does vemurafenib target" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does vemurafenib target?"
 (:VAR MV3502 :ISA TARGET :OBJECT MV3498 :AGENT MV3500 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV3498 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3500 :ISA DRUG :RAW-TEXT "vemurafenib" :NAME "vemurafenib"))

___________________
375: "What proteins might lead to the development of lung cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of lung cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins might lead to the development of lung cancer?"
 (:VAR MV3507 :ISA LEAD :AGENT MV3505 :THEME MV3510 :MODAL MV3506 :RAW-TEXT "lead")
 (:VAR MV3505 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3510 :ISA DEVELOPMENT :DISEASE MV3503 :HAS-DETERMINER "THE" :RAW-TEXT "development")
 (:VAR MV3503 :ISA CANCER :UID "TS-0571") (:VAR MV3506 :ISA MIGHT))

___________________
376: "What proteins might lead to the development of pancreatic cancer."

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE
("What proteins might lead to the development of pancreatic cancer."
 (:VAR MV3518 :ISA LEAD :AGENT MV3516 :THEME MV3521 :MODAL MV3517 :RAW-TEXT "lead")
 (:VAR MV3516 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3521 :ISA DEVELOPMENT :DISEASE MV3514 :HAS-DETERMINER "THE" :RAW-TEXT "development")
 (:VAR MV3514 :ISA CANCER :UID "TS-0739") (:VAR MV3517 :ISA MIGHT))

___________________
377: "What reactome pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What reactome pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune signaling?"
 (:VAR MV3527 :ISA INVOLVE :PARTICIPANT MV3526 :THEME MV3529 :PRESENT "PRESENT")
 (:VAR MV3526 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3530 :RAW-TEXT "pathways")
 (:VAR MV3530 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV3529 :ISA SIGNAL :MODIFIER MV3528 :RAW-TEXT "signaling") (:VAR MV3528 :ISA IMMUNE))

___________________
378: "What regulates HGF?"

                    SOURCE-START
e4    REGULATE      1 "What regulates HGF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates HGF?"
 (:VAR MV3532 :ISA REGULATE :AGENT-OR-CAUSE MV3531 :OBJECT MV3533 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV3531 :ISA WHAT)
 (:VAR MV3533 :ISA PROTEIN :RAW-TEXT "HGF" :UID "UP:P14210" :NAME "HGF_HUMAN"))

___________________
379: "What regulates SMURF2?"

                    SOURCE-START
e5    REGULATE      1 "What regulates SMURF2" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates SMURF2?"
 (:VAR MV3536 :ISA REGULATE :AGENT-OR-CAUSE MV3535 :OBJECT MV3534 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV3535 :ISA WHAT)
 (:VAR MV3534 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
380: "What regulates smurf2 in liver"

                    SOURCE-START
e10   REGULATE      1 "What regulates smurf2 in liver" 7
                    END-OF-SOURCE
("What regulates smurf2 in liver"
 (:VAR MV3539 :ISA REGULATE :AGENT-OR-CAUSE MV3538 :OBJECT MV3537 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV3538 :ISA WHAT)
 (:VAR MV3537 :ISA PROTEIN :ORGAN MV3541 :RAW-TEXT "smurf2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN")
 (:VAR MV3541 :ISA LIVER))

___________________
381: "What signaling pathways are shared by RELA and ELK1?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by RELA and ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by RELA and ELK1?"
 (:VAR MV3552 :ISA SHARE :OBJECT MV3543 :PARTICIPANT MV3551 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV3543 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "signaling pathways")
 (:VAR MV3551 :ISA COLLECTION :RAW-TEXT "RELA and ELK1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3549 MV3544))
 (:VAR MV3549 :ISA PROTEIN :RAW-TEXT "RELA" :UID "UP:Q04206" :NAME "TF65_HUMAN")
 (:VAR MV3544 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
382: "What signaling pathways are shared by STAT3 and SRF?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by STAT3 and SRF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3 and SRF?"
 (:VAR MV3563 :ISA SHARE :OBJECT MV3554 :PARTICIPANT MV3562 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV3554 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "signaling pathways")
 (:VAR MV3562 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3555 MV3561))
 (:VAR MV3555 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3561 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
383: "What signaling pathways are shared by STAT3, SOCS3 and SRF?"

                    SOURCE-START
e19   SHARE         1 "What signaling pathways are shared by STAT3, SOCS3 and SRF" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
 (:VAR MV3575 :ISA SHARE :OBJECT MV3565 :PARTICIPANT MV3574 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV3565 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "signaling pathways")
 (:VAR MV3574 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3 and SRF" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV3566 MV3567 MV3573))
 (:VAR MV3566 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3567 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3573 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV3586 :ISA BIO-PRODUCE :AGENT MV3583 :OBJECT MV3584 :PRESENT "PRESENT" :RAW-TEXT
  "produces")
 (:VAR MV3583 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factor")
 (:VAR MV3584 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
386: "What transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factor transcribes SMURF2?"
 (:VAR MV3590 :ISA TRANSCRIBE :AGENT MV3587 :OBJECT MV3588 :PRESENT "PRESENT" :RAW-TEXT
  "transcribes")
 (:VAR MV3587 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factor")
 (:VAR MV3588 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
387: "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e31   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3606 :ISA COPULAR-PREDICATION :ITEM MV3591 :VALUE MV3598 :PREDICATE MV3597)
 (:VAR MV3591 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3598 :ISA COMMON :THEME MV3603)
 (:VAR MV3603 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3604 :RAW-TEXT "genes")
 (:VAR MV3604 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :TYPE PROTEIN
  :NUMBER 5 :ITEMS (MV3592 MV3593 MV3601 MV3594 MV3595))
 (:VAR MV3592 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3593 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3601 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME "IFNG_HUMAN")
 (:VAR MV3594 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME "FOXO3_HUMAN")
 (:VAR MV3595 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN")
 (:VAR MV3597 :ISA BE :PRESENT "PRESENT"))

___________________
388: "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e26   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3620 :ISA COPULAR-PREDICATION :ITEM MV3607 :VALUE MV3613 :PREDICATE MV3612)
 (:VAR MV3607 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3613 :ISA COMMON :THEME MV3617)
 (:VAR MV3617 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3618 :RAW-TEXT "genes")
 (:VAR MV3618 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV3608 MV3609 MV3610))
 (:VAR MV3608 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3609 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3610 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN")
 (:VAR MV3612 :ISA BE :PRESENT "PRESENT"))

___________________
389: "What genes does stat3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate?"
 (:VAR MV3625 :ISA REGULATE :OBJECT MV3623 :AGENT MV3621 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3623 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3621 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
390: "What transcription factors are common to these genes?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "What transcription factors are common to these genes" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to these genes?"
 (:VAR MV3634 :ISA COPULAR-PREDICATION :ITEM MV3626 :VALUE MV3629 :PREDICATE MV3628)
 (:VAR MV3626 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3629 :ISA COMMON :THEME MV3632)
 (:VAR MV3632 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV3628 :ISA BE :PRESENT "PRESENT"))

___________________
391: "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e32   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3650 :ISA COPULAR-PREDICATION :ITEM MV3635 :VALUE MV3636 :PREDICATE MV3642)
 (:VAR MV3635 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3636 :ISA IN-COMMON :THEME MV3647)
 (:VAR MV3647 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3648 :RAW-TEXT "genes")
 (:VAR MV3648 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :TYPE PROTEIN
  :NUMBER 5 :ITEMS (MV3637 MV3638 MV3645 MV3639 MV3640))
 (:VAR MV3637 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3638 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3645 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME "IFNG_HUMAN")
 (:VAR MV3639 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME "FOXO3_HUMAN")
 (:VAR MV3640 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN")
 (:VAR MV3642 :ISA BE :PRESENT "PRESENT"))

___________________
392: "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3664 :ISA COPULAR-PREDICATION :ITEM MV3651 :VALUE MV3652 :PREDICATE MV3657)
 (:VAR MV3651 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3652 :ISA IN-COMMON :THEME MV3661)
 (:VAR MV3661 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3662 :RAW-TEXT "genes")
 (:VAR MV3662 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV3653 MV3654 MV3655))
 (:VAR MV3653 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3654 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3655 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN")
 (:VAR MV3657 :ISA BE :PRESENT "PRESENT"))

___________________
393: "What transcription factors are regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What transcription factors are regulators of SMURF2 in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2 in liver?"
 (:VAR MV3668 :ISA BE :SUBJECT MV3665 :PREDICATE MV3669 :PRESENT "PRESENT")
 (:VAR MV3665 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3669 :ISA REGULATOR :THEME MV3666 :RAW-TEXT "regulators")
 (:VAR MV3666 :ISA PROTEIN :ORGAN MV3672 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN")
 (:VAR MV3672 :ISA LIVER))

___________________
394: "What transcription factors are regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What transcription factors are regulators of SMURF2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2?"
 (:VAR MV3678 :ISA BE :SUBJECT MV3675 :PREDICATE MV3679 :PRESENT "PRESENT")
 (:VAR MV3675 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3679 :ISA REGULATOR :THEME MV3676 :RAW-TEXT "regulators")
 (:VAR MV3676 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
395: "What transcription factors are shared by the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e24   SHARE         1 "What transcription factors are shared by the SRF, HRAS, and elk1 genes" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
 (:VAR MV3694 :ISA SHARE :OBJECT MV3682 :PARTICIPANT MV3692 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV3682 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3692 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3693 :RAW-TEXT "genes")
 (:VAR MV3693 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV3689 MV3690 MV3683))
 (:VAR MV3689 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3690 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME "RASH_HUMAN")
 (:VAR MV3683 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
396: "What transcription factors regulate SMURF2 in liver?"

                    SOURCE-START
e13   REGULATE      1 "What transcription factors regulate SMURF2 in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate SMURF2 in liver?"
 (:VAR MV3699 :ISA REGULATE :AGENT MV3696 :OBJECT MV3697 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3696 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3697 :ISA PROTEIN :ORGAN MV3701 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN")
 (:VAR MV3701 :ISA LIVER))

___________________
397: "What transcription factors regulate ZEB1?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate ZEB1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate ZEB1?"
 (:VAR MV3706 :ISA REGULATE :AGENT MV3703 :OBJECT MV3704 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3703 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3704 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME "ZEB1_HUMAN"))

___________________
398: "What transcription factors regulate erk"

                    SOURCE-START
e7    REGULATE      1 "What transcription factors regulate erk" 6
                    END-OF-SOURCE
("What transcription factors regulate erk"
 (:VAR MV3709 :ISA REGULATE :AGENT MV3707 :OBJECT MV3710 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3707 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3710 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV3713 :ISA REGULATE :AGENT MV3711 :THEME MV3719 :OBJECT MV3714 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV3711 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3719 :ISA BIO-ENTITY :HAS-DETERMINER "THE" :MODIFIER MV3717 :MODIFIER MV3718 :NAME
  "pathwya")
 (:VAR MV3717 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV3718 :ISA SIGNAL :RAW-TEXT "signaling") (:VAR MV3714 :ISA GENE :RAW-TEXT "genes"))

___________________
400: "What transcription factors regulated frizzled8?"

                    SOURCE-START
e9    PROTEIN       1 "What transcription factors regulated frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulated frizzled8?"
 (:VAR MV3722 :ISA PROTEIN :HAS-DETERMINER "WHAT" :PREDICATION MV3724 :RAW-TEXT "frizzled8" :UID
  "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV3724 :ISA REGULATE :OBJECT MV3722 :AGENT MV3721 :RAW-TEXT "regulated")
 (:VAR MV3721 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
401: "What transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors transcribe SMURF2?"
 (:VAR MV3728 :ISA TRANSCRIBE :AGENT MV3725 :OBJECT MV3726 :PRESENT "PRESENT" :RAW-TEXT
  "transcribe")
 (:VAR MV3725 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3726 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
402: "What upregulates fzd8?"

                    SOURCE-START
e5    UPREGULATE    1 "What upregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates fzd8?"
 (:VAR MV3731 :ISA UPREGULATE :AGENT-OR-CAUSE MV3730 :OBJECT MV3729 :PRESENT "PRESENT" :RAW-TEXT
  "upregulates")
 (:VAR MV3730 :ISA WHAT)
 (:VAR MV3729 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
403: "Where is STAT3 expressed?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Where is STAT3 expressed" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Where is STAT3 expressed?"
 (:VAR MV3737 :ISA GENE-TRANSCRIPT-EXPRESS :LOCATION MV3733 :OBJECT MV3732 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV3733 :ISA WHERE)
 (:VAR MV3732 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
404: "Which KEGG pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve SRF?"
 (:VAR MV3741 :ISA INVOLVE :PARTICIPANT MV3740 :THEME MV3742 :PRESENT "PRESENT")
 (:VAR MV3740 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3739 :RAW-TEXT "pathways")
 (:VAR MV3739 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV3742 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
405: "Which KEGG pathways use SRF?"

                    SOURCE-START
e9    BIO-USE       1 "Which KEGG pathways use SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways use SRF?"
 (:VAR MV3747 :ISA BIO-USE :AGENT MV3745 :OBJECT MV3748 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV3745 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3744 :RAW-TEXT "pathways")
 (:VAR MV3744 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV3748 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
406: "What transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate frizzled8?"
 (:VAR MV3752 :ISA REGULATE :AGENT MV3749 :OBJECT MV3750 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3749 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV3750 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
407: "Which also regulate srf"

                    SOURCE-START
e7    REGULATE      1 "Which also regulate srf" 5
                    END-OF-SOURCE
("Which also regulate srf"
 (:VAR MV3756 :ISA REGULATE :AGENT-OR-CAUSE MV3753 :OBJECT MV3757 :PRESENT "PRESENT" :ADVERB MV3754
  :RAW-TEXT "regulate")
 (:VAR MV3753 :ISA WHICH)
 (:VAR MV3757 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3754 :ISA ALSO))

___________________
408: "Which apoptotic genes are regulated by stat3?"

                    SOURCE-START
e15   REGULATE      1 "Which apoptotic genes are regulated by stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes are regulated by stat3?"
 (:VAR MV3766 :ISA REGULATE :OBJECT MV3762 :AGENT MV3758 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3762 :ISA GENE :HAS-DETERMINER "WHICH" :MODIFIER MV3761 :RAW-TEXT "genes")
 (:VAR MV3761 :ISA APOPTOTIC)
 (:VAR MV3758 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
409: "Which apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "Which apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes is stat3 upstream of?"
 (:VAR MV3773 :ISA BE :SUBJECT MV3772 :PREDICATE MV3774 :PRESENT "PRESENT")
 (:VAR MV3772 :ISA GENE :HAS-DETERMINER "WHICH" :MODIFIER MV3771 :RAW-TEXT "genes")
 (:VAR MV3771 :ISA APOPTOTIC)
 (:VAR MV3774 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3772 :MODIFIER MV3768 :RAW-TEXT "upstream")
 (:VAR MV3772 :ISA GENE :HAS-DETERMINER "WHICH" :MODIFIER MV3771 :RAW-TEXT "genes")
 (:VAR MV3771 :ISA APOPTOTIC)
 (:VAR MV3768 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
410: "Which genes are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which genes are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are targeted by STAT3?"
 (:VAR MV3783 :ISA TARGET :OBJECT MV3779 :AGENT MV3777 :PRESENT "PRESENT" :RAW-TEXT "targeted")
 (:VAR MV3779 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV3777 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
411: "Which genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "Which genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes regulated by stat3 are kinases?"
 (:VAR MV3790 :ISA BE :SUBJECT MV3787 :PREDICATE MV3791 :PRESENT "PRESENT")
 (:VAR MV3787 :ISA GENE :PREDICATION MV3788 :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV3788 :ISA REGULATE :OBJECT MV3787 :AGENT MV3785 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV3785 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3791 :ISA KINASE :RAW-TEXT "kinases"))

___________________
412: "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e29   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3807 :ISA SHARE :OBJECT MV3799 :PARTICIPANT MV3805 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV3799 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3798 :RAW-TEXT "pathways")
 (:VAR MV3798 :ISA IMMUNE) (:VAR MV3805 :ISA GENE :EXPRESSES MV3806 :RAW-TEXT "genes")
 (:VAR MV3806 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :TYPE PROTEIN
  :NUMBER 5 :ITEMS (MV3793 MV3794 MV3803 MV3795 MV3796))
 (:VAR MV3793 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3794 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3803 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME "IFNG_HUMAN")
 (:VAR MV3795 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME "FOXO3_HUMAN")
 (:VAR MV3796 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN"))

___________________
413: "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3822 :ISA SHARE :OBJECT MV3814 :PARTICIPANT MV3820 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV3814 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3813 :RAW-TEXT "pathways")
 (:VAR MV3813 :ISA IMMUNE)
 (:VAR MV3820 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3821 :RAW-TEXT "genes")
 (:VAR MV3821 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV3809 MV3810 MV3811))
 (:VAR MV3809 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3810 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3811 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN"))

___________________
414: "Which kegg pathways utilize genes regulated by smad2"

                    SOURCE-START
e15   UTILIZE       1 "Which kegg pathways utilize genes regulated by smad2" 10
                    END-OF-SOURCE
("Which kegg pathways utilize genes regulated by smad2"
 (:VAR MV3827 :ISA UTILIZE :PARTICIPANT MV3826 :OBJECT MV3828 :PRESENT "PRESENT" :RAW-TEXT
  "utilize")
 (:VAR MV3826 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3831 :RAW-TEXT "pathways")
 (:VAR MV3831 :ISA BIO-ENTITY :NAME "kegg")
 (:VAR MV3828 :ISA GENE :PREDICATION MV3829 :RAW-TEXT "genes")
 (:VAR MV3829 :ISA REGULATE :OBJECT MV3828 :AGENT MV3824 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV3824 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
415: "Which Reactome pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which Reactome pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which Reactome pathways utilize SRF?"
 (:VAR MV3836 :ISA UTILIZE :PARTICIPANT MV3835 :OBJECT MV3837 :PRESENT "PRESENT" :RAW-TEXT
  "utilize")
 (:VAR MV3835 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3834 :RAW-TEXT "pathways")
 (:VAR MV3834 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV3837 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
416: "Which kegg pathways utilize it"

                    SOURCE-START
e9    UTILIZE       1 "Which kegg pathways utilize it" 6
                    END-OF-SOURCE
("Which kegg pathways utilize it"
 (:VAR MV3841 :ISA UTILIZE :PARTICIPANT MV3840 :OBJECT MV3842 :PRESENT "PRESENT" :RAW-TEXT
  "utilize")
 (:VAR MV3840 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3839 :RAW-TEXT "pathways")
 (:VAR MV3839 :ISA BIO-ENTITY :NAME "kegg") (:VAR MV3842 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
417: "Which of them are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of them are regulated by elk1" 9
                    END-OF-SOURCE
("Which of them are regulated by elk1"
 (:VAR MV3850 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3846 :AGENT MV3843 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3846 :ISA PRONOUN/PLURAL :QUANTIFIER MV3844 :WORD "them") (:VAR MV3844 :ISA WHICH)
 (:VAR MV3843 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
418: "Which of these are expressed in liver"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of these are expressed in liver" 8
                    END-OF-SOURCE
("Which of these are expressed in liver"
 (:VAR MV3860 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV3855 :ORGAN MV3859 :PRESENT "PRESENT"
  :RAW-TEXT "expressed")
 (:VAR MV3855 :ISA THESE :QUANTIFIER MV3853 :WORD "these") (:VAR MV3853 :ISA WHICH)
 (:VAR MV3859 :ISA LIVER))

___________________
419: "Which of these are in immune pathways"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    END-OF-SOURCE
("Which of these are in immune pathways"
 (:VAR MV3871 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3865 :VALUE MV3869 :PREP "IN" :PREDICATE
  MV3866)
 (:VAR MV3865 :ISA THESE :QUANTIFIER MV3863 :WORD "these") (:VAR MV3863 :ISA WHICH)
 (:VAR MV3869 :ISA PATHWAY :MODIFIER MV3868 :RAW-TEXT "pathways") (:VAR MV3868 :ISA IMMUNE)
 (:VAR MV3866 :ISA BE :PRESENT "PRESENT"))

___________________
420: "what proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "what proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("what proteins does MEK phosphorylate?"
 (:VAR MV3877 :ISA PHOSPHORYLATE :AMINO-ACID MV3874 :AGENT MV3876 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylate")
 (:VAR MV3874 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3876 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
421: "Which of these are kinases"

                    SOURCE-START
e9    BE            1 "Which of these are kinases" 6
                    END-OF-SOURCE
("Which of these are kinases"
 (:VAR MV3881 :ISA BE :SUBJECT MV3880 :PREDICATE MV3882 :PRESENT "PRESENT")
 (:VAR MV3880 :ISA THESE :QUANTIFIER MV3878 :WORD "these") (:VAR MV3878 :ISA WHICH)
 (:VAR MV3882 :ISA KINASE :RAW-TEXT "kinases"))

___________________
422: "Which of those are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by elk1" 9
                    END-OF-SOURCE
("Which of those are regulated by elk1"
 (:VAR MV3891 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3887 :AGENT MV3884 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3887 :ISA THOSE :QUANTIFIER MV3885 :WORD "those") (:VAR MV3885 :ISA WHICH)
 (:VAR MV3884 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
423: "Which of these are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by elk1" 9
                    END-OF-SOURCE
("Which of these are regulated by elk1"
 (:VAR MV3901 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3897 :AGENT MV3894 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3897 :ISA THESE :QUANTIFIER MV3895 :WORD "these") (:VAR MV3895 :ISA WHICH)
 (:VAR MV3894 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
424: "Which of these are regulated by fakeprotein"

                    SOURCE-START
e14   REGULATE      1 "Which of these are regulated by fakeprotein" 8
                    END-OF-SOURCE
("Which of these are regulated by fakeprotein"
 (:VAR MV3911 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3906 :AGENT MV3910 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3906 :ISA THESE :QUANTIFIER MV3904 :WORD "these") (:VAR MV3904 :ISA WHICH)
 (:VAR MV3910 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
425: "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3927 :ISA SHARE :OBJECT MV3919 :PARTICIPANT MV3925 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV3919 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3925 :ISA GENE :EXPRESSES MV3926 :RAW-TEXT "genes")
 (:VAR MV3926 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :TYPE PROTEIN
  :NUMBER 5 :ITEMS (MV3914 MV3915 MV3923 MV3916 MV3917))
 (:VAR MV3914 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3915 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3923 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME "IFNG_HUMAN")
 (:VAR MV3916 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME "FOXO3_HUMAN")
 (:VAR MV3917 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN"))

___________________
426: "Which pathways are shared by stat3, socs3, and creb5"

                    SOURCE-START
e21   SHARE         1 "Which pathways are shared by stat3, socs3, and creb5" 15
                    END-OF-SOURCE
("Which pathways are shared by stat3, socs3, and creb5"
 (:VAR MV3941 :ISA SHARE :OBJECT MV3932 :PARTICIPANT MV3940 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV3932 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3940 :ISA COLLECTION :RAW-TEXT "stat3, socs3, and creb5" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV3929 MV3930 MV3939))
 (:VAR MV3929 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3930 :ISA PROTEIN :RAW-TEXT "socs3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3939 :ISA PROTEIN :RAW-TEXT "creb5" :UID "UP:Q02930" :NAME "CREB5_HUMAN"))

___________________
427: "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e30   SHARE         1 "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3957 :ISA SHARE :OBJECT MV3948 :PARTICIPANT MV3955 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV3948 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3955 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3956 :RAW-TEXT "genes")
 (:VAR MV3956 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :TYPE PROTEIN
  :NUMBER 5 :ITEMS (MV3943 MV3944 MV3953 MV3945 MV3946))
 (:VAR MV3943 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV3944 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV3953 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME "IFNG_HUMAN")
 (:VAR MV3945 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME "FOXO3_HUMAN")
 (:VAR MV3946 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN"))

___________________
428: "Which pathways involve TAP1 and JAK1?"

                    SOURCE-START
e11   INVOLVE       1 "Which pathways involve TAP1 and JAK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve TAP1 and JAK1?"
 (:VAR MV3963 :ISA INVOLVE :PARTICIPANT MV3962 :THEME MV3965 :PRESENT "PRESENT")
 (:VAR MV3962 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3965 :ISA COLLECTION :RAW-TEXT "TAP1 and JAK1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV3959 MV3960))
 (:VAR MV3959 :ISA PROTEIN :RAW-TEXT "TAP1" :UID "UP:Q03518" :NAME "TAP1_HUMAN")
 (:VAR MV3960 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME "JAK1_HUMAN"))

___________________
429: "Which pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "Which pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve calcium?"
 (:VAR MV3968 :ISA INVOLVE :PARTICIPANT MV3967 :THEME MV3969 :PRESENT "PRESENT")
 (:VAR MV3967 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3969 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
430: "Which pathways use SRF?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use SRF?"
 (:VAR MV3973 :ISA BIO-USE :AGENT MV3971 :OBJECT MV3974 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV3971 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3974 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
431: "Which pathways use these"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    END-OF-SOURCE
("Which pathways use these"
 (:VAR MV3978 :ISA BIO-USE :AGENT MV3976 :OBJECT MV3979 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV3976 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3979 :ISA THESE :WORD "these"))

___________________
432: "Which pathways utilize SRF?"

                    SOURCE-START
e6    UTILIZE       1 "Which pathways utilize SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways utilize SRF?"
 (:VAR MV3982 :ISA UTILIZE :PARTICIPANT MV3981 :OBJECT MV3983 :PRESENT "PRESENT" :RAW-TEXT
  "utilize")
 (:VAR MV3981 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3983 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
433: "Which pathways utilize these genes"

                    SOURCE-START
e8    UTILIZE       1 "Which pathways utilize these genes" 6
                    END-OF-SOURCE
("Which pathways utilize these genes"
 (:VAR MV3986 :ISA UTILIZE :PARTICIPANT MV3985 :OBJECT MV3988 :PRESENT "PRESENT" :RAW-TEXT
  "utilize")
 (:VAR MV3985 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3988 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
434: "Which proteins are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which proteins are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which proteins are targeted by STAT3?"
 (:VAR MV3995 :ISA TARGET :OBJECT MV3991 :AGENT MV3989 :PRESENT "PRESENT" :RAW-TEXT "targeted")
 (:VAR MV3991 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "proteins")
 (:VAR MV3989 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
435: "Which reactome pathways utilize srf"

                    SOURCE-START
e8    UTILIZE       1 "Which reactome pathways utilize srf" 6
                    END-OF-SOURCE
("Which reactome pathways utilize srf"
 (:VAR MV4000 :ISA UTILIZE :PARTICIPANT MV3999 :OBJECT MV4001 :PRESENT "PRESENT" :RAW-TEXT
  "utilize")
 (:VAR MV3999 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3998 :RAW-TEXT "pathways")
 (:VAR MV3998 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV4001 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
436: "Which transcription factors are in the MAPK signaling pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "Which transcription factors are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors are in the MAPK signaling pathway?"
 (:VAR MV4012 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4002 :VALUE MV4011 :PREP "IN" :PREDICATE
  MV4005)
 (:VAR MV4002 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT "transcription factors")
 (:VAR MV4011 :ISA TRANSCRIPTION-FACTOR :CONTEXT-OR-IN-PATHWAY MV4003 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "transcription factors")
 (:VAR MV4003 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4008 :RAW-TEXT
  "signaling pathway")
 (:VAR MV4008 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV4005 :ISA BE :PRESENT "PRESENT"))

___________________
437: "Which transcription factors regulate frizzled8 in the liver?"

                    SOURCE-START
e16   REGULATE      1 "Which transcription factors regulate frizzled8 in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8 in the liver?"
 (:VAR MV4017 :ISA REGULATE :AGENT MV4014 :OBJECT MV4015 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4014 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT "transcription factors")
 (:VAR MV4015 :ISA PROTEIN :ORGAN MV4020 :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV4020 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
438: "Which transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "Which transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8?"
 (:VAR MV4025 :ISA REGULATE :AGENT MV4022 :OBJECT MV4023 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4022 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT "transcription factors")
 (:VAR MV4023 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
439: "Let's move AKT1 on top."

                    SOURCE-START
e12   EXPLICIT-SUGGESTION 1 "Let's move AKT1 on top" 9
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 on top."
 (:VAR MV4033 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4028 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV4028 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV4030 :THEME MV4027 :PRESENT
  "PRESENT")
 (:VAR MV4030 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV4027 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
440: "Let's show the phosphorylated AKT1 on top."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's show the phosphorylated AKT1 on top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show the phosphorylated AKT1 on top."
 (:VAR MV4043 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4036 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV4036 :ISA SHOW :AT-RELATIVE-LOCATION MV4040 :STATEMENT-OR-THEME MV4035 :PRESENT "PRESENT")
 (:VAR MV4040 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV4035 :ISA PROTEIN :HAS-DETERMINER "THE" :PREDICATION MV4038 :RAW-TEXT "AKT1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4038 :ISA PHOSPHORYLATE :SUBSTRATE MV4035 :RAW-TEXT "phosphorylated"))

___________________
441: "What are the common upstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRAF?"
 (:VAR MV4046 :ISA BE :SUBJECT MV4045 :PREDICATE MV4049 :PRESENT "PRESENT") (:VAR MV4045 :ISA WHAT)
 (:VAR MV4049 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4053 :HAS-DETERMINER "THE" :PREDICATION
  MV4048 :RAW-TEXT "upstreams")
 (:VAR MV4053 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4044 MV4052))
 (:VAR MV4044 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4052 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV4048 :ISA COMMON))

___________________
442: "Is stat3 expressed exclusively in liver?"

                    SOURCE-START
e11   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed exclusively in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed exclusively in liver?"
 (:VAR MV4062 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV4060 :PAST "PAST" :RAW-TEXT "expressed")
 (:VAR MV4060 :ISA LIVER))

___________________
443: "Is stat3 expressed in spleen?"

                    SOURCE-START
e9    GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in spleen" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in spleen?"
 (:VAR MV4069 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV4067 :PAST "PAST" :RAW-TEXT "expressed")
 (:VAR MV4067 :ISA SPLEEN))

___________________
444: "Show phosphorylated akt1 on top."

                    SOURCE-START
e12   SHOW          1 "Show phosphorylated akt1 on top" 7
                    PERIOD
                    END-OF-SOURCE
("Show phosphorylated akt1 on top."
 (:VAR MV4071 :ISA SHOW :AT-RELATIVE-LOCATION MV4074 :STATEMENT-OR-THEME MV4070 :PRESENT "PRESENT")
 (:VAR MV4074 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV4070 :ISA PROTEIN :PREDICATION MV4072 :RAW-TEXT "akt1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4072 :ISA PHOSPHORYLATE :SUBSTRATE MV4070 :RAW-TEXT "phosphorylated"))

___________________
445: "What are the common upstreams of AKT1 and  BRA?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRA" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRA?"
 (:VAR MV4079 :ISA BE :SUBJECT MV4078 :PREDICATE MV4082 :PRESENT "PRESENT") (:VAR MV4078 :ISA WHAT)
 (:VAR MV4082 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4086 :HAS-DETERMINER "THE" :PREDICATION
  MV4081 :RAW-TEXT "upstreams")
 (:VAR MV4086 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRA" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4077 MV4085))
 (:VAR MV4077 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4085 :ISA BIO-ENTITY :NAME "BRA") (:VAR MV4081 :ISA COMMON))

___________________
446: "RAF activates MEK and MEK activates ERK."

                    SOURCE-START
e11   BIO-ACTIVATE  1 "RAF activates MEK and MEK activates ERK" 8
                    PERIOD
                    END-OF-SOURCE
("RAF activates MEK and MEK activates ERK."
 (:VAR MV4095 :ISA COLLECTION :RAW-TEXT "RAF activates MEK and MEK activates ERK" :TYPE
  BIO-ACTIVATE :NUMBER 2 :ITEMS (MV4089 MV4093))
 (:VAR MV4089 :ISA BIO-ACTIVATE :AGENT MV4088 :OBJECT MV4090 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV4088 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV4090 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4093 :ISA BIO-ACTIVATE :AGENT MV4092 :OBJECT MV4094 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV4092 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4094 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV4097 :ISA BE :SUBJECT MV4096 :PREDICATE MV4099 :PRESENT "PRESENT") (:VAR MV4096 :ISA WHAT)
 (:VAR MV4099 :ISA PATH :END MV4103 :START MV4101 :HAS-DETERMINER "THE")
 (:VAR MV4103 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4101 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV4106 :ISA REMOVE :OBJECT MV4113 :PRESENT "PRESENT" :RAW-TEXT "remove")
 (:VAR MV4113 :ISA FACT :STATEMENT MV4111 :HAS-DETERMINER "THE")
 (:VAR MV4111 :ISA BIO-ACTIVATE :AGENT MV4110 :OBJECT MV4112 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV4110 :ISA PROTEIN-FAMILY :RAW-TEXT "mek" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4112 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV4123 :ISA ASK :PATIENT MV4115 :MODAL MV4116 :AGENT MV4117 :PRESENT "PRESENT")
 (:VAR MV4115 :ISA TISSUE :HAS-DETERMINER "WHAT") (:VAR MV4116 :ISA CAN)
 (:VAR MV4117 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
450: "let's show phosphorylated akt1 on top."

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "let's show phosphorylated akt1 on top" 10
                    PERIOD
                    END-OF-SOURCE
("let's show phosphorylated akt1 on top."
 (:VAR MV4132 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4126 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV4126 :ISA SHOW :AT-RELATIVE-LOCATION MV4129 :STATEMENT-OR-THEME MV4125 :PRESENT "PRESENT")
 (:VAR MV4129 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV4125 :ISA PROTEIN :PREDICATION MV4127 :RAW-TEXT "akt1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4127 :ISA PHOSPHORYLATE :SUBSTRATE MV4125 :RAW-TEXT "phosphorylated"))

___________________
451: "what are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "what are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what are positive regulators of the cfos gene?"
 (:VAR MV4135 :ISA BE :SUBJECT MV4134 :PREDICATE MV4133 :PRESENT "PRESENT") (:VAR MV4134 :ISA WHAT)
 (:VAR MV4133 :ISA POSITIVE-REGULATOR :THEME MV4139 :RAW-TEXT "positive regulators")
 (:VAR MV4139 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4138 :RAW-TEXT "gene")
 (:VAR MV4138 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
452: "what transcription factors regulate FOS in soft tissue?"

                    SOURCE-START
e14   REGULATE      1 "what transcription factors regulate FOS in soft tissue" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors regulate FOS in soft tissue?"
 (:VAR MV4143 :ISA REGULATE :AGENT MV4141 :OBJECT MV4144 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4141 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV4144 :ISA PROTEIN :NON-CELLULAR-LOCATION MV4148 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV4148 :ISA TISSUE))

___________________
453: "Are there any drugs inhibiting MEK?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there any drugs inhibiting MEK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs inhibiting MEK?"
 (:VAR MV4157 :ISA THERE-EXISTS :VALUE MV4154 :PREDICATE MV4151)
 (:VAR MV4154 :ISA DRUG :PREDICATION MV4155 :QUANTIFIER MV4153 :RAW-TEXT "drugs")
 (:VAR MV4155 :ISA INHIBIT :AGENT MV4154 :OBJECT MV4156 :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT
  "inhibiting")
 (:VAR MV4156 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4153 :ISA ANY :WORD "any") (:VAR MV4151 :ISA SYNTACTIC-THERE))

___________________
454: "Are there any drugs targeting KRAS?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there any drugs targeting KRAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs targeting KRAS?"
 (:VAR MV4165 :ISA THERE-EXISTS :VALUE MV4162 :PREDICATE MV4159)
 (:VAR MV4162 :ISA DRUG :PREDICATION MV4163 :QUANTIFIER MV4161 :RAW-TEXT "drugs")
 (:VAR MV4163 :ISA TARGET :AGENT MV4162 :OBJECT MV4164 :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT
  "targeting")
 (:VAR MV4164 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV4161 :ISA ANY :WORD "any") (:VAR MV4159 :ISA SYNTACTIC-THERE))

___________________
455: "Are there any genes in the liver that are regulated by stat3?"

                    SOURCE-START
e30   THERE-EXISTS  1 "Are there any genes in the liver that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes in the liver that are regulated by stat3?"
 (:VAR MV4179 :ISA THERE-EXISTS :VALUE MV4171 :PREDICATE MV4168)
 (:VAR MV4171 :ISA GENE :PREDICATION MV4180 :ORGAN MV4174 :QUANTIFIER MV4170 :RAW-TEXT "genes")
 (:VAR MV4180 :ISA REGULATE :OBJECT MV4171 :THAT-REL T :AGENT MV4166 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV4166 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4174 :ISA LIVER :HAS-DETERMINER "THE") (:VAR MV4170 :ISA ANY :WORD "any")
 (:VAR MV4168 :ISA SYNTACTIC-THERE))

___________________
456: "Are there any genes involved in apoptosis that are regulated by stat3?"

                    SOURCE-START
e30   THERE-EXISTS  1 "Are there any genes involved in apoptosis that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes involved in apoptosis that are regulated by stat3?"
 (:VAR MV4196 :ISA THERE-EXISTS :VALUE MV4188 :PREDICATE MV4185)
 (:VAR MV4188 :ISA GENE :PREDICATION MV4189 :QUANTIFIER MV4187 :RAW-TEXT "genes")
 (:VAR MV4189 :ISA INVOLVE :THEME MV4188 :THEME MV4191 :PAST "PAST")
 (:VAR MV4191 :ISA APOPTOSIS :PREDICATION MV4197 :RAW-TEXT "apoptosis")
 (:VAR MV4197 :ISA REGULATE :AFFECTED-PROCESS MV4191 :THAT-REL T :AGENT MV4183 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV4183 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4187 :ISA ANY :WORD "any") (:VAR MV4185 :ISA SYNTACTIC-THERE))

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
 (:VAR MV4218 :ISA THERE-EXISTS :VALUE MV4216 :PREDICATE MV4213)
 (:VAR MV4216 :ISA INHIBITOR :TARGET-OR-PROTEIN MV4211 :QUANTIFIER MV4215 :RAW-TEXT "inhibitors")
 (:VAR MV4211 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME "JAK1_HUMAN")
 (:VAR MV4215 :ISA ANY :WORD "any") (:VAR MV4213 :ISA SYNTACTIC-THERE))

___________________
459: "Are there genes regulated by elk1 and srf"

                    SOURCE-START
e18   THERE-EXISTS  1 "Are there genes regulated by elk1 and srf" 10
                    END-OF-SOURCE
("Are there genes regulated by elk1 and srf"
 (:VAR MV4229 :ISA THERE-EXISTS :VALUE MV4224 :PREDICATE MV4222)
 (:VAR MV4224 :ISA GENE :PREDICATION MV4225 :RAW-TEXT "genes")
 (:VAR MV4225 :ISA REGULATE :OBJECT MV4224 :AGENT MV4230 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4230 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4220 MV4228))
 (:VAR MV4220 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4228 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4222 :ISA SYNTACTIC-THERE))

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
("Can you show me genes regulated by ELK1" (:VAR MV4290 :ISA POLAR-QUESTION :STATEMENT MV4284)
 (:VAR MV4284 :ISA SHOW :AGENT MV4283 :STATEMENT-OR-THEME MV4286 :BENEFICIARY MV4285 :MODAL "CAN")
 (:VAR MV4283 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4286 :ISA GENE :PREDICATION MV4287 :RAW-TEXT "genes")
 (:VAR MV4287 :ISA REGULATE :OBJECT MV4286 :AGENT MV4281 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4281 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4285 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
464: "Can you show me genes that are regulated by ELK1"

                    SOURCE-START
e26   SHOW          1 "Can you show me genes that are regulated by ELK1" 12
                    END-OF-SOURCE
("Can you show me genes that are regulated by ELK1"
 (:VAR MV4303 :ISA POLAR-QUESTION :STATEMENT MV4294)
 (:VAR MV4294 :ISA SHOW :AGENT MV4293 :STATEMENT-OR-THEME MV4296 :BENEFICIARY MV4295 :MODAL "CAN")
 (:VAR MV4293 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4296 :ISA GENE :PREDICATION MV4301 :RAW-TEXT "genes")
 (:VAR MV4301 :ISA REGULATE :OBJECT MV4296 :THAT-REL T :AGENT MV4291 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4291 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4295 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
465: "Can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "Can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("Can you show me the pahtways that involve SRF"
 (:VAR MV4313 :ISA POLAR-QUESTION :STATEMENT MV4306)
 (:VAR MV4306 :ISA SHOW :AGENT MV4305 :STATEMENT-OR-THEME MV4309 :BENEFICIARY MV4307 :MODAL "CAN")
 (:VAR MV4305 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4309 :ISA BIO-ENTITY :PREDICATION MV4311 :HAS-DETERMINER "THE" :NAME "pahtways")
 (:VAR MV4311 :ISA INVOLVE :PARTICIPANT MV4309 :THAT-REL T :THEME MV4312 :MODAL "CAN")
 (:VAR MV4312 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4307 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
466: "Can you tell me the genes regulated by STAT3"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes regulated by STAT3" 11
                    END-OF-SOURCE
("Can you tell me the genes regulated by STAT3" (:VAR MV4324 :ISA POLAR-QUESTION :STATEMENT MV4317)
 (:VAR MV4317 :ISA TELL :AGENT MV4316 :THEME MV4320 :BENEFICIARY MV4318 :MODAL "CAN")
 (:VAR MV4316 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4320 :ISA GENE :PREDICATION MV4321 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4321 :ISA REGULATE :OBJECT MV4320 :AGENT MV4314 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4314 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4318 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
467: "Can you tell me the genes that STAT3 regulates"

                    SOURCE-START
e22   TELL          1 "Can you tell me the genes that STAT3 regulates" 11
                    END-OF-SOURCE
("Can you tell me the genes that STAT3 regulates"
 (:VAR MV4334 :ISA POLAR-QUESTION :STATEMENT MV4328)
 (:VAR MV4328 :ISA TELL :AGENT MV4327 :THEME MV4331 :BENEFICIARY MV4329 :MODAL "CAN")
 (:VAR MV4327 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4331 :ISA GENE :PREDICATION MV4333 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4333 :ISA REGULATE :OBJECT MV4331 :THAT-REL T :AGENT MV4325 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV4325 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4329 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
468: "Can you tell me the genes that are regulated by STAT3"

                    SOURCE-START
e29   TELL          1 "Can you tell me the genes that are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes that are regulated by STAT3"
 (:VAR MV4348 :ISA POLAR-QUESTION :STATEMENT MV4338)
 (:VAR MV4338 :ISA TELL :AGENT MV4337 :THEME MV4341 :BENEFICIARY MV4339 :MODAL "CAN")
 (:VAR MV4337 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4341 :ISA GENE :PREDICATION MV4346 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4346 :ISA REGULATE :OBJECT MV4341 :THAT-REL T :AGENT MV4335 :MODAL "CAN" :RAW-TEXT
  "regulated")
 (:VAR MV4335 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4339 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
469: "Can you tell me the genes which are regulated by STAT3"

                    SOURCE-START
e28   TELL          1 "Can you tell me the genes which are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes which are regulated by STAT3"
 (:VAR MV4363 :ISA POLAR-QUESTION :STATEMENT MV4352)
 (:VAR MV4352 :ISA TELL :AGENT MV4351 :THEME MV4355 :BENEFICIARY MV4353 :MODAL "CAN")
 (:VAR MV4351 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4355 :ISA GENE :PREDICATION MV4362 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4362 :ISA REGULATE :OBJECT MV4355 :AGENT MV4349 :MODAL MV4350 :RAW-TEXT "regulated")
 (:VAR MV4349 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4350 :ISA CAN) (:VAR MV4353 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
470: "Can you tell me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf"
 (:VAR MV4379 :ISA POLAR-QUESTION :STATEMENT MV4368)
 (:VAR MV4368 :ISA TELL :AGENT MV4367 :THEME MV4377 :THEME MV4369 :MODAL "CAN")
 (:VAR MV4367 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4377 :ISA SHARE :OBJECT MV4364 :PARTICIPANT MV4376 :MODAL "CAN" :RAW-TEXT "shared")
 (:VAR MV4364 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV4376 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4365 MV4375))
 (:VAR MV4365 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4375 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4369 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
471: "Can you tell me which genes are regulated by STAT3"

                    SOURCE-START
e24   TELL          1 "Can you tell me which genes are regulated by STAT3" 12
                    END-OF-SOURCE
("Can you tell me which genes are regulated by STAT3"
 (:VAR MV4392 :ISA POLAR-QUESTION :STATEMENT MV4383)
 (:VAR MV4383 :ISA TELL :AGENT MV4382 :THEME MV4390 :THEME MV4384 :MODAL "CAN")
 (:VAR MV4382 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4390 :ISA REGULATE :OBJECT MV4386 :AGENT MV4380 :MODAL "CAN" :RAW-TEXT "regulated")
 (:VAR MV4386 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4380 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4384 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
472: "Can you tell me which genes in the liver are regulated by stat3?"

                    SOURCE-START
e32   TELL          1 "Can you tell me which genes in the liver are regulated by stat3" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes in the liver are regulated by stat3?"
 (:VAR MV4409 :ISA POLAR-QUESTION :STATEMENT MV4396)
 (:VAR MV4396 :ISA TELL :AGENT MV4395 :THEME MV4406 :THEME MV4397 :MODAL "CAN")
 (:VAR MV4395 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4406 :ISA REGULATE :OBJECT MV4399 :AGENT MV4393 :MODAL "CAN" :RAW-TEXT "regulated")
 (:VAR MV4399 :ISA GENE :ORGAN MV4402 :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4402 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4393 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4397 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
473: "Can you tell me which genes stat3 regulates?"

                    SOURCE-START
e18   TELL          1 "Can you tell me which genes stat3 regulates" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes stat3 regulates?" (:VAR MV4418 :ISA POLAR-QUESTION :STATEMENT MV4413)
 (:VAR MV4413 :ISA TELL :AGENT MV4412 :THEME MV4416 :BENEFICIARY MV4414 :MODAL "CAN")
 (:VAR MV4412 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV4416 :ISA GENE :PREDICATION MV4417 :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4417 :ISA REGULATE :OBJECT MV4416 :AGENT MV4410 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4410 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4414 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
474: "Does STAT3 affect the expression of c-fos?"

                    SOURCE-START
e18   AFFECT        1 "Does STAT3 affect the expression of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of c-fos?" (:VAR MV4428 :ISA POLAR-QUESTION :STATEMENT MV4426)
 (:VAR MV4426 :ISA AFFECT :AGENT MV4419 :AFFECTED-PROCESS MV4424 :RAW-TEXT "affect")
 (:VAR MV4419 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4424 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4420 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV4420 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
475: "Does STAT3 affect the expression of the c-fos gene?"

                    SOURCE-START
e23   AFFECT        1 "Does STAT3 affect the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of the c-fos gene?"
 (:VAR MV4440 :ISA POLAR-QUESTION :STATEMENT MV4438)
 (:VAR MV4438 :ISA AFFECT :AGENT MV4429 :AFFECTED-PROCESS MV4434 :RAW-TEXT "affect")
 (:VAR MV4429 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4434 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4437 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV4437 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4430 :RAW-TEXT "gene")
 (:VAR MV4430 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
476: "Does STAT3 increase the expression of the c-fos gene?"

                    SOURCE-START
e24   INCREASE      1 "Does STAT3 increase the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase the expression of the c-fos gene?"
 (:VAR MV4453 :ISA POLAR-QUESTION :STATEMENT MV4451)
 (:VAR MV4451 :ISA INCREASE :AGENT MV4441 :AFFECTED-PROCESS MV4447 :RAW-TEXT "increase")
 (:VAR MV4441 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4447 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4450 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV4450 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4442 :RAW-TEXT "gene")
 (:VAR MV4442 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
477: "Does STAT3 increase transcription of the c-fos gene?"

                    SOURCE-START
e21   INCREASE      1 "Does STAT3 increase transcription of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase transcription of the c-fos gene?"
 (:VAR MV4465 :ISA POLAR-QUESTION :STATEMENT MV4463)
 (:VAR MV4463 :ISA INCREASE :AGENT MV4454 :AFFECTED-PROCESS MV4459 :RAW-TEXT "increase")
 (:VAR MV4454 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4459 :ISA TRANSCRIBE :OBJECT MV4462 :RAW-TEXT "transcription")
 (:VAR MV4462 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4455 :RAW-TEXT "gene")
 (:VAR MV4455 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
478: "Does stat3 affect the expression of cfos?"

                    SOURCE-START
e17   AFFECT        1 "Does stat3 affect the expression of cfos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 affect the expression of cfos?" (:VAR MV4475 :ISA POLAR-QUESTION :STATEMENT MV4473)
 (:VAR MV4473 :ISA AFFECT :AGENT MV4466 :AFFECTED-PROCESS MV4470 :RAW-TEXT "affect")
 (:VAR MV4466 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4470 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV4472 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV4472 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
479: "Does the mTor pathway contain SGK1?"

                    SOURCE-START
e16   CONTAIN       1 "Does the mTor pathway contain SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway contain SGK1?" (:VAR MV4485 :ISA POLAR-QUESTION :STATEMENT MV4484)
 (:VAR MV4484 :ISA CONTAIN :PARTICIPANT MV4482 :THEME MV4476)
 (:VAR MV4482 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4479 :RAW-TEXT "pathway")
 (:VAR MV4479 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME "MTOR_HUMAN")
 (:VAR MV4476 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME "SGK1_HUMAN"))

___________________
480: "Find a treatment for pancreatic cancer."

                    SOURCE-START
e12   BIO-FIND      1 "Find a treatment for pancreatic cancer" 7
                    PERIOD
                    END-OF-SOURCE
("Find a treatment for pancreatic cancer."
 (:VAR MV4488 :ISA BIO-FIND :OBJECT MV4490 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4490 :ISA TREATMENT :DISEASE MV4486 :HAS-DETERMINER "A" :RAW-TEXT "treatment")
 (:VAR MV4486 :ISA CANCER :UID "TS-0739"))

___________________
481: "Find genes in the liver regulated by stat3"

                    SOURCE-START
e18   BIO-FIND      1 "Find genes in the liver regulated by stat3" 10
                    END-OF-SOURCE
("Find genes in the liver regulated by stat3"
 (:VAR MV4495 :ISA BIO-FIND :OBJECT MV4496 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4496 :ISA GENE :PREDICATION MV4500 :ORGAN MV4499 :RAW-TEXT "genes")
 (:VAR MV4500 :ISA REGULATE :OBJECT MV4496 :AGENT MV4493 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4493 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4499 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
482: "Find genes that stat3 regulates"

                    SOURCE-START
e12   BIO-FIND      1 "Find genes that stat3 regulates" 7
                    END-OF-SOURCE
("Find genes that stat3 regulates"
 (:VAR MV4506 :ISA BIO-FIND :OBJECT MV4507 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4507 :ISA GENE :PREDICATION MV4509 :RAW-TEXT "genes")
 (:VAR MV4509 :ISA REGULATE :OBJECT MV4507 :THAT-REL T :AGENT MV4504 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV4504 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
483: "Find transcription factors shared by elk1 and srf"

                    SOURCE-START
e14   BIO-FIND      1 "Find transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Find transcription factors shared by elk1 and srf"
 (:VAR MV4513 :ISA BIO-FIND :OBJECT MV4510 :PRESENT "PRESENT" :RAW-TEXT "Find")
 (:VAR MV4510 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4514 :RAW-TEXT "transcription factors")
 (:VAR MV4514 :ISA SHARE :OBJECT MV4510 :PARTICIPANT MV4518 :PAST "PAST" :RAW-TEXT "shared")
 (:VAR MV4518 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4511 MV4517))
 (:VAR MV4511 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4517 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
484: "How does KRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does KRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS activate MAPK3?"
 (:VAR MV4524 :ISA BIO-ACTIVATE :MANNER MV4521 :AGENT MV4523 :OBJECT MV4520 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV4521 :ISA HOW)
 (:VAR MV4523 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV4520 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME "MK03_HUMAN"))

___________________
485: "How does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e14   REGULATE      1 "How does STAT3 regulate the c-fos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("How does STAT3 regulate the c-fos gene?"
 (:VAR MV4529 :ISA REGULATE :MANNER MV4527 :AGENT MV4525 :OBJECT MV4531 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV4527 :ISA HOW)
 (:VAR MV4525 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4531 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4526 :RAW-TEXT "gene")
 (:VAR MV4526 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

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
 (:VAR MV4553 :ISA REGULATE :MANNER MV4551 :AGENT MV4550 :AFFECTED-PROCESS MV4554 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4551 :ISA HOW)
 (:VAR MV4550 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4554 :ISA APOPTOSIS :ORGAN MV4557 :RAW-TEXT "apoptosis")
 (:VAR MV4557 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
488: "How does stat3 regulate apoptosis?"

                    SOURCE-START
e8    REGULATE      1 "How does stat3 regulate apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis?"
 (:VAR MV4562 :ISA REGULATE :MANNER MV4560 :AGENT MV4559 :AFFECTED-PROCESS MV4563 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV4560 :ISA HOW)
 (:VAR MV4559 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4563 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
489: "How does stat3 regulate apoptotic genes?"

                    SOURCE-START
e11   REGULATE      1 "How does stat3 regulate apoptotic genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptotic genes?"
 (:VAR MV4567 :ISA REGULATE :MANNER MV4565 :AGENT MV4564 :OBJECT MV4570 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV4565 :ISA HOW)
 (:VAR MV4564 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4570 :ISA GENE :MODIFIER MV4569 :RAW-TEXT "genes") (:VAR MV4569 :ISA APOPTOTIC))

___________________
490: "How is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e15   INVOLVE       1 "How is stat3 involved in apoptotic regulation" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotic regulation?"
 (:VAR MV4581 :ISA INVOLVE :MANNER MV4572 :THEME MV4571 :THEME MV4578 :PAST "PAST")
 (:VAR MV4572 :ISA HOW)
 (:VAR MV4571 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4578 :ISA REGULATE :AGENT MV4576 :RAW-TEXT "regulation")
 (:VAR MV4576 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
491: "How is stat3 involved in apoptotis regulation in the liver?"

                    SOURCE-START
e22   INVOLVE       1 "How is stat3 involved in apoptotis regulation in the liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotis regulation in the liver?"
 (:VAR MV4595 :ISA INVOLVE :MANNER MV4583 :THEME MV4582 :THEME MV4587 :PAST "PAST")
 (:VAR MV4583 :ISA HOW)
 (:VAR MV4582 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4587 :ISA REGULATE :OBJECT MV4591 :ORGAN MV4590 :AGENT-OR-OBJECT MV4591 :RAW-TEXT
  "regulation")
 (:VAR MV4591 :ISA BIO-ENTITY :NAME "apoptotis") (:VAR MV4590 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4591 :ISA BIO-ENTITY :NAME "apoptotis"))

___________________
492: "How is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e14   INVOLVE       1 "How is stat3 involved in regulating apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in regulating apoptosis?"
 (:VAR MV4605 :ISA INVOLVE :MANNER MV4597 :THEME MV4596 :THEME MV4601 :PAST "PAST")
 (:VAR MV4597 :ISA HOW)
 (:VAR MV4596 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4601 :ISA REGULATE :AFFECTED-PROCESS MV4602 :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT
  "regulating")
 (:VAR MV4602 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
493: "How is stat3 used to regulate apoptosis?"

                    SOURCE-START
e14   BIO-USE       1 "How is stat3 used to regulate apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 used to regulate apoptosis?"
 (:VAR MV4615 :ISA BIO-USE :MANNER MV4607 :OBJECT MV4606 :THEME MV4613 :PAST "PAST" :RAW-TEXT
  "used")
 (:VAR MV4607 :ISA HOW)
 (:VAR MV4606 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4613 :ISA REGULATE :AFFECTED-PROCESS MV4612 :RAW-TEXT "regulate")
 (:VAR MV4612 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
494: "How many genes are in the MAPK signaling pathway?"

                    SOURCE-START
e19   COPULAR-PREDICATE 1 "How many genes are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How many genes are in the MAPK signaling pathway?"
 (:VAR MV4627 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4619 :VALUE MV4626 :PREP "IN" :PREDICATE
  MV4620)
 (:VAR MV4619 :ISA GENE :HAS-DETERMINER "HOW" :QUANTIFIER MV4618 :RAW-TEXT "genes")
 (:VAR MV4618 :ISA MANY :WORD "many")
 (:VAR MV4626 :ISA GENE :CONTEXT MV4616 :HAS-DETERMINER "HOW" :QUANTIFIER MV4618 :RAW-TEXT "genes")
 (:VAR MV4616 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV4623 :RAW-TEXT
  "signaling pathway")
 (:VAR MV4623 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV4618 :ISA MANY :WORD "many") (:VAR MV4620 :ISA BE :PRESENT "PRESENT"))

___________________
495: "How might a STAT3 mutation affect breast cancer?"

                    SOURCE-START
e14   AFFECT        1 "How might a STAT3 mutation affect breast cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How might a STAT3 mutation affect breast cancer?"
 (:VAR MV4636 :ISA AFFECT :MANNER MV4631 :MODAL MV4632 :AGENT MV4634 :OBJECT MV4630 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV4631 :ISA HOW) (:VAR MV4632 :ISA MIGHT)
 (:VAR MV4634 :ISA MUTATION :OBJECT MV4629 :HAS-DETERMINER "A" :AGENT-OR-OBJECT MV4629 :RAW-TEXT
  "mutation")
 (:VAR MV4629 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4629 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4630 :ISA CANCER :UID "TS-0591"))

___________________
496: "Is STAT3 a regulator for c-fos?"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator for c-fos" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator for c-fos?"
 (:VAR MV4644 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89635>
   (PREDICATE
    (#<regulator 89634>
     (THEME (#<protein "FOS_HUMAN" 86574> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
497: "Is STAT3 a regulator of c-fos"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator of c-fos" 10
                    END-OF-SOURCE
("Is STAT3 a regulator of c-fos"
 (:VAR MV4652 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89635>
   (PREDICATE
    (#<regulator 89634>
     (THEME (#<protein "FOS_HUMAN" 86574> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
498: "Is STAT3 a regulator of the c-fos gene"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene"
 (:VAR MV4662 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89639>
   (PREDICATE
    (#<regulator 89638>
     (THEME
      (#<gene 87927> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86574> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
499: "Is STAT3 a regulator of the c-fos gene?"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene?"
 (:VAR MV4672 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89639>
   (PREDICATE
    (#<regulator 89638>
     (THEME
      (#<gene 87927> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86574> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "regulator"))))))

___________________
500: "Is STAT3 a transcription factor for c-fos gene"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene"
 (:VAR MV4681 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88031>
   (PREDICATE
    (#<transcription-factor 88030>
     (CONTROLLED-GENE
      (#<gene 87926>
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86574> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "transcription factor"))))))

___________________
501: "Is STAT3 a transcription factor for c-fos"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos"
 (:VAR MV4689 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89643>
   (PREDICATE
    (#<transcription-factor 89642>
     (CONTROLLED-GENE
      (#<protein "FOS_HUMAN" 86574> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "transcription factor"))))))

___________________
502: "Is STAT3 a transcription factor for c-fos?"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos?"
 (:VAR MV4697 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89643>
   (PREDICATE
    (#<transcription-factor 89642>
     (CONTROLLED-GENE
      (#<protein "FOS_HUMAN" 86574> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "transcription factor"))))))

___________________
503: "Is STAT3 a transcription factor for the c-fos gene?"

                    SOURCE-START
e21   BE            1 "Is STAT3 a transcription factor for the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for the c-fos gene?"
 (:VAR MV4707 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89648>
   (PREDICATE
    (#<transcription-factor 89647>
     (CONTROLLED-GENE
      (#<gene 87927> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86574> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "transcription factor"))))))

___________________
504: "Is STAT3 regulated by c-fos?"

                    SOURCE-START
e12   REGULATE      1 "Is STAT3 regulated by c-fos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 regulated by c-fos?" (:VAR MV4715 :ISA POLAR-QUESTION :STATEMENT MV4714)
 (:VAR MV4714 :ISA REGULATE :AGENT MV4708 :AGENT MV4709 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4708 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4709 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
505: "Is Stat3 a transcription factor for the c-fos gene"

                    SOURCE-START
e21   BE            1 "Is Stat3 a transcription factor for the c-fos gene" 13
                    END-OF-SOURCE
("Is Stat3 a transcription factor for the c-fos gene"
 (:VAR MV4725 :ISA POLAR-QUESTION :STATEMENT
  (#<be 89648>
   (PREDICATE
    (#<transcription-factor 89647>
     (CONTROLLED-GENE
      (#<gene 87927> (HAS-DETERMINER (#<the 106> (WORD "the")))
       (EXPRESSES
        (#<protein "FOS_HUMAN" 86574> (RAW-TEXT "c-fos") (UID "UP:P01100") (NAME "FOS_HUMAN")))
       (RAW-TEXT "gene")))
     (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "transcription factor"))))))

___________________
506: "List genes regulated by ELK1"

                    SOURCE-START
e9    LIST          1 "List genes regulated by ELK1" 7
                    END-OF-SOURCE
("List genes regulated by ELK1" (:VAR MV4727 :ISA LIST :THEME MV4728 :PRESENT "PRESENT")
 (:VAR MV4728 :ISA GENE :PREDICATION MV4729 :RAW-TEXT "genes")
 (:VAR MV4729 :ISA REGULATE :OBJECT MV4728 :AGENT MV4726 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4726 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
507: "List genes that are regulated by ELK1"

                    SOURCE-START
e16   LIST          1 "List genes that are regulated by ELK1" 9
                    END-OF-SOURCE
("List genes that are regulated by ELK1" (:VAR MV4733 :ISA LIST :THEME MV4734 :PRESENT "PRESENT")
 (:VAR MV4734 :ISA GENE :PREDICATION MV4739 :RAW-TEXT "genes")
 (:VAR MV4739 :ISA REGULATE :OBJECT MV4734 :THAT-REL T :AGENT MV4732 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV4732 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
508: "List some genes that stat3 regulates"

                    SOURCE-START
e13   LIST          1 "List some genes that stat3 regulates" 8
                    END-OF-SOURCE
("List some genes that stat3 regulates" (:VAR MV4742 :ISA LIST :THEME MV4744 :PRESENT "PRESENT")
 (:VAR MV4744 :ISA GENE :PREDICATION MV4746 :QUANTIFIER MV4743 :RAW-TEXT "genes")
 (:VAR MV4746 :ISA REGULATE :OBJECT MV4744 :THAT-REL T :AGENT MV4741 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV4741 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4743 :ISA SOME :WORD "some"))

___________________
509: "List the genes STAT3 regulates"

                    SOURCE-START
e11   LIST          1 "List the genes STAT3 regulates" 7
                    END-OF-SOURCE
("List the genes STAT3 regulates" (:VAR MV4748 :ISA LIST :THEME MV4750 :PRESENT "PRESENT")
 (:VAR MV4750 :ISA GENE :PREDICATION MV4751 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4751 :ISA REGULATE :OBJECT MV4750 :AGENT MV4747 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4747 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
510: "List the genes that are regulated by STAT3"

                    SOURCE-START
e19   LIST          1 "List the genes that are regulated by STAT3" 10
                    END-OF-SOURCE
("List the genes that are regulated by STAT3"
 (:VAR MV4753 :ISA LIST :THEME MV4755 :PRESENT "PRESENT")
 (:VAR MV4755 :ISA GENE :PREDICATION MV4760 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4760 :ISA REGULATE :OBJECT MV4755 :THAT-REL T :AGENT MV4752 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV4752 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
511: "List the genes which STAT3 regulates"

                    SOURCE-START
e13   LIST          1 "List the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("List the genes which STAT3 regulates" (:VAR MV4763 :ISA LIST :THEME MV4765 :PRESENT "PRESENT")
 (:VAR MV4765 :ISA GENE :PREDICATION MV4767 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4767 :ISA REGULATE :OBJECT MV4765 :AGENT MV4762 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4762 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
512: "List the pahtways that involve SRF"

                    SOURCE-START
e13   LIST          1 "List the pahtways that involve SRF" 7
                    END-OF-SOURCE
("List the pahtways that involve SRF" (:VAR MV4768 :ISA LIST :THEME MV4770 :PRESENT "PRESENT")
 (:VAR MV4770 :ISA BIO-ENTITY :PREDICATION MV4772 :HAS-DETERMINER "THE" :NAME "pahtways")
 (:VAR MV4772 :ISA INVOLVE :PARTICIPANT MV4770 :THAT-REL T :THEME MV4773 :PRESENT "PRESENT")
 (:VAR MV4773 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
513: "Show me genes regulated by ELK1"

                    SOURCE-START
e13   SHOW          1 "Show me genes regulated by ELK1" 8
                    END-OF-SOURCE
("Show me genes regulated by ELK1"
 (:VAR MV4775 :ISA SHOW :STATEMENT-OR-THEME MV4777 :BENEFICIARY MV4776 :PRESENT "PRESENT")
 (:VAR MV4777 :ISA GENE :PREDICATION MV4778 :RAW-TEXT "genes")
 (:VAR MV4778 :ISA REGULATE :OBJECT MV4777 :AGENT MV4774 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4774 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4776 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
514: "Show me genes that are regulated by ELK1"

                    SOURCE-START
e18   SHOW          1 "Show me genes that are regulated by ELK1" 10
                    END-OF-SOURCE
("Show me genes that are regulated by ELK1"
 (:VAR MV4782 :ISA SHOW :STATEMENT-OR-THEME MV4784 :BENEFICIARY MV4783 :PRESENT "PRESENT")
 (:VAR MV4784 :ISA GENE :PREDICATION MV4789 :RAW-TEXT "genes")
 (:VAR MV4789 :ISA REGULATE :OBJECT MV4784 :THAT-REL T :AGENT MV4781 :PRESENT "PRESENT" :RAW-TEXT
  "regulated")
 (:VAR MV4781 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4783 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
515: "Show me genes that stat3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show me genes that stat3 regulates" 8
                    END-OF-SOURCE
("Show me genes that stat3 regulates"
 (:VAR MV4792 :ISA SHOW :STATEMENT-OR-THEME MV4794 :BENEFICIARY MV4793 :PRESENT "PRESENT")
 (:VAR MV4794 :ISA GENE :PREDICATION MV4796 :RAW-TEXT "genes")
 (:VAR MV4796 :ISA REGULATE :OBJECT MV4794 :THAT-REL T :AGENT MV4791 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV4791 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4793 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
516: "Show me the pahtways that involve SRF"

                    SOURCE-START
e15   SHOW          1 "Show me the pahtways that involve SRF" 8
                    END-OF-SOURCE
("Show me the pahtways that involve SRF"
 (:VAR MV4797 :ISA SHOW :STATEMENT-OR-THEME MV4800 :BENEFICIARY MV4798 :PRESENT "PRESENT")
 (:VAR MV4800 :ISA BIO-ENTITY :PREDICATION MV4802 :HAS-DETERMINER "THE" :NAME "pahtways")
 (:VAR MV4802 :ISA INVOLVE :PARTICIPANT MV4800 :THAT-REL T :THEME MV4803 :PRESENT "PRESENT")
 (:VAR MV4803 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4798 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
517: "Show me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show me what transcription factors are shared by elk1 and srf" 13
                    END-OF-SOURCE
("Show me what transcription factors are shared by elk1 and srf"
 (:VAR MV4817 :ISA SHOW :STATEMENT MV4815 :THEME MV4807 :PRESENT "PRESENT")
 (:VAR MV4815 :ISA SHARE :OBJECT MV4804 :PARTICIPANT MV4814 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV4804 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV4814 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4805 MV4813))
 (:VAR MV4805 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4813 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4807 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
518: "Show me which genes are regulated by STAT3"

                    SOURCE-START
e16   SHOW          1 "Show me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Show me which genes are regulated by STAT3"
 (:VAR MV4828 :ISA SHOW :STATEMENT MV4826 :THEME MV4820 :PRESENT "PRESENT")
 (:VAR MV4826 :ISA REGULATE :OBJECT MV4822 :AGENT MV4818 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4822 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4818 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4820 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
519: "Show the genes which STAT3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("Show the genes which STAT3 regulates"
 (:VAR MV4830 :ISA SHOW :STATEMENT-OR-THEME MV4832 :PRESENT "PRESENT")
 (:VAR MV4832 :ISA GENE :PREDICATION MV4834 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4834 :ISA REGULATE :OBJECT MV4832 :AGENT MV4829 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4829 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
520: "Show the pahtways that involve SRF"

                    SOURCE-START
e13   SHOW          1 "Show the pahtways that involve SRF" 7
                    END-OF-SOURCE
("Show the pahtways that involve SRF"
 (:VAR MV4835 :ISA SHOW :STATEMENT-OR-THEME MV4837 :PRESENT "PRESENT")
 (:VAR MV4837 :ISA BIO-ENTITY :PREDICATION MV4839 :HAS-DETERMINER "THE" :NAME "pahtways")
 (:VAR MV4839 :ISA INVOLVE :PARTICIPANT MV4837 :THAT-REL T :THEME MV4840 :PRESENT "PRESENT")
 (:VAR MV4840 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
521: "Show transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show transcription factors that are shared by elk1 and srf" 12
                    END-OF-SOURCE
("Show transcription factors that are shared by elk1 and srf"
 (:VAR MV4843 :ISA SHOW :STATEMENT-OR-THEME MV4841 :PRESENT "PRESENT")
 (:VAR MV4841 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4851 :RAW-TEXT "transcription factors")
 (:VAR MV4851 :ISA SHARE :OBJECT MV4841 :THAT-REL T :PARTICIPANT MV4850 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV4850 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4842 MV4849))
 (:VAR MV4842 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4849 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
522: "Tell me the genes which are regulated by STAT3"

                    SOURCE-START
e20   TELL          1 "Tell me the genes which are regulated by STAT3" 11
                    END-OF-SOURCE
("Tell me the genes which are regulated by STAT3"
 (:VAR MV4854 :ISA TELL :THEME MV4857 :BENEFICIARY MV4855 :PRESENT "PRESENT")
 (:VAR MV4857 :ISA GENE :PREDICATION MV4864 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4864 :ISA REGULATE :OBJECT MV4857 :AGENT MV4853 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4853 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4855 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
523: "Tell me what genes are regulated by elk1 and srf"

                    SOURCE-START
e19   TELL          1 "Tell me what genes are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("Tell me what genes are regulated by elk1 and srf"
 (:VAR MV4866 :ISA TELL :THEME MV4876 :THEME MV4867 :PRESENT "PRESENT")
 (:VAR MV4876 :ISA REGULATE :OBJECT MV4869 :AGENT MV4875 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4869 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV4875 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4865 MV4874))
 (:VAR MV4865 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4874 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4867 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
524: "Tell me which genes are regulated by STAT3"

                    SOURCE-START
e16   TELL          1 "Tell me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Tell me which genes are regulated by STAT3"
 (:VAR MV4879 :ISA TELL :THEME MV4886 :THEME MV4880 :PRESENT "PRESENT")
 (:VAR MV4886 :ISA REGULATE :OBJECT MV4882 :AGENT MV4878 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4882 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV4878 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4880 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
525: "What are positive regulators of cfos?"

                    SOURCE-START
e10   BE            1 "What are positive regulators of cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of cfos?"
 (:VAR MV4890 :ISA BE :SUBJECT MV4889 :PREDICATE MV4888 :PRESENT "PRESENT") (:VAR MV4889 :ISA WHAT)
 (:VAR MV4888 :ISA POSITIVE-REGULATOR :THEME MV4892 :RAW-TEXT "positive regulators")
 (:VAR MV4892 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
526: "What are some regulators of SMURF2?"

                    SOURCE-START
e12   BE            1 "What are some regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some regulators of SMURF2?"
 (:VAR MV4896 :ISA BE :SUBJECT MV4895 :PREDICATE MV4898 :PRESENT "PRESENT") (:VAR MV4895 :ISA WHAT)
 (:VAR MV4898 :ISA REGULATOR :THEME MV4894 :QUANTIFIER MV4897 :RAW-TEXT "regulators")
 (:VAR MV4894 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN")
 (:VAR MV4897 :ISA SOME :WORD "some"))

___________________
527: "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"

                    SOURCE-START
e31   BE            1 "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
 (:VAR MV4907 :ISA BE :SUBJECT MV4906 :PREDICATE MV4910 :PRESENT "PRESENT") (:VAR MV4906 :ISA WHAT)
 (:VAR MV4910 :ISA REGULATOR :THEME MV4914 :HAS-DETERMINER "THE" :PREDICATION MV4909 :RAW-TEXT
  "regulators")
 (:VAR MV4914 :ISA COLLECTION :RAW-TEXT "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :TYPE
  PROTEIN :NUMBER 6 :ITEMS (MV4901 MV4902 MV4912 MV4903 MV4904 MV4905))
 (:VAR MV4901 :ISA PROTEIN :RAW-TEXT "ABI2" :UID "UP:Q9NYB9" :NAME "ABI2_HUMAN")
 (:VAR MV4902 :ISA PROTEIN :RAW-TEXT "ABL1" :UID "UP:P00519" :NAME "ABL1_HUMAN")
 (:VAR MV4912 :ISA PROTEIN :RAW-TEXT "ACADSB" :UID "UP:P45954" :NAME "ACDSB_HUMAN")
 (:VAR MV4903 :ISA PROTEIN :RAW-TEXT "ADGRL1" :UID "UP:O94910" :NAME "AGRL1_HUMAN")
 (:VAR MV4904 :ISA PROTEIN :RAW-TEXT "ADRM1" :UID "UP:Q16186" :NAME "ADRM1_HUMAN")
 (:VAR MV4905 :ISA PROTEIN :RAW-TEXT "AGAP1" :UID "UP:Q9UPQ3" :NAME "AGAP1_HUMAN")
 (:VAR MV4909 :ISA COMMON))

___________________
528: "What are the common regulators of elk1 and srf"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srf" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srf"
 (:VAR MV4918 :ISA BE :SUBJECT MV4917 :PREDICATE MV4921 :PRESENT "PRESENT") (:VAR MV4917 :ISA WHAT)
 (:VAR MV4921 :ISA REGULATOR :THEME MV4925 :HAS-DETERMINER "THE" :PREDICATION MV4920 :RAW-TEXT
  "regulators")
 (:VAR MV4925 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4916 MV4924))
 (:VAR MV4916 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4924 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4920 :ISA COMMON))

___________________
529: "What are the common regulators of elk1 and srg"

                    SOURCE-START
e18   BE            1 "What are the common regulators of elk1 and srg" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srg"
 (:VAR MV4929 :ISA BE :SUBJECT MV4928 :PREDICATE MV4932 :PRESENT "PRESENT") (:VAR MV4928 :ISA WHAT)
 (:VAR MV4932 :ISA REGULATOR :THEME MV4936 :HAS-DETERMINER "THE" :PREDICATION MV4931 :RAW-TEXT
  "regulators")
 (:VAR MV4936 :ISA COLLECTION :RAW-TEXT "elk1 and srg" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV4927 MV4935))
 (:VAR MV4927 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV4935 :ISA BIO-ENTITY :NAME "srg") (:VAR MV4931 :ISA COMMON))

___________________
530: "What are the common regulators of those genes"

                    SOURCE-START
e16   BE            1 "What are the common regulators of those genes" 9
                    END-OF-SOURCE
("What are the common regulators of those genes"
 (:VAR MV4939 :ISA BE :SUBJECT MV4938 :PREDICATE MV4942 :PRESENT "PRESENT") (:VAR MV4938 :ISA WHAT)
 (:VAR MV4942 :ISA REGULATOR :THEME MV4945 :HAS-DETERMINER "THE" :PREDICATION MV4941 :RAW-TEXT
  "regulators")
 (:VAR MV4945 :ISA GENE :HAS-DETERMINER "THOSE" :RAW-TEXT "genes") (:VAR MV4941 :ISA COMMON))

___________________
531: "What are the genes regulated by STAT3?"

                    SOURCE-START
e13   REGULATE      1 "What are the genes regulated by STAT3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes regulated by STAT3?"
 (:VAR MV4952 :ISA REGULATE :OBJECT
  (#<gene 89815> (HAS-DETERMINER (#<what 86373>)) (HAS-DETERMINER (#<the 106> (WORD "the")))
   (RAW-TEXT "genes"))
  :AGENT MV4947 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV4947 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
532: "What are the genes which STAT3 regulates?"

                    SOURCE-START
e15   BE            1 "What are the genes which STAT3 regulates" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes which STAT3 regulates?"
 (:VAR MV4957 :ISA BE :SUBJECT MV4956 :PREDICATE MV4959 :PRESENT "PRESENT") (:VAR MV4956 :ISA WHAT)
 (:VAR MV4959 :ISA GENE :PREDICATION MV4961 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV4961 :ISA REGULATE :OBJECT MV4959 :AGENT MV4955 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV4955 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
533: "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV4966 :ISA BE :SUBJECT MV4965 :PREDICATE MV4970 :PRESENT "PRESENT") (:VAR MV4965 :ISA WHAT)
 (:VAR MV4970 :ISA REGULATOR :THEME MV4975 :HAS-DETERMINER "THE" :MODIFIER MV4969 :RAW-TEXT
  "regulators")
 (:VAR MV4975 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV4972 MV4973 MV4962 MV4963 MV4964))
 (:VAR MV4972 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV4973 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4962 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4963 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV4964 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN")
 (:VAR MV4969 :ISA FREQUENT :COMPARATIVE MV4968)
 (:VAR MV4968 :ISA SUPERLATIVE-QUANTIFIER :NAME "most"))

___________________
534: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e28   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV4982 :ISA BE :SUBJECT MV4981 :PREDICATE MV4977 :PRESENT "PRESENT") (:VAR MV4981 :ISA WHAT)
 (:VAR MV4977 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV4985 :HAS-DETERMINER "THE" :RAW-TEXT
  "transcription factors")
 (:VAR MV4985 :ISA REGULATE :AGENT MV4977 :THAT-REL T :OBJECT MV4989 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV4989 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3" :TYPE PROTEIN :NUMBER 5
  :ITEMS (MV4986 MV4987 MV4978 MV4979 MV4980))
 (:VAR MV4986 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV4987 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4978 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV4979 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV4980 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME "SMAD3_HUMAN"))

___________________
535: "What other genes are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other genes are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other genes are in the first pathway?"
 (:VAR MV5001 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4992 :VALUE MV5000 :PREP "IN" :PREDICATE
  MV4993)
 (:VAR MV4992 :ISA GENE :HAS-DETERMINER "WHAT" :QUANTIFIER MV4991 :RAW-TEXT "genes")
 (:VAR MV4991 :ISA OTHER :WORD "other")
 (:VAR MV5000 :ISA GENE :CONTEXT MV4997 :HAS-DETERMINER "WHAT" :QUANTIFIER MV4991 :RAW-TEXT
  "genes")
 (:VAR MV4997 :ISA PATHWAY :HAS-DETERMINER "THE" :NUMBER MV4996 :RAW-TEXT "pathway")
 (:VAR MV4996 :ISA ORDINAL :WORD "first" :NUMBER 1) (:VAR MV4991 :ISA OTHER :WORD "other")
 (:VAR MV4993 :ISA BE :PRESENT "PRESENT"))

___________________
536: "What other proteins are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other proteins are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other proteins are in the first pathway?"
 (:VAR MV5014 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5005 :VALUE MV5013 :PREP "IN" :PREDICATE
  MV5006)
 (:VAR MV5005 :ISA PROTEIN :HAS-DETERMINER "WHAT" :QUANTIFIER MV5004 :RAW-TEXT "proteins")
 (:VAR MV5004 :ISA OTHER :WORD "other")
 (:VAR MV5013 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV5010 :HAS-DETERMINER "WHAT" :QUANTIFIER MV5004
  :RAW-TEXT "proteins")
 (:VAR MV5010 :ISA PATHWAY :HAS-DETERMINER "THE" :NUMBER MV5009 :RAW-TEXT "pathway")
 (:VAR MV5009 :ISA ORDINAL :WORD "first" :NUMBER 1) (:VAR MV5004 :ISA OTHER :WORD "other")
 (:VAR MV5006 :ISA BE :PRESENT "PRESENT"))

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
 (:VAR MV5034 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5025 :VALUE MV5033 :PREP "IN" :PREDICATE
  MV5026)
 (:VAR MV5025 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV5033 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV5030 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "proteins")
 (:VAR MV5030 :ISA PATHWAY :HAS-DETERMINER "THE" :NUMBER MV5029 :RAW-TEXT "pathway")
 (:VAR MV5029 :ISA ORDINAL :WORD "first" :NUMBER 1) (:VAR MV5026 :ISA BE :PRESENT "PRESENT"))

___________________
540: "What pathways involve frizzled8?"

                    SOURCE-START
e7    INVOLVE       1 "What pathways involve frizzled8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve frizzled8?"
 (:VAR MV5039 :ISA INVOLVE :PARTICIPANT MV5038 :THEME MV5036 :PRESENT "PRESENT")
 (:VAR MV5038 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5036 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
541: "What genes are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What genes are in the first pathway" 8
                    END-OF-SOURCE
("What genes are in the first pathway"
 (:VAR MV5050 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5041 :VALUE MV5049 :PREP "IN" :PREDICATE
  MV5042)
 (:VAR MV5041 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5049 :ISA GENE :CONTEXT MV5046 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5046 :ISA PATHWAY :HAS-DETERMINER "THE" :NUMBER MV5045 :RAW-TEXT "pathway")
 (:VAR MV5045 :ISA ORDINAL :WORD "first" :NUMBER 1) (:VAR MV5042 :ISA BE :PRESENT "PRESENT"))

___________________
542: "What questions can you answer about microRNAs?"

                    SOURCE-START
e14   ANSWER        1 "What questions can you answer about microRNAs" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What questions can you answer about microRNAs?"
 (:VAR MV5063 :ISA ANSWER :PATIENT MV5053 :MODAL MV5055 :AGENT MV5056 :THEME MV5061 :PRESENT
  "PRESENT")
 (:VAR MV5053 :ISA BIO-QUESTION :HAS-DETERMINER "WHAT") (:VAR MV5055 :ISA CAN)
 (:VAR MV5056 :ISA INTERLOCUTOR :NAME "hearer") (:VAR MV5061 :ISA MICRO-RNA :RAW-TEXT "microRNAs"))

___________________
543: "What transcription factors regulate mothers against decapentaplegic?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate mothers against decapentaplegic" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate mothers against decapentaplegic?"
 (:VAR MV5067 :ISA REGULATE :AGENT MV5064 :OBJECT MV5065 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5064 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV5065 :ISA PROTEIN-FAMILY :RAW-TEXT "mothers against decapentaplegic" :NAME "SMAD" :COUNT 8
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
 (:VAR MV5071 :ISA REGULATE :LOCATION MV5069 :AGENT MV5068 :OBJECT MV5072 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5069 :ISA WHERE)
 (:VAR MV5068 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5072 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
545: "Which KEGG pathways involve ATP?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve ATP" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve ATP?"
 (:VAR MV5076 :ISA INVOLVE :PARTICIPANT MV5075 :THEME MV5077 :PRESENT "PRESENT")
 (:VAR MV5075 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5074 :RAW-TEXT "pathways")
 (:VAR MV5074 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV5077 :ISA NUCLEOTIDE :RAW-TEXT "ATP" :UID "PCID:5957"))

___________________
546: "Which genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are in the MAPK signaling pathway?"
 (:VAR MV5088 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5080 :VALUE MV5087 :PREP "IN" :PREDICATE
  MV5081)
 (:VAR MV5080 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5087 :ISA GENE :CONTEXT MV5078 :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5078 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5084 :RAW-TEXT
  "signaling pathway")
 (:VAR MV5084 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV5081 :ISA BE :PRESENT "PRESENT"))

___________________
547: "Which genes are involved in the oncogenic MAPK signaling pathway?"

                    SOURCE-START
e19   INVOLVE       1 "Which genes are involved in the oncogenic MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are involved in the oncogenic MAPK signaling pathway?"
 (:VAR MV5101 :ISA INVOLVE :THEME MV5092 :CONTEXT MV5090 :PRESENT "PRESENT")
 (:VAR MV5092 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5090 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :PREDICATION MV5097 :MODIFIER MV5098
  :RAW-TEXT "signaling pathway")
 (:VAR MV5097 :ISA ONCOGENIC)
 (:VAR MV5098 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV5104 :ISA REGULATE :AGENT MV5103 :OBJECT MV5105 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5103 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5105 :ISA BIO-ENTITY :NAME "x"))

___________________
549: "Which kinases negatively regulate x?"

                    SOURCE-START
e7    DOWNREGULATE  1 "Which kinases negatively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate x?"
 (:VAR MV5106 :ISA DOWNREGULATE :AGENT MV5108 :OBJECT MV5109 :PRESENT "PRESENT" :RAW-TEXT
  "negatively regulate")
 (:VAR MV5108 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5109 :ISA BIO-ENTITY :NAME "x"))

___________________
550: "Which kinases positively regulate x?"

                    SOURCE-START
e7    UPREGULATE    1 "Which kinases positively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases positively regulate x?"
 (:VAR MV5110 :ISA UPREGULATE :AGENT MV5112 :OBJECT MV5113 :PRESENT "PRESENT" :RAW-TEXT
  "positively regulate")
 (:VAR MV5112 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5113 :ISA BIO-ENTITY :NAME "x"))

___________________
551: "Which of these are in immune pathways?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune pathways?"
 (:VAR MV5122 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5116 :VALUE MV5120 :PREP "IN" :PREDICATE
  MV5117)
 (:VAR MV5116 :ISA THESE :QUANTIFIER MV5114 :WORD "these") (:VAR MV5114 :ISA WHICH)
 (:VAR MV5120 :ISA PATHWAY :MODIFIER MV5119 :RAW-TEXT "pathways") (:VAR MV5119 :ISA IMMUNE)
 (:VAR MV5117 :ISA BE :PRESENT "PRESENT"))

___________________
552: "Which of these are in immune system pathways?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which of these are in immune system pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune system pathways?"
 (:VAR MV5132 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5127 :VALUE MV5130 :PREP "IN" :PREDICATE
  MV5128)
 (:VAR MV5127 :ISA THESE :QUANTIFIER MV5125 :WORD "these") (:VAR MV5125 :ISA WHICH)
 (:VAR MV5130 :ISA PATHWAY :NON-CELLULAR-LOCATION MV5124 :RAW-TEXT "pathways")
 (:VAR MV5124 :ISA BIO-ORGAN :UID "UBERON:0002405") (:VAR MV5128 :ISA BE :PRESENT "PRESENT"))

___________________
553: "What are the genes STAT3 regulates?"

                    SOURCE-START
e13   BE            1 "What are the genes STAT3 regulates" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes STAT3 regulates?"
 (:VAR MV5136 :ISA BE :SUBJECT MV5135 :PREDICATE MV5138 :PRESENT "PRESENT") (:VAR MV5135 :ISA WHAT)
 (:VAR MV5138 :ISA GENE :PREDICATION MV5139 :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV5139 :ISA REGULATE :OBJECT MV5138 :AGENT MV5134 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5134 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
554: "Which of those are in the immune pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Which of those are in the immune pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are in the immune pathway?"
 (:VAR MV5149 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5142 :VALUE MV5147 :PREP "IN" :PREDICATE
  MV5143)
 (:VAR MV5142 :ISA THOSE :QUANTIFIER MV5140 :WORD "those") (:VAR MV5140 :ISA WHICH)
 (:VAR MV5147 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5146 :RAW-TEXT "pathway")
 (:VAR MV5146 :ISA IMMUNE) (:VAR MV5143 :ISA BE :PRESENT "PRESENT"))

___________________
555: "Which pathways involve p53?"

                    SOURCE-START
e7    INVOLVE       1 "Which pathways involve p53" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve p53?"
 (:VAR MV5154 :ISA INVOLVE :PARTICIPANT MV5153 :THEME MV5151 :PRESENT "PRESENT")
 (:VAR MV5153 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV5151 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
556: "can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("can you show me the pahtways that involve SRF"
 (:VAR MV5164 :ISA POLAR-QUESTION :STATEMENT MV5157)
 (:VAR MV5157 :ISA SHOW :AGENT MV5156 :STATEMENT-OR-THEME MV5160 :BENEFICIARY MV5158 :MODAL "CAN")
 (:VAR MV5156 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5160 :ISA BIO-ENTITY :PREDICATION MV5162 :HAS-DETERMINER "THE" :NAME "pahtways")
 (:VAR MV5162 :ISA INVOLVE :PARTICIPANT MV5160 :THAT-REL T :THEME MV5163 :MODAL "CAN")
 (:VAR MV5163 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5158 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
557: "Does Selumetinib inhibit MAP2K1?"

                    SOURCE-START
e9    INHIBIT       1 "Does Selumetinib inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib inhibit MAP2K1?" (:VAR MV5170 :ISA POLAR-QUESTION :STATEMENT MV5169)
 (:VAR MV5169 :ISA INHIBIT :AGENT MV5167 :OBJECT MV5165 :RAW-TEXT "inhibit")
 (:VAR MV5167 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV5165 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
558: "Let's build a model of the KRAS neighborhood."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's build a model of the KRAS neighborhood" 11
                    PERIOD
                    END-OF-SOURCE
("Let's build a model of the KRAS neighborhood."
 (:VAR MV5180 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV5172 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV5172 :ISA BUILD :ARTIFACT MV5174 :PRESENT "PRESENT")
 (:VAR MV5174 :ISA MODEL :OBJECT MV5178 :HAS-DETERMINER "A")
 (:VAR MV5178 :ISA NEIGHBORHOOD :HAS-DETERMINER "THE" :MODIFIER MV5177)
 (:VAR MV5177 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN"))

___________________
559: "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."

                    SOURCE-START
e28   KNOW          1 "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk" 15
                    PERIOD
                    END-OF-SOURCE
("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
 (:VAR MV5198 :ISA COLLECTION :TYPE KNOW :NUMBER 2 :ITEMS (MV5196 MV5197))
 (:VAR MV5196 :ISA KNOW :AGENT MV5181 :STATEMENT MV5187 :PRESENT "PRESENT")
 (:VAR MV5181 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV5187 :ISA BIO-ACTIVATE :AGENT MV5186 :OBJECT MV5188 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV5186 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV5188 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5197 :ISA COLLECTION :RAW-TEXT "Raf activates Mek and Mek activates Erk" :TYPE
  BIO-ACTIVATE :NUMBER 2 :ITEMS (MV5190 MV5194))
 (:VAR MV5190 :ISA BIO-ACTIVATE :AGENT MV5189 :OBJECT MV5191 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV5189 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5191 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5194 :ISA BIO-ACTIVATE :AGENT MV5193 :OBJECT MV5195 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV5193 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5195 :ISA PROTEIN-FAMILY :RAW-TEXT "Erk" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV5201 :ISA PHOSPHORYLATE :AGENT MV5199 :SUBSTRATE MV5200 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV5199 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV5200 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
561: "DUSP6 dephosphorylates MAPK1."

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1."
 (:VAR MV5204 :ISA DEPHOSPHORYLATE :AGENT MV5202 :SUBSTRATE MV5203 :PRESENT "PRESENT" :RAW-TEXT
  "dephosphorylates")
 (:VAR MV5202 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV5203 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
562: "Is the amount of phosphorylated MAPK1 always high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always high?"
 (:VAR MV5215 :ISA POLAR-QUESTION :STATEMENT MV5214)
 (:VAR MV5214 :ISA COPULAR-PREDICATION :ITEM MV5208 :VALUE MV5212 :PREDICATE MV5206)
 (:VAR MV5208 :ISA BIO-AMOUNT :MEASURED-ITEM MV5205 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5205 :ISA PROTEIN :PREDICATION MV5210 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5210 :ISA PHOSPHORYLATE :SUBSTRATE MV5205 :RAW-TEXT "phosphorylated")
 (:VAR MV5212 :ISA HIGH :ADVERB MV5211) (:VAR MV5211 :ISA ALWAYS) (:VAR MV5206 :ISA BE))

___________________
563: "Is the amount of phosphorylated MAPK1 always low?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always low" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always low?"
 (:VAR MV5226 :ISA POLAR-QUESTION :STATEMENT MV5225)
 (:VAR MV5225 :ISA COPULAR-PREDICATION :ITEM MV5219 :VALUE MV5223 :PREDICATE MV5217)
 (:VAR MV5219 :ISA BIO-AMOUNT :MEASURED-ITEM MV5216 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5216 :ISA PROTEIN :PREDICATION MV5221 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5221 :ISA PHOSPHORYLATE :SUBSTRATE MV5216 :RAW-TEXT "phosphorylated")
 (:VAR MV5223 :ISA LOW :ADVERB MV5222) (:VAR MV5222 :ISA ALWAYS) (:VAR MV5217 :ISA BE))

___________________
564: "Does the MAP2K1-MAPK1 complex vanish?"

                    SOURCE-START
e17   VANISH        1 "Does the MAP2K1-MAPK1 complex vanish" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the MAP2K1-MAPK1 complex vanish?" (:VAR MV5235 :ISA POLAR-QUESTION :STATEMENT MV5234)
 (:VAR MV5234 :ISA VANISH :AGENT MV5231 :RAW-TEXT "vanish")
 (:VAR MV5231 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :COMPONENT MV5227 :COMPONENT MV5233 :RAW-TEXT
  "complex")
 (:VAR MV5227 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV5233 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
565: "Does the DUSP6-MAPK1 complex vanish?"

                    SOURCE-START
e17   VANISH        1 "Does the DUSP6-MAPK1 complex vanish" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the DUSP6-MAPK1 complex vanish?" (:VAR MV5244 :ISA POLAR-QUESTION :STATEMENT MV5243)
 (:VAR MV5243 :ISA VANISH :AGENT MV5240 :RAW-TEXT "vanish")
 (:VAR MV5240 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :COMPONENT MV5236 :COMPONENT MV5242 :RAW-TEXT
  "complex")
 (:VAR MV5236 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV5242 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
566: "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e49   EVENT-RELATION  1 "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV5272 :ISA POLAR-QUESTION :STATEMENT MV5271)
 (:VAR MV5271 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV5268 :EVENT MV5264)
 (:VAR MV5268 :ISA WH-QUESTION :STATEMENT MV5265 :WH IF)
 (:VAR MV5265 :ISA INCREASE :AGENT-OR-CAUSE MV5254 :MULTIPLIER MV5263 :AFFECTED-PROCESS-OR-OBJECT
  MV5258 :RAW-TEXT "increase")
 (:VAR MV5254 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV5263 :ISA N-FOLD :NUMBER MV5262) (:VAR MV5262 :ISA NUMBER :VALUE 10)
 (:VAR MV5258 :ISA BIO-AMOUNT :MEASURED-ITEM MV5246 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5246 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV5264 :ISA VANISH :CAUSE MV5249 :RAW-TEXT "vanish")
 (:VAR MV5249 :ISA BIO-AMOUNT :MEASURED-ITEM MV5245 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5245 :ISA PROTEIN :PREDICATION MV5251 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5251 :ISA PHOSPHORYLATE :SUBSTRATE MV5245 :RAW-TEXT "phosphorylated"))

___________________
567: "Show me the evidence that kras regulates fzd8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates fzd8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras regulates fzd8."
 (:VAR MV5274 :ISA SHOW :STATEMENT-OR-THEME MV5281 :BENEFICIARY MV5275 :PRESENT "PRESENT")
 (:VAR MV5281 :ISA EVIDENCE :STATEMENT MV5280 :HAS-DETERMINER "THE")
 (:VAR MV5280 :ISA REGULATE :AGENT MV5279 :OBJECT MV5273 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5279 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV5273 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV5275 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
568: "What increases the amount of fzd8?"

                    SOURCE-START
e14   INCREASE      1 "What increases the amount of fzd8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of fzd8?"
 (:VAR MV5285 :ISA INCREASE :AGENT-OR-CAUSE MV5283 :AFFECTED-PROCESS-OR-OBJECT MV5287 :PRESENT
  "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5283 :ISA WHAT)
 (:VAR MV5287 :ISA BIO-AMOUNT :MEASURED-ITEM MV5282 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5282 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
569: "Which kinases are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signaling pathway?"
 (:VAR MV5300 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5292 :VALUE MV5299 :PREP "IN" :PREDICATE
  MV5293)
 (:VAR MV5292 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5299 :ISA KINASE :CONTEXT-OR-IN-PATHWAY MV5290 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "kinases")
 (:VAR MV5290 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5296 :RAW-TEXT
  "signaling pathway")
 (:VAR MV5296 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV5293 :ISA BE :PRESENT "PRESENT"))

___________________
570: "Does STAT3 regulate the c-fos gene in the liver?"

                    SOURCE-START
e23   REGULATE      1 "Does STAT3 regulate the c-fos gene in the liver" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in the liver?"
 (:VAR MV5313 :ISA POLAR-QUESTION :STATEMENT MV5311)
 (:VAR MV5311 :ISA REGULATE :AGENT MV5302 :OBJECT MV5307 :RAW-TEXT "regulate")
 (:VAR MV5302 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5307 :ISA GENE :ORGAN MV5310 :HAS-DETERMINER "THE" :EXPRESSES MV5303 :RAW-TEXT "gene")
 (:VAR MV5310 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV5303 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
571: "what genes are regulated by smad2?"

                    SOURCE-START
e12   REGULATE      1 "what genes are regulated by smad2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by smad2?"
 (:VAR MV5320 :ISA REGULATE :OBJECT MV5316 :AGENT MV5314 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV5316 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5314 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
572: "Which of these are regulated by smad2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by smad2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by smad2?"
 (:VAR MV5329 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV5325 :AGENT MV5322 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5325 :ISA THESE :QUANTIFIER MV5323 :WORD "these") (:VAR MV5323 :ISA WHICH)
 (:VAR MV5322 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME "SMAD2_HUMAN"))

___________________
573: "Which of these also regulate cfos?"

                    SOURCE-START
e12   REGULATE      1 "Which of these also regulate cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these also regulate cfos?"
 (:VAR MV5337 :ISA REGULATE :AGENT-OR-CAUSE MV5334 :OBJECT MV5338 :PRESENT "PRESENT" :ADVERB MV5335
  :RAW-TEXT "regulate")
 (:VAR MV5334 :ISA THESE :QUANTIFIER MV5332 :WORD "these") (:VAR MV5332 :ISA WHICH)
 (:VAR MV5338 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV5335 :ISA ALSO))

___________________
574: "what transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors transcribe SMURF2?"
 (:VAR MV5343 :ISA TRANSCRIBE :AGENT MV5340 :OBJECT MV5341 :PRESENT "PRESENT" :RAW-TEXT
  "transcribe")
 (:VAR MV5340 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factors")
 (:VAR MV5341 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
575: "what transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factor transcribes SMURF2?"
 (:VAR MV5347 :ISA TRANSCRIBE :AGENT MV5344 :OBJECT MV5345 :PRESENT "PRESENT" :RAW-TEXT
  "transcribes")
 (:VAR MV5344 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT "transcription factor")
 (:VAR MV5345 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME "SMUF2_HUMAN"))

___________________
576: "Which KEGG pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which KEGG pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways utilize SRF?"
 (:VAR MV5351 :ISA UTILIZE :PARTICIPANT MV5350 :OBJECT MV5352 :PRESENT "PRESENT" :RAW-TEXT
  "utilize")
 (:VAR MV5350 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5349 :RAW-TEXT "pathways")
 (:VAR MV5349 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV5352 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV5366 :ISA INVOLVE :PARTICIPANT MV5365 :THEME MV5363 :PRESENT "PRESENT")
 (:VAR MV5365 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5363 :ISA BIO-ORGAN :HAS-DETERMINER "THE" :UID "UBERON:0002405"))

___________________
579: "What KEGG pathways involve ERBB2, JUN, and MAPK8?"

                    SOURCE-START
e16   INVOLVE       1 "What KEGG pathways involve ERBB2, JUN, and MAPK8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
 (:VAR MV5373 :ISA INVOLVE :PARTICIPANT MV5372 :THEME MV5376 :PRESENT "PRESENT")
 (:VAR MV5372 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5371 :RAW-TEXT "pathways")
 (:VAR MV5371 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV5376 :ISA COLLECTION :RAW-TEXT "ERBB2, JUN, and MAPK8" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV5368 MV5374 MV5369))
 (:VAR MV5368 :ISA PROTEIN :RAW-TEXT "ERBB2" :UID "UP:P04626" :NAME "ERBB2_HUMAN")
 (:VAR MV5374 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV5369 :ISA PROTEIN :RAW-TEXT "MAPK8" :UID "UP:P45983" :NAME "MK08_HUMAN"))

___________________
580: "What pathways are shared by these genes?"

                    SOURCE-START
e13   SHARE         1 "What pathways are shared by these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are shared by these genes?"
 (:VAR MV5384 :ISA SHARE :OBJECT MV5378 :PARTICIPANT MV5383 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV5378 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5383 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
581: "what genes are regulated by srf?"

                    SOURCE-START
e11   REGULATE      1 "what genes are regulated by srf" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by srf?"
 (:VAR MV5392 :ISA REGULATE :OBJECT MV5387 :AGENT MV5391 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV5387 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5391 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
582: "What are common pathways for these genes?"

                    SOURCE-START
e13   BE            1 "What are common pathways for these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common pathways for these genes?"
 (:VAR MV5395 :ISA BE :SUBJECT MV5394 :PREDICATE MV5397 :PRESENT "PRESENT") (:VAR MV5394 :ISA WHAT)
 (:VAR MV5397 :ISA PATHWAY :PATHWAYCOMPONENT MV5400 :PREDICATION MV5396 :RAW-TEXT "pathways")
 (:VAR MV5400 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes") (:VAR MV5396 :ISA COMMON))

___________________
583: "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e24   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV5414 :ISA SHARE :OBJECT MV5407 :PARTICIPANT MV5412 :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV5407 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5406 :RAW-TEXT "pathways")
 (:VAR MV5406 :ISA IMMUNE) (:VAR MV5412 :ISA GENE :EXPRESSES MV5413 :RAW-TEXT "genes")
 (:VAR MV5413 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV5402 MV5403 MV5404))
 (:VAR MV5402 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5403 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME "SOCS3_HUMAN")
 (:VAR MV5404 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME "CREB5_HUMAN"))

___________________
584: "What MAP kinase phosphatase are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatase are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatase are regulated by ELK1?"
 (:VAR MV5423 :ISA REGULATE :OBJECT MV5419 :AGENT MV5417 :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV5419 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV5416 :RAW-TEXT "phosphatase")
 (:VAR MV5416 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME "mitogen activated protein kinase"
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
 (:VAR MV5417 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
585: "What reactome pathways involve immune system?"

                    SOURCE-START
e9    INVOLVE       1 "What reactome pathways involve immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune system?"
 (:VAR MV5429 :ISA INVOLVE :PARTICIPANT MV5428 :THEME MV5425 :PRESENT "PRESENT")
 (:VAR MV5428 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5427 :RAW-TEXT "pathways")
 (:VAR MV5427 :ISA BIO-ENTITY :NAME "reactome") (:VAR MV5425 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
586: "Is stat3 a kinase?"

                    SOURCE-START
e9    BE            1 "Is stat3 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 a kinase?"
 (:VAR MV5434 :ISA POLAR-QUESTION :STATEMENT
  (#<be 88017>
   (PREDICATE (#<kinase 88016> (HAS-DETERMINER (#<a 110> (WORD "a"))) (RAW-TEXT "kinase"))))))

___________________
587: "Is STAT3 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is STAT3 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor?"
 (:VAR MV5439 :ISA POLAR-QUESTION :STATEMENT
  (#<be 90082>
   (PREDICATE
    (#<transcription-factor 88028> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
588: "Which of these are protein kinases?"

                    SOURCE-START
e11   BE            1 "Which of these are protein kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are protein kinases?"
 (:VAR MV5443 :ISA BE :SUBJECT MV5442 :PREDICATE MV5445 :PRESENT "PRESENT")
 (:VAR MV5442 :ISA THESE :QUANTIFIER MV5440 :WORD "these") (:VAR MV5440 :ISA WHICH)
 (:VAR MV5445 :ISA KINASE :ENZYME MV5444 :RAW-TEXT "kinases")
 (:VAR MV5444 :ISA PROTEIN :RAW-TEXT "protein"))

___________________
589: "Which of these are tyrosine kinases?"

                    SOURCE-START
e11   BE            1 "Which of these are tyrosine kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinases?"
 (:VAR MV5450 :ISA BE :SUBJECT MV5449 :PREDICATE MV5452 :PRESENT "PRESENT")
 (:VAR MV5449 :ISA THESE :QUANTIFIER MV5447 :WORD "these") (:VAR MV5447 :ISA WHICH)
 (:VAR MV5452 :ISA KINASE :AMINO-ACID MV5451 :RAW-TEXT "kinases")
 (:VAR MV5451 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

___________________
590: "Which of these are serine/threonine kinases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine kinases?"
 (:VAR MV5457 :ISA BE :SUBJECT MV5456 :PREDICATE MV5460 :PRESENT "PRESENT")
 (:VAR MV5456 :ISA THESE :QUANTIFIER MV5454 :WORD "these") (:VAR MV5454 :ISA WHICH)
 (:VAR MV5460 :ISA KINASE :AMINO-ACID MV5461 :RAW-TEXT "kinases")
 (:VAR MV5461 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID :ITEMS (MV5458 MV5459))
 (:VAR MV5458 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5459 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
591: "Which of these are phosphatases?"

                    SOURCE-START
e9    BE            1 "Which of these are phosphatases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are phosphatases?"
 (:VAR MV5466 :ISA BE :SUBJECT MV5465 :PREDICATE MV5467 :PRESENT "PRESENT")
 (:VAR MV5465 :ISA THESE :QUANTIFIER MV5463 :WORD "these") (:VAR MV5463 :ISA WHICH)
 (:VAR MV5467 :ISA PHOSPHATASE :RAW-TEXT "phosphatases"))

___________________
592: "Which of these are proteases?"

                    SOURCE-START
e9    BE            1 "Which of these are proteases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are proteases?"
 (:VAR MV5472 :ISA BE :SUBJECT MV5471 :PREDICATE MV5473 :PRESENT "PRESENT")
 (:VAR MV5471 :ISA THESE :QUANTIFIER MV5469 :WORD "these") (:VAR MV5469 :ISA WHICH)
 (:VAR MV5473 :ISA PROTEIN :RAW-TEXT "proteases" :UID "UP:P63127" :NAME "VPK9_HUMAN"))

___________________
593: "Which of these are receptors?"

                    SOURCE-START
e9    BE            1 "Which of these are receptors" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptors?"
 (:VAR MV5478 :ISA BE :SUBJECT MV5477 :PREDICATE MV5479 :PRESENT "PRESENT")
 (:VAR MV5477 :ISA THESE :QUANTIFIER MV5475 :WORD "these") (:VAR MV5475 :ISA WHICH)
 (:VAR MV5479 :ISA RECEPTOR :RAW-TEXT "receptors"))

___________________
594: "Which of these are tyrosine kinase receptors?"

                    SOURCE-START
e13   BE            1 "Which of these are tyrosine kinase receptors" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinase receptors?"
 (:VAR MV5484 :ISA BE :SUBJECT MV5483 :PREDICATE MV5487 :PRESENT "PRESENT")
 (:VAR MV5483 :ISA THESE :QUANTIFIER MV5481 :WORD "these") (:VAR MV5481 :ISA WHICH)
 (:VAR MV5487 :ISA RECEPTOR :MODIFIER MV5485 :MODIFIER MV5486 :RAW-TEXT "receptors")
 (:VAR MV5485 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine")
 (:VAR MV5486 :ISA KINASE :RAW-TEXT "kinase"))

___________________
595: "Which of these are histone demethylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone demethylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone demethylases?"
 (:VAR MV5493 :ISA BE :SUBJECT MV5492 :PREDICATE MV5489 :PRESENT "PRESENT")
 (:VAR MV5492 :ISA THESE :QUANTIFIER MV5490 :WORD "these") (:VAR MV5490 :ISA WHICH)
 (:VAR MV5489 :ISA PROTEIN-FAMILY :RAW-TEXT "histone demethylases" :NAME "histone demethylase" :UID
  "GO:0032452"))

___________________
596: "Which of these are histone methylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methylases?"
 (:VAR MV5499 :ISA BE :SUBJECT MV5498 :PREDICATE MV5495 :PRESENT "PRESENT")
 (:VAR MV5498 :ISA THESE :QUANTIFIER MV5496 :WORD "these") (:VAR MV5496 :ISA WHICH)
 (:VAR MV5495 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methylases" :NAME "histone methyltransferase"
  :UID "GO:0042054"))

___________________
597: "Which of these are histone methyltransferases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methyltransferases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methyltransferases?"
 (:VAR MV5505 :ISA BE :SUBJECT MV5504 :PREDICATE MV5501 :PRESENT "PRESENT")
 (:VAR MV5504 :ISA THESE :QUANTIFIER MV5502 :WORD "these") (:VAR MV5502 :ISA WHICH)
 (:VAR MV5501 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methyltransferases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
598: "Which of these are demethylases?"

                    SOURCE-START
e9    BE            1 "Which of these are demethylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are demethylases?"
 (:VAR MV5510 :ISA BE :SUBJECT MV5509 :PREDICATE MV5511 :PRESENT "PRESENT")
 (:VAR MV5509 :ISA THESE :QUANTIFIER MV5507 :WORD "these") (:VAR MV5507 :ISA WHICH)
 (:VAR MV5511 :ISA PROTEIN-FAMILY :RAW-TEXT "demethylases" :NAME "demethylase" :UID "GO:0032451"))

___________________
599: "Which of these are methylases?"

                    SOURCE-START
e9    BE            1 "Which of these are methylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methylases?"
 (:VAR MV5516 :ISA BE :SUBJECT MV5515 :PREDICATE MV5517 :PRESENT "PRESENT")
 (:VAR MV5515 :ISA THESE :QUANTIFIER MV5513 :WORD "these") (:VAR MV5513 :ISA WHICH)
 (:VAR MV5517 :ISA PROTEIN-FAMILY :RAW-TEXT "methylases" :NAME "methyltransferase" :UID
  "GO:0008168"))

___________________
600: "Which of these are methyltransferases?"

                    SOURCE-START
e9    BE            1 "Which of these are methyltransferases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methyltransferases?"
 (:VAR MV5522 :ISA BE :SUBJECT MV5521 :PREDICATE MV5523 :PRESENT "PRESENT")
 (:VAR MV5521 :ISA THESE :QUANTIFIER MV5519 :WORD "these") (:VAR MV5519 :ISA WHICH)
 (:VAR MV5523 :ISA PROTEIN-FAMILY :RAW-TEXT "methyltransferases" :NAME "methyltransferase" :UID
  "GO:0008168"))

___________________
601: "Which of these are steroid receptors?"

                    SOURCE-START
e11   BE            1 "Which of these are steroid receptors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are steroid receptors?"
 (:VAR MV5528 :ISA BE :SUBJECT MV5527 :PREDICATE MV5530 :PRESENT "PRESENT")
 (:VAR MV5527 :ISA THESE :QUANTIFIER MV5525 :WORD "these") (:VAR MV5525 :ISA WHICH)
 (:VAR MV5530 :ISA RECEPTOR :MODIFIER MV5529 :RAW-TEXT "receptors")
 (:VAR MV5529 :ISA MOLECULE :RAW-TEXT "steroid" :NAME "steroid" :UID "CHEBI:35341"))

___________________
602: "Which of these are receptor tyrosine kinases?"

                    SOURCE-START
e10   BE            1 "Which of these are receptor tyrosine kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptor tyrosine kinases?"
 (:VAR MV5536 :ISA BE :SUBJECT MV5535 :PREDICATE MV5532 :PRESENT "PRESENT")
 (:VAR MV5535 :ISA THESE :QUANTIFIER MV5533 :WORD "these") (:VAR MV5533 :ISA WHICH)
 (:VAR MV5532 :ISA PROTEIN-FAMILY :RAW-TEXT "receptor tyrosine kinases" :NAME
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
 (:VAR MV5542 :ISA BE :SUBJECT MV5541 :PREDICATE MV5538 :PRESENT "PRESENT")
 (:VAR MV5541 :ISA THESE :QUANTIFIER MV5539 :WORD "these") (:VAR MV5539 :ISA WHICH)
 (:VAR MV5538 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
604: "Which of these are DNA binding proteins?"

                    SOURCE-START
e12   BE            1 "Which of these are DNA binding proteins" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are DNA binding proteins?"
 (:VAR MV5548 :ISA BE :SUBJECT MV5547 :PREDICATE MV5549 :PRESENT "PRESENT")
 (:VAR MV5547 :ISA THESE :QUANTIFIER MV5545 :WORD "these") (:VAR MV5545 :ISA WHICH)
 (:VAR MV5549 :ISA PROTEIN :MODIFIER MV5544 :RAW-TEXT "proteins")
 (:VAR MV5544 :ISA DNA-BINDING :RAW-TEXT "DNA binding"))

___________________
605: "Which of these are serine/threonine phosphatases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine phosphatases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine phosphatases?"
 (:VAR MV5554 :ISA BE :SUBJECT MV5553 :PREDICATE MV5557 :PRESENT "PRESENT")
 (:VAR MV5553 :ISA THESE :QUANTIFIER MV5551 :WORD "these") (:VAR MV5551 :ISA WHICH)
 (:VAR MV5557 :ISA PHOSPHATASE :MODIFIER MV5558 :RAW-TEXT "phosphatases")
 (:VAR MV5558 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID :ITEMS (MV5555 MV5556))
 (:VAR MV5555 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5556 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
606: "Which of these are tyrosine phosphatases?"

                    SOURCE-START
e11   BE            1 "Which of these are tyrosine phosphatases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine phosphatases?"
 (:VAR MV5563 :ISA BE :SUBJECT MV5562 :PREDICATE MV5565 :PRESENT "PRESENT")
 (:VAR MV5562 :ISA THESE :QUANTIFIER MV5560 :WORD "these") (:VAR MV5560 :ISA WHICH)
 (:VAR MV5565 :ISA PHOSPHATASE :MODIFIER MV5564 :RAW-TEXT "phosphatases")
 (:VAR MV5564 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

___________________
607: "What does MEK phosphorylate?"

                    SOURCE-START
e5    PHOSPHORYLATE 1 "What does MEK phosphorylate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does MEK phosphorylate?"
 (:VAR MV5570 :ISA PHOSPHORYLATE :AMINO-ACID MV5567 :AGENT MV5569 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylate")
 (:VAR MV5567 :ISA WHAT)
 (:VAR MV5569 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
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
 (:VAR MV5579 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5573 :ORGAN MV5578 :PRESENT "PRESENT" :ADVERB
  MV5575 :RAW-TEXT "expressed")
 (:VAR MV5573 :ISA THESE :QUANTIFIER MV5571 :WORD "these") (:VAR MV5571 :ISA WHICH)
 (:VAR MV5578 :ISA LIVER) (:VAR MV5575 :ISA EXCLUSIVELY))

___________________
609: "What regulates frizzled8?"

                    SOURCE-START
e5    REGULATE      1 "What regulates frizzled8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates frizzled8?"
 (:VAR MV5584 :ISA REGULATE :AGENT-OR-CAUSE MV5583 :OBJECT MV5582 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV5583 :ISA WHAT)
 (:VAR MV5582 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
610: "What increases the amount of myc?"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of myc?"
 (:VAR MV5587 :ISA INCREASE :AGENT-OR-CAUSE MV5585 :AFFECTED-PROCESS-OR-OBJECT MV5589 :PRESENT
  "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5585 :ISA WHAT)
 (:VAR MV5589 :ISA BIO-AMOUNT :MEASURED-ITEM MV5591 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5591 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
611: "What upregulates myc?"

                    SOURCE-START
e4    UPREGULATE    1 "What upregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates myc?"
 (:VAR MV5594 :ISA UPREGULATE :AGENT-OR-CAUSE MV5593 :OBJECT MV5595 :PRESENT "PRESENT" :RAW-TEXT
  "upregulates")
 (:VAR MV5593 :ISA WHAT)
 (:VAR MV5595 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
612: "What downregulates myc?"

                    SOURCE-START
e4    DOWNREGULATE  1 "What downregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates myc?"
 (:VAR MV5597 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV5596 :OBJECT MV5598 :PRESENT "PRESENT" :RAW-TEXT
  "downregulates")
 (:VAR MV5596 :ISA WHAT)
 (:VAR MV5598 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
613: "What decreases the amount of GFAP?"

                    SOURCE-START
e12   DECREASE      1 "What decreases the amount of GFAP" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What decreases the amount of GFAP?"
 (:VAR MV5600 :ISA DECREASE :AGENT-OR-CAUSE MV5599 :AFFECTED-PROCESS-OR-OBJECT MV5602 :PRESENT
  "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5599 :ISA WHAT)
 (:VAR MV5602 :ISA BIO-AMOUNT :MEASURED-ITEM MV5604 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5604 :ISA PROTEIN :RAW-TEXT "GFAP" :UID "UP:P14136" :NAME "GFAP_HUMAN"))

___________________
614: "What regulates GLUL?"

                    SOURCE-START
e4    REGULATE      1 "What regulates GLUL" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL?"
 (:VAR MV5607 :ISA REGULATE :AGENT-OR-CAUSE MV5606 :OBJECT MV5608 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV5606 :ISA WHAT)
 (:VAR MV5608 :ISA PROTEIN :RAW-TEXT "GLUL" :UID "UP:P15104" :NAME "GLNA_HUMAN"))

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
 (:VAR MV5627 :ISA REGULATE :AGENT MV5626 :OBJECT MV5630 :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5626 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5630 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5629 :RAW-TEXT "gene")
 (:VAR MV5629 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
618: "Which kinases negatively regulate the cfos gene?"

                    SOURCE-START
e12   DOWNREGULATE  1 "Which kinases negatively regulate the cfos gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate the cfos gene?"
 (:VAR MV5631 :ISA DOWNREGULATE :AGENT MV5633 :OBJECT MV5636 :PRESENT "PRESENT" :RAW-TEXT
  "negatively regulate")
 (:VAR MV5633 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5636 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5635 :RAW-TEXT "gene")
 (:VAR MV5635 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
619: "What are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "What are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of the cfos gene?"
 (:VAR MV5639 :ISA BE :SUBJECT MV5638 :PREDICATE MV5637 :PRESENT "PRESENT") (:VAR MV5638 :ISA WHAT)
 (:VAR MV5637 :ISA POSITIVE-REGULATOR :THEME MV5643 :RAW-TEXT "positive regulators")
 (:VAR MV5643 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5642 :RAW-TEXT "gene")
 (:VAR MV5642 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
620: "What transcribes ZEB1?"

                    SOURCE-START
e5    TRANSCRIBE    1 "What transcribes ZEB1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcribes ZEB1?"
 (:VAR MV5647 :ISA TRANSCRIBE :AGENT-OR-CAUSE MV5646 :OBJECT MV5645 :PRESENT "PRESENT" :RAW-TEXT
  "transcribes")
 (:VAR MV5646 :ISA WHAT)
 (:VAR MV5645 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME "ZEB1_HUMAN"))

___________________
621: "Show me the evidence that IL6 increases the amount of SOCS1."

                    SOURCE-START
e27   SHOW          1 "Show me the evidence that IL6 increases the amount of SOCS1" 14
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that IL6 increases the amount of SOCS1."
 (:VAR MV5650 :ISA SHOW :STATEMENT-OR-THEME MV5661 :BENEFICIARY MV5651 :PRESENT "PRESENT")
 (:VAR MV5661 :ISA EVIDENCE :STATEMENT MV5656 :HAS-DETERMINER "THE")
 (:VAR MV5656 :ISA INCREASE :AGENT MV5648 :AFFECTED-PROCESS-OR-OBJECT MV5658 :PRESENT "PRESENT"
  :RAW-TEXT "increases")
 (:VAR MV5648 :ISA PROTEIN :RAW-TEXT "IL6" :UID "UP:P05231" :NAME "IL6_HUMAN")
 (:VAR MV5658 :ISA BIO-AMOUNT :MEASURED-ITEM MV5649 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5649 :ISA PROTEIN :RAW-TEXT "SOCS1" :UID "UP:O15524" :NAME "SOCS1_HUMAN")
 (:VAR MV5651 :ISA INTERLOCUTOR :NAME "speaker"))

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
 (:VAR MV5676 :ISA BE :SUBJECT MV5675 :PREDICATE MV5682 :PRESENT "PRESENT") (:VAR MV5675 :ISA WHAT)
 (:VAR MV5682 :ISA EVIDENCE :STATEMENT MV5681 :HAS-DETERMINER "THE")
 (:VAR MV5681 :ISA REGULATE :AGENT MV5680 :OBJECT MV5674 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5680 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME "RASK_HUMAN")
 (:VAR MV5674 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
624: "What is the evidence that SRF binds the cfos gene?"

                    SOURCE-START
e21   BE            1 "What is the evidence that SRF binds the cfos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that SRF binds the cfos gene?"
 (:VAR MV5684 :ISA BE :SUBJECT MV5683 :PREDICATE MV5693 :PRESENT "PRESENT") (:VAR MV5683 :ISA WHAT)
 (:VAR MV5693 :ISA EVIDENCE :STATEMENT MV5689 :HAS-DETERMINER "THE")
 (:VAR MV5689 :ISA BINDING :BINDER MV5688 :DIRECT-BINDEE MV5692 :PRESENT "PRESENT" :RAW-TEXT
  "binds")
 (:VAR MV5688 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5692 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5691 :RAW-TEXT "gene")
 (:VAR MV5691 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
625: "what genes are exclusively expressed in liver?"

                    SOURCE-START
e13   GENE-TRANSCRIPT-EXPRESS 1 "what genes are exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are exclusively expressed in liver?"
 (:VAR MV5701 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5695 :ORGAN MV5700 :PRESENT "PRESENT" :ADVERB
  MV5697 :RAW-TEXT "expressed")
 (:VAR MV5695 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes") (:VAR MV5700 :ISA LIVER)
 (:VAR MV5697 :ISA EXCLUSIVELY))

___________________
626: "Is stat3 expressed in liver?"

                    SOURCE-START
e9    GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in liver" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in liver?"
 (:VAR MV5709 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV5707 :PAST "PAST" :RAW-TEXT "expressed")
 (:VAR MV5707 :ISA LIVER))

___________________
627: "Is stat3 exclusively expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 exclusively expressed in liver?" (:VAR MV5718 :ISA POLAR-QUESTION :STATEMENT MV5716)
 (:VAR MV5716 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5710 :ORGAN MV5715 :ADVERB MV5712 :RAW-TEXT
  "expressed")
 (:VAR MV5710 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV5715 :ISA LIVER) (:VAR MV5712 :ISA EXCLUSIVELY))

___________________
628: "Let's build a model."

                    SOURCE-START
e8    EXPLICIT-SUGGESTION 1 "Let's build a model" 7
                    PERIOD
                    END-OF-SOURCE
("Let's build a model."
 (:VAR MV5723 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV5720 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV5720 :ISA BUILD :ARTIFACT MV5722 :PRESENT "PRESENT")
 (:VAR MV5722 :ISA MODEL :HAS-DETERMINER "A"))

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
 (:VAR MV5738 :ISA AFFECT :MANNER MV5736 :AGENT MV5734 :OBJECT MV5735 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV5736 :ISA HOW)
 (:VAR MV5734 :ISA PROTEIN :RAW-TEXT "MAP4K2" :UID "UP:Q12851" :NAME "M4K2_HUMAN")
 (:VAR MV5735 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
631: "How does ERK affect CXCL8?"

                    SOURCE-START
e8    AFFECT        1 "How does ERK affect CXCL8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does ERK affect CXCL8?"
 (:VAR MV5743 :ISA AFFECT :MANNER MV5740 :AGENT MV5742 :OBJECT MV5739 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV5740 :ISA HOW)
 (:VAR MV5742 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5739 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
632: "What are the common upstream regulators of CXCL8 and CXCL10?"

                    SOURCE-START
e22   BE            1 "What are the common upstream regulators of CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of CXCL8 and CXCL10?"
 (:VAR MV5747 :ISA BE :SUBJECT MV5746 :PREDICATE MV5752 :PRESENT "PRESENT") (:VAR MV5746 :ISA WHAT)
 (:VAR MV5752 :ISA REGULATOR :THEME MV5755 :HAS-DETERMINER "THE" :PREDICATION MV5749 :CONTEXT
  MV5750 :RAW-TEXT "regulators")
 (:VAR MV5755 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV5744 MV5745))
 (:VAR MV5744 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5745 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN")
 (:VAR MV5749 :ISA COMMON) (:VAR MV5750 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
633: "What are the paths between MAP3K7 and CXCL8?"

                    SOURCE-START
e16   BE            1 "What are the paths between MAP3K7 and CXCL8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between MAP3K7 and CXCL8?"
 (:VAR MV5760 :ISA BE :SUBJECT MV5759 :PREDICATE MV5762 :PRESENT "PRESENT") (:VAR MV5759 :ISA WHAT)
 (:VAR MV5762 :ISA PATH :ENDPOINTS MV5765 :HAS-DETERMINER "THE")
 (:VAR MV5765 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV5757 MV5758))
 (:VAR MV5757 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV5758 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
634: "Does MAP3K7 affect IKK?"

                    SOURCE-START
e9    AFFECT        1 "Does MAP3K7 affect IKK" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP3K7 affect IKK?" (:VAR MV5772 :ISA POLAR-QUESTION :STATEMENT MV5771)
 (:VAR MV5771 :ISA AFFECT :AGENT MV5767 :OBJECT MV5770 :RAW-TEXT "affect")
 (:VAR MV5767 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV5770 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV5774 :ISA REGULATE :AGENT MV5773 :OBJECT MV5775 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5773 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV5775 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV5777 :ISA UPREGULATE :AGENT MV5776 :OBJECT MV5778 :PRESENT "PRESENT" :RAW-TEXT
  "positively regulates")
 (:VAR MV5776 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV5778 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV5779 :ISA UPREGULATE :AGENT MV5781 :OBJECT MV5780 :PRESENT "PRESENT" :RAW-TEXT
  "positively regulates")
 (:VAR MV5781 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5780 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
638: "Does NFkappaB regulate the CXCL8 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does NFkappaB regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate the CXCL8 gene?" (:VAR MV5791 :ISA POLAR-QUESTION :STATEMENT MV5790)
 (:VAR MV5790 :ISA REGULATE :AGENT MV5785 :OBJECT MV5789 :RAW-TEXT "regulate")
 (:VAR MV5785 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5789 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5783 :RAW-TEXT "gene")
 (:VAR MV5783 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
639: "Show me the evidence that NFkappaB regulates CXCL8"

                    SOURCE-START
e18   SHOW          1 "Show me the evidence that NFkappaB regulates CXCL8" 10
                    END-OF-SOURCE
("Show me the evidence that NFkappaB regulates CXCL8"
 (:VAR MV5793 :ISA SHOW :STATEMENT-OR-THEME MV5801 :BENEFICIARY MV5794 :PRESENT "PRESENT")
 (:VAR MV5801 :ISA EVIDENCE :STATEMENT MV5800 :HAS-DETERMINER "THE")
 (:VAR MV5800 :ISA REGULATE :AGENT MV5798 :OBJECT MV5792 :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5798 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5792 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5794 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
640: "Does ERK regulate the CXCL8 gene?"

                    SOURCE-START
e14   REGULATE      1 "Does ERK regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the CXCL8 gene?" (:VAR MV5809 :ISA POLAR-QUESTION :STATEMENT MV5808)
 (:VAR MV5808 :ISA REGULATE :AGENT MV5804 :OBJECT MV5807 :RAW-TEXT "regulate")
 (:VAR MV5804 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5807 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5802 :RAW-TEXT "gene")
 (:VAR MV5802 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
641: "ERK decreases the amount of CXCL8"

                    SOURCE-START
e13   DECREASE      1 "ERK decreases the amount of CXCL8" 8
                    END-OF-SOURCE
("ERK decreases the amount of CXCL8"
 (:VAR MV5812 :ISA DECREASE :AGENT MV5811 :AFFECTED-PROCESS-OR-OBJECT MV5814 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV5811 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5814 :ISA BIO-AMOUNT :MEASURED-ITEM MV5810 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5810 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
642: "Does TNG regulate ERK?"

                    SOURCE-START
e8    REGULATE      1 "Does TNG regulate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNG regulate ERK?" (:VAR MV5822 :ISA POLAR-QUESTION :STATEMENT MV5821)
 (:VAR MV5821 :ISA REGULATE :AGENT MV5820 :OBJECT MV5819 :RAW-TEXT "regulate")
 (:VAR MV5820 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV5819 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
("Does TNF regulate the ERK gene?" (:VAR MV5830 :ISA POLAR-QUESTION :STATEMENT MV5829)
 (:VAR MV5829 :ISA REGULATE :AGENT MV5824 :OBJECT MV5828 :RAW-TEXT "regulate")
 (:VAR MV5824 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5828 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5827 :RAW-TEXT "gene")
 (:VAR MV5827 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV5832 :ISA BE :SUBJECT MV5831 :PREDICATE MV5834 :PRESENT "PRESENT") (:VAR MV5831 :ISA WHAT)
 (:VAR MV5834 :ISA PATHWAY :PATHWAYCOMPONENT MV5839 :HAS-DETERMINER "THE" :RAW-TEXT "pathways")
 (:VAR MV5839 :ISA COLLECTION :RAW-TEXT "TNG and ERK" :TYPE PROTEIN-FAMILY :NUMBER 2 :ITEMS
  (MV5836 MV5838))
 (:VAR MV5836 :ISA BIO-ENTITY :NAME "TNG")
 (:VAR MV5838 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV5842 :ISA BE :SUBJECT MV5841 :PREDICATE MV5844 :PRESENT "PRESENT") (:VAR MV5841 :ISA WHAT)
 (:VAR MV5844 :ISA PATHWAY :PATHWAYCOMPONENT MV5849 :HAS-DETERMINER "THE" :RAW-TEXT "pathways")
 (:VAR MV5849 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV5846 MV5848))
 (:VAR MV5846 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5848 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
("Does NFkappaB regulate ERK?" (:VAR MV5857 :ISA POLAR-QUESTION :STATEMENT MV5856)
 (:VAR MV5856 :ISA REGULATE :AGENT MV5852 :OBJECT MV5855 :RAW-TEXT "regulate")
 (:VAR MV5852 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5855 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
("Does NFkappaB regulate the ERK gene?" (:VAR MV5866 :ISA POLAR-QUESTION :STATEMENT MV5865)
 (:VAR MV5865 :ISA REGULATE :AGENT MV5859 :OBJECT MV5864 :RAW-TEXT "regulate")
 (:VAR MV5859 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5864 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5863 :RAW-TEXT "gene")
 (:VAR MV5863 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV5879 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5868 :VALUE MV5878 :PREP "BETWEEN" :PREDICATE
  MV5869)
 (:VAR MV5868 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5878 :ISA PATHWAY :PATHWAYCOMPONENT MV5875 :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5875 :ISA COLLECTION :RAW-TEXT "NFkappaB and ERK" :TYPE PROTEIN-FAMILY :NUMBER 2 :ITEMS
  (MV5872 MV5874))
 (:VAR MV5872 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5874 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5869 :ISA EXIST :PRESENT "PRESENT"))

___________________
649: "How does NFkappaB affect ERK?"

                    SOURCE-START
e8    AFFECT        1 "How does NFkappaB affect ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does NFkappaB affect ERK?"
 (:VAR MV5885 :ISA AFFECT :MANNER MV5881 :AGENT MV5883 :OBJECT MV5886 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV5881 :ISA HOW)
 (:VAR MV5883 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5886 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV5888 :ISA BIO-ACTIVATE :AGENT MV5887 :OBJECT MV5889 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV5887 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV5889 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV5891 :ISA BIO-ACTIVATE :AGENT MV5890 :OBJECT MV5892 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV5890 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199")
 (:VAR MV5892 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN"))

___________________
652: "What are the paths between TNF and ERK?"

                    SOURCE-START
e14   BE            1 "What are the paths between TNF and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and ERK?"
 (:VAR MV5894 :ISA BE :SUBJECT MV5893 :PREDICATE MV5896 :PRESENT "PRESENT") (:VAR MV5893 :ISA WHAT)
 (:VAR MV5896 :ISA PATH :ENDPOINTS MV5901 :HAS-DETERMINER "THE")
 (:VAR MV5901 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV5898 MV5900))
 (:VAR MV5898 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5900 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
("Does TNF regulate ERK?" (:VAR MV5908 :ISA POLAR-QUESTION :STATEMENT MV5907)
 (:VAR MV5907 :ISA REGULATE :AGENT MV5904 :OBJECT MV5906 :RAW-TEXT "regulate")
 (:VAR MV5904 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5906 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV5913 :ISA AFFECT :MANNER MV5911 :AGENT MV5909 :OBJECT MV5910 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV5911 :ISA HOW)
 (:VAR MV5909 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV5910 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
655: "TNF activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "TNF activates ERK" 4
                    END-OF-SOURCE
("TNF activates ERK"
 (:VAR MV5915 :ISA BIO-ACTIVATE :AGENT MV5914 :OBJECT MV5916 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV5914 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5916 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV5920 :ISA DECREASE :AGENT MV5919 :AFFECTED-PROCESS-OR-OBJECT MV5922 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV5919 :ISA PROTEIN-FAMILY :PREDICATION MV5918 :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5918 :ISA ACTIVE)
 (:VAR MV5922 :ISA BIO-AMOUNT :MEASURED-ITEM MV5917 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5917 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
657: "What are the common upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e19   BE            1 "What are the common upstreams of CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of CXCL8 and CXCL10?"
 (:VAR MV5928 :ISA BE :SUBJECT MV5927 :PREDICATE MV5931 :PRESENT "PRESENT") (:VAR MV5927 :ISA WHAT)
 (:VAR MV5931 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV5934 :HAS-DETERMINER "THE" :PREDICATION
  MV5930 :RAW-TEXT "upstreams")
 (:VAR MV5934 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV5925 MV5926))
 (:VAR MV5925 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5926 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN")
 (:VAR MV5930 :ISA COMMON))

___________________
658: "How does CXCL8 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does CXCL8 affect CXCL8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does CXCL8 affect CXCL8?"
 (:VAR MV5940 :ISA AFFECT :MANNER MV5938 :AGENT MV5936 :OBJECT MV5937 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV5938 :ISA HOW)
 (:VAR MV5936 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5937 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
659: "Does CXCL8 regulate CXCL10?"

                    SOURCE-START
e10   REGULATE      1 "Does CXCL8 regulate CXCL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate CXCL10?" (:VAR MV5946 :ISA POLAR-QUESTION :STATEMENT MV5945)
 (:VAR MV5945 :ISA REGULATE :AGENT MV5941 :OBJECT MV5942 :RAW-TEXT "regulate")
 (:VAR MV5941 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5942 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
660: "Does CXCL8 regulate the CXCL10 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does CXCL8 regulate the CXCL10 gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate the CXCL10 gene?" (:VAR MV5954 :ISA POLAR-QUESTION :STATEMENT MV5953)
 (:VAR MV5953 :ISA REGULATE :AGENT MV5947 :OBJECT MV5952 :RAW-TEXT "regulate")
 (:VAR MV5947 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5952 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5948 :RAW-TEXT "gene")
 (:VAR MV5948 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
661: "How does MAP3k7 affect CXCL10?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP3k7 affect CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP3k7 affect CXCL10?"
 (:VAR MV5959 :ISA AFFECT :MANNER MV5957 :AGENT MV5955 :OBJECT MV5956 :PRESENT "PRESENT" :RAW-TEXT
  "affect")
 (:VAR MV5957 :ISA HOW)
 (:VAR MV5955 :ISA PROTEIN :RAW-TEXT "MAP3k7" :UID "UP:O43318" :NAME "M3K7_HUMAN")
 (:VAR MV5956 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
662: "What are the paths between TNF and CXCL10?"

                    SOURCE-START
e15   BE            1 "What are the paths between TNF and CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and CXCL10?"
 (:VAR MV5962 :ISA BE :SUBJECT MV5961 :PREDICATE MV5964 :PRESENT "PRESENT") (:VAR MV5961 :ISA WHAT)
 (:VAR MV5964 :ISA PATH :ENDPOINTS MV5968 :HAS-DETERMINER "THE")
 (:VAR MV5968 :ISA COLLECTION :RAW-TEXT "TNF and CXCL10" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV5966 MV5960))
 (:VAR MV5966 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5960 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
663: "Does ERK regulate the expression of CXCL10?"

                    SOURCE-START
e17   REGULATE      1 "Does ERK regulate the expression of CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the expression of CXCL10?" (:VAR MV5979 :ISA POLAR-QUESTION :STATEMENT MV5977)
 (:VAR MV5977 :ISA REGULATE :AGENT MV5972 :AFFECTED-PROCESS MV5975 :RAW-TEXT "regulate")
 (:VAR MV5972 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5975 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5970 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV5970 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
664: "active ERK decreases the expression of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the expression of CXCL10" 9
                    END-OF-SOURCE
("active ERK decreases the expression of CXCL10"
 (:VAR MV5983 :ISA DECREASE :AGENT MV5982 :AFFECTED-PROCESS MV5985 :PRESENT "PRESENT" :RAW-TEXT
  "decreases")
 (:VAR MV5982 :ISA PROTEIN-FAMILY :PREDICATION MV5981 :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5981 :ISA ACTIVE)
 (:VAR MV5985 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5980 :HAS-DETERMINER "THE" :RAW-TEXT
  "expression")
 (:VAR MV5980 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
665: "active ERK decreases the amount of CXCL8"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the amount of CXCL8" 9
                    END-OF-SOURCE
("active ERK decreases the amount of CXCL8"
 (:VAR MV5991 :ISA DECREASE :AGENT MV5990 :AFFECTED-PROCESS-OR-OBJECT MV5993 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV5990 :ISA PROTEIN-FAMILY :PREDICATION MV5989 :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5989 :ISA ACTIVE)
 (:VAR MV5993 :ISA BIO-AMOUNT :MEASURED-ITEM MV5988 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5988 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN"))

___________________
666: "Active ERK decreases the amount of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "Active ERK decreases the amount of CXCL10" 9
                    END-OF-SOURCE
("Active ERK decreases the amount of CXCL10"
 (:VAR MV5999 :ISA DECREASE :AGENT MV5998 :AFFECTED-PROCESS-OR-OBJECT MV6001 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV5998 :ISA PROTEIN-FAMILY :PREDICATION MV5997 :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5997 :ISA ACTIVE)
 (:VAR MV6001 :ISA BIO-AMOUNT :MEASURED-ITEM MV5996 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV5996 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME "CXL10_HUMAN"))

___________________
667: "NG25 inhibits the activity of MAP3K7"

                    SOURCE-START
e14   INHIBIT       1 "NG25 inhibits the activity of MAP3K7" 11
                    END-OF-SOURCE
("NG25 inhibits the activity of MAP3K7"
 (:VAR MV6006 :ISA INHIBIT :AGENT MV6004 :AFFECTED-PROCESS MV6008 :PRESENT "PRESENT" :RAW-TEXT
  "inhibits")
 (:VAR MV6004 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV6008 :ISA BIO-ACTIVITY :PARTICIPANT MV6005 :HAS-DETERMINER "THE" :RAW-TEXT "activity")
 (:VAR MV6005 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME "M3K7_HUMAN"))

___________________
668: "Does NG25 decrease the CXCL8 in the model?"

                    SOURCE-START
e22   DECREASE      1 "Does NG25 decrease the CXCL8 in the model" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease the CXCL8 in the model?" (:VAR MV6022 :ISA POLAR-QUESTION :STATEMENT MV6020)
 (:VAR MV6020 :ISA DECREASE :AGENT MV6011 :OBJECT MV6012 :RAW-TEXT "decrease")
 (:VAR MV6011 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV6012 :ISA PROTEIN :INFO-CONTEXT MV6019 :HAS-DETERMINER "THE" :RAW-TEXT "CXCL8" :UID
  "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV6019 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
669: "Does NG25 decrease CXCL10 in the model?"

                    SOURCE-START
e19   DECREASE      1 "Does NG25 decrease CXCL10 in the model" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease CXCL10 in the model?" (:VAR MV6033 :ISA POLAR-QUESTION :STATEMENT MV6031)
 (:VAR MV6031 :ISA DECREASE :AGENT MV6023 :OBJECT MV6024 :RAW-TEXT "decrease")
 (:VAR MV6023 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV6024 :ISA PROTEIN :INFO-CONTEXT MV6030 :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV6030 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
670: "TNF activates NFkappaB"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "TNF activates NFkappaB" 4
                    END-OF-SOURCE
("TNF activates NFkappaB"
 (:VAR MV6035 :ISA BIO-ACTIVATE :AGENT MV6034 :OBJECT MV6036 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV6034 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV6036 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB"))

___________________
671: "I want to find out how tofacitinib decreases IL2"

                    SOURCE-START
e22   WANT          1 "I want to find out how tofacitinib decreases IL2" 11
                    END-OF-SOURCE
("I want to find out how tofacitinib decreases IL2"
 (:VAR MV6042 :ISA WANT :AGENT MV6039 :THEME MV6053 :PRESENT "PRESENT")
 (:VAR MV6039 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6053 :ISA FIND-OUT :AGENT MV6039 :STATEMENT MV6050)
 (:VAR MV6039 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6050 :ISA WH-QUESTION :STATEMENT MV6049 :VAR NIL :WH HOW)
 (:VAR MV6049 :ISA DECREASE :AGENT MV6048 :OBJECT MV6038 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV6048 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tofacitinib")
 (:VAR MV6038 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
672: "I want to find out how Selumetinib decreases FOS in BT20 cells"

                    SOURCE-START
e31   WANT          1 "I want to find out how Selumetinib decreases FOS in BT20 cells" 14
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in BT20 cells"
 (:VAR MV6057 :ISA WANT :AGENT MV6054 :THEME MV6076 :PRESENT "PRESENT")
 (:VAR MV6054 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6076 :ISA FIND-OUT :AGENT MV6054 :STATEMENT MV6073)
 (:VAR MV6054 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6073 :ISA WH-QUESTION :STATEMENT MV6064 :VAR NIL :WH HOW)
 (:VAR MV6064 :ISA DECREASE :AGENT MV6063 :OBJECT MV6065 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV6063 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV6065 :ISA PROTEIN :CELL-TYPE MV6070 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV6070 :ISA CELL-TYPE :MODIFIER MV6071) (:VAR MV6071 :ISA BIO-ENTITY :NAME "BT20"))

___________________
673: "I want to find out how ERBB3 activates JUN in SKBR3 cells"

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells"
 (:VAR MV6082 :ISA WANT :AGENT MV6079 :THEME MV6096 :PRESENT "PRESENT")
 (:VAR MV6079 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6096 :ISA FIND-OUT :AGENT MV6079 :STATEMENT MV6093)
 (:VAR MV6079 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6093 :ISA WH-QUESTION :STATEMENT MV6088 :VAR NIL :WH HOW)
 (:VAR MV6088 :ISA BIO-ACTIVATE :AGENT MV6077 :OBJECT MV6089 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV6077 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME "ERBB3_HUMAN")
 (:VAR MV6089 :ISA PROTEIN :CELL-TYPE MV6091 :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV6091 :ISA CELL-TYPE :CELL-LINE MV6078)
 (:VAR MV6078 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
674: "Does MEK phosphorylate ERK?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "Does MEK phosphorylate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MEK phosphorylate ERK?" (:VAR MV6102 :ISA POLAR-QUESTION :STATEMENT MV6101)
 (:VAR MV6101 :ISA PHOSPHORYLATE :AGENT MV6098 :SUBSTRATE MV6100 :RAW-TEXT "phosphorylate")
 (:VAR MV6098 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6100 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
("Does STAT3 inhibit the c-fos gene?" (:VAR MV6110 :ISA POLAR-QUESTION :STATEMENT MV6109)
 (:VAR MV6109 :ISA INHIBIT :AGENT MV6103 :OBJECT MV6108 :RAW-TEXT "inhibit")
 (:VAR MV6103 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV6108 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6104 :RAW-TEXT "gene")
 (:VAR MV6104 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
676: "Does STAT3 stimulate the c-fos gene?"

                    SOURCE-START
e15   STIMULATE     1 "Does STAT3 stimulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 stimulate the c-fos gene?" (:VAR MV6118 :ISA POLAR-QUESTION :STATEMENT MV6117)
 (:VAR MV6117 :ISA STIMULATE :AGENT MV6111 :OBJECT MV6116 :RAW-TEXT "stimulate")
 (:VAR MV6111 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV6116 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6112 :RAW-TEXT "gene")
 (:VAR MV6112 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
677: "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."

                    SOURCE-START
e33   WANT          1 "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells" 16
                    PERIOD
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
 (:VAR MV6122 :ISA WANT :AGENT MV6119 :THEME MV6140 :PRESENT "PRESENT")
 (:VAR MV6119 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6140 :ISA FIND-OUT :AGENT MV6119 :STATEMENT MV6137)
 (:VAR MV6119 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6137 :ISA WH-QUESTION :STATEMENT MV6129 :VAR NIL :WH HOW)
 (:VAR MV6129 :ISA DECREASE :AGENT MV6128 :OBJECT MV6130 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV6128 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV6130 :ISA PROTEIN :CELL-TYPE MV6134 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV6134 :ISA CELL-TYPE :MODIFIER MV6135 :CONTEXT-OR-ASSOCIATED-DISEASE MV6133)
 (:VAR MV6135 :ISA BIO-ENTITY :NAME "SKMEL-133") (:VAR MV6133 :ISA MELANOMA))

___________________
678: "Is ERK a transcription factor?"

                    SOURCE-START
e9    BE            1 "Is ERK a transcription factor" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK a transcription factor?"
 (:VAR MV6145 :ISA POLAR-QUESTION :STATEMENT
  (#<be 90082>
   (PREDICATE
    (#<transcription-factor 88028> (HAS-DETERMINER (#<a 110> (WORD "a")))
     (RAW-TEXT "transcription factor"))))))

___________________
679: "List all the genes regulated by elk1 and srf."

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    PERIOD
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf."
 (:VAR MV6147 :ISA LIST :THEME MV6150 :PRESENT "PRESENT")
 (:VAR MV6150 :ISA GENE :PREDICATION MV6151 :QUANTIFIER MV6148 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV6151 :ISA REGULATE :OBJECT MV6150 :AGENT MV6155 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV6155 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV6146 MV6154))
 (:VAR MV6146 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV6154 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6148 :ISA ALL :WORD "all"))

___________________
680: "List some of the genes regulated by elk1 and srf."

                    SOURCE-START
e20   LIST          1 "List some of the genes regulated by elk1 and srf" 12
                    PERIOD
                    END-OF-SOURCE
("List some of the genes regulated by elk1 and srf."
 (:VAR MV6158 :ISA LIST :THEME MV6162 :PRESENT "PRESENT")
 (:VAR MV6162 :ISA GENE :PREDICATION MV6163 :QUANTIFIER MV6159 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV6163 :ISA REGULATE :OBJECT MV6162 :AGENT MV6167 :PAST "PAST" :RAW-TEXT "regulated")
 (:VAR MV6167 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV6157 MV6166))
 (:VAR MV6157 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV6166 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6159 :ISA SOME :WORD "some"))

___________________
681: "Show me the  mutations of TP53 and BRAF in ovarian cancer."

                    SOURCE-START
e22   SHOW          1 "Show me the  mutations of TP53 and BRAF in ovarian cancer" 13
                    PERIOD
                    END-OF-SOURCE
("Show me the  mutations of TP53 and BRAF in ovarian cancer."
 (:VAR MV6173 :ISA SHOW :STATEMENT-OR-THEME MV6176 :BENEFICIARY MV6174 :PRESENT "PRESENT")
 (:VAR MV6176 :ISA MUTATION :OBJECT MV6181 :HAS-DETERMINER "THE" :RAW-TEXT "mutations")
 (:VAR MV6181 :ISA COLLECTION :CONTEXT MV6172 :RAW-TEXT "TP53 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6171 MV6179))
 (:VAR MV6172 :ISA CANCER :UID "TS-1223")
 (:VAR MV6171 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6179 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV6174 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
682: "What are the mutations of TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutations of TP53 and BRAF in ovarian cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of TP53 and BRAF in ovarian cancer?"
 (:VAR MV6187 :ISA BE :SUBJECT MV6186 :PREDICATE MV6189 :PRESENT "PRESENT") (:VAR MV6186 :ISA WHAT)
 (:VAR MV6189 :ISA MUTATION :OBJECT MV6194 :HAS-DETERMINER "THE" :RAW-TEXT "mutations")
 (:VAR MV6194 :ISA COLLECTION :CONTEXT MV6185 :RAW-TEXT "TP53 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6184 MV6192))
 (:VAR MV6185 :ISA CANCER :UID "TS-1223")
 (:VAR MV6184 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6192 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
683: "What are the mutually exclusive genes with CDH1 for breast cancer?"

                    SOURCE-START
e19   BE            1 "What are the mutually exclusive genes " 7
e17   WITH          7 "with CDH1 " 10
e16   FOR           10 "for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e19   S             1 "What are the mutually exclusive genes " 7
e17   PP            7 "with CDH1 " 10
e16   PP            10 "for breast cancer" 13
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
 (:VAR MV6220 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV6219 :AFFECTED-PROCESS-OR-OBJECT MV6221 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV6219 :ISA WHAT) (:VAR MV6221 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
686: "What genes have strong evidence of being regulated by mir-122-5p?"

                    SOURCE-START
e21   HAVE          1 "What genes have strong evidence of being regulated by mir-122-5p" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes have strong evidence of being regulated by mir-122-5p?"
 (:VAR MV6225 :ISA HAVE :POSSESSOR MV6224 :THING-POSSESSED MV6232 :PRESENT "PRESENT")
 (:VAR MV6224 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6232 :ISA EVIDENCE :FACT MV6230)
 (:VAR MV6230 :ISA REGULATE :AGENT MV6222 :PROGRESSIVE MV6229 :RAW-TEXT "regulated")
 (:VAR MV6222 :ISA MICRO-RNA :RAW-TEXT "mir-122-5p" :NAME "microRNA 122-5p" :UID "MIMAT0000421")
 (:VAR MV6229 :ISA BE))

___________________
687: "What increases the amount of myc"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    END-OF-SOURCE
("What increases the amount of myc"
 (:VAR MV6237 :ISA INCREASE :AGENT-OR-CAUSE MV6235 :AFFECTED-PROCESS-OR-OBJECT MV6239 :PRESENT
  "PRESENT" :RAW-TEXT "increases")
 (:VAR MV6235 :ISA WHAT)
 (:VAR MV6239 :ISA BIO-AMOUNT :MEASURED-ITEM MV6241 :HAS-DETERMINER "THE" :RAW-TEXT "amount")
 (:VAR MV6241 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
688: "What inhibits fzd8?"

                    SOURCE-START
e5    INHIBIT       1 "What inhibits fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits fzd8?"
 (:VAR MV6245 :ISA INHIBIT :AGENT-OR-CAUSE MV6244 :OBJECT MV6243 :PRESENT "PRESENT" :RAW-TEXT
  "inhibits")
 (:VAR MV6244 :ISA WHAT)
 (:VAR MV6243 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN"))

___________________
689: "What is the most likely cellular location of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e26   BE            1 "What is the most likely cellular location of AKT1, BRAF and MAPK1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
 (:VAR MV6249 :ISA BE :SUBJECT MV6248 :PREDICATE MV6261 :PRESENT "PRESENT") (:VAR MV6248 :ISA WHAT)
 (:VAR MV6261 :ISA QUALITY-PREDICATE :ITEM MV6259 :ATTRIBUTE MV6255)
 (:VAR MV6259 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV6246 MV6257 MV6247))
 (:VAR MV6246 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6257 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV6247 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6255 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6253 :MODIFIER MV6254)
 (:VAR MV6253 :ISA LIKELY :COMPARATIVE MV6251)
 (:VAR MV6251 :ISA SUPERLATIVE-QUANTIFIER :NAME "most") (:VAR MV6254 :ISA CELLULAR))

___________________
690: "What is the most likely cellular location of AKT1?"

                    SOURCE-START
e20   BE            1 "What is the most likely cellular location of AKT1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1?"
 (:VAR MV6264 :ISA BE :SUBJECT MV6263 :PREDICATE MV6273 :PRESENT "PRESENT") (:VAR MV6263 :ISA WHAT)
 (:VAR MV6273 :ISA QUALITY-PREDICATE :ITEM MV6262 :ATTRIBUTE MV6270)
 (:VAR MV6262 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6270 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6268 :MODIFIER MV6269)
 (:VAR MV6268 :ISA LIKELY :COMPARATIVE MV6266)
 (:VAR MV6266 :ISA SUPERLATIVE-QUANTIFIER :NAME "most") (:VAR MV6269 :ISA CELLULAR))

___________________
691: "What is the mutation significance of TP53 in lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in lung cancer?"
 (:VAR MV6277 :ISA BE :SUBJECT MV6276 :PREDICATE MV6280 :PRESENT "PRESENT") (:VAR MV6276 :ISA WHAT)
 (:VAR MV6280 :ISA SIGNIFICANCE :AGENT MV6274 :HAS-DETERMINER "THE" :MODIFIER MV6279)
 (:VAR MV6274 :ISA PROTEIN :CONTEXT MV6275 :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6275 :ISA CANCER :UID "TS-0571") (:VAR MV6279 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
692: "Which of those are regulated by tp53?"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by tp53" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are regulated by tp53?"
 (:VAR MV6292 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6288 :AGENT MV6285 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV6288 :ISA THOSE :QUANTIFIER MV6286 :WORD "those") (:VAR MV6286 :ISA WHICH)
 (:VAR MV6285 :ISA PROTEIN :RAW-TEXT "tp53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
693: "Is there an inhibitor of ERK1?"

                    SOURCE-START
e15   THERE-EXISTS  1 "Is there an inhibitor of ERK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an inhibitor of ERK1?" (:VAR MV6302 :ISA THERE-EXISTS :VALUE MV6300 :PREDICATE MV6297)
 (:VAR MV6300 :ISA INHIBITOR :PROTEIN MV6295 :HAS-DETERMINER "AN" :RAW-TEXT "inhibitor")
 (:VAR MV6295 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME "MK03_HUMAN")
 (:VAR MV6297 :ISA SYNTACTIC-THERE))

___________________
694: "Name some drugs that inhibit AKT1."

                    SOURCE-START
e15   NAME-SOMETHING  1 "Name some drugs that inhibit AKT1" 8
                    PERIOD
                    END-OF-SOURCE
("Name some drugs that inhibit AKT1."
 (:VAR MV6305 :ISA NAME-SOMETHING :PATIENT MV6309 :PRESENT "PRESENT")
 (:VAR MV6309 :ISA DRUG :PREDICATION MV6311 :QUANTIFIER MV6308 :RAW-TEXT "drugs")
 (:VAR MV6311 :ISA INHIBIT :AGENT MV6309 :THAT-REL T :OBJECT MV6304 :PRESENT "PRESENT" :RAW-TEXT
  "inhibit")
 (:VAR MV6304 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6308 :ISA SOME :WORD "some"))

___________________
695: "Are there any Map2K1 inhibitors?"

                    SOURCE-START
e16   THERE-EXISTS  1 "Are there any Map2K1 inhibitors" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any Map2K1 inhibitors?" (:VAR MV6322 :ISA THERE-EXISTS :VALUE MV6320 :PREDICATE MV6314)
 (:VAR MV6320 :ISA INHIBITOR :QUANTIFIER MV6316 :PROTEIN MV6312 :MODIFIER MV6321 :RAW-TEXT
  "inhibitors")
 (:VAR MV6316 :ISA ANY :WORD "any")
 (:VAR MV6312 :ISA PROTEIN :RAW-TEXT "Map2" :UID "UP:P11137" :NAME "MTAP2_HUMAN")
 (:VAR MV6321 :ISA TWO-PART-LABEL :PART-TWO "1" :PART-ONE "k") (:VAR MV6314 :ISA SYNTACTIC-THERE))

___________________
696: "Are there targets of Selumetinib?"

                    SOURCE-START
e12   THERE-EXISTS  1 "Are there targets of Selumetinib" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there targets of Selumetinib?"
 (:VAR MV6330 :ISA THERE-EXISTS :VALUE MV6326 :PREDICATE MV6324)
 (:VAR MV6326 :ISA TARGET-PROTEIN :AGENT MV6329 :RAW-TEXT "targets")
 (:VAR MV6329 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV6324 :ISA SYNTACTIC-THERE))

___________________
697: "What does Selumetinib inhibit?"

                    SOURCE-START
e5    INHIBIT       1 "What does Selumetinib inhibit" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib inhibit?"
 (:VAR MV6335 :ISA INHIBIT :OBJECT MV6332 :AGENT MV6334 :PRESENT "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV6332 :ISA WHAT) (:VAR MV6334 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
698: "What does Selumetinib target?"

                    SOURCE-START
e6    TARGET        1 "What does Selumetinib target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib target?"
 (:VAR MV6340 :ISA TARGET :OBJECT MV6336 :AGENT MV6338 :PRESENT "PRESENT" :RAW-TEXT "target")
 (:VAR MV6336 :ISA WHAT) (:VAR MV6338 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
699: "Does Vemurafenib target BRAF?"

                    SOURCE-START
e9    TARGET        1 "Does Vemurafenib target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib target BRAF?" (:VAR MV6347 :ISA POLAR-QUESTION :STATEMENT MV6346)
 (:VAR MV6346 :ISA TARGET :AGENT MV6342 :OBJECT MV6345 :RAW-TEXT "target")
 (:VAR MV6342 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV6345 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
700: "What are some targets for treating pancreatic cancer?"

                    SOURCE-START
e14   BE            1 "What are some targets " 5
e11   FOR           5 "for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e14   S             1 "What are some targets " 5
e11   PP            5 "for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
701: "What are some targets for pancreatic cancer?"

                    SOURCE-START
e13   BE            1 "What are some targets for pancreatic cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for pancreatic cancer?"
 (:VAR MV6359 :ISA BE :SUBJECT MV6358 :PREDICATE MV6361 :PRESENT "PRESENT") (:VAR MV6358 :ISA WHAT)
 (:VAR MV6361 :ISA TARGET-PROTEIN :QUANTIFIER MV6360 :DISEASE MV6357 :RAW-TEXT "targets")
 (:VAR MV6360 :ISA SOME :WORD "some") (:VAR MV6357 :ISA CANCER :UID "TS-0739"))

___________________
702: "What targets could lead to the development of pancreatic cancer?"

                    SOURCE-START
e21   LEAD          1 "What targets could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What targets could lead to the development of pancreatic cancer?"
 (:VAR MV6370 :ISA LEAD :AGENT MV6367 :THEME MV6373 :MODAL MV6369 :RAW-TEXT "lead")
 (:VAR MV6367 :ISA TARGET-PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "targets")
 (:VAR MV6373 :ISA DEVELOPMENT :DISEASE MV6365 :HAS-DETERMINER "THE" :RAW-TEXT "development")
 (:VAR MV6365 :ISA CANCER :UID "TS-0739") (:VAR MV6369 :ISA COULD))

___________________
703: "What proteins could lead to the development of pancreatic cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins could lead to the development of pancreatic cancer?"
 (:VAR MV6381 :ISA LEAD :AGENT MV6379 :THEME MV6384 :MODAL MV6380 :RAW-TEXT "lead")
 (:VAR MV6379 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV6384 :ISA DEVELOPMENT :DISEASE MV6377 :HAS-DETERMINER "THE" :RAW-TEXT "development")
 (:VAR MV6377 :ISA CANCER :UID "TS-0739") (:VAR MV6380 :ISA COULD))

___________________
704: "What mutated genes could lead to pancreatic cancer?"

                    SOURCE-START
e15   LEAD          1 "What mutated genes could lead to pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What mutated genes could lead to pancreatic cancer?"
 (:VAR MV6393 :ISA LEAD :AGENT MV6391 :THEME MV6388 :MODAL MV6392 :RAW-TEXT "lead")
 (:VAR MV6391 :ISA GENE :HAS-DETERMINER "WHAT" :PREDICATION MV6390 :RAW-TEXT "genes")
 (:VAR MV6390 :ISA MUTATION :OBJECT MV6391 :RAW-TEXT "mutated")
 (:VAR MV6388 :ISA CANCER :UID "TS-0739") (:VAR MV6392 :ISA COULD))

___________________
705: "What is the top gene mutation that leads to pancreatic cancer?"

                    SOURCE-START
e24   BE            1 "What is the top gene mutation that leads to pancreatic cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the top gene mutation that leads to pancreatic cancer?"
 (:VAR MV6398 :ISA BE :SUBJECT MV6397 :PREDICATE MV6403 :PRESENT "PRESENT") (:VAR MV6397 :ISA WHAT)
 (:VAR MV6403 :ISA MUTATION :AGENT MV6402 :OBJECT MV6400 :PREDICATION MV6405 :HAS-DETERMINER "THE"
  :AGENT-OR-OBJECT MV6400 :AGENT-OR-OBJECT MV6402 :RAW-TEXT "mutation")
 (:VAR MV6402 :ISA GENE :RAW-TEXT "gene")
 (:VAR MV6400 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6405 :ISA LEAD :AGENT MV6403 :THAT-REL T :THEME MV6396 :PRESENT "PRESENT" :RAW-TEXT
  "leads")
 (:VAR MV6396 :ISA CANCER :UID "TS-0739")
 (:VAR MV6400 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6402 :ISA GENE :RAW-TEXT "gene"))

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
 (:VAR MV6434 :ISA BIO-USE :PATIENT MV6424 :MODAL MV6425 :AGENT MV6426 :THEME MV6433 :PRESENT
  "PRESENT" :RAW-TEXT "use")
 (:VAR MV6424 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug") (:VAR MV6425 :ISA COULD)
 (:VAR MV6426 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6433 :ISA TREATMENT :DISEASE MV6422 :RAW-TEXT "treat")
 (:VAR MV6422 :ISA CANCER :UID "TS-0739"))

___________________
708: "What are some drugs for treating pancreatic cancer?"

                    SOURCE-START
e13   BE            1 "What are some drugs " 5
e11   FOR           5 "for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e13   S             1 "What are some drugs " 5
e11   PP            5 "for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE


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
("Does MEK act on ERK?" (:VAR MV6467 :ISA POLAR-QUESTION :STATEMENT MV6465)
 (:VAR MV6465 :ISA BIO-ACT :AGENT MV6461 :ACTED-ON MV6464 :RAW-TEXT "act")
 (:VAR MV6461 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6464 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
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
 (:VAR MV6470 :ISA BIO-ACTIVATE :AGENT MV6469 :OBJECT MV6468 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV6469 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6468 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME "MK03_HUMAN"))

___________________
713: "HRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "HRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("HRAS activates RAF."
 (:VAR MV6472 :ISA BIO-ACTIVATE :AGENT MV6471 :OBJECT MV6473 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV6471 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME "RASH_HUMAN")
 (:VAR MV6473 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3 :FAMILY-MEMBERS
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
 (:VAR MV6474 :ISA REMOVE :OBJECT MV6481 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV6481 :ISA FACT :STATEMENT MV6479 :HAS-DETERMINER "THE")
 (:VAR MV6479 :ISA BIO-ACTIVATE :AGENT MV6478 :OBJECT MV6480 :PRESENT "PRESENT" :RAW-TEXT
  "activates")
 (:VAR MV6478 :ISA PROTEIN :RAW-TEXT "hras" :UID "UP:P01112" :NAME "RASH_HUMAN")
 (:VAR MV6480 :ISA PROTEIN-FAMILY :RAW-TEXT "ras" :NAME "Ras" :COUNT 3 :FAMILY-MEMBERS
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
("Can you tell me what is in the model?" (:VAR MV6493 :ISA POLAR-QUESTION :STATEMENT MV6484)
 (:VAR MV6484 :ISA TELL :AGENT MV6483 :THEME MV6492 :THEME MV6485 :MODAL "CAN")
 (:VAR MV6483 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV6492 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6486 :VALUE MV6490 :PREP "IN" :PREDICATE
  MV6487)
 (:VAR MV6486 :ISA WHAT) (:VAR MV6490 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV6487 :ISA BE :PRESENT "PRESENT") (:VAR MV6485 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
716: "Summarize the model."

                    SOURCE-START
e5    SUMMARIZE     1 "Summarize the model" 4
                    PERIOD
                    END-OF-SOURCE
("Summarize the model." (:VAR MV6497 :ISA SUMMARIZE :STATEMENT MV6496 :PRESENT "PRESENT")
 (:VAR MV6496 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
717: "Summarize the current model."

                    SOURCE-START
e6    SUMMARIZE     1 "Summarize the current model" 5
                    PERIOD
                    END-OF-SOURCE
("Summarize the current model." (:VAR MV6503 :ISA SUMMARIZE :STATEMENT MV6502 :PRESENT "PRESENT")
 (:VAR MV6502 :ISA MODEL))

___________________
718: "What phosphorylates BRAF?"

                    SOURCE-START
e4    PHOSPHORYLATE 1 "What phosphorylates BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What phosphorylates BRAF?"
 (:VAR MV6505 :ISA PHOSPHORYLATE :AGENT-OR-CAUSE MV6504 :SUBSTRATE MV6506 :PRESENT "PRESENT"
  :RAW-TEXT "phosphorylates")
 (:VAR MV6504 :ISA WHAT)
 (:VAR MV6506 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
719: "Vemurafenib binds BRAF."

                    SOURCE-START
e4    BINDING       1 "Vemurafenib binds BRAF" 4
                    PERIOD
                    END-OF-SOURCE
("Vemurafenib binds BRAF."
 (:VAR MV6508 :ISA BINDING :BINDER MV6507 :DIRECT-BINDEE MV6509 :PRESENT "PRESENT" :RAW-TEXT
  "binds")
 (:VAR MV6507 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV6509 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
720: "Phosphorylated MAP2K1 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated MAP2K1 is activated" 8
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAP2K1 is activated."
 (:VAR MV6514 :ISA BIO-ACTIVATE :OBJECT MV6510 :PRESENT "PRESENT" :RAW-TEXT "activated")
 (:VAR MV6510 :ISA PROTEIN :PREDICATION MV6511 :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV6511 :ISA PHOSPHORYLATE :SUBSTRATE MV6510 :RAW-TEXT "Phosphorylated"))

___________________
721: "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2" 18
                    PERIOD
                    END-OF-SOURCE
("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
 (:VAR MV6518 :ISA DEPHOSPHORYLATE :AGENT MV6515 :SUBSTRATE MV6516 :PRESENT "PRESENT" :RAW-TEXT
  "dephosphorylates")
 (:VAR MV6515 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME "PP2AA_HUMAN")
 (:VAR MV6516 :ISA PROTEIN :PREDICATION MV6524 :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV6524 :ISA BINDING :DIRECT-BINDEE MV6516 :THAT-REL T :BINDEE MV6517 :PRESENT "PRESENT"
  :NEGATION MV6521 :RAW-TEXT "bound")
 (:VAR MV6517 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6521 :ISA NOT :WORD "not"))

___________________
722: "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."

                    SOURCE-START
e24   PHOSPHORYLATE 1 "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2" 19
                    PERIOD
                    END-OF-SOURCE
("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
 (:VAR MV6535 :ISA PHOSPHORYLATE :AGENT MV6526 :SUBSTRATE MV6528 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV6526 :ISA PROTEIN :PREDICATION MV6536 :PREDICATION MV6529 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6536 :ISA BINDING :DIRECT-BINDEE MV6526 :THAT-REL T :BINDEE MV6527 :PRESENT "PRESENT"
  :NEGATION MV6532 :RAW-TEXT "bound")
 (:VAR MV6527 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME "PP2AA_HUMAN")
 (:VAR MV6532 :ISA NOT :WORD "not") (:VAR MV6529 :ISA ACTIVE)
 (:VAR MV6528 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME "MK01_HUMAN"))

___________________
723: "Phosphorylated ERK2 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated ERK2 is activated" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK2 is activated."
 (:VAR MV6542 :ISA BIO-ACTIVATE :OBJECT MV6538 :PRESENT "PRESENT" :RAW-TEXT "activated")
 (:VAR MV6538 :ISA PROTEIN :PREDICATION MV6539 :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6539 :ISA PHOSPHORYLATE :SUBSTRATE MV6538 :RAW-TEXT "Phosphorylated"))

___________________
724: "DUSP6 dephosphorylates ERK2 that is not bound to SOS1."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates ERK2 that is not bound to SOS1" 13
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
 (:VAR MV6546 :ISA DEPHOSPHORYLATE :AGENT MV6543 :SUBSTRATE MV6544 :PRESENT "PRESENT" :RAW-TEXT
  "dephosphorylates")
 (:VAR MV6543 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME "DUS6_HUMAN")
 (:VAR MV6544 :ISA PROTEIN :PREDICATION MV6552 :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6552 :ISA BINDING :DIRECT-BINDEE MV6544 :THAT-REL T :BINDEE MV6545 :PRESENT "PRESENT"
  :NEGATION MV6549 :RAW-TEXT "bound")
 (:VAR MV6545 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV6549 :ISA NOT :WORD "not"))

___________________
725: "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."

                    SOURCE-START
e28   PHOSPHORYLATE 1 "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1" 16
                    PERIOD
                    END-OF-SOURCE
("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
 (:VAR MV6566 :ISA PHOSPHORYLATE :AGENT MV6555 :SUBSTRATE MV6554 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV6555 :ISA PROTEIN :PREDICATION MV6569 :MUTATION MV6568 :RAW-TEXT "BRAF" :UID "UP:P15056"
  :NAME "BRAF_HUMAN")
 (:VAR MV6569 :ISA BINDING :DIRECT-BINDEE MV6555 :THAT-REL T :BINDEE MV6565 :PRESENT "PRESENT"
  :NEGATION MV6562 :RAW-TEXT "bound")
 (:VAR MV6565 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV6562 :ISA NOT :WORD "not")
 (:VAR MV6568 :ISA POINT-MUTATED-PROTEIN :POSITION MV6557 :NEW-AMINO-ACID MV6559
  :ORIGINAL-AMINO-ACID MV6556)
 (:VAR MV6557 :ISA NUMBER :VALUE 600)
 (:VAR MV6559 :ISA AMINO-ACID :NAME "glutamic acid" :LETTER "E")
 (:VAR MV6556 :ISA AMINO-ACID :NAME "valine" :LETTER "V")
 (:VAR MV6554 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN"))

___________________
726: "Phosphorylated MAPK1 is active."

                    SOURCE-START
e8    COPULAR-PREDICATION 1 "Phosphorylated MAPK1 is active" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAPK1 is active."
 (:VAR MV6575 :ISA COPULAR-PREDICATION :ITEM MV6571 :VALUE MV6574 :PREDICATE MV6573)
 (:VAR MV6571 :ISA PROTEIN :PREDICATION MV6572 :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6572 :ISA PHOSPHORYLATE :SUBSTRATE MV6571 :RAW-TEXT "Phosphorylated")
 (:VAR MV6574 :ISA ACTIVE) (:VAR MV6573 :ISA BE :PRESENT "PRESENT"))

___________________
727: "PDK1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "PDK1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("PDK1 phosphorylates AKT1."
 (:VAR MV6578 :ISA PHOSPHORYLATE :AGENT MV6576 :SUBSTRATE MV6577 :PRESENT "PRESENT" :RAW-TEXT
  "phosphorylates")
 (:VAR MV6576 :ISA PROTEIN :RAW-TEXT "PDK1" :UID "UP:O15530" :NAME "PDPK1_HUMAN")
 (:VAR MV6577 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
728: "Let's move phosphorylated AKT1 to the top"

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 to the top" 11
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 to the top"
 (:VAR MV6588 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6581 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV6581 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV6585 :THEME MV6580 :PRESENT "PRESENT")
 (:VAR MV6585 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6580 :ISA PROTEIN :PREDICATION MV6582 :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6582 :ISA PHOSPHORYLATE :SUBSTRATE MV6580 :RAW-TEXT "phosphorylated"))

___________________
729: "Let's move phosphorylated AKT1 on top"

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 on top" 10
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 on top"
 (:VAR MV6597 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6591 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV6591 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV6594 :THEME MV6590 :PRESENT
  "PRESENT")
 (:VAR MV6594 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6590 :ISA PROTEIN :PREDICATION MV6592 :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6592 :ISA PHOSPHORYLATE :SUBSTRATE MV6590 :RAW-TEXT "phosphorylated"))

___________________
730: "show AKT1 on top"

                    SOURCE-START
e9    SHOW          1 "show AKT1 on top" 6
                    END-OF-SOURCE
("show AKT1 on top"
 (:VAR MV6599 :ISA SHOW :AT-RELATIVE-LOCATION MV6601 :STATEMENT-OR-THEME MV6598 :PRESENT "PRESENT")
 (:VAR MV6601 :ISA PROTEIN-FAMILY :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6598 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
731: "Let's highlight upstream of AKT1"

                    SOURCE-START
e12   EXPLICIT-SUGGESTION 1 "Let's highlight upstream of AKT1" 9
                    END-OF-SOURCE
("Let's highlight upstream of AKT1"
 (:VAR MV6611 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6606 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV6606 :ISA HIGHLIGHT :THEME MV6607 :PRESENT "PRESENT")
 (:VAR MV6607 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV6605 :RAW-TEXT "upstream")
 (:VAR MV6605 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
732: "Let's move nucleus elements to the top"

                    SOURCE-START
e16   EXPLICIT-SUGGESTION 1 "Let's move nucleus elements to the top" 10
                    END-OF-SOURCE
("Let's move nucleus elements to the top"
 (:VAR MV6621 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6613 :MARKER LET-AS-DIRECTIVE)
 (:VAR MV6613 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV6618 :THEME MV6615 :PRESENT "PRESENT")
 (:VAR MV6618 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "top" :COUNT 4 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TOP2B_HUMAN") (:UID "UP:Q02880"))
   (PROTEIN (:NAME "TOP2A_HUMAN") (:UID "UP:P11388"))
   (PROTEIN (:NAME "TOP1M_HUMAN") (:UID "UP:Q969P6"))
   (PROTEIN (:NAME "TOP1_HUMAN") (:UID "UP:P11387")))
  :NAME "TOP")
 (:VAR MV6615 :ISA ELEMENT :MODIFIER MV6614) (:VAR MV6614 :ISA NUCLEUS :RAW-TEXT "nucleus"))

___________________
733: "What are the common downstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common downstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common downstreams of AKT1 and  BRAF?"
 (:VAR MV6624 :ISA BE :SUBJECT MV6623 :PREDICATE MV6627 :PRESENT "PRESENT") (:VAR MV6623 :ISA WHAT)
 (:VAR MV6627 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV6631 :HAS-DETERMINER "THE" :PREDICATION
  MV6626 :RAW-TEXT "downstreams")
 (:VAR MV6631 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV6622 MV6630))
 (:VAR MV6622 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6630 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV6626 :ISA COMMON))

___________________
734: "Are there common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e20   THERE-EXISTS  1 "Are there common upstreams of AKT1, BRAF and MAPK1" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV6643 :ISA THERE-EXISTS :VALUE MV6639 :PREDICATE MV6636)
 (:VAR MV6639 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV6644 :PREDICATION MV6638 :RAW-TEXT
  "upstreams")
 (:VAR MV6644 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV6633 MV6641 MV6634))
 (:VAR MV6633 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6641 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV6634 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6638 :ISA COMMON) (:VAR MV6636 :ISA SYNTACTIC-THERE))

___________________
735: "What are the common upstream regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e26   BE            1 "What are the common upstream regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6650 :ISA BE :SUBJECT MV6649 :PREDICATE MV6655 :PRESENT "PRESENT") (:VAR MV6649 :ISA WHAT)
 (:VAR MV6655 :ISA REGULATOR :THEME MV6658 :HAS-DETERMINER "THE" :PREDICATION MV6652 :CONTEXT
  MV6653 :RAW-TEXT "regulators")
 (:VAR MV6658 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV6646 MV6647 MV6648))
 (:VAR MV6646 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6647 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME "MMP3_HUMAN")
 (:VAR MV6648 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME "PAI1_HUMAN")
 (:VAR MV6652 :ISA COMMON) (:VAR MV6653 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
736: "What are common downstream regulators of MMP3 and SERPINE1?"

                    SOURCE-START
e19   BE            1 "What are common downstream regulators of MMP3 and SERPINE1" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common downstream regulators of MMP3 and SERPINE1?"
 (:VAR MV6663 :ISA BE :SUBJECT MV6662 :PREDICATE MV6667 :PRESENT "PRESENT") (:VAR MV6662 :ISA WHAT)
 (:VAR MV6667 :ISA REGULATOR :THEME MV6670 :PREDICATION MV6664 :CONTEXT MV6665 :RAW-TEXT
  "regulators")
 (:VAR MV6670 :ISA COLLECTION :RAW-TEXT "MMP3 and SERPINE1" :TYPE PROTEIN :NUMBER 2 :ITEMS
  (MV6660 MV6661))
 (:VAR MV6660 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME "MMP3_HUMAN")
 (:VAR MV6661 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME "PAI1_HUMAN")
 (:VAR MV6664 :ISA COMMON) (:VAR MV6665 :ISA DOWNSTREAM-SEGMENT :RAW-TEXT "downstream"))

___________________
737: "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e24   BE            1 "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6677 :ISA BE :SUBJECT MV6676 :PREDICATE MV6672 :PRESENT "PRESENT") (:VAR MV6676 :ISA WHAT)
 (:VAR MV6672 :ISA PROTEIN-FAMILY :MOLECULE-TYPE MV6683 :PREDICATION MV6678 :CONTEXT MV6679
  :RAW-TEXT "transcriptional regulators" :NAME "transcriptional regulator" :UID "XFAM:PF02082")
 (:VAR MV6683 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN :NUMBER 3 :ITEMS
  (MV6673 MV6674 MV6675))
 (:VAR MV6673 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6674 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME "MMP3_HUMAN")
 (:VAR MV6675 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME "PAI1_HUMAN")
 (:VAR MV6678 :ISA COMMON) (:VAR MV6679 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
738: "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e24   BE            1 "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
 (:VAR MV6688 :ISA BE :SUBJECT MV6687 :PREDICATE MV6690 :PRESENT "PRESENT") (:VAR MV6687 :ISA WHAT)
 (:VAR MV6690 :ISA MUTATION :OBJECT MV6696 :HAS-DETERMINER "THE" :RAW-TEXT "mutations")
 (:VAR MV6696 :ISA COLLECTION :CONTEXT MV6686 :RAW-TEXT "PTEN, TP53 and BRAF" :TYPE PROTEIN :NUMBER
  3 :ITEMS (MV6692 MV6685 MV6694))
 (:VAR MV6686 :ISA CANCER :UID "TS-1223")
 (:VAR MV6692 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME "PTEN_HUMAN")
 (:VAR MV6685 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6694 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
739: "What is the mutation frequency of TP53 in ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian cancer?"
 (:VAR MV6702 :ISA BE :SUBJECT MV6701 :PREDICATE MV6705 :PRESENT "PRESENT") (:VAR MV6701 :ISA WHAT)
 (:VAR MV6705 :ISA FREQUENCY :MEASURED-ITEM MV6699 :HAS-DETERMINER "THE" :MEASURED-ITEM MV6704
  :RAW-TEXT "frequency")
 (:VAR MV6699 :ISA PROTEIN :CONTEXT MV6700 :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6700 :ISA CANCER :UID "TS-1223") (:VAR MV6704 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
740: "Which genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 " 9
e13   FOR           9 "for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e17   S             1 "Which genes are mutually exclusive with CDH1 " 9
e13   PP            9 "for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
741: "Which genes are mutually exclusive with CDH1 in breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 in breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 in breast cancer?"
 (:VAR MV6731 :ISA COPULAR-PREDICATION :ITEM MV6725 :VALUE MV6721 :PREDICATE MV6726)
 (:VAR MV6725 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV6721 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6722)
 (:VAR MV6722 :ISA PROTEIN :CONTEXT MV6723 :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME "CADH1_HUMAN")
 (:VAR MV6723 :ISA CANCER :UID "TS-0591") (:VAR MV6726 :ISA BE :PRESENT "PRESENT"))

___________________
742: "What is the cellular location of akt1?"

                    SOURCE-START
e15   BE            1 "What is the cellular location of akt1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the cellular location of akt1?"
 (:VAR MV6734 :ISA BE :SUBJECT MV6733 :PREDICATE MV6740 :PRESENT "PRESENT") (:VAR MV6733 :ISA WHAT)
 (:VAR MV6740 :ISA QUALITY-PREDICATE :ITEM MV6732 :ATTRIBUTE MV6737)
 (:VAR MV6732 :ISA PROTEIN :RAW-TEXT "akt1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6737 :ISA LOCATION-OF :HAS-DETERMINER "THE" :MODIFIER MV6736) (:VAR MV6736 :ISA CELLULAR))

___________________
743: "How does MAPK regulate BRAF?"

                    SOURCE-START
e7    REGULATE      1 "How does MAPK regulate BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK regulate BRAF?"
 (:VAR MV6744 :ISA REGULATE :MANNER MV6741 :AGENT MV6743 :OBJECT MV6745 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV6741 :ISA HOW)
 (:VAR MV6743 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME "mitogen activated protein kinase" :COUNT
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
 (:VAR MV6745 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
744: "What is BRAF?"

                    SOURCE-START
e4    BE            1 "What is BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is BRAF?" (:VAR MV6747 :ISA BE :SUBJECT MV6746 :PREDICATE MV6748 :PRESENT "PRESENT")
 (:VAR MV6746 :ISA WHAT)
 (:VAR MV6748 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
745: "Is BRAF a member of the RAF family?"

                    SOURCE-START
e19   BE            1 "Is BRAF a member of the RAF family" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a member of the RAF family?"
 (:VAR MV6760 :ISA POLAR-QUESTION :STATEMENT
  (#<be 90991>
   (PREDICATE
    (#<member 90990>
     (SET
      (#<protein-family Raf 86545> (HAS-DETERMINER (#<the 106> (WORD "the"))) (RAW-TEXT "RAF")
       (NAME "Raf")
       (FAMILY-MEMBERS
        (#<collection #<"RAF1_HUMAN" 10406> #<"BRAF_HUMAN" 13716> #<"ARAF_HUMAN" 12656> 80133>
         (TYPE #<ref-category PROTEIN>)
         (ITEMS
          (COLLECTION
           (:MEMBERS
            ((#<protein "RAF1_HUMAN" 10406> (UID "UP:P04049") (NAME "RAF1_HUMAN"))
             (#<protein "BRAF_HUMAN" 13716> (UID "UP:P15056") (NAME "BRAF_HUMAN"))
             (#<protein "ARAF_HUMAN" 12656> (UID "UP:P10398") (NAME "ARAF_HUMAN"))))))
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
 (:VAR MV6767 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6762 :VALUE MV6765 :PREP "IN" :PREDICATE
  MV6763)
 (:VAR MV6762 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6765 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663")
 (:VAR MV6763 :ISA BE :PRESENT "PRESENT"))

___________________
747: "What genes are in the RAF family?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What genes are in the RAF family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the RAF family?"
 (:VAR MV6778 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6769 :VALUE MV6776 :PREP "IN" :PREDICATE
  MV6770)
 (:VAR MV6769 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6776 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV6770 :ISA BE :PRESENT "PRESENT"))

___________________
748: "What are some other names for BRAF?"

                    SOURCE-START
e15   BE            1 "What are some other names for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some other names for BRAF?"
 (:VAR MV6780 :ISA BE :SUBJECT MV6779 :PREDICATE MV6784 :PRESENT "PRESENT") (:VAR MV6779 :ISA WHAT)
 (:VAR MV6784 :ISA HAS-NAME :QUANTIFIER MV6781 :QUANTIFIER MV6782 :ITEM MV6787)
 (:VAR MV6781 :ISA SOME :WORD "some") (:VAR MV6782 :ISA OTHER :WORD "other")
 (:VAR MV6787 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

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
