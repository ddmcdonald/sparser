

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
e9    FOR           1 "What are synonyms for BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What are synonyms for BRAF?"
 (:VAR MV111 :ISA WH-QUESTION :STATEMENT MV110 :WH WHAT)
 (:VAR MV110 :ISA PREPOSITIONAL-PHRASE :POBJ MV109 :PREP "FOR")
 (:VAR MV109 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
13: "What are some genes that are mutated in breast cancer?"

                    SOURCE-START
e20   BE            1 "What are some genes that are mutated in breast cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes that are mutated in breast cancer?"
 (:VAR MV114 :ISA BE :SUBJECT MV113 :PREDICATE MV116 :PRESENT "PRESENT")
 (:VAR MV113 :ISA WHAT)
 (:VAR MV116 :ISA GENE :PREDICATION MV121 :QUANTIFIER MV115 :RAW-TEXT "genes")
 (:VAR MV121 :ISA MUTATION :OBJECT MV116 :THAT-REL T :CONTEXT MV112 :PRESENT
  "PRESENT" :RAW-TEXT "mutated")
 (:VAR MV112 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV115 :ISA SOME :WORD "some"))

___________________
14: "what genes are mutated in breast cancer?"

                    SOURCE-START
e12   MUTATION      1 "what genes are mutated in breast cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are mutated in breast cancer?"
 (:VAR MV129 :ISA MUTATION :OBJECT MV125 :CONTEXT MV123 :PRESENT "PRESENT"
  :RAW-TEXT "mutated")
 (:VAR MV125 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV123 :ISA CANCER :NAME "breast cancer" :UID "TS-0591"))

___________________
15: "Does phosphorylation at S221 activate MAP2K2?"

                    SOURCE-START
e18   BIO-ACTIVATE  1 "Does phosphorylation at S221 activate MAP2K2" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylation at S221 activate MAP2K2?"
 (:VAR MV142 :ISA POLAR-QUESTION :STATEMENT MV140)
 (:VAR MV140 :ISA BIO-ACTIVATE :AGENT MV133 :OBJECT MV131 :RAW-TEXT "activate")
 (:VAR MV133 :ISA PHOSPHORYLATE :SITE MV139 :RAW-TEXT "phosphorylation")
 (:VAR MV139 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S221" :POSITION MV137
  :AMINO-ACID MV136)
 (:VAR MV137 :ISA NUMBER :VALUE 221)
 (:VAR MV136 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV131 :ISA PROTEIN :RAW-TEXT "MAP2K2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN"))

___________________
16: "Does phosphorylation at S222 activate MAP2K1?"

                    SOURCE-START
e18   BIO-ACTIVATE  1 "Does phosphorylation at S222 activate MAP2K1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylation at S222 activate MAP2K1?"
 (:VAR MV154 :ISA POLAR-QUESTION :STATEMENT MV152)
 (:VAR MV152 :ISA BIO-ACTIVATE :AGENT MV145 :OBJECT MV143 :RAW-TEXT "activate")
 (:VAR MV145 :ISA PHOSPHORYLATE :SITE MV151 :RAW-TEXT "phosphorylation")
 (:VAR MV151 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S222" :POSITION MV149
  :AMINO-ACID MV148)
 (:VAR MV149 :ISA NUMBER :VALUE 222)
 (:VAR MV148 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV143 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
17: "Simulate the MAP2K1-MAPK1 complex"

                    SOURCE-START
e12   SIMULATE      1 "Simulate the MAP2K1-MAPK1 complex" 11
                    END-OF-SOURCE
("Simulate the MAP2K1-MAPK1 complex"
 (:VAR MV157 :ISA SIMULATE :OBJECT MV161 :PRESENT "PRESENT" :RAW-TEXT
  "Simulate")
 (:VAR MV161 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV156 :COMPONENT MV155)
 (:VAR MV156 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV155 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
18: "What are the members of ERK?"

                    SOURCE-START
e12   BE            1 "What are the members of ERK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of ERK?"
 (:VAR MV163 :ISA BE :SUBJECT MV162 :PREDICATE MV165 :PRESENT "PRESENT")
 (:VAR MV162 :ISA WHAT)
 (:VAR MV165 :ISA MEMBER :SET MV167 :HAS-DETERMINER "THE")
 (:VAR MV167 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV170 :ISA BE :SUBJECT MV169 :PREDICATE MV172 :PRESENT "PRESENT")
 (:VAR MV169 :ISA WHAT)
 (:VAR MV172 :ISA MEMBER :SET MV174 :HAS-DETERMINER "THE")
 (:VAR MV174 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV177 :ISA BE :SUBJECT MV176 :PREDICATE MV179 :PRESENT "PRESENT")
 (:VAR MV176 :ISA WHAT)
 (:VAR MV179 :ISA MEMBER :SET MV181 :HAS-DETERMINER "THE")
 (:VAR MV181 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
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
 (:VAR MV184 :ISA BE :SUBJECT MV183 :PREDICATE MV186 :PRESENT "PRESENT")
 (:VAR MV183 :ISA WHAT)
 (:VAR MV186 :ISA MEMBER :SET MV192 :HAS-DETERMINER "THE")
 (:VAR MV192 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME
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
 (:VAR MV196 :ISA BE :SUBJECT MV195 :PREDICATE MV198 :PRESENT "PRESENT")
 (:VAR MV195 :ISA WHAT)
 (:VAR MV198 :ISA MEMBER :SET MV194 :HAS-DETERMINER "THE")
 (:VAR MV194 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAS family"
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
 (:VAR MV203 :ISA BE :SUBJECT MV202 :PREDICATE MV206 :PRESENT "PRESENT")
 (:VAR MV202 :ISA WHAT)
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
 (:VAR MV213 :ISA BE :SUBJECT MV212 :PREDICATE MV216 :PRESENT "PRESENT")
 (:VAR MV212 :ISA WHAT)
 (:VAR MV216 :ISA HAS-NAME :ITEM MV211 :QUANTIFIER MV214)
 (:VAR MV211 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV214 :ISA ANOTHER :WORD "another"))

___________________
25: "How does STAT3 affect c-fos"

                    SOURCE-START
e9    AFFECT        1 "How does STAT3 affect c-fos" 9
                    END-OF-SOURCE
("How does STAT3 affect c-fos"
 (:VAR MV224 :ISA AFFECT :MANNER MV222 :AGENT MV220 :OBJECT MV221 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV222 :ISA HOW)
 (:VAR MV220 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV221 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
26: "List some genes regulated by elk1"

                    SOURCE-START
e11   LIST          1 "List some genes regulated by elk1" 8
                    END-OF-SOURCE
("List some genes regulated by elk1"
 (:VAR MV226 :ISA LIST :THEME MV228 :PRESENT "PRESENT")
 (:VAR MV228 :ISA GENE :PREDICATION MV229 :QUANTIFIER MV227 :RAW-TEXT "genes")
 (:VAR MV229 :ISA REGULATE :OBJECT MV228 :AGENT MV225 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV225 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV227 :ISA SOME :WORD "some"))

___________________
27: "List some of the genes regulated by elk1"

                    SOURCE-START
e17   LIST          1 "List some of the genes regulated by elk1" 10
                    END-OF-SOURCE
("List some of the genes regulated by elk1"
 (:VAR MV233 :ISA LIST :THEME MV237 :PRESENT "PRESENT")
 (:VAR MV237 :ISA GENE :PREDICATION MV238 :QUANTIFIER MV234 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV238 :ISA REGULATE :OBJECT MV237 :AGENT MV232 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV232 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV234 :ISA SOME :WORD "some"))

___________________
28: "List the genes regulated by elk1"

                    SOURCE-START
e12   LIST          1 "List the genes regulated by elk1" 8
                    END-OF-SOURCE
("List the genes regulated by elk1"
 (:VAR MV244 :ISA LIST :THEME MV246 :PRESENT "PRESENT")
 (:VAR MV246 :ISA GENE :PREDICATION MV247 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV247 :ISA REGULATE :OBJECT MV246 :AGENT MV243 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV243 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
29: "What are the common upstream regulators of AKT1 and BRAF?"

                    SOURCE-START
e21   BE            1 "What are the common upstream regulators of AKT1 and BRAF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of AKT1 and BRAF?"
 (:VAR MV252 :ISA BE :SUBJECT MV251 :PREDICATE MV257 :PRESENT "PRESENT")
 (:VAR MV251 :ISA WHAT)
 (:VAR MV257 :ISA REGULATOR :THEME MV261 :HAS-DETERMINER "THE" :PREDICATION
  MV254 :CONTEXT MV255 :RAW-TEXT "regulators")
 (:VAR MV261 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV250 MV260))
 (:VAR MV250 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV260 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV254 :ISA COMMON)
 (:VAR MV255 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
30: "What are the common upstreams of AKT and BRAF?"

                    SOURCE-START
e17   BE            1 "What are the common upstreams of AKT and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT and BRAF?"
 (:VAR MV264 :ISA BE :SUBJECT MV263 :PREDICATE MV267 :PRESENT "PRESENT")
 (:VAR MV263 :ISA WHAT)
 (:VAR MV267 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV272 :HAS-DETERMINER
  "THE" :PREDICATION MV266 :RAW-TEXT "upstreams")
 (:VAR MV272 :ISA COLLECTION :RAW-TEXT "AKT and BRAF" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV269 MV271))
 (:VAR MV269 :ISA PROTEIN-FAMILY :RAW-TEXT "AKT" :NAME "Rac" :COUNT 3
  :FAMILY-MEMBERS
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
 (:VAR MV276 :ISA BE :SUBJECT MV275 :PREDICATE MV279 :PRESENT "PRESENT")
 (:VAR MV275 :ISA WHAT)
 (:VAR MV279 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV283 :HAS-DETERMINER
  "THE" :PREDICATION MV278 :RAW-TEXT "upstreams")
 (:VAR MV283 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV274 MV282))
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
 (:VAR MV287 :ISA BE :SUBJECT MV286 :PREDICATE MV289 :PRESENT "PRESENT")
 (:VAR MV286 :ISA WHAT)
 (:VAR MV289 :ISA GENE :PREDICATION MV291 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV291 :ISA REGULATE :OBJECT MV289 :THAT-REL T :AGENT MV285 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV285 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
33: "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e27   BE            1 "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV296 :ISA BE :SUBJECT MV295 :PREDICATE MV298 :PRESENT "PRESENT")
 (:VAR MV295 :ISA WHAT)
 (:VAR MV298 :ISA MICRO-RNA :PREDICATION MV300 :HAS-DETERMINER "THE" :RAW-TEXT
  "miRNAs")
 (:VAR MV300 :ISA REGULATE :AGENT MV298 :THAT-REL T :OBJECT MV304 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV304 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3" :TYPE
  PROTEIN :NUMBER 5 :ITEMS (MV301 MV302 MV292 MV293 MV294))
 (:VAR MV301 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV302 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV292 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV293 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME "JAK2_HUMAN")
 (:VAR MV294 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
34: "What are the miRNAs that regulate EGFR, SRF, and STAT3"

                    SOURCE-START
e22   BE            1 "What are the miRNAs that regulate EGFR, SRF, and STAT3" 14
                    END-OF-SOURCE
("What are the miRNAs that regulate EGFR, SRF, and STAT3"
 (:VAR MV307 :ISA BE :SUBJECT MV306 :PREDICATE MV309 :PRESENT "PRESENT")
 (:VAR MV306 :ISA WHAT)
 (:VAR MV309 :ISA MICRO-RNA :PREDICATION MV311 :HAS-DETERMINER "THE" :RAW-TEXT
  "miRNAs")
 (:VAR MV311 :ISA REGULATE :AGENT MV309 :THAT-REL T :OBJECT MV315 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV315 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, and STAT3" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV312 MV313 MV305))
 (:VAR MV312 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV313 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV305 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
35: "What are the regulators of SRF?"

                    SOURCE-START
e12   BE            1 "What are the regulators of SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SRF?"
 (:VAR MV317 :ISA BE :SUBJECT MV316 :PREDICATE MV319 :PRESENT "PRESENT")
 (:VAR MV316 :ISA WHAT)
 (:VAR MV319 :ISA REGULATOR :THEME MV321 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV321 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
36: "What does STAT3 regulate in the liver?"

                    SOURCE-START
e14   REGULATE      1 "What does STAT3 regulate in the liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 regulate in the liver?"
 (:VAR MV326 :ISA REGULATE :OBJECT MV324 :AGENT MV323 :ORGAN MV329 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV324 :ISA WHAT)
 (:VAR MV323 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV329 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
37: "What does it regulate in the liver?"

                    SOURCE-START
e14   REGULATE      1 "What does it regulate in the liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it regulate in the liver?"
 (:VAR MV334 :ISA REGULATE :OBJECT MV331 :AGENT-OR-CAUSE MV333 :ORGAN MV337
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV331 :ISA WHAT) (:VAR MV333 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV337 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
38: "What genes are regulated by SMAD2?"

                    SOURCE-START
e12   REGULATE      1 "What genes are regulated by SMAD2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SMAD2?"
 (:VAR MV345 :ISA REGULATE :OBJECT MV341 :AGENT MV339 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV341 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV339 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
39: "What genes are regulated by SMDA2?"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by SMDA2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SMDA2?"
 (:VAR MV355 :ISA REGULATE :OBJECT MV348 :AGENT MV354 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV348 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV354 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
40: "What genes are regulated by SRF?"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SRF?"
 (:VAR MV363 :ISA REGULATE :OBJECT MV358 :AGENT MV362 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV358 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV362 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
41: "Which of these are regulated by SMAD2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by SMAD2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by SMAD2?"
 (:VAR MV372 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV368 :AGENT MV365
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV368 :ISA THESE :QUANTIFIER MV366 :WORD "these")
 (:VAR MV366 :ISA WHICH)
 (:VAR MV365 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
42: "Which of these are regulated by SMDA2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by SMDA2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by SMDA2?"
 (:VAR MV382 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV378 :AGENT MV375
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV378 :ISA THESE :QUANTIFIER MV376 :WORD "these")
 (:VAR MV376 :ISA WHICH) (:VAR MV375 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
43: "Which pathways use these?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use these?"
 (:VAR MV388 :ISA BIO-USE :AGENT MV386 :OBJECT MV389 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV386 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV389 :ISA THESE :WORD "these"))

___________________
44: "Where does STAT3 regulate the expression of c-fos?"

                    SOURCE-START
e17   REGULATE      1 "Where does STAT3 regulate the expression of c-fos" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Where does STAT3 regulate the expression of c-fos?"
 (:VAR MV394 :ISA REGULATE :LOCATION MV392 :AGENT MV390 :AFFECTED-PROCESS MV396
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV392 :ISA WHERE)
 (:VAR MV390 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV396 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV391 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV391 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
45: "can you tell me all the transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e35   TELL          1 "can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    END-OF-SOURCE
("can you tell me all the transcription factors that are shared by elk1 and srf"
 (:VAR MV416 :ISA POLAR-QUESTION :STATEMENT MV403)
 (:VAR MV403 :ISA TELL :AGENT MV402 :THEME MV399 :BENEFICIARY MV404 :MODAL
  "CAN")
 (:VAR MV402 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV399 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV414 :QUANTIFIER MV405
  :HAS-DETERMINER "THE" :RAW-TEXT "transcription factors")
 (:VAR MV414 :ISA SHARE :OBJECT MV399 :THAT-REL T :PARTICIPANT MV413 :MODAL
  "CAN" :RAW-TEXT "shared")
 (:VAR MV413 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV400 MV412))
 (:VAR MV400 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV412 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV405 :ISA ALL :WORD "all")
 (:VAR MV404 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
46: "can you tell me which transcription factors are shared by elk1 and srf"

                    SOURCE-START
e28   TELL          1 "can you tell me which transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("can you tell me which transcription factors are shared by elk1 and srf"
 (:VAR MV432 :ISA POLAR-QUESTION :STATEMENT MV421)
 (:VAR MV421 :ISA TELL :AGENT MV420 :THEME MV430 :THEME MV422 :MODAL "CAN")
 (:VAR MV420 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV430 :ISA SHARE :OBJECT MV417 :PARTICIPANT MV429 :MODAL "CAN" :RAW-TEXT
  "shared")
 (:VAR MV417 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV429 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV418 MV428))
 (:VAR MV418 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV428 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV422 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
47: "what are the regulators of SRF?"

                    SOURCE-START
e12   BE            1 "what are the regulators of SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what are the regulators of SRF?"
 (:VAR MV434 :ISA BE :SUBJECT MV433 :PREDICATE MV436 :PRESENT "PRESENT")
 (:VAR MV433 :ISA WHAT)
 (:VAR MV436 :ISA REGULATOR :THEME MV438 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV438 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
48: "what does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "what does stat regulate" 5
                    END-OF-SOURCE
("what does stat regulate"
 (:VAR MV443 :ISA REGULATE :OBJECT MV440 :AGENT MV442 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV440 :ISA WHAT)
 (:VAR MV442 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
49: "what is erbb?"

                    SOURCE-START
e4    BE            1 "what is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("what is erbb?"
 (:VAR MV445 :ISA BE :SUBJECT MV444 :PREDICATE MV446 :PRESENT "PRESENT")
 (:VAR MV444 :ISA WHAT)
 (:VAR MV446 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
50: "Is STAT3 involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "Is STAT3 involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptosis?"
 (:VAR MV454 :ISA POLAR-QUESTION :STATEMENT MV453)
 (:VAR MV453 :ISA INVOLVE :THEME MV447 :THEME MV451 :PAST "PAST")
 (:VAR MV447 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV451 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
51: "Is STAT3 involved in apoptotic regulation?"

                    SOURCE-START
e14   INVOLVE       1 "Is STAT3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptotic regulation?"
 (:VAR MV464 :ISA POLAR-QUESTION :STATEMENT MV463)
 (:VAR MV463 :ISA INVOLVE :THEME MV455 :THEME MV461 :PAST "PAST")
 (:VAR MV455 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV461 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV459 :RAW-TEXT
  "regulation")
 (:VAR MV459 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
52: "Is STAT3 involved in regulating apoptosis?"

                    SOURCE-START
e13   INVOLVE       1 "Is STAT3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in regulating apoptosis?"
 (:VAR MV473 :ISA POLAR-QUESTION :STATEMENT MV472)
 (:VAR MV472 :ISA INVOLVE :THEME MV465 :THEME MV469 :PAST "PAST")
 (:VAR MV465 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV469 :ISA REGULATE :AFFECTED-PROCESS MV470 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV470 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
53: "What apoptotic genes are regulated by STAT3"

                    SOURCE-START
e15   REGULATE      1 "What apoptotic genes are regulated by STAT3" 9
                    END-OF-SOURCE
("What apoptotic genes are regulated by STAT3"
 (:VAR MV482 :ISA REGULATE :OBJECT MV478 :AGENT MV474 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV478 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV476 :RAW-TEXT
  "genes")
 (:VAR MV476 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV474 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
54: "List the apoptotic genes"

                    SOURCE-START
e8    LIST          1 "List the apoptotic genes" 5
                    END-OF-SOURCE
("List the apoptotic genes"
 (:VAR MV484 :ISA LIST :THEME MV488 :PRESENT "PRESENT")
 (:VAR MV488 :ISA GENE :HAS-DETERMINER "THE" :CELLULAR-PROCESS MV486 :RAW-TEXT
  "genes")
 (:VAR MV486 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
55: "What genes regulated by STAT3 are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes regulated by STAT3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by STAT3 are involved in apoptosis?"
 (:VAR MV498 :ISA INVOLVE :THEME MV491 :THEME MV497 :PRESENT "PRESENT")
 (:VAR MV491 :ISA GENE :PREDICATION MV492 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV492 :ISA REGULATE :OBJECT MV491 :AGENT MV489 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV489 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV497 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
56: "List genes regulated by STAT3"

                    SOURCE-START
e9    LIST          1 "List genes regulated by STAT3" 7
                    END-OF-SOURCE
("List genes regulated by STAT3"
 (:VAR MV502 :ISA LIST :THEME MV503 :PRESENT "PRESENT")
 (:VAR MV503 :ISA GENE :PREDICATION MV504 :RAW-TEXT "genes")
 (:VAR MV504 :ISA REGULATE :OBJECT MV503 :AGENT MV501 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV501 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
57: "What genes are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What genes are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in apoptosis?"
 (:VAR MV513 :ISA INVOLVE :THEME MV508 :THEME MV512 :PRESENT "PRESENT")
 (:VAR MV508 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV512 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
58: "What genes that STAT3 regulates are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes that STAT3 regulates are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes that STAT3 regulates are involved in apoptosis?"
 (:VAR MV524 :ISA INVOLVE :THEME MV517 :THEME MV523 :PRESENT "PRESENT")
 (:VAR MV517 :ISA GENE :PREDICATION MV519 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV519 :ISA REGULATE :OBJECT MV517 :THAT-REL T :AGENT MV515 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV515 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV523 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
59: "List the genes regulated by STAT3"

                    SOURCE-START
e12   LIST          1 "List the genes regulated by STAT3" 8
                    END-OF-SOURCE
("List the genes regulated by STAT3"
 (:VAR MV527 :ISA LIST :THEME MV529 :PRESENT "PRESENT")
 (:VAR MV529 :ISA GENE :PREDICATION MV530 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV530 :ISA REGULATE :OBJECT MV529 :AGENT MV526 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV526 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
60: "List the STAT3 regulated genes"

                    SOURCE-START
e11   LIST          1 "List the STAT3 regulated genes" 7
                    END-OF-SOURCE
("List the STAT3 regulated genes"
 (:VAR MV534 :ISA LIST :THEME MV537 :PRESENT "PRESENT")
 (:VAR MV537 :ISA GENE :HAS-DETERMINER "THE" :PREDICATION MV536 :RAW-TEXT
  "genes")
 (:VAR MV536 :ISA REGULATE :OBJECT MV537 :AGENT MV533 :RAW-TEXT "regulated")
 (:VAR MV533 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
61: "What kinases are regulated by STAT3?"

                    SOURCE-START
e12   REGULATE      1 "What kinases are regulated by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are regulated by STAT3?"
 (:VAR MV544 :ISA REGULATE :OBJECT MV540 :AGENT MV538 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV540 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV538 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
62: "What kinases are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What kinases are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are involved in apoptosis?"
 (:VAR MV552 :ISA INVOLVE :THEME MV547 :THEME MV551 :PRESENT "PRESENT")
 (:VAR MV547 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV551 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
63: "What STAT3 regulated genes are involved in aptosis"

                    SOURCE-START
e17   IN            1 "What STAT3 regulated genes are involved in aptosis" 10
                    END-OF-SOURCE
("What STAT3 regulated genes are involved in aptosis"
 (:VAR MV564 :ISA WH-QUESTION :STATEMENT MV563 :VAR NIL :WH WHAT)
 (:VAR MV563 :ISA PREPOSITIONAL-PHRASE :POBJ MV561 :PREP "IN")
 (:VAR MV561 :ISA APTOSIS))

___________________
64: "Let me know if any of the genes stat3 regulates are involved in apoptosis"

                    SOURCE-START
e31   LET           1 "Let me know if any of the genes stat3 regulates are involved in apoptosis" 16
                    END-OF-SOURCE
("Let me know if any of the genes stat3 regulates are involved in apoptosis"
 (:VAR MV566 :ISA LET :COMPLEMENT MV583 :PRESENT "PRESENT")
 (:VAR MV583 :ISA KNOW :AGENT MV567 :STATEMENT MV582 :PRESENT "PRESENT")
 (:VAR MV567 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV582 :ISA WH-QUESTION :STATEMENT MV579 :WH IF)
 (:VAR MV579 :ISA INVOLVE :THEME MV573 :THEME MV578 :PRESENT "PRESENT")
 (:VAR MV573 :ISA GENE :QUANTIFIER MV570 :PREDICATION MV574 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV570 :ISA ANY :WORD "any")
 (:VAR MV574 :ISA REGULATE :OBJECT MV573 :AGENT MV565 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV565 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV578 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
65: "Let me know whether any of the genes stat3 regulates are involved in apoptosis"

                    SOURCE-START
e32   LET           1 "Let me know whether any of the genes stat3 regulates are involved in apoptosis" 16
                    END-OF-SOURCE
("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
 (:VAR MV585 :ISA LET :COMPLEMENT MV603 :PRESENT "PRESENT")
 (:VAR MV603 :ISA KNOW :AGENT MV586 :STATEMENT MV602 :PRESENT "PRESENT")
 (:VAR MV586 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV602 :ISA WH-QUESTION :STATEMENT MV599 :WH WHETHER)
 (:VAR MV599 :ISA INVOLVE :THEME MV593 :THEME MV598 :PRESENT "PRESENT")
 (:VAR MV593 :ISA GENE :QUANTIFIER MV590 :PREDICATION MV594 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV590 :ISA ANY :WORD "any")
 (:VAR MV594 :ISA REGULATE :OBJECT MV593 :AGENT MV584 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV584 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV598 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

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
 (:VAR MV633 :ISA TELL :THEME MV642 :BENEFICIARY MV634 :PRESENT "PRESENT")
 (:VAR MV642 :ISA WH-QUESTION :STATEMENT MV640 :WH IF)
 (:VAR MV640 :ISA INVOLVE :THEME MV632 :THEME MV639 :PRESENT "PRESENT")
 (:VAR MV632 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV639 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV634 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
69: "Tell me whether stat3 is involved in apoptosis"

                    SOURCE-START
e17   TELL          1 "Tell me whether stat3 is involved in apoptosis" 10
                    END-OF-SOURCE
("Tell me whether stat3 is involved in apoptosis"
 (:VAR MV644 :ISA TELL :THEME MV654 :THEME MV645 :PRESENT "PRESENT")
 (:VAR MV654 :ISA WH-QUESTION :STATEMENT MV652 :WH WHETHER)
 (:VAR MV652 :ISA INVOLVE :THEME MV643 :THEME MV651 :PRESENT "PRESENT")
 (:VAR MV643 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV651 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV645 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
70: "What are STAT3 regulated genes that are involved in apoptosis. "

                    SOURCE-START
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    PERIOD
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis."
 (:VAR MV657 :ISA BE :SUBJECT MV656 :PREDICATE MV659 :PRESENT "PRESENT")
 (:VAR MV656 :ISA WHAT)
 (:VAR MV659 :ISA GENE :PREDICATION MV665 :EXPRESSES MV655 :PREDICATION MV658
  :RAW-TEXT "genes")
 (:VAR MV665 :ISA INVOLVE :THEME MV659 :THAT-REL T :THEME MV664 :PRESENT
  "PRESENT")
 (:VAR MV664 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV655 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV658 :ISA REGULATE :OBJECT MV659 :RAW-TEXT "regulated"))

___________________
71: "What are STAT3 regulated genes that are involved in apoptosis?"

                    SOURCE-START
e23   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis?"
 (:VAR MV669 :ISA BE :SUBJECT MV668 :PREDICATE MV671 :PRESENT "PRESENT")
 (:VAR MV668 :ISA WHAT)
 (:VAR MV671 :ISA GENE :PREDICATION MV677 :EXPRESSES MV667 :PREDICATION MV670
  :RAW-TEXT "genes")
 (:VAR MV677 :ISA INVOLVE :THEME MV671 :THAT-REL T :THEME MV676 :PRESENT
  "PRESENT")
 (:VAR MV676 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV667 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV670 :ISA REGULATE :OBJECT MV671 :RAW-TEXT "regulated"))

___________________
72: "What genes downstream of stat3 are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes downstream of stat3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes downstream of stat3 are involved in apoptosis?"
 (:VAR MV689 :ISA INVOLVE :THEME MV682 :THEME MV688 :PRESENT "PRESENT")
 (:VAR MV682 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV679 :HAS-DETERMINER
  "WHAT" :MODIFIER MV681 :RAW-TEXT "downstream")
 (:VAR MV679 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV681 :ISA GENE :RAW-TEXT "genes")
 (:VAR MV688 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
73: "What is the involvement of stat3 in apoptotic regulation?"

                    SOURCE-START
e21   BE            1 "What is the involvement of stat3 in apoptotic regulation" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the involvement of stat3 in apoptotic regulation?"
 (:VAR MV694 :ISA BE :SUBJECT MV693 :PREDICATE MV696 :PRESENT "PRESENT")
 (:VAR MV693 :ISA WHAT)
 (:VAR MV696 :ISA INVOLVE :THEME MV701 :PARTICIPANT MV692 :HAS-DETERMINER
  "THE")
 (:VAR MV701 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV699 :RAW-TEXT
  "regulation")
 (:VAR MV699 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV692 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
74: "What pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve calcium?"
 (:VAR MV706 :ISA INVOLVE :THEME MV705 :THEME MV707 :PRESENT "PRESENT")
 (:VAR MV705 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV707 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
75: "What processes involve srf"

                    SOURCE-START
e7    INVOLVE       1 "What processes involve srf" 5
                    END-OF-SOURCE
("What processes involve srf"
 (:VAR MV711 :ISA INVOLVE :THEME MV709 :THEME MV712 :PRESENT "PRESENT")
 (:VAR MV709 :ISA BIO-PROCESS :HAS-DETERMINER "WHAT" :RAW-TEXT "processes")
 (:VAR MV712 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
76: "Which stat3 regulated genes are involved in apoptosis?"

                    SOURCE-START
e17   INVOLVE       1 "Which stat3 regulated genes are involved in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes are involved in apoptosis?"
 (:VAR MV721 :ISA INVOLVE :THEME MV716 :THEME MV720 :PRESENT "PRESENT")
 (:VAR MV716 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV715 :RAW-TEXT
  "genes")
 (:VAR MV715 :ISA REGULATE :OBJECT MV716 :AGENT MV713 :RAW-TEXT "regulated")
 (:VAR MV713 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV720 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
77: "Which stat3 regulated genes in the liver are involved in apoptosis?"

                    SOURCE-START
e25   INVOLVE       1 "Which stat3 regulated genes in the liver are involved in apoptosis" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes in the liver are involved in apoptosis?"
 (:VAR MV734 :ISA INVOLVE :THEME MV726 :THEME MV733 :PRESENT "PRESENT")
 (:VAR MV726 :ISA GENE :ORGAN MV729 :HAS-DETERMINER "WHICH" :PREDICATION MV725
  :RAW-TEXT "genes")
 (:VAR MV729 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV725 :ISA REGULATE :OBJECT MV726 :AGENT MV723 :RAW-TEXT "regulated")
 (:VAR MV723 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV733 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
78: "Which stat3-regulated genes are involved in apoptosis?"

                    SOURCE-START
e18   INVOLVE       1 "Which stat3-regulated genes are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3-regulated genes are involved in apoptosis?"
 (:VAR MV745 :ISA INVOLVE :THEME MV740 :THEME MV744 :PRESENT "PRESENT")
 (:VAR MV740 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV739 :RAW-TEXT
  "genes")
 (:VAR MV739 :ISA REGULATE :OBJECT MV740 :AGENT MV737 :RAW-TEXT "regulated")
 (:VAR MV737 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV744 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
79: "Mek activates MAPK1."

                    SOURCE-START
e5    BIO-ACTIVATE  1 "Mek activates MAPK1" 5
                    PERIOD
                    END-OF-SOURCE
("Mek activates MAPK1."
 (:VAR MV749 :ISA BIO-ACTIVATE :AGENT MV748 :OBJECT MV747 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV748 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV747 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
80: "NRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "NRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("NRAS activates RAF."
 (:VAR MV751 :ISA BIO-ACTIVATE :AGENT MV750 :OBJECT MV752 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV750 :ISA PROTEIN :RAW-TEXT "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV752 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
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
 (:VAR MV755 :ISA PHOSPHORYLATE :AGENT MV753 :SUBSTRATE MV754 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV753 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV754 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN"))

___________________
82: "DUSP6 dephosphorylates MAPK1"

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1"
 (:VAR MV758 :ISA DEPHOSPHORYLATE :AGENT MV756 :SUBSTRATE MV757 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV756 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV757 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
83: "ELK1 positively regulates FOS."

                    SOURCE-START
e6    UPREGULATE    1 "ELK1 positively regulates FOS" 6
                    PERIOD
                    END-OF-SOURCE
("ELK1 positively regulates FOS."
 (:VAR MV760 :ISA UPREGULATE :AGENT MV759 :OBJECT MV761 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV759 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV761 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
84: "EGFR binds the growth factor ligand EGF."

                    SOURCE-START
e13   BINDING       1 "EGFR binds the growth factor ligand EGF" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR binds the growth factor ligand EGF."
 (:VAR MV765 :ISA BINDING :BINDER MV764 :DIRECT-BINDEE MV768 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV764 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV768 :ISA PROTEIN :HAS-DETERMINER "THE" :MODIFIER MV763 :MODIFIER MV767
  :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV763 :ISA GROWTH-FACTOR :RAW-TEXT "growth factor")
 (:VAR MV767 :ISA LIGAND :RAW-TEXT "ligand"))

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
 (:VAR MV775 :ISA BINDING :BINDER MV782 :DIRECT-BINDEE MV783 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV782 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGF"
  :COMPONENT MV773 :COMPONENT MV772)
 (:VAR MV773 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV772 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV783 :ISA BIO-COMPLEX :QUANTIFIER MV776 :RAW-TEXT "EGFR-EGF" :COMPONENT
  MV778 :COMPONENT MV777)
 (:VAR MV776 :ISA ANOTHER :WORD "another")
 (:VAR MV778 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV777 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN"))

___________________
87: "The EGFR-EGFR complex binds GRB2."

                    SOURCE-START
e13   BINDING       1 "The EGFR-EGFR complex binds GRB2" 9
                    PERIOD
                    END-OF-SOURCE
("The EGFR-EGFR complex binds GRB2."
 (:VAR MV789 :ISA BINDING :BINDER MV791 :DIRECT-BINDEE MV784 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV791 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGFR"
  :COMPONENT MV786 :COMPONENT MV786)
 (:VAR MV786 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV786 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV784 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN"))

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
 (:VAR MV798 :ISA BINDING :BINDER MV794 :DIRECT-BINDEE MV795 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV794 :ISA PROTEIN :PREDICATION MV797 :RAW-TEXT "GRB2" :UID "UP:P62993"
  :NAME "GRB2_HUMAN")
 (:VAR MV797 :ISA BINDING :DIRECT-BINDEE MV794 :BINDER MV796 :RAW-TEXT "bound")
 (:VAR MV796 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV795 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN"))

___________________
90: "GRB2-bound SOS1 binds NRAS that is not bound to BRAF."

                    SOURCE-START
e27   BINDING       1 "GRB2-bound SOS1 binds NRAS that is not bound to BRAF" 15
                    PERIOD
                    END-OF-SOURCE
("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
 (:VAR MV802 :ISA BINDING :BINDER MV800 :DIRECT-BINDEE MV803 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV800 :ISA PROTEIN :PREDICATION MV801 :RAW-TEXT "SOS1" :UID "UP:Q07889"
  :NAME "SOS1_HUMAN")
 (:VAR MV801 :ISA BINDING :DIRECT-BINDEE MV800 :BINDER MV799 :RAW-TEXT "bound")
 (:VAR MV799 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME "GRB2_HUMAN")
 (:VAR MV803 :ISA PROTEIN :PREDICATION MV810 :RAW-TEXT "NRAS" :UID "UP:P01111"
  :NAME "RASN_HUMAN")
 (:VAR MV810 :ISA BINDING :DIRECT-BINDEE MV803 :THAT-REL T :BINDEE MV809
  :PRESENT "PRESENT" :NEGATION MV806 :RAW-TEXT "bound")
 (:VAR MV809 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV806 :ISA NOT :WORD "not"))

___________________
91: "SOS1-bound NRAS binds GTP."

                    SOURCE-START
e11   BINDING       1 "SOS1-bound NRAS binds GTP" 8
                    PERIOD
                    END-OF-SOURCE
("SOS1-bound NRAS binds GTP."
 (:VAR MV815 :ISA BINDING :BINDER MV814 :DIRECT-BINDEE MV816 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV814 :ISA PROTEIN :PREDICATION MV813 :RAW-TEXT "NRAS" :UID "UP:P01111"
  :NAME "RASN_HUMAN")
 (:VAR MV813 :ISA BINDING :DIRECT-BINDEE MV814 :BINDER MV812 :RAW-TEXT "bound")
 (:VAR MV812 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV816 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP"))

___________________
92: "GTP-bound NRAS that is not bound to SOS1 binds BRAF."

                    SOURCE-START
e26   BINDING       1 "GTP-bound NRAS that is not bound to SOS1 binds BRAF" 14
                    PERIOD
                    END-OF-SOURCE
("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
 (:VAR MV826 :ISA BINDING :BINDER MV820 :DIRECT-BINDEE MV827 :PRESENT "PRESENT"
  :RAW-TEXT "binds")
 (:VAR MV820 :ISA PROTEIN :PREDICATION MV828 :PREDICATION MV819 :RAW-TEXT
  "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV828 :ISA BINDING :DIRECT-BINDEE MV820 :THAT-REL T :BINDEE MV817
  :PRESENT "PRESENT" :NEGATION MV823 :RAW-TEXT "bound")
 (:VAR MV817 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV823 :ISA NOT :WORD "not")
 (:VAR MV819 :ISA BINDING :DIRECT-BINDEE MV820 :BINDER MV818 :RAW-TEXT "bound")
 (:VAR MV818 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP")
 (:VAR MV827 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN"))

___________________
93: "Undo"

                    SOURCE-START
e0    UNDO          1 "Undo" 2
                    END-OF-SOURCE
("Undo" (:VAR MV830 :ISA UNDO :PRESENT "PRESENT" :RAW-TEXT "Undo"))

___________________
94: "How does BRAF affect MAP2K1?"

                    SOURCE-START
e8    AFFECT        1 "How does BRAF affect MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does BRAF affect MAP2K1?"
 (:VAR MV835 :ISA AFFECT :MANNER MV832 :AGENT MV834 :OBJECT MV831 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV832 :ISA HOW)
 (:VAR MV834 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV831 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
95: "Let's highlight the downstream of AKT1."

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's highlight the downstream of AKT1" 10
                    PERIOD
                    END-OF-SOURCE
("Let's highlight the downstream of AKT1."
 (:VAR MV844 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV838 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV838 :ISA HIGHLIGHT :THEME MV840 :PRESENT "PRESENT")
 (:VAR MV840 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV837 :HAS-DETERMINER
  "THE" :RAW-TEXT "downstream")
 (:VAR MV837 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
96: "Let's move phosphorylated MAPK1 to the bottom."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated MAPK1 to the bottom" 11
                    PERIOD
                    END-OF-SOURCE
("Let's move phosphorylated MAPK1 to the bottom."
 (:VAR MV853 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV847 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV847 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV851 :THEME MV846 :PRESENT
  "PRESENT")
 (:VAR MV851 :ISA BOTTOM :HAS-DETERMINER "THE")
 (:VAR MV846 :ISA PROTEIN :PREDICATION MV848 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV848 :ISA PHOSPHORYLATE :SUBSTRATE MV846 :RAW-TEXT "phosphorylated"))

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
 (:VAR MV870 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV865 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV865 :ISA SHOW :AT-RELATIVE-LOCATION MV868 :STATEMENT-OR-THEME MV864
  :PRESENT "PRESENT")
 (:VAR MV868 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV864 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN"))

___________________
99: "Does ELK1 decrease FOS in the model?"

                    SOURCE-START
e18   DECREASE      1 "Does ELK1 decrease FOS in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ELK1 decrease FOS in the model?"
 (:VAR MV881 :ISA POLAR-QUESTION :STATEMENT MV879)
 (:VAR MV879 :ISA DECREASE :AGENT MV871 :OBJECT MV875 :RAW-TEXT "decrease")
 (:VAR MV871 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV875 :ISA PROTEIN :INFO-CONTEXT MV878 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV878 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
100: "Does ELK1 decrease the amount of FOS in the model?"

                    SOURCE-START
e26   DECREASE      1 "Does ELK1 decrease the amount of FOS in the model" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ELK1 decrease the amount of FOS in the model?"
 (:VAR MV896 :ISA POLAR-QUESTION :STATEMENT MV893)
 (:VAR MV893 :ISA DECREASE :AGENT MV882 :AFFECTED-PROCESS-OR-OBJECT MV887
  :RAW-TEXT "decrease")
 (:VAR MV882 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV887 :ISA BIO-AMOUNT :MEASURED-ITEM MV889 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV889 :ISA PROTEIN :INFO-CONTEXT MV892 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV892 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
101: "Does FOS decrease ELK1 in the model?"

                    SOURCE-START
e18   DECREASE      1 "Does FOS decrease ELK1 in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS decrease ELK1 in the model?"
 (:VAR MV907 :ISA POLAR-QUESTION :STATEMENT MV905)
 (:VAR MV905 :ISA DECREASE :AGENT MV899 :OBJECT MV897 :RAW-TEXT "decrease")
 (:VAR MV899 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV897 :ISA PROTEIN :INFO-CONTEXT MV904 :RAW-TEXT "ELK1" :UID "UP:P19419"
  :NAME "ELK1_HUMAN")
 (:VAR MV904 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
102: "Does FOS vanish if we increase the amount of ELK1 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Does FOS vanish if we increase the amount " 9
e26   OF            9 "of ELK1 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e33   S             1 "Does FOS vanish if we increase the amount " 9
e26   PP            9 "of ELK1 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
103: "Does FOS vanish if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e37   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 by 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV952 :ISA POLAR-QUESTION :STATEMENT MV951)
 (:VAR MV951 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV949 :EVENT MV945)
 (:VAR MV949 :ISA WH-QUESTION :STATEMENT MV946 :WH IF)
 (:VAR MV946 :ISA INCREASE :AGENT-OR-CAUSE MV935 :MULTIPLIER MV944
  :AFFECTED-PROCESS-OR-OBJECT MV939 :RAW-TEXT "increase")
 (:VAR MV935 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV944 :ISA N-FOLD :NUMBER MV943) (:VAR MV943 :ISA NUMBER :VALUE 10)
 (:VAR MV939 :ISA BIO-AMOUNT :MEASURED-ITEM MV930 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV930 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME "ELK1_HUMAN")
 (:VAR MV945 :ISA VANISH :AGENT MV932 :RAW-TEXT "vanish")
 (:VAR MV932 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
104: "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
 (:VAR MV972 :ISA POLAR-QUESTION :STATEMENT MV971)
 (:VAR MV971 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV969 :EVENT MV966)
 (:VAR MV969 :ISA WH-QUESTION :STATEMENT MV967 :WH IF)
 (:VAR MV967 :ISA INCREASE :AGENT-OR-CAUSE MV959 :MULTIPLIER MV965 :OBJECT
  MV954 :RAW-TEXT "increase")
 (:VAR MV959 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV965 :ISA N-FOLD :NUMBER MV964) (:VAR MV964 :ISA NUMBER :VALUE 10)
 (:VAR MV954 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV966 :ISA VANISH :AGENT MV953 :RAW-TEXT "vanish")
 (:VAR MV953 :ISA PROTEIN :PREDICATION MV956 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV956 :ISA PHOSPHORYLATE :SUBSTRATE MV953 :RAW-TEXT "phosphorylated"))

___________________
105: "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e41   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV996 :ISA POLAR-QUESTION :STATEMENT MV995)
 (:VAR MV995 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV993 :EVENT MV989)
 (:VAR MV993 :ISA WH-QUESTION :STATEMENT MV990 :WH IF)
 (:VAR MV990 :ISA INCREASE :AGENT-OR-CAUSE MV979 :MULTIPLIER MV988
  :AFFECTED-PROCESS-OR-OBJECT MV983 :RAW-TEXT "increase")
 (:VAR MV979 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV988 :ISA N-FOLD :NUMBER MV987) (:VAR MV987 :ISA NUMBER :VALUE 10)
 (:VAR MV983 :ISA BIO-AMOUNT :MEASURED-ITEM MV974 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV974 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV989 :ISA VANISH :AGENT MV973 :RAW-TEXT "vanish")
 (:VAR MV973 :ISA PROTEIN :PREDICATION MV976 :RAW-TEXT "MAPK1" :UID "UP:P28482"
  :NAME "MK01_HUMAN")
 (:VAR MV976 :ISA PHOSPHORYLATE :SUBSTRATE MV973 :RAW-TEXT "phosphorylated"))

___________________
106: "Does the amount of phosphorylated MAPK1 ever increase?"

                    SOURCE-START
e21   INCREASE      1 "Does the amount of phosphorylated MAPK1 ever increase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 ever increase?"
 (:VAR MV1008 :ISA POLAR-QUESTION :STATEMENT MV1006)
 (:VAR MV1006 :ISA INCREASE :CAUSE MV1000 :ADVERB MV1003 :RAW-TEXT "increase")
 (:VAR MV1000 :ISA BIO-AMOUNT :MEASURED-ITEM MV997 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV997 :ISA PROTEIN :PREDICATION MV1002 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1002 :ISA PHOSPHORYLATE :SUBSTRATE MV997 :RAW-TEXT "phosphorylated")
 (:VAR MV1003 :ISA EVER :NAME "ever"))

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
 (:VAR MV1030 :ISA POLAR-QUESTION :STATEMENT MV1029)
 (:VAR MV1029 :ISA SUSTAINED :PARTICIPANT MV1025 :PAST "PAST")
 (:VAR MV1025 :ISA PROTEIN :PREDICATION MV1027 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1027 :ISA BINDING :DIRECT-BINDEE MV1025 :BINDER MV1024 :RAW-TEXT
  "bound")
 (:VAR MV1024 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
110: "Is phosphorylated MAPK1 always high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 always high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 always high?"
 (:VAR MV1037 :ISA POLAR-QUESTION :STATEMENT MV1036)
 (:VAR MV1036 :ISA COPULAR-PREDICATION :ITEM MV1031 :VALUE MV1035 :PREDICATE
  MV1032)
 (:VAR MV1031 :ISA PROTEIN :PREDICATION MV1033 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1033 :ISA PHOSPHORYLATE :SUBSTRATE MV1031 :RAW-TEXT "phosphorylated")
 (:VAR MV1035 :ISA HIGH :ADVERB MV1034)
 (:VAR MV1034 :ISA ALWAYS :NAME "always") (:VAR MV1032 :ISA BE))

___________________
111: "Is phosphorylated MAPK1 eventually high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 eventually high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 eventually high?"
 (:VAR MV1044 :ISA POLAR-QUESTION :STATEMENT MV1043)
 (:VAR MV1043 :ISA COPULAR-PREDICATION :ITEM MV1038 :VALUE MV1042 :PREDICATE
  MV1039)
 (:VAR MV1038 :ISA PROTEIN :PREDICATION MV1040 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1040 :ISA PHOSPHORYLATE :SUBSTRATE MV1038 :RAW-TEXT "phosphorylated")
 (:VAR MV1042 :ISA HIGH :ADVERB MV1041)
 (:VAR MV1041 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1039 :ISA BE))

___________________
112: "Is phosphorylated MAPK1 ever high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 ever high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 ever high?"
 (:VAR MV1051 :ISA POLAR-QUESTION :STATEMENT MV1050)
 (:VAR MV1050 :ISA COPULAR-PREDICATION :ITEM MV1045 :VALUE MV1049 :PREDICATE
  MV1046)
 (:VAR MV1045 :ISA PROTEIN :PREDICATION MV1047 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1047 :ISA PHOSPHORYLATE :SUBSTRATE MV1045 :RAW-TEXT "phosphorylated")
 (:VAR MV1049 :ISA HIGH :ADVERB MV1048) (:VAR MV1048 :ISA EVER :NAME "ever")
 (:VAR MV1046 :ISA BE))

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
 (:VAR MV1067 :ISA POLAR-QUESTION :STATEMENT MV1066)
 (:VAR MV1066 :ISA COPULAR-PREDICATION :ITEM MV1062 :VALUE MV1065 :PREDICATE
  MV1063)
 (:VAR MV1062 :ISA PROTEIN :PREDICATION MV1064 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1064 :ISA PHOSPHORYLATE :SUBSTRATE MV1062 :RAW-TEXT "phosphorylated")
 (:VAR MV1065 :ISA HIGH) (:VAR MV1063 :ISA BE))

___________________
115: "Is phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e20   SUSTAINED     1 "Is phosphorylated MAPK1 sustained at a high level" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1079 :ISA POLAR-QUESTION :STATEMENT MV1078)
 (:VAR MV1078 :ISA SUSTAINED :PARTICIPANT MV1068 :LEVEL MV1076 :PAST "PAST")
 (:VAR MV1068 :ISA PROTEIN :PREDICATION MV1070 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1070 :ISA PHOSPHORYLATE :SUBSTRATE MV1068 :RAW-TEXT "phosphorylated")
 (:VAR MV1076 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV1075 :RAW-TEXT
  "level")
 (:VAR MV1075 :ISA HIGH))

___________________
116: "Is phosphorylated MAPK1 sustained?"

                    SOURCE-START
e9    SUSTAINED     1 "Is phosphorylated MAPK1 sustained" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained?"
 (:VAR MV1085 :ISA POLAR-QUESTION :STATEMENT MV1084)
 (:VAR MV1084 :ISA SUSTAINED :PARTICIPANT MV1080 :PAST "PAST")
 (:VAR MV1080 :ISA PROTEIN :PREDICATION MV1082 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1082 :ISA PHOSPHORYLATE :SUBSTRATE MV1080 :RAW-TEXT "phosphorylated"))

___________________
117: "Is phosphorylated MAPK1 transient?"

                    SOURCE-START
e9    COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 transient" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 transient?"
 (:VAR MV1091 :ISA POLAR-QUESTION :STATEMENT MV1090)
 (:VAR MV1090 :ISA COPULAR-PREDICATION :ITEM MV1086 :VALUE MV1089 :PREDICATE
  MV1087)
 (:VAR MV1086 :ISA PROTEIN :PREDICATION MV1088 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1088 :ISA PHOSPHORYLATE :SUBSTRATE MV1086 :RAW-TEXT "phosphorylated")
 (:VAR MV1089 :ISA TRANSIENT) (:VAR MV1087 :ISA BE))

___________________
118: "Is the MAP2K1-MAPK1 complex ever high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the MAP2K1-MAPK1 complex ever high" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex ever high?"
 (:VAR MV1102 :ISA POLAR-QUESTION :STATEMENT MV1101)
 (:VAR MV1101 :ISA COPULAR-PREDICATION :ITEM MV1100 :VALUE MV1098 :PREDICATE
  MV1094)
 (:VAR MV1100 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV1093 :COMPONENT MV1092)
 (:VAR MV1093 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1092 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV1098 :ISA HIGH :ADVERB MV1097) (:VAR MV1097 :ISA EVER :NAME "ever")
 (:VAR MV1094 :ISA BE))

___________________
119: "Is the MAP2K1-MAPK1 complex formed?"

                    SOURCE-START
e14   BIO-FORM      1 "Is the MAP2K1-MAPK1 complex formed" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex formed?"
 (:VAR MV1111 :ISA POLAR-QUESTION :STATEMENT MV1108)
 (:VAR MV1108 :ISA BIO-FORM :AGENT MV1110 :PAST "PAST" :RAW-TEXT "formed")
 (:VAR MV1110 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV1104 :COMPONENT MV1103)
 (:VAR MV1104 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1103 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
120: "Is the amount of FOS always low if we increase ELK1 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 10 fold?"
 (:VAR MV1133 :ISA POLAR-QUESTION :STATEMENT MV1132)
 (:VAR MV1132 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1128 :EVENT MV1130)
 (:VAR MV1128 :ISA WH-QUESTION :STATEMENT MV1123 :WH IF)
 (:VAR MV1123 :ISA INCREASE :AGENT-OR-CAUSE MV1121 :ADVERB MV1127 :PRESENT
  "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1121 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1127 :ISA N-FOLD :NUMBER MV1125) (:VAR MV1125 :ISA NUMBER :VALUE 10)
 (:VAR MV1130 :ISA COPULAR-PREDICATION :ITEM MV1115 :VALUE MV1119 :PREDICATE
  MV1113)
 (:VAR MV1115 :ISA BIO-AMOUNT :MEASURED-ITEM MV1117 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1117 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1119 :ISA LOW :ADVERB MV1118) (:VAR MV1118 :ISA ALWAYS :NAME "always")
 (:VAR MV1113 :ISA BE))

___________________
121: "Is the amount of FOS always low if we increase ELK1 by 100 fold?"

                    SOURCE-START
e36   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 by 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
 (:VAR MV1156 :ISA POLAR-QUESTION :STATEMENT MV1155)
 (:VAR MV1155 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1151 :EVENT MV1153)
 (:VAR MV1151 :ISA WH-QUESTION :STATEMENT MV1145 :WH IF)
 (:VAR MV1145 :ISA INCREASE :AGENT-OR-CAUSE MV1143 :MULTIPLIER MV1149 :OBJECT
  MV1134 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1143 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1149 :ISA N-FOLD :NUMBER MV1148) (:VAR MV1148 :ISA NUMBER :VALUE 100)
 (:VAR MV1134 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1153 :ISA COPULAR-PREDICATION :ITEM MV1137 :VALUE MV1141 :PREDICATE
  MV1135)
 (:VAR MV1137 :ISA BIO-AMOUNT :MEASURED-ITEM MV1139 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1139 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1141 :ISA LOW :ADVERB MV1140) (:VAR MV1140 :ISA ALWAYS :NAME "always")
 (:VAR MV1135 :ISA BE))

___________________
122: "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"

                    SOURCE-START
e40   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount " 13
e30   OF            13 "of ELK1 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e40   S             1 "Is the amount of FOS ever high if we increase the amount " 13
e30   PP            13 "of ELK1 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
123: "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"

                    SOURCE-START
e44   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
 (:VAR MV1209 :ISA POLAR-QUESTION :STATEMENT MV1208)
 (:VAR MV1208 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1204 :EVENT MV1206)
 (:VAR MV1204 :ISA WH-QUESTION :STATEMENT MV1194 :WH IF)
 (:VAR MV1194 :ISA INCREASE :AGENT-OR-CAUSE MV1192 :MULTIPLIER MV1201
  :AFFECTED-PROCESS-OR-OBJECT MV1196 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1192 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1201 :ISA N-FOLD :NUMBER MV1200) (:VAR MV1200 :ISA NUMBER :VALUE 100)
 (:VAR MV1196 :ISA BIO-AMOUNT :MEASURED-ITEM MV1183 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1183 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1206 :ISA COPULAR-PREDICATION :ITEM MV1186 :VALUE MV1190 :PREDICATE
  MV1184)
 (:VAR MV1186 :ISA BIO-AMOUNT :MEASURED-ITEM MV1188 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1188 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1190 :ISA HIGH :ADVERB MV1189) (:VAR MV1189 :ISA EVER :NAME "ever")
 (:VAR MV1184 :ISA BE))

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
e28   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained at a high level" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV1289 :ISA POLAR-QUESTION :STATEMENT MV1288)
 (:VAR MV1288 :ISA SUSTAINED :PARTICIPANT MV1277 :LEVEL MV1285 :PAST "PAST")
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
 (:VAR MV1299 :ISA POLAR-QUESTION :STATEMENT MV1297)
 (:VAR MV1297 :ISA SUSTAINED :PARTICIPANT MV1293 :PAST "PAST")
 (:VAR MV1293 :ISA BIO-AMOUNT :MEASURED-ITEM MV1290 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1290 :ISA PROTEIN :PREDICATION MV1295 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1295 :ISA PHOSPHORYLATE :SUBSTRATE MV1290 :RAW-TEXT "phosphorylated"))

___________________
132: "Is the amount of phosphorylated MAPK1 transient?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 transient" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 transient?"
 (:VAR MV1309 :ISA POLAR-QUESTION :STATEMENT MV1308)
 (:VAR MV1308 :ISA COPULAR-PREDICATION :ITEM MV1303 :VALUE MV1306 :PREDICATE
  MV1301)
 (:VAR MV1303 :ISA BIO-AMOUNT :MEASURED-ITEM MV1300 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1300 :ISA PROTEIN :PREDICATION MV1305 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1305 :ISA PHOSPHORYLATE :SUBSTRATE MV1300 :RAW-TEXT "phosphorylated")
 (:VAR MV1306 :ISA TRANSIENT) (:VAR MV1301 :ISA BE))

___________________
133: "Will the amount of phosphorylated MAPK1 be high?"

                    SOURCE-START
e20   COPULAR-PREDICATION 1 "Will the amount of phosphorylated MAPK1 be high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Will the amount of phosphorylated MAPK1 be high?"
 (:VAR MV1320 :ISA POLAR-QUESTION :STATEMENT MV1318)
 (:VAR MV1318 :ISA COPULAR-PREDICATION :ITEM MV1313 :VALUE MV1317 :PREDICATE
  MV1316)
 (:VAR MV1313 :ISA BIO-AMOUNT :MEASURED-ITEM MV1310 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1310 :ISA PROTEIN :PREDICATION MV1315 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1315 :ISA PHOSPHORYLATE :SUBSTRATE MV1310 :RAW-TEXT "phosphorylated")
 (:VAR MV1317 :ISA HIGH) (:VAR MV1316 :ISA BE :MODAL "WILL"))

___________________
134: "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "is TGFBR1 eventually low if we increase the amount " 11
e25   OF            11 "of SB525334 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e33   S             1 "is TGFBR1 eventually low if we increase the amount " 11
e25   PP            11 "of SB525334 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
135: "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"

                    SOURCE-START
e39   EVENT-RELATION  1 "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
 (:VAR MV1367 :ISA POLAR-QUESTION :STATEMENT MV1366)
 (:VAR MV1366 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1363 :EVENT MV1364)
 (:VAR MV1363 :ISA WH-QUESTION :STATEMENT MV1360 :WH IF)
 (:VAR MV1360 :ISA INCREASE :AFFECTED-PROCESS-OR-OBJECT MV1351 :MULTIPLIER
  MV1358 :RAW-TEXT "increased")
 (:VAR MV1351 :ISA BIO-AMOUNT :MEASURED-ITEM MV1344 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1344 :ISA MOLECULE :RAW-TEXT "SB525334" :NAME "sb525334" :UID
  "PCID:9967941")
 (:VAR MV1358 :ISA N-FOLD :NUMBER MV1357) (:VAR MV1357 :ISA NUMBER :VALUE 100)
 (:VAR MV1364 :ISA COPULAR-PREDICATION :ITEM MV1343 :VALUE MV1348 :PREDICATE
  MV1345)
 (:VAR MV1343 :ISA PROTEIN :PREDICATION MV1346 :RAW-TEXT "TGFBR1" :UID
  "UP:P36897" :NAME "TGFR1_HUMAN")
 (:VAR MV1346 :ISA ACTIVE) (:VAR MV1348 :ISA LOW :ADVERB MV1347)
 (:VAR MV1347 :ISA EVENTUALLY :NAME "eventually") (:VAR MV1345 :ISA BE))

___________________
136: "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e41   EVENT-RELATION  1 "is the amount of TGFBR1 eventually low if we increase the amount " 14
e31   OF            14 "of SB525334 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e41   S             1 "is the amount of TGFBR1 eventually low if we increase the amount " 14
e31   PP            14 "of SB525334 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
137: "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"

                    SOURCE-START
e43   EVENT-RELATION  1 "is the amount of active TGFBR1 always low if we increase the amount " 15
e33   OF            15 "of SB-525334 100 fold" 21
                    END-OF-SOURCE
                    SOURCE-START
e43   S             1 "is the amount of active TGFBR1 always low if we increase the amount " 15
e33   PP            15 "of SB-525334 100 fold" 21
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
e10   WITH          1 "What is its relationship with BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is its relationship with BRAF?"
 (:VAR MV1553 :ISA WH-QUESTION :STATEMENT MV1552 :WH WHAT)
 (:VAR MV1552 :ISA PREPOSITIONAL-PHRASE :POBJ MV1551 :PREP "WITH")
 (:VAR MV1551 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
158: "What is its relationship with PTPN1?"

                    SOURCE-START
e11   WITH          1 "What is its relationship with PTPN1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What is its relationship with PTPN1?"
 (:VAR MV1561 :ISA WH-QUESTION :STATEMENT MV1560 :WH WHAT)
 (:VAR MV1560 :ISA PREPOSITIONAL-PHRASE :POBJ MV1554 :PREP "WITH")
 (:VAR MV1554 :ISA PROTEIN :RAW-TEXT "PTPN1" :UID "UP:P18031" :NAME
  "PTN1_HUMAN"))

___________________
159: "AKT1 phosphorylates IFT140. "

                    SOURCE-START
e6    PHOSPHORYLATE 1 "AKT1 phosphorylates IFT140" 6
                    PERIOD
                    END-OF-SOURCE
("AKT1 phosphorylates IFT140."
 (:VAR MV1564 :ISA PHOSPHORYLATE :AGENT MV1562 :SUBSTRATE MV1563 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1562 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1563 :ISA PROTEIN :RAW-TEXT "IFT140" :UID "UP:Q96RY7" :NAME
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
 (:VAR MV1583 :ISA BE :SUBJECT MV1582 :PREDICATE MV1586 :PRESENT "PRESENT")
 (:VAR MV1582 :ISA WHAT)
 (:VAR MV1586 :ISA RESPONSE :BENEFICIARY MV1588 :HAS-DETERMINER "THE" :MODIFIER
  MV1585 :RAW-TEXT "response")
 (:VAR MV1588 :ISA CELL-TYPE :MUTATION MV1590)
 (:VAR MV1590 :ISA ALTER :OBJECT MV1581 :AGENT-OR-OBJECT MV1581 :RAW-TEXT
  "alterations")
 (:VAR MV1581 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1581 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1585 :ISA DRUG :RAW-TEXT "drug"))

___________________
163: "What is the drug response for cells with TP53 alterations?"

                    SOURCE-START
e21   BE            1 "What is the drug response for cells with TP53 alterations" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the drug response for cells with TP53 alterations?"
 (:VAR MV1595 :ISA BE :SUBJECT MV1594 :PREDICATE MV1598 :PRESENT "PRESENT")
 (:VAR MV1594 :ISA WHAT)
 (:VAR MV1598 :ISA RESPONSE :CELL-TYPE MV1600 :HAS-DETERMINER "THE" :MODIFIER
  MV1597 :RAW-TEXT "response")
 (:VAR MV1600 :ISA CELL-TYPE :MUTATION MV1602)
 (:VAR MV1602 :ISA ALTER :OBJECT MV1593 :AGENT-OR-OBJECT MV1593 :RAW-TEXT
  "alterations")
 (:VAR MV1593 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1593 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1597 :ISA DRUG :RAW-TEXT "drug"))

___________________
164: "What is the mutation frequency of EGFR in glioblastoma?"

                    SOURCE-START
e19   BE            1 "What is the mutation frequency of EGFR in glioblastoma" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of EGFR in glioblastoma?"
 (:VAR MV1606 :ISA BE :SUBJECT MV1605 :PREDICATE MV1609 :PRESENT "PRESENT")
 (:VAR MV1605 :ISA WHAT)
 (:VAR MV1609 :ISA FREQUENCY :MEASURED-ITEM MV1611 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV1608 :RAW-TEXT "frequency")
 (:VAR MV1611 :ISA PROTEIN :CONTEXT MV1613 :RAW-TEXT "EGFR" :UID "UP:P00533"
  :NAME "EGFR_HUMAN")
 (:VAR MV1613 :ISA GLIOBLASTOMA)
 (:VAR MV1608 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
165: "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1619 :ISA BE :SUBJECT MV1618 :PREDICATE MV1622 :PRESENT "PRESENT")
 (:VAR MV1618 :ISA WHAT)
 (:VAR MV1622 :ISA FREQUENCY :MEASURED-ITEM MV1616 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV1621 :RAW-TEXT "frequency")
 (:VAR MV1616 :ISA PROTEIN :CONTEXT MV1617 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV1617 :ISA CANCER :NAME "ovarian serous cystadenocarcinoma" :UID
  "NCIT:C7978")
 (:VAR MV1621 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
166: "Show me the mutations of PTEN and BRAF in ovarian cancer."

                    SOURCE-START
e21   SHOW          1 "Show me the mutations of PTEN and BRAF in ovarian cancer" 12
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN and BRAF in ovarian cancer."
 (:VAR MV1628 :ISA SHOW :STATEMENT-OR-THEME MV1631 :BENEFICIARY MV1629 :PRESENT
  "PRESENT")
 (:VAR MV1631 :ISA MUTATION :OBJECT MV1637 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1637 :ISA COLLECTION :CONTEXT MV1627 :RAW-TEXT "PTEN and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV1633 MV1635))
 (:VAR MV1627 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV1633 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV1635 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1629 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
167: "Show me the mutations of PTEN in ovarian cancer."

                    SOURCE-START
e18   SHOW          1 "Show me the mutations of PTEN in ovarian cancer" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the mutations of PTEN in ovarian cancer."
 (:VAR MV1641 :ISA SHOW :STATEMENT-OR-THEME MV1644 :BENEFICIARY MV1642 :PRESENT
  "PRESENT")
 (:VAR MV1644 :ISA MUTATION :OBJECT MV1646 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1646 :ISA PROTEIN :CONTEXT MV1640 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1640 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV1642 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
168: "What are the mutations of PTEN in ovarian cancer?"

                    SOURCE-START
e18   BE            1 "What are the mutations of PTEN in ovarian cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in ovarian cancer?"
 (:VAR MV1652 :ISA BE :SUBJECT MV1651 :PREDICATE MV1654 :PRESENT "PRESENT")
 (:VAR MV1651 :ISA WHAT)
 (:VAR MV1654 :ISA MUTATION :OBJECT MV1656 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV1656 :ISA PROTEIN :CONTEXT MV1650 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1650 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223"))

___________________
169: "What is the most likely cellular location of AKT1 and BRAF?"

                    SOURCE-START
e23   BE            1 "What is the most likely cellular location of AKT1 and BRAF" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1 and BRAF?"
 (:VAR MV1662 :ISA BE :SUBJECT MV1661 :PREDICATE MV1674 :PRESENT "PRESENT")
 (:VAR MV1661 :ISA WHAT)
 (:VAR MV1674 :ISA QUALITY-PREDICATE :ITEM MV1672 :ATTRIBUTE MV1668)
 (:VAR MV1672 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1660 MV1671))
 (:VAR MV1660 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1671 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1668 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV1666
  :MODIFIER MV1667)
 (:VAR MV1666 :ISA LIKELY :COMPARATIVE MV1664)
 (:VAR MV1664 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV1667 :ISA CELLULAR :NAME "cellular"))

___________________
170: "Are there common upstreams of AKT1 and BRAF?"

                    SOURCE-START
e18   THERE-EXISTS  1 "Are there common upstreams of AKT1 and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1 and BRAF?"
 (:VAR MV1687 :ISA POLAR-QUESTION :STATEMENT MV1684)
 (:VAR MV1684 :ISA THERE-EXISTS :VALUE MV1680 :PREDICATE MV1677)
 (:VAR MV1680 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1685 :PREDICATION
  MV1679 :RAW-TEXT "upstreams")
 (:VAR MV1685 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1675 MV1683))
 (:VAR MV1675 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1683 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1679 :ISA COMMON) (:VAR MV1677 :ISA SYNTACTIC-THERE))

___________________
171: "What are the common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e21   BE            1 "What are the common upstreams of AKT1, BRAF and MAPK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV1691 :ISA BE :SUBJECT MV1690 :PREDICATE MV1694 :PRESENT "PRESENT")
 (:VAR MV1690 :ISA WHAT)
 (:VAR MV1694 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1698 :HAS-DETERMINER
  "THE" :PREDICATION MV1693 :RAW-TEXT "upstreams")
 (:VAR MV1698 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV1688 MV1696 MV1689))
 (:VAR MV1688 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV1696 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1689 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV1693 :ISA COMMON))

___________________
172: "What genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "What genes are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV1710 :ISA COPULAR-PREDICATION :ITEM MV1704 :VALUE MV1700 :PREDICATE
  MV1705)
 (:VAR MV1704 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV1700 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV1702 :ALTERNATIVE MV1701)
 (:VAR MV1702 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV1701 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV1705 :ISA BE :PRESENT "PRESENT"))

___________________
173: "What are the mutually exclusive genes with TP53 for breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with TP53 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with TP53 for breast cancer?"
 (:VAR MV1715 :ISA BE :SUBJECT MV1714 :PREDICATE MV1722 :PRESENT "PRESENT")
 (:VAR MV1714 :ISA WHAT)
 (:VAR MV1722 :ISA GENE :DISEASE MV1713 :HAS-DETERMINER "THE" :PREDICATION
  MV1711 :RAW-TEXT "genes")
 (:VAR MV1713 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV1711 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV1712)
 (:VAR MV1712 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
174: "What is the mutation significance of TP53 for lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 for lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 for lung cancer?"
 (:VAR MV1726 :ISA BE :SUBJECT MV1725 :PREDICATE MV1729 :PRESENT "PRESENT")
 (:VAR MV1725 :ISA WHAT)
 (:VAR MV1729 :ISA SIGNIFICANCE :RESULT MV1724 :AGENT MV1723 :HAS-DETERMINER
  "THE" :MODIFIER MV1728)
 (:VAR MV1724 :ISA CANCER :NAME "lung cancer" :UID "TS-0571")
 (:VAR MV1723 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1728 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
175: "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
 (:VAR MV1737 :ISA BE :SUBJECT MV1736 :PREDICATE MV1740 :PRESENT "PRESENT")
 (:VAR MV1736 :ISA WHAT)
 (:VAR MV1740 :ISA SIGNIFICANCE :AGENT MV1734 :HAS-DETERMINER "THE" :MODIFIER
  MV1739)
 (:VAR MV1734 :ISA PROTEIN :CONTEXT MV1735 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV1735 :ISA CANCER :NAME "ovarian serous cystadenocarcinoma" :UID
  "NCIT:C7978")
 (:VAR MV1739 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
176: "What is the mutation significance of PTEN in pancreatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of PTEN in pancreatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
 (:VAR MV1746 :ISA BE :SUBJECT MV1745 :PREDICATE MV1749 :PRESENT "PRESENT")
 (:VAR MV1745 :ISA WHAT)
 (:VAR MV1749 :ISA SIGNIFICANCE :AGENT MV1751 :HAS-DETERMINER "THE" :MODIFIER
  MV1748)
 (:VAR MV1751 :ISA PROTEIN :CONTEXT MV1754 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV1754 :ISA CANCER :ORGAN MV1753 :NAME "adenocarcinoma" :UID
  "EFO:0000228")
 (:VAR MV1753 :ISA PANCREAS) (:VAR MV1748 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
177: "What is the mutation significance of BRAF in prostatic adenocarcinoma?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of BRAF in prostatic adenocarcinoma" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
 (:VAR MV1758 :ISA BE :SUBJECT MV1757 :PREDICATE MV1761 :PRESENT "PRESENT")
 (:VAR MV1757 :ISA WHAT)
 (:VAR MV1761 :ISA SIGNIFICANCE :AGENT MV1763 :HAS-DETERMINER "THE" :MODIFIER
  MV1760)
 (:VAR MV1763 :ISA PROTEIN :CONTEXT MV1766 :RAW-TEXT "BRAF" :UID "UP:P15056"
  :NAME "BRAF_HUMAN")
 (:VAR MV1766 :ISA CANCER :MODIFIER MV1765 :NAME "adenocarcinoma" :UID
  "EFO:0000228")
 (:VAR MV1765 :ISA PROTEIN :RAW-TEXT "prostatic" :UID "UP:P20151" :NAME
  "KLK2_HUMAN")
 (:VAR MV1760 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
178: "MEK phosphorylates ERK."

                    SOURCE-START
e4    PHOSPHORYLATE 1 "MEK phosphorylates ERK" 4
                    PERIOD
                    END-OF-SOURCE
("MEK phosphorylates ERK."
 (:VAR MV1770 :ISA PHOSPHORYLATE :AGENT MV1769 :SUBSTRATE MV1771 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV1769 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV1771 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV1773 :ISA BINDING :BINDER MV1772 :DIRECT-BINDEE MV1774 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV1772 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1774 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
180: "EGFR bound to EGF binds GRB2."

                    SOURCE-START
e13   BINDING       1 "EGFR bound to EGF binds GRB2" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR bound to EGF binds GRB2."
 (:VAR MV1780 :ISA BINDING :BINDER MV1776 :DIRECT-BINDEE MV1775 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV1776 :ISA PROTEIN :PREDICATION MV1777 :RAW-TEXT "EGFR" :UID
  "UP:P00533" :NAME "EGFR_HUMAN")
 (:VAR MV1777 :ISA BINDING :DIRECT-BINDEE MV1776 :BINDEE MV1779 :PAST "PAST"
  :RAW-TEXT "bound")
 (:VAR MV1779 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV1775 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN"))

___________________
181: "Phosphorylated ERK is active."

                    SOURCE-START
e7    COPULAR-PREDICATION 1 "Phosphorylated ERK is active" 5
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK is active."
 (:VAR MV1786 :ISA COPULAR-PREDICATION :ITEM MV1783 :VALUE MV1785 :PREDICATE
  MV1784)
 (:VAR MV1783 :ISA PROTEIN-FAMILY :PREDICATION MV1782 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1782 :ISA PHOSPHORYLATE :SUBSTRATE MV1783 :RAW-TEXT "Phosphorylated")
 (:VAR MV1785 :ISA ACTIVE) (:VAR MV1784 :ISA BE :PRESENT "PRESENT"))

___________________
182: "MAP2K1 phosphorylated at S220 phosphoryates MAPK1."

                    SOURCE-START
e17   PROTEIN       1 "MAP2K1 phosphorylated at S220 phosphoryates MAPK1" 12
                    PERIOD
                    END-OF-SOURCE
("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
 (:VAR MV1787 :ISA PROTEIN :PREDICATION MV1789 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV1789 :ISA PHOSPHORYLATE :SUBSTRATE MV1787 :TARGET MV1788 :PAST "PAST"
  :RAW-TEXT "phosphorylated")
 (:VAR MV1788 :ISA PROTEIN :SITE MV1794 :MODIFIER MV1795 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV1794 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S220" :POSITION MV1793
  :AMINO-ACID MV1792)
 (:VAR MV1793 :ISA NUMBER :VALUE 220)
 (:VAR MV1792 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV1795 :ISA BIO-ENTITY :NAME "phosphoryates"))

___________________
183: "Active TP53 transcribes MDM2."

                    SOURCE-START
e8    TRANSCRIBE    1 "Active TP53 transcribes MDM2" 7
                    PERIOD
                    END-OF-SOURCE
("Active TP53 transcribes MDM2."
 (:VAR MV1800 :ISA TRANSCRIBE :AGENT MV1797 :OBJECT MV1798 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV1797 :ISA PROTEIN :PREDICATION MV1799 :RAW-TEXT "TP53" :UID
  "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV1799 :ISA ACTIVE)
 (:VAR MV1798 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME
  "MDM2_HUMAN"))

___________________
184: "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e44   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV1827 :ISA POLAR-QUESTION :STATEMENT MV1826)
 (:VAR MV1826 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV1822 :EVENT MV1824)
 (:VAR MV1822 :ISA WH-QUESTION :STATEMENT MV1812 :WH IF)
 (:VAR MV1812 :ISA INCREASE :AGENT-OR-CAUSE MV1810 :MULTIPLIER MV1819
  :AFFECTED-PROCESS-OR-OBJECT MV1814 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV1810 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV1819 :ISA N-FOLD :NUMBER MV1818) (:VAR MV1818 :ISA NUMBER :VALUE 10)
 (:VAR MV1814 :ISA BIO-AMOUNT :MEASURED-ITEM MV1801 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1801 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1824 :ISA COPULAR-PREDICATION :ITEM MV1804 :VALUE MV1808 :PREDICATE
  MV1802)
 (:VAR MV1804 :ISA BIO-AMOUNT :MEASURED-ITEM MV1806 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV1806 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV1808 :ISA HIGH :ADVERB MV1807) (:VAR MV1807 :ISA EVER :NAME "ever")
 (:VAR MV1802 :ISA BE))

___________________
185: "Does Vemurafenib decrease phosphorylated ERK in the model?"

                    SOURCE-START
e20   DECREASE      1 "Does Vemurafenib decrease phosphorylated ERK in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib decrease phosphorylated ERK in the model?"
 (:VAR MV1839 :ISA POLAR-QUESTION :STATEMENT MV1837)
 (:VAR MV1837 :ISA DECREASE :AGENT MV1829 :OBJECT MV1833 :RAW-TEXT "decrease")
 (:VAR MV1829 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV1833 :ISA PROTEIN-FAMILY :INFO-CONTEXT MV1836 :PREDICATION MV1832
  :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV1836 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV1832 :ISA PHOSPHORYLATE :SUBSTRATE MV1833 :RAW-TEXT "phosphorylated"))

___________________
186: "Does Selumetinib decrease JUN in the model?"

                    SOURCE-START
e17   DECREASE      1 "Does Selumetinib decrease JUN in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib decrease JUN in the model?"
 (:VAR MV1850 :ISA POLAR-QUESTION :STATEMENT MV1848)
 (:VAR MV1848 :ISA DECREASE :AGENT MV1841 :OBJECT MV1844 :RAW-TEXT "decrease")
 (:VAR MV1841 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV1844 :ISA PROTEIN :INFO-CONTEXT MV1847 :RAW-TEXT "JUN" :UID
  "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV1847 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
187: "How does KRAS regulate MAP2K1?"

                    SOURCE-START
e8    REGULATE      1 "How does KRAS regulate MAP2K1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS regulate MAP2K1?"
 (:VAR MV1855 :ISA REGULATE :MANNER MV1852 :AGENT MV1854 :OBJECT MV1851
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV1852 :ISA HOW)
 (:VAR MV1854 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV1851 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
188: "How does HRAS activate MAPK3?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "How does HRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does HRAS activate MAPK3?"
 (:VAR MV1860 :ISA BIO-ACTIVATE :MANNER MV1857 :AGENT MV1859 :OBJECT MV1856
  :PRESENT "PRESENT" :RAW-TEXT "activate")
 (:VAR MV1857 :ISA HOW)
 (:VAR MV1859 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV1856 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
189: "Does Vemurafenib inhibit BRAF?"

                    SOURCE-START
e8    INHIBIT       1 "Does Vemurafenib inhibit BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib inhibit BRAF?"
 (:VAR MV1866 :ISA POLAR-QUESTION :STATEMENT MV1865)
 (:VAR MV1865 :ISA INHIBIT :AGENT MV1862 :OBJECT MV1864 :RAW-TEXT "inhibit")
 (:VAR MV1862 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV1864 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
190: "What transcription factors are shared by SRF, HRAS, and ELK1?"

                    SOURCE-START
e19   SHARE         1 "What transcription factors are shared by SRF, HRAS, and ELK1" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by SRF, HRAS, and ELK1?"
 (:VAR MV1877 :ISA SHARE :OBJECT MV1867 :PARTICIPANT MV1876 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV1867 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV1876 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and ELK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV1873 MV1874 MV1868))
 (:VAR MV1873 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1874 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV1868 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
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
 (:VAR MV1889 :ISA BE :SUBJECT MV1888 :PREDICATE MV1890 :PRESENT "PRESENT")
 (:VAR MV1888 :ISA WHAT)
 (:VAR MV1890 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV1887 :RAW-TEXT
  "upstream")
 (:VAR MV1887 :ISA PROTEIN :RAW-TEXT "CD3E" :UID "UP:P07766" :NAME
  "CD3E_HUMAN"))

___________________
193: "I want to find a treatment for pancreatic cancer."

                    SOURCE-START
e22   WANT          1 "I want to find a treatment for pancreatic cancer" 10
                    PERIOD
                    END-OF-SOURCE
("I want to find a treatment for pancreatic cancer."
 (:VAR MV1898 :ISA WANT :AGENT MV1895 :THEME MV1906 :PRESENT "PRESENT")
 (:VAR MV1895 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV1906 :ISA BIO-FIND :AGENT MV1895 :OBJECT MV1903 :PRESENT "PRESENT"
  :RAW-TEXT "find")
 (:VAR MV1895 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV1903 :ISA TREATMENT :DISEASE MV1894 :HAS-DETERMINER "A" :RAW-TEXT
  "treatment")
 (:VAR MV1894 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
194: "What drug could I use?"

                    SOURCE-START
e11   BIO-USE       1 "What drug could I use" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use?"
 (:VAR MV1915 :ISA BIO-USE :OBJECT MV1908 :MODAL MV1909 :AGENT MV1910 :PRESENT
  "PRESENT" :RAW-TEXT "use")
 (:VAR MV1908 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV1909 :ISA COULD) (:VAR MV1910 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
195: "Are there any drugs for BRAF?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for BRAF?"
 (:VAR MV1925 :ISA POLAR-QUESTION :STATEMENT MV1923)
 (:VAR MV1923 :ISA THERE-EXISTS :VALUE MV1920 :PREDICATE MV1917)
 (:VAR MV1920 :ISA DRUG :TARGET MV1922 :QUANTIFIER MV1919 :RAW-TEXT "drugs")
 (:VAR MV1922 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1919 :ISA ANY :WORD "any") (:VAR MV1917 :ISA SYNTACTIC-THERE))

___________________
196: "Are they kinases?"

                    SOURCE-START
e5    BE            1 "Are they kinases" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("Are they kinases?" (:VAR MV1929 :ISA POLAR-QUESTION :STATEMENT MV1926)
 (:VAR MV1926 :ISA BE :SUBJECT MV1927 :PREDICATE MV1928)
 (:VAR MV1927 :ISA PRONOUN/PLURAL :WORD "they")
 (:VAR MV1928 :ISA KINASE :RAW-TEXT "kinases"))

___________________
197: "Can you find a drug for BRAF?"

                    SOURCE-START
e17   BIO-FIND      1 "Can you find a drug for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you find a drug for BRAF?"
 (:VAR MV1939 :ISA POLAR-QUESTION :STATEMENT MV1933)
 (:VAR MV1933 :ISA BIO-FIND :AGENT MV1931 :OBJECT MV1935 :MODAL "CAN" :RAW-TEXT
  "find")
 (:VAR MV1931 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1935 :ISA DRUG :TARGET MV1937 :HAS-DETERMINER "A" :RAW-TEXT "drug")
 (:VAR MV1937 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
198: "Can you tell me all the transcription factors that are shared by elk1 and srf?"

                    SOURCE-START
e35   TELL          1 "Can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me all the transcription factors that are shared by elk1 and srf?"
 (:VAR MV1957 :ISA POLAR-QUESTION :STATEMENT MV1944)
 (:VAR MV1944 :ISA TELL :AGENT MV1943 :THEME MV1940 :BENEFICIARY MV1945 :MODAL
  "CAN")
 (:VAR MV1943 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1940 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV1955 :QUANTIFIER MV1946
  :HAS-DETERMINER "THE" :RAW-TEXT "transcription factors")
 (:VAR MV1955 :ISA SHARE :OBJECT MV1940 :THAT-REL T :PARTICIPANT MV1954 :MODAL
  "CAN" :RAW-TEXT "shared")
 (:VAR MV1954 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1941 MV1953))
 (:VAR MV1941 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1953 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1946 :ISA ALL :WORD "all")
 (:VAR MV1945 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
199: "Can you tell me what transcription factors are shared by elk1 and srf?"

                    SOURCE-START
e28   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf?"
 (:VAR MV1973 :ISA POLAR-QUESTION :STATEMENT MV1962)
 (:VAR MV1962 :ISA TELL :AGENT MV1961 :THEME MV1971 :THEME MV1963 :MODAL "CAN")
 (:VAR MV1961 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1971 :ISA SHARE :OBJECT MV1958 :PARTICIPANT MV1970 :MODAL "CAN"
  :RAW-TEXT "shared")
 (:VAR MV1958 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV1970 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV1959 MV1969))
 (:VAR MV1959 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV1969 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV1963 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
200: "Do you know any drugs for BRAF?"

                    SOURCE-START
e15   KNOW          1 "Do you know any drugs for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do you know any drugs for BRAF?"
 (:VAR MV1984 :ISA POLAR-QUESTION :STATEMENT MV1983)
 (:VAR MV1983 :ISA KNOW :AGENT MV1975 :STATEMENT MV1978)
 (:VAR MV1975 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV1978 :ISA DRUG :TARGET MV1980 :QUANTIFIER MV1977 :RAW-TEXT "drugs")
 (:VAR MV1980 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV1977 :ISA ANY :WORD "any"))

___________________
201: "Does STAT3 regulate the JUN gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the JUN gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the JUN gene in the lung?"
 (:VAR MV1996 :ISA POLAR-QUESTION :STATEMENT MV1994)
 (:VAR MV1994 :ISA REGULATE :AGENT MV1985 :OBJECT MV1990 :RAW-TEXT "regulate")
 (:VAR MV1985 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV1990 :ISA GENE :ORGAN MV1993 :HAS-DETERMINER "THE" :EXPRESSES MV1989
  :RAW-TEXT "gene")
 (:VAR MV1993 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV1989 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN"))

___________________
202: "Does STAT3 regulate the c-fos gene in liver?"

                    SOURCE-START
e20   REGULATE      1 "Does STAT3 regulate the c-fos gene in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in liver?"
 (:VAR MV2007 :ISA POLAR-QUESTION :STATEMENT MV2005)
 (:VAR MV2005 :ISA REGULATE :AGENT MV1997 :OBJECT MV2002 :RAW-TEXT "regulate")
 (:VAR MV1997 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2002 :ISA GENE :ORGAN MV2004 :HAS-DETERMINER "THE" :EXPRESSES MV1998
  :RAW-TEXT "gene")
 (:VAR MV2004 :ISA LIVER)
 (:VAR MV1998 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
203: "Does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e15   REGULATE      1 "Does STAT3 regulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene?"
 (:VAR MV2015 :ISA POLAR-QUESTION :STATEMENT MV2014)
 (:VAR MV2014 :ISA REGULATE :AGENT MV2008 :OBJECT MV2013 :RAW-TEXT "regulate")
 (:VAR MV2008 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2013 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2009 :RAW-TEXT
  "gene")
 (:VAR MV2009 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
204: "Does STAT3 regulate the cfos gene in the lung?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the cfos gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the cfos gene in the lung?"
 (:VAR MV2027 :ISA POLAR-QUESTION :STATEMENT MV2025)
 (:VAR MV2025 :ISA REGULATE :AGENT MV2016 :OBJECT MV2021 :RAW-TEXT "regulate")
 (:VAR MV2016 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2021 :ISA GENE :ORGAN MV2024 :HAS-DETERMINER "THE" :EXPRESSES MV2020
  :RAW-TEXT "gene")
 (:VAR MV2024 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV2020 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
205: "Does TP53 target MDM2?"

                    SOURCE-START
e11   TARGET        1 "Does TP53 target MDM2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TP53 target MDM2?" (:VAR MV2034 :ISA POLAR-QUESTION :STATEMENT MV2033)
 (:VAR MV2033 :ISA TARGET :AGENT MV2028 :OBJECT MV2029 :RAW-TEXT "target")
 (:VAR MV2028 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV2029 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME
  "MDM2_HUMAN"))

___________________
206: "Does miR-2000-5p target stat3"

                    SOURCE-START
e11   TARGET        1 "Does miR-2000-5p target stat3" 11
                    END-OF-SOURCE
("Does miR-2000-5p target stat3"
 (:VAR MV2041 :ISA POLAR-QUESTION :STATEMENT MV2040)
 (:VAR MV2040 :ISA TARGET :AGENT MV2035 :OBJECT MV2036 :RAW-TEXT "target")
 (:VAR MV2035 :ISA MICRO-RNA :RAW-TEXT "miR-2000-5p" :NAME "microRNA 2000-5p"
  :UID "MIMAmiR-2000-5p")
 (:VAR MV2036 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
207: "Does miR-20b-5p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-20b-5p target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5p target STAT3?"
 (:VAR MV2048 :ISA POLAR-QUESTION :STATEMENT MV2047)
 (:VAR MV2047 :ISA TARGET :AGENT MV2042 :OBJECT MV2043 :RAW-TEXT "target")
 (:VAR MV2042 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV2043 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
208: "Does miR-222-3p target STAT3?"

                    SOURCE-START
e11   TARGET        1 "Does miR-222-3p target STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-222-3p target STAT3?"
 (:VAR MV2055 :ISA POLAR-QUESTION :STATEMENT MV2054)
 (:VAR MV2054 :ISA TARGET :AGENT MV2049 :OBJECT MV2050 :RAW-TEXT "target")
 (:VAR MV2049 :ISA MICRO-RNA :RAW-TEXT "miR-222-3p" :NAME "microRNA 222-3p"
  :UID "MIMAT0000279")
 (:VAR MV2050 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
209: "Does stat3 regulate cfors in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfors in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfors in liver"
 (:VAR MV2064 :ISA POLAR-QUESTION :STATEMENT MV2062)
 (:VAR MV2062 :ISA REGULATE :AGENT MV2056 :OBJECT MV2061 :RAW-TEXT "regulate")
 (:VAR MV2056 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2061 :ISA BIO-ENTITY :ORGAN MV2060 :NAME "cfors")
 (:VAR MV2060 :ISA LIVER))

___________________
210: "Does stat3 regulate cfos in liver"

                    SOURCE-START
e14   REGULATE      1 "Does stat3 regulate cfos in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfos in liver"
 (:VAR MV2073 :ISA POLAR-QUESTION :STATEMENT MV2071)
 (:VAR MV2071 :ISA REGULATE :AGENT MV2065 :OBJECT MV2068 :RAW-TEXT "regulate")
 (:VAR MV2065 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2068 :ISA PROTEIN :ORGAN MV2070 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2070 :ISA LIVER))

___________________
211: "Does it regulate cfos in brain"

                    SOURCE-START
e14   REGULATE      1 "Does it regulate cfos in brain" 7
                    END-OF-SOURCE
("Does it regulate cfos in brain"
 (:VAR MV2082 :ISA POLAR-QUESTION :STATEMENT MV2080)
 (:VAR MV2080 :ISA REGULATE :AGENT-OR-CAUSE MV2075 :OBJECT MV2077 :RAW-TEXT
  "regulate")
 (:VAR MV2075 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2077 :ISA PROTEIN :ORGAN MV2079 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV2079 :ISA BRAIN))

___________________
212: "Does stat3 regulate cfos?"

                    SOURCE-START
e9    REGULATE      1 "Does stat3 regulate cfos" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 regulate cfos?"
 (:VAR MV2088 :ISA POLAR-QUESTION :STATEMENT MV2087)
 (:VAR MV2087 :ISA REGULATE :AGENT MV2083 :OBJECT MV2086 :RAW-TEXT "regulate")
 (:VAR MV2083 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2086 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
213: "Does stat3 regulate the cfos gene in blood cells"

                    SOURCE-START
e21   REGULATE      1 "Does stat3 regulate the cfos gene in blood cells" 11
                    END-OF-SOURCE
("Does stat3 regulate the cfos gene in blood cells"
 (:VAR MV2100 :ISA POLAR-QUESTION :STATEMENT MV2098)
 (:VAR MV2098 :ISA REGULATE :AGENT MV2089 :OBJECT MV2094 :RAW-TEXT "regulate")
 (:VAR MV2089 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2094 :ISA GENE :CELL-TYPE MV2097 :HAS-DETERMINER "THE" :EXPRESSES
  MV2093 :RAW-TEXT "gene")
 (:VAR MV2097 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV2096)
 (:VAR MV2096 :ISA BIO-ORGAN :NAME "blood" :UID "BTO:0000089")
 (:VAR MV2093 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
214: "Does the il-12 pathway utilize SGK1?"

                    SOURCE-START
e17   UTILIZE       1 "Does the il-12 pathway utilize SGK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the il-12 pathway utilize SGK1?"
 (:VAR MV2110 :ISA POLAR-QUESTION :STATEMENT MV2109)
 (:VAR MV2109 :ISA UTILIZE :PARTICIPANT MV2106 :OBJECT MV2101 :RAW-TEXT
  "utilize")
 (:VAR MV2106 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2108 :RAW-TEXT
  "pathway")
 (:VAR MV2108 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV2101 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
215: "Does the mTor pathway utilize SGK1?"

                    SOURCE-START
e16   UTILIZE       1 "Does the mTor pathway utilize SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway utilize SGK1?"
 (:VAR MV2120 :ISA POLAR-QUESTION :STATEMENT MV2119)
 (:VAR MV2119 :ISA UTILIZE :PARTICIPANT MV2117 :OBJECT MV2111 :RAW-TEXT
  "utilize")
 (:VAR MV2117 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2114 :RAW-TEXT
  "pathway")
 (:VAR MV2114 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME
  "MTOR_HUMAN")
 (:VAR MV2111 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
216: "Give me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras decreases frizzled8."
 (:VAR MV2122 :ISA GIVE :THEME MV2129 :BENEFICIARY MV2123 :PRESENT "PRESENT")
 (:VAR MV2129 :ISA EVIDENCE :STATEMENT MV2128 :HAS-DETERMINER "THE")
 (:VAR MV2128 :ISA DECREASE :AGENT MV2127 :OBJECT MV2121 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV2127 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2121 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2123 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
217: "Give me the evidence that kras regulates frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras regulates frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras regulates frizzled8."
 (:VAR MV2131 :ISA GIVE :THEME MV2138 :BENEFICIARY MV2132 :PRESENT "PRESENT")
 (:VAR MV2138 :ISA EVIDENCE :STATEMENT MV2137 :HAS-DETERMINER "THE")
 (:VAR MV2137 :ISA REGULATE :AGENT MV2136 :OBJECT MV2130 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2136 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV2130 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV2132 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
218: "Is MEK a kinase?"

                    SOURCE-START
e8    BE            1 "Is MEK a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK a kinase?" (:VAR MV2143 :ISA POLAR-QUESTION :STATEMENT MV2139)
 (:VAR MV2139 :ISA BE :SUBJECT MV2140 :PREDICATE MV2142)
 (:VAR MV2140 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV2142 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
219: "Is MEK2 inhibited by Selumetinib?"

                    SOURCE-START
e11   INHIBIT       1 "Is MEK2 inhibited by Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK2 inhibited by Selumetinib?"
 (:VAR MV2151 :ISA POLAR-QUESTION :STATEMENT MV2150)
 (:VAR MV2150 :ISA INHIBIT :AGENT MV2144 :AGENT MV2148 :PAST "PAST" :RAW-TEXT
  "inhibited")
 (:VAR MV2144 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN")
 (:VAR MV2148 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
220: "Is STAT3 a transcription factor for c-fos gene?"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene?"
 (:VAR MV2160 :ISA POLAR-QUESTION :STATEMENT MV2155)
 (:VAR MV2155 :ISA BE :SUBJECT MV2152 :PREDICATE MV2153)
 (:VAR MV2152 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2153 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV2158 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV2158 :ISA GENE :EXPRESSES MV2154 :RAW-TEXT "gene")
 (:VAR MV2154 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
221: "Is STAT3 one of the regulators of the c-fos gene?"

                    SOURCE-START
e27   BE            1 "Is STAT3 one of the regulators of the c-fos gene" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 one of the regulators of the c-fos gene?"
 (:VAR MV2175 :ISA POLAR-QUESTION :STATEMENT MV2163)
 (:VAR MV2163 :ISA BE :SUBJECT MV2161 :PREDICATE MV2169)
 (:VAR MV2161 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2169 :ISA REGULATOR :QUANTIFIER MV2166 :THEME MV2172 :HAS-DETERMINER
  "THE" :RAW-TEXT "regulators")
 (:VAR MV2166 :ISA NUMBER :VALUE 1)
 (:VAR MV2172 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2162 :RAW-TEXT
  "gene")
 (:VAR MV2162 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
222: "Is Selumetinib an inhibitor of MEK1?"

                    SOURCE-START
e13   BE            1 "Is Selumetinib an inhibitor of MEK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Selumetinib an inhibitor of MEK1?"
 (:VAR MV2183 :ISA POLAR-QUESTION :STATEMENT MV2177)
 (:VAR MV2177 :ISA BE :SUBJECT MV2178 :PREDICATE MV2180)
 (:VAR MV2178 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV2180 :ISA INHIBITOR :PROTEIN MV2176 :HAS-DETERMINER "AN" :RAW-TEXT
  "inhibitor")
 (:VAR MV2176 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
223: "Is Vemurafenib an inhibitor for BRAF?"

                    SOURCE-START
e12   BE            1 "Is Vemurafenib an inhibitor for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Vemurafenib an inhibitor for BRAF?"
 (:VAR MV2191 :ISA POLAR-QUESTION :STATEMENT MV2184)
 (:VAR MV2184 :ISA BE :SUBJECT MV2185 :PREDICATE MV2187)
 (:VAR MV2185 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV2187 :ISA INHIBITOR :TARGET-OR-PROTEIN MV2189 :HAS-DETERMINER "AN"
  :RAW-TEXT "inhibitor")
 (:VAR MV2189 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
224: "Is fakeprotein a kinase"

                    SOURCE-START
e8    BE            1 "Is fakeprotein a kinase" 5
                    END-OF-SOURCE
("Is fakeprotein a kinase" (:VAR MV2196 :ISA POLAR-QUESTION :STATEMENT MV2192)
 (:VAR MV2192 :ISA BE :SUBJECT MV2195 :PREDICATE MV2194)
 (:VAR MV2195 :ISA BIO-ENTITY :NAME "fakeprotein")
 (:VAR MV2194 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
225: "Is hmga2 a kinase"

                    SOURCE-START
e9    BE            1 "Is hmga2 a kinase" 6
                    END-OF-SOURCE
("Is hmga2 a kinase" (:VAR MV2201 :ISA POLAR-QUESTION :STATEMENT MV2198)
 (:VAR MV2198 :ISA BE :SUBJECT MV2197 :PREDICATE MV2200)
 (:VAR MV2197 :ISA PROTEIN :RAW-TEXT "hmga2" :UID "UP:P52926" :NAME
  "HMGA2_HUMAN")
 (:VAR MV2200 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
226: "Is stat3 an apoptotic regulator?"

                    SOURCE-START
e11   BE            1 "Is stat3 an apoptotic regulator" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 an apoptotic regulator?"
 (:VAR MV2208 :ISA POLAR-QUESTION :STATEMENT MV2203)
 (:VAR MV2203 :ISA BE :SUBJECT MV2202 :PREDICATE MV2207)
 (:VAR MV2202 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2207 :ISA REGULATOR :HAS-DETERMINER "AN" :CELLULAR-PROCESS MV2205
  :RAW-TEXT "regulator")
 (:VAR MV2205 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
227: "Is stat3 involved in any apoptotic pathways?"

                    SOURCE-START
e16   INVOLVE       1 "Is stat3 involved in any apoptotic pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in any apoptotic pathways?"
 (:VAR MV2220 :ISA POLAR-QUESTION :STATEMENT MV2219)
 (:VAR MV2219 :ISA INVOLVE :THEME MV2209 :CONTEXT MV2216 :PAST "PAST")
 (:VAR MV2209 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2216 :ISA PATHWAY :QUANTIFIER MV2213 :CELLULAR-PROCESS MV2214
  :RAW-TEXT "pathways")
 (:VAR MV2213 :ISA ANY :WORD "any")
 (:VAR MV2214 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
228: "Is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e14   INVOLVE       1 "Is stat3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in apoptotic regulation?"
 (:VAR MV2230 :ISA POLAR-QUESTION :STATEMENT MV2229)
 (:VAR MV2229 :ISA INVOLVE :THEME MV2221 :THEME MV2227 :PAST "PAST")
 (:VAR MV2221 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2227 :ISA REGULATE :CELLULAR-PROCESS-OR-AGENT MV2225 :RAW-TEXT
  "regulation")
 (:VAR MV2225 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
229: "Is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e13   INVOLVE       1 "Is stat3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in regulating apoptosis?"
 (:VAR MV2239 :ISA POLAR-QUESTION :STATEMENT MV2238)
 (:VAR MV2238 :ISA INVOLVE :THEME MV2231 :THEME MV2235 :PAST "PAST")
 (:VAR MV2231 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2235 :ISA REGULATE :AFFECTED-PROCESS MV2236 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV2236 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
230: "What proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "What proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does MEK phosphorylate?"
 (:VAR MV2244 :ISA PHOSPHORYLATE :AMINO-ACID MV2241 :AGENT MV2243 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV2241 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV2243 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV2253 :ISA POLAR-QUESTION :STATEMENT MV2245)
 (:VAR MV2245 :ISA BE :SUBJECT MV2250 :PREDICATE MV2252)
 (:VAR MV2250 :ISA NUMBER :QUANTIFIER MV2247 :VALUE 1)
 (:VAR MV2247 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV2252 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
232: "Is there a drug that targets BRAF?"

                    SOURCE-START
e19   THERE-EXISTS  1 "Is there a drug that targets BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there a drug that targets BRAF?"
 (:VAR MV2264 :ISA POLAR-QUESTION :STATEMENT MV2263)
 (:VAR MV2263 :ISA THERE-EXISTS :VALUE MV2258 :PREDICATE MV2255)
 (:VAR MV2258 :ISA DRUG :PREDICATION MV2261 :HAS-DETERMINER "A" :RAW-TEXT
  "drug")
 (:VAR MV2261 :ISA TARGET :AGENT MV2258 :THAT-REL T :OBJECT MV2262 :PRESENT
  "PRESENT" :RAW-TEXT "targets")
 (:VAR MV2262 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV2255 :ISA SYNTACTIC-THERE))

___________________
233: "Is there an apoptotic pathway regulated by stat3?"

                    SOURCE-START
e21   THERE-EXISTS  1 "Is there an apoptotic pathway regulated by stat3" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway regulated by stat3?"
 (:VAR MV2277 :ISA POLAR-QUESTION :STATEMENT MV2275)
 (:VAR MV2275 :ISA THERE-EXISTS :VALUE MV2272 :PREDICATE MV2267)
 (:VAR MV2272 :ISA PATHWAY :PREDICATION MV2273 :HAS-DETERMINER "AN"
  :CELLULAR-PROCESS MV2270 :RAW-TEXT "pathway")
 (:VAR MV2273 :ISA REGULATE :AFFECTED-PROCESS MV2272 :AGENT MV2265 :PAST "PAST"
  :RAW-TEXT "regulated")
 (:VAR MV2265 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2270 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2267 :ISA SYNTACTIC-THERE))

___________________
234: "Is there an apoptotic pathway that is regulated by stat3?"

                    SOURCE-START
e26   THERE-EXISTS  1 "Is there an apoptotic pathway that is regulated by stat3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway that is regulated by stat3?"
 (:VAR MV2293 :ISA POLAR-QUESTION :STATEMENT MV2290)
 (:VAR MV2290 :ISA THERE-EXISTS :VALUE MV2285 :PREDICATE MV2280)
 (:VAR MV2285 :ISA PATHWAY :PREDICATION MV2291 :HAS-DETERMINER "AN"
  :CELLULAR-PROCESS MV2283 :RAW-TEXT "pathway")
 (:VAR MV2291 :ISA REGULATE :AFFECTED-PROCESS MV2285 :THAT-REL T :AGENT MV2278
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV2278 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2283 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2280 :ISA SYNTACTIC-THERE))

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
e34   COPULAR-PREDICATION 1 "Of the apoptotic genes regulated by stat3, which are active in the liver" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes regulated by stat3, which are active in the liver?"
 (:VAR MV2385 :ISA COPULAR-PREDICATION :ITEM MV2375 :VALUE MV2380 :PREDICATE
  MV2379)
 (:VAR MV2375 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2376
  :HAS-DETERMINER "THE" :CELLULAR-PROCESS MV2373 :RAW-TEXT "genes")
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
e31   COPULAR-PREDICATION 1 "Of the apoptotic genes stat3 regulates, which are active in the liver" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes stat3 regulates, which are active in the liver?"
 (:VAR MV2403 :ISA COPULAR-PREDICATION :ITEM MV2394 :VALUE MV2398 :PREDICATE
  MV2397)
 (:VAR MV2394 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2395
  :HAS-DETERMINER "THE" :CELLULAR-PROCESS MV2392 :RAW-TEXT "genes")
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
e29   COPULAR-PREDICATION 1 "Of the genes stat3 regulates in the liver, which are apoptotic" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the genes stat3 regulates in the liver, which are apoptotic?"
 (:VAR MV2418 :ISA COPULAR-PREDICATION :ITEM MV2409 :VALUE MV2416 :PREDICATE
  MV2415)
 (:VAR MV2409 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2410
  :HAS-DETERMINER "THE" :RAW-TEXT "genes")
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
e23   COPULAR-PREDICATION 1 "Of the hepatic genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the hepatic genes stat3 regulates, which are apoptotic?"
 (:VAR MV2432 :ISA COPULAR-PREDICATION :ITEM MV2426 :VALUE MV2430 :PREDICATE
  MV2429)
 (:VAR MV2426 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2427
  :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2425 :RAW-TEXT "genes")
 (:VAR MV2427 :ISA REGULATE :OBJECT MV2426 :AGENT MV2422 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV2422 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2425 :ISA LIVER) (:VAR MV2430 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV2429 :ISA BE :PRESENT "PRESENT"))

___________________
246: "Of the liver genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e23   COPULAR-PREDICATION 1 "Of the liver genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the liver genes stat3 regulates, which are apoptotic?"
 (:VAR MV2445 :ISA COPULAR-PREDICATION :ITEM MV2439 :VALUE MV2443 :PREDICATE
  MV2442)
 (:VAR MV2439 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV2440
  :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2438 :RAW-TEXT "genes")
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
 (:VAR MV2455 :ISA SHOW :STATEMENT-OR-THEME MV2458 :BENEFICIARY MV2456 :PRESENT
  "PRESENT" :ADVERB MV2454)
 (:VAR MV2458 :ISA PATHWAY :PREDICATION MV2459 :MODIFIER MV2457 :RAW-TEXT
  "pathways")
 (:VAR MV2459 :ISA INVOLVE :THEME MV2458 :THEME MV2460 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV2460 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2457 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
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
 (:VAR MV2491 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405"))

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
 (:VAR MV2601 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
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
 (:VAR MV2662 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV2661 :RAW-TEXT "targets")
 (:VAR MV2661 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

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
e20   IN            1 "What are the regulators of mapk14 in bladeeer" 10
                    END-OF-SOURCE
("What are the regulators of mapk14 in bladeeer"
 (:VAR MV2766 :ISA WH-QUESTION :STATEMENT MV2764 :WH WHAT)
 (:VAR MV2764 :ISA PREPOSITIONAL-PHRASE :POBJ MV2763 :PREP "IN")
 (:VAR MV2763 :ISA BIO-ENTITY :NAME "bladeeer"))

___________________
285: "What are the regulators of mapk14"

                    SOURCE-START
e13   BE            1 "What are the regulators of mapk14" 8
                    END-OF-SOURCE
("What are the regulators of mapk14"
 (:VAR MV2769 :ISA BE :SUBJECT MV2768 :PREDICATE MV2771 :PRESENT "PRESENT")
 (:VAR MV2768 :ISA WHAT)
 (:VAR MV2771 :ISA REGULATOR :THEME MV2767 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV2767 :ISA PROTEIN :RAW-TEXT "mapk14" :UID "UP:Q16539" :NAME
  "MK14_HUMAN"))

___________________
286: "What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e28   COPULAR-PREDICATION 1 "What are the transcription factors in common to the SRF, HRAS, and elk1 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
 (:VAR MV2788 :ISA COPULAR-PREDICATION :ITEM MV2777 :VALUE MV2775 :PREDICATE
  MV2778)
 (:VAR MV2777 :ISA WHAT) (:VAR MV2775 :ISA IN-COMMON :THEME MV2785)
 (:VAR MV2785 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV2786 :RAW-TEXT
  "genes")
 (:VAR MV2786 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV2782 MV2783 MV2776))
 (:VAR MV2782 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2783 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV2776 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV2778 :ISA BE :PREDICATE MV2774 :PRESENT "PRESENT")
 (:VAR MV2774 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :RAW-TEXT
  "transcription factors"))

___________________
287: "What are the transcription factors that regulate EELK1 and SRF?"

                    SOURCE-START
e21   BE            1 "What are the transcription factors that regulate EELK1 and SRF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EELK1 and SRF?"
 (:VAR MV2791 :ISA BE :SUBJECT MV2790 :PREDICATE MV2789 :PRESENT "PRESENT")
 (:VAR MV2790 :ISA WHAT)
 (:VAR MV2789 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2794 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2794 :ISA REGULATE :AGENT MV2789 :THAT-REL T :OBJECT MV2800 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2800 :ISA COLLECTION :RAW-TEXT "EELK1 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV2799 MV2798))
 (:VAR MV2799 :ISA BIO-ENTITY :NAME "EELK1")
 (:VAR MV2798 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
288: "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"

                    SOURCE-START
e30   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
 (:VAR MV2805 :ISA BE :SUBJECT MV2804 :PREDICATE MV2801 :PRESENT "PRESENT")
 (:VAR MV2804 :ISA WHAT)
 (:VAR MV2801 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2808 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2808 :ISA REGULATE :AGENT MV2801 :THAT-REL T :OBJECT MV2815 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2815 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2809 MV2810 MV2814 MV2802 MV2803))
 (:VAR MV2809 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2810 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2814 :ISA BIO-ENTITY :NAME "STAAT3")
 (:VAR MV2802 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2803 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
289: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e29   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV2821 :ISA BE :SUBJECT MV2820 :PREDICATE MV2816 :PRESENT "PRESENT")
 (:VAR MV2820 :ISA WHAT)
 (:VAR MV2816 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV2824 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV2824 :ISA REGULATE :AGENT MV2816 :THAT-REL T :OBJECT MV2828 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2828 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV2825 MV2826 MV2817 MV2818 MV2819))
 (:VAR MV2825 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV2826 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV2817 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV2818 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV2819 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
290: "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"

                    SOURCE-START
e26   BE            1 "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
 (:VAR MV2833 :ISA BE :SUBJECT MV2832 :PREDICATE MV2837 :PRESENT "PRESENT")
 (:VAR MV2832 :ISA WHAT)
 (:VAR MV2837 :ISA REGULATOR :THEME MV2841 :HAS-DETERMINER "THE" :CONTEXT
  MV2835 :RAW-TEXT "regulators")
 (:VAR MV2841 :ISA COLLECTION :RAW-TEXT "CCND1, FOXM1, DHFR, and KLF4" :TYPE
  PROTEIN :NUMBER 4 :ITEMS (MV2829 MV2830 MV2839 MV2831))
 (:VAR MV2829 :ISA PROTEIN :RAW-TEXT "CCND1" :UID "UP:P24385" :NAME
  "CCND1_HUMAN")
 (:VAR MV2830 :ISA PROTEIN :RAW-TEXT "FOXM1" :UID "UP:Q08050" :NAME
  "FOXM1_HUMAN")
 (:VAR MV2839 :ISA PROTEIN :RAW-TEXT "DHFR" :UID "UP:P00374" :NAME "DYR_HUMAN")
 (:VAR MV2831 :ISA PROTEIN :RAW-TEXT "KLF4" :UID "UP:O43474" :NAME
  "KLF4_HUMAN")
 (:VAR MV2835 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
291: "What cell cycle genes are regulated by FOS?"

                    SOURCE-START
e14   REGULATE      1 "What cell cycle genes are regulated by FOS" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What cell cycle genes are regulated by FOS?"
 (:VAR MV2850 :ISA REGULATE :OBJECT MV2845 :AGENT MV2849 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV2845 :ISA GENE :HAS-DETERMINER "WHAT" :CELLULAR-PROCESS MV2843
  :RAW-TEXT "genes")
 (:VAR MV2843 :ISA CELLULAR-PROCESS :RAW-TEXT "cell cycle" :NAME "cell cycle"
  :UID "GO:0007049")
 (:VAR MV2849 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
292: "What does ERBB regulate?"

                    SOURCE-START
e5    REGULATE      1 "What does ERBB regulate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERBB regulate?"
 (:VAR MV2855 :ISA REGULATE :OBJECT MV2852 :AGENT MV2854 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2852 :ISA WHAT)
 (:VAR MV2854 :ISA PROTEIN :RAW-TEXT "ERBB" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
293: "What does it regulate in liver"

                    SOURCE-START
e11   REGULATE      1 "What does it regulate in liver" 7
                    END-OF-SOURCE
("What does it regulate in liver"
 (:VAR MV2859 :ISA REGULATE :OBJECT MV2856 :AGENT-OR-CAUSE MV2858 :ORGAN MV2861
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV2856 :ISA WHAT) (:VAR MV2858 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV2861 :ISA LIVER))

___________________
294: "What does miR-20b-5p target"

                    SOURCE-START
e7    TARGET        1 "What does miR-20b-5p target" 11
                    END-OF-SOURCE
("What does miR-20b-5p target"
 (:VAR MV2867 :ISA TARGET :OBJECT MV2864 :AGENT MV2863 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV2864 :ISA WHAT)
 (:VAR MV2863 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
295: "What does p53 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does p53 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does p53 regulate?"
 (:VAR MV2871 :ISA REGULATE :OBJECT MV2869 :AGENT MV2868 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2869 :ISA WHAT)
 (:VAR MV2868 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
296: "What does rb1 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does rb1 regulate" 6
                    END-OF-SOURCE
("What does rb1 regulate"
 (:VAR MV2875 :ISA REGULATE :OBJECT MV2873 :AGENT MV2872 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2873 :ISA WHAT)
 (:VAR MV2872 :ISA PROTEIN :RAW-TEXT "rb1" :UID "UP:P06400" :NAME "RB_HUMAN"))

___________________
297: "What does smad2 regulate"

                    SOURCE-START
e6    REGULATE      1 "What does smad2 regulate" 6
                    END-OF-SOURCE
("What does smad2 regulate"
 (:VAR MV2879 :ISA REGULATE :OBJECT MV2877 :AGENT MV2876 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2877 :ISA WHAT)
 (:VAR MV2876 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
298: "What does stat regulate"

                    SOURCE-START
e5    REGULATE      1 "What does stat regulate" 5
                    END-OF-SOURCE
("What does stat regulate"
 (:VAR MV2883 :ISA REGULATE :OBJECT MV2880 :AGENT MV2882 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2880 :ISA WHAT)
 (:VAR MV2882 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
299: "What downregulates fzd8?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates fzd8?"
 (:VAR MV2886 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV2885 :OBJECT MV2884 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV2885 :ISA WHAT)
 (:VAR MV2884 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
300: "What drug could I use to target pancreatic cancer?"

                    SOURCE-START
e20   BIO-USE       1 "What drug could I use to target pancreatic cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use to target pancreatic cancer?"
 (:VAR MV2900 :ISA BIO-USE :PATIENT MV2889 :MODAL MV2890 :AGENT MV2891 :THEME
  MV2899 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV2889 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV2890 :ISA COULD) (:VAR MV2891 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2899 :ISA TARGET :OBJECT MV2887 :RAW-TEXT "target")
 (:VAR MV2887 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
301: "What drug should I use for pancreatic cancer?"

                    SOURCE-START
e17   BIO-USE       1 "What drug should I use for pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug should I use for pancreatic cancer?"
 (:VAR MV2912 :ISA BIO-USE :OBJECT MV2903 :MODAL MV2904 :AGENT MV2905 :DISEASE
  MV2901 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV2903 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV2904 :ISA SHOULD) (:VAR MV2905 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV2901 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
302: "What drugs are inhibitors of GRB2?"

                    SOURCE-START
e12   BE            1 "What drugs are inhibitors of GRB2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs are inhibitors of GRB2?"
 (:VAR MV2916 :ISA BE :SUBJECT MV2915 :PREDICATE MV2917 :PRESENT "PRESENT")
 (:VAR MV2915 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2917 :ISA INHIBITOR :PROTEIN MV2913 :RAW-TEXT "inhibitors")
 (:VAR MV2913 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN"))

___________________
303: "What drugs inhibit MAP2K1?"

                    SOURCE-START
e7    INHIBIT       1 "What drugs inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs inhibit MAP2K1?"
 (:VAR MV2923 :ISA INHIBIT :AGENT MV2922 :OBJECT MV2920 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV2922 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2920 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
304: "What drugs regulate BRAF?"

                    SOURCE-START
e6    REGULATE      1 "What drugs regulate BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs regulate BRAF?"
 (:VAR MV2926 :ISA REGULATE :AGENT MV2925 :OBJECT MV2927 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV2925 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2927 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
305: "What drugs target BRAF?"

                    SOURCE-START
e7    TARGET        1 "What drugs target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target BRAF?"
 (:VAR MV2931 :ISA TARGET :AGENT MV2929 :OBJECT MV2932 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV2929 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV2932 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
306: "What genes are downstream of stat3?"

                    SOURCE-START
e13   BE            1 "What genes are downstream of stat3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are downstream of stat3?"
 (:VAR MV2936 :ISA BE :SUBJECT MV2935 :PREDICATE MV2937 :PRESENT "PRESENT")
 (:VAR MV2935 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2937 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV2933 :RAW-TEXT
  "downstream")
 (:VAR MV2933 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
307: "What genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathway?"
 (:VAR MV2951 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2943 :VALUE MV2950 :PREP
  "IN" :PREDICATE MV2944)
 (:VAR MV2943 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2950 :ISA GENE :CONTEXT MV2941 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2941 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2947
  :RAW-TEXT "signaling pathway")
 (:VAR MV2947 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2944 :ISA BE :PRESENT "PRESENT"))

___________________
308: "What genes are in the MAPK signaling pathways?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathways?"
 (:VAR MV2963 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2955 :VALUE MV2962 :PREP
  "IN" :PREDICATE MV2956)
 (:VAR MV2955 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2962 :ISA GENE :CONTEXT MV2953 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2953 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2959
  :RAW-TEXT "signaling pathways")
 (:VAR MV2959 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV2956 :ISA BE :PRESENT "PRESENT"))

___________________
309: "What genes are in the immune system pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the immune system pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the immune system pathway?"
 (:VAR MV2975 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2967 :VALUE MV2974 :PREP
  "IN" :PREDICATE MV2968)
 (:VAR MV2967 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2974 :ISA GENE :CONTEXT MV2971 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2971 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV2965
  :RAW-TEXT "pathway")
 (:VAR MV2965 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405")
 (:VAR MV2968 :ISA BE :PRESENT "PRESENT"))

___________________
310: "What genes are in the prolactin signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the prolactin signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the prolactin signaling pathway?"
 (:VAR MV2987 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV2979 :VALUE MV2986 :PREP
  "IN" :PREDICATE MV2980)
 (:VAR MV2979 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2986 :ISA GENE :CONTEXT MV2977 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV2977 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2983
  :RAW-TEXT "signaling pathway")
 (:VAR MV2983 :ISA PROTEIN :RAW-TEXT "prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN")
 (:VAR MV2980 :ISA BE :PRESENT "PRESENT"))

___________________
311: "What genes are involved in the IL-12 pathway?"

                    SOURCE-START
e18   INVOLVE       1 "What genes are involved in the IL-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the IL-12 pathway?"
 (:VAR MV3000 :ISA INVOLVE :THEME MV2992 :CONTEXT MV2997 :PRESENT "PRESENT")
 (:VAR MV2992 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV2997 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV2990 :RAW-TEXT
  "pathway")
 (:VAR MV2990 :ISA PROTEIN :RAW-TEXT "IL-12" :UID "NCIT:C20514" :NAME
  "NCIT:C20514"))

___________________
312: "What genes are involved in the Prolactin pathway?"

                    SOURCE-START
e16   INVOLVE       1 "What genes are involved in the Prolactin pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the Prolactin pathway?"
 (:VAR MV3011 :ISA INVOLVE :THEME MV3002 :CONTEXT MV3008 :PRESENT "PRESENT")
 (:VAR MV3002 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3008 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3007 :RAW-TEXT
  "pathway")
 (:VAR MV3007 :ISA PROTEIN :RAW-TEXT "Prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN"))

___________________
313: "What genes are involved in the il-12 pathway?"

                    SOURCE-START
e17   INVOLVE       1 "What genes are involved in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the il-12 pathway?"
 (:VAR MV3022 :ISA INVOLVE :THEME MV3014 :CONTEXT MV3019 :PRESENT "PRESENT")
 (:VAR MV3014 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3019 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3012 :RAW-TEXT
  "pathway")
 (:VAR MV3012 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
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
 (:VAR MV3033 :ISA INVOLVE :THEME MV3025 :CONTEXT MV3030 :PRESENT "PRESENT")
 (:VAR MV3025 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3030 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV3023
  :RAW-TEXT "pathway")
 (:VAR MV3023 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405"))

___________________
315: "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"

                    SOURCE-START
e23   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p" 28
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
 (:VAR MV3046 :ISA REGULATE :OBJECT MV3038 :AGENT MV3045 :PRESENT "PRESENT"
  :SUPERLATIVE MV3040 :ADVERB MV3041 :RAW-TEXT "regulated")
 (:VAR MV3038 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3045 :ISA COLLECTION :RAW-TEXT "miR-335-5p, miR-155-5p and miR-145-5p"
  :TYPE MICRO-RNA :NUMBER 3 :ITEMS (MV3034 MV3035 MV3036))
 (:VAR MV3034 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3035 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3036 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3040 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3041 :ISA FREQUENTLY :NAME "frequently"))

___________________
316: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"

                    SOURCE-START
e26   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" 36
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
 (:VAR MV3061 :ISA REGULATE :OBJECT MV3053 :AGENT MV3060 :PRESENT "PRESENT"
  :SUPERLATIVE MV3055 :ADVERB MV3056 :RAW-TEXT "regulated")
 (:VAR MV3053 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3060 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" :TYPE MICRO-RNA :NUMBER 4
  :ITEMS (MV3048 MV3049 MV3050 MV3051))
 (:VAR MV3048 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV3049 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV3050 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437")
 (:VAR MV3051 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075")
 (:VAR MV3055 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3056 :ISA FREQUENTLY :NAME "frequently"))

___________________
317: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"

                    SOURCE-START
e27   REGULATE      1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" 37
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
 (:VAR MV3076 :ISA REGULATE :OBJECT MV3068 :AGENT MV3075 :PRESENT "PRESENT"
  :SUPERLATIVE MV3070 :ADVERB MV3071 :RAW-TEXT "regulated")
 (:VAR MV3068 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3075 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" :TYPE MICRO-RNA :NUMBER
  4 :ITEMS (MV3063 MV3064 MV3065 MV3066))
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
318: "What genes are regulated by FAKEPRTN"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by FAKEPRTN" 7
                    END-OF-SOURCE
("What genes are regulated by FAKEPRTN"
 (:VAR MV3084 :ISA REGULATE :OBJECT MV3079 :AGENT MV3083 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3079 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3083 :ISA BIO-ENTITY :NAME "FAKEPRTN"))

___________________
319: "What genes are regulated by elk1 and srf?"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by elk1 and srf" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by elk1 and srf?"
 (:VAR MV3095 :ISA REGULATE :OBJECT MV3088 :AGENT MV3094 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3088 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3094 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3086 MV3093))
 (:VAR MV3086 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV3093 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
320: "What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"

                    SOURCE-START
e16   REGULATE      1 "What genes are regulated by miR-20b-5p and MIR-29B-1-5P" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
 (:VAR MV3106 :ISA REGULATE :OBJECT MV3100 :AGENT MV3105 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3100 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3105 :ISA COLLECTION :RAW-TEXT "miR-20b-5p and MIR-29B-1-5P" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV3097 MV3098))
 (:VAR MV3097 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV3098 :ISA MICRO-RNA :RAW-TEXT "MIR-29B-1-5P" :NAME
  "microRNA 29b-1-5pm" :UID "MIMAT0004514"))

___________________
321: "What genes are regulated by smda2"

                    SOURCE-START
e13   REGULATE      1 "What genes are regulated by smda2" 8
                    END-OF-SOURCE
("What genes are regulated by smda2"
 (:VAR MV3116 :ISA REGULATE :OBJECT MV3109 :AGENT MV3115 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3109 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3115 :ISA BIO-ENTITY :NAME "SMDA2"))

___________________
322: "What genes are regulated by srf"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by srf" 7
                    END-OF-SOURCE
("What genes are regulated by srf"
 (:VAR MV3124 :ISA REGULATE :OBJECT MV3119 :AGENT MV3123 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3119 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3123 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
323: "What genes are regulated by stat3 and srf"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by stat3 and srf" 10
                    END-OF-SOURCE
("What genes are regulated by stat3 and srf"
 (:VAR MV3135 :ISA REGULATE :OBJECT MV3128 :AGENT MV3134 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3128 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3134 :ISA COLLECTION :RAW-TEXT "stat3 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3126 MV3133))
 (:VAR MV3126 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3133 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
324: "What genes are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What genes are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are targeted by lung cancer?"
 (:VAR MV3143 :ISA TARGET :OBJECT MV3139 :CAUSE MV3137 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3139 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3137 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
325: "What genes are there in the MAPK signaling pathway?"

                    SOURCE-START
e21   COPULAR-PREDICATE 1 "What genes are there in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are there in the MAPK signaling pathway?"
 (:VAR MV3157 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3147 :VALUE MV3156 :PREP
  "IN" :PREDICATE MV3148)
 (:VAR MV3147 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3156 :ISA GENE :CONTEXT MV3145 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3145 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3153
  :RAW-TEXT "signaling pathway")
 (:VAR MV3153 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3148 :ISA BE :PRESENT "PRESENT"))

___________________
326: "What genes are used in the MAPK signaling pathway?"

                    SOURCE-START
e17   BIO-USE       1 "What genes are used in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are used in the MAPK signaling pathway?"
 (:VAR MV3167 :ISA BIO-USE :OBJECT MV3161 :CONTEXT MV3159 :PRESENT "PRESENT"
  :RAW-TEXT "used")
 (:VAR MV3161 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3159 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3166
  :RAW-TEXT "signaling pathway")
 (:VAR MV3166 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3174 :ISA TARGET :OBJECT MV3171 :CAUSE MV3169 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3171 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3169 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
328: "What genes does miR-20b-5p target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-20b-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-20b-5p target?"
 (:VAR MV3180 :ISA TARGET :OBJECT MV3177 :AGENT MV3175 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3177 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3175 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
329: "What genes does miR-562 target?"

                    SOURCE-START
e9    TARGET        1 "What genes does miR-562 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-562 target?"
 (:VAR MV3186 :ISA TARGET :OBJECT MV3183 :AGENT MV3181 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3183 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3181 :ISA MICRO-RNA :RAW-TEXT "miR-562" :NAME "microRNA 562" :UID
  "MI0003569"))

___________________
330: "What genes does smad2 upregulate?"

                    SOURCE-START
e8    UPREGULATE    1 "What genes does smad2 upregulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does smad2 upregulate?"
 (:VAR MV3191 :ISA UPREGULATE :OBJECT MV3189 :AGENT MV3187 :PRESENT "PRESENT"
  :RAW-TEXT "upregulate")
 (:VAR MV3189 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3187 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
331: "What genes does stat3 regulate in liver cells?"

                    SOURCE-START
e15   REGULATE      1 "What genes does stat3 regulate in liver cells" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver cells?"
 (:VAR MV3196 :ISA REGULATE :OBJECT MV3194 :AGENT MV3192 :CELL-TYPE MV3199
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3194 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3192 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3199 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV3198)
 (:VAR MV3198 :ISA LIVER))

___________________
332: "What genes does stat3 regulate in liver?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver?"
 (:VAR MV3205 :ISA REGULATE :OBJECT MV3203 :AGENT MV3201 :ORGAN MV3207 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3203 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3201 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3207 :ISA LIVER))

___________________
333: "What genes does stat3 regulate in lung?"

                    SOURCE-START
e13   REGULATE      1 "What genes does stat3 regulate in lung" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in lung?"
 (:VAR MV3213 :ISA REGULATE :OBJECT MV3211 :AGENT MV3209 :ORGAN MV3215 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3211 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3209 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3215 :ISA LUNG))

___________________
334: "What genes does stat3 regulate"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    END-OF-SOURCE
("What genes does stat3 regulate"
 (:VAR MV3221 :ISA REGULATE :OBJECT MV3219 :AGENT MV3217 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3219 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3217 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
335: "What genes in the liver does stat3 regulate?"

                    SOURCE-START
e16   REGULATE      1 "What genes in the liver does stat3 regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes in the liver does stat3 regulate?"
 (:VAR MV3229 :ISA REGULATE :OBJECT MV3224 :AGENT MV3222 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3224 :ISA GENE :ORGAN MV3227 :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3227 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV3222 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
336: "What genes is stat3 upstream from?"

                    SOURCE-START
e12   FROM          1 "What genes is stat3 upstream from" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes is stat3 upstream from?"
 (:VAR MV3238 :ISA WH-QUESTION :STATEMENT MV3237 :VAR NIL :WH WHAT)
 (:VAR MV3237 :ISA FROM :WORD "from"))

___________________
337: "What genes is stat3 upstream of?"

                    SOURCE-START
e12   BE            1 "What genes is stat3 upstream of" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes is stat3 upstream of?"
 (:VAR MV3242 :ISA BE :SUBJECT MV3241 :PREDICATE MV3243 :PRESENT "PRESENT")
 (:VAR MV3241 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3243 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3241 :MODIFIER MV3239
  :RAW-TEXT "upstream")
 (:VAR MV3241 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3239 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
338: "What genes regulated by FOS are kinases?"

                    SOURCE-START
e14   BE            1 "What genes regulated by FOS are kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by FOS are kinases?"
 (:VAR MV3251 :ISA BE :SUBJECT MV3247 :PREDICATE MV3252 :PRESENT "PRESENT")
 (:VAR MV3247 :ISA GENE :PREDICATION MV3248 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3248 :ISA REGULATE :OBJECT MV3247 :AGENT MV3250 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3250 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV3252 :ISA KINASE :RAW-TEXT "kinases"))

___________________
339: "What genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "What genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by stat3 are kinases?"
 (:VAR MV3259 :ISA BE :SUBJECT MV3256 :PREDICATE MV3260 :PRESENT "PRESENT")
 (:VAR MV3256 :ISA GENE :PREDICATION MV3257 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV3257 :ISA REGULATE :OBJECT MV3256 :AGENT MV3254 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3254 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3260 :ISA KINASE :RAW-TEXT "kinases"))

___________________
340: "What immune pathways involve KRAS and ELK1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve KRAS and ELK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve KRAS and ELK1?"
 (:VAR MV3266 :ISA INVOLVE :THEME MV3265 :THEME MV3269 :PRESENT "PRESENT")
 (:VAR MV3265 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3264 :RAW-TEXT
  "pathways")
 (:VAR MV3264 :ISA IMMUNE :NAME "immune")
 (:VAR MV3269 :ISA COLLECTION :RAW-TEXT "KRAS and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3267 MV3262))
 (:VAR MV3267 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3262 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
341: "What immune pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "What immune pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve SRF?"
 (:VAR MV3273 :ISA INVOLVE :THEME MV3272 :THEME MV3274 :PRESENT "PRESENT")
 (:VAR MV3272 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3271 :RAW-TEXT
  "pathways")
 (:VAR MV3271 :ISA IMMUNE :NAME "immune")
 (:VAR MV3274 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
342: "What immune pathways involve kras and elk1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve kras and elk1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve kras and elk1?"
 (:VAR MV3279 :ISA INVOLVE :THEME MV3278 :THEME MV3282 :PRESENT "PRESENT")
 (:VAR MV3278 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3277 :RAW-TEXT
  "pathways")
 (:VAR MV3277 :ISA IMMUNE :NAME "immune")
 (:VAR MV3282 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3280 MV3275))
 (:VAR MV3280 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3275 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
343: "What immune pathways involve tap1 and jak1?"

                    SOURCE-START
e17   INVOLVE       1 "What immune pathways involve tap1 and jak1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve tap1 and jak1?"
 (:VAR MV3286 :ISA INVOLVE :THEME MV3285 :THEME MV3296 :PRESENT "PRESENT")
 (:VAR MV3285 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3284 :RAW-TEXT
  "pathways")
 (:VAR MV3284 :ISA IMMUNE :NAME "immune")
 (:VAR MV3296 :ISA COLLECTION :RAW-TEXT "tap1 and jak1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3294 MV3295))
 (:VAR MV3294 :ISA PROTEIN :RAW-TEXT "tap1" :UID "UP:Q03518" :NAME
  "TAP1_HUMAN")
 (:VAR MV3295 :ISA PROTEIN :RAW-TEXT "jak1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
344: "What inhibits BRAF?"

                    SOURCE-START
e4    INHIBIT       1 "What inhibits BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits BRAF?"
 (:VAR MV3298 :ISA INHIBIT :AGENT-OR-CAUSE MV3297 :OBJECT MV3299 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV3297 :ISA WHAT)
 (:VAR MV3299 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
345: "What is STAT3?"

                    SOURCE-START
e5    BE            1 "What is STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT3?"
 (:VAR MV3302 :ISA BE :SUBJECT MV3301 :PREDICATE MV3300 :PRESENT "PRESENT")
 (:VAR MV3301 :ISA WHAT)
 (:VAR MV3300 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
346: "What is STAT?"

                    SOURCE-START
e4    BE            1 "What is STAT" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT?"
 (:VAR MV3304 :ISA BE :SUBJECT MV3303 :PREDICATE MV3305 :PRESENT "PRESENT")
 (:VAR MV3303 :ISA WHAT)
 (:VAR MV3305 :ISA PROTEIN :RAW-TEXT "STAT" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
347: "What is downstream of stat3?"

                    SOURCE-START
e11   BE            1 "What is downstream of stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is downstream of stat3?"
 (:VAR MV3308 :ISA BE :SUBJECT MV3307 :PREDICATE MV3309 :PRESENT "PRESENT")
 (:VAR MV3307 :ISA WHAT)
 (:VAR MV3309 :ISA DOWNSTREAM-SEGMENT :PATHWAYCOMPONENT MV3306 :RAW-TEXT
  "downstream")
 (:VAR MV3306 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
348: "What is erbb?"

                    SOURCE-START
e4    BE            1 "What is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is erbb?"
 (:VAR MV3314 :ISA BE :SUBJECT MV3313 :PREDICATE MV3315 :PRESENT "PRESENT")
 (:VAR MV3313 :ISA WHAT)
 (:VAR MV3315 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
349: "What is errb?"

                    SOURCE-START
e4    BE            1 "What is errb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is errb?"
 (:VAR MV3317 :ISA BE :SUBJECT MV3316 :PREDICATE MV3318 :PRESENT "PRESENT")
 (:VAR MV3316 :ISA WHAT) (:VAR MV3318 :ISA BIO-ENTITY :NAME "errb"))

___________________
350: "What is regulated by elk1"

                    SOURCE-START
e10   REGULATE      1 "What is regulated by elk1" 7
                    END-OF-SOURCE
("What is regulated by elk1"
 (:VAR MV3324 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3320 :AGENT MV3319
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3320 :ISA WHAT)
 (:VAR MV3319 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
351: "What is the evidence that kras decreases frizzled8?"

                    SOURCE-START
e17   BE            1 "What is the evidence that kras decreases frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases frizzled8?"
 (:VAR MV3328 :ISA BE :SUBJECT MV3327 :PREDICATE MV3334 :PRESENT "PRESENT")
 (:VAR MV3327 :ISA WHAT)
 (:VAR MV3334 :ISA EVIDENCE :STATEMENT MV3333 :HAS-DETERMINER "THE")
 (:VAR MV3333 :ISA DECREASE :AGENT MV3332 :OBJECT MV3326 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV3332 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3326 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
352: "What is the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   BE            1 "What is the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV3337 :ISA BE :SUBJECT MV3336 :PREDICATE MV3347 :PRESENT "PRESENT")
 (:VAR MV3336 :ISA WHAT)
 (:VAR MV3347 :ISA EVIDENCE :STATEMENT MV3342 :HAS-DETERMINER "THE")
 (:VAR MV3342 :ISA DECREASE :AGENT MV3341 :AFFECTED-PROCESS-OR-OBJECT MV3344
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV3341 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3344 :ISA BIO-AMOUNT :MEASURED-ITEM MV3335 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV3335 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
353: "What is the target of Selumetinib?"

                    SOURCE-START
e13   BE            1 "What is the target of Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the target of Selumetinib?"
 (:VAR MV3349 :ISA BE :SUBJECT MV3348 :PREDICATE MV3351 :PRESENT "PRESENT")
 (:VAR MV3348 :ISA WHAT)
 (:VAR MV3351 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV3354 :HAS-DETERMINER "THE"
  :RAW-TEXT "target")
 (:VAR MV3354 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
354: "What kinases does smad2 regulate"

                    SOURCE-START
e8    REGULATE      1 "What kinases does smad2 regulate" 7
                    END-OF-SOURCE
("What kinases does smad2 regulate"
 (:VAR MV3360 :ISA REGULATE :OBJECT MV3358 :AGENT MV3356 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3358 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV3356 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
355: "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e23   REGULATE      1 "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3368 :ISA REGULATE :AGENT MV3365 :OBJECT MV3372 :PRESENT "PRESENT"
  :ADVERB MV3366 :ADVERB MV3367 :RAW-TEXT "regulate")
 (:VAR MV3365 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3372 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3369 MV3370 MV3361 MV3362 MV3363))
 (:VAR MV3369 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV3370 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3361 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3362 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV3363 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN")
 (:VAR MV3366 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV3367 :ISA FREQUENTLY :NAME "frequently"))

___________________
356: "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV3378 :ISA REGULATE :AGENT MV3377 :OBJECT MV3382 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3377 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV3382 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3379 MV3380 MV3373 MV3374 MV3375))
 (:VAR MV3379 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV3380 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3373 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3374 :ISA PROTEIN :RAW-TEXT "JAK2" :UID "UP:O60674" :NAME
  "JAK2_HUMAN")
 (:VAR MV3375 :ISA PROTEIN :RAW-TEXT "SMAD3" :UID "UP:P84022" :NAME
  "SMAD3_HUMAN"))

___________________
357: "What micrornas are regulated by p53?"

                    SOURCE-START
e12   REGULATE      1 "What micrornas are regulated by p53" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What micrornas are regulated by p53?"
 (:VAR MV3389 :ISA REGULATE :OBJECT MV3385 :AGENT MV3383 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3385 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3383 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
358: "What micrornas regulate genes in the mapk signaling pathways"

                    SOURCE-START
e17   REGULATE      1 "What micrornas regulate genes in the mapk signaling pathways" 10
                    END-OF-SOURCE
("What micrornas regulate genes in the mapk signaling pathways"
 (:VAR MV3394 :ISA REGULATE :AGENT MV3393 :OBJECT MV3395 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3393 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV3395 :ISA GENE :CONTEXT MV3391 :RAW-TEXT "genes")
 (:VAR MV3391 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3398
  :RAW-TEXT "signaling pathways")
 (:VAR MV3398 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
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
 (:VAR MV3401 :ISA INVOLVE :THEME MV3403 :THEME MV3402 :PRESENT "PRESENT")
 (:VAR MV3403 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :NAME "pahtways")
 (:VAR MV3402 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
360: "What pathways are common to STAT3 and SRF?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What pathways are common to STAT3 and SRF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are common to STAT3 and SRF?"
 (:VAR MV3414 :ISA COPULAR-PREDICATION :ITEM MV3406 :VALUE MV3408 :PREDICATE
  MV3407)
 (:VAR MV3406 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3408 :ISA COMMON :THEME MV3412)
 (:VAR MV3412 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3404 MV3411))
 (:VAR MV3404 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3411 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3407 :ISA BE :PRESENT "PRESENT"))

___________________
361: "What pathways involve cfos?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve cfos" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve cfos?"
 (:VAR MV3417 :ISA INVOLVE :THEME MV3416 :THEME MV3418 :PRESENT "PRESENT")
 (:VAR MV3416 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3418 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
362: "What pathways involve kras and elk1?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve kras and elk1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve kras and elk1?"
 (:VAR MV3422 :ISA INVOLVE :THEME MV3421 :THEME MV3425 :PRESENT "PRESENT")
 (:VAR MV3421 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3425 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3423 MV3419))
 (:VAR MV3423 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV3419 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
363: "What pathways involve the SRF transcription factor?"

                    SOURCE-START
e12   INVOLVE       1 "What pathways involve the SRF transcription factor" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the SRF transcription factor?"
 (:VAR MV3429 :ISA INVOLVE :THEME MV3428 :THEME MV3426 :PRESENT "PRESENT")
 (:VAR MV3428 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV3426 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :MODIFIER MV3431
  :RAW-TEXT "transcription factor")
 (:VAR MV3431 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
364: "What pathways utilize srf and is srf a kinase"

                    SOURCE-START
e16   KINASE        1 "What pathways utilize srf and is srf a kinase" 10
                    END-OF-SOURCE
("What pathways utilize srf and is srf a kinase"
 (:VAR MV3442 :ISA WH-QUESTION :STATEMENT MV3440 :VAR NIL :WH WHAT)
 (:VAR MV3440 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
365: "What proteins are in the MAPK family?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What proteins are in the MAPK family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are in the MAPK family?"
 (:VAR MV3453 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3444 :VALUE MV3451 :PREP
  MV3446 :PREDICATE MV3445)
 (:VAR MV3444 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3451 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3446 :ISA IN :WORD "in") (:VAR MV3445 :ISA BE :PRESENT "PRESENT"))

___________________
366: "What proteins are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by lung cancer?"
 (:VAR MV3460 :ISA TARGET :OBJECT MV3456 :CAUSE MV3454 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3456 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3454 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
367: "What proteins does PLX-4720 target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does PLX-4720 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does PLX-4720 target?"
 (:VAR MV3467 :ISA TARGET :OBJECT MV3464 :AGENT MV3462 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3464 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3462 :ISA MOLECULE :RAW-TEXT "PLX-4720" :NAME "plx-4720" :UID
  "PCID:24180719"))

___________________
368: "What proteins does lung cancer target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does lung cancer target" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does lung cancer target?"
 (:VAR MV3473 :ISA TARGET :OBJECT MV3470 :CAUSE MV3468 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3470 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3468 :ISA CANCER :NAME "lung cancer" :UID "TS-0571"))

___________________
369: "What proteins does vemurafenib target?"

                    SOURCE-START
e8    TARGET        1 "What proteins does vemurafenib target" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does vemurafenib target?"
 (:VAR MV3479 :ISA TARGET :OBJECT MV3475 :AGENT MV3477 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV3475 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3477 :ISA DRUG :RAW-TEXT "vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257"))

___________________
370: "What proteins might lead to the development of lung cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of lung cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins might lead to the development of lung cancer?"
 (:VAR MV3484 :ISA LEAD :AGENT MV3482 :THEME MV3487 :MODAL MV3483 :RAW-TEXT
  "lead")
 (:VAR MV3482 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3487 :ISA DEVELOPMENT :DISEASE MV3480 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV3480 :ISA CANCER :NAME "lung cancer" :UID "TS-0571")
 (:VAR MV3483 :ISA MIGHT))

___________________
371: "What proteins might lead to the development of pancreatic cancer."

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE
("What proteins might lead to the development of pancreatic cancer."
 (:VAR MV3495 :ISA LEAD :AGENT MV3493 :THEME MV3498 :MODAL MV3494 :RAW-TEXT
  "lead")
 (:VAR MV3493 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3498 :ISA DEVELOPMENT :DISEASE MV3491 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV3491 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV3494 :ISA MIGHT))

___________________
372: "What reactome pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What reactome pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune signaling?"
 (:VAR MV3505 :ISA INVOLVE :THEME MV3504 :THEME MV3507 :PRESENT "PRESENT")
 (:VAR MV3504 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV3503 :RAW-TEXT
  "pathways")
 (:VAR MV3503 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV3507 :ISA SIGNAL :MODIFIER MV3506 :RAW-TEXT "signaling")
 (:VAR MV3506 :ISA IMMUNE :NAME "immune"))

___________________
373: "What regulates HGF?"

                    SOURCE-START
e4    REGULATE      1 "What regulates HGF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates HGF?"
 (:VAR MV3509 :ISA REGULATE :AGENT-OR-CAUSE MV3508 :OBJECT MV3510 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3508 :ISA WHAT)
 (:VAR MV3510 :ISA PROTEIN :RAW-TEXT "HGF" :UID "UP:P14210" :NAME "HGF_HUMAN"))

___________________
374: "What regulates SMURF2?"

                    SOURCE-START
e5    REGULATE      1 "What regulates SMURF2" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates SMURF2?"
 (:VAR MV3513 :ISA REGULATE :AGENT-OR-CAUSE MV3512 :OBJECT MV3511 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3512 :ISA WHAT)
 (:VAR MV3511 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
375: "What regulates smurf2 in liver"

                    SOURCE-START
e10   REGULATE      1 "What regulates smurf2 in liver" 7
                    END-OF-SOURCE
("What regulates smurf2 in liver"
 (:VAR MV3516 :ISA REGULATE :AGENT-OR-CAUSE MV3515 :OBJECT MV3514 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV3515 :ISA WHAT)
 (:VAR MV3514 :ISA PROTEIN :ORGAN MV3518 :RAW-TEXT "smurf2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3518 :ISA LIVER))

___________________
376: "What signaling pathways are shared by RELA and ELK1?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by RELA and ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by RELA and ELK1?"
 (:VAR MV3529 :ISA SHARE :OBJECT MV3520 :PARTICIPANT MV3528 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3520 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3528 :ISA COLLECTION :RAW-TEXT "RELA and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3526 MV3521))
 (:VAR MV3526 :ISA PROTEIN :RAW-TEXT "RELA" :UID "UP:Q04206" :NAME
  "TF65_HUMAN")
 (:VAR MV3521 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
377: "What signaling pathways are shared by STAT3 and SRF?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by STAT3 and SRF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3 and SRF?"
 (:VAR MV3540 :ISA SHARE :OBJECT MV3531 :PARTICIPANT MV3539 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3531 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3539 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3532 MV3538))
 (:VAR MV3532 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3538 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
378: "What signaling pathways are shared by STAT3, SOCS3 and SRF?"

                    SOURCE-START
e19   SHARE         1 "What signaling pathways are shared by STAT3, SOCS3 and SRF" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
 (:VAR MV3552 :ISA SHARE :OBJECT MV3542 :PARTICIPANT MV3551 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3542 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV3551 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3 and SRF" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3543 MV3544 MV3550))
 (:VAR MV3543 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3544 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3550 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

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
 (:VAR MV3563 :ISA BIO-PRODUCE :AGENT MV3560 :OBJECT MV3561 :PRESENT "PRESENT"
  :RAW-TEXT "produces")
 (:VAR MV3560 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV3561 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
381: "What transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factor transcribes SMURF2?"
 (:VAR MV3567 :ISA TRANSCRIBE :AGENT MV3564 :OBJECT MV3565 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV3564 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV3565 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
382: "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e31   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3583 :ISA COPULAR-PREDICATION :ITEM MV3568 :VALUE MV3575 :PREDICATE
  MV3574)
 (:VAR MV3568 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3575 :ISA COMMON :THEME MV3580)
 (:VAR MV3580 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3581 :RAW-TEXT
  "genes")
 (:VAR MV3581 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3569 MV3570 MV3578 MV3571 MV3572))
 (:VAR MV3569 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3570 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3578 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3571 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3572 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3574 :ISA BE :PRESENT "PRESENT"))

___________________
383: "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e26   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3597 :ISA COPULAR-PREDICATION :ITEM MV3584 :VALUE MV3590 :PREDICATE
  MV3589)
 (:VAR MV3584 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3590 :ISA COMMON :THEME MV3594)
 (:VAR MV3594 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3595 :RAW-TEXT
  "genes")
 (:VAR MV3595 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3585 MV3586 MV3587))
 (:VAR MV3585 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3586 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3587 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3589 :ISA BE :PRESENT "PRESENT"))

___________________
384: "What genes does stat3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does stat3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate?"
 (:VAR MV3602 :ISA REGULATE :OBJECT MV3600 :AGENT MV3598 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3600 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV3598 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
385: "What transcription factors are common to these genes?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "What transcription factors are common to these genes" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to these genes?"
 (:VAR MV3611 :ISA COPULAR-PREDICATION :ITEM MV3603 :VALUE MV3606 :PREDICATE
  MV3605)
 (:VAR MV3603 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3606 :ISA COMMON :THEME MV3609)
 (:VAR MV3609 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV3605 :ISA BE :PRESENT "PRESENT"))

___________________
386: "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e32   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3627 :ISA COPULAR-PREDICATION :ITEM MV3612 :VALUE MV3613 :PREDICATE
  MV3619)
 (:VAR MV3612 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3613 :ISA IN-COMMON :THEME MV3624)
 (:VAR MV3624 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3625 :RAW-TEXT
  "genes")
 (:VAR MV3625 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3614 MV3615 MV3622 MV3616 MV3617))
 (:VAR MV3614 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3615 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3622 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3616 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3617 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3619 :ISA BE :PRESENT "PRESENT"))

___________________
387: "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3641 :ISA COPULAR-PREDICATION :ITEM MV3628 :VALUE MV3629 :PREDICATE
  MV3634)
 (:VAR MV3628 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3629 :ISA IN-COMMON :THEME MV3638)
 (:VAR MV3638 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3639 :RAW-TEXT
  "genes")
 (:VAR MV3639 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3630 MV3631 MV3632))
 (:VAR MV3630 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3631 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3632 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN")
 (:VAR MV3634 :ISA BE :PRESENT "PRESENT"))

___________________
388: "What transcription factors are regulators of SMURF2 in liver?"

                    SOURCE-START
e18   BE            1 "What transcription factors are regulators of SMURF2 in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2 in liver?"
 (:VAR MV3645 :ISA BE :SUBJECT MV3642 :PREDICATE MV3646 :PRESENT "PRESENT")
 (:VAR MV3642 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3646 :ISA REGULATOR :THEME MV3643 :RAW-TEXT "regulators")
 (:VAR MV3643 :ISA PROTEIN :ORGAN MV3649 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3649 :ISA LIVER))

___________________
389: "What transcription factors are regulators of SMURF2?"

                    SOURCE-START
e13   BE            1 "What transcription factors are regulators of SMURF2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2?"
 (:VAR MV3655 :ISA BE :SUBJECT MV3652 :PREDICATE MV3656 :PRESENT "PRESENT")
 (:VAR MV3652 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3656 :ISA REGULATOR :THEME MV3653 :RAW-TEXT "regulators")
 (:VAR MV3653 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
390: "What transcription factors are shared by the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e24   SHARE         1 "What transcription factors are shared by the SRF, HRAS, and elk1 genes" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
 (:VAR MV3671 :ISA SHARE :OBJECT MV3659 :PARTICIPANT MV3669 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3659 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3669 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3670 :RAW-TEXT
  "genes")
 (:VAR MV3670 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3666 MV3667 MV3660))
 (:VAR MV3666 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3667 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV3660 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
391: "What transcription factors regulate SMURF2 in liver?"

                    SOURCE-START
e13   REGULATE      1 "What transcription factors regulate SMURF2 in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate SMURF2 in liver?"
 (:VAR MV3676 :ISA REGULATE :AGENT MV3673 :OBJECT MV3674 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3673 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3674 :ISA PROTEIN :ORGAN MV3678 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV3678 :ISA LIVER))

___________________
392: "What transcription factors regulate ZEB1?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate ZEB1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate ZEB1?"
 (:VAR MV3683 :ISA REGULATE :AGENT MV3680 :OBJECT MV3681 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3680 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3681 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME
  "ZEB1_HUMAN"))

___________________
393: "What transcription factors regulate erk"

                    SOURCE-START
e7    REGULATE      1 "What transcription factors regulate erk" 6
                    END-OF-SOURCE
("What transcription factors regulate erk"
 (:VAR MV3686 :ISA REGULATE :AGENT MV3684 :OBJECT MV3687 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3684 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3687 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
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
 (:VAR MV3690 :ISA REGULATE :AGENT MV3688 :THEME MV3696 :OBJECT MV3691 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV3688 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3696 :ISA BIO-ENTITY :HAS-DETERMINER "THE" :MODIFIER MV3694
  :CELLULAR-PROCESS MV3695 :NAME "pathwya")
 (:VAR MV3694 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
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
 (:VAR MV3695 :ISA SIGNAL :RAW-TEXT "signaling")
 (:VAR MV3691 :ISA GENE :RAW-TEXT "genes"))

___________________
395: "What transcription factors regulated frizzled8?"

                    SOURCE-START
e9    PROTEIN       1 "What transcription factors regulated frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulated frizzled8?"
 (:VAR MV3699 :ISA PROTEIN :HAS-DETERMINER "WHAT" :PREDICATION MV3701 :RAW-TEXT
  "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV3701 :ISA REGULATE :OBJECT MV3699 :AGENT MV3698 :RAW-TEXT "regulated")
 (:VAR MV3698 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
396: "What transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors transcribe SMURF2?"
 (:VAR MV3705 :ISA TRANSCRIBE :AGENT MV3702 :OBJECT MV3703 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV3702 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3703 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
397: "What upregulates fzd8?"

                    SOURCE-START
e5    UPREGULATE    1 "What upregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates fzd8?"
 (:VAR MV3708 :ISA UPREGULATE :AGENT-OR-CAUSE MV3707 :OBJECT MV3706 :PRESENT
  "PRESENT" :RAW-TEXT "upregulates")
 (:VAR MV3707 :ISA WHAT)
 (:VAR MV3706 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
398: "Where is STAT3 expressed?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Where is STAT3 expressed" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Where is STAT3 expressed?"
 (:VAR MV3714 :ISA GENE-TRANSCRIPT-EXPRESS :LOCATION MV3710 :OBJECT MV3709
  :PAST "PAST" :RAW-TEXT "expressed")
 (:VAR MV3710 :ISA WHERE)
 (:VAR MV3709 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
399: "Which KEGG pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve SRF?"
 (:VAR MV3718 :ISA INVOLVE :THEME MV3717 :THEME MV3719 :PRESENT "PRESENT")
 (:VAR MV3717 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3716 :RAW-TEXT
  "pathways")
 (:VAR MV3716 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3719 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
400: "Which KEGG pathways use SRF?"

                    SOURCE-START
e9    BIO-USE       1 "Which KEGG pathways use SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways use SRF?"
 (:VAR MV3724 :ISA BIO-USE :AGENT MV3722 :OBJECT MV3725 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3722 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3721 :RAW-TEXT
  "pathways")
 (:VAR MV3721 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3725 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
401: "What transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate frizzled8?"
 (:VAR MV3729 :ISA REGULATE :AGENT MV3726 :OBJECT MV3727 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3726 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV3727 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
402: "Which also regulate srf"

                    SOURCE-START
e7    REGULATE      1 "Which also regulate srf" 5
                    END-OF-SOURCE
("Which also regulate srf"
 (:VAR MV3733 :ISA REGULATE :AGENT-OR-CAUSE MV3730 :OBJECT MV3734 :PRESENT
  "PRESENT" :ADVERB MV3731 :RAW-TEXT "regulate")
 (:VAR MV3730 :ISA WHICH)
 (:VAR MV3734 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV3731 :ISA ALSO :NAME "also"))

___________________
403: "Which apoptotic genes are regulated by stat3?"

                    SOURCE-START
e15   REGULATE      1 "Which apoptotic genes are regulated by stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes are regulated by stat3?"
 (:VAR MV3743 :ISA REGULATE :OBJECT MV3739 :AGENT MV3735 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV3739 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3737
  :RAW-TEXT "genes")
 (:VAR MV3737 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3735 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
404: "Which apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e15   BE            1 "Which apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes is stat3 upstream of?"
 (:VAR MV3750 :ISA BE :SUBJECT MV3749 :PREDICATE MV3751 :PRESENT "PRESENT")
 (:VAR MV3749 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3747
  :RAW-TEXT "genes")
 (:VAR MV3747 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3751 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV3749 :MODIFIER MV3745
  :RAW-TEXT "upstream")
 (:VAR MV3749 :ISA GENE :HAS-DETERMINER "WHICH" :CELLULAR-PROCESS MV3747
  :RAW-TEXT "genes")
 (:VAR MV3747 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV3745 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
405: "Which genes are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which genes are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are targeted by STAT3?"
 (:VAR MV3760 :ISA TARGET :OBJECT MV3756 :AGENT MV3754 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3756 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV3754 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
406: "Which genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "Which genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes regulated by stat3 are kinases?"
 (:VAR MV3767 :ISA BE :SUBJECT MV3764 :PREDICATE MV3768 :PRESENT "PRESENT")
 (:VAR MV3764 :ISA GENE :PREDICATION MV3765 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV3765 :ISA REGULATE :OBJECT MV3764 :AGENT MV3762 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3762 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3768 :ISA KINASE :RAW-TEXT "kinases"))

___________________
407: "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e29   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3784 :ISA SHARE :OBJECT MV3776 :PARTICIPANT MV3782 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3776 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3775 :RAW-TEXT
  "pathways")
 (:VAR MV3775 :ISA IMMUNE :NAME "immune")
 (:VAR MV3782 :ISA GENE :EXPRESSES MV3783 :RAW-TEXT "genes")
 (:VAR MV3783 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3770 MV3771 MV3780 MV3772 MV3773))
 (:VAR MV3770 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3771 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3780 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3772 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3773 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
408: "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV3799 :ISA SHARE :OBJECT MV3791 :PARTICIPANT MV3797 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3791 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3790 :RAW-TEXT
  "pathways")
 (:VAR MV3790 :ISA IMMUNE :NAME "immune")
 (:VAR MV3797 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3798 :RAW-TEXT
  "genes")
 (:VAR MV3798 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3786 MV3787 MV3788))
 (:VAR MV3786 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3787 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3788 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
409: "Which kegg pathways utilize genes regulated by smad2"

                    SOURCE-START
e15   UTILIZE       1 "Which kegg pathways utilize genes regulated by smad2" 10
                    END-OF-SOURCE
("Which kegg pathways utilize genes regulated by smad2"
 (:VAR MV3805 :ISA UTILIZE :PARTICIPANT MV3804 :OBJECT MV3806 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3804 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3803 :RAW-TEXT
  "pathways")
 (:VAR MV3803 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3806 :ISA GENE :PREDICATION MV3807 :RAW-TEXT "genes")
 (:VAR MV3807 :ISA REGULATE :OBJECT MV3806 :AGENT MV3801 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV3801 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
410: "Which Reactome pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which Reactome pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which Reactome pathways utilize SRF?"
 (:VAR MV3813 :ISA UTILIZE :PARTICIPANT MV3812 :OBJECT MV3814 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3812 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3811 :RAW-TEXT
  "pathways")
 (:VAR MV3811 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV3814 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
411: "Which kegg pathways utilize it"

                    SOURCE-START
e9    UTILIZE       1 "Which kegg pathways utilize it" 6
                    END-OF-SOURCE
("Which kegg pathways utilize it"
 (:VAR MV3818 :ISA UTILIZE :PARTICIPANT MV3817 :OBJECT MV3819 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3817 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3816 :RAW-TEXT
  "pathways")
 (:VAR MV3816 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV3819 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
412: "Which of them are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of them are regulated by elk1" 9
                    END-OF-SOURCE
("Which of them are regulated by elk1"
 (:VAR MV3827 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3823 :AGENT MV3820
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3823 :ISA PRONOUN/PLURAL :QUANTIFIER MV3821 :WORD "them")
 (:VAR MV3821 :ISA WHICH)
 (:VAR MV3820 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
413: "Which of these are expressed in liver"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of these are expressed in liver" 8
                    END-OF-SOURCE
("Which of these are expressed in liver"
 (:VAR MV3837 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV3832 :ORGAN MV3836
  :PRESENT "PRESENT" :RAW-TEXT "expressed")
 (:VAR MV3832 :ISA THESE :QUANTIFIER MV3830 :WORD "these")
 (:VAR MV3830 :ISA WHICH) (:VAR MV3836 :ISA LIVER))

___________________
414: "Which of these are in immune pathways"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    END-OF-SOURCE
("Which of these are in immune pathways"
 (:VAR MV3848 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3842 :VALUE MV3846 :PREP
  MV3844 :PREDICATE MV3843)
 (:VAR MV3842 :ISA THESE :QUANTIFIER MV3840 :WORD "these")
 (:VAR MV3840 :ISA WHICH)
 (:VAR MV3846 :ISA PATHWAY :MODIFIER MV3845 :RAW-TEXT "pathways")
 (:VAR MV3845 :ISA IMMUNE :NAME "immune") (:VAR MV3844 :ISA IN :WORD "in")
 (:VAR MV3843 :ISA BE :PRESENT "PRESENT"))

___________________
415: "what proteins does MEK phosphorylate?"

                    SOURCE-START
e7    PHOSPHORYLATE 1 "what proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("what proteins does MEK phosphorylate?"
 (:VAR MV3854 :ISA PHOSPHORYLATE :AMINO-ACID MV3851 :AGENT MV3853 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV3851 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV3853 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV3858 :ISA BE :SUBJECT MV3857 :PREDICATE MV3859 :PRESENT "PRESENT")
 (:VAR MV3857 :ISA THESE :QUANTIFIER MV3855 :WORD "these")
 (:VAR MV3855 :ISA WHICH) (:VAR MV3859 :ISA KINASE :RAW-TEXT "kinases"))

___________________
417: "Which of those are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by elk1" 9
                    END-OF-SOURCE
("Which of those are regulated by elk1"
 (:VAR MV3868 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3864 :AGENT MV3861
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3864 :ISA THOSE :QUANTIFIER MV3862 :WORD "those")
 (:VAR MV3862 :ISA WHICH)
 (:VAR MV3861 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
418: "Which of these are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by elk1" 9
                    END-OF-SOURCE
("Which of these are regulated by elk1"
 (:VAR MV3878 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3874 :AGENT MV3871
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3874 :ISA THESE :QUANTIFIER MV3872 :WORD "these")
 (:VAR MV3872 :ISA WHICH)
 (:VAR MV3871 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
419: "Which of these are regulated by fakeprotein"

                    SOURCE-START
e14   REGULATE      1 "Which of these are regulated by fakeprotein" 8
                    END-OF-SOURCE
("Which of these are regulated by fakeprotein"
 (:VAR MV3888 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV3883 :AGENT MV3887
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV3883 :ISA THESE :QUANTIFIER MV3881 :WORD "these")
 (:VAR MV3881 :ISA WHICH) (:VAR MV3887 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
420: "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3904 :ISA SHARE :OBJECT MV3896 :PARTICIPANT MV3902 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3896 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3902 :ISA GENE :EXPRESSES MV3903 :RAW-TEXT "genes")
 (:VAR MV3903 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3891 MV3892 MV3900 MV3893 MV3894))
 (:VAR MV3891 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3892 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3900 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3893 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3894 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
421: "Which pathways are shared by stat3, socs3, and creb5"

                    SOURCE-START
e21   SHARE         1 "Which pathways are shared by stat3, socs3, and creb5" 15
                    END-OF-SOURCE
("Which pathways are shared by stat3, socs3, and creb5"
 (:VAR MV3918 :ISA SHARE :OBJECT MV3909 :PARTICIPANT MV3917 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3909 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3917 :ISA COLLECTION :RAW-TEXT "stat3, socs3, and creb5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV3906 MV3907 MV3916))
 (:VAR MV3906 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3907 :ISA PROTEIN :RAW-TEXT "socs3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3916 :ISA PROTEIN :RAW-TEXT "creb5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
422: "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e30   SHARE         1 "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV3934 :ISA SHARE :OBJECT MV3925 :PARTICIPANT MV3932 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV3925 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3932 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV3933 :RAW-TEXT
  "genes")
 (:VAR MV3933 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS (MV3920 MV3921 MV3930 MV3922 MV3923))
 (:VAR MV3920 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV3921 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV3930 :ISA PROTEIN :RAW-TEXT "IFNG" :UID "UP:P01579" :NAME
  "IFNG_HUMAN")
 (:VAR MV3922 :ISA PROTEIN :RAW-TEXT "FOXO3" :UID "UP:O43524" :NAME
  "FOXO3_HUMAN")
 (:VAR MV3923 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
423: "Which pathways involve TAP1 and JAK1?"

                    SOURCE-START
e11   INVOLVE       1 "Which pathways involve TAP1 and JAK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve TAP1 and JAK1?"
 (:VAR MV3940 :ISA INVOLVE :THEME MV3939 :THEME MV3942 :PRESENT "PRESENT")
 (:VAR MV3939 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3942 :ISA COLLECTION :RAW-TEXT "TAP1 and JAK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV3936 MV3937))
 (:VAR MV3936 :ISA PROTEIN :RAW-TEXT "TAP1" :UID "UP:Q03518" :NAME
  "TAP1_HUMAN")
 (:VAR MV3937 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
424: "Which pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "Which pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve calcium?"
 (:VAR MV3945 :ISA INVOLVE :THEME MV3944 :THEME MV3946 :PRESENT "PRESENT")
 (:VAR MV3944 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3946 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
425: "Which pathways use SRF?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use SRF?"
 (:VAR MV3950 :ISA BIO-USE :AGENT MV3948 :OBJECT MV3951 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3948 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3951 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
426: "Which pathways use these"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    END-OF-SOURCE
("Which pathways use these"
 (:VAR MV3955 :ISA BIO-USE :AGENT MV3953 :OBJECT MV3956 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV3953 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3956 :ISA THESE :WORD "these"))

___________________
427: "Which pathways utilize SRF?"

                    SOURCE-START
e6    UTILIZE       1 "Which pathways utilize SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways utilize SRF?"
 (:VAR MV3959 :ISA UTILIZE :PARTICIPANT MV3958 :OBJECT MV3960 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3958 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3960 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
428: "Which pathways utilize these genes"

                    SOURCE-START
e8    UTILIZE       1 "Which pathways utilize these genes" 6
                    END-OF-SOURCE
("Which pathways utilize these genes"
 (:VAR MV3963 :ISA UTILIZE :PARTICIPANT MV3962 :OBJECT MV3965 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3962 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV3965 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
429: "Which proteins are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which proteins are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which proteins are targeted by STAT3?"
 (:VAR MV3972 :ISA TARGET :OBJECT MV3968 :AGENT MV3966 :PRESENT "PRESENT"
  :RAW-TEXT "targeted")
 (:VAR MV3968 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "proteins")
 (:VAR MV3966 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
430: "Which reactome pathways utilize srf"

                    SOURCE-START
e8    UTILIZE       1 "Which reactome pathways utilize srf" 6
                    END-OF-SOURCE
("Which reactome pathways utilize srf"
 (:VAR MV3977 :ISA UTILIZE :PARTICIPANT MV3976 :OBJECT MV3978 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV3976 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV3975 :RAW-TEXT
  "pathways")
 (:VAR MV3975 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV3978 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
431: "Which transcription factors are in the MAPK signaling pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "Which transcription factors are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors are in the MAPK signaling pathway?"
 (:VAR MV3989 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV3979 :VALUE MV3988 :PREP
  "IN" :PREDICATE MV3982)
 (:VAR MV3979 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3988 :ISA TRANSCRIPTION-FACTOR :CONTEXT-OR-IN-PATHWAY MV3980
  :HAS-DETERMINER "WHICH" :RAW-TEXT "transcription factors")
 (:VAR MV3980 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV3985
  :RAW-TEXT "signaling pathway")
 (:VAR MV3985 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV3982 :ISA BE :PRESENT "PRESENT"))

___________________
432: "Which transcription factors regulate frizzled8 in the liver?"

                    SOURCE-START
e16   REGULATE      1 "Which transcription factors regulate frizzled8 in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8 in the liver?"
 (:VAR MV3994 :ISA REGULATE :AGENT MV3991 :OBJECT MV3992 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3991 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV3992 :ISA PROTEIN :ORGAN MV3997 :RAW-TEXT "frizzled8" :UID "UP:Q9H461"
  :NAME "FZD8_HUMAN")
 (:VAR MV3997 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
433: "Which transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "Which transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8?"
 (:VAR MV4002 :ISA REGULATE :AGENT MV3999 :OBJECT MV4000 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV3999 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV4000 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
434: "Let's move AKT1 on top."

                    SOURCE-START
e11   EXPLICIT-SUGGESTION 1 "Let's move AKT1 on top" 9
                    PERIOD
                    END-OF-SOURCE
("Let's move AKT1 on top."
 (:VAR MV4009 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4005 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4005 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV4007 :THEME
  MV4004 :PRESENT "PRESENT")
 (:VAR MV4007 :ISA TOP-QUA-LOCATION)
 (:VAR MV4004 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
435: "Let's show the phosphorylated AKT1 on top."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's show the phosphorylated AKT1 on top" 11
                    PERIOD
                    END-OF-SOURCE
("Let's show the phosphorylated AKT1 on top."
 (:VAR MV4018 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4012 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4012 :ISA SHOW :AT-RELATIVE-LOCATION MV4016 :STATEMENT-OR-THEME MV4011
  :PRESENT "PRESENT")
 (:VAR MV4016 :ISA TOP-QUA-LOCATION)
 (:VAR MV4011 :ISA PROTEIN :HAS-DETERMINER "THE" :PREDICATION MV4014 :RAW-TEXT
  "AKT1" :UID "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4014 :ISA PHOSPHORYLATE :SUBSTRATE MV4011 :RAW-TEXT "phosphorylated"))

___________________
436: "What are the common upstreams of AKT1 and  BRAF?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRAF?"
 (:VAR MV4021 :ISA BE :SUBJECT MV4020 :PREDICATE MV4024 :PRESENT "PRESENT")
 (:VAR MV4020 :ISA WHAT)
 (:VAR MV4024 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4028 :HAS-DETERMINER
  "THE" :PREDICATION MV4023 :RAW-TEXT "upstreams")
 (:VAR MV4028 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV4019 MV4027))
 (:VAR MV4019 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4027 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV4023 :ISA COMMON))

___________________
437: "Is stat3 expressed exclusively in liver?"

                    SOURCE-START
e11   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed exclusively in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed exclusively in liver?"
 (:VAR MV4037 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV4035 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV4035 :ISA LIVER))

___________________
438: "Is stat3 expressed in spleen?"

                    SOURCE-START
e9    GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in spleen" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in spleen?"
 (:VAR MV4044 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV4042 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV4042 :ISA SPLEEN))

___________________
439: "Show phosphorylated akt1 on top."

                    SOURCE-START
e11   SHOW          1 "Show phosphorylated akt1 on top" 7
                    PERIOD
                    END-OF-SOURCE
("Show phosphorylated akt1 on top."
 (:VAR MV4046 :ISA SHOW :AT-RELATIVE-LOCATION MV4049 :STATEMENT-OR-THEME MV4045
  :PRESENT "PRESENT")
 (:VAR MV4049 :ISA TOP-QUA-LOCATION)
 (:VAR MV4045 :ISA PROTEIN :PREDICATION MV4047 :RAW-TEXT "akt1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4047 :ISA PHOSPHORYLATE :SUBSTRATE MV4045 :RAW-TEXT "phosphorylated"))

___________________
440: "What are the common upstreams of AKT1 and  BRA?"

                    SOURCE-START
e18   BE            1 "What are the common upstreams of AKT1 and  BRA" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRA?"
 (:VAR MV4053 :ISA BE :SUBJECT MV4052 :PREDICATE MV4056 :PRESENT "PRESENT")
 (:VAR MV4052 :ISA WHAT)
 (:VAR MV4056 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV4060 :HAS-DETERMINER
  "THE" :PREDICATION MV4055 :RAW-TEXT "upstreams")
 (:VAR MV4060 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRA" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4051 MV4059))
 (:VAR MV4051 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV4059 :ISA BIO-ENTITY :NAME "BRA") (:VAR MV4055 :ISA COMMON))

___________________
441: "RAF activates MEK and MEK activates ERK."

                    SOURCE-START
e11   BIO-ACTIVATE  1 "RAF activates MEK and MEK activates ERK" 8
                    PERIOD
                    END-OF-SOURCE
("RAF activates MEK and MEK activates ERK."
 (:VAR MV4069 :ISA COLLECTION :RAW-TEXT
  "RAF activates MEK and MEK activates ERK" :TYPE BIO-ACTIVATE :NUMBER 2 :ITEMS
  (MV4063 MV4067))
 (:VAR MV4063 :ISA BIO-ACTIVATE :AGENT MV4062 :OBJECT MV4064 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4062 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV4064 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4067 :ISA BIO-ACTIVATE :AGENT MV4066 :OBJECT MV4068 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4066 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4068 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV4071 :ISA BE :SUBJECT MV4070 :PREDICATE MV4073 :PRESENT "PRESENT")
 (:VAR MV4070 :ISA WHAT)
 (:VAR MV4073 :ISA PATH :END MV4077 :START MV4075 :HAS-DETERMINER "THE")
 (:VAR MV4077 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4075 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
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
 (:VAR MV4080 :ISA REMOVE :OBJECT MV4087 :PRESENT "PRESENT" :RAW-TEXT "remove")
 (:VAR MV4087 :ISA FACT :STATEMENT MV4085 :HAS-DETERMINER "THE")
 (:VAR MV4085 :ISA BIO-ACTIVATE :AGENT MV4084 :OBJECT MV4086 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV4084 :ISA PROTEIN-FAMILY :RAW-TEXT "mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4086 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
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
 (:VAR MV4095 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV4090 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV4090 :ISA SHOW :AT-RELATIVE-LOCATION MV4093 :STATEMENT-OR-THEME MV4089
  :PRESENT "PRESENT")
 (:VAR MV4093 :ISA TOP-QUA-LOCATION)
 (:VAR MV4089 :ISA PROTEIN :PREDICATION MV4091 :RAW-TEXT "akt1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV4091 :ISA PHOSPHORYLATE :SUBSTRATE MV4089 :RAW-TEXT "phosphorylated"))

___________________
445: "what are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "what are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what are positive regulators of the cfos gene?"
 (:VAR MV4098 :ISA BE :SUBJECT MV4097 :PREDICATE MV4096 :PRESENT "PRESENT")
 (:VAR MV4097 :ISA WHAT)
 (:VAR MV4096 :ISA POSITIVE-REGULATOR :THEME MV4102 :RAW-TEXT
  "positive regulators")
 (:VAR MV4102 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4101 :RAW-TEXT
  "gene")
 (:VAR MV4101 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
446: "what transcription factors regulate FOS in soft tissue?"

                    SOURCE-START
e13   REGULATE      1 "what transcription factors regulate FOS in soft tissue" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors regulate FOS in soft tissue?"
 (:VAR MV4107 :ISA REGULATE :AGENT MV4104 :OBJECT MV4108 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV4104 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV4108 :ISA PROTEIN :ORGAN MV4105 :RAW-TEXT "FOS" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV4105 :ISA BIO-ORGAN :NAME "soft tissue" :UID "NCIT:C12471"))

___________________
447: "Are there any drugs inhibiting MEK?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs inhibiting MEK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs inhibiting MEK?"
 (:VAR MV4119 :ISA POLAR-QUESTION :STATEMENT MV4118)
 (:VAR MV4118 :ISA THERE-EXISTS :VALUE MV4115 :PREDICATE MV4112)
 (:VAR MV4115 :ISA DRUG :PREDICATION MV4116 :QUANTIFIER MV4114 :RAW-TEXT
  "drugs")
 (:VAR MV4116 :ISA INHIBIT :AGENT MV4115 :OBJECT MV4117 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "inhibiting")
 (:VAR MV4117 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV4114 :ISA ANY :WORD "any") (:VAR MV4112 :ISA SYNTACTIC-THERE))

___________________
448: "Are there any drugs targeting KRAS?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs targeting KRAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs targeting KRAS?"
 (:VAR MV4128 :ISA POLAR-QUESTION :STATEMENT MV4127)
 (:VAR MV4127 :ISA THERE-EXISTS :VALUE MV4124 :PREDICATE MV4121)
 (:VAR MV4124 :ISA DRUG :PREDICATION MV4125 :QUANTIFIER MV4123 :RAW-TEXT
  "drugs")
 (:VAR MV4125 :ISA TARGET :AGENT MV4124 :OBJECT MV4126 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "targeting")
 (:VAR MV4126 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV4123 :ISA ANY :WORD "any") (:VAR MV4121 :ISA SYNTACTIC-THERE))

___________________
449: "Are there any genes in the liver that are regulated by stat3?"

                    SOURCE-START
e31   THERE-EXISTS  1 "Are there any genes in the liver that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes in the liver that are regulated by stat3?"
 (:VAR MV4146 :ISA POLAR-QUESTION :STATEMENT MV4142)
 (:VAR MV4142 :ISA THERE-EXISTS :VALUE MV4134 :PREDICATE MV4131)
 (:VAR MV4134 :ISA GENE :PREDICATION MV4143 :ORGAN MV4137 :QUANTIFIER MV4133
  :RAW-TEXT "genes")
 (:VAR MV4143 :ISA REGULATE :OBJECT MV4134 :THAT-REL T :AGENT MV4129 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4129 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4137 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV4133 :ISA ANY :WORD "any") (:VAR MV4131 :ISA SYNTACTIC-THERE))

___________________
450: "Are there any genes involved in apoptosis that are regulated by stat3?"

                    SOURCE-START
e31   THERE-EXISTS  1 "Are there any genes involved in apoptosis that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes involved in apoptosis that are regulated by stat3?"
 (:VAR MV4164 :ISA POLAR-QUESTION :STATEMENT MV4160)
 (:VAR MV4160 :ISA THERE-EXISTS :VALUE MV4152 :PREDICATE MV4149)
 (:VAR MV4152 :ISA GENE :PREDICATION MV4153 :QUANTIFIER MV4151 :RAW-TEXT
  "genes")
 (:VAR MV4153 :ISA INVOLVE :THEME MV4152 :THEME MV4155 :PAST "PAST")
 (:VAR MV4155 :ISA APOPTOSIS :PREDICATION MV4161 :RAW-TEXT "apoptosis")
 (:VAR MV4161 :ISA REGULATE :AFFECTED-PROCESS MV4155 :THAT-REL T :AGENT MV4147
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV4147 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4151 :ISA ANY :WORD "any") (:VAR MV4149 :ISA SYNTACTIC-THERE))

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
 (:VAR MV4185 :ISA POLAR-QUESTION :STATEMENT MV4183)
 (:VAR MV4183 :ISA THERE-EXISTS :VALUE MV4181 :PREDICATE MV4178)
 (:VAR MV4181 :ISA INHIBITOR :TARGET-OR-PROTEIN MV4176 :QUANTIFIER MV4180
  :RAW-TEXT "inhibitors")
 (:VAR MV4176 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV4180 :ISA ANY :WORD "any") (:VAR MV4178 :ISA SYNTACTIC-THERE))

___________________
453: "Are there genes regulated by elk1 and srf"

                    SOURCE-START
e19   THERE-EXISTS  1 "Are there genes regulated by elk1 and srf" 10
                    END-OF-SOURCE
("Are there genes regulated by elk1 and srf"
 (:VAR MV4198 :ISA POLAR-QUESTION :STATEMENT MV4195)
 (:VAR MV4195 :ISA THERE-EXISTS :VALUE MV4190 :PREDICATE MV4188)
 (:VAR MV4190 :ISA GENE :PREDICATION MV4191 :RAW-TEXT "genes")
 (:VAR MV4191 :ISA REGULATE :OBJECT MV4190 :AGENT MV4196 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV4196 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV4186 MV4194))
 (:VAR MV4186 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV4194 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV4188 :ISA SYNTACTIC-THERE))

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
 (:VAR MV4454 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

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
e26   KNOCK-OUT     1 "How does knocking out p53 cause cancer via its effect on miRNAs" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("How does knocking out p53 cause cancer via its effect on miRNAs?"
 (:VAR MV4514 :ISA KNOCK-OUT :RAW-TEXT "knocking out" :CAUSE MV4501 :OBJECT
  MV4518)
 (:VAR MV4501 :ISA HOW)
 (:VAR MV4518 :ISA CANCER :MODIFIER MV4505 :MODIFIER MV4505)
 (:VAR MV4505 :ISA CAUSE :BY-MEANS-OF MV4516 :RAW-TEXT "cause")
 (:VAR MV4516 :ISA EFFECT :OBJECT MV4513 :PARTICIPANT MV4509 :RAW-TEXT
  "effect")
 (:VAR MV4513 :ISA MICRO-RNA :RAW-TEXT "miRNAs")
 (:VAR MV4509 :ISA PRONOUN/INANIMATE :WORD "its")
 (:VAR MV4505 :ISA CAUSE :BY-MEANS-OF MV4516 :RAW-TEXT "cause")
 (:VAR MV4516 :ISA EFFECT :OBJECT MV4513 :PARTICIPANT MV4509 :RAW-TEXT
  "effect")
 (:VAR MV4513 :ISA MICRO-RNA :RAW-TEXT "miRNAs")
 (:VAR MV4509 :ISA PRONOUN/INANIMATE :WORD "its"))

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
 (:VAR MV4599 :ISA CANCER :NAME "breast cancer" :UID "TS-0591"))

___________________
490: "Is STAT3 a regulator for c-fos?"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator for c-fos" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator for c-fos?"
 (:VAR MV4613 :ISA POLAR-QUESTION :STATEMENT MV4608)
 (:VAR MV4608 :ISA BE :SUBJECT MV4606 :PREDICATE MV4610)
 (:VAR MV4606 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4610 :ISA REGULATOR :THEME MV4607 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4607 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
491: "Is STAT3 a regulator of c-fos"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator of c-fos" 10
                    END-OF-SOURCE
("Is STAT3 a regulator of c-fos"
 (:VAR MV4621 :ISA POLAR-QUESTION :STATEMENT MV4616)
 (:VAR MV4616 :ISA BE :SUBJECT MV4614 :PREDICATE MV4618)
 (:VAR MV4614 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4618 :ISA REGULATOR :THEME MV4615 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4615 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
492: "Is STAT3 a regulator of the c-fos gene"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene"
 (:VAR MV4631 :ISA POLAR-QUESTION :STATEMENT MV4624)
 (:VAR MV4624 :ISA BE :SUBJECT MV4622 :PREDICATE MV4626)
 (:VAR MV4622 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4626 :ISA REGULATOR :THEME MV4629 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4629 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4623 :RAW-TEXT
  "gene")
 (:VAR MV4623 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
493: "Is STAT3 a regulator of the c-fos gene?"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene?"
 (:VAR MV4641 :ISA POLAR-QUESTION :STATEMENT MV4634)
 (:VAR MV4634 :ISA BE :SUBJECT MV4632 :PREDICATE MV4636)
 (:VAR MV4632 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4636 :ISA REGULATOR :THEME MV4639 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV4639 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4633 :RAW-TEXT
  "gene")
 (:VAR MV4633 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
494: "Is STAT3 a transcription factor for c-fos gene"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene"
 (:VAR MV4650 :ISA POLAR-QUESTION :STATEMENT MV4645)
 (:VAR MV4645 :ISA BE :SUBJECT MV4642 :PREDICATE MV4643)
 (:VAR MV4642 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4643 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4648 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4648 :ISA GENE :EXPRESSES MV4644 :RAW-TEXT "gene")
 (:VAR MV4644 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
495: "Is STAT3 a transcription factor for c-fos"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos"
 (:VAR MV4658 :ISA POLAR-QUESTION :STATEMENT MV4654)
 (:VAR MV4654 :ISA BE :SUBJECT MV4651 :PREDICATE MV4652)
 (:VAR MV4651 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4652 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4653 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4653 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
496: "Is STAT3 a transcription factor for c-fos?"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos?"
 (:VAR MV4666 :ISA POLAR-QUESTION :STATEMENT MV4662)
 (:VAR MV4662 :ISA BE :SUBJECT MV4659 :PREDICATE MV4660)
 (:VAR MV4659 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4660 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4661 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4661 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
497: "Is STAT3 a transcription factor for the c-fos gene?"

                    SOURCE-START
e21   BE            1 "Is STAT3 a transcription factor for the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for the c-fos gene?"
 (:VAR MV4676 :ISA POLAR-QUESTION :STATEMENT MV4670)
 (:VAR MV4670 :ISA BE :SUBJECT MV4667 :PREDICATE MV4668)
 (:VAR MV4667 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4668 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4674 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4674 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4669 :RAW-TEXT
  "gene")
 (:VAR MV4669 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

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
 (:VAR MV4694 :ISA POLAR-QUESTION :STATEMENT MV4688)
 (:VAR MV4688 :ISA BE :SUBJECT MV4685 :PREDICATE MV4686)
 (:VAR MV4685 :ISA PROTEIN :RAW-TEXT "Stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV4686 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV4692 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV4692 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV4687 :RAW-TEXT
  "gene")
 (:VAR MV4687 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

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
  (#<gene 93468> (HAS-DETERMINER (#<what 90002>))
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
e9    IN            1 "What pathways are they in" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are they in?"
 (:VAR MV4990 :ISA WH-QUESTION :STATEMENT MV4989 :VAR NIL :WH WHAT)
 (:VAR MV4989 :ISA IN :WORD "in"))

___________________
532: "What pathways involve SOARING?"

                    SOURCE-START
e6    SOAR          1 "What pathways involve SOARING" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SOARING?"
 (:VAR MV4994 :ISA WH-QUESTION :STATEMENT
  (#<soar 93532> (PRESENT #<ref-category PRESENT>)) :VAR NIL :WH WHAT))

___________________
533: "What proteins are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What proteins are in the first pathway" 8
                    END-OF-SOURCE
("What proteins are in the first pathway"
 (:VAR MV5005 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV4996 :VALUE MV5004 :PREP
  "IN" :PREDICATE MV4997)
 (:VAR MV4996 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV5004 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV5001 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "proteins")
 (:VAR MV5001 :ISA PATHWAY :QUANTIFIER MV5000 :RAW-TEXT "pathway")
 (:VAR MV5000 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV4997 :ISA BE :PRESENT "PRESENT"))

___________________
534: "What pathways involve frizzled8?"

                    SOURCE-START
e7    INVOLVE       1 "What pathways involve frizzled8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve frizzled8?"
 (:VAR MV5010 :ISA INVOLVE :THEME MV5009 :THEME MV5007 :PRESENT "PRESENT")
 (:VAR MV5009 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5007 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
535: "What genes are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What genes are in the first pathway" 8
                    END-OF-SOURCE
("What genes are in the first pathway"
 (:VAR MV5021 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5012 :VALUE MV5020 :PREP
  "IN" :PREDICATE MV5013)
 (:VAR MV5012 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5020 :ISA GENE :CONTEXT MV5017 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV5017 :ISA PATHWAY :QUANTIFIER MV5016 :RAW-TEXT "pathway")
 (:VAR MV5016 :ISA ORDINAL :HAS-DETERMINER "THE" :WORD "first" :NUMBER 1)
 (:VAR MV5013 :ISA BE :PRESENT "PRESENT"))

___________________
536: "What questions can you answer about microRNAs?"

                    SOURCE-START
e13   ANSWER        1 "What questions can you answer about microRNAs" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What questions can you answer about microRNAs?"
 (:VAR MV5033 :ISA ANSWER :PATIENT MV5024 :MODAL MV5026 :AGENT MV5027 :THEME
  MV5031 :PRESENT "PRESENT")
 (:VAR MV5024 :ISA BIO-QUESTION :HAS-DETERMINER "WHAT") (:VAR MV5026 :ISA CAN)
 (:VAR MV5027 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5031 :ISA MICRO-RNA :RAW-TEXT "microRNAs"))

___________________
537: "What transcription factors regulate mothers against decapentaplegic?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate mothers against decapentaplegic" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate mothers against decapentaplegic?"
 (:VAR MV5037 :ISA REGULATE :AGENT MV5034 :OBJECT MV5035 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5034 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5035 :ISA PROTEIN-FAMILY :RAW-TEXT "mothers against decapentaplegic"
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
 (:VAR MV5041 :ISA REGULATE :LOCATION MV5039 :AGENT MV5038 :OBJECT MV5042
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV5039 :ISA WHERE)
 (:VAR MV5038 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5042 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
539: "Which KEGG pathways involve ATP?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve ATP" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve ATP?"
 (:VAR MV5046 :ISA INVOLVE :THEME MV5045 :THEME MV5047 :PRESENT "PRESENT")
 (:VAR MV5045 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5044 :RAW-TEXT
  "pathways")
 (:VAR MV5044 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV5047 :ISA NUCLEOTIDE :RAW-TEXT "ATP" :NAME "adenosine 5'-triphosphate"
  :UID "PCID:5957"))

___________________
540: "Which genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are in the MAPK signaling pathway?"
 (:VAR MV5058 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5050 :VALUE MV5057 :PREP
  "IN" :PREDICATE MV5051)
 (:VAR MV5050 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5057 :ISA GENE :CONTEXT MV5048 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV5048 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5054
  :RAW-TEXT "signaling pathway")
 (:VAR MV5054 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV5051 :ISA BE :PRESENT "PRESENT"))

___________________
541: "Which genes are involved in the oncogenic MAPK signaling pathway?"

                    SOURCE-START
e19   INVOLVE       1 "Which genes are involved in the oncogenic MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are involved in the oncogenic MAPK signaling pathway?"
 (:VAR MV5071 :ISA INVOLVE :THEME MV5062 :CONTEXT MV5060 :PRESENT "PRESENT")
 (:VAR MV5062 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV5060 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :PREDICATION MV5067
  :MODIFIER MV5068 :RAW-TEXT "signaling pathway")
 (:VAR MV5067 :ISA ONCOGENIC)
 (:VAR MV5068 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV5074 :ISA REGULATE :AGENT MV5073 :OBJECT MV5075 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5073 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5075 :ISA BIO-ENTITY :NAME "x"))

___________________
543: "Which kinases negatively regulate x?"

                    SOURCE-START
e7    DOWNREGULATE  1 "Which kinases negatively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate x?"
 (:VAR MV5076 :ISA DOWNREGULATE :AGENT MV5078 :OBJECT MV5079 :PRESENT "PRESENT"
  :RAW-TEXT "negatively regulate")
 (:VAR MV5078 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5079 :ISA BIO-ENTITY :NAME "x"))

___________________
544: "Which kinases positively regulate x?"

                    SOURCE-START
e7    UPREGULATE    1 "Which kinases positively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases positively regulate x?"
 (:VAR MV5080 :ISA UPREGULATE :AGENT MV5082 :OBJECT MV5083 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulate")
 (:VAR MV5082 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5083 :ISA BIO-ENTITY :NAME "x"))

___________________
545: "Which of these are in immune pathways?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune pathways?"
 (:VAR MV5092 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5086 :VALUE MV5090 :PREP
  MV5088 :PREDICATE MV5087)
 (:VAR MV5086 :ISA THESE :QUANTIFIER MV5084 :WORD "these")
 (:VAR MV5084 :ISA WHICH)
 (:VAR MV5090 :ISA PATHWAY :MODIFIER MV5089 :RAW-TEXT "pathways")
 (:VAR MV5089 :ISA IMMUNE :NAME "immune") (:VAR MV5088 :ISA IN :WORD "in")
 (:VAR MV5087 :ISA BE :PRESENT "PRESENT"))

___________________
546: "Which of these are in immune system pathways?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which of these are in immune system pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune system pathways?"
 (:VAR MV5102 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5097 :VALUE MV5100 :PREP
  MV5099 :PREDICATE MV5098)
 (:VAR MV5097 :ISA THESE :QUANTIFIER MV5095 :WORD "these")
 (:VAR MV5095 :ISA WHICH)
 (:VAR MV5100 :ISA PATHWAY :NON-CELLULAR-LOCATION MV5094 :RAW-TEXT "pathways")
 (:VAR MV5094 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405")
 (:VAR MV5099 :ISA IN :WORD "in") (:VAR MV5098 :ISA BE :PRESENT "PRESENT"))

___________________
547: "What are the genes STAT3 regulates?"

                    SOURCE-START
e13   BE            1 "What are the genes STAT3 regulates" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes STAT3 regulates?"
 (:VAR MV5106 :ISA BE :SUBJECT MV5105 :PREDICATE MV5108 :PRESENT "PRESENT")
 (:VAR MV5105 :ISA WHAT)
 (:VAR MV5108 :ISA GENE :PREDICATION MV5109 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV5109 :ISA REGULATE :OBJECT MV5108 :AGENT MV5104 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5104 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
548: "Which of those are in the immune pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Which of those are in the immune pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are in the immune pathway?"
 (:VAR MV5119 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5112 :VALUE MV5117 :PREP
  MV5114 :PREDICATE MV5113)
 (:VAR MV5112 :ISA THOSE :QUANTIFIER MV5110 :WORD "those")
 (:VAR MV5110 :ISA WHICH)
 (:VAR MV5117 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5116 :RAW-TEXT
  "pathway")
 (:VAR MV5116 :ISA IMMUNE :NAME "immune") (:VAR MV5114 :ISA IN :WORD "in")
 (:VAR MV5113 :ISA BE :PRESENT "PRESENT"))

___________________
549: "Which pathways involve p53?"

                    SOURCE-START
e7    INVOLVE       1 "Which pathways involve p53" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve p53?"
 (:VAR MV5124 :ISA INVOLVE :THEME MV5123 :THEME MV5121 :PRESENT "PRESENT")
 (:VAR MV5123 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV5121 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
550: "can you show me the pahtways that involve SRF"

                    SOURCE-START
e23   SHOW          1 "can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("can you show me the pahtways that involve SRF"
 (:VAR MV5134 :ISA POLAR-QUESTION :STATEMENT MV5127)
 (:VAR MV5127 :ISA SHOW :AGENT MV5126 :STATEMENT-OR-THEME MV5130 :BENEFICIARY
  MV5128 :MODAL "CAN")
 (:VAR MV5126 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV5130 :ISA BIO-ENTITY :PREDICATION MV5132 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV5132 :ISA INVOLVE :THEME MV5130 :THAT-REL T :THEME MV5133 :MODAL
  "CAN")
 (:VAR MV5133 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5128 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
551: "Does Selumetinib inhibit MAP2K1?"

                    SOURCE-START
e9    INHIBIT       1 "Does Selumetinib inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib inhibit MAP2K1?"
 (:VAR MV5140 :ISA POLAR-QUESTION :STATEMENT MV5139)
 (:VAR MV5139 :ISA INHIBIT :AGENT MV5137 :OBJECT MV5135 :RAW-TEXT "inhibit")
 (:VAR MV5137 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV5135 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
552: "Let's build a model of the KRAS neighborhood."

                    SOURCE-START
e18   EXPLICIT-SUGGESTION 1 "Let's build a model of the KRAS neighborhood" 11
                    PERIOD
                    END-OF-SOURCE
("Let's build a model of the KRAS neighborhood."
 (:VAR MV5150 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV5142 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV5142 :ISA BUILD :ARTIFACT MV5144 :PRESENT "PRESENT")
 (:VAR MV5144 :ISA MODEL :OBJECT MV5148 :HAS-DETERMINER "A")
 (:VAR MV5148 :ISA NEIGHBORHOOD :HAS-DETERMINER "THE" :MODIFIER MV5147)
 (:VAR MV5147 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN"))

___________________
553: "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."

                    SOURCE-START
e28   KNOW          1 "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk" 15
                    PERIOD
                    END-OF-SOURCE
("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
 (:VAR MV5168 :ISA COLLECTION :TYPE KNOW :NUMBER 2 :ITEMS (MV5166 MV5167))
 (:VAR MV5166 :ISA KNOW :AGENT MV5151 :STATEMENT MV5157 :PRESENT "PRESENT")
 (:VAR MV5151 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV5157 :ISA BIO-ACTIVATE :AGENT MV5156 :OBJECT MV5158 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5156 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5158 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5167 :ISA COLLECTION :RAW-TEXT
  "Raf activates Mek and Mek activates Erk" :TYPE BIO-ACTIVATE :NUMBER 2 :ITEMS
  (MV5160 MV5164))
 (:VAR MV5160 :ISA BIO-ACTIVATE :AGENT MV5159 :OBJECT MV5161 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5159 :ISA PROTEIN-FAMILY :RAW-TEXT "Raf" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV5161 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5164 :ISA BIO-ACTIVATE :AGENT MV5163 :OBJECT MV5165 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5163 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV5165 :ISA PROTEIN-FAMILY :RAW-TEXT "Erk" :NAME "ERK" :COUNT 7
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
 (:VAR MV5171 :ISA PHOSPHORYLATE :AGENT MV5169 :SUBSTRATE MV5170 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV5169 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV5170 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
555: "DUSP6 dephosphorylates MAPK1."

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1."
 (:VAR MV5174 :ISA DEPHOSPHORYLATE :AGENT MV5172 :SUBSTRATE MV5173 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV5172 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV5173 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
556: "Is the amount of phosphorylated MAPK1 always high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always high?"
 (:VAR MV5185 :ISA POLAR-QUESTION :STATEMENT MV5184)
 (:VAR MV5184 :ISA COPULAR-PREDICATION :ITEM MV5178 :VALUE MV5182 :PREDICATE
  MV5176)
 (:VAR MV5178 :ISA BIO-AMOUNT :MEASURED-ITEM MV5175 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5175 :ISA PROTEIN :PREDICATION MV5180 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5180 :ISA PHOSPHORYLATE :SUBSTRATE MV5175 :RAW-TEXT "phosphorylated")
 (:VAR MV5182 :ISA HIGH :ADVERB MV5181)
 (:VAR MV5181 :ISA ALWAYS :NAME "always") (:VAR MV5176 :ISA BE))

___________________
557: "Is the amount of phosphorylated MAPK1 always low?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always low" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always low?"
 (:VAR MV5196 :ISA POLAR-QUESTION :STATEMENT MV5195)
 (:VAR MV5195 :ISA COPULAR-PREDICATION :ITEM MV5189 :VALUE MV5193 :PREDICATE
  MV5187)
 (:VAR MV5189 :ISA BIO-AMOUNT :MEASURED-ITEM MV5186 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5186 :ISA PROTEIN :PREDICATION MV5191 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5191 :ISA PHOSPHORYLATE :SUBSTRATE MV5186 :RAW-TEXT "phosphorylated")
 (:VAR MV5193 :ISA LOW :ADVERB MV5192) (:VAR MV5192 :ISA ALWAYS :NAME "always")
 (:VAR MV5187 :ISA BE))

___________________
558: "Does the MAP2K1-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the MAP2K1-MAPK1 complex vanish" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the MAP2K1-MAPK1 complex vanish?"
 (:VAR MV5206 :ISA POLAR-QUESTION :STATEMENT MV5205)
 (:VAR MV5205 :ISA VANISH :AGENT MV5204 :RAW-TEXT "vanish")
 (:VAR MV5204 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV5198 :COMPONENT MV5197)
 (:VAR MV5198 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5197 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
559: "Does the DUSP6-MAPK1 complex vanish?"

                    SOURCE-START
e16   VANISH        1 "Does the DUSP6-MAPK1 complex vanish" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the DUSP6-MAPK1 complex vanish?"
 (:VAR MV5216 :ISA POLAR-QUESTION :STATEMENT MV5215)
 (:VAR MV5215 :ISA VANISH :AGENT MV5214 :RAW-TEXT "vanish")
 (:VAR MV5214 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "DUSP6-MAPK1"
  :COMPONENT MV5208 :COMPONENT MV5207)
 (:VAR MV5208 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV5207 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN"))

___________________
560: "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e49   EVENT-RELATION  1 "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV5244 :ISA POLAR-QUESTION :STATEMENT MV5243)
 (:VAR MV5243 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV5240 :EVENT MV5236)
 (:VAR MV5240 :ISA WH-QUESTION :STATEMENT MV5237 :WH IF)
 (:VAR MV5237 :ISA INCREASE :AGENT-OR-CAUSE MV5226 :MULTIPLIER MV5235
  :AFFECTED-PROCESS-OR-OBJECT MV5230 :RAW-TEXT "increase")
 (:VAR MV5226 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV5235 :ISA N-FOLD :NUMBER MV5234) (:VAR MV5234 :ISA NUMBER :VALUE 10)
 (:VAR MV5230 :ISA BIO-AMOUNT :MEASURED-ITEM MV5218 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5218 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV5236 :ISA VANISH :CAUSE MV5221 :RAW-TEXT "vanish")
 (:VAR MV5221 :ISA BIO-AMOUNT :MEASURED-ITEM MV5217 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5217 :ISA PROTEIN :PREDICATION MV5223 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV5223 :ISA PHOSPHORYLATE :SUBSTRATE MV5217 :RAW-TEXT "phosphorylated"))

___________________
561: "Show me the evidence that kras regulates fzd8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates fzd8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras regulates fzd8."
 (:VAR MV5246 :ISA SHOW :STATEMENT-OR-THEME MV5253 :BENEFICIARY MV5247 :PRESENT
  "PRESENT")
 (:VAR MV5253 :ISA EVIDENCE :STATEMENT MV5252 :HAS-DETERMINER "THE")
 (:VAR MV5252 :ISA REGULATE :AGENT MV5251 :OBJECT MV5245 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5251 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5245 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV5247 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
562: "What increases the amount of fzd8?"

                    SOURCE-START
e14   INCREASE      1 "What increases the amount of fzd8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of fzd8?"
 (:VAR MV5257 :ISA INCREASE :AGENT-OR-CAUSE MV5255 :AFFECTED-PROCESS-OR-OBJECT
  MV5259 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5255 :ISA WHAT)
 (:VAR MV5259 :ISA BIO-AMOUNT :MEASURED-ITEM MV5254 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5254 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
563: "Which kinases are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signaling pathway?"
 (:VAR MV5272 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5264 :VALUE MV5271 :PREP
  "IN" :PREDICATE MV5265)
 (:VAR MV5264 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5271 :ISA KINASE :CONTEXT-OR-IN-PATHWAY MV5262 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "kinases")
 (:VAR MV5262 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV5268
  :RAW-TEXT "signaling pathway")
 (:VAR MV5268 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV5265 :ISA BE :PRESENT "PRESENT"))

___________________
564: "Does STAT3 regulate the c-fos gene in the liver?"

                    SOURCE-START
e23   REGULATE      1 "Does STAT3 regulate the c-fos gene in the liver" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in the liver?"
 (:VAR MV5285 :ISA POLAR-QUESTION :STATEMENT MV5283)
 (:VAR MV5283 :ISA REGULATE :AGENT MV5274 :OBJECT MV5279 :RAW-TEXT "regulate")
 (:VAR MV5274 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5279 :ISA GENE :ORGAN MV5282 :HAS-DETERMINER "THE" :EXPRESSES MV5275
  :RAW-TEXT "gene")
 (:VAR MV5282 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV5275 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
565: "what genes are regulated by smad2?"

                    SOURCE-START
e12   REGULATE      1 "what genes are regulated by smad2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by smad2?"
 (:VAR MV5292 :ISA REGULATE :OBJECT MV5288 :AGENT MV5286 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5288 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5286 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
566: "Which of these are regulated by smad2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by smad2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by smad2?"
 (:VAR MV5301 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV5297 :AGENT MV5294
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV5297 :ISA THESE :QUANTIFIER MV5295 :WORD "these")
 (:VAR MV5295 :ISA WHICH)
 (:VAR MV5294 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
567: "Which of these also regulate cfos?"

                    SOURCE-START
e12   REGULATE      1 "Which of these also regulate cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these also regulate cfos?"
 (:VAR MV5309 :ISA REGULATE :AGENT-OR-CAUSE MV5306 :OBJECT MV5310 :PRESENT
  "PRESENT" :ADVERB MV5307 :RAW-TEXT "regulate")
 (:VAR MV5306 :ISA THESE :QUANTIFIER MV5304 :WORD "these")
 (:VAR MV5304 :ISA WHICH)
 (:VAR MV5310 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV5307 :ISA ALSO :NAME "also"))

___________________
568: "what transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors transcribe SMURF2?"
 (:VAR MV5315 :ISA TRANSCRIBE :AGENT MV5312 :OBJECT MV5313 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV5312 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV5313 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
569: "what transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factor transcribes SMURF2?"
 (:VAR MV5319 :ISA TRANSCRIBE :AGENT MV5316 :OBJECT MV5317 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV5316 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV5317 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
570: "Which KEGG pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which KEGG pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways utilize SRF?"
 (:VAR MV5323 :ISA UTILIZE :PARTICIPANT MV5322 :OBJECT MV5324 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV5322 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5321 :RAW-TEXT
  "pathways")
 (:VAR MV5321 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV5324 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
571: "What transcription factors are in the calcium regulated pathways?"

                    SOURCE-START
e17   REGULATE      1 "What transcription factors are in the calcium regulated pathways" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in the calcium regulated pathways?"
 (:VAR MV5335 :ISA WH-QUESTION :STATEMENT MV5331 :VAR NIL :WH WHAT)
 (:VAR MV5331 :ISA REGULATE :AFFECTED-PROCESS MV5332 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV5332 :ISA PATHWAY :RAW-TEXT "pathways"))

___________________
572: "What pathways involve the immune system?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve the immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the immune system?"
 (:VAR MV5339 :ISA INVOLVE :THEME MV5338 :THEME MV5336 :PRESENT "PRESENT")
 (:VAR MV5338 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5336 :ISA BIO-ORGAN :HAS-DETERMINER "THE" :NAME "immune system" :UID
  "UBERON:0002405"))

___________________
573: "What KEGG pathways involve ERBB2, JUN, and MAPK8?"

                    SOURCE-START
e16   INVOLVE       1 "What KEGG pathways involve ERBB2, JUN, and MAPK8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
 (:VAR MV5346 :ISA INVOLVE :THEME MV5345 :THEME MV5349 :PRESENT "PRESENT")
 (:VAR MV5345 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5344 :RAW-TEXT
  "pathways")
 (:VAR MV5344 :ISA DATABASE :NAME "KEGG" :UID "KEGG")
 (:VAR MV5349 :ISA COLLECTION :RAW-TEXT "ERBB2, JUN, and MAPK8" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV5341 MV5347 MV5342))
 (:VAR MV5341 :ISA PROTEIN :RAW-TEXT "ERBB2" :UID "UP:P04626" :NAME
  "ERBB2_HUMAN")
 (:VAR MV5347 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN")
 (:VAR MV5342 :ISA PROTEIN :RAW-TEXT "MAPK8" :UID "UP:P45983" :NAME
  "MK08_HUMAN"))

___________________
574: "What pathways are shared by these genes?"

                    SOURCE-START
e13   SHARE         1 "What pathways are shared by these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are shared by these genes?"
 (:VAR MV5357 :ISA SHARE :OBJECT MV5351 :PARTICIPANT MV5356 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV5351 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5356 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
575: "what genes are regulated by srf?"

                    SOURCE-START
e11   REGULATE      1 "what genes are regulated by srf" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by srf?"
 (:VAR MV5365 :ISA REGULATE :OBJECT MV5360 :AGENT MV5364 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5360 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5364 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
576: "What are common pathways for these genes?"

                    SOURCE-START
e13   BE            1 "What are common pathways for these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common pathways for these genes?"
 (:VAR MV5368 :ISA BE :SUBJECT MV5367 :PREDICATE MV5370 :PRESENT "PRESENT")
 (:VAR MV5367 :ISA WHAT)
 (:VAR MV5370 :ISA PATHWAY :PATHWAYCOMPONENT MV5373 :PREDICATION MV5369
  :RAW-TEXT "pathways")
 (:VAR MV5373 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV5369 :ISA COMMON))

___________________
577: "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e24   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV5387 :ISA SHARE :OBJECT MV5380 :PARTICIPANT MV5385 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV5380 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV5379 :RAW-TEXT
  "pathways")
 (:VAR MV5379 :ISA IMMUNE :NAME "immune")
 (:VAR MV5385 :ISA GENE :EXPRESSES MV5386 :RAW-TEXT "genes")
 (:VAR MV5386 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV5375 MV5376 MV5377))
 (:VAR MV5375 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5376 :ISA PROTEIN :RAW-TEXT "SOCS3" :UID "UP:O14543" :NAME
  "SOCS3_HUMAN")
 (:VAR MV5377 :ISA PROTEIN :RAW-TEXT "CREB5" :UID "UP:Q02930" :NAME
  "CREB5_HUMAN"))

___________________
578: "What MAP kinase phosphatase are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatase are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatase are regulated by ELK1?"
 (:VAR MV5396 :ISA REGULATE :OBJECT MV5392 :AGENT MV5390 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV5392 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV5389 :RAW-TEXT
  "phosphatase")
 (:VAR MV5389 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME
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
 (:VAR MV5390 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
579: "What reactome pathways involve immune system?"

                    SOURCE-START
e9    INVOLVE       1 "What reactome pathways involve immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune system?"
 (:VAR MV5402 :ISA INVOLVE :THEME MV5401 :THEME MV5398 :PRESENT "PRESENT")
 (:VAR MV5401 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV5400 :RAW-TEXT
  "pathways")
 (:VAR MV5400 :ISA DATABASE :NAME "Reactome" :UID "Reactome")
 (:VAR MV5398 :ISA BIO-ORGAN :NAME "immune system" :UID "UBERON:0002405"))

___________________
580: "Is stat3 a kinase?"

                    SOURCE-START
e9    BE            1 "Is stat3 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 a kinase?" (:VAR MV5407 :ISA POLAR-QUESTION :STATEMENT MV5404)
 (:VAR MV5404 :ISA BE :SUBJECT MV5403 :PREDICATE MV5406)
 (:VAR MV5403 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5406 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
581: "Is STAT3 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is STAT3 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor?"
 (:VAR MV5412 :ISA POLAR-QUESTION :STATEMENT MV5410)
 (:VAR MV5410 :ISA BE :SUBJECT MV5408 :PREDICATE MV5409)
 (:VAR MV5408 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5409 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
582: "Which of these are protein kinases?"

                    SOURCE-START
e11   BE            1 "Which of these are protein kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are protein kinases?"
 (:VAR MV5416 :ISA BE :SUBJECT MV5415 :PREDICATE MV5418 :PRESENT "PRESENT")
 (:VAR MV5415 :ISA THESE :QUANTIFIER MV5413 :WORD "these")
 (:VAR MV5413 :ISA WHICH)
 (:VAR MV5418 :ISA KINASE :ENZYME MV5417 :RAW-TEXT "kinases")
 (:VAR MV5417 :ISA PROTEIN :RAW-TEXT "protein"))

___________________
583: "Which of these are tyrosine kinases?"

                    SOURCE-START
e10   BE            1 "Which of these are tyrosine kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinases?"
 (:VAR MV5424 :ISA BE :SUBJECT MV5423 :PREDICATE MV5420 :PRESENT "PRESENT")
 (:VAR MV5423 :ISA THESE :QUANTIFIER MV5421 :WORD "these")
 (:VAR MV5421 :ISA WHICH)
 (:VAR MV5420 :ISA PROTEIN-FAMILY :RAW-TEXT "tyrosine kinases" :NAME
  "protein tyrosine kinase" :UID "NCIT:C17020"))

___________________
584: "Which of these are serine/threonine kinases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine kinases?"
 (:VAR MV5429 :ISA BE :SUBJECT MV5428 :PREDICATE MV5432 :PRESENT "PRESENT")
 (:VAR MV5428 :ISA THESE :QUANTIFIER MV5426 :WORD "these")
 (:VAR MV5426 :ISA WHICH)
 (:VAR MV5432 :ISA KINASE :AMINO-ACID MV5433 :RAW-TEXT "kinases")
 (:VAR MV5433 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID
  :ITEMS (MV5430 MV5431))
 (:VAR MV5430 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5431 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
585: "Which of these are phosphatases?"

                    SOURCE-START
e9    BE            1 "Which of these are phosphatases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are phosphatases?"
 (:VAR MV5438 :ISA BE :SUBJECT MV5437 :PREDICATE MV5439 :PRESENT "PRESENT")
 (:VAR MV5437 :ISA THESE :QUANTIFIER MV5435 :WORD "these")
 (:VAR MV5435 :ISA WHICH)
 (:VAR MV5439 :ISA PHOSPHATASE :RAW-TEXT "phosphatases"))

___________________
586: "Which of these are proteases?"

                    SOURCE-START
e9    BE            1 "Which of these are proteases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are proteases?"
 (:VAR MV5444 :ISA BE :SUBJECT MV5443 :PREDICATE MV5445 :PRESENT "PRESENT")
 (:VAR MV5443 :ISA THESE :QUANTIFIER MV5441 :WORD "these")
 (:VAR MV5441 :ISA WHICH)
 (:VAR MV5445 :ISA PROTEIN :RAW-TEXT "proteases" :UID "UP:P63127" :NAME
  "VPK9_HUMAN"))

___________________
587: "Which of these are receptors?"

                    SOURCE-START
e9    BE            1 "Which of these are receptors" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptors?"
 (:VAR MV5450 :ISA BE :SUBJECT MV5449 :PREDICATE MV5451 :PRESENT "PRESENT")
 (:VAR MV5449 :ISA THESE :QUANTIFIER MV5447 :WORD "these")
 (:VAR MV5447 :ISA WHICH) (:VAR MV5451 :ISA RECEPTOR :RAW-TEXT "receptors"))

___________________
588: "Which of these are tyrosine kinase receptors?"

                    SOURCE-START
e12   BE            1 "Which of these are tyrosine kinase receptors" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinase receptors?"
 (:VAR MV5457 :ISA BE :SUBJECT MV5456 :PREDICATE MV5458 :PRESENT "PRESENT")
 (:VAR MV5456 :ISA THESE :QUANTIFIER MV5454 :WORD "these")
 (:VAR MV5454 :ISA WHICH)
 (:VAR MV5458 :ISA RECEPTOR :MODIFIER MV5453 :RAW-TEXT "receptors")
 (:VAR MV5453 :ISA PROTEIN-FAMILY :RAW-TEXT "tyrosine kinase" :NAME
  "protein tyrosine kinase" :UID "NCIT:C17020"))

___________________
589: "Which of these are histone demethylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone demethylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone demethylases?"
 (:VAR MV5464 :ISA BE :SUBJECT MV5463 :PREDICATE MV5460 :PRESENT "PRESENT")
 (:VAR MV5463 :ISA THESE :QUANTIFIER MV5461 :WORD "these")
 (:VAR MV5461 :ISA WHICH)
 (:VAR MV5460 :ISA PROTEIN-FAMILY :RAW-TEXT "histone demethylases" :NAME
  "histone demethylase" :UID "GO:0032452"))

___________________
590: "Which of these are histone methylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methylases?"
 (:VAR MV5470 :ISA BE :SUBJECT MV5469 :PREDICATE MV5466 :PRESENT "PRESENT")
 (:VAR MV5469 :ISA THESE :QUANTIFIER MV5467 :WORD "these")
 (:VAR MV5467 :ISA WHICH)
 (:VAR MV5466 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methylases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
591: "Which of these are histone methyltransferases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methyltransferases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methyltransferases?"
 (:VAR MV5476 :ISA BE :SUBJECT MV5475 :PREDICATE MV5472 :PRESENT "PRESENT")
 (:VAR MV5475 :ISA THESE :QUANTIFIER MV5473 :WORD "these")
 (:VAR MV5473 :ISA WHICH)
 (:VAR MV5472 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methyltransferases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
592: "Which of these are demethylases?"

                    SOURCE-START
e9    BE            1 "Which of these are demethylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are demethylases?"
 (:VAR MV5481 :ISA BE :SUBJECT MV5480 :PREDICATE MV5482 :PRESENT "PRESENT")
 (:VAR MV5480 :ISA THESE :QUANTIFIER MV5478 :WORD "these")
 (:VAR MV5478 :ISA WHICH)
 (:VAR MV5482 :ISA PROTEIN-FAMILY :RAW-TEXT "demethylases" :NAME "demethylase"
  :UID "GO:0032451"))

___________________
593: "Which of these are methylases?"

                    SOURCE-START
e9    BE            1 "Which of these are methylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methylases?"
 (:VAR MV5487 :ISA BE :SUBJECT MV5486 :PREDICATE MV5488 :PRESENT "PRESENT")
 (:VAR MV5486 :ISA THESE :QUANTIFIER MV5484 :WORD "these")
 (:VAR MV5484 :ISA WHICH)
 (:VAR MV5488 :ISA PROTEIN-FAMILY :RAW-TEXT "methylases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
594: "Which of these are methyltransferases?"

                    SOURCE-START
e9    BE            1 "Which of these are methyltransferases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methyltransferases?"
 (:VAR MV5493 :ISA BE :SUBJECT MV5492 :PREDICATE MV5494 :PRESENT "PRESENT")
 (:VAR MV5492 :ISA THESE :QUANTIFIER MV5490 :WORD "these")
 (:VAR MV5490 :ISA WHICH)
 (:VAR MV5494 :ISA PROTEIN-FAMILY :RAW-TEXT "methyltransferases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
595: "Which of these are steroid receptors?"

                    SOURCE-START
e11   BE            1 "Which of these are steroid receptors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are steroid receptors?"
 (:VAR MV5499 :ISA BE :SUBJECT MV5498 :PREDICATE MV5501 :PRESENT "PRESENT")
 (:VAR MV5498 :ISA THESE :QUANTIFIER MV5496 :WORD "these")
 (:VAR MV5496 :ISA WHICH)
 (:VAR MV5501 :ISA RECEPTOR :MODIFIER MV5500 :RAW-TEXT "receptors")
 (:VAR MV5500 :ISA MOLECULE :RAW-TEXT "steroid" :NAME "steroid" :UID
  "CHEBI:35341"))

___________________
596: "Which of these are receptor tyrosine kinases?"

                    SOURCE-START
e10   BE            1 "Which of these are receptor tyrosine kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptor tyrosine kinases?"
 (:VAR MV5507 :ISA BE :SUBJECT MV5506 :PREDICATE MV5503 :PRESENT "PRESENT")
 (:VAR MV5506 :ISA THESE :QUANTIFIER MV5504 :WORD "these")
 (:VAR MV5504 :ISA WHICH)
 (:VAR MV5503 :ISA PROTEIN-FAMILY :RAW-TEXT "receptor tyrosine kinases" :NAME
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
 (:VAR MV5513 :ISA BE :SUBJECT MV5512 :PREDICATE MV5509 :PRESENT "PRESENT")
 (:VAR MV5512 :ISA THESE :QUANTIFIER MV5510 :WORD "these")
 (:VAR MV5510 :ISA WHICH)
 (:VAR MV5509 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
598: "Which of these are DNA binding proteins?"

                    SOURCE-START
e12   BE            1 "Which of these are DNA binding proteins" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are DNA binding proteins?"
 (:VAR MV5519 :ISA BE :SUBJECT MV5518 :PREDICATE MV5520 :PRESENT "PRESENT")
 (:VAR MV5518 :ISA THESE :QUANTIFIER MV5516 :WORD "these")
 (:VAR MV5516 :ISA WHICH)
 (:VAR MV5520 :ISA PROTEIN :MODIFIER MV5515 :RAW-TEXT "proteins")
 (:VAR MV5515 :ISA DNA-BINDING :RAW-TEXT "DNA binding"))

___________________
599: "Which of these are serine/threonine phosphatases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine phosphatases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine phosphatases?"
 (:VAR MV5525 :ISA BE :SUBJECT MV5524 :PREDICATE MV5528 :PRESENT "PRESENT")
 (:VAR MV5524 :ISA THESE :QUANTIFIER MV5522 :WORD "these")
 (:VAR MV5522 :ISA WHICH)
 (:VAR MV5528 :ISA PHOSPHATASE :MODIFIER MV5529 :RAW-TEXT "phosphatases")
 (:VAR MV5529 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID
  :ITEMS (MV5526 MV5527))
 (:VAR MV5526 :ISA AMINO-ACID :RAW-TEXT "serine" :NAME "serine")
 (:VAR MV5527 :ISA AMINO-ACID :RAW-TEXT "threonine" :NAME "threonine"))

___________________
600: "Which of these are tyrosine phosphatases?"

                    SOURCE-START
e11   BE            1 "Which of these are tyrosine phosphatases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine phosphatases?"
 (:VAR MV5534 :ISA BE :SUBJECT MV5533 :PREDICATE MV5536 :PRESENT "PRESENT")
 (:VAR MV5533 :ISA THESE :QUANTIFIER MV5531 :WORD "these")
 (:VAR MV5531 :ISA WHICH)
 (:VAR MV5536 :ISA PHOSPHATASE :MODIFIER MV5535 :RAW-TEXT "phosphatases")
 (:VAR MV5535 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

___________________
601: "What does MEK phosphorylate?"

                    SOURCE-START
e5    PHOSPHORYLATE 1 "What does MEK phosphorylate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does MEK phosphorylate?"
 (:VAR MV5541 :ISA PHOSPHORYLATE :AMINO-ACID MV5538 :AGENT MV5540 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV5538 :ISA WHAT)
 (:VAR MV5540 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV5550 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5544 :ORGAN MV5549
  :PRESENT "PRESENT" :ADVERB MV5546 :RAW-TEXT "expressed")
 (:VAR MV5544 :ISA THESE :QUANTIFIER MV5542 :WORD "these")
 (:VAR MV5542 :ISA WHICH) (:VAR MV5549 :ISA LIVER)
 (:VAR MV5546 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
603: "What regulates frizzled8?"

                    SOURCE-START
e5    REGULATE      1 "What regulates frizzled8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates frizzled8?"
 (:VAR MV5555 :ISA REGULATE :AGENT-OR-CAUSE MV5554 :OBJECT MV5553 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5554 :ISA WHAT)
 (:VAR MV5553 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
604: "What increases the amount of myc?"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of myc?"
 (:VAR MV5558 :ISA INCREASE :AGENT-OR-CAUSE MV5556 :AFFECTED-PROCESS-OR-OBJECT
  MV5560 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5556 :ISA WHAT)
 (:VAR MV5560 :ISA BIO-AMOUNT :MEASURED-ITEM MV5562 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5562 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
605: "What upregulates myc?"

                    SOURCE-START
e4    UPREGULATE    1 "What upregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates myc?"
 (:VAR MV5565 :ISA UPREGULATE :AGENT-OR-CAUSE MV5564 :OBJECT MV5566 :PRESENT
  "PRESENT" :RAW-TEXT "upregulates")
 (:VAR MV5564 :ISA WHAT)
 (:VAR MV5566 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
606: "What downregulates myc?"

                    SOURCE-START
e4    DOWNREGULATE  1 "What downregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates myc?"
 (:VAR MV5568 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV5567 :OBJECT MV5569 :PRESENT
  "PRESENT" :RAW-TEXT "downregulates")
 (:VAR MV5567 :ISA WHAT)
 (:VAR MV5569 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
607: "What decreases the amount of GFAP?"

                    SOURCE-START
e12   DECREASE      1 "What decreases the amount of GFAP" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What decreases the amount of GFAP?"
 (:VAR MV5571 :ISA DECREASE :AGENT-OR-CAUSE MV5570 :AFFECTED-PROCESS-OR-OBJECT
  MV5573 :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5570 :ISA WHAT)
 (:VAR MV5573 :ISA BIO-AMOUNT :MEASURED-ITEM MV5575 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5575 :ISA PROTEIN :RAW-TEXT "GFAP" :UID "UP:P14136" :NAME
  "GFAP_HUMAN"))

___________________
608: "What regulates GLUL?"

                    SOURCE-START
e4    REGULATE      1 "What regulates GLUL" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL?"
 (:VAR MV5578 :ISA REGULATE :AGENT-OR-CAUSE MV5577 :OBJECT MV5579 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV5577 :ISA WHAT)
 (:VAR MV5579 :ISA PROTEIN :RAW-TEXT "GLUL" :UID "UP:P15104" :NAME
  "GLNA_HUMAN"))

___________________
609: "What regulates GLUL from the literature?"

                    SOURCE-START
e11   FROM          1 "What regulates GLUL from the literature" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL from the literature?"
 (:VAR MV5587 :ISA WH-QUESTION :STATEMENT MV5586 :WH WHAT)
 (:VAR MV5586 :ISA PREPOSITIONAL-PHRASE :POBJ MV5585 :PREP "FROM")
 (:VAR MV5585 :ISA LITERATURE :HAS-DETERMINER "THE"))

___________________
610: "What regulates GLUL from the GEO RNAi database?"

                    SOURCE-START
e12   FROM          1 "What regulates GLUL from the GEO RNAi database" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL from the GEO RNAi database?"
 (:VAR MV5595 :ISA WH-QUESTION :STATEMENT MV5594 :WH WHAT)
 (:VAR MV5594 :ISA PREPOSITIONAL-PHRASE :POBJ MV5588 :PREP "FROM")
 (:VAR MV5588 :ISA DATABASE :HAS-DETERMINER "THE" :NAME "GEO RNAi database"
  :UID "GEO-RNAi"))

___________________
611: "Which kinases regulate the cfos gene?"

                    SOURCE-START
e11   REGULATE      1 "Which kinases regulate the cfos gene" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases regulate the cfos gene?"
 (:VAR MV5598 :ISA REGULATE :AGENT MV5597 :OBJECT MV5601 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV5597 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5601 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5600 :RAW-TEXT
  "gene")
 (:VAR MV5600 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
612: "Which kinases negatively regulate the cfos gene?"

                    SOURCE-START
e12   DOWNREGULATE  1 "Which kinases negatively regulate the cfos gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate the cfos gene?"
 (:VAR MV5602 :ISA DOWNREGULATE :AGENT MV5604 :OBJECT MV5607 :PRESENT "PRESENT"
  :RAW-TEXT "negatively regulate")
 (:VAR MV5604 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV5607 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5606 :RAW-TEXT
  "gene")
 (:VAR MV5606 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
613: "What are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "What are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of the cfos gene?"
 (:VAR MV5610 :ISA BE :SUBJECT MV5609 :PREDICATE MV5608 :PRESENT "PRESENT")
 (:VAR MV5609 :ISA WHAT)
 (:VAR MV5608 :ISA POSITIVE-REGULATOR :THEME MV5614 :RAW-TEXT
  "positive regulators")
 (:VAR MV5614 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5613 :RAW-TEXT
  "gene")
 (:VAR MV5613 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
614: "What transcribes ZEB1?"

                    SOURCE-START
e5    TRANSCRIBE    1 "What transcribes ZEB1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcribes ZEB1?"
 (:VAR MV5618 :ISA TRANSCRIBE :AGENT-OR-CAUSE MV5617 :OBJECT MV5616 :PRESENT
  "PRESENT" :RAW-TEXT "transcribes")
 (:VAR MV5617 :ISA WHAT)
 (:VAR MV5616 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME
  "ZEB1_HUMAN"))

___________________
615: "Show me the evidence that IL6 increases the amount of SOCS1."

                    SOURCE-START
e27   SHOW          1 "Show me the evidence that IL6 increases the amount of SOCS1" 14
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that IL6 increases the amount of SOCS1."
 (:VAR MV5621 :ISA SHOW :STATEMENT-OR-THEME MV5632 :BENEFICIARY MV5622 :PRESENT
  "PRESENT")
 (:VAR MV5632 :ISA EVIDENCE :STATEMENT MV5627 :HAS-DETERMINER "THE")
 (:VAR MV5627 :ISA INCREASE :AGENT MV5619 :AFFECTED-PROCESS-OR-OBJECT MV5629
  :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV5619 :ISA PROTEIN :RAW-TEXT "IL6" :UID "UP:P05231" :NAME "IL6_HUMAN")
 (:VAR MV5629 :ISA BIO-AMOUNT :MEASURED-ITEM MV5620 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5620 :ISA PROTEIN :RAW-TEXT "SOCS1" :UID "UP:O15524" :NAME
  "SOCS1_HUMAN")
 (:VAR MV5622 :ISA INTERLOCUTOR :NAME "speaker"))

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
 (:VAR MV5647 :ISA BE :SUBJECT MV5646 :PREDICATE MV5653 :PRESENT "PRESENT")
 (:VAR MV5646 :ISA WHAT)
 (:VAR MV5653 :ISA EVIDENCE :STATEMENT MV5652 :HAS-DETERMINER "THE")
 (:VAR MV5652 :ISA REGULATE :AGENT MV5651 :OBJECT MV5645 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5651 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV5645 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
618: "What is the evidence that SRF binds the cfos gene?"

                    SOURCE-START
e21   BE            1 "What is the evidence that SRF binds the cfos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that SRF binds the cfos gene?"
 (:VAR MV5655 :ISA BE :SUBJECT MV5654 :PREDICATE MV5664 :PRESENT "PRESENT")
 (:VAR MV5654 :ISA WHAT)
 (:VAR MV5664 :ISA EVIDENCE :STATEMENT MV5660 :HAS-DETERMINER "THE")
 (:VAR MV5660 :ISA BINDING :BINDER MV5659 :DIRECT-BINDEE MV5663 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV5659 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV5663 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5662 :RAW-TEXT
  "gene")
 (:VAR MV5662 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
619: "what genes are exclusively expressed in liver?"

                    SOURCE-START
e13   GENE-TRANSCRIPT-EXPRESS 1 "what genes are exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are exclusively expressed in liver?"
 (:VAR MV5672 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5666 :ORGAN MV5671
  :PRESENT "PRESENT" :ADVERB MV5668 :RAW-TEXT "expressed")
 (:VAR MV5666 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV5671 :ISA LIVER) (:VAR MV5668 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
620: "Is stat3 expressed in liver?"

                    SOURCE-START
e9    GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in liver" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in liver?"
 (:VAR MV5680 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV5678 :PAST "PAST" :RAW-TEXT
  "expressed")
 (:VAR MV5678 :ISA LIVER))

___________________
621: "Is stat3 exclusively expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 exclusively expressed in liver?"
 (:VAR MV5689 :ISA POLAR-QUESTION :STATEMENT MV5687)
 (:VAR MV5687 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5681 :ORGAN MV5686 :ADVERB
  MV5683 :RAW-TEXT "expressed")
 (:VAR MV5681 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV5686 :ISA LIVER) (:VAR MV5683 :ISA EXCLUSIVELY :NAME "exclusively"))

___________________
622: "How does MAP4K2 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP4K2 affect CXCL8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP4K2 affect CXCL8?"
 (:VAR MV5694 :ISA AFFECT :MANNER MV5692 :AGENT MV5690 :OBJECT MV5691 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5692 :ISA HOW)
 (:VAR MV5690 :ISA PROTEIN :RAW-TEXT "MAP4K2" :UID "UP:Q12851" :NAME
  "M4K2_HUMAN")
 (:VAR MV5691 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
623: "How does ERK affect CXCL8?"

                    SOURCE-START
e8    AFFECT        1 "How does ERK affect CXCL8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does ERK affect CXCL8?"
 (:VAR MV5699 :ISA AFFECT :MANNER MV5696 :AGENT MV5698 :OBJECT MV5695 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5696 :ISA HOW)
 (:VAR MV5698 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5695 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
624: "What are the common upstream regulators of CXCL8 and CXCL10?"

                    SOURCE-START
e22   BE            1 "What are the common upstream regulators of CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of CXCL8 and CXCL10?"
 (:VAR MV5703 :ISA BE :SUBJECT MV5702 :PREDICATE MV5708 :PRESENT "PRESENT")
 (:VAR MV5702 :ISA WHAT)
 (:VAR MV5708 :ISA REGULATOR :THEME MV5711 :HAS-DETERMINER "THE" :PREDICATION
  MV5705 :CONTEXT MV5706 :RAW-TEXT "regulators")
 (:VAR MV5711 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5700 MV5701))
 (:VAR MV5700 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5701 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV5705 :ISA COMMON)
 (:VAR MV5706 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
625: "What are the paths between MAP3K7 and CXCL8?"

                    SOURCE-START
e16   BE            1 "What are the paths between MAP3K7 and CXCL8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between MAP3K7 and CXCL8?"
 (:VAR MV5716 :ISA BE :SUBJECT MV5715 :PREDICATE MV5718 :PRESENT "PRESENT")
 (:VAR MV5715 :ISA WHAT)
 (:VAR MV5718 :ISA PATH :ENDPOINTS MV5721 :HAS-DETERMINER "THE")
 (:VAR MV5721 :ISA COLLECTION :RAW-TEXT "MAP3K7 and CXCL8" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5713 MV5714))
 (:VAR MV5713 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5714 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
626: "Does MAP3K7 affect IKK?"

                    SOURCE-START
e9    AFFECT        1 "Does MAP3K7 affect IKK" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP3K7 affect IKK?" (:VAR MV5728 :ISA POLAR-QUESTION :STATEMENT MV5727)
 (:VAR MV5727 :ISA AFFECT :AGENT MV5723 :OBJECT MV5726 :RAW-TEXT "affect")
 (:VAR MV5723 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5726 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5730 :ISA REGULATE :AGENT MV5729 :OBJECT MV5731 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5729 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5731 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5733 :ISA UPREGULATE :AGENT MV5732 :OBJECT MV5734 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV5732 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5734 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5735 :ISA UPREGULATE :AGENT MV5737 :OBJECT MV5736 :PRESENT "PRESENT"
  :RAW-TEXT "positively regulates")
 (:VAR MV5737 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5736 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
630: "Does NFkappaB regulate the CXCL8 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does NFkappaB regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NFkappaB regulate the CXCL8 gene?"
 (:VAR MV5747 :ISA POLAR-QUESTION :STATEMENT MV5746)
 (:VAR MV5746 :ISA REGULATE :AGENT MV5741 :OBJECT MV5745 :RAW-TEXT "regulate")
 (:VAR MV5741 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5745 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5739 :RAW-TEXT
  "gene")
 (:VAR MV5739 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
631: "Show me the evidence that NFkappaB regulates CXCL8"

                    SOURCE-START
e18   SHOW          1 "Show me the evidence that NFkappaB regulates CXCL8" 10
                    END-OF-SOURCE
("Show me the evidence that NFkappaB regulates CXCL8"
 (:VAR MV5749 :ISA SHOW :STATEMENT-OR-THEME MV5757 :BENEFICIARY MV5750 :PRESENT
  "PRESENT")
 (:VAR MV5757 :ISA EVIDENCE :STATEMENT MV5756 :HAS-DETERMINER "THE")
 (:VAR MV5756 :ISA REGULATE :AGENT MV5754 :OBJECT MV5748 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV5754 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5748 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5750 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
632: "Does ERK regulate the CXCL8 gene?"

                    SOURCE-START
e14   REGULATE      1 "Does ERK regulate the CXCL8 gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the CXCL8 gene?"
 (:VAR MV5765 :ISA POLAR-QUESTION :STATEMENT MV5764)
 (:VAR MV5764 :ISA REGULATE :AGENT MV5760 :OBJECT MV5763 :RAW-TEXT "regulate")
 (:VAR MV5760 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5763 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5758 :RAW-TEXT
  "gene")
 (:VAR MV5758 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
633: "ERK decreases the amount of CXCL8"

                    SOURCE-START
e13   DECREASE      1 "ERK decreases the amount of CXCL8" 8
                    END-OF-SOURCE
("ERK decreases the amount of CXCL8"
 (:VAR MV5768 :ISA DECREASE :AGENT MV5767 :AFFECTED-PROCESS-OR-OBJECT MV5770
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5767 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5770 :ISA BIO-AMOUNT :MEASURED-ITEM MV5766 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5766 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
634: "Does TNG regulate ERK?"

                    SOURCE-START
e8    REGULATE      1 "Does TNG regulate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNG regulate ERK?" (:VAR MV5778 :ISA POLAR-QUESTION :STATEMENT MV5777)
 (:VAR MV5777 :ISA REGULATE :AGENT MV5776 :OBJECT MV5775 :RAW-TEXT "regulate")
 (:VAR MV5776 :ISA BIO-ENTITY :NAME "TNG")
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
635: "Does TNF regulate the ERK gene?"

                    SOURCE-START
e13   REGULATE      1 "Does TNF regulate the ERK gene" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TNF regulate the ERK gene?"
 (:VAR MV5786 :ISA POLAR-QUESTION :STATEMENT MV5785)
 (:VAR MV5785 :ISA REGULATE :AGENT MV5780 :OBJECT MV5784 :RAW-TEXT "regulate")
 (:VAR MV5780 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5784 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5783 :RAW-TEXT
  "gene")
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
636: "What are the pathways between TNG and ERK?"

                    SOURCE-START
e14   BE            1 "What are the pathways between TNG and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the pathways between TNG and ERK?"
 (:VAR MV5788 :ISA BE :SUBJECT MV5787 :PREDICATE MV5790 :PRESENT "PRESENT")
 (:VAR MV5787 :ISA WHAT)
 (:VAR MV5790 :ISA PATHWAY :PATHWAYCOMPONENT MV5795 :HAS-DETERMINER "THE"
  :RAW-TEXT "pathways")
 (:VAR MV5795 :ISA COLLECTION :RAW-TEXT "TNG and ERK" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV5792 MV5794))
 (:VAR MV5792 :ISA BIO-ENTITY :NAME "TNG")
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
637: "What are the pathways between TNF and ERK?"

                    SOURCE-START
e14   BE            1 "What are the pathways between TNF and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the pathways between TNF and ERK?"
 (:VAR MV5798 :ISA BE :SUBJECT MV5797 :PREDICATE MV5800 :PRESENT "PRESENT")
 (:VAR MV5797 :ISA WHAT)
 (:VAR MV5800 :ISA PATHWAY :PATHWAYCOMPONENT MV5805 :HAS-DETERMINER "THE"
  :RAW-TEXT "pathways")
 (:VAR MV5805 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV5802 MV5804))
 (:VAR MV5802 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5804 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5813 :ISA POLAR-QUESTION :STATEMENT MV5812)
 (:VAR MV5812 :ISA REGULATE :AGENT MV5808 :OBJECT MV5811 :RAW-TEXT "regulate")
 (:VAR MV5808 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5811 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5822 :ISA POLAR-QUESTION :STATEMENT MV5821)
 (:VAR MV5821 :ISA REGULATE :AGENT MV5815 :OBJECT MV5820 :RAW-TEXT "regulate")
 (:VAR MV5815 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
  2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TF65_HUMAN") (:UID "UP:Q04206"))
   (PROTEIN (:NAME "NFKB1_HUMAN") (:UID "UP:P19838")))
  :UID "FPLX:NFkappaB")
 (:VAR MV5820 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5819 :RAW-TEXT
  "gene")
 (:VAR MV5819 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5835 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV5824 :VALUE MV5834 :PREP
  "BETWEEN" :PREDICATE MV5825)
 (:VAR MV5824 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5834 :ISA PATHWAY :PATHWAYCOMPONENT MV5831 :HAS-DETERMINER "WHAT"
  :RAW-TEXT "pathways")
 (:VAR MV5831 :ISA COLLECTION :RAW-TEXT "NFkappaB and ERK" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS (MV5828 MV5830))
 (:VAR MV5828 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
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
  :UID "NCIT:C26360")
 (:VAR MV5825 :ISA EXIST :PRESENT "PRESENT"))

___________________
641: "How does NFkappaB affect ERK?"

                    SOURCE-START
e8    AFFECT        1 "How does NFkappaB affect ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does NFkappaB affect ERK?"
 (:VAR MV5841 :ISA AFFECT :MANNER MV5837 :AGENT MV5839 :OBJECT MV5842 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5837 :ISA HOW)
 (:VAR MV5839 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
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
  :UID "NCIT:C26360"))

___________________
642: "MAP3K7 activates IKK"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "MAP3K7 activates IKK" 7
                    END-OF-SOURCE
("MAP3K7 activates IKK"
 (:VAR MV5844 :ISA BIO-ACTIVATE :AGENT MV5843 :OBJECT MV5845 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5843 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5845 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
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
 (:VAR MV5847 :ISA BIO-ACTIVATE :AGENT MV5846 :OBJECT MV5848 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5846 :ISA PROTEIN-FAMILY :RAW-TEXT "IKK" :NAME "IKK" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IKKE_HUMAN") (:UID "UP:Q14164"))
   (PROTEIN (:NAME "IKKB_HUMAN") (:UID "UP:O14920"))
   (PROTEIN (:NAME "IKKA_HUMAN") (:UID "UP:O15111")))
  :UID "NCIT:C104199")
 (:VAR MV5848 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN"))

___________________
644: "What are the paths between TNF and ERK?"

                    SOURCE-START
e14   BE            1 "What are the paths between TNF and ERK" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and ERK?"
 (:VAR MV5850 :ISA BE :SUBJECT MV5849 :PREDICATE MV5852 :PRESENT "PRESENT")
 (:VAR MV5849 :ISA WHAT)
 (:VAR MV5852 :ISA PATH :ENDPOINTS MV5857 :HAS-DETERMINER "THE")
 (:VAR MV5857 :ISA COLLECTION :RAW-TEXT "TNF and ERK" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV5854 MV5856))
 (:VAR MV5854 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5856 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
("Does TNF regulate ERK?" (:VAR MV5864 :ISA POLAR-QUESTION :STATEMENT MV5863)
 (:VAR MV5863 :ISA REGULATE :AGENT MV5860 :OBJECT MV5862 :RAW-TEXT "regulate")
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
646: "How does MAP3K7 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP3K7 affect CXCL8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP3K7 affect CXCL8?"
 (:VAR MV5869 :ISA AFFECT :MANNER MV5867 :AGENT MV5865 :OBJECT MV5866 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5867 :ISA HOW)
 (:VAR MV5865 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5866 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
647: "TNF activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "TNF activates ERK" 4
                    END-OF-SOURCE
("TNF activates ERK"
 (:VAR MV5871 :ISA BIO-ACTIVATE :AGENT MV5870 :OBJECT MV5872 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5870 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5872 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV5876 :ISA DECREASE :AGENT MV5875 :AFFECTED-PROCESS-OR-OBJECT MV5878
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5875 :ISA PROTEIN-FAMILY :PREDICATION MV5874 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5874 :ISA ACTIVE)
 (:VAR MV5878 :ISA BIO-AMOUNT :MEASURED-ITEM MV5873 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5873 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
649: "What are the common upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e19   BE            1 "What are the common upstreams of CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of CXCL8 and CXCL10?"
 (:VAR MV5884 :ISA BE :SUBJECT MV5883 :PREDICATE MV5887 :PRESENT "PRESENT")
 (:VAR MV5883 :ISA WHAT)
 (:VAR MV5887 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV5890 :HAS-DETERMINER
  "THE" :PREDICATION MV5886 :RAW-TEXT "upstreams")
 (:VAR MV5890 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV5881 MV5882))
 (:VAR MV5881 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5882 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN")
 (:VAR MV5886 :ISA COMMON))

___________________
650: "How does CXCL8 affect CXCL8?"

                    SOURCE-START
e9    AFFECT        1 "How does CXCL8 affect CXCL8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does CXCL8 affect CXCL8?"
 (:VAR MV5896 :ISA AFFECT :MANNER MV5894 :AGENT MV5892 :OBJECT MV5893 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5894 :ISA HOW)
 (:VAR MV5892 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5893 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
651: "Does CXCL8 regulate CXCL10?"

                    SOURCE-START
e10   REGULATE      1 "Does CXCL8 regulate CXCL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate CXCL10?"
 (:VAR MV5902 :ISA POLAR-QUESTION :STATEMENT MV5901)
 (:VAR MV5901 :ISA REGULATE :AGENT MV5897 :OBJECT MV5898 :RAW-TEXT "regulate")
 (:VAR MV5897 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5898 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
652: "Does CXCL8 regulate the CXCL10 gene?"

                    SOURCE-START
e15   REGULATE      1 "Does CXCL8 regulate the CXCL10 gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does CXCL8 regulate the CXCL10 gene?"
 (:VAR MV5910 :ISA POLAR-QUESTION :STATEMENT MV5909)
 (:VAR MV5909 :ISA REGULATE :AGENT MV5903 :OBJECT MV5908 :RAW-TEXT "regulate")
 (:VAR MV5903 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV5908 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV5904 :RAW-TEXT
  "gene")
 (:VAR MV5904 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
653: "How does MAP3k7 affect CXCL10?"

                    SOURCE-START
e9    AFFECT        1 "How does MAP3k7 affect CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAP3k7 affect CXCL10?"
 (:VAR MV5915 :ISA AFFECT :MANNER MV5913 :AGENT MV5911 :OBJECT MV5912 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV5913 :ISA HOW)
 (:VAR MV5911 :ISA PROTEIN :RAW-TEXT "MAP3k7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV5912 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
654: "What are the paths between TNF and CXCL10?"

                    SOURCE-START
e15   BE            1 "What are the paths between TNF and CXCL10" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the paths between TNF and CXCL10?"
 (:VAR MV5918 :ISA BE :SUBJECT MV5917 :PREDICATE MV5920 :PRESENT "PRESENT")
 (:VAR MV5917 :ISA WHAT)
 (:VAR MV5920 :ISA PATH :ENDPOINTS MV5924 :HAS-DETERMINER "THE")
 (:VAR MV5924 :ISA COLLECTION :RAW-TEXT "TNF and CXCL10" :TYPE PROTEIN :NUMBER
  2 :ITEMS (MV5922 MV5916))
 (:VAR MV5922 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5916 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
655: "Does ERK regulate the expression of CXCL10?"

                    SOURCE-START
e17   REGULATE      1 "Does ERK regulate the expression of CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does ERK regulate the expression of CXCL10?"
 (:VAR MV5935 :ISA POLAR-QUESTION :STATEMENT MV5933)
 (:VAR MV5933 :ISA REGULATE :AGENT MV5928 :AFFECTED-PROCESS MV5931 :RAW-TEXT
  "regulate")
 (:VAR MV5928 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5931 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5926 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV5926 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
656: "active ERK decreases the expression of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the expression of CXCL10" 9
                    END-OF-SOURCE
("active ERK decreases the expression of CXCL10"
 (:VAR MV5939 :ISA DECREASE :AGENT MV5938 :AFFECTED-PROCESS MV5941 :PRESENT
  "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5938 :ISA PROTEIN-FAMILY :PREDICATION MV5937 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5937 :ISA ACTIVE)
 (:VAR MV5941 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV5936 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV5936 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
657: "active ERK decreases the amount of CXCL8"

                    SOURCE-START
e15   DECREASE      1 "active ERK decreases the amount of CXCL8" 9
                    END-OF-SOURCE
("active ERK decreases the amount of CXCL8"
 (:VAR MV5947 :ISA DECREASE :AGENT MV5946 :AFFECTED-PROCESS-OR-OBJECT MV5949
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5946 :ISA PROTEIN-FAMILY :PREDICATION MV5945 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5945 :ISA ACTIVE)
 (:VAR MV5949 :ISA BIO-AMOUNT :MEASURED-ITEM MV5944 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5944 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
658: "Active ERK decreases the amount of CXCL10"

                    SOURCE-START
e15   DECREASE      1 "Active ERK decreases the amount of CXCL10" 9
                    END-OF-SOURCE
("Active ERK decreases the amount of CXCL10"
 (:VAR MV5955 :ISA DECREASE :AGENT MV5954 :AFFECTED-PROCESS-OR-OBJECT MV5957
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV5954 :ISA PROTEIN-FAMILY :PREDICATION MV5953 :RAW-TEXT "ERK" :NAME
  "ERK" :COUNT 7 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV5953 :ISA ACTIVE)
 (:VAR MV5957 :ISA BIO-AMOUNT :MEASURED-ITEM MV5952 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV5952 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
659: "NG25 inhibits the activity of MAP3K7"

                    SOURCE-START
e16   INHIBIT       1 "NG25 inhibits the activity of MAP3K7" 11
                    END-OF-SOURCE
("NG25 inhibits the activity of MAP3K7"
 (:VAR MV5963 :ISA INHIBIT :AGENT MV5967 :AFFECTED-PROCESS MV5965 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV5967 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV5965 :ISA BIO-ACTIVITY :PARTICIPANT MV5960 :HAS-DETERMINER "THE"
  :RAW-TEXT "activity")
 (:VAR MV5960 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN"))

___________________
660: "Does NG25 decrease the CXCL8 in the model?"

                    SOURCE-START
e22   DECREASE      1 "Does NG25 decrease the CXCL8 in the model" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease the CXCL8 in the model?"
 (:VAR MV5980 :ISA POLAR-QUESTION :STATEMENT MV5978)
 (:VAR MV5978 :ISA DECREASE :AGENT MV5969 :OBJECT MV5970 :RAW-TEXT "decrease")
 (:VAR MV5969 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV5970 :ISA PROTEIN :INFO-CONTEXT MV5977 :HAS-DETERMINER "THE" :RAW-TEXT
  "CXCL8" :UID "UP:P10145" :NAME "IL8_HUMAN")
 (:VAR MV5977 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
661: "Does NG25 decrease CXCL10 in the model?"

                    SOURCE-START
e19   DECREASE      1 "Does NG25 decrease CXCL10 in the model" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does NG25 decrease CXCL10 in the model?"
 (:VAR MV5991 :ISA POLAR-QUESTION :STATEMENT MV5989)
 (:VAR MV5989 :ISA DECREASE :AGENT MV5981 :OBJECT MV5982 :RAW-TEXT "decrease")
 (:VAR MV5981 :ISA BIO-ENTITY :NAME "NG25")
 (:VAR MV5982 :ISA PROTEIN :INFO-CONTEXT MV5988 :RAW-TEXT "CXCL10" :UID
  "UP:P02778" :NAME "CXL10_HUMAN")
 (:VAR MV5988 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
662: "TNF activates NFkappaB"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "TNF activates NFkappaB" 4
                    END-OF-SOURCE
("TNF activates NFkappaB"
 (:VAR MV5993 :ISA BIO-ACTIVATE :AGENT MV5992 :OBJECT MV5994 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV5992 :ISA PROTEIN :RAW-TEXT "TNF" :UID "UP:P01375" :NAME "TNFA_HUMAN")
 (:VAR MV5994 :ISA PROTEIN-FAMILY :RAW-TEXT "NFkappaB" :NAME "NF-kappaB" :COUNT
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
 (:VAR MV6000 :ISA WANT :AGENT MV5997 :THEME MV6011 :PRESENT "PRESENT")
 (:VAR MV5997 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6011 :ISA FIND-OUT :AGENT MV5997 :STATEMENT MV6008)
 (:VAR MV5997 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6008 :ISA WH-QUESTION :STATEMENT MV6007 :VAR NIL :WH HOW)
 (:VAR MV6007 :ISA DECREASE :AGENT MV6006 :OBJECT MV5996 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6006 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tasocitinib" :UID
  "NCIT:C95800")
 (:VAR MV5996 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
664: "I want to find out how Selumetinib decreases FOS in BT20 cells"

                    SOURCE-START
e31   WANT          1 "I want to find out how Selumetinib decreases FOS in BT20 cells" 14
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in BT20 cells"
 (:VAR MV6015 :ISA WANT :AGENT MV6012 :THEME MV6034 :PRESENT "PRESENT")
 (:VAR MV6012 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6034 :ISA FIND-OUT :AGENT MV6012 :STATEMENT MV6031)
 (:VAR MV6012 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6031 :ISA WH-QUESTION :STATEMENT MV6022 :VAR NIL :WH HOW)
 (:VAR MV6022 :ISA DECREASE :AGENT MV6021 :OBJECT MV6023 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6021 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV6023 :ISA PROTEIN :CELL-TYPE MV6028 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV6028 :ISA CELL-TYPE :MODIFIER MV6029)
 (:VAR MV6029 :ISA BIO-ENTITY :NAME "BT20"))

___________________
665: "I want to find out how ERBB3 activates JUN in SKBR3 cells"

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells"
 (:VAR MV6040 :ISA WANT :AGENT MV6037 :THEME MV6054 :PRESENT "PRESENT")
 (:VAR MV6037 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6054 :ISA FIND-OUT :AGENT MV6037 :STATEMENT MV6051)
 (:VAR MV6037 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6051 :ISA WH-QUESTION :STATEMENT MV6046 :VAR NIL :WH HOW)
 (:VAR MV6046 :ISA BIO-ACTIVATE :AGENT MV6035 :OBJECT MV6047 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6035 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME
  "ERBB3_HUMAN")
 (:VAR MV6047 :ISA PROTEIN :CELL-TYPE MV6049 :RAW-TEXT "JUN" :UID "UP:P05412"
  :NAME "JUN_HUMAN")
 (:VAR MV6049 :ISA CELL-TYPE :CELL-LINE MV6036)
 (:VAR MV6036 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
666: "Does MEK phosphorylate ERK?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "Does MEK phosphorylate ERK" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MEK phosphorylate ERK?"
 (:VAR MV6060 :ISA POLAR-QUESTION :STATEMENT MV6059)
 (:VAR MV6059 :ISA PHOSPHORYLATE :AGENT MV6056 :SUBSTRATE MV6058 :RAW-TEXT
  "phosphorylate")
 (:VAR MV6056 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6058 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV6068 :ISA POLAR-QUESTION :STATEMENT MV6067)
 (:VAR MV6067 :ISA INHIBIT :AGENT MV6061 :OBJECT MV6066 :RAW-TEXT "inhibit")
 (:VAR MV6061 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6066 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6062 :RAW-TEXT
  "gene")
 (:VAR MV6062 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
668: "Does STAT3 stimulate the c-fos gene?"

                    SOURCE-START
e15   STIMULATE     1 "Does STAT3 stimulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 stimulate the c-fos gene?"
 (:VAR MV6076 :ISA POLAR-QUESTION :STATEMENT MV6075)
 (:VAR MV6075 :ISA STIMULATE :AGENT MV6069 :OBJECT MV6074 :RAW-TEXT
  "stimulate")
 (:VAR MV6069 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6074 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV6070 :RAW-TEXT
  "gene")
 (:VAR MV6070 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
669: "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."

                    SOURCE-START
e33   WANT          1 "I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells" 16
                    PERIOD
                    END-OF-SOURCE
("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
 (:VAR MV6080 :ISA WANT :AGENT MV6077 :THEME MV6098 :PRESENT "PRESENT")
 (:VAR MV6077 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6098 :ISA FIND-OUT :AGENT MV6077 :STATEMENT MV6095)
 (:VAR MV6077 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6095 :ISA WH-QUESTION :STATEMENT MV6087 :VAR NIL :WH HOW)
 (:VAR MV6087 :ISA DECREASE :AGENT MV6086 :OBJECT MV6088 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV6086 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV6088 :ISA PROTEIN :CELL-TYPE MV6092 :RAW-TEXT "FOS" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV6092 :ISA CELL-TYPE :MODIFIER MV6093 :CONTEXT-OR-ASSOCIATED-DISEASE
  MV6091)
 (:VAR MV6093 :ISA BIO-ENTITY :NAME "SKMEL-133") (:VAR MV6091 :ISA MELANOMA))

___________________
670: "Is ERK a transcription factor?"

                    SOURCE-START
e9    BE            1 "Is ERK a transcription factor" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK a transcription factor?"
 (:VAR MV6103 :ISA POLAR-QUESTION :STATEMENT MV6100)
 (:VAR MV6100 :ISA BE :SUBJECT MV6101 :PREDICATE MV6099)
 (:VAR MV6101 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6099 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
671: "List all the genes regulated by elk1 and srf."

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    PERIOD
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf."
 (:VAR MV6105 :ISA LIST :THEME MV6108 :PRESENT "PRESENT")
 (:VAR MV6108 :ISA GENE :PREDICATION MV6109 :QUANTIFIER MV6106 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6109 :ISA REGULATE :OBJECT MV6108 :AGENT MV6113 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6113 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6104 MV6112))
 (:VAR MV6104 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6112 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6106 :ISA ALL :WORD "all"))

___________________
672: "List some of the genes regulated by elk1 and srf."

                    SOURCE-START
e20   LIST          1 "List some of the genes regulated by elk1 and srf" 12
                    PERIOD
                    END-OF-SOURCE
("List some of the genes regulated by elk1 and srf."
 (:VAR MV6116 :ISA LIST :THEME MV6120 :PRESENT "PRESENT")
 (:VAR MV6120 :ISA GENE :PREDICATION MV6121 :QUANTIFIER MV6117 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6121 :ISA REGULATE :OBJECT MV6120 :AGENT MV6125 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6125 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV6115 MV6124))
 (:VAR MV6115 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6124 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6117 :ISA SOME :WORD "some"))

___________________
673: "Show me the  mutations of TP53 and BRAF in ovarian cancer."

                    SOURCE-START
e22   SHOW          1 "Show me the  mutations of TP53 and BRAF in ovarian cancer" 13
                    PERIOD
                    END-OF-SOURCE
("Show me the  mutations of TP53 and BRAF in ovarian cancer."
 (:VAR MV6131 :ISA SHOW :STATEMENT-OR-THEME MV6134 :BENEFICIARY MV6132 :PRESENT
  "PRESENT")
 (:VAR MV6134 :ISA MUTATION :OBJECT MV6139 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6139 :ISA COLLECTION :CONTEXT MV6130 :RAW-TEXT "TP53 and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV6129 MV6137))
 (:VAR MV6130 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6129 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6137 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6132 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
674: "What are the mutations of TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutations of TP53 and BRAF in ovarian cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of TP53 and BRAF in ovarian cancer?"
 (:VAR MV6145 :ISA BE :SUBJECT MV6144 :PREDICATE MV6147 :PRESENT "PRESENT")
 (:VAR MV6144 :ISA WHAT)
 (:VAR MV6147 :ISA MUTATION :OBJECT MV6152 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6152 :ISA COLLECTION :CONTEXT MV6143 :RAW-TEXT "TP53 and BRAF" :TYPE
  PROTEIN :NUMBER 2 :ITEMS (MV6142 MV6150))
 (:VAR MV6143 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6142 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6150 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
675: "What are the mutually exclusive genes with CDH1 for breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with CDH1 for breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with CDH1 for breast cancer?"
 (:VAR MV6159 :ISA BE :SUBJECT MV6158 :PREDICATE MV6166 :PRESENT "PRESENT")
 (:VAR MV6158 :ISA WHAT)
 (:VAR MV6166 :ISA GENE :DISEASE MV6157 :HAS-DETERMINER "THE" :PREDICATION
  MV6155 :RAW-TEXT "genes")
 (:VAR MV6157 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV6155 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6156)
 (:VAR MV6156 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN"))

___________________
676: "What are the mutually exclusive genes with CDH1 in breast cancer?"

                    SOURCE-START
e22   BE            1 "What are the mutually exclusive genes with CDH1 in breast cancer" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutually exclusive genes with CDH1 in breast cancer?"
 (:VAR MV6171 :ISA BE :SUBJECT MV6170 :PREDICATE MV6178 :PRESENT "PRESENT")
 (:VAR MV6170 :ISA WHAT)
 (:VAR MV6178 :ISA GENE :HAS-DETERMINER "THE" :PREDICATION MV6167 :RAW-TEXT
  "genes")
 (:VAR MV6167 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6168)
 (:VAR MV6168 :ISA PROTEIN :CONTEXT MV6169 :RAW-TEXT "CDH1" :UID "UP:P12830"
  :NAME "CADH1_HUMAN")
 (:VAR MV6169 :ISA CANCER :NAME "breast cancer" :UID "TS-0591"))

___________________
677: "What downregulates it?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates it" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates it?"
 (:VAR MV6180 :ISA DOWNREGULATE :AGENT-OR-CAUSE MV6179
  :AFFECTED-PROCESS-OR-OBJECT MV6181 :PRESENT "PRESENT" :RAW-TEXT
  "downregulates")
 (:VAR MV6179 :ISA WHAT) (:VAR MV6181 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
678: "What genes have strong evidence of being regulated by mir-122-5p?"

                    SOURCE-START
e21   HAVE          1 "What genes have strong evidence of being regulated by mir-122-5p" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes have strong evidence of being regulated by mir-122-5p?"
 (:VAR MV6185 :ISA HAVE :POSSESSOR MV6184 :THING-POSSESSED MV6187 :PRESENT
  "PRESENT")
 (:VAR MV6184 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6187 :ISA EVIDENCE :FACT MV6190 :PREDICATION MV6186)
 (:VAR MV6190 :ISA REGULATE :AGENT MV6182 :PROGRESSIVE MV6189 :RAW-TEXT
  "regulated")
 (:VAR MV6182 :ISA MICRO-RNA :RAW-TEXT "mir-122-5p" :NAME "microRNA 122-5p"
  :UID "MIMAT0000421")
 (:VAR MV6189 :ISA BE) (:VAR MV6186 :ISA STRONG))

___________________
679: "What increases the amount of myc"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    END-OF-SOURCE
("What increases the amount of myc"
 (:VAR MV6196 :ISA INCREASE :AGENT-OR-CAUSE MV6194 :AFFECTED-PROCESS-OR-OBJECT
  MV6198 :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV6194 :ISA WHAT)
 (:VAR MV6198 :ISA BIO-AMOUNT :MEASURED-ITEM MV6200 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV6200 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
680: "What inhibits fzd8?"

                    SOURCE-START
e5    INHIBIT       1 "What inhibits fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits fzd8?"
 (:VAR MV6204 :ISA INHIBIT :AGENT-OR-CAUSE MV6203 :OBJECT MV6202 :PRESENT
  "PRESENT" :RAW-TEXT "inhibits")
 (:VAR MV6203 :ISA WHAT)
 (:VAR MV6202 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
681: "What is the most likely cellular location of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e26   BE            1 "What is the most likely cellular location of AKT1, BRAF and MAPK1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
 (:VAR MV6208 :ISA BE :SUBJECT MV6207 :PREDICATE MV6220 :PRESENT "PRESENT")
 (:VAR MV6207 :ISA WHAT)
 (:VAR MV6220 :ISA QUALITY-PREDICATE :ITEM MV6218 :ATTRIBUTE MV6214)
 (:VAR MV6218 :ISA COLLECTION :RAW-TEXT "AKT1, BRAF and MAPK1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6205 MV6216 MV6206))
 (:VAR MV6205 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6216 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6206 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6214 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6212
  :MODIFIER MV6213)
 (:VAR MV6212 :ISA LIKELY :COMPARATIVE MV6210)
 (:VAR MV6210 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6213 :ISA CELLULAR :NAME "cellular"))

___________________
682: "What is the most likely cellular location of AKT1?"

                    SOURCE-START
e20   BE            1 "What is the most likely cellular location of AKT1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the most likely cellular location of AKT1?"
 (:VAR MV6223 :ISA BE :SUBJECT MV6222 :PREDICATE MV6232 :PRESENT "PRESENT")
 (:VAR MV6222 :ISA WHAT)
 (:VAR MV6232 :ISA QUALITY-PREDICATE :ITEM MV6221 :ATTRIBUTE MV6229)
 (:VAR MV6221 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6229 :ISA LOCATION-OF :HAS-DETERMINER "THE" :PREDICATION MV6227
  :MODIFIER MV6228)
 (:VAR MV6227 :ISA LIKELY :COMPARATIVE MV6225)
 (:VAR MV6225 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6228 :ISA CELLULAR :NAME "cellular"))

___________________
683: "What is the mutation significance of TP53 in lung cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation significance of TP53 in lung cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation significance of TP53 in lung cancer?"
 (:VAR MV6236 :ISA BE :SUBJECT MV6235 :PREDICATE MV6239 :PRESENT "PRESENT")
 (:VAR MV6235 :ISA WHAT)
 (:VAR MV6239 :ISA SIGNIFICANCE :AGENT MV6233 :HAS-DETERMINER "THE" :MODIFIER
  MV6238)
 (:VAR MV6233 :ISA PROTEIN :CONTEXT MV6234 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV6234 :ISA CANCER :NAME "lung cancer" :UID "TS-0571")
 (:VAR MV6238 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
684: "Which of those are regulated by tp53?"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by tp53" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are regulated by tp53?"
 (:VAR MV6251 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6247 :AGENT MV6244
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV6247 :ISA THOSE :QUANTIFIER MV6245 :WORD "those")
 (:VAR MV6245 :ISA WHICH)
 (:VAR MV6244 :ISA PROTEIN :RAW-TEXT "tp53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
685: "Which of those genes are in the MAPK signaling pathway?"

                    SOURCE-START
e22   COPULAR-PREDICATE 1 "Which of those genes are in the MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those genes are in the MAPK signaling pathway?"
 (:VAR MV6267 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6258 :VALUE MV6266 :PREP
  "IN" :PREDICATE MV6259)
 (:VAR MV6258 :ISA GENE :QUANTIFIER MV6255 :HAS-DETERMINER "THOSE" :RAW-TEXT
  "genes")
 (:VAR MV6255 :ISA WHICH)
 (:VAR MV6266 :ISA GENE :CONTEXT MV6254 :QUANTIFIER MV6255 :HAS-DETERMINER
  "THOSE" :RAW-TEXT "genes")
 (:VAR MV6254 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV6262
  :RAW-TEXT "signaling pathway")
 (:VAR MV6262 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV6255 :ISA WHICH) (:VAR MV6259 :ISA BE :PRESENT "PRESENT"))

___________________
686: "Which of these are in the il-12 pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which of these are in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in the il-12 pathway?"
 (:VAR MV6278 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6272 :VALUE MV6276 :PREP
  MV6274 :PREDICATE MV6273)
 (:VAR MV6272 :ISA THESE :QUANTIFIER MV6270 :WORD "these")
 (:VAR MV6270 :ISA WHICH)
 (:VAR MV6276 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV6269 :RAW-TEXT
  "pathway")
 (:VAR MV6269 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV6274 :ISA IN :WORD "in") (:VAR MV6273 :ISA BE :PRESENT "PRESENT"))

___________________
687: "Which of them are expressed in liver?"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of them are expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of them are expressed in liver?"
 (:VAR MV6287 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV6282 :ORGAN MV6286
  :PRESENT "PRESENT" :RAW-TEXT "expressed")
 (:VAR MV6282 :ISA PRONOUN/PLURAL :QUANTIFIER MV6280 :WORD "them")
 (:VAR MV6280 :ISA WHICH) (:VAR MV6286 :ISA LIVER))

___________________
688: "Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"

                    SOURCE-START
e23   REGULATE      1 "Which of them are most frequently regulated by miR-335-5p and miR-155-5p" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
 (:VAR MV6302 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6294 :AGENT MV6301
  :PRESENT "PRESENT" :SUPERLATIVE MV6296 :ADVERB MV6297 :RAW-TEXT "regulated")
 (:VAR MV6294 :ISA PRONOUN/PLURAL :QUANTIFIER MV6292 :WORD "them")
 (:VAR MV6292 :ISA WHICH)
 (:VAR MV6301 :ISA COLLECTION :RAW-TEXT "miR-335-5p and miR-155-5p" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV6290 MV6291))
 (:VAR MV6290 :ISA MICRO-RNA :RAW-TEXT "miR-335-5p" :NAME "microRNA 335-5p"
  :UID "MIMAT0000765")
 (:VAR MV6291 :ISA MICRO-RNA :RAW-TEXT "miR-155-5p" :NAME "microRNA 155-5p"
  :UID "MIMAT0000646")
 (:VAR MV6296 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6297 :ISA FREQUENTLY :NAME "frequently"))

___________________
689: "What transcription factors target SMURF2?"

                    SOURCE-START
e9    TARGET        1 "What transcription factors target SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors target SMURF2?"
 (:VAR MV6309 :ISA TARGET :AGENT MV6305 :OBJECT MV6306 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV6305 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV6306 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
690: "Which of those target frizzled8?"

                    SOURCE-START
e11   TARGET        1 "Which of those target frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those target frizzled8?"
 (:VAR MV6315 :ISA TARGET :AGENT-OR-CAUSE MV6313 :OBJECT MV6310 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV6313 :ISA THOSE :QUANTIFIER MV6311 :WORD "those")
 (:VAR MV6311 :ISA WHICH)
 (:VAR MV6310 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
691: "What is Selumetinib?"

                    SOURCE-START
e4    BE            1 "What is Selumetinib" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is Selumetinib?"
 (:VAR MV6318 :ISA BE :SUBJECT MV6317 :PREDICATE MV6319 :PRESENT "PRESENT")
 (:VAR MV6317 :ISA WHAT)
 (:VAR MV6319 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
692: "What is MAPK3?"

                    SOURCE-START
e5    BE            1 "What is MAPK3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is MAPK3?"
 (:VAR MV6322 :ISA BE :SUBJECT MV6321 :PREDICATE MV6320 :PRESENT "PRESENT")
 (:VAR MV6321 :ISA WHAT)
 (:VAR MV6320 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
693: "What does it do?"

                    SOURCE-START
e6    DO            1 "What does it do" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it do?" (:VAR MV6328 :ISA DO :PATIENT MV6323 :PRESENT "PRESENT")
 (:VAR MV6323 :ISA WHAT))

___________________
694: "Is there an inhibitor of ERK1?"

                    SOURCE-START
e15   THERE-EXISTS  1 "Is there an inhibitor of ERK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an inhibitor of ERK1?"
 (:VAR MV6338 :ISA POLAR-QUESTION :STATEMENT MV6336)
 (:VAR MV6336 :ISA THERE-EXISTS :VALUE MV6334 :PREDICATE MV6331)
 (:VAR MV6334 :ISA INHIBITOR :PROTEIN MV6329 :HAS-DETERMINER "AN" :RAW-TEXT
  "inhibitor")
 (:VAR MV6329 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN")
 (:VAR MV6331 :ISA SYNTACTIC-THERE))

___________________
695: "Name some drugs that inhibit AKT1."

                    SOURCE-START
e15   NAME-SOMETHING  1 "Name some drugs that inhibit AKT1" 8
                    PERIOD
                    END-OF-SOURCE
("Name some drugs that inhibit AKT1."
 (:VAR MV6340 :ISA NAME-SOMETHING :PATIENT MV6344 :PRESENT "PRESENT")
 (:VAR MV6344 :ISA DRUG :PREDICATION MV6346 :QUANTIFIER MV6343 :RAW-TEXT
  "drugs")
 (:VAR MV6346 :ISA INHIBIT :AGENT MV6344 :THAT-REL T :OBJECT MV6339 :PRESENT
  "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV6339 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6343 :ISA SOME :WORD "some"))

___________________
696: "Are there any Map2K1 inhibitors?"

                    SOURCE-START
e16   THERE-EXISTS  1 "Are there any Map2K1 inhibitors" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any Map2K1 inhibitors?"
 (:VAR MV6358 :ISA POLAR-QUESTION :STATEMENT MV6357)
 (:VAR MV6357 :ISA THERE-EXISTS :VALUE MV6355 :PREDICATE MV6349)
 (:VAR MV6355 :ISA INHIBITOR :QUANTIFIER MV6351 :PROTEIN MV6356 :RAW-TEXT
  "inhibitors")
 (:VAR MV6351 :ISA ANY :WORD "any")
 (:VAR MV6356 :ISA PROTEIN :RAW-TEXT "Map2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV6349 :ISA SYNTACTIC-THERE))

___________________
697: "Are there targets of Selumetinib?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there targets of Selumetinib" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there targets of Selumetinib?"
 (:VAR MV6368 :ISA POLAR-QUESTION :STATEMENT MV6366)
 (:VAR MV6366 :ISA THERE-EXISTS :VALUE MV6362 :PREDICATE MV6360)
 (:VAR MV6362 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV6365 :RAW-TEXT "targets")
 (:VAR MV6365 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622")
 (:VAR MV6360 :ISA SYNTACTIC-THERE))

___________________
698: "What does Selumetinib inhibit?"

                    SOURCE-START
e5    INHIBIT       1 "What does Selumetinib inhibit" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib inhibit?"
 (:VAR MV6372 :ISA INHIBIT :OBJECT MV6369 :AGENT MV6371 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV6369 :ISA WHAT)
 (:VAR MV6371 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
699: "What does Selumetinib target?"

                    SOURCE-START
e6    TARGET        1 "What does Selumetinib target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does Selumetinib target?"
 (:VAR MV6377 :ISA TARGET :OBJECT MV6373 :AGENT MV6375 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV6373 :ISA WHAT)
 (:VAR MV6375 :ISA MOLECULE :RAW-TEXT "Selumetinib" :NAME "azd-6244" :UID
  "PCID:10127622"))

___________________
700: "Does Vemurafenib target BRAF?"

                    SOURCE-START
e9    TARGET        1 "Does Vemurafenib target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Vemurafenib target BRAF?"
 (:VAR MV6384 :ISA POLAR-QUESTION :STATEMENT MV6383)
 (:VAR MV6383 :ISA TARGET :AGENT MV6379 :OBJECT MV6382 :RAW-TEXT "target")
 (:VAR MV6379 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV6382 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
701: "What are some targets for treating pancreatic cancer?"

                    SOURCE-START
e15   BE            1 "What are some targets for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for treating pancreatic cancer?"
 (:VAR MV6387 :ISA BE :SUBJECT MV6386 :PREDICATE MV6389 :PRESENT "PRESENT")
 (:VAR MV6386 :ISA WHAT)
 (:VAR MV6389 :ISA TARGET-PROTEIN :QUANTIFIER MV6388 :TREATMENT MV6392
  :RAW-TEXT "targets")
 (:VAR MV6388 :ISA SOME :WORD "some")
 (:VAR MV6392 :ISA TREATMENT :DISEASE MV6385 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "treating")
 (:VAR MV6385 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
702: "What are some targets for pancreatic cancer?"

                    SOURCE-START
e13   BE            1 "What are some targets for pancreatic cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some targets for pancreatic cancer?"
 (:VAR MV6396 :ISA BE :SUBJECT MV6395 :PREDICATE MV6398 :PRESENT "PRESENT")
 (:VAR MV6395 :ISA WHAT)
 (:VAR MV6398 :ISA TARGET-PROTEIN :QUANTIFIER MV6397 :DISEASE MV6394 :RAW-TEXT
  "targets")
 (:VAR MV6397 :ISA SOME :WORD "some")
 (:VAR MV6394 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
703: "What targets could lead to the development of pancreatic cancer?"

                    SOURCE-START
e21   LEAD          1 "What targets could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What targets could lead to the development of pancreatic cancer?"
 (:VAR MV6407 :ISA LEAD :AGENT MV6404 :THEME MV6410 :MODAL MV6406 :RAW-TEXT
  "lead")
 (:VAR MV6404 :ISA TARGET-PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "targets")
 (:VAR MV6410 :ISA DEVELOPMENT :DISEASE MV6402 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV6402 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6406 :ISA COULD))

___________________
704: "What proteins could lead to the development of pancreatic cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins could lead to the development of pancreatic cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins could lead to the development of pancreatic cancer?"
 (:VAR MV6418 :ISA LEAD :AGENT MV6416 :THEME MV6421 :MODAL MV6417 :RAW-TEXT
  "lead")
 (:VAR MV6416 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV6421 :ISA DEVELOPMENT :DISEASE MV6414 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV6414 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6417 :ISA COULD))

___________________
705: "What mutated genes could lead to pancreatic cancer?"

                    SOURCE-START
e15   LEAD          1 "What mutated genes could lead to pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What mutated genes could lead to pancreatic cancer?"
 (:VAR MV6430 :ISA LEAD :AGENT MV6428 :THEME MV6425 :MODAL MV6429 :RAW-TEXT
  "lead")
 (:VAR MV6428 :ISA GENE :HAS-DETERMINER "WHAT" :PREDICATION MV6427 :RAW-TEXT
  "genes")
 (:VAR MV6427 :ISA MUTATION :OBJECT MV6428 :RAW-TEXT "mutated")
 (:VAR MV6425 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6429 :ISA COULD))

___________________
706: "What is the top gene mutation that leads to pancreatic cancer?"

                    SOURCE-START
e23   BE            1 "What is the top gene mutation that leads to pancreatic cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the top gene mutation that leads to pancreatic cancer?"
 (:VAR MV6435 :ISA BE :SUBJECT MV6434 :PREDICATE MV6439 :PRESENT "PRESENT")
 (:VAR MV6434 :ISA WHAT)
 (:VAR MV6439 :ISA MUTATION :OBJECT MV6438 :PREDICATION MV6441 :HAS-DETERMINER
  "THE" :MODIFIER MV6437 :AGENT-OR-OBJECT MV6438 :RAW-TEXT "mutation")
 (:VAR MV6438 :ISA GENE :RAW-TEXT "gene")
 (:VAR MV6441 :ISA LEAD :AGENT MV6439 :THAT-REL T :THEME MV6433 :PRESENT
  "PRESENT" :RAW-TEXT "leads")
 (:VAR MV6433 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6437 :ISA TOP-QUA-LOCATION) (:VAR MV6438 :ISA GENE :RAW-TEXT "gene"))

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
 (:VAR MV6471 :ISA BIO-USE :PATIENT MV6461 :MODAL MV6462 :AGENT MV6463 :THEME
  MV6470 :PRESENT "PRESENT" :RAW-TEXT "use")
 (:VAR MV6461 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV6462 :ISA COULD) (:VAR MV6463 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6470 :ISA TREATMENT :DISEASE MV6459 :RAW-TEXT "treat")
 (:VAR MV6459 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739"))

___________________
709: "What are some drugs for treating pancreatic cancer?"

                    SOURCE-START
e14   BE            1 "What are some drugs for treating pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs for treating pancreatic cancer?"
 (:VAR MV6474 :ISA BE :SUBJECT MV6473 :PREDICATE MV6476 :PRESENT "PRESENT")
 (:VAR MV6473 :ISA WHAT)
 (:VAR MV6476 :ISA DRUG :TREATMENT MV6478 :QUANTIFIER MV6475 :RAW-TEXT "drugs")
 (:VAR MV6478 :ISA TREATMENT :DISEASE MV6472 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "treating")
 (:VAR MV6472 :ISA CANCER :NAME "pancreatic cancer" :UID "TS-0739")
 (:VAR MV6475 :ISA SOME :WORD "some"))

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
713: "Let's build a model"

                    SOURCE-START
e8    EXPLICIT-SUGGESTION 1 "Let's build a model" 7
                    END-OF-SOURCE
("Let's build a model"
 (:VAR MV6512 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6509 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6509 :ISA BUILD :ARTIFACT MV6511 :PRESENT "PRESENT")
 (:VAR MV6511 :ISA MODEL :HAS-DETERMINER "A"))

___________________
714: "Mek activates MAPK3"

                    SOURCE-START
e5    BIO-ACTIVATE  1 "Mek activates MAPK3" 5
                    END-OF-SOURCE
("Mek activates MAPK3"
 (:VAR MV6515 :ISA BIO-ACTIVATE :AGENT MV6514 :OBJECT MV6513 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6514 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6513 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
715: "HRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "HRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("HRAS activates RAF."
 (:VAR MV6517 :ISA BIO-ACTIVATE :AGENT MV6516 :OBJECT MV6518 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6516 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV6518 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
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
 (:VAR MV6519 :ISA REMOVE :OBJECT MV6526 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV6526 :ISA FACT :STATEMENT MV6524 :HAS-DETERMINER "THE")
 (:VAR MV6524 :ISA BIO-ACTIVATE :AGENT MV6523 :OBJECT MV6525 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6523 :ISA PROTEIN :RAW-TEXT "hras" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV6525 :ISA PROTEIN-FAMILY :RAW-TEXT "ras" :NAME "Ras" :COUNT 3
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
 (:VAR MV6538 :ISA POLAR-QUESTION :STATEMENT MV6529)
 (:VAR MV6529 :ISA TELL :AGENT MV6528 :THEME MV6537 :THEME MV6530 :MODAL "CAN")
 (:VAR MV6528 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV6537 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6531 :VALUE MV6535 :PREP
  MV6533 :PREDICATE MV6532)
 (:VAR MV6531 :ISA WHAT) (:VAR MV6535 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV6533 :ISA IN :WORD "in") (:VAR MV6532 :ISA BE :MODAL "CAN")
 (:VAR MV6530 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
718: "Summarize the model."

                    SOURCE-START
e5    SUMMARIZE     1 "Summarize the model" 4
                    PERIOD
                    END-OF-SOURCE
("Summarize the model."
 (:VAR MV6542 :ISA SUMMARIZE :STATEMENT MV6541 :PRESENT "PRESENT")
 (:VAR MV6541 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
719: "Summarize the current model."

                    SOURCE-START
e7    SUMMARIZE     1 "Summarize the current model" 5
                    PERIOD
                    END-OF-SOURCE
("Summarize the current model."
 (:VAR MV6547 :ISA SUMMARIZE :STATEMENT MV6546 :PRESENT "PRESENT")
 (:VAR MV6546 :ISA MODEL :HAS-DETERMINER "THE" :PREDICATION MV6545)
 (:VAR MV6545 :ISA CURRENT))

___________________
720: "What phosphorylates BRAF?"

                    SOURCE-START
e4    PHOSPHORYLATE 1 "What phosphorylates BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What phosphorylates BRAF?"
 (:VAR MV6549 :ISA PHOSPHORYLATE :AGENT-OR-CAUSE MV6548 :SUBSTRATE MV6550
  :PRESENT "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6548 :ISA WHAT)
 (:VAR MV6550 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
721: "Vemurafenib binds BRAF."

                    SOURCE-START
e4    BINDING       1 "Vemurafenib binds BRAF" 4
                    PERIOD
                    END-OF-SOURCE
("Vemurafenib binds BRAF."
 (:VAR MV6552 :ISA BINDING :BINDER MV6551 :DIRECT-BINDEE MV6553 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV6551 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV6553 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
722: "Phosphorylated MAP2K1 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated MAP2K1 is activated" 8
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAP2K1 is activated."
 (:VAR MV6558 :ISA BIO-ACTIVATE :OBJECT MV6554 :PRESENT "PRESENT" :RAW-TEXT
  "activated")
 (:VAR MV6554 :ISA PROTEIN :PREDICATION MV6555 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6555 :ISA PHOSPHORYLATE :SUBSTRATE MV6554 :RAW-TEXT "Phosphorylated"))

___________________
723: "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2" 18
                    PERIOD
                    END-OF-SOURCE
("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
 (:VAR MV6562 :ISA DEPHOSPHORYLATE :AGENT MV6559 :SUBSTRATE MV6560 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV6559 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME
  "PP2AA_HUMAN")
 (:VAR MV6560 :ISA PROTEIN :PREDICATION MV6568 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6568 :ISA BINDING :DIRECT-BINDEE MV6560 :THAT-REL T :BINDEE MV6561
  :PRESENT "PRESENT" :NEGATION MV6565 :RAW-TEXT "bound")
 (:VAR MV6561 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6565 :ISA NOT :WORD "not"))

___________________
724: "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."

                    SOURCE-START
e24   PHOSPHORYLATE 1 "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2" 19
                    PERIOD
                    END-OF-SOURCE
("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
 (:VAR MV6579 :ISA PHOSPHORYLATE :AGENT MV6570 :SUBSTRATE MV6572 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6570 :ISA PROTEIN :PREDICATION MV6580 :PREDICATION MV6573 :RAW-TEXT
  "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6580 :ISA BINDING :DIRECT-BINDEE MV6570 :THAT-REL T :BINDEE MV6571
  :PRESENT "PRESENT" :NEGATION MV6576 :RAW-TEXT "bound")
 (:VAR MV6571 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME
  "PP2AA_HUMAN")
 (:VAR MV6576 :ISA NOT :WORD "not") (:VAR MV6573 :ISA ACTIVE)
 (:VAR MV6572 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
725: "Phosphorylated ERK2 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated ERK2 is activated" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK2 is activated."
 (:VAR MV6586 :ISA BIO-ACTIVATE :OBJECT MV6582 :PRESENT "PRESENT" :RAW-TEXT
  "activated")
 (:VAR MV6582 :ISA PROTEIN :PREDICATION MV6583 :RAW-TEXT "ERK2" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6583 :ISA PHOSPHORYLATE :SUBSTRATE MV6582 :RAW-TEXT "Phosphorylated"))

___________________
726: "DUSP6 dephosphorylates ERK2 that is not bound to SOS1."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates ERK2 that is not bound to SOS1" 13
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
 (:VAR MV6590 :ISA DEPHOSPHORYLATE :AGENT MV6587 :SUBSTRATE MV6588 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV6587 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV6588 :ISA PROTEIN :PREDICATION MV6596 :RAW-TEXT "ERK2" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6596 :ISA BINDING :DIRECT-BINDEE MV6588 :THAT-REL T :BINDEE MV6589
  :PRESENT "PRESENT" :NEGATION MV6593 :RAW-TEXT "bound")
 (:VAR MV6589 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME
  "SOS1_HUMAN")
 (:VAR MV6593 :ISA NOT :WORD "not"))

___________________
727: "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."

                    SOURCE-START
e28   PHOSPHORYLATE 1 "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1" 16
                    PERIOD
                    END-OF-SOURCE
("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
 (:VAR MV6610 :ISA PHOSPHORYLATE :AGENT MV6599 :SUBSTRATE MV6598 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6599 :ISA PROTEIN :PREDICATION MV6613 :MUTATION MV6612 :RAW-TEXT
  "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV6613 :ISA BINDING :DIRECT-BINDEE MV6599 :THAT-REL T :BINDEE MV6609
  :PRESENT "PRESENT" :NEGATION MV6606 :RAW-TEXT "bound")
 (:VAR MV6609 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib" :UID
  "PCID:42611257")
 (:VAR MV6606 :ISA NOT :WORD "not")
 (:VAR MV6612 :ISA POINT-MUTATED-PROTEIN :POSITION MV6601 :NEW-AMINO-ACID
  MV6603 :ORIGINAL-AMINO-ACID MV6600)
 (:VAR MV6601 :ISA NUMBER :VALUE 600)
 (:VAR MV6603 :ISA AMINO-ACID :NAME "glutamic acid" :LETTER "E")
 (:VAR MV6600 :ISA AMINO-ACID :NAME "valine" :LETTER "V")
 (:VAR MV6598 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
728: "Phosphorylated MAPK1 is active."

                    SOURCE-START
e8    COPULAR-PREDICATION 1 "Phosphorylated MAPK1 is active" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAPK1 is active."
 (:VAR MV6619 :ISA COPULAR-PREDICATION :ITEM MV6615 :VALUE MV6618 :PREDICATE
  MV6617)
 (:VAR MV6615 :ISA PROTEIN :PREDICATION MV6616 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6616 :ISA PHOSPHORYLATE :SUBSTRATE MV6615 :RAW-TEXT "Phosphorylated")
 (:VAR MV6618 :ISA ACTIVE) (:VAR MV6617 :ISA BE :PRESENT "PRESENT"))

___________________
729: "PDK1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "PDK1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("PDK1 phosphorylates AKT1."
 (:VAR MV6622 :ISA PHOSPHORYLATE :AGENT MV6620 :SUBSTRATE MV6621 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6620 :ISA PROTEIN :RAW-TEXT "PDK1" :UID "UP:O15530" :NAME
  "PDPK1_HUMAN")
 (:VAR MV6621 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
730: "Let's move phosphorylated AKT1 to the top"

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 to the top" 11
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 to the top"
 (:VAR MV6631 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6625 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6625 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV6629 :THEME MV6624 :PRESENT
  "PRESENT")
 (:VAR MV6629 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV6624 :ISA PROTEIN :PREDICATION MV6626 :RAW-TEXT "AKT1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6626 :ISA PHOSPHORYLATE :SUBSTRATE MV6624 :RAW-TEXT "phosphorylated"))

___________________
731: "Let's move phosphorylated AKT1 on top"

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's move phosphorylated AKT1 on top" 10
                    END-OF-SOURCE
("Let's move phosphorylated AKT1 on top"
 (:VAR MV6639 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6634 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6634 :ISA MOVE-SOMETHING-SOMEWHERE :AT-RELATIVE-LOCATION MV6637 :THEME
  MV6633 :PRESENT "PRESENT")
 (:VAR MV6637 :ISA TOP-QUA-LOCATION)
 (:VAR MV6633 :ISA PROTEIN :PREDICATION MV6635 :RAW-TEXT "AKT1" :UID
  "UP:P31749" :NAME "AKT1_HUMAN")
 (:VAR MV6635 :ISA PHOSPHORYLATE :SUBSTRATE MV6633 :RAW-TEXT "phosphorylated"))

___________________
732: "show AKT1 on top"

                    SOURCE-START
e8    SHOW          1 "show AKT1 on top" 6
                    END-OF-SOURCE
("show AKT1 on top"
 (:VAR MV6641 :ISA SHOW :AT-RELATIVE-LOCATION MV6643 :STATEMENT-OR-THEME MV6640
  :PRESENT "PRESENT")
 (:VAR MV6643 :ISA TOP-QUA-LOCATION)
 (:VAR MV6640 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
733: "Let's highlight upstream of AKT1"

                    SOURCE-START
e12   EXPLICIT-SUGGESTION 1 "Let's highlight upstream of AKT1" 9
                    END-OF-SOURCE
("Let's highlight upstream of AKT1"
 (:VAR MV6652 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6647 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6647 :ISA HIGHLIGHT :THEME MV6648 :PRESENT "PRESENT")
 (:VAR MV6648 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV6646 :RAW-TEXT
  "upstream")
 (:VAR MV6646 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
734: "Let's move nucleus elements to the top"

                    SOURCE-START
e15   EXPLICIT-SUGGESTION 1 "Let's move nucleus elements to the top" 10
                    END-OF-SOURCE
("Let's move nucleus elements to the top"
 (:VAR MV6661 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV6654 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV6654 :ISA MOVE-SOMETHING-SOMEWHERE :GOAL MV6659 :THEME MV6656 :PRESENT
  "PRESENT")
 (:VAR MV6659 :ISA TOP-QUA-LOCATION :HAS-DETERMINER "THE")
 (:VAR MV6656 :ISA ELEMENT :MODIFIER MV6655)
 (:VAR MV6655 :ISA NUCLEUS :RAW-TEXT "nucleus"))

___________________
735: "What are the common downstreams of AKT1 and  BRAF?"

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
736: "Are there common upstreams of AKT1, BRAF and MAPK1?"

                    SOURCE-START
e21   THERE-EXISTS  1 "Are there common upstreams of AKT1, BRAF and MAPK1" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there common upstreams of AKT1, BRAF and MAPK1?"
 (:VAR MV6686 :ISA POLAR-QUESTION :STATEMENT MV6683)
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
737: "What are the common upstream regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e26   BE            1 "What are the common upstream regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6691 :ISA BE :SUBJECT MV6690 :PREDICATE MV6696 :PRESENT "PRESENT")
 (:VAR MV6690 :ISA WHAT)
 (:VAR MV6696 :ISA REGULATOR :THEME MV6699 :HAS-DETERMINER "THE" :PREDICATION
  MV6693 :CONTEXT MV6694 :RAW-TEXT "regulators")
 (:VAR MV6699 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6687 MV6688 MV6689))
 (:VAR MV6687 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6688 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6689 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6693 :ISA COMMON)
 (:VAR MV6694 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
738: "What are common downstream regulators of MMP3 and SERPINE1?"

                    SOURCE-START
e19   BE            1 "What are common downstream regulators of MMP3 and SERPINE1" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common downstream regulators of MMP3 and SERPINE1?"
 (:VAR MV6704 :ISA BE :SUBJECT MV6703 :PREDICATE MV6708 :PRESENT "PRESENT")
 (:VAR MV6703 :ISA WHAT)
 (:VAR MV6708 :ISA REGULATOR :THEME MV6711 :PREDICATION MV6705 :CONTEXT MV6706
  :RAW-TEXT "regulators")
 (:VAR MV6711 :ISA COLLECTION :RAW-TEXT "MMP3 and SERPINE1" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV6701 MV6702))
 (:VAR MV6701 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6702 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6705 :ISA COMMON)
 (:VAR MV6706 :ISA DOWNSTREAM-SEGMENT :RAW-TEXT "downstream"))

___________________
739: "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"

                    SOURCE-START
e24   BE            1 "What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
 (:VAR MV6718 :ISA BE :SUBJECT MV6717 :PREDICATE MV6713 :PRESENT "PRESENT")
 (:VAR MV6717 :ISA WHAT)
 (:VAR MV6713 :ISA PROTEIN-FAMILY :MOLECULE-TYPE MV6724 :PREDICATION MV6719
  :CONTEXT MV6720 :RAW-TEXT "transcriptional regulators" :NAME
  "transcriptional regulator" :UID "XFAM:PF02082")
 (:VAR MV6724 :ISA COLLECTION :RAW-TEXT "FN1, MMP3, and SERPINE1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS (MV6714 MV6715 MV6716))
 (:VAR MV6714 :ISA PROTEIN :RAW-TEXT "FN1" :UID "UP:P02751" :NAME "FINC_HUMAN")
 (:VAR MV6715 :ISA PROTEIN :RAW-TEXT "MMP3" :UID "UP:P08254" :NAME
  "MMP3_HUMAN")
 (:VAR MV6716 :ISA PROTEIN :RAW-TEXT "SERPINE1" :UID "UP:P05121" :NAME
  "PAI1_HUMAN")
 (:VAR MV6719 :ISA COMMON)
 (:VAR MV6720 :ISA UPSTREAM-SEGMENT :RAW-TEXT "upstream"))

___________________
740: "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"

                    SOURCE-START
e24   BE            1 "What are the mutations of PTEN, TP53 and BRAF in ovarian cancer" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
 (:VAR MV6729 :ISA BE :SUBJECT MV6728 :PREDICATE MV6731 :PRESENT "PRESENT")
 (:VAR MV6728 :ISA WHAT)
 (:VAR MV6731 :ISA MUTATION :OBJECT MV6737 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV6737 :ISA COLLECTION :CONTEXT MV6727 :RAW-TEXT "PTEN, TP53 and BRAF"
  :TYPE PROTEIN :NUMBER 3 :ITEMS (MV6733 MV6726 MV6735))
 (:VAR MV6727 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6733 :ISA PROTEIN :RAW-TEXT "PTEN" :UID "UP:P60484" :NAME
  "PTEN_HUMAN")
 (:VAR MV6726 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV6735 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
741: "What is the mutation frequency of TP53 in ovarian cancer?"

                    SOURCE-START
e21   BE            1 "What is the mutation frequency of TP53 in ovarian cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the mutation frequency of TP53 in ovarian cancer?"
 (:VAR MV6743 :ISA BE :SUBJECT MV6742 :PREDICATE MV6746 :PRESENT "PRESENT")
 (:VAR MV6742 :ISA WHAT)
 (:VAR MV6746 :ISA FREQUENCY :MEASURED-ITEM MV6740 :HAS-DETERMINER "THE"
  :MEASURED-ITEM MV6745 :RAW-TEXT "frequency")
 (:VAR MV6740 :ISA PROTEIN :CONTEXT MV6741 :RAW-TEXT "TP53" :UID "UP:P04637"
  :NAME "P53_HUMAN")
 (:VAR MV6741 :ISA CANCER :NAME "ovarian cancer" :UID "TS-1223")
 (:VAR MV6745 :ISA MUTATION :RAW-TEXT "mutation"))

___________________
742: "Which genes are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV6761 :ISA COPULAR-PREDICATION :ITEM MV6755 :VALUE MV6751 :PREDICATE
  MV6756)
 (:VAR MV6755 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV6751 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV6753 :ALTERNATIVE MV6752)
 (:VAR MV6753 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV6752 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV6756 :ISA BE :PRESENT "PRESENT"))

___________________
743: "Which genes are mutually exclusive with CDH1 in breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "Which genes are mutually exclusive with CDH1 in breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are mutually exclusive with CDH1 in breast cancer?"
 (:VAR MV6772 :ISA COPULAR-PREDICATION :ITEM MV6766 :VALUE MV6762 :PREDICATE
  MV6767)
 (:VAR MV6766 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV6762 :ISA MUTUAL-EXCLUSIVITY :ALTERNATIVE MV6763)
 (:VAR MV6763 :ISA PROTEIN :CONTEXT MV6764 :RAW-TEXT "CDH1" :UID "UP:P12830"
  :NAME "CADH1_HUMAN")
 (:VAR MV6764 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV6767 :ISA BE :PRESENT "PRESENT"))

___________________
744: "What is the cellular location of akt1?"

                    SOURCE-START
e15   BE            1 "What is the cellular location of akt1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the cellular location of akt1?"
 (:VAR MV6775 :ISA BE :SUBJECT MV6774 :PREDICATE MV6781 :PRESENT "PRESENT")
 (:VAR MV6774 :ISA WHAT)
 (:VAR MV6781 :ISA QUALITY-PREDICATE :ITEM MV6773 :ATTRIBUTE MV6778)
 (:VAR MV6773 :ISA PROTEIN :RAW-TEXT "akt1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV6778 :ISA LOCATION-OF :HAS-DETERMINER "THE" :MODIFIER MV6777)
 (:VAR MV6777 :ISA CELLULAR :NAME "cellular"))

___________________
745: "How does MAPK regulate BRAF?"

                    SOURCE-START
e7    REGULATE      1 "How does MAPK regulate BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MAPK regulate BRAF?"
 (:VAR MV6785 :ISA REGULATE :MANNER MV6782 :AGENT MV6784 :OBJECT MV6786
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV6782 :ISA HOW)
 (:VAR MV6784 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV6786 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
746: "What is BRAF?"

                    SOURCE-START
e4    BE            1 "What is BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is BRAF?"
 (:VAR MV6788 :ISA BE :SUBJECT MV6787 :PREDICATE MV6789 :PRESENT "PRESENT")
 (:VAR MV6787 :ISA WHAT)
 (:VAR MV6789 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
747: "Is BRAF a member of the RAF family?"

                    SOURCE-START
e19   BE            1 "Is BRAF a member of the RAF family" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is BRAF a member of the RAF family?"
 (:VAR MV6801 :ISA POLAR-QUESTION :STATEMENT MV6790)
 (:VAR MV6790 :ISA BE :SUBJECT MV6791 :PREDICATE MV6793)
 (:VAR MV6791 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6793 :ISA MEMBER :SET MV6799 :HAS-DETERMINER "A")
 (:VAR MV6799 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME
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
 (:VAR MV6808 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6803 :VALUE MV6806 :PREP
  MV6805 :PREDICATE MV6804)
 (:VAR MV6803 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6806 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663")
 (:VAR MV6805 :ISA IN :WORD "in") (:VAR MV6804 :ISA BE :PRESENT "PRESENT"))

___________________
749: "What genes are in the RAF family?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What genes are in the RAF family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the RAF family?"
 (:VAR MV6819 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV6810 :VALUE MV6817 :PREP
  MV6812 :PREDICATE MV6811)
 (:VAR MV6810 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6817 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME
  "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV6812 :ISA IN :WORD "in") (:VAR MV6811 :ISA BE :PRESENT "PRESENT"))

___________________
750: "What are some other names for BRAF?"

                    SOURCE-START
e15   BE            1 "What are some other names for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some other names for BRAF?"
 (:VAR MV6821 :ISA BE :SUBJECT MV6820 :PREDICATE MV6825 :PRESENT "PRESENT")
 (:VAR MV6820 :ISA WHAT)
 (:VAR MV6825 :ISA HAS-NAME :QUANTIFIER MV6822 :QUANTIFIER MV6823 :ITEM MV6828)
 (:VAR MV6822 :ISA SOME :WORD "some") (:VAR MV6823 :ISA OTHER :WORD "other")
 (:VAR MV6828 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
751: "What are synonyms for ERK?"

                    SOURCE-START
e9    FOR           1 "What are synonyms for ERK" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What are synonyms for ERK?"
 (:VAR MV6836 :ISA WH-QUESTION :STATEMENT MV6835 :WH WHAT)
 (:VAR MV6835 :ISA PREPOSITIONAL-PHRASE :POBJ MV6834 :PREP "FOR")
 (:VAR MV6834 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV6863 :ISA POLAR-QUESTION :STATEMENT MV6861)
 (:VAR MV6861 :ISA BE :SUBJECT MV6859 :PREDICATE MV6860)
 (:VAR MV6859 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN")
 (:VAR MV6860 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
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
  MV6883 :PREDICATE MV6882)
 (:VAR MV6881 :ISA WHAT) (:VAR MV6885 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV6883 :ISA IN :WORD "in") (:VAR MV6882 :ISA BE :PRESENT "PRESENT"))

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
 (:VAR MV6900 :ISA CANCER :NAME "prostate cancer" :UID "TS-1224")
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
("Is BRAF a kinase?" (:VAR MV6947 :ISA POLAR-QUESTION :STATEMENT MV6943)
 (:VAR MV6943 :ISA BE :SUBJECT MV6944 :PREDICATE MV6946)
 (:VAR MV6944 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6946 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

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
 (:VAR MV7003 :ISA POLAR-QUESTION :STATEMENT MV6996)
 (:VAR MV6996 :ISA BE :SUBJECT MV6997 :PREDICATE MV7002)
 (:VAR MV6997 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7002 :ISA COLLECTION :RAW-TEXT "a kinase or a transcription factor"
  :TYPE KINASE :NUMBER 2 :ITEMS (MV6999 MV6995))
 (:VAR MV6999 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase")
 (:VAR MV6995 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

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
e42   EVENT-RELATION  1 "Is the amount of phosphorylated ERK ever high if we increase the amount " 14
e32   OF            14 "of MEK ten fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
                    SOURCE-START
e42   S             1 "Is the amount of phosphorylated ERK ever high if we increase the amount " 14
e32   PP            14 "of MEK ten fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
778: "What are some pathways that affect BRAF?"

                    SOURCE-START
e14   BE            1 "What are some pathways that affect BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some pathways that affect BRAF?"
 (:VAR MV7112 :ISA BE :SUBJECT MV7111 :PREDICATE MV7114 :PRESENT "PRESENT")
 (:VAR MV7111 :ISA WHAT)
 (:VAR MV7114 :ISA PATHWAY :PREDICATION MV7116 :QUANTIFIER MV7113 :RAW-TEXT
  "pathways")
 (:VAR MV7116 :ISA AFFECT :AGENT MV7114 :THAT-REL T :OBJECT MV7117 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV7117 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7113 :ISA SOME :WORD "some"))

___________________
779: "What are the pathways that affect BRAF"

                    SOURCE-START
e15   BE            1 "What are the pathways that affect BRAF" 8
                    END-OF-SOURCE
("What are the pathways that affect BRAF"
 (:VAR MV7119 :ISA BE :SUBJECT MV7118 :PREDICATE MV7121 :PRESENT "PRESENT")
 (:VAR MV7118 :ISA WHAT)
 (:VAR MV7121 :ISA PATHWAY :PREDICATION MV7123 :HAS-DETERMINER "THE" :RAW-TEXT
  "pathways")
 (:VAR MV7123 :ISA AFFECT :AGENT MV7121 :THAT-REL T :OBJECT MV7124 :PRESENT
  "PRESENT" :RAW-TEXT "affect")
 (:VAR MV7124 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
780: "What genes are regulated by miR-20b-5p, and miR-145-5p?"

                    SOURCE-START
e17   REGULATE      1 "What genes are regulated by miR-20b-5p, and miR-145-5p" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p, and miR-145-5p?"
 (:VAR MV7134 :ISA REGULATE :OBJECT MV7128 :AGENT MV7133 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV7128 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7133 :ISA COLLECTION :RAW-TEXT "miR-20b-5p, and miR-145-5p" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS (MV7125 MV7126))
 (:VAR MV7125 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV7126 :ISA MICRO-RNA :RAW-TEXT "miR-145-5p" :NAME "microRNA 145-5p"
  :UID "MIMAT0000437"))

___________________
781: "What are some genes that are regulated by ELK1?"

                    SOURCE-START
e20   BE            1 "What are some genes that are regulated by ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes that are regulated by ELK1?"
 (:VAR MV7138 :ISA BE :SUBJECT MV7137 :PREDICATE MV7140 :PRESENT "PRESENT")
 (:VAR MV7137 :ISA WHAT)
 (:VAR MV7140 :ISA GENE :PREDICATION MV7145 :QUANTIFIER MV7139 :RAW-TEXT
  "genes")
 (:VAR MV7145 :ISA REGULATE :OBJECT MV7140 :THAT-REL T :AGENT MV7136 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV7136 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7139 :ISA SOME :WORD "some"))

___________________
782: "What pathways contain CXCL8 and CXCL10?"

                    SOURCE-START
e11   CONTAIN       1 "What pathways contain CXCL8 and CXCL10" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways contain CXCL8 and CXCL10?"
 (:VAR MV7151 :ISA CONTAIN :THEME MV7150 :PATIENT MV7153 :PRESENT "PRESENT")
 (:VAR MV7150 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7153 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7147 MV7148))
 (:VAR MV7147 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7148 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
783: "Remove the fact that IL10 activates STAT3 in the model"

                    SOURCE-START
e24   REMOVE        1 "Remove the fact that IL10 activates STAT3 in the model" 13
                    END-OF-SOURCE
("Remove the fact that IL10 activates STAT3 in the model"
 (:VAR MV7156 :ISA REMOVE :OBJECT MV7165 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7165 :ISA FACT :STATEMENT MV7160 :HAS-DETERMINER "THE")
 (:VAR MV7160 :ISA BIO-ACTIVATE :AGENT MV7154 :OBJECT MV7155 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7154 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7155 :ISA PROTEIN :INFO-CONTEXT MV7163 :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV7163 :ISA MODEL :HAS-DETERMINER "THE"))

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
 (:VAR MV7177 :ISA BE :SUBJECT MV7176 :PREDICATE MV7179 :PRESENT "PRESENT")
 (:VAR MV7176 :ISA WHAT)
 (:VAR MV7179 :ISA PATH :ENDPOINTS MV7183 :QUANTIFIER MV7178)
 (:VAR MV7183 :ISA COLLECTION :RAW-TEXT "BRAF and AKT1" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV7181 MV7175))
 (:VAR MV7181 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7175 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN")
 (:VAR MV7178 :ISA SOME :WORD "some"))

___________________
786: "Does MEK1 activate ERK2"

                    SOURCE-START
e10   BIO-ACTIVATE  1 "Does MEK1 activate ERK2" 7
                    END-OF-SOURCE
("Does MEK1 activate ERK2" (:VAR MV7190 :ISA POLAR-QUESTION :STATEMENT MV7189)
 (:VAR MV7189 :ISA BIO-ACTIVATE :AGENT MV7185 :OBJECT MV7186 :RAW-TEXT
  "activate")
 (:VAR MV7185 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7186 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
787: "What drugs tagret BRAF?"

                    SOURCE-START
e6    PROTEIN       1 "What drugs tagret BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs tagret BRAF?"
 (:VAR MV7193 :ISA PROTEIN :HAS-DETERMINER "WHAT" :MODIFIER MV7192 :MODIFIER
  MV7194 :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV7192 :ISA DRUG :RAW-TEXT "drugs")
 (:VAR MV7194 :ISA BIO-ENTITY :NAME "tagret"))

___________________
788: "Which kinases are in the MAPK signalling pathway?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which kinases are in the MAPK signalling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signalling pathway?"
 (:VAR MV7203 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7197 :VALUE MV7195 :PREP
  MV7199 :PREDICATE MV7198)
 (:VAR MV7197 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7195 :ISA CELLULAR-PROCESS :HAS-DETERMINER "THE" :MODIFIER MV7201
  :RAW-TEXT "signalling pathway" :NAME "signalling cascade" :UID "GO:0007165")
 (:VAR MV7201 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV7199 :ISA IN :WORD "in") (:VAR MV7198 :ISA BE :PRESENT "PRESENT"))

___________________
789: "What drugs drugs target BRAF?"

                    SOURCE-START
e9    TARGET        1 "What drugs drugs target BRAF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs drugs target BRAF?"
 (:VAR MV7208 :ISA TARGET :AGENT MV7210 :OBJECT MV7209 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7210 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7209 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
790: "What rgulates ELLK1?"

                    SOURCE-START
e6    BIO-ENTITY    1 "What rgulates ELLK1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What rgulates ELLK1?"
 (:VAR MV7214 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :MODIFIER MV7215 :NAME
  "ELLK1")
 (:VAR MV7215 :ISA BIO-ENTITY :NAME "rgulates"))

___________________
791: "Does STAT3 increase expression of c-fos in liver?"

                    SOURCE-START
e21   INCREASE      1 "Does STAT3 increase expression of c-fos in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase expression of c-fos in liver?"
 (:VAR MV7228 :ISA POLAR-QUESTION :STATEMENT MV7225)
 (:VAR MV7225 :ISA INCREASE :AGENT MV7216 :AFFECTED-PROCESS MV7221 :RAW-TEXT
  "increase")
 (:VAR MV7216 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7221 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV7217 :RAW-TEXT
  "expression")
 (:VAR MV7217 :ISA PROTEIN :ORGAN MV7224 :RAW-TEXT "c-fos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV7224 :ISA LIVER))

___________________
792: "Does STAT3 affect c-fos expression in liver?"

                    SOURCE-START
e17   AFFECT        1 "Does STAT3 affect c-fos expression in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect c-fos expression in liver?"
 (:VAR MV7238 :ISA POLAR-QUESTION :STATEMENT MV7236)
 (:VAR MV7236 :ISA AFFECT :AGENT MV7229 :AFFECTED-PROCESS MV7233 :RAW-TEXT
  "affect")
 (:VAR MV7229 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7233 :ISA GENE-TRANSCRIPT-EXPRESS :ORGAN MV7235 :OBJECT MV7230
  :RAW-TEXT "expression")
 (:VAR MV7235 :ISA LIVER)
 (:VAR MV7230 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
793: "Does STAT3 alter c-fos expression?"

                    SOURCE-START
e12   ALTER         1 "Does STAT3 alter c-fos expression" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 alter c-fos expression?"
 (:VAR MV7245 :ISA POLAR-QUESTION :STATEMENT MV7244)
 (:VAR MV7244 :ISA ALTER :AGENT MV7239 :AFFECTED-PROCESS MV7243 :RAW-TEXT
  "alter")
 (:VAR MV7239 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7243 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV7240 :RAW-TEXT
  "expression")
 (:VAR MV7240 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
794: "Is STAT3 a transcriptional regulator of c-fos?"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcriptional regulator of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcriptional regulator of c-fos?"
 (:VAR MV7253 :ISA POLAR-QUESTION :STATEMENT MV7249)
 (:VAR MV7249 :ISA BE :SUBJECT MV7246 :PREDICATE MV7247)
 (:VAR MV7246 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7247 :ISA PROTEIN-FAMILY :MOLECULE-TYPE MV7248 :HAS-DETERMINER "A"
  :RAW-TEXT "transcriptional regulator" :NAME "transcriptional regulator" :UID
  "XFAM:PF02082")
 (:VAR MV7248 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
795: "Which drugs inhibit BRAF?"

                    SOURCE-START
e6    INHIBIT       1 "Which drugs inhibit BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs inhibit BRAF?"
 (:VAR MV7256 :ISA INHIBIT :AGENT MV7255 :OBJECT MV7257 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV7255 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7257 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
796: "STAT3 upregulates ELK1."

                    SOURCE-START
e6    UPREGULATE    1 "STAT3 upregulates ELK1" 6
                    PERIOD
                    END-OF-SOURCE
("STAT3 upregulates ELK1."
 (:VAR MV7260 :ISA UPREGULATE :AGENT MV7258 :OBJECT MV7259 :PRESENT "PRESENT"
  :RAW-TEXT "upregulates")
 (:VAR MV7258 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7259 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
797: "What does STAT3 transcribe?  "

                    SOURCE-START
e6    TRANSCRIBE    1 "What does STAT3 transcribe" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 transcribe?"
 (:VAR MV7264 :ISA TRANSCRIBE :OBJECT MV7262 :AGENT MV7261 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV7262 :ISA WHAT)
 (:VAR MV7261 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
798: "What is PI3K?"

                    SOURCE-START
e5    BE            1 "What is PI3K" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What is PI3K?"
 (:VAR MV7267 :ISA BE :SUBJECT MV7266 :PREDICATE MV7265 :PRESENT "PRESENT")
 (:VAR MV7266 :ISA WHAT)
 (:VAR MV7265 :ISA PROTEIN-FAMILY :RAW-TEXT "PI3K" :NAME "PI3-kinase" :COUNT 4
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
 (:VAR MV7269 :ISA BE :SUBJECT MV7268 :PREDICATE MV7270 :PRESENT "PRESENT")
 (:VAR MV7268 :ISA WHAT)
 (:VAR MV7270 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
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
 (:VAR MV7272 :ISA PHOSPHORYLATE :AGENT-OR-CAUSE MV7271 :SUBSTRATE MV7273
  :PRESENT "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7271 :ISA WHAT)
 (:VAR MV7273 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
 (:VAR MV7277 :ISA TARGET :AGENT MV7275 :OBJECT MV7278 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7275 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7278 :ISA PROTEIN-FAMILY :RAW-TEXT "AKT" :NAME "Rac" :COUNT 3
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
 (:VAR MV7281 :ISA REGULATE :AGENT-OR-CAUSE MV7280 :OBJECT MV7279 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7280 :ISA WHAT) (:VAR MV7279 :ISA BIO-ENTITY :NAME "ELLK1"))

___________________
803: "What regulates ELK1?"

                    SOURCE-START
e5    REGULATE      1 "What regulates ELK1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates ELK1?"
 (:VAR MV7284 :ISA REGULATE :AGENT-OR-CAUSE MV7283 :OBJECT MV7282 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7283 :ISA WHAT)
 (:VAR MV7282 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
804: "Does miR-20b-5pp target STAT3?"

                    SOURCE-START
e16   TARGET        1 "Does miR-20b-5pp target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5pp target STAT3?"
 (:VAR MV7295 :ISA POLAR-QUESTION :STATEMENT MV7294)
 (:VAR MV7294 :ISA TARGET :AGENT MV7293 :OBJECT MV7286 :RAW-TEXT "target")
 (:VAR MV7293 :ISA BIO-ENTITY :NAME "miR-20b-5pp")
 (:VAR MV7286 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
805: "What are the mutations of PTEEN in prostate cancer?"

                    SOURCE-START
e18   OF            1 "What are the mutations of PTEEN in prostate cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEEN in prostate cancer?"
 (:VAR MV7306 :ISA WH-QUESTION :STATEMENT MV7305 :WH WHAT)
 (:VAR MV7305 :ISA PREPOSITIONAL-PHRASE :POBJ MV7303 :PREP "OF")
 (:VAR MV7303 :ISA BIO-ENTITY :CONTEXT MV7296 :NAME "PTEEN")
 (:VAR MV7296 :ISA CANCER :NAME "prostate cancer" :UID "TS-1224"))

___________________
806: "What does selumitinibib target?"

                    SOURCE-START
e6    TARGET        1 "What does selumitinibib target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does selumitinibib target?"
 (:VAR MV7310 :ISA TARGET :OBJECT MV7307 :AGENT MV7311 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7307 :ISA WHAT) (:VAR MV7311 :ISA BIO-ENTITY :NAME "selumitinibib"))

___________________
807: "Is ELLK1 a kinase?"

                    SOURCE-START
e9    BE            1 "Is ELLK1 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ELLK1 a kinase?" (:VAR MV7316 :ISA POLAR-QUESTION :STATEMENT MV7313)
 (:VAR MV7313 :ISA BE :SUBJECT MV7312 :PREDICATE MV7315)
 (:VAR MV7312 :ISA BIO-ENTITY :NAME "ELLK1")
 (:VAR MV7315 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
808: "What regulates ELK12?"

                    SOURCE-START
e7    REGULATE      1 "What regulates ELK12" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates ELK12?"
 (:VAR MV7318 :ISA REGULATE :AGENT-OR-CAUSE MV7317 :OBJECT MV7319 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7317 :ISA WHAT)
 (:VAR MV7319 :ISA PROTEIN :VARIANT-NUMBER MV7321 :RAW-TEXT "ELK" :UID
  "UP:P54762" :NAME "EPHB1_HUMAN")
 (:VAR MV7321 :ISA NUMBER :VALUE 12))

___________________
809: "What does sleumiitibbb target?"

                    SOURCE-START
e6    TARGET        1 "What does sleumiitibbb target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does sleumiitibbb target?"
 (:VAR MV7325 :ISA TARGET :OBJECT MV7322 :AGENT MV7326 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7322 :ISA WHAT) (:VAR MV7326 :ISA BIO-ENTITY :NAME "sleumiitibbb"))

___________________
810: "What is the evidence that MEK1 phosphorylates ERK1?"

                    SOURCE-START
e18   BE            1 "What is the evidence that MEK1 phosphorylates ERK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that MEK1 phosphorylates ERK1?"
 (:VAR MV7330 :ISA BE :SUBJECT MV7329 :PREDICATE MV7335 :PRESENT "PRESENT")
 (:VAR MV7329 :ISA WHAT)
 (:VAR MV7335 :ISA EVIDENCE :STATEMENT MV7334 :HAS-DETERMINER "THE")
 (:VAR MV7334 :ISA PHOSPHORYLATE :AGENT MV7327 :SUBSTRATE MV7328 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV7327 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7328 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
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
 (:VAR MV7352 :ISA BIO-ACTIVATE :AGENT MV7350 :OBJECT MV7351 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7350 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7351 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
814: "How many interactions are in the model?"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "How many interactions are in the model" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How many interactions are in the model?"
 (:VAR MV7363 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7355 :VALUE MV7362 :PREP
  "IN" :PREDICATE MV7356)
 (:VAR MV7355 :ISA INTERACT :HAS-DETERMINER "HOW" :QUANTIFIER MV7354 :RAW-TEXT
  "interactions")
 (:VAR MV7354 :ISA MANY :WORD "many")
 (:VAR MV7362 :ISA INTERACT :INFO-CONTEXT MV7359 :HAS-DETERMINER "HOW"
  :QUANTIFIER MV7354 :RAW-TEXT "interactions")
 (:VAR MV7359 :ISA MODEL :HAS-DETERMINER "THE")
 (:VAR MV7354 :ISA MANY :WORD "many") (:VAR MV7356 :ISA BE :PRESENT "PRESENT"))

___________________
815: "Does tofacitinib decrease the amount of phosphorylated MAP2K2?"

                    SOURCE-START
e21   DECREASE      1 "Does tofacitinib decrease the amount of phosphorylated MAP2K2" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
 (:VAR MV7376 :ISA POLAR-QUESTION :STATEMENT MV7374)
 (:VAR MV7374 :ISA DECREASE :AGENT MV7367 :AFFECTED-PROCESS-OR-OBJECT MV7371
  :RAW-TEXT "decrease")
 (:VAR MV7367 :ISA DRUG :RAW-TEXT "tofacitinib" :NAME "tasocitinib" :UID
  "NCIT:C95800")
 (:VAR MV7371 :ISA BIO-AMOUNT :MEASURED-ITEM MV7365 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7365 :ISA PROTEIN :PREDICATION MV7373 :RAW-TEXT "MAP2K2" :UID
  "UP:P36507" :NAME "MP2K2_HUMAN")
 (:VAR MV7373 :ISA PHOSPHORYLATE :SUBSTRATE MV7365 :RAW-TEXT "phosphorylated"))

___________________
816: "What kinases does ERK1 activate?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "What kinases does ERK1 activate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does ERK1 activate?"
 (:VAR MV7381 :ISA BIO-ACTIVATE :OBJECT MV7379 :AGENT MV7377 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7379 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7377 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
817: "What kinases does MEK1 activate?"

                    SOURCE-START
e8    BIO-ACTIVATE  1 "What kinases does MEK1 activate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does MEK1 activate?"
 (:VAR MV7386 :ISA BIO-ACTIVATE :OBJECT MV7384 :AGENT MV7382 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7384 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7382 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
818: "What does ERK1 activate?"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "What does ERK1 activate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERK1 activate?"
 (:VAR MV7390 :ISA BIO-ACTIVATE :OBJECT MV7388 :AGENT MV7387 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7388 :ISA WHAT)
 (:VAR MV7387 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
819: "What does JAK1 phosphorylate?"

                    SOURCE-START
e6    PHOSPHORYLATE 1 "What does JAK1 phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does JAK1 phosphorylate?"
 (:VAR MV7394 :ISA PHOSPHORYLATE :AMINO-ACID MV7392 :AGENT MV7391 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylate")
 (:VAR MV7392 :ISA WHAT)
 (:VAR MV7391 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN"))

___________________
820: "What kinases does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What kinases does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does STAT3 regulate?"
 (:VAR MV7399 :ISA REGULATE :OBJECT MV7397 :AGENT MV7395 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7397 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7395 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
821: "What pathways involve SRF and what does SRF bind?"

                    SOURCE-START
e14   INVOLVE       1 "What pathways involve SRF and what does SRF bind" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF and what does SRF bind?"
 (:VAR MV7409 :ISA COLLECTION :TYPE INVOLVE :NUMBER 2 :ITEMS (MV7402 MV7408))
 (:VAR MV7402 :ISA INVOLVE :THEME MV7401 :THEME MV7403 :PRESENT "PRESENT")
 (:VAR MV7401 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7403 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV7408 :ISA BINDING :DIRECT-BINDEE MV7405 :BINDER MV7407 :PRESENT
  "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7405 :ISA WHAT)
 (:VAR MV7407 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
822: "What pathways involve SRF?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF?"
 (:VAR MV7412 :ISA INVOLVE :THEME MV7411 :THEME MV7413 :PRESENT "PRESENT")
 (:VAR MV7411 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7413 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
823: "What does SRF bind?"

                    SOURCE-START
e5    BINDING       1 "What does SRF bind" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does SRF bind?"
 (:VAR MV7417 :ISA BINDING :DIRECT-BINDEE MV7414 :BINDER MV7416 :PRESENT
  "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7414 :ISA WHAT)
 (:VAR MV7416 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
824: "What pathways involve SRF and is SRF a kinase?"

                    SOURCE-START
e16   KINASE        1 "What pathways involve SRF and is SRF a kinase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF and is SRF a kinase?"
 (:VAR MV7428 :ISA WH-QUESTION :STATEMENT MV7426 :VAR NIL :WH WHAT)
 (:VAR MV7426 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
825: "Does MAP2K1 phosphorylate and activate MAPK1?"

                    SOURCE-START
e13   COLLECTION    1 "Does MAP2K1 phosphorylate and activate MAPK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does MAP2K1 phosphorylate and activate MAPK1?"
 (:VAR MV7439 :ISA POLAR-QUESTION :STATEMENT MV7438)
 (:VAR MV7438 :ISA COLLECTION :TYPE PHOSPHORYLATE :ITEMS
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
 (:VAR MV7445 :ISA POLAR-QUESTION :STATEMENT MV7444)
 (:VAR MV7444 :ISA PHOSPHORYLATE :AGENT MV7440 :SUBSTRATE MV7441 :RAW-TEXT
  "phosphorylate")
 (:VAR MV7440 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7441 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
827: "Which kinases activate MEK2?"

                    SOURCE-START
e7    BIO-ACTIVATE  1 "Which kinases activate MEK2" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases activate MEK2?"
 (:VAR MV7449 :ISA BIO-ACTIVATE :AGENT MV7448 :OBJECT MV7446 :PRESENT "PRESENT"
  :RAW-TEXT "activate")
 (:VAR MV7448 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7446 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN"))

___________________
828: "Which drugs target upstreams of CXCL8 and CXCL10?"

                    SOURCE-START
e17   TARGET        1 "Which drugs target upstreams of CXCL8 and CXCL10" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target upstreams of CXCL8 and CXCL10?"
 (:VAR MV7455 :ISA TARGET :AGENT MV7453 :AFFECTED-PROCESS MV7456 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV7453 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7456 :ISA UPSTREAM-SEGMENT :PATHWAYCOMPONENT MV7459 :RAW-TEXT
  "upstreams")
 (:VAR MV7459 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7450 MV7451))
 (:VAR MV7450 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7451 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
829: "Which drugs target CXCL8?"

                    SOURCE-START
e8    TARGET        1 "Which drugs target CXCL8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target CXCL8?"
 (:VAR MV7465 :ISA TARGET :AGENT MV7463 :OBJECT MV7461 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7463 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7461 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN"))

___________________
830: "Which drugs target Jak3?"

                    SOURCE-START
e8    TARGET        1 "Which drugs target Jak3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which drugs target Jak3?"
 (:VAR MV7470 :ISA TARGET :AGENT MV7468 :OBJECT MV7466 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7468 :ISA DRUG :HAS-DETERMINER "WHICH" :RAW-TEXT "drugs")
 (:VAR MV7466 :ISA PROTEIN :RAW-TEXT "Jak3" :UID "UP:P52333" :NAME
  "JAK3_HUMAN"))

___________________
831: "What drugs target transcription factors shared by CXCL8 and CXCL10?"

                    SOURCE-START
e19   TARGET        1 "What drugs target transcription factors shared by CXCL8 and CXCL10" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target transcription factors shared by CXCL8 and CXCL10?"
 (:VAR MV7477 :ISA TARGET :AGENT MV7475 :OBJECT MV7471 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7475 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7471 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7478 :RAW-TEXT
  "transcription factors")
 (:VAR MV7478 :ISA SHARE :OBJECT MV7471 :PARTICIPANT MV7481 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV7481 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7472 MV7473))
 (:VAR MV7472 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7473 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
832: "What kinases does miR-20a-5p target?"

                    SOURCE-START
e9    TARGET        1 "What kinases does miR-20a-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases does miR-20a-5p target?"
 (:VAR MV7488 :ISA TARGET :OBJECT MV7485 :AGENT MV7483 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7485 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7483 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075"))

___________________
833: "What transcription factors does miR-20a-5p target?"

                    SOURCE-START
e10   TARGET        1 "What transcription factors does miR-20a-5p target" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors does miR-20a-5p target?"
 (:VAR MV7494 :ISA TARGET :OBJECT MV7489 :AGENT MV7490 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7489 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7490 :ISA MICRO-RNA :RAW-TEXT "miR-20a-5p" :NAME "microRNA 20a-5pm"
  :UID "MIMAT0000075"))

___________________
834: "What kinases are mutually exclusive with CDH1 for breast cancer?"

                    SOURCE-START
e18   COPULAR-PREDICATION 1 "What kinases are mutually exclusive with CDH1 for breast cancer" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are mutually exclusive with CDH1 for breast cancer?"
 (:VAR MV7505 :ISA COPULAR-PREDICATION :ITEM MV7499 :VALUE MV7495 :PREDICATE
  MV7500)
 (:VAR MV7499 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7495 :ISA MUTUAL-EXCLUSIVITY :DISEASE MV7497 :ALTERNATIVE MV7496)
 (:VAR MV7497 :ISA CANCER :NAME "breast cancer" :UID "TS-0591")
 (:VAR MV7496 :ISA PROTEIN :RAW-TEXT "CDH1" :UID "UP:P12830" :NAME
  "CADH1_HUMAN")
 (:VAR MV7500 :ISA BE :PRESENT "PRESENT"))

___________________
835: "What drugs target fakeprotein?"

                    SOURCE-START
e7    TARGET        1 "What drugs target fakeprotein" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target fakeprotein?"
 (:VAR MV7509 :ISA TARGET :AGENT MV7507 :OBJECT MV7510 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7507 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV7510 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
836: "Which kinases are in the FAKE signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the FAKE signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the FAKE signaling pathway?"
 (:VAR MV7521 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV7513 :VALUE MV7520 :PREP
  "IN" :PREDICATE MV7514)
 (:VAR MV7513 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV7520 :ISA KINASE :CONTEXT-OR-IN-PATHWAY MV7511 :HAS-DETERMINER "WHICH"
  :RAW-TEXT "kinases")
 (:VAR MV7511 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV7517
  :RAW-TEXT "signaling pathway")
 (:VAR MV7517 :ISA BIO-ENTITY :NAME "FAKE")
 (:VAR MV7514 :ISA BE :PRESENT "PRESENT"))

___________________
837: "What are the mutations of PTEN in fictional cancer?"

                    SOURCE-START
e19   BE            1 "What are the mutations of PTEN in fictional cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in fictional cancer?"
 (:VAR MV7524 :ISA BE :SUBJECT MV7523 :PREDICATE MV7526 :PRESENT "PRESENT")
 (:VAR MV7523 :ISA WHAT)
 (:VAR MV7526 :ISA MUTATION :OBJECT MV7528 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV7528 :ISA PROTEIN :CONTEXT MV7531 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV7531 :ISA CANCER :PREDICATION MV7530) (:VAR MV7530 :ISA FICTIONAL))

___________________
838: "What are the mutations of PTEN in liver cancer?"

                    SOURCE-START
e19   BE            1 "What are the mutations of PTEN in liver cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the mutations of PTEN in liver cancer?"
 (:VAR MV7535 :ISA BE :SUBJECT MV7534 :PREDICATE MV7537 :PRESENT "PRESENT")
 (:VAR MV7534 :ISA WHAT)
 (:VAR MV7537 :ISA MUTATION :OBJECT MV7539 :HAS-DETERMINER "THE" :RAW-TEXT
  "mutations")
 (:VAR MV7539 :ISA PROTEIN :CONTEXT MV7542 :RAW-TEXT "PTEN" :UID "UP:P60484"
  :NAME "PTEN_HUMAN")
 (:VAR MV7542 :ISA CANCER :ORGAN MV7541) (:VAR MV7541 :ISA LIVER))

___________________
839: "Remove the fact that ELk1 transcribes FAKE in the model."

                    SOURCE-START
e23   REMOVE        1 "Remove the fact that ELk1 transcribes FAKE in the model" 12
                    PERIOD
                    END-OF-SOURCE
("Remove the fact that ELk1 transcribes FAKE in the model."
 (:VAR MV7546 :ISA REMOVE :OBJECT MV7556 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7556 :ISA FACT :STATEMENT MV7550 :HAS-DETERMINER "THE")
 (:VAR MV7550 :ISA TRANSCRIBE :AGENT MV7545 :OBJECT MV7551 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7545 :ISA PROTEIN :RAW-TEXT "ELk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7551 :ISA BIO-ENTITY :INFO-CONTEXT MV7554 :NAME "FAKE")
 (:VAR MV7554 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
840: "ELK1 transcribes FOS"

                    SOURCE-START
e5    TRANSCRIBE    1 "ELK1 transcribes FOS" 5
                    END-OF-SOURCE
("ELK1 transcribes FOS"
 (:VAR MV7558 :ISA TRANSCRIBE :AGENT MV7557 :OBJECT MV7559 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7557 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7559 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
841: "Remove the fact that ELK1 transcribes FOS in the model."

                    SOURCE-START
e23   REMOVE        1 "Remove the fact that ELK1 transcribes FOS in the model" 12
                    PERIOD
                    END-OF-SOURCE
("Remove the fact that ELK1 transcribes FOS in the model."
 (:VAR MV7561 :ISA REMOVE :OBJECT MV7571 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV7571 :ISA FACT :STATEMENT MV7565 :HAS-DETERMINER "THE")
 (:VAR MV7565 :ISA TRANSCRIBE :AGENT MV7560 :OBJECT MV7566 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV7560 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7566 :ISA PROTEIN :INFO-CONTEXT MV7569 :RAW-TEXT "FOS" :UID
  "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV7569 :ISA MODEL :HAS-DETERMINER "THE"))

___________________
842: "What transcription factors are shared by CXCL8 and FAKE10?"

                    SOURCE-START
e19   SHARE         1 "What transcription factors are shared by CXCL8 and FAKE10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8 and FAKE10?"
 (:VAR MV7584 :ISA SHARE :OBJECT MV7572 :PARTICIPANT MV7583 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV7572 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7583 :ISA COLLECTION :RAW-TEXT "CXCL8 and FAKE10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7573 MV7582))
 (:VAR MV7573 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7582 :ISA BIO-ENTITY :NAME "FAKE10"))

___________________
843: "What transcription factors are shared by CXCL8 and CXCL10?"

                    SOURCE-START
e17   SHARE         1 "What transcription factors are shared by CXCL8 and CXCL10" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by CXCL8 and CXCL10?"
 (:VAR MV7595 :ISA SHARE :OBJECT MV7586 :PARTICIPANT MV7594 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV7586 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7594 :ISA COLLECTION :RAW-TEXT "CXCL8 and CXCL10" :TYPE PROTEIN
  :NUMBER 2 :ITEMS (MV7587 MV7588))
 (:VAR MV7587 :ISA PROTEIN :RAW-TEXT "CXCL8" :UID "UP:P10145" :NAME
  "IL8_HUMAN")
 (:VAR MV7588 :ISA PROTEIN :RAW-TEXT "CXCL10" :UID "UP:P02778" :NAME
  "CXL10_HUMAN"))

___________________
844: "What databases do you use?"

                    SOURCE-START
e8    BIO-USE       1 "What databases do you use" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What databases do you use?"
 (:VAR MV7602 :ISA BIO-USE :OBJECT MV7598 :AGENT MV7600 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV7598 :ISA DATABASE :HAS-DETERMINER "WHAT")
 (:VAR MV7600 :ISA INTERLOCUTOR :NAME "hearer"))

___________________
845: "What is the MSA?"

                    SOURCE-START
e7    BE            1 "What is the MSA" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the MSA?"
 (:VAR MV7604 :ISA BE :SUBJECT MV7603 :PREDICATE MV7606 :PRESENT "PRESENT")
 (:VAR MV7603 :ISA WHAT)
 (:VAR MV7606 :ISA PROTEIN :HAS-DETERMINER "THE" :RAW-TEXT "MSA" :UID
  "UP:Q9FIB6" :NAME "PS12A_ARATH"))

___________________
846: "What tissues can I ask about?"

                    SOURCE-START
e11   ASK           1 "What tissues can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What tissues can I ask about?"
 (:VAR MV7615 :ISA ASK :PATIENT MV7608 :MODAL MV7609 :AGENT MV7610 :PRESENT
  "PRESENT")
 (:VAR MV7608 :ISA TISSUE :HAS-DETERMINER "WHAT") (:VAR MV7609 :ISA CAN)
 (:VAR MV7610 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
847: "What cancers can I ask about?"

                    SOURCE-START
e11   ASK           1 "What cancers can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What cancers can I ask about?"
 (:VAR MV7624 :ISA ASK :PATIENT MV7617 :MODAL MV7618 :AGENT MV7619 :PRESENT
  "PRESENT")
 (:VAR MV7617 :ISA CANCER :HAS-DETERMINER "WHAT") (:VAR MV7618 :ISA CAN)
 (:VAR MV7619 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
848: "What mechanisms can I ask about?"

                    SOURCE-START
e11   ASK           1 "What mechanisms can I ask about" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What mechanisms can I ask about?"
 (:VAR MV7633 :ISA ASK :PATIENT MV7626 :MODAL MV7627 :AGENT MV7628 :PRESENT
  "PRESENT")
 (:VAR MV7626 :ISA BIO-MECHANISM :HAS-DETERMINER "WHAT") (:VAR MV7627 :ISA CAN)
 (:VAR MV7628 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
849: "What does STAT3 regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does STAT3 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 regulate?"
 (:VAR MV7637 :ISA REGULATE :OBJECT MV7635 :AGENT MV7634 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7635 :ISA WHAT)
 (:VAR MV7634 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
850: "Which of these are kinases?"

                    SOURCE-START
e9    BE            1 "Which of these are kinases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are kinases?"
 (:VAR MV7641 :ISA BE :SUBJECT MV7640 :PREDICATE MV7642 :PRESENT "PRESENT")
 (:VAR MV7640 :ISA THESE :QUANTIFIER MV7638 :WORD "these")
 (:VAR MV7638 :ISA WHICH) (:VAR MV7642 :ISA KINASE :RAW-TEXT "kinases"))

___________________
851: "What pathways is ERK1 in?"

                    SOURCE-START
e10   IN            1 "What pathways is ERK1 in" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways is ERK1 in?"
 (:VAR MV7649 :ISA WH-QUESTION :STATEMENT MV7648 :VAR NIL :WH WHAT)
 (:VAR MV7648 :ISA IN :WORD "in"))

___________________
852: "Which of these is AKT1 in?"

                    SOURCE-START
e13   IN            1 "Which of these is AKT1 in" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these is AKT1 in?"
 (:VAR MV7657 :ISA WH-QUESTION :STATEMENT MV7655 :WH WHICH)
 (:VAR MV7655 :ISA IN :WORD "in"))

___________________
853: "What pathways are ERK1 and AKT1 in?"

                    SOURCE-START
e14   IN            1 "What pathways are ERK1 and AKT1 in" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are ERK1 and AKT1 in?"
 (:VAR MV7666 :ISA WH-QUESTION :STATEMENT MV7664 :VAR NIL :WH WHAT)
 (:VAR MV7664 :ISA IN :WORD "in"))

___________________
854: "What microRNAs target STAT3?"

                    SOURCE-START
e8    TARGET        1 "What microRNAs target STAT3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What microRNAs target STAT3?"
 (:VAR MV7671 :ISA TARGET :AGENT MV7669 :OBJECT MV7667 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV7669 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "microRNAs")
 (:VAR MV7667 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
855: "Which of these target SMAD2?"

                    SOURCE-START
e11   TARGET        1 "Which of these target SMAD2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these target SMAD2?"
 (:VAR MV7677 :ISA TARGET :AGENT-OR-CAUSE MV7675 :OBJECT MV7672 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV7675 :ISA THESE :QUANTIFIER MV7673 :WORD "these")
 (:VAR MV7673 :ISA WHICH)
 (:VAR MV7672 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
856: "Do any of these regulate IL2?"

                    SOURCE-START
e14   REGULATE      1 "Do any of these regulate IL2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do any of these regulate IL2?"
 (:VAR MV7687 :ISA POLAR-QUESTION :STATEMENT MV7685)
 (:VAR MV7685 :ISA REGULATE :AGENT-OR-CAUSE MV7683 :OBJECT MV7679 :RAW-TEXT
  "regulate")
 (:VAR MV7683 :ISA THESE :QUANTIFIER MV7681 :WORD "these")
 (:VAR MV7681 :ISA ANY :WORD "any")
 (:VAR MV7679 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
857: "What regulates STAT3?"

                    SOURCE-START
e5    REGULATE      1 "What regulates STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates STAT3?"
 (:VAR MV7690 :ISA REGULATE :AGENT-OR-CAUSE MV7689 :OBJECT MV7688 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV7689 :ISA WHAT)
 (:VAR MV7688 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
858: "What pathways involve these?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve these" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve these?"
 (:VAR MV7693 :ISA INVOLVE :THEME MV7692 :THEME MV7694 :PRESENT "PRESENT")
 (:VAR MV7692 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV7694 :ISA THESE :WORD "these"))

___________________
859: "What are the targets of NG25?"

                    SOURCE-START
e14   OF            1 "What are the targets of NG25" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the targets of NG25?"
 (:VAR MV7703 :ISA WH-QUESTION :STATEMENT MV7702 :WH WHAT)
 (:VAR MV7702 :ISA PREPOSITIONAL-PHRASE :POBJ MV7695 :PREP "OF")
 (:VAR MV7695 :ISA BIO-ENTITY :NAME "NG25"))

___________________
860: "What is their most likely cellular location?"

                    SOURCE-START
e13   BE            1 "What is their most likely cellular location" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What is their most likely cellular location?"
 (:VAR MV7705 :ISA BE :SUBJECT MV7704 :PREDICATE MV7711 :PRESENT "PRESENT")
 (:VAR MV7704 :ISA WHAT)
 (:VAR MV7711 :ISA LOCATION-OF :THEME MV7706 :PREDICATION MV7709 :MODIFIER
  MV7710)
 (:VAR MV7706 :ISA PRONOUN/PLURAL :WORD "their")
 (:VAR MV7709 :ISA LIKELY :COMPARATIVE MV7707)
 (:VAR MV7707 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV7710 :ISA CELLULAR :NAME "cellular"))

___________________
861: "Is ERK1 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is ERK1 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is ERK1 a transcription factor?"
 (:VAR MV7716 :ISA POLAR-QUESTION :STATEMENT MV7714)
 (:VAR MV7714 :ISA BE :SUBJECT MV7712 :PREDICATE MV7713)
 (:VAR MV7712 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN")
 (:VAR MV7713 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor"))

___________________
862: "Is it a kinase?"

                    SOURCE-START
e9    BE            1 "Is it a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is it a kinase?" (:VAR MV7721 :ISA POLAR-QUESTION :STATEMENT MV7717)
 (:VAR MV7717 :ISA BE :SUBJECT MV7718 :PREDICATE MV7720)
 (:VAR MV7718 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV7720 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase"))

___________________
863: "What is PLX-4720?"

                    SOURCE-START
e5    BE            1 "What is PLX-4720" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What is PLX-4720?"
 (:VAR MV7724 :ISA BE :SUBJECT MV7723 :PREDICATE MV7722 :PRESENT "PRESENT")
 (:VAR MV7723 :ISA WHAT)
 (:VAR MV7722 :ISA MOLECULE :RAW-TEXT "PLX-4720" :NAME "plx-4720" :UID
  "PCID:24180719"))

___________________
864: "What does it target?"

                    SOURCE-START
e7    TARGET        1 "What does it target" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it target?"
 (:VAR MV7729 :ISA TARGET :OBJECT MV7725 :AGENT-OR-CAUSE MV7727 :PRESENT
  "PRESENT" :RAW-TEXT "target")
 (:VAR MV7725 :ISA WHAT) (:VAR MV7727 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
865: "What genes does STAT3 regulate?"

                    SOURCE-START
e8    REGULATE      1 "What genes does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does STAT3 regulate?"
 (:VAR MV7734 :ISA REGULATE :OBJECT MV7732 :AGENT MV7730 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7732 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV7730 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
866: "What pathways is it in?"

                    SOURCE-START
e10   IN            1 "What pathways is it in" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways is it in?"
 (:VAR MV7740 :ISA WH-QUESTION :STATEMENT MV7739 :VAR NIL :WH WHAT)
 (:VAR MV7739 :ISA IN :WORD "in"))

___________________
867: "What are the targets of PLX-4720?"

                    SOURCE-START
e14   BE            1 "What are the targets of PLX-4720" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the targets of PLX-4720?"
 (:VAR MV7743 :ISA BE :SUBJECT MV7742 :PREDICATE MV7745 :PRESENT "PRESENT")
 (:VAR MV7742 :ISA WHAT)
 (:VAR MV7745 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV7741 :HAS-DETERMINER "THE"
  :RAW-TEXT "targets")
 (:VAR MV7741 :ISA MOLECULE :RAW-TEXT "PLX-4720" :NAME "plx-4720" :UID
  "PCID:24180719"))

___________________
868: "Does it target BRAF?"

                    SOURCE-START
e10   TARGET        1 "Does it target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Does it target BRAF?" (:VAR MV7755 :ISA POLAR-QUESTION :STATEMENT MV7754)
 (:VAR MV7754 :ISA TARGET :AGENT-OR-CAUSE MV7750 :OBJECT MV7753 :RAW-TEXT
  "target")
 (:VAR MV7750 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV7753 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
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
 (:VAR MV7767 :ISA BIO-ACTIVATE :AGENT MV7765 :OBJECT MV7766 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7765 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV7766 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
871: "I want to find out how Jak1 activates IL2"

                    SOURCE-START
e23   WANT          1 "I want to find out how Jak1 activates IL2" 12
                    END-OF-SOURCE
("I want to find out how Jak1 activates IL2"
 (:VAR MV7773 :ISA WANT :AGENT MV7770 :THEME MV7783 :PRESENT "PRESENT")
 (:VAR MV7770 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7783 :ISA FIND-OUT :AGENT MV7770 :STATEMENT MV7780)
 (:VAR MV7770 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7780 :ISA WH-QUESTION :STATEMENT MV7779 :VAR NIL :WH HOW)
 (:VAR MV7779 :ISA BIO-ACTIVATE :AGENT MV7768 :OBJECT MV7769 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7768 :ISA PROTEIN :RAW-TEXT "Jak1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV7769 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
872: "I want to find out how ERBB3 activates JUN in SKBR3 cells."

                    SOURCE-START
e30   WANT          1 "I want to find out how ERBB3 activates JUN in SKBR3 cells" 15
                    PERIOD
                    END-OF-SOURCE
("I want to find out how ERBB3 activates JUN in SKBR3 cells."
 (:VAR MV7789 :ISA WANT :AGENT MV7786 :THEME MV7803 :PRESENT "PRESENT")
 (:VAR MV7786 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7803 :ISA FIND-OUT :AGENT MV7786 :STATEMENT MV7800)
 (:VAR MV7786 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7800 :ISA WH-QUESTION :STATEMENT MV7795 :VAR NIL :WH HOW)
 (:VAR MV7795 :ISA BIO-ACTIVATE :AGENT MV7784 :OBJECT MV7796 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV7784 :ISA PROTEIN :RAW-TEXT "ERBB3" :UID "UP:P21860" :NAME
  "ERBB3_HUMAN")
 (:VAR MV7796 :ISA PROTEIN :CELL-TYPE MV7798 :RAW-TEXT "JUN" :UID "UP:P05412"
  :NAME "JUN_HUMAN")
 (:VAR MV7798 :ISA CELL-TYPE :CELL-LINE MV7785)
 (:VAR MV7785 :ISA CELL-LINE :NAME "SKBR3" :UID "EFO:0001236"))

___________________
873: "Let's build a model."

                    SOURCE-START
e8    EXPLICIT-SUGGESTION 1 "Let's build a model" 7
                    PERIOD
                    END-OF-SOURCE
("Let's build a model."
 (:VAR MV7808 :ISA EXPLICIT-SUGGESTION :SUGGESTION MV7805 :MARKER
  LET-AS-DIRECTIVE)
 (:VAR MV7805 :ISA BUILD :ARTIFACT MV7807 :PRESENT "PRESENT")
 (:VAR MV7807 :ISA MODEL :HAS-DETERMINER "A"))

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
 (:VAR MV7818 :ISA REGULATE :AGENT MV7817 :OBJECT MV7815 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7817 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7815 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
876: "What positively regulates IL2?"

                    SOURCE-START
e6    UPREGULATE    1 "What positively regulates IL2" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What positively regulates IL2?"
 (:VAR MV7819 :ISA UPREGULATE :AGENT-OR-CAUSE MV7821 :OBJECT MV7820 :PRESENT
  "PRESENT" :RAW-TEXT "positively regulates")
 (:VAR MV7821 :ISA WHAT)
 (:VAR MV7820 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
877: "What can have the effect of activation on STAT3? "

                    SOURCE-START
e21   HAVE          1 "What can have the effect of activation on STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What can have the effect of activation on STAT3?"
 (:VAR MV7825 :ISA HAVE :POSSESSOR MV7823 :THING-POSSESSED MV7827 :MODAL
  MV7824)
 (:VAR MV7823 :ISA WHAT)
 (:VAR MV7827 :ISA EFFECT :OBJECT MV7822 :AFFECTED-PROCESS MV7830
  :HAS-DETERMINER "THE" :RAW-TEXT "effect")
 (:VAR MV7822 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7830 :ISA BIO-ACTIVATE :RAW-TEXT "activation") (:VAR MV7824 :ISA CAN))

___________________
878: "Are there any drugs for IL10?"

                    SOURCE-START
e15   THERE-EXISTS  1 "Are there any drugs for IL10" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for IL10?"
 (:VAR MV7843 :ISA POLAR-QUESTION :STATEMENT MV7841)
 (:VAR MV7841 :ISA THERE-EXISTS :VALUE MV7839 :PREDICATE MV7836)
 (:VAR MV7839 :ISA DRUG :TARGET MV7834 :QUANTIFIER MV7838 :RAW-TEXT "drugs")
 (:VAR MV7834 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7838 :ISA ANY :WORD "any") (:VAR MV7836 :ISA SYNTACTIC-THERE))

___________________
879: "Which tissues express STAT3?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Which tissues express STAT3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which tissues express STAT3?"
 (:VAR MV7847 :ISA GENE-TRANSCRIPT-EXPRESS :AGENT MV7846 :OBJECT MV7844
  :PRESENT "PRESENT" :RAW-TEXT "express")
 (:VAR MV7846 :ISA TISSUE :HAS-DETERMINER "WHICH")
 (:VAR MV7844 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
880: "How does MEK1 regulate ERK1?"

                    SOURCE-START
e9    REGULATE      1 "How does MEK1 regulate ERK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does MEK1 regulate ERK1?"
 (:VAR MV7852 :ISA REGULATE :MANNER MV7850 :AGENT MV7848 :OBJECT MV7849
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV7850 :ISA HOW)
 (:VAR MV7848 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7849 :ISA PROTEIN :RAW-TEXT "ERK1" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
881: "What are transcription factors that bind the IL15 and IL2 genes?"

                    SOURCE-START
e23   BE            1 "What are transcription factors that bind the IL15 and IL2 genes" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What are transcription factors that bind the IL15 and IL2 genes?"
 (:VAR MV7857 :ISA BE :SUBJECT MV7856 :PREDICATE MV7853 :PRESENT "PRESENT")
 (:VAR MV7856 :ISA WHAT)
 (:VAR MV7853 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7859 :RAW-TEXT
  "transcription factors")
 (:VAR MV7859 :ISA BINDING :BINDER MV7853 :THAT-REL T :DIRECT-BINDEE MV7862
  :PRESENT "PRESENT" :RAW-TEXT "bind")
 (:VAR MV7862 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV7863 :RAW-TEXT
  "genes")
 (:VAR MV7863 :ISA COLLECTION :RAW-TEXT "IL15 and IL2" :TYPE PROTEIN :NUMBER 2
  :ITEMS (MV7854 MV7855))
 (:VAR MV7854 :ISA PROTEIN :RAW-TEXT "IL15" :UID "UP:P40933" :NAME
  "IL15_HUMAN")
 (:VAR MV7855 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

___________________
882: "What kinases regulate the IL15 and IL2?"

                    SOURCE-START
e14   REGULATE      1 "What kinases regulate the IL15 and IL2" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases regulate the IL15 and IL2?"
 (:VAR MV7868 :ISA REGULATE :AGENT MV7867 :OBJECT MV7871 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV7867 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV7871 :ISA COLLECTION :HAS-DETERMINER "THE" :RAW-TEXT "IL15 and IL2"
  :TYPE PROTEIN :NUMBER 2 :ITEMS (MV7864 MV7865))
 (:VAR MV7864 :ISA PROTEIN :RAW-TEXT "IL15" :UID "UP:P40933" :NAME
  "IL15_HUMAN")
 (:VAR MV7865 :ISA PROTEIN :RAW-TEXT "IL2" :UID "UP:P60568" :NAME "IL2_HUMAN"))

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
 (:VAR MV7896 :ISA BE :SUBJECT MV7895 :PREDICATE MV7894 :PRESENT "PRESENT")
 (:VAR MV7895 :ISA WHAT)
 (:VAR MV7894 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN"))

___________________
886: "Is MAP3K7 a protein?"

                    SOURCE-START
e9    BE            1 "Is MAP3K7 a protein" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAP3K7 a protein?" (:VAR MV7901 :ISA POLAR-QUESTION :STATEMENT MV7898)
 (:VAR MV7898 :ISA BE :SUBJECT MV7897 :PREDICATE MV7900)
 (:VAR MV7897 :ISA PROTEIN :RAW-TEXT "MAP3K7" :UID "UP:O43318" :NAME
  "M3K7_HUMAN")
 (:VAR MV7900 :ISA PROTEIN :HAS-DETERMINER "A" :RAW-TEXT "protein"))

___________________
887: "What does SMAD2 transcribe?"

                    SOURCE-START
e6    TRANSCRIBE    1 "What does SMAD2 transcribe" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does SMAD2 transcribe?"
 (:VAR MV7905 :ISA TRANSCRIBE :OBJECT MV7903 :AGENT MV7902 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV7903 :ISA WHAT)
 (:VAR MV7902 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
888: "Are there drugs for IL10?"

                    SOURCE-START
e13   THERE-EXISTS  1 "Are there drugs for IL10" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there drugs for IL10?"
 (:VAR MV7914 :ISA POLAR-QUESTION :STATEMENT MV7912)
 (:VAR MV7912 :ISA THERE-EXISTS :VALUE MV7910 :PREDICATE MV7908)
 (:VAR MV7910 :ISA DRUG :TARGET MV7906 :RAW-TEXT "drugs")
 (:VAR MV7906 :ISA PROTEIN :RAW-TEXT "IL10" :UID "UP:P22301" :NAME
  "IL10_HUMAN")
 (:VAR MV7908 :ISA SYNTACTIC-THERE))

___________________
889: "What relations in the literature match tofacitinib?"

                    SOURCE-START
e15   IN            1 "What relations in the literature match tofacitinib" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What relations in the literature match tofacitinib?"
 (:VAR MV7924 :ISA WH-QUESTION :STATEMENT MV7923 :VAR NIL :WH WHAT)
 (:VAR MV7923 :ISA PREPOSITIONAL-PHRASE :POBJ MV7922 :PREP "IN")
 (:VAR MV7922 :ISA DRUG :HAS-DETERMINER "THE" :MODIFIER MV7919 :MODIFIER MV7921
  :RAW-TEXT "tofacitinib" :NAME "tasocitinib" :UID "NCIT:C95800")
 (:VAR MV7919 :ISA LITERATURE) (:VAR MV7921 :ISA MATCH-ENDURANT))

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
