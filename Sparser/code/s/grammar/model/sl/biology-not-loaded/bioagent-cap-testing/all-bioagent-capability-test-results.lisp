

___________________
0: "What genes does miR-562 target?"

                    SOURCE-START
e10   TARGET        1 "What genes does miR-562 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-562 target?"
 (:VAR MV6015 :ISA TARGET :OBJECT MV6011 :AGENT MV6009 :RAW-TEXT "target")
 (:VAR MV6011 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6009 :ISA MICRO-RNA :RAW-TEXT "miR-562" :NAME "microRNA 562" :UID
  "MI0003569"))

___________________
1: "What genes does mir-128 regulate?"

                    SOURCE-START
e6    GENE          1 "What genes " 3
e4    DO            3 "does " 4
e1    BIO-ENTITY    4 "mir-128 " 7
e7    REGULATE      7 "regulate" 8
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
2: "what transcription factors does miR-200c regulate?"

                    SOURCE-START
e10   REGULATE      1 "what transcription factors does miR-200c regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-200c regulate?"
 (:VAR MV6027 :ISA REGULATE :OBJECT MV6022 :AGENT MV6023 :RAW-TEXT "regulate")
 (:VAR MV6022 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV6023 :ISA MICRO-RNA :RAW-TEXT "miR-200c" :NAME "MIR200C" :UID
  "NCIT:C82157"))

___________________
3: "Does miR-2000-5p target stat3"

                    SOURCE-START
e10   TARGET        1 "Does miR-2000-5p target stat3" 11
                    END-OF-SOURCE
("Does miR-2000-5p target stat3"
 (:VAR MV6034 :ISA POLAR-QUESTION :STATEMENT MV6033)
 (:VAR MV6033 :ISA TARGET :AGENT MV6028 :OBJECT MV6029 :RAW-TEXT "target")
 (:VAR MV6028 :ISA MICRO-RNA :RAW-TEXT "miR-2000-5p" :NAME "microRNA 2000-5p"
  :UID "MIMAmiR-2000-5p")
 (:VAR MV6029 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
4: "Does miR-20b-5p target STAT3?"

                    SOURCE-START
e10   TARGET        1 "Does miR-20b-5p target STAT3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-20b-5p target STAT3?"
 (:VAR MV6041 :ISA POLAR-QUESTION :STATEMENT MV6040)
 (:VAR MV6040 :ISA TARGET :AGENT MV6035 :OBJECT MV6036 :RAW-TEXT "target")
 (:VAR MV6035 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413")
 (:VAR MV6036 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
5: "Does miR-222-3p target STAT3?"

                    SOURCE-START
e10   TARGET        1 "Does miR-222-3p target STAT3" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does miR-222-3p target STAT3?"
 (:VAR MV6048 :ISA POLAR-QUESTION :STATEMENT MV6047)
 (:VAR MV6047 :ISA TARGET :AGENT MV6042 :OBJECT MV6043 :RAW-TEXT "target")
 (:VAR MV6042 :ISA MICRO-RNA :RAW-TEXT "miR-222-3p" :NAME "microRNA 222-3p"
  :UID "MIMAT0000279")
 (:VAR MV6043 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
6: "Tell me about stat3's involvement in apoptosis"

                    SOURCE-START
e17   TELL          1 "Tell me about stat3's involvement in apoptosis" 11
                    END-OF-SOURCE
("Tell me about stat3's involvement in apoptosis"
 (:VAR MV6060 :ISA TELL :STATEMENT MV6055 :STATEMENT MV6051 :PRESENT "PRESENT")
 (:VAR MV6055 :ISA INVOLVE :THEME MV6057 :PARTICIPANT MV6054)
 (:VAR MV6057 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV6054 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6051 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
7: "What are the genes that have strong evidence of being regulated by mir-122-5p?"

                    SOURCE-START
e2    WHAT          1 "What " 2
e3    BE            2 "are " 3
e27   GENE          3 "the genes that have strong evidence " 9
e24   OF            9 "of being regulated by mir-122-5p" 19
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
8: "What does miR-20b-5p target"

                    SOURCE-START
e8    TARGET        1 "What does miR-20b-5p target" 11
                    END-OF-SOURCE
("What does miR-20b-5p target"
 (:VAR MV6082 :ISA TARGET :OBJECT MV6078 :AGENT MV6077 :RAW-TEXT "target")
 (:VAR MV6078 :ISA WHAT)
 (:VAR MV6077 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
9: "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"

                    SOURCE-START
e23   COPULAR-PREDICATION 1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p" 28
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
 (:VAR MV6096 :ISA COPULAR-PREDICATION :ITEM MV6087 :VALUE MV6091 :PREDICATE
  MV6088)
 (:VAR MV6087 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6091 :ISA REGULATE :COMPARATIVE MV6089 :AGENT MV6094 :ADVERB MV6090
  :RAW-TEXT "regulated")
 (:VAR MV6089 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6094 :ISA COLLECTION :RAW-TEXT "miR-335-5p, miR-155-5p and miR-145-5p"
  :TYPE MICRO-RNA :NUMBER 3 :ITEMS NIL)
 (:VAR MV6090 :ISA FREQUENTLY) (:VAR MV6088 :ISA BE))

___________________
10: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"

                    SOURCE-START
e26   COPULAR-PREDICATION 1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" 36
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
 (:VAR MV6111 :ISA COPULAR-PREDICATION :ITEM MV6102 :VALUE MV6106 :PREDICATE
  MV6103)
 (:VAR MV6102 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6106 :ISA REGULATE :COMPARATIVE MV6104 :AGENT MV6109 :ADVERB MV6105
  :RAW-TEXT "regulated")
 (:VAR MV6104 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6109 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p" :TYPE MICRO-RNA :NUMBER 4
  :ITEMS NIL)
 (:VAR MV6105 :ISA FREQUENTLY) (:VAR MV6103 :ISA BE))

___________________
11: "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"

                    SOURCE-START
e27   COPULAR-PREDICATION 1 "What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" 37
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
 (:VAR MV6126 :ISA COPULAR-PREDICATION :ITEM MV6117 :VALUE MV6121 :PREDICATE
  MV6118)
 (:VAR MV6117 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6121 :ISA REGULATE :COMPARATIVE MV6119 :AGENT MV6124 :ADVERB MV6120
  :RAW-TEXT "regulated")
 (:VAR MV6119 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV6124 :ISA COLLECTION :RAW-TEXT
  "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p" :TYPE MICRO-RNA :NUMBER
  4 :ITEMS NIL)
 (:VAR MV6120 :ISA FREQUENTLY) (:VAR MV6118 :ISA BE))

___________________
12: "What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"

                    SOURCE-START
e16   REGULATE      1 "What genes are regulated by miR-20b-5p and MIR-29B-1-5P" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
 (:VAR MV6136 :ISA REGULATE :OBJECT MV6130 :AGENT MV6135 :RAW-TEXT "regulated")
 (:VAR MV6130 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6135 :ISA COLLECTION :RAW-TEXT "miR-20b-5p and MIR-29B-1-5P" :TYPE
  MICRO-RNA :NUMBER 2 :ITEMS NIL))

___________________
13: "What genes does miR-20b-5p target?"

                    SOURCE-START
e10   TARGET        1 "What genes does miR-20b-5p target" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does miR-20b-5p target?"
 (:VAR MV6144 :ISA TARGET :OBJECT MV6140 :AGENT MV6138 :RAW-TEXT "target")
 (:VAR MV6140 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6138 :ISA MICRO-RNA :RAW-TEXT "miR-20b-5p" :NAME "microRNA 20b-5pm"
  :UID "MIMAT0001413"))

___________________
14: "What is stat3's involvement in apoptosis?"

                    SOURCE-START
e13   BE            1 "What is stat3's involvement in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's involvement in apoptosis?"
 (:VAR MV6153 :ISA BE :PREDICATE MV6149 :SUBJECT MV6146)
 (:VAR MV6149 :ISA INVOLVE :THEME MV6151 :PARTICIPANT MV6148)
 (:VAR MV6151 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV6148 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6146 :ISA WHAT))

___________________
15: "What is stat3's role in apoptosis?"

                    SOURCE-START
e13   BE            1 "What is stat3's role in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's role in apoptosis?"
 (:VAR MV6162 :ISA BE :PREDICATE MV6158 :SUBJECT MV6155)
 (:VAR MV6158 :ISA ROLE :PROCESS MV6160 :PARTICIPANT MV6157)
 (:VAR MV6160 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV6157 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6155 :ISA WHAT))

___________________
16: "What is stat3's role in apoptotic regulation?"

                    SOURCE-START
e16   BE            1 "What is stat3's role in apoptotic regulation" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is stat3's role in apoptotic regulation?"
 (:VAR MV6173 :ISA BE :PREDICATE MV6167 :SUBJECT MV6164)
 (:VAR MV6167 :ISA ROLE :PROCESS MV6171 :PARTICIPANT MV6166)
 (:VAR MV6171 :ISA REGULATE :AGENT MV6169 :RAW-TEXT "regulation")
 (:VAR MV6169 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV6166 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6164 :ISA WHAT))

___________________
17: "What is the evidence that miR-148a-3p targets DNMT1?"

                    SOURCE-START
e18   BE            1 "What is the evidence that miR-148a-3p targets DNMT1" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that miR-148a-3p targets DNMT1?"
 (:VAR MV6184 :ISA BE :PREDICATE MV6183 :SUBJECT MV6176)
 (:VAR MV6183 :ISA EVIDENCE :STATEMENT MV6182 :HAS-DETERMINER "THE")
 (:VAR MV6182 :ISA TARGET :AGENT MV6174 :OBJECT MV6175 :PRESENT "PRESENT"
  :RAW-TEXT "targets")
 (:VAR MV6174 :ISA MICRO-RNA :RAW-TEXT "miR-148a-3p" :NAME "microRNA 148a-3p"
  :UID "MIMAT0000243")
 (:VAR MV6175 :ISA PROTEIN :RAW-TEXT "DNMT1" :UID "UP:P26358" :NAME
  "DNMT1_HUMAN")
 (:VAR MV6176 :ISA WHAT))

___________________
18: "what transcription factors does miR-124-3p regulate?"

                    SOURCE-START
e10   REGULATE      1 "what transcription factors does miR-124-3p regulate" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-124-3p regulate?"
 (:VAR MV6190 :ISA REGULATE :OBJECT MV6185 :AGENT MV6186 :RAW-TEXT "regulate")
 (:VAR MV6185 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV6186 :ISA MICRO-RNA :RAW-TEXT "miR-124-3p" :NAME "microRNA 124-3p"
  :UID "MIMAT0000422"))

___________________
19: "what transcription factors does miR-200c-3p regulate?"

                    SOURCE-START
e10   REGULATE      1 "what transcription factors does miR-200c-3p regulate" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors does miR-200c-3p regulate?"
 (:VAR MV6196 :ISA REGULATE :OBJECT MV6191 :AGENT MV6192 :RAW-TEXT "regulate")
 (:VAR MV6191 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV6192 :ISA MICRO-RNA :RAW-TEXT "miR-200c-3p" :NAME "microRNA 200c-3p"
  :UID "MIMAT0000617"))

___________________
20: "Does phosphorylation at S221 activate MAP2K2?"

                    SOURCE-START
e17   BIO-ACTIVATE  1 "Does phosphorylation at S221 activate MAP2K2" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylation at S221 activate MAP2K2?"
 (:VAR MV6209 :ISA POLAR-QUESTION :STATEMENT MV6207)
 (:VAR MV6207 :ISA BIO-ACTIVATE :AGENT MV6199 :OBJECT MV6197 :RAW-TEXT
  "activate")
 (:VAR MV6199 :ISA PHOSPHORYLATE :SITE MV6206 :RAW-TEXT "phosphorylation")
 (:VAR MV6206 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S221" :POSITION MV6204
  :AMINO-ACID MV6202)
 (:VAR MV6204 :ISA NUMBER :VALUE 221)
 (:VAR MV6202 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV6197 :ISA PROTEIN :RAW-TEXT "MAP2K2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN"))

___________________
21: "Does phosphorylation at S222 activate MAP2K1?"

                    SOURCE-START
e17   BIO-ACTIVATE  1 "Does phosphorylation at S222 activate MAP2K1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylation at S222 activate MAP2K1?"
 (:VAR MV6222 :ISA POLAR-QUESTION :STATEMENT MV6220)
 (:VAR MV6220 :ISA BIO-ACTIVATE :AGENT MV6212 :OBJECT MV6210 :RAW-TEXT
  "activate")
 (:VAR MV6212 :ISA PHOSPHORYLATE :SITE MV6219 :RAW-TEXT "phosphorylation")
 (:VAR MV6219 :ISA RESIDUE-ON-PROTEIN :RAW-TEXT "S222" :POSITION MV6217
  :AMINO-ACID MV6215)
 (:VAR MV6217 :ISA NUMBER :VALUE 222)
 (:VAR MV6215 :ISA AMINO-ACID :NAME "serine" :LETTER "S")
 (:VAR MV6210 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
22: "Simulate the MAP2K1-MAPK1 complex"

                    SOURCE-START
e12   SIMULATE      1 "Simulate the MAP2K1-MAPK1 complex" 11
                    END-OF-SOURCE
("Simulate the MAP2K1-MAPK1 complex"
 (:VAR MV6225 :ISA SIMULATE :OBJECT MV6229 :PRESENT "PRESENT" :RAW-TEXT
  "Simulate")
 (:VAR MV6229 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV6224 :COMPONENT MV6223)
 (:VAR MV6224 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6223 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
23: "What are the members of ERK?"

                    SOURCE-START
e11   BE            1 "What are the members of ERK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of ERK?"
 (:VAR MV6237 :ISA BE :PREDICATE MV6233 :SUBJECT MV6230)
 (:VAR MV6233 :ISA MEMBER :SET MV6235 :HAS-DETERMINER "THE")
 (:VAR MV6235 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MK15_HUMAN") (:UID "UP:Q8TD08"))
   (PROTEIN (:NAME "MK06_HUMAN") (:UID "UP:Q16659"))
   (PROTEIN (:NAME "MK07_HUMAN") (:UID "UP:Q13164"))
   (PROTEIN (:NAME "MK12_HUMAN") (:UID "UP:P53778"))
   (PROTEIN (:NAME "MK04_HUMAN") (:UID "UP:P31152"))
   (PROTEIN (:NAME "MK01_HUMAN") (:UID "UP:P28482"))
   (PROTEIN (:NAME "MK03_HUMAN") (:UID "UP:P27361")))
  :UID "NCIT:C26360")
 (:VAR MV6230 :ISA WHAT))

___________________
24: "What are the members of MEK?"

                    SOURCE-START
e11   BE            1 "What are the members of MEK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of MEK?"
 (:VAR MV6245 :ISA BE :PREDICATE MV6241 :SUBJECT MV6238)
 (:VAR MV6241 :ISA MEMBER :SET MV6243 :HAS-DETERMINER "THE")
 (:VAR MV6243 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6238 :ISA WHAT))

___________________
25: "What are the members of RAF?"

                    SOURCE-START
e11   BE            1 "What are the members of RAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of RAF?"
 (:VAR MV6253 :ISA BE :PREDICATE MV6249 :SUBJECT MV6246)
 (:VAR MV6249 :ISA MEMBER :SET MV6251 :HAS-DETERMINER "THE")
 (:VAR MV6251 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV6246 :ISA WHAT))

___________________
26: "What are the members of the RAF family?"

                    SOURCE-START
e17   BE            1 "What are the members of the RAF family" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of the RAF family?"
 (:VAR MV6265 :ISA BE :PREDICATE MV6257 :SUBJECT MV6254)
 (:VAR MV6257 :ISA MEMBER :SET MV6263 :HAS-DETERMINER "THE")
 (:VAR MV6263 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAF" :NAME
  "Raf" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114")
 (:VAR MV6254 :ISA WHAT))

___________________
27: "What are the members of the RAS family?"

                    SOURCE-START
e15   BE            1 "What are the members of the RAS family" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of the RAS family?"
 (:VAR MV6274 :ISA BE :PREDICATE MV6270 :SUBJECT MV6267)
 (:VAR MV6270 :ISA MEMBER :SET MV6266 :HAS-DETERMINER "THE")
 (:VAR MV6266 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "RAS family"
  :NAME "Ras" :COUNT 3 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663")
 (:VAR MV6267 :ISA WHAT))

___________________
28: "What is another name for BRAF?"

                    SOURCE-START
e0    WHAT          1 "What " 2
e1    BE            2 "is " 3
e10   NAME          3 "another name " 5
e9    FOR           5 "for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
29: "What is another name for MAP2K1?"

                    SOURCE-START
e2    WHAT          1 "What " 2
e3    BE            2 "is " 3
e11   NAME          3 "another name " 5
e10   FOR           5 "for MAP2K1" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
30: "How does STAT3 affect c-fos"

                    SOURCE-START
e10   AFFECT        1 "How does STAT3 affect c-fos" 9
                    END-OF-SOURCE
("How does STAT3 affect c-fos"
 (:VAR MV6298 :ISA AFFECT :MANNER MV6295 :AGENT MV6293 :OBJECT MV6294 :RAW-TEXT
  "affect")
 (:VAR MV6295 :ISA HOW)
 (:VAR MV6293 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6294 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
31: "List some genes regulated by elk1"

                    SOURCE-START
e11   LIST          1 "List some genes regulated by elk1" 8
                    END-OF-SOURCE
("List some genes regulated by elk1"
 (:VAR MV6300 :ISA LIST :THEME MV6302 :PRESENT "PRESENT")
 (:VAR MV6302 :ISA GENE :PREDICATION MV6303 :QUANTIFIER MV6301 :RAW-TEXT
  "genes")
 (:VAR MV6303 :ISA REGULATE :OBJECT MV6303 :AGENT MV6299 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6299 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6301 :ISA SOME :WORD "some"))

___________________
32: "List some of the genes regulated by elk1"

                    SOURCE-START
e17   LIST          1 "List some of the genes regulated by elk1" 10
                    END-OF-SOURCE
("List some of the genes regulated by elk1"
 (:VAR MV6307 :ISA LIST :THEME MV6311 :PRESENT "PRESENT")
 (:VAR MV6311 :ISA GENE :PREDICATION MV6312 :QUANTIFIER MV6308 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6312 :ISA REGULATE :OBJECT MV6312 :AGENT MV6306 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6306 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV6308 :ISA SOME :WORD "some"))

___________________
33: "List the genes regulated by elk1"

                    SOURCE-START
e12   LIST          1 "List the genes regulated by elk1" 8
                    END-OF-SOURCE
("List the genes regulated by elk1"
 (:VAR MV6318 :ISA LIST :THEME MV6320 :PRESENT "PRESENT")
 (:VAR MV6320 :ISA GENE :PREDICATION MV6321 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV6321 :ISA REGULATE :OBJECT MV6321 :AGENT MV6317 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6317 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
34: "Phosphorylated MAPK1 is active."

                    SOURCE-START
e8    COPULAR-PREDICATION 1 "Phosphorylated MAPK1 is active" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAPK1 is active."
 (:VAR MV6328 :ISA COPULAR-PREDICATION :ITEM MV6324 :VALUE MV6327 :PREDICATE
  MV6326)
 (:VAR MV6324 :ISA PROTEIN :PREDICATION MV6325 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6325 :ISA PHOSPHORYLATE :SUBSTRATE MV6325 :RAW-TEXT "Phosphorylated")
 (:VAR MV6327 :ISA ACTIVE) (:VAR MV6326 :ISA BE :PRESENT "PRESENT"))

___________________
35: "What are the common upstream regulators of AKT1 and BRAF?"

                    SOURCE-START
e19   BE            1 "What are the common upstream regulators of AKT1 and BRAF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstream regulators of AKT1 and BRAF?"
 (:VAR MV6341 :ISA BE :PREDICATE MV6335 :SUBJECT MV6330)
 (:VAR MV6335 :ISA REGULATOR :THEME MV6339 :HAS-DETERMINER "THE" :PREDICATION
  MV6333 :PREDICATION MV6334 :RAW-TEXT "regulators")
 (:VAR MV6339 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL)
 (:VAR MV6333 :ISA COMMON) (:VAR MV6334 :ISA UPSTREAM) (:VAR MV6330 :ISA WHAT))

___________________
36: "What are the common upstreams of AKT and BRAF?"

                    SOURCE-START
e16   BE            1 "What are the common upstreams of AKT and BRAF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT and BRAF?"
 (:VAR MV6353 :ISA BE :PREDICATE MV6346 :SUBJECT MV6342)
 (:VAR MV6346 :ISA UPSTREAM :PARTICIPANT-OR-RELATIVE-TO MV6351 :HAS-DETERMINER
  "THE" :PREDICATION MV6345)
 (:VAR MV6351 :ISA COLLECTION :RAW-TEXT "AKT and BRAF" :TYPE PROTEIN-FAMILY
  :NUMBER 2 :ITEMS NIL)
 (:VAR MV6345 :ISA COMMON) (:VAR MV6342 :ISA WHAT))

___________________
37: "What are the common upstreams of AKT1 and BRAF?"

                    SOURCE-START
e17   BE            1 "What are the common upstreams of AKT1 and BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and BRAF?"
 (:VAR MV6365 :ISA BE :PREDICATE MV6359 :SUBJECT MV6355)
 (:VAR MV6359 :ISA UPSTREAM :PARTICIPANT-OR-RELATIVE-TO MV6363 :HAS-DETERMINER
  "THE" :PREDICATION MV6358)
 (:VAR MV6363 :ISA COLLECTION :RAW-TEXT "AKT1 and BRAF" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL)
 (:VAR MV6358 :ISA COMMON) (:VAR MV6355 :ISA WHAT))

___________________
38: "What are the genes that smad2 regulates?"

                    SOURCE-START
e15   BE            1 "What are the genes that smad2 regulates" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes that smad2 regulates?"
 (:VAR MV6373 :ISA BE :PREDICATE MV6370 :SUBJECT MV6367)
 (:VAR MV6370 :ISA GENE :PREDICATION MV6372 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV6372 :ISA REGULATE :OBJECT MV6372 :THAT-REL T :AGENT MV6366 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV6366 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN")
 (:VAR MV6367 :ISA WHAT))

___________________
39: "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e26   BE            1 "What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV6387 :ISA BE :PREDICATE MV6380 :SUBJECT MV6377)
 (:VAR MV6380 :ISA MICRO-RNA :PREDICATION MV6382 :HAS-DETERMINER "THE"
  :RAW-TEXT "miRNAs")
 (:VAR MV6382 :ISA REGULATE :AGENT MV6382 :THAT-REL T :OBJECT MV6386 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV6386 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS NIL)
 (:VAR MV6377 :ISA WHAT))

___________________
40: "What are the miRNAs that regulate EGFR, SRF, and STAT3"

                    SOURCE-START
e21   BE            1 "What are the miRNAs that regulate EGFR, SRF, and STAT3" 14
                    END-OF-SOURCE
("What are the miRNAs that regulate EGFR, SRF, and STAT3"
 (:VAR MV6399 :ISA BE :PREDICATE MV6392 :SUBJECT MV6389)
 (:VAR MV6392 :ISA MICRO-RNA :PREDICATION MV6394 :HAS-DETERMINER "THE"
  :RAW-TEXT "miRNAs")
 (:VAR MV6394 :ISA REGULATE :AGENT MV6394 :THAT-REL T :OBJECT MV6398 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV6398 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, and STAT3" :TYPE PROTEIN
  :NUMBER 3 :ITEMS NIL)
 (:VAR MV6389 :ISA WHAT))

___________________
41: "What are the regulators of SRF?"

                    SOURCE-START
e11   BE            1 "What are the regulators of SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SRF?"
 (:VAR MV6407 :ISA BE :PREDICATE MV6403 :SUBJECT MV6400)
 (:VAR MV6403 :ISA REGULATOR :THEME MV6405 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV6405 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6400 :ISA WHAT))

___________________
42: "What does STAT3 regulate in the liver?"

                    SOURCE-START
e15   REGULATE      1 "What does STAT3 regulate in the liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What does STAT3 regulate in the liver?"
 (:VAR MV6415 :ISA REGULATE :OBJECT MV6409 :AGENT MV6408 :ORGAN MV6414
  :RAW-TEXT "regulate")
 (:VAR MV6409 :ISA WHAT)
 (:VAR MV6408 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6414 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
43: "What does it regulate in the liver?"

                    SOURCE-START
e15   REGULATE      1 "What does it regulate in the liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What does it regulate in the liver?"
 (:VAR MV6424 :ISA REGULATE :OBJECT MV6417 :AGENT-OR-CAUSE MV6419 :ORGAN MV6423
  :RAW-TEXT "regulate")
 (:VAR MV6417 :ISA WHAT) (:VAR MV6419 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV6423 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
44: "What genes are regulated by SMAD2?"

                    SOURCE-START
e12   REGULATE      1 "What genes are regulated by SMAD2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SMAD2?"
 (:VAR MV6432 :ISA REGULATE :OBJECT MV6428 :AGENT MV6426 :RAW-TEXT "regulated")
 (:VAR MV6428 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6426 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
45: "What genes are regulated by SMDA2?"

                    SOURCE-START
e12   REGULATE      1 "What genes are regulated " 5
e10   BY            5 "by SMDA2" 8
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
46: "What genes are regulated by SRF?"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by SRF?"
 (:VAR MV6449 :ISA REGULATE :OBJECT MV6444 :AGENT MV6448 :RAW-TEXT "regulated")
 (:VAR MV6444 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6448 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
47: "What genes does STAT3 regulate?"

                    SOURCE-START
e9    REGULATE      1 "What genes does STAT3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does STAT3 regulate?"
 (:VAR MV6456 :ISA REGULATE :OBJECT MV6453 :AGENT MV6451 :RAW-TEXT "regulate")
 (:VAR MV6453 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6451 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
48: "Which of these are regulated by SMAD2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by SMAD2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by SMAD2?"
 (:VAR MV6464 :ISA WH-QUESTION/SELECT :STATEMENT MV6465 :WH WHICH)
 (:VAR MV6465 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV6460 :AGENT MV6457
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV6460 :ISA THESE :WORD "these")
 (:VAR MV6457 :ISA PROTEIN :RAW-TEXT "SMAD2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
49: "Which of these are regulated by SMDA2?"

                    SOURCE-START
e10   WHICH         1 "Which of " 3
e13   REGULATE      3 "these are regulated " 6
e12   BY            6 "by SMDA2" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
50: "Which pathways use these?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use these?"
 (:VAR MV6480 :ISA BIO-USE :AGENT MV6478 :OBJECT MV6481 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV6478 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV6481 :ISA THESE :WORD "these"))

___________________
51: "Where does STAT3 regulate the expression of c-fos?"

                    SOURCE-START
e18   REGULATE      1 "Where does STAT3 regulate the expression of c-fos" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Where does STAT3 regulate the expression of c-fos?"
 (:VAR MV6490 :ISA REGULATE :LOCATION MV6484 :AGENT MV6482 :AFFECTED-PROCESS
  MV6488 :RAW-TEXT "regulate")
 (:VAR MV6484 :ISA WHERE)
 (:VAR MV6482 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6488 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV6483 :HAS-DETERMINER "THE"
  :RAW-TEXT "expression")
 (:VAR MV6483 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
52: "can you tell me all the transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e32   TELL          1 "can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    END-OF-SOURCE
("can you tell me all the transcription factors that are shared by elk1 and srf"
 (:VAR MV6510 :ISA POLAR-QUESTION :STATEMENT MV6509)
 (:VAR MV6509 :ISA TELL :AGENT MV6495 :STATEMENT MV6492 :BENEFICIARY MV6497
  :MODAL MV6494)
 (:VAR MV6495 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV6492 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV6507 :QUANTIFIER MV6498
  :HAS-DETERMINER "THE" :RAW-TEXT "transcription factors")
 (:VAR MV6507 :ISA SHARE :OBJECT MV6507 :THAT-REL T :PARTICIPANT MV6506
  :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV6506 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL)
 (:VAR MV6498 :ISA ALL :WORD "all")
 (:VAR MV6497 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV6494 :ISA CAN))

___________________
53: "can you tell me which transcription factors are shared by elk1 and srf"

                    SOURCE-START
e25   TELL          1 "can you tell me which transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("can you tell me which transcription factors are shared by elk1 and srf"
 (:VAR MV6528 :ISA POLAR-QUESTION :STATEMENT MV6527)
 (:VAR MV6527 :ISA TELL :AGENT MV6514 :STATEMENT MV6524 :STATEMENT MV6516
  :MODAL MV6513)
 (:VAR MV6514 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV6524 :ISA SHARE :OBJECT MV6511 :PARTICIPANT MV6523 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV6511 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV6523 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL)
 (:VAR MV6516 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV6513 :ISA CAN))

___________________
54: "what are the regulators of SRF?"

                    SOURCE-START
e11   BE            1 "what are the regulators of SRF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what are the regulators of SRF?"
 (:VAR MV6536 :ISA BE :PREDICATE MV6532 :SUBJECT MV6529)
 (:VAR MV6532 :ISA REGULATOR :THEME MV6534 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV6534 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV6529 :ISA WHAT))

___________________
55: "what does stat regulate"

                    SOURCE-START
e6    REGULATE      1 "what does stat regulate" 5
                    END-OF-SOURCE
("what does stat regulate"
 (:VAR MV6541 :ISA REGULATE :OBJECT MV6537 :AGENT MV6539 :RAW-TEXT "regulate")
 (:VAR MV6537 :ISA WHAT)
 (:VAR MV6539 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
56: "what is erbb?"

                    SOURCE-START
e3    BE            1 "what is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("what is erbb?" (:VAR MV6545 :ISA BE :PREDICATE MV6544 :SUBJECT MV6542)
 (:VAR MV6544 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV6542 :ISA WHAT))

___________________
57: "Is STAT3 involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "Is STAT3 involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptosis?"
 (:VAR MV6553 :ISA POLAR-QUESTION :STATEMENT MV6551)
 (:VAR MV6551 :ISA INVOLVE :PARTICIPANT MV6546 :THEME MV6550)
 (:VAR MV6546 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6550 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
58: "Is STAT3 involved in apoptotic regulation?"

                    SOURCE-START
e14   INVOLVE       1 "Is STAT3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in apoptotic regulation?"
 (:VAR MV6563 :ISA POLAR-QUESTION :STATEMENT MV6561)
 (:VAR MV6561 :ISA INVOLVE :PARTICIPANT MV6554 :THEME MV6560)
 (:VAR MV6554 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6560 :ISA REGULATE :AGENT MV6558 :RAW-TEXT "regulation")
 (:VAR MV6558 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
59: "Is STAT3 involved in regulating apoptosis?"

                    SOURCE-START
e13   INVOLVE       1 "Is STAT3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 involved in regulating apoptosis?"
 (:VAR MV6572 :ISA POLAR-QUESTION :STATEMENT MV6570)
 (:VAR MV6570 :ISA INVOLVE :PARTICIPANT MV6564 :THEME MV6568)
 (:VAR MV6564 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6568 :ISA REGULATE :AFFECTED-PROCESS MV6569 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV6569 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
60: "What apoptotic genes are regulated by STAT3"

                    SOURCE-START
e15   REGULATE      1 "What apoptotic genes are regulated by STAT3" 9
                    END-OF-SOURCE
("What apoptotic genes are regulated by STAT3"
 (:VAR MV6581 :ISA REGULATE :OBJECT MV6577 :AGENT MV6573 :RAW-TEXT "regulated")
 (:VAR MV6577 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV6576 :RAW-TEXT
  "genes")
 (:VAR MV6576 :ISA APOPTOTIC)
 (:VAR MV6573 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
61: "List the apoptotic genes"

                    SOURCE-START
e8    LIST          1 "List the apoptotic genes" 5
                    END-OF-SOURCE
("List the apoptotic genes"
 (:VAR MV6583 :ISA LIST :THEME MV6587 :PRESENT "PRESENT")
 (:VAR MV6587 :ISA GENE :HAS-DETERMINER "THE" :PREDICATION MV6585 :RAW-TEXT
  "genes")
 (:VAR MV6585 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
62: "What genes regulated by STAT3 are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes regulated by STAT3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by STAT3 are involved in apoptosis?"
 (:VAR MV6597 :ISA INVOLVE :PARTICIPANT MV6590 :THEME MV6596 :PRESENT
  "PRESENT")
 (:VAR MV6590 :ISA GENE :PREDICATION MV6591 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV6591 :ISA REGULATE :OBJECT MV6591 :AGENT MV6588 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6588 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6596 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
63: "List genes regulated by STAT3"

                    SOURCE-START
e9    LIST          1 "List genes regulated by STAT3" 7
                    END-OF-SOURCE
("List genes regulated by STAT3"
 (:VAR MV6601 :ISA LIST :THEME MV6602 :PRESENT "PRESENT")
 (:VAR MV6602 :ISA GENE :PREDICATION MV6603 :RAW-TEXT "genes")
 (:VAR MV6603 :ISA REGULATE :OBJECT MV6603 :AGENT MV6600 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6600 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
64: "What genes are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What genes are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in apoptosis?"
 (:VAR MV6612 :ISA INVOLVE :PARTICIPANT MV6607 :THEME MV6611)
 (:VAR MV6607 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV6611 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
65: "What genes that STAT3 regulates are involved in apoptosis?"

                    SOURCE-START
e20   INVOLVE       1 "What genes that STAT3 regulates are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes that STAT3 regulates are involved in apoptosis?"
 (:VAR MV6623 :ISA INVOLVE :PARTICIPANT MV6616 :THEME MV6622 :PRESENT
  "PRESENT")
 (:VAR MV6616 :ISA GENE :PREDICATION MV6618 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV6618 :ISA REGULATE :OBJECT MV6618 :THAT-REL T :AGENT MV6614 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV6614 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6622 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
66: "List the genes regulated by STAT3"

                    SOURCE-START
e12   LIST          1 "List the genes regulated by STAT3" 8
                    END-OF-SOURCE
("List the genes regulated by STAT3"
 (:VAR MV6626 :ISA LIST :THEME MV6628 :PRESENT "PRESENT")
 (:VAR MV6628 :ISA GENE :PREDICATION MV6629 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV6629 :ISA REGULATE :OBJECT MV6629 :AGENT MV6625 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV6625 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
67: "List the STAT3 regulated genes"

                    SOURCE-START
e11   LIST          1 "List the STAT3 regulated genes" 7
                    END-OF-SOURCE
("List the STAT3 regulated genes"
 (:VAR MV6633 :ISA LIST :THEME MV6636 :PRESENT "PRESENT")
 (:VAR MV6636 :ISA GENE :HAS-DETERMINER "THE" :PREDICATION MV6635 :RAW-TEXT
  "genes")
 (:VAR MV6635 :ISA REGULATE :OBJECT MV6635 :AGENT MV6632 :RAW-TEXT "regulated")
 (:VAR MV6632 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
68: "What kinases are regulated by STAT3?"

                    SOURCE-START
e12   REGULATE      1 "What kinases are regulated by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are regulated by STAT3?"
 (:VAR MV6643 :ISA REGULATE :OBJECT MV6639 :AGENT MV6637 :RAW-TEXT "regulated")
 (:VAR MV6639 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV6637 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
69: "What kinases are involved in apoptosis?"

                    SOURCE-START
e11   INVOLVE       1 "What kinases are involved in apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What kinases are involved in apoptosis?"
 (:VAR MV6651 :ISA INVOLVE :PARTICIPANT MV6646 :THEME MV6650)
 (:VAR MV6646 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV6650 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
70: "What STAT3 regulated genes are involved in aptosis"

                    SOURCE-START
e16   INVOLVE       1 "What STAT3 regulated genes are involved " 8
e15   IN            8 "in aptosis" 10
                    END-OF-SOURCE


___________________
71: "Let me know if any of the genes stat3 regulates are involved in apoptosis"

                    SOURCE-START
e31   LET           1 "Let me know if any of the genes stat3 regulates are involved in apoptosis" 16
                    END-OF-SOURCE
("Let me know if any of the genes stat3 regulates are involved in apoptosis"
 (:VAR MV6664 :ISA LET :COMPLEMENT MV6681 :PRESENT "PRESENT")
 (:VAR MV6681 :ISA KNOW :AGENT MV6665 :STATEMENT MV6680 :PRESENT "PRESENT")
 (:VAR MV6665 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6680 :ISA WH-QUESTION :STATEMENT MV6677 :WH IF)
 (:VAR MV6677 :ISA INVOLVE :PARTICIPANT MV6671 :THEME MV6676 :PRESENT
  "PRESENT")
 (:VAR MV6671 :ISA GENE :QUANTIFIER MV6668 :PREDICATION MV6672 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6668 :ISA ANY :WORD "any")
 (:VAR MV6672 :ISA REGULATE :AGENT MV6663 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV6663 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6676 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
72: "Let me know whether any of the genes stat3 regulates are involved in apoptosis"

                    SOURCE-START
e32   LET           1 "Let me know whether any of the genes stat3 regulates are involved in apoptosis" 16
                    END-OF-SOURCE
("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
 (:VAR MV6683 :ISA LET :COMPLEMENT MV6701 :PRESENT "PRESENT")
 (:VAR MV6701 :ISA KNOW :AGENT MV6684 :STATEMENT MV6700 :PRESENT "PRESENT")
 (:VAR MV6684 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV6700 :ISA WH-QUESTION :STATEMENT MV6697 :WH WHETHER)
 (:VAR MV6697 :ISA INVOLVE :PARTICIPANT MV6691 :THEME MV6696 :PRESENT
  "PRESENT")
 (:VAR MV6691 :ISA GENE :QUANTIFIER MV6688 :PREDICATION MV6692 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV6688 :ISA ANY :WORD "any")
 (:VAR MV6692 :ISA REGULATE :AGENT MV6682 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV6682 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6696 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
73: "Look up which genes targeted by stat3 are involved in apoptosis"

                    SOURCE-START
e2    LOOK          1 "Look " 2
e24   UP            2 "up which " 4
e23   INVOLVE       4 "genes targeted by stat3 are involved in apoptosis" 13
                    END-OF-SOURCE


___________________
74: "Tell me how stat3 is involved in apoptosis"

                    SOURCE-START
e16   TELL          1 "Tell me how stat3 is involved in apoptosis" 10
                    END-OF-SOURCE
("Tell me how stat3 is involved in apoptosis"
 (:VAR MV6730 :ISA TELL :STATEMENT MV6729 :BENEFICIARY MV6721 :PRESENT
  "PRESENT")
 (:VAR MV6729 :ISA WH-QUESTION :STATEMENT MV6727 :VAR NIL :WH HOW)
 (:VAR MV6727 :ISA INVOLVE :PARTICIPANT MV6719 :THEME MV6726 :PRESENT
  "PRESENT")
 (:VAR MV6719 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6726 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV6721 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
75: "Tell me if stat3 is involved in apoptosis"

                    SOURCE-START
e16   TELL          1 "Tell me if stat3 is involved in apoptosis" 10
                    END-OF-SOURCE
("Tell me if stat3 is involved in apoptosis"
 (:VAR MV6742 :ISA TELL :STATEMENT MV6741 :BENEFICIARY MV6733 :PRESENT
  "PRESENT")
 (:VAR MV6741 :ISA WH-QUESTION :STATEMENT MV6739 :WH IF)
 (:VAR MV6739 :ISA INVOLVE :PARTICIPANT MV6731 :THEME MV6738 :PRESENT
  "PRESENT")
 (:VAR MV6731 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6738 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV6733 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
76: "Tell me whether stat3 is involved in apoptosis"

                    SOURCE-START
e17   TELL          1 "Tell me whether stat3 is involved in apoptosis" 10
                    END-OF-SOURCE
("Tell me whether stat3 is involved in apoptosis"
 (:VAR MV6756 :ISA TELL :STATEMENT MV6754 :STATEMENT MV6745 :PRESENT "PRESENT")
 (:VAR MV6754 :ISA WH-QUESTION :STATEMENT MV6752 :WH WHETHER)
 (:VAR MV6752 :ISA INVOLVE :PARTICIPANT MV6743 :THEME MV6751 :PRESENT
  "PRESENT")
 (:VAR MV6743 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6751 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV6745 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
77: "What are STAT3 regulated genes that are involved in apoptosis. "

                    SOURCE-START
e22   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    PERIOD
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis."
 (:VAR MV6769 :ISA BE :PREDICATE MV6761 :SUBJECT MV6758)
 (:VAR MV6761 :ISA GENE :PREDICATION MV6767 :PREDICATION MV6760 :RAW-TEXT
  "genes")
 (:VAR MV6767 :ISA INVOLVE :PARTICIPANT MV6767 :THAT-REL T :THEME MV6766
  :PRESENT "PRESENT")
 (:VAR MV6766 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV6760 :ISA REGULATE :OBJECT MV6760 :AGENT MV6757 :RAW-TEXT "regulated")
 (:VAR MV6757 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6758 :ISA WHAT))

___________________
78: "What are STAT3 regulated genes that are involved in apoptosis?"

                    SOURCE-START
e22   BE            1 "What are STAT3 regulated genes that are involved in apoptosis" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are STAT3 regulated genes that are involved in apoptosis?"
 (:VAR MV6782 :ISA BE :PREDICATE MV6774 :SUBJECT MV6771)
 (:VAR MV6774 :ISA GENE :PREDICATION MV6780 :PREDICATION MV6773 :RAW-TEXT
  "genes")
 (:VAR MV6780 :ISA INVOLVE :PARTICIPANT MV6780 :THAT-REL T :THEME MV6779
  :PRESENT "PRESENT")
 (:VAR MV6779 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV6773 :ISA REGULATE :OBJECT MV6773 :AGENT MV6770 :RAW-TEXT "regulated")
 (:VAR MV6770 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6771 :ISA WHAT))

___________________
79: "What genes downstream of stat3 are involved in apoptosis?"

                    SOURCE-START
e16   INVOLVE       1 "What genes downstream of stat3 are involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes downstream of stat3 are involved in apoptosis?"
 (:VAR MV6793 :ISA INVOLVE :PARTICIPANT MV6792 :THEME MV6791)
 (:VAR MV6792 :ISA WH-QUESTION/SELECT :SET MV6783 :WH WHAT)
 (:VAR MV6783 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6791 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
80: "What is the involvement of stat3 in apoptotic regulation?"

                    SOURCE-START
e20   BE            1 "What is the involvement of stat3 in apoptotic regulation" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the involvement of stat3 in apoptotic regulation?"
 (:VAR MV6807 :ISA BE :PREDICATE MV6799 :SUBJECT MV6796)
 (:VAR MV6799 :ISA INVOLVE :THEME MV6804 :PARTICIPANT MV6795 :HAS-DETERMINER
  "THE")
 (:VAR MV6804 :ISA REGULATE :AGENT MV6802 :RAW-TEXT "regulation")
 (:VAR MV6802 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV6795 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV6796 :ISA WHAT))

___________________
81: "What pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve calcium?"
 (:VAR MV6810 :ISA INVOLVE :PARTICIPANT MV6809 :THEME MV6811 :PRESENT
  "PRESENT")
 (:VAR MV6809 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV6811 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
82: "What processes involve srf"

                    SOURCE-START
e5    PROCESS       1 "What processes " 3
e6    INVOLVE       3 "involve srf" 5
                    END-OF-SOURCE


___________________
83: "Which stat3 regulated genes are involved in apoptosis?"

                    SOURCE-START
e17   INVOLVE       1 "Which stat3 regulated genes are involved in apoptosis" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes are involved in apoptosis?"
 (:VAR MV6825 :ISA INVOLVE :PARTICIPANT MV6820 :THEME MV6824 :PRESENT
  "PRESENT")
 (:VAR MV6820 :ISA GENE :EXPRESSES MV6817 :PREDICATION MV6819 :RAW-TEXT
  "genes")
 (:VAR MV6817 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "stat3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV6819 :ISA REGULATE :OBJECT MV6819 :RAW-TEXT "regulated")
 (:VAR MV6824 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
84: "Which stat3 regulated genes in the liver are involved in apoptosis?"

                    SOURCE-START
e25   INVOLVE       1 "Which stat3 regulated genes in the liver are involved in apoptosis" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Which stat3 regulated genes in the liver are involved in apoptosis?"
 (:VAR MV6838 :ISA INVOLVE :PARTICIPANT MV6830 :THEME MV6837 :PRESENT
  "PRESENT")
 (:VAR MV6830 :ISA GENE :ORGAN MV6833 :EXPRESSES MV6827 :PREDICATION MV6829
  :RAW-TEXT "genes")
 (:VAR MV6833 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV6827 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "stat3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV6829 :ISA REGULATE :OBJECT MV6829 :RAW-TEXT "regulated")
 (:VAR MV6837 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
85: "Which stat3-regulated genes are involved in apoptosis?"

                    SOURCE-START
e14   GENE          1 "Which stat3-regulated genes " 7
e6    BE            7 "are " 8
e17   INVOLVE       8 "involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
86: "Mek activates MAPK3."

                    SOURCE-START
e5    BIO-ACTIVATE  1 "Mek activates MAPK3" 5
                    PERIOD
                    END-OF-SOURCE
("Mek activates MAPK3."
 (:VAR MV6853 :ISA BIO-ACTIVATE :AGENT MV6852 :OBJECT MV6851 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6852 :ISA PROTEIN-FAMILY :RAW-TEXT "Mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV6851 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
87: "HRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "HRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("HRAS activates RAF."
 (:VAR MV6855 :ISA BIO-ACTIVATE :AGENT MV6854 :OBJECT MV6856 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6854 :ISA PROTEIN :RAW-TEXT "HRAS" :UID "UP:P01112" :NAME
  "RASH_HUMAN")
 (:VAR MV6856 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114"))

___________________
88: "NRAS activates RAF."

                    SOURCE-START
e4    BIO-ACTIVATE  1 "NRAS activates RAF" 4
                    PERIOD
                    END-OF-SOURCE
("NRAS activates RAF."
 (:VAR MV6858 :ISA BIO-ACTIVATE :AGENT MV6857 :OBJECT MV6859 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV6857 :ISA PROTEIN :RAW-TEXT "NRAS" :UID "UP:P01111" :NAME
  "RASN_HUMAN")
 (:VAR MV6859 :ISA PROTEIN-FAMILY :RAW-TEXT "RAF" :NAME "Raf" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RAF1_HUMAN") (:UID "UP:P04049"))
   (PROTEIN (:NAME "BRAF_HUMAN") (:UID "UP:P15056"))
   (PROTEIN (:NAME "ARAF_HUMAN") (:UID "UP:P10398")))
  :UID "FA:03114"))

___________________
89: "revert that"

                    SOURCE-START
e0    REVERT        1 "revert " 2
e2    THAT          2 "that" 3
                    END-OF-SOURCE


___________________
90: "EGFR binds the growth factor ligand EGF."

                    SOURCE-START
e13   BINDING       1 "EGFR binds the growth factor ligand EGF" 8
                    PERIOD
                    END-OF-SOURCE
("EGFR binds the growth factor ligand EGF."
 (:VAR MV6865 :ISA BINDING :BINDER MV6864 :DIRECT-BINDEE MV6868 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV6864 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV6868 :ISA PROTEIN :HAS-DETERMINER "THE" :MODIFIER MV6863 :MODIFIER
  MV6867 :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV6863 :ISA GROWTH-FACTOR :RAW-TEXT "growth factor")
 (:VAR MV6867 :ISA LIGAND :RAW-TEXT "ligand"))

___________________
91: "The EGFR-EGF complex binds another EGFR-EGF complex."

                    SOURCE-START
e19   BINDING       1 "The EGFR-EGF complex binds another EGFR-EGF complex" 12
                    PERIOD
                    END-OF-SOURCE
("The EGFR-EGF complex binds another EGFR-EGF complex."
 (:VAR MV6873 :ISA BINDING :BINDER MV6880 :DIRECT-BINDEE MV6881 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV6880 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGF"
  :COMPONENT MV6871 :COMPONENT MV6870)
 (:VAR MV6871 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV6870 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV6881 :ISA BIO-COMPLEX :QUANTIFIER MV6874 :RAW-TEXT "EGFR-EGF"
  :COMPONENT MV6876 :COMPONENT MV6875)
 (:VAR MV6874 :ISA ANOTHER :WORD "another")
 (:VAR MV6876 :ISA PROTEIN :RAW-TEXT "EGF" :UID "UP:P01133" :NAME "EGF_HUMAN")
 (:VAR MV6875 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
92: "The EGFR-EGFR complex binds GRB2."

                    SOURCE-START
e13   BINDING       1 "The EGFR-EGFR complex binds GRB2" 9
                    PERIOD
                    END-OF-SOURCE
("The EGFR-EGFR complex binds GRB2."
 (:VAR MV6887 :ISA BINDING :BINDER MV6889 :DIRECT-BINDEE MV6882 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV6889 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "EGFR-EGFR"
  :COMPONENT MV6884 :COMPONENT MV6884)
 (:VAR MV6884 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV6884 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV6882 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN"))

___________________
93: "undo that"

                    SOURCE-START
e0    UNDO          1 "undo " 2
e2    THAT          2 "that" 3
                    END-OF-SOURCE


___________________
94: "EGFR-bound GRB2 binds SOS1."

                    SOURCE-START
e12   BINDING       1 "EGFR-bound GRB2 binds SOS1" 9
                    PERIOD
                    END-OF-SOURCE
("EGFR-bound GRB2 binds SOS1."
 (:VAR MV6896 :ISA BINDING :BINDER MV6892 :DIRECT-BINDEE MV6893 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV6892 :ISA PROTEIN :PREDICATION MV6895 :RAW-TEXT "GRB2" :UID
  "UP:P62993" :NAME "GRB2_HUMAN")
 (:VAR MV6895 :ISA BINDING :DIRECT-BINDEE MV6895 :BINDER MV6894 :RAW-TEXT
  "bound")
 (:VAR MV6894 :ISA PROTEIN :RAW-TEXT "EGFR" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV6893 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME
  "SOS1_HUMAN"))

___________________
95: "GRB2-bound SOS1 binds NRAS that is not bound to BRAF."

                    SOURCE-START
e27   BINDING       1 "GRB2-bound SOS1 binds NRAS that is not bound to BRAF" 15
                    PERIOD
                    END-OF-SOURCE
("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
 (:VAR MV6900 :ISA BINDING :BINDER MV6898 :DIRECT-BINDEE MV6901 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV6898 :ISA PROTEIN :PREDICATION MV6899 :RAW-TEXT "SOS1" :UID
  "UP:Q07889" :NAME "SOS1_HUMAN")
 (:VAR MV6899 :ISA BINDING :DIRECT-BINDEE MV6899 :BINDER MV6897 :RAW-TEXT
  "bound")
 (:VAR MV6897 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN")
 (:VAR MV6901 :ISA PROTEIN :PREDICATION MV6908 :RAW-TEXT "NRAS" :UID
  "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV6908 :ISA BINDING :DIRECT-BINDEE MV6908 :THAT-REL T :BINDEE MV6907
  :PRESENT "PRESENT" :NEGATION MV6904 :RAW-TEXT "bound")
 (:VAR MV6907 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV6904 :ISA NOT :WORD "not"))

___________________
96: "SOS1-bound NRAS binds GTP."

                    SOURCE-START
e11   BINDING       1 "SOS1-bound NRAS binds GTP" 8
                    PERIOD
                    END-OF-SOURCE
("SOS1-bound NRAS binds GTP."
 (:VAR MV6913 :ISA BINDING :BINDER MV6912 :DIRECT-BINDEE MV6914 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV6912 :ISA PROTEIN :PREDICATION MV6911 :RAW-TEXT "NRAS" :UID
  "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV6911 :ISA BINDING :DIRECT-BINDEE MV6911 :BINDER MV6910 :RAW-TEXT
  "bound")
 (:VAR MV6910 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME
  "SOS1_HUMAN")
 (:VAR MV6914 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP"))

___________________
97: "GTP-bound NRAS that is not bound to SOS1 binds BRAF."

                    SOURCE-START
e26   BINDING       1 "GTP-bound NRAS that is not bound to SOS1 binds BRAF" 14
                    PERIOD
                    END-OF-SOURCE
("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
 (:VAR MV6924 :ISA BINDING :BINDER MV6918 :DIRECT-BINDEE MV6925 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV6918 :ISA PROTEIN :PREDICATION MV6926 :PREDICATION MV6917 :RAW-TEXT
  "NRAS" :UID "UP:P01111" :NAME "RASN_HUMAN")
 (:VAR MV6926 :ISA BINDING :DIRECT-BINDEE MV6926 :THAT-REL T :BINDEE MV6915
  :PRESENT "PRESENT" :NEGATION MV6921 :RAW-TEXT "bound")
 (:VAR MV6915 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME
  "SOS1_HUMAN")
 (:VAR MV6921 :ISA NOT :WORD "not")
 (:VAR MV6917 :ISA BINDING :DIRECT-BINDEE MV6917 :BINDER MV6916 :RAW-TEXT
  "bound")
 (:VAR MV6916 :ISA NUCLEOTIDE :RAW-TEXT "GTP" :UID "CHEBI:15996" :NAME "GTP")
 (:VAR MV6925 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
98: "Undo"

                    SOURCE-START
e0    UNDO          1 "Undo" 2
                    END-OF-SOURCE
("Undo" (:VAR MV6928 :ISA UNDO :PRESENT "PRESENT" :RAW-TEXT "Undo"))

___________________
99: "Vemurafenib binds BRAF."

                    SOURCE-START
e4    BINDING       1 "Vemurafenib binds BRAF" 4
                    PERIOD
                    END-OF-SOURCE
("Vemurafenib binds BRAF."
 (:VAR MV6930 :ISA BINDING :BINDER MV6929 :DIRECT-BINDEE MV6931 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV6929 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV6931 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
100: "Phosphorylated MAP2K1 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated MAP2K1 is activated" 8
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated MAP2K1 is activated."
 (:VAR MV6936 :ISA BIO-ACTIVATE :OBJECT MV6932 :PRESENT "PRESENT" :RAW-TEXT
  "activated")
 (:VAR MV6932 :ISA PROTEIN :PREDICATION MV6933 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6933 :ISA PHOSPHORYLATE :SUBSTRATE MV6933 :RAW-TEXT "Phosphorylated"))

___________________
101: "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2" 18
                    PERIOD
                    END-OF-SOURCE
("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
 (:VAR MV6940 :ISA DEPHOSPHORYLATE :AGENT MV6937 :SUBSTRATE MV6938 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV6937 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME
  "PP2AA_HUMAN")
 (:VAR MV6938 :ISA PROTEIN :PREDICATION MV6946 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6946 :ISA BINDING :DIRECT-BINDEE MV6946 :THAT-REL T :BINDEE MV6939
  :PRESENT "PRESENT" :NEGATION MV6943 :RAW-TEXT "bound")
 (:VAR MV6939 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV6943 :ISA NOT :WORD "not"))

___________________
102: "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."

                    SOURCE-START
e24   PHOSPHORYLATE 1 "Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2" 19
                    PERIOD
                    END-OF-SOURCE
("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
 (:VAR MV6957 :ISA PHOSPHORYLATE :AGENT MV6948 :SUBSTRATE MV6950 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6948 :ISA PROTEIN :PREDICATION MV6958 :PREDICATION MV6951 :RAW-TEXT
  "MAP2K1" :UID "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV6958 :ISA BINDING :DIRECT-BINDEE MV6958 :THAT-REL T :BINDEE MV6949
  :PRESENT "PRESENT" :NEGATION MV6954 :RAW-TEXT "bound")
 (:VAR MV6949 :ISA PROTEIN :RAW-TEXT "PP2A-alpha" :UID "UP:P67775" :NAME
  "PP2AA_HUMAN")
 (:VAR MV6954 :ISA NOT :WORD "not") (:VAR MV6951 :ISA ACTIVE)
 (:VAR MV6950 :ISA PROTEIN :RAW-TEXT "ERK2" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
103: "Phosphorylated ERK2 is activated."

                    SOURCE-START
e8    BIO-ACTIVATE  1 "Phosphorylated ERK2 is activated" 6
                    PERIOD
                    END-OF-SOURCE
("Phosphorylated ERK2 is activated."
 (:VAR MV6964 :ISA BIO-ACTIVATE :OBJECT MV6960 :PRESENT "PRESENT" :RAW-TEXT
  "activated")
 (:VAR MV6960 :ISA PROTEIN :PREDICATION MV6961 :RAW-TEXT "ERK2" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6961 :ISA PHOSPHORYLATE :SUBSTRATE MV6961 :RAW-TEXT "Phosphorylated"))

___________________
104: "DUSP6 dephosphorylates ERK2 that is not bound to SOS1."

                    SOURCE-START
e22   DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates ERK2 that is not bound to SOS1" 13
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
 (:VAR MV6968 :ISA DEPHOSPHORYLATE :AGENT MV6965 :SUBSTRATE MV6966 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV6965 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV6966 :ISA PROTEIN :PREDICATION MV6974 :RAW-TEXT "ERK2" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV6974 :ISA BINDING :DIRECT-BINDEE MV6974 :THAT-REL T :BINDEE MV6967
  :PRESENT "PRESENT" :NEGATION MV6971 :RAW-TEXT "bound")
 (:VAR MV6967 :ISA PROTEIN :RAW-TEXT "SOS1" :UID "UP:Q07889" :NAME
  "SOS1_HUMAN")
 (:VAR MV6971 :ISA NOT :WORD "not"))

___________________
105: "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."

                    SOURCE-START
e28   PHOSPHORYLATE 1 "BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1" 16
                    PERIOD
                    END-OF-SOURCE
("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
 (:VAR MV6989 :ISA PHOSPHORYLATE :AGENT MV6977 :SUBSTRATE MV6976 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV6977 :ISA PROTEIN :PREDICATION MV6992 :MUTATION MV6991 :RAW-TEXT
  "BRAF" :UID "UP:P15056" :NAME "BRAF_HUMAN")
 (:VAR MV6992 :ISA BINDING :DIRECT-BINDEE MV6992 :THAT-REL T :BINDEE MV6988
  :PRESENT "PRESENT" :NEGATION MV6985 :RAW-TEXT "bound")
 (:VAR MV6988 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib")
 (:VAR MV6985 :ISA NOT :WORD "not")
 (:VAR MV6991 :ISA POINT-MUTATED-PROTEIN :POSITION MV6980 :NEW-AMINO-ACID
  MV6982 :ORIGINAL-AMINO-ACID MV6978)
 (:VAR MV6980 :ISA NUMBER :VALUE 600)
 (:VAR MV6982 :ISA AMINO-ACID :NAME "glutamic acid" :LETTER "E")
 (:VAR MV6978 :ISA AMINO-ACID :NAME "valine" :LETTER "V")
 (:VAR MV6976 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
106: "Let's highlight the downstream of AKT1."

                    SOURCE-START
e1    PROPOSAL-MARKER 1 "Let's " 4
e5    HIGHLIGHT-ENDURANT  4 "highlight " 5
e7    THE           5 "the " 6
e12   DOWNSTREAM    6 "downstream of AKT1" 10
                    PERIOD
                    END-OF-SOURCE


___________________
107: "Let's move phosphorylated MAPK1 to the bottom."

                    SOURCE-START
e1    PROPOSAL-MARKER 1 "Let's " 4
e4    MOVE-SOMETHING-SOMEWHERE  4 "move " 5
e11   PROTEIN       5 "phosphorylated MAPK1 " 8
e14   TO            8 "to the bottom" 11
                    PERIOD
                    END-OF-SOURCE


___________________
108: "Let's put AKT1, MAPK1 into mitochondrion."

                    SOURCE-START
e1    PROPOSAL-MARKER 1 "Let's " 4
e11   PROTEIN       4 "put AKT1" 7
e8                  "COMMA"
e5    PROTEIN       8 "MAPK1 " 10
e13   INTO          10 "into mitochondrion" 12
                    PERIOD
                    END-OF-SOURCE


___________________
109: "Let's show AKT1 on the top."

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's show AKT1 " 7
e12   ON            7 "on the top" 10
                    PERIOD
                    END-OF-SOURCE


___________________
110: "Does ELK1 decrease FOS in the model?"

                    SOURCE-START
e2    DO            1 "Does " 2
e15   DECREASE      2 "ELK1 decrease FOS " 6
e13   IN            6 "in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
111: "Does ELK1 decrease the amount of FOS in the model?"

                    SOURCE-START
e2    DO            1 "Does " 2
e23   DECREASE      2 "ELK1 decrease the amount of FOS " 9
e19   IN            9 "in the model" 12
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
112: "Does FOS decrease ELK1 in the model?"

                    SOURCE-START
e2    DO            1 "Does " 2
e15   DECREASE      2 "FOS decrease ELK1 " 6
e13   IN            6 "in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
113: "Does FOS vanish if we increase the amount of ELK1 10 fold?"

                    SOURCE-START
e30   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS vanish if we increase the amount of ELK1 10 fold?"
 (:VAR MV7079 :ISA POLAR-QUESTION :STATEMENT MV7078)
 (:VAR MV7078 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7077 :EVENT MV7075)
 (:VAR MV7077 :ISA WH-QUESTION :STATEMENT MV7068 :WH IF)
 (:VAR MV7068 :ISA INCREASE :AGENT-OR-CAUSE MV7066 :ADVERB MV7074
  :AFFECTED-PROCESS-OR-OBJECT MV7070 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV7066 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV7074 :ISA N-FOLD :NUMBER MV7073) (:VAR MV7073 :ISA NUMBER :VALUE 10)
 (:VAR MV7070 :ISA BIO-AMOUNT :MEASURED-ITEM MV7061 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7061 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7075 :ISA VANISH :AGENT MV7063 :RAW-TEXT "vanish")
 (:VAR MV7063 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
114: "Does FOS vanish if we increase the amount of ELK1 by 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Does FOS vanish if we increase the amount of ELK1 by 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
 (:VAR MV7100 :ISA POLAR-QUESTION :STATEMENT MV7099)
 (:VAR MV7099 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7098 :EVENT MV7095)
 (:VAR MV7098 :ISA WH-QUESTION :STATEMENT MV7087 :WH IF)
 (:VAR MV7087 :ISA INCREASE :AGENT-OR-CAUSE MV7085 :MULTIPLIER MV7094
  :AFFECTED-PROCESS-OR-OBJECT MV7089 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV7085 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV7094 :ISA N-FOLD :NUMBER MV7093) (:VAR MV7093 :ISA NUMBER :VALUE 10)
 (:VAR MV7089 :ISA BIO-AMOUNT :MEASURED-ITEM MV7080 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7080 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7095 :ISA VANISH :AGENT MV7082 :RAW-TEXT "vanish")
 (:VAR MV7082 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
115: "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"

                    SOURCE-START
e29   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
 (:VAR MV7118 :ISA POLAR-QUESTION :STATEMENT MV7117)
 (:VAR MV7117 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7116 :EVENT MV7114)
 (:VAR MV7116 :ISA WH-QUESTION :STATEMENT MV7109 :WH IF)
 (:VAR MV7109 :ISA INCREASE :AGENT-OR-CAUSE MV7107 :MULTIPLIER MV7113 :OBJECT
  MV7102 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV7107 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV7113 :ISA N-FOLD :NUMBER MV7112) (:VAR MV7112 :ISA NUMBER :VALUE 10)
 (:VAR MV7102 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV7114 :ISA VANISH :AGENT MV7101 :RAW-TEXT "vanish")
 (:VAR MV7101 :ISA PROTEIN :PREDICATION MV7104 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7104 :ISA PHOSPHORYLATE :SUBSTRATE MV7104 :RAW-TEXT "phosphorylated"))

___________________
116: "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e37   EVENT-RELATION  1 "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV7140 :ISA POLAR-QUESTION :STATEMENT MV7139)
 (:VAR MV7139 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7138 :EVENT MV7135)
 (:VAR MV7138 :ISA WH-QUESTION :STATEMENT MV7127 :WH IF)
 (:VAR MV7127 :ISA INCREASE :AGENT-OR-CAUSE MV7125 :MULTIPLIER MV7134
  :AFFECTED-PROCESS-OR-OBJECT MV7129 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV7125 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV7134 :ISA N-FOLD :NUMBER MV7133) (:VAR MV7133 :ISA NUMBER :VALUE 10)
 (:VAR MV7129 :ISA BIO-AMOUNT :MEASURED-ITEM MV7120 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7120 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV7135 :ISA VANISH :AGENT MV7119 :RAW-TEXT "vanish")
 (:VAR MV7119 :ISA PROTEIN :PREDICATION MV7122 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7122 :ISA PHOSPHORYLATE :SUBSTRATE MV7122 :RAW-TEXT "phosphorylated"))

___________________
117: "Does the amount of phosphorylated MAPK1 ever increase?"

                    SOURCE-START
e20   INCREASE      1 "Does the amount of phosphorylated MAPK1 ever increase" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 ever increase?"
 (:VAR MV7152 :ISA POLAR-QUESTION :STATEMENT MV7150)
 (:VAR MV7150 :ISA INCREASE :CAUSE MV7144 :ADVERB MV7147 :RAW-TEXT "increase")
 (:VAR MV7144 :ISA BIO-AMOUNT :MEASURED-ITEM MV7141 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7141 :ISA PROTEIN :PREDICATION MV7146 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7146 :ISA PHOSPHORYLATE :SUBSTRATE MV7146 :RAW-TEXT "phosphorylated")
 (:VAR MV7147 :ISA EVER))

___________________
118: "Is MAP2K1 bound to MAPK1 eventually high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is MAP2K1 bound to MAPK1 eventually high" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAP2K1 bound to MAPK1 eventually high?"
 (:VAR MV7163 :ISA POLAR-QUESTION :STATEMENT MV7162)
 (:VAR MV7162 :ISA COPULAR-PREDICATION :ITEM MV7160 :VALUE MV7159 :PREDICATE
  MV7155)
 (:VAR MV7160 :ISA BINDING :DIRECT-BINDEE MV7153 :BINDEE MV7154 :RAW-TEXT
  "bound")
 (:VAR MV7153 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7154 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV7159 :ISA HIGH :ADVERB MV7158) (:VAR MV7158 :ISA EVENTUALLY)
 (:VAR MV7155 :ISA BE))

___________________
119: "Is MAPK1 bound to MAP2K1 transient?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Is MAPK1 bound to MAP2K1 transient" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAPK1 bound to MAP2K1 transient?"
 (:VAR MV7173 :ISA POLAR-QUESTION :STATEMENT MV7172)
 (:VAR MV7172 :ISA COPULAR-PREDICATION :ITEM MV7170 :VALUE MV7169 :PREDICATE
  MV7166)
 (:VAR MV7170 :ISA BINDING :DIRECT-BINDEE MV7164 :BINDEE MV7165 :RAW-TEXT
  "bound")
 (:VAR MV7164 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV7165 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7169 :ISA TRANSIENT) (:VAR MV7166 :ISA BE))

___________________
120: "Is MAPK1-bound MAP2K1 sustained?"

                    SOURCE-START
e15   BE            1 "Is MAPK1-bound MAP2K1 sustained" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MAPK1-bound MAP2K1 sustained?"
 (:VAR MV7181 :ISA POLAR-QUESTION :STATEMENT MV7176)
 (:VAR MV7176 :ISA BE :PREDICATE MV7180 :SUBJECT MV7175)
 (:VAR MV7180 :ISA SUSTAINED)
 (:VAR MV7175 :ISA PROTEIN :PREDICATION MV7177 :RAW-TEXT "MAP2K1" :UID
  "UP:Q02750" :NAME "MP2K1_HUMAN")
 (:VAR MV7177 :ISA BINDING :DIRECT-BINDEE MV7177 :BINDER MV7174 :RAW-TEXT
  "bound")
 (:VAR MV7174 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
121: "Is phosphorylated MAPK1 always high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 always high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 always high?"
 (:VAR MV7188 :ISA POLAR-QUESTION :STATEMENT MV7187)
 (:VAR MV7187 :ISA COPULAR-PREDICATION :ITEM MV7182 :VALUE MV7186 :PREDICATE
  MV7183)
 (:VAR MV7182 :ISA PROTEIN :PREDICATION MV7184 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7184 :ISA PHOSPHORYLATE :SUBSTRATE MV7184 :RAW-TEXT "phosphorylated")
 (:VAR MV7186 :ISA HIGH :ADVERB MV7185) (:VAR MV7185 :ISA ALWAYS)
 (:VAR MV7183 :ISA BE))

___________________
122: "Is phosphorylated MAPK1 eventually high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 eventually high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 eventually high?"
 (:VAR MV7195 :ISA POLAR-QUESTION :STATEMENT MV7194)
 (:VAR MV7194 :ISA COPULAR-PREDICATION :ITEM MV7189 :VALUE MV7193 :PREDICATE
  MV7190)
 (:VAR MV7189 :ISA PROTEIN :PREDICATION MV7191 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7191 :ISA PHOSPHORYLATE :SUBSTRATE MV7191 :RAW-TEXT "phosphorylated")
 (:VAR MV7193 :ISA HIGH :ADVERB MV7192) (:VAR MV7192 :ISA EVENTUALLY)
 (:VAR MV7190 :ISA BE))

___________________
123: "Is phosphorylated MAPK1 ever high?"

                    SOURCE-START
e11   COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 ever high" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 ever high?"
 (:VAR MV7202 :ISA POLAR-QUESTION :STATEMENT MV7201)
 (:VAR MV7201 :ISA COPULAR-PREDICATION :ITEM MV7196 :VALUE MV7200 :PREDICATE
  MV7197)
 (:VAR MV7196 :ISA PROTEIN :PREDICATION MV7198 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7198 :ISA PHOSPHORYLATE :SUBSTRATE MV7198 :RAW-TEXT "phosphorylated")
 (:VAR MV7200 :ISA HIGH :ADVERB MV7199) (:VAR MV7199 :ISA EVER)
 (:VAR MV7197 :ISA BE))

___________________
124: "Is phosphorylated MAPK1 high at the end?"

                    SOURCE-START
e2    BE            1 "Is " 2
e15   COPULAR-PREDICATION 2 "phosphorylated MAPK1 high " 6
e13   AT            6 "at the end" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
125: "Is phosphorylated MAPK1 high?"

                    SOURCE-START
e9    COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 high" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 high?"
 (:VAR MV7217 :ISA POLAR-QUESTION :STATEMENT MV7216)
 (:VAR MV7216 :ISA COPULAR-PREDICATION :ITEM MV7212 :VALUE MV7215 :PREDICATE
  MV7213)
 (:VAR MV7212 :ISA PROTEIN :PREDICATION MV7214 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7214 :ISA PHOSPHORYLATE :SUBSTRATE MV7214 :RAW-TEXT "phosphorylated")
 (:VAR MV7215 :ISA HIGH) (:VAR MV7213 :ISA BE))

___________________
126: "Is phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e21   SUSTAINED     1 "Is phosphorylated MAPK1 sustained at a high level" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV7230 :ISA POLAR-QUESTION :STATEMENT MV7229)
 (:VAR MV7229 :ISA SUSTAINED :PARTICIPANT MV7218 :LEVEL MV7226)
 (:VAR MV7218 :ISA PROTEIN :PREDICATION MV7220 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7220 :ISA PHOSPHORYLATE :SUBSTRATE MV7220 :RAW-TEXT "phosphorylated")
 (:VAR MV7226 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV7225 :RAW-TEXT
  "level")
 (:VAR MV7225 :ISA HIGH))

___________________
127: "Is phosphorylated MAPK1 sustained?"

                    SOURCE-START
e11   BE            1 "Is phosphorylated MAPK1 sustained" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 sustained?"
 (:VAR MV7237 :ISA POLAR-QUESTION :STATEMENT MV7232)
 (:VAR MV7232 :ISA BE :PREDICATE MV7236 :SUBJECT MV7231)
 (:VAR MV7236 :ISA SUSTAINED)
 (:VAR MV7231 :ISA PROTEIN :PREDICATION MV7233 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7233 :ISA PHOSPHORYLATE :SUBSTRATE MV7233 :RAW-TEXT "phosphorylated"))

___________________
128: "Is phosphorylated MAPK1 transient?"

                    SOURCE-START
e9    COPULAR-PREDICATION 1 "Is phosphorylated MAPK1 transient" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is phosphorylated MAPK1 transient?"
 (:VAR MV7243 :ISA POLAR-QUESTION :STATEMENT MV7242)
 (:VAR MV7242 :ISA COPULAR-PREDICATION :ITEM MV7238 :VALUE MV7241 :PREDICATE
  MV7239)
 (:VAR MV7238 :ISA PROTEIN :PREDICATION MV7240 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7240 :ISA PHOSPHORYLATE :SUBSTRATE MV7240 :RAW-TEXT "phosphorylated")
 (:VAR MV7241 :ISA TRANSIENT) (:VAR MV7239 :ISA BE))

___________________
129: "Is the MAP2K1-MAPK1 complex ever high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the MAP2K1-MAPK1 complex ever high" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex ever high?"
 (:VAR MV7254 :ISA POLAR-QUESTION :STATEMENT MV7253)
 (:VAR MV7253 :ISA COPULAR-PREDICATION :ITEM MV7252 :VALUE MV7250 :PREDICATE
  MV7246)
 (:VAR MV7252 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV7245 :COMPONENT MV7244)
 (:VAR MV7245 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV7244 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7250 :ISA HIGH :ADVERB MV7249) (:VAR MV7249 :ISA EVER)
 (:VAR MV7246 :ISA BE))

___________________
130: "Is the MAP2K1-MAPK1 complex formed?"

                    SOURCE-START
e15   BIO-FORM      1 "Is the MAP2K1-MAPK1 complex formed" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the MAP2K1-MAPK1 complex formed?"
 (:VAR MV7264 :ISA POLAR-QUESTION :STATEMENT MV7263)
 (:VAR MV7263 :ISA BIO-FORM :OBJECT MV7262 :RAW-TEXT "formed")
 (:VAR MV7262 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV7256 :COMPONENT MV7255)
 (:VAR MV7256 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV7255 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
131: "Is the amount of FOS always low if we increase ELK1 10 fold?"

                    SOURCE-START
e33   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 10 fold" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 10 fold?"
 (:VAR MV7285 :ISA POLAR-QUESTION :STATEMENT MV7284)
 (:VAR MV7284 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7280 :EVENT MV7282)
 (:VAR MV7280 :ISA WH-QUESTION :STATEMENT MV7276 :WH IF)
 (:VAR MV7276 :ISA INCREASE :AGENT-OR-CAUSE MV7274 :ADVERB MV7279 :OBJECT
  MV7265 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV7274 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV7279 :ISA N-FOLD :NUMBER MV7278) (:VAR MV7278 :ISA NUMBER :VALUE 10)
 (:VAR MV7265 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7282 :ISA COPULAR-PREDICATION :ITEM MV7268 :VALUE MV7272 :PREDICATE
  MV7266)
 (:VAR MV7268 :ISA BIO-AMOUNT :MEASURED-ITEM MV7270 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7270 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV7272 :ISA LOW :ADVERB MV7271) (:VAR MV7271 :ISA ALWAYS)
 (:VAR MV7266 :ISA BE))

___________________
132: "Is the amount of FOS always low if we increase ELK1 by 100 fold?"

                    SOURCE-START
e36   EVENT-RELATION  1 "Is the amount of FOS always low if we increase ELK1 by 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
 (:VAR MV7308 :ISA POLAR-QUESTION :STATEMENT MV7307)
 (:VAR MV7307 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7303 :EVENT MV7305)
 (:VAR MV7303 :ISA WH-QUESTION :STATEMENT MV7297 :WH IF)
 (:VAR MV7297 :ISA INCREASE :AGENT-OR-CAUSE MV7295 :MULTIPLIER MV7301 :OBJECT
  MV7286 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV7295 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV7301 :ISA N-FOLD :NUMBER MV7300) (:VAR MV7300 :ISA NUMBER :VALUE 100)
 (:VAR MV7286 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7305 :ISA COPULAR-PREDICATION :ITEM MV7289 :VALUE MV7293 :PREDICATE
  MV7287)
 (:VAR MV7289 :ISA BIO-AMOUNT :MEASURED-ITEM MV7291 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7291 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV7293 :ISA LOW :ADVERB MV7292) (:VAR MV7292 :ISA ALWAYS)
 (:VAR MV7287 :ISA BE))

___________________
133: "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"

                    SOURCE-START
e41   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
 (:VAR MV7333 :ISA POLAR-QUESTION :STATEMENT MV7332)
 (:VAR MV7332 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7328 :EVENT MV7330)
 (:VAR MV7328 :ISA WH-QUESTION :STATEMENT MV7320 :WH IF)
 (:VAR MV7320 :ISA INCREASE :AGENT-OR-CAUSE MV7318 :ADVERB MV7326
  :AFFECTED-PROCESS-OR-OBJECT MV7322 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV7318 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV7326 :ISA N-FOLD :NUMBER MV7325) (:VAR MV7325 :ISA NUMBER :VALUE 100)
 (:VAR MV7322 :ISA BIO-AMOUNT :MEASURED-ITEM MV7309 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7309 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7330 :ISA COPULAR-PREDICATION :ITEM MV7312 :VALUE MV7316 :PREDICATE
  MV7310)
 (:VAR MV7312 :ISA BIO-AMOUNT :MEASURED-ITEM MV7314 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7314 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV7316 :ISA HIGH :ADVERB MV7315) (:VAR MV7315 :ISA EVER)
 (:VAR MV7310 :ISA BE))

___________________
134: "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"

                    SOURCE-START
e44   EVENT-RELATION  1 "Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
 (:VAR MV7360 :ISA POLAR-QUESTION :STATEMENT MV7359)
 (:VAR MV7359 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7355 :EVENT MV7357)
 (:VAR MV7355 :ISA WH-QUESTION :STATEMENT MV7345 :WH IF)
 (:VAR MV7345 :ISA INCREASE :AGENT-OR-CAUSE MV7343 :MULTIPLIER MV7352
  :AFFECTED-PROCESS-OR-OBJECT MV7347 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV7343 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV7352 :ISA N-FOLD :NUMBER MV7351) (:VAR MV7351 :ISA NUMBER :VALUE 100)
 (:VAR MV7347 :ISA BIO-AMOUNT :MEASURED-ITEM MV7334 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7334 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV7357 :ISA COPULAR-PREDICATION :ITEM MV7337 :VALUE MV7341 :PREDICATE
  MV7335)
 (:VAR MV7337 :ISA BIO-AMOUNT :MEASURED-ITEM MV7339 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7339 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV7341 :ISA HIGH :ADVERB MV7340) (:VAR MV7340 :ISA EVER)
 (:VAR MV7335 :ISA BE))

___________________
135: "Is the amount of MAPK1 phosphorylated eventually high?"

                    SOURCE-START
e2    BE            1 "Is " 2
e15   BIO-AMOUNT    2 "the amount of MAPK1 " 7
e12   PHOSPHORYLATE 7 "phosphorylated " 8
e13   HIGH          8 "eventually high" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
136: "Is the amount of phosphorylated MAPK1 eventually high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 eventually high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 eventually high?"
 (:VAR MV7381 :ISA POLAR-QUESTION :STATEMENT MV7380)
 (:VAR MV7380 :ISA COPULAR-PREDICATION :ITEM MV7374 :VALUE MV7378 :PREDICATE
  MV7372)
 (:VAR MV7374 :ISA BIO-AMOUNT :MEASURED-ITEM MV7371 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7371 :ISA PROTEIN :PREDICATION MV7376 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7376 :ISA PHOSPHORYLATE :SUBSTRATE MV7376 :RAW-TEXT "phosphorylated")
 (:VAR MV7378 :ISA HIGH :ADVERB MV7377) (:VAR MV7377 :ISA EVENTUALLY)
 (:VAR MV7372 :ISA BE))

___________________
137: "Is the amount of phosphorylated MAPK1 ever high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 ever high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever high?"
 (:VAR MV7392 :ISA POLAR-QUESTION :STATEMENT MV7391)
 (:VAR MV7391 :ISA COPULAR-PREDICATION :ITEM MV7385 :VALUE MV7389 :PREDICATE
  MV7383)
 (:VAR MV7385 :ISA BIO-AMOUNT :MEASURED-ITEM MV7382 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7382 :ISA PROTEIN :PREDICATION MV7387 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7387 :ISA PHOSPHORYLATE :SUBSTRATE MV7387 :RAW-TEXT "phosphorylated")
 (:VAR MV7389 :ISA HIGH :ADVERB MV7388) (:VAR MV7388 :ISA EVER)
 (:VAR MV7383 :ISA BE))

___________________
138: "Is the amount of phosphorylated MAPK1 ever increasing?"

                    SOURCE-START
e19   INCREASE      1 "Is the amount of phosphorylated MAPK1 ever increasing" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 ever increasing?"
 (:VAR MV7403 :ISA POLAR-QUESTION :STATEMENT MV7401)
 (:VAR MV7401 :ISA INCREASE :CAUSE MV7396 :ADVERB MV7399 :RAW-TEXT
  "increasing")
 (:VAR MV7396 :ISA BIO-AMOUNT :MEASURED-ITEM MV7393 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7393 :ISA PROTEIN :PREDICATION MV7398 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7398 :ISA PHOSPHORYLATE :SUBSTRATE MV7398 :RAW-TEXT "phosphorylated")
 (:VAR MV7399 :ISA EVER))

___________________
139: "Is the amount of phosphorylated MAPK1 high?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 high" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 high?"
 (:VAR MV7413 :ISA POLAR-QUESTION :STATEMENT MV7412)
 (:VAR MV7412 :ISA COPULAR-PREDICATION :ITEM MV7407 :VALUE MV7410 :PREDICATE
  MV7405)
 (:VAR MV7407 :ISA BIO-AMOUNT :MEASURED-ITEM MV7404 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7404 :ISA PROTEIN :PREDICATION MV7409 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7409 :ISA PHOSPHORYLATE :SUBSTRATE MV7409 :RAW-TEXT "phosphorylated")
 (:VAR MV7410 :ISA HIGH) (:VAR MV7405 :ISA BE))

___________________
140: "Is the amount of phosphorylated MAPK1 sometimes high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 sometimes high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sometimes high?"
 (:VAR MV7424 :ISA POLAR-QUESTION :STATEMENT MV7423)
 (:VAR MV7423 :ISA COPULAR-PREDICATION :ITEM MV7417 :VALUE MV7421 :PREDICATE
  MV7415)
 (:VAR MV7417 :ISA BIO-AMOUNT :MEASURED-ITEM MV7414 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7414 :ISA PROTEIN :PREDICATION MV7419 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7419 :ISA PHOSPHORYLATE :SUBSTRATE MV7419 :RAW-TEXT "phosphorylated")
 (:VAR MV7421 :ISA HIGH :ADVERB MV7420) (:VAR MV7420 :ISA SOMETIMES)
 (:VAR MV7415 :ISA BE))

___________________
141: "Is the amount of phosphorylated MAPK1 sustained at a high level?"

                    SOURCE-START
e28   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained at a high level" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained at a high level?"
 (:VAR MV7440 :ISA POLAR-QUESTION :STATEMENT MV7437)
 (:VAR MV7437 :ISA SUSTAINED :THEME MV7428 :LEVEL MV7436)
 (:VAR MV7428 :ISA BIO-AMOUNT :MEASURED-ITEM MV7425 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7425 :ISA PROTEIN :PREDICATION MV7430 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7430 :ISA PHOSPHORYLATE :SUBSTRATE MV7430 :RAW-TEXT "phosphorylated")
 (:VAR MV7436 :ISA LEVEL :HAS-DETERMINER "A" :PREDICATION MV7435 :RAW-TEXT
  "level")
 (:VAR MV7435 :ISA HIGH))

___________________
142: "Is the amount of phosphorylated MAPK1 sustained?"

                    SOURCE-START
e18   SUSTAINED     1 "Is the amount of phosphorylated MAPK1 sustained" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 sustained?"
 (:VAR MV7451 :ISA POLAR-QUESTION :STATEMENT MV7449)
 (:VAR MV7449 :ISA SUSTAINED :THEME MV7444)
 (:VAR MV7444 :ISA BIO-AMOUNT :MEASURED-ITEM MV7441 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7441 :ISA PROTEIN :PREDICATION MV7446 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7446 :ISA PHOSPHORYLATE :SUBSTRATE MV7446 :RAW-TEXT "phosphorylated"))

___________________
143: "Is the amount of phosphorylated MAPK1 transient?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 transient" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 transient?"
 (:VAR MV7461 :ISA POLAR-QUESTION :STATEMENT MV7460)
 (:VAR MV7460 :ISA COPULAR-PREDICATION :ITEM MV7455 :VALUE MV7458 :PREDICATE
  MV7453)
 (:VAR MV7455 :ISA BIO-AMOUNT :MEASURED-ITEM MV7452 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7452 :ISA PROTEIN :PREDICATION MV7457 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7457 :ISA PHOSPHORYLATE :SUBSTRATE MV7457 :RAW-TEXT "phosphorylated")
 (:VAR MV7458 :ISA TRANSIENT) (:VAR MV7453 :ISA BE))

___________________
144: "Will the amount of phosphorylated MAPK1 be high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Will the amount of phosphorylated MAPK1 be high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Will the amount of phosphorylated MAPK1 be high?"
 (:VAR MV7472 :ISA POLAR-QUESTION :STATEMENT MV7470)
 (:VAR MV7470 :ISA COPULAR-PREDICATION :ITEM MV7465 :VALUE MV7469 :PREDICATE
  MV7468)
 (:VAR MV7465 :ISA BIO-AMOUNT :MEASURED-ITEM MV7462 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7462 :ISA PROTEIN :PREDICATION MV7467 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV7467 :ISA PHOSPHORYLATE :SUBSTRATE MV7467 :RAW-TEXT "phosphorylated")
 (:VAR MV7469 :ISA HIGH) (:VAR MV7468 :ISA BE :MODAL MV7463)
 (:VAR MV7463 :ISA WILL))

___________________
145: "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e34   EVENT-RELATION  1 "is TGFBR1 eventually low if we increase the amount of SB525334 100 fold" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
 (:VAR MV7493 :ISA POLAR-QUESTION :STATEMENT MV7492)
 (:VAR MV7492 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7489 :EVENT MV7490)
 (:VAR MV7489 :ISA WH-QUESTION :STATEMENT MV7481 :WH IF)
 (:VAR MV7481 :ISA INCREASE :AGENT-OR-CAUSE MV7479 :ADVERB MV7487
  :AFFECTED-PROCESS-OR-OBJECT MV7483 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV7479 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV7487 :ISA N-FOLD :NUMBER MV7486) (:VAR MV7486 :ISA NUMBER :VALUE 100)
 (:VAR MV7483 :ISA BIO-AMOUNT :MEASURED-ITEM MV7474 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7474 :ISA MOLECULE :RAW-TEXT "SB525334" :UID "PCID:9967941")
 (:VAR MV7490 :ISA COPULAR-PREDICATION :ITEM MV7473 :VALUE MV7477 :PREDICATE
  MV7475)
 (:VAR MV7473 :ISA PROTEIN :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME
  "TGFR1_HUMAN")
 (:VAR MV7477 :ISA LOW :ADVERB MV7476) (:VAR MV7476 :ISA EVENTUALLY)
 (:VAR MV7475 :ISA BE))

___________________
146: "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"

                    SOURCE-START
e38   EVENT-RELATION  1 "is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
 (:VAR MV7518 :ISA POLAR-QUESTION :STATEMENT MV7517)
 (:VAR MV7517 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7514 :EVENT MV7515)
 (:VAR MV7514 :ISA WH-QUESTION :STATEMENT MV7511 :WH IF)
 (:VAR MV7511 :ISA INCREASE :AFFECTED-PROCESS-OR-OBJECT MV7502 :MULTIPLIER
  MV7509 :RAW-TEXT "increased")
 (:VAR MV7502 :ISA BIO-AMOUNT :MEASURED-ITEM MV7495 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7495 :ISA MOLECULE :RAW-TEXT "SB525334" :UID "PCID:9967941")
 (:VAR MV7509 :ISA N-FOLD :NUMBER MV7508) (:VAR MV7508 :ISA NUMBER :VALUE 100)
 (:VAR MV7515 :ISA COPULAR-PREDICATION :ITEM MV7494 :VALUE MV7499 :PREDICATE
  MV7496)
 (:VAR MV7494 :ISA PROTEIN :PREDICATION MV7497 :RAW-TEXT "TGFBR1" :UID
  "UP:P36897" :NAME "TGFR1_HUMAN")
 (:VAR MV7497 :ISA ACTIVE) (:VAR MV7499 :ISA LOW :ADVERB MV7498)
 (:VAR MV7498 :ISA EVENTUALLY) (:VAR MV7496 :ISA BE))

___________________
147: "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"

                    SOURCE-START
e42   EVENT-RELATION  1 "is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
 (:VAR MV7543 :ISA POLAR-QUESTION :STATEMENT MV7542)
 (:VAR MV7542 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7538 :EVENT MV7540)
 (:VAR MV7538 :ISA WH-QUESTION :STATEMENT MV7530 :WH IF)
 (:VAR MV7530 :ISA INCREASE :AGENT-OR-CAUSE MV7528 :ADVERB MV7536
  :AFFECTED-PROCESS-OR-OBJECT MV7532 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV7528 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV7536 :ISA N-FOLD :NUMBER MV7535) (:VAR MV7535 :ISA NUMBER :VALUE 100)
 (:VAR MV7532 :ISA BIO-AMOUNT :MEASURED-ITEM MV7520 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7520 :ISA MOLECULE :RAW-TEXT "SB525334" :UID "PCID:9967941")
 (:VAR MV7540 :ISA COPULAR-PREDICATION :ITEM MV7523 :VALUE MV7526 :PREDICATE
  MV7521)
 (:VAR MV7523 :ISA BIO-AMOUNT :MEASURED-ITEM MV7519 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7519 :ISA PROTEIN :RAW-TEXT "TGFBR1" :UID "UP:P36897" :NAME
  "TGFR1_HUMAN")
 (:VAR MV7526 :ISA LOW :ADVERB MV7525) (:VAR MV7525 :ISA EVENTUALLY)
 (:VAR MV7521 :ISA BE))

___________________
148: "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"

                    SOURCE-START
e44   EVENT-RELATION  1 "is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold" 21
                    END-OF-SOURCE
("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
 (:VAR MV7569 :ISA POLAR-QUESTION :STATEMENT MV7568)
 (:VAR MV7568 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV7564 :EVENT MV7566)
 (:VAR MV7564 :ISA WH-QUESTION :STATEMENT MV7556 :WH IF)
 (:VAR MV7556 :ISA INCREASE :AGENT-OR-CAUSE MV7554 :ADVERB MV7562
  :AFFECTED-PROCESS-OR-OBJECT MV7558 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV7554 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV7562 :ISA N-FOLD :NUMBER MV7561) (:VAR MV7561 :ISA NUMBER :VALUE 100)
 (:VAR MV7558 :ISA BIO-AMOUNT :MEASURED-ITEM MV7545 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7545 :ISA MOLECULE :RAW-TEXT "SB-525334" :UID "PCID:9967941")
 (:VAR MV7566 :ISA COPULAR-PREDICATION :ITEM MV7548 :VALUE MV7552 :PREDICATE
  MV7546)
 (:VAR MV7548 :ISA BIO-AMOUNT :MEASURED-ITEM MV7544 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV7544 :ISA PROTEIN :PREDICATION MV7550 :RAW-TEXT "TGFBR1" :UID
  "UP:P36897" :NAME "TGFR1_HUMAN")
 (:VAR MV7550 :ISA ACTIVE) (:VAR MV7552 :ISA LOW :ADVERB MV7551)
 (:VAR MV7551 :ISA ALWAYS) (:VAR MV7546 :ISA BE))

___________________
149: "Create a model where LCK phosphorylates CD3E"

                    SOURCE-START
e2    CREATE        1 "Create " 2
e13   MODEL         2 "a model where LCK phosphorylates CD3E" 10
                    END-OF-SOURCE


___________________
150: "What is upstream of CD3E?"

                    SOURCE-START
e10   COPULAR-PREDICATE 1 "What is upstream of CD3E" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What is upstream of CD3E?"
 (:VAR MV7585 :ISA WH-QUESTION :STATEMENT MV7584 :VAR NIL :WH WHAT)
 (:VAR MV7584 :ISA COPULAR-PREDICATION :VALUE MV7581 :PREDICATE MV7580)
 (:VAR MV7581 :ISA UPSTREAM :PARTICIPANT-OR-RELATIVE-TO MV7578)
 (:VAR MV7578 :ISA PROTEIN :RAW-TEXT "CD3E" :UID "UP:P07766" :NAME
  "CD3E_HUMAN")
 (:VAR MV7580 :ISA BE))

___________________
151: "I want to find a treatment for pancreatic cancer."

                    SOURCE-START
e21   WANT          1 "I want to find a treatment for pancreatic cancer" 10
                    PERIOD
                    END-OF-SOURCE
("I want to find a treatment for pancreatic cancer."
 (:VAR MV7590 :ISA WANT :AGENT MV7587 :THEME MV7596 :PRESENT "PRESENT")
 (:VAR MV7587 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7596 :ISA BIO-FIND :AGENT MV7587 :OBJECT MV7594 :RAW-TEXT "find")
 (:VAR MV7587 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7594 :ISA TREATMENT :DISEASE MV7586 :HAS-DETERMINER "A" :RAW-TEXT
  "treatment")
 (:VAR MV7586 :ISA CANCER :UID "TS-0739"))

___________________
152: "What drug could I use?"

                    SOURCE-START
e12   BIO-USE       1 "What drug could I use" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug could I use?"
 (:VAR MV7606 :ISA BIO-USE :OBJECT MV7599 :MODAL MV7600 :AGENT MV7601 :MODAL
  MV7600 :RAW-TEXT "use")
 (:VAR MV7599 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV7600 :ISA COULD) (:VAR MV7601 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7600 :ISA COULD))

___________________
153: "Are there any drugs for BRAF?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs for BRAF?"
 (:VAR MV7616 :ISA POLAR-QUESTION :STATEMENT MV7614)
 (:VAR MV7614 :ISA THERE-EXISTS :VALUE MV7611 :PREDICATE MV7608)
 (:VAR MV7611 :ISA DRUG :TARGET MV7613 :QUANTIFIER MV7610 :RAW-TEXT "drugs")
 (:VAR MV7613 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7610 :ISA ANY :WORD "any") (:VAR MV7608 :ISA SYNTACTIC-THERE))

___________________
154: "Are they kinases?"

                    SOURCE-START
e5    BE            1 "Are they kinases" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("Are they kinases?" (:VAR MV7620 :ISA POLAR-QUESTION :STATEMENT MV7617)
 (:VAR MV7617 :ISA BE :PREDICATE MV7619 :SUBJECT MV7618)
 (:VAR MV7619 :ISA KINASE :RAW-TEXT "kinases")
 (:VAR MV7618 :ISA PRONOUN/PLURAL :WORD "they"))

___________________
155: "Can you find a drug for BRAF?"

                    SOURCE-START
e15   BIO-FIND      1 "Can you find a drug for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you find a drug for BRAF?"
 (:VAR MV7629 :ISA POLAR-QUESTION :STATEMENT MV7623)
 (:VAR MV7623 :ISA BIO-FIND :AGENT MV7622 :OBJECT MV7625 :MODAL MV7621
  :RAW-TEXT "find")
 (:VAR MV7622 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV7625 :ISA DRUG :TARGET MV7627 :HAS-DETERMINER "A" :RAW-TEXT "drug")
 (:VAR MV7627 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7621 :ISA CAN))

___________________
156: "Can you tell me all the transcription factors that are shared by elk1 and srf?"

                    SOURCE-START
e32   TELL          1 "Can you tell me all the transcription factors that are shared by elk1 and srf" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me all the transcription factors that are shared by elk1 and srf?"
 (:VAR MV7648 :ISA POLAR-QUESTION :STATEMENT MV7647)
 (:VAR MV7647 :ISA TELL :AGENT MV7633 :STATEMENT MV7630 :BENEFICIARY MV7635
  :MODAL MV7632)
 (:VAR MV7633 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV7630 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV7645 :QUANTIFIER MV7636
  :HAS-DETERMINER "THE" :RAW-TEXT "transcription factors")
 (:VAR MV7645 :ISA SHARE :OBJECT MV7645 :THAT-REL T :PARTICIPANT MV7644
  :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV7644 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL)
 (:VAR MV7636 :ISA ALL :WORD "all")
 (:VAR MV7635 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV7632 :ISA CAN))

___________________
157: "Can you tell me what transcription factors are shared by elk1 and srf?"

                    SOURCE-START
e25   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf?"
 (:VAR MV7666 :ISA POLAR-QUESTION :STATEMENT MV7665)
 (:VAR MV7665 :ISA TELL :AGENT MV7652 :STATEMENT MV7662 :STATEMENT MV7654
  :MODAL MV7651)
 (:VAR MV7652 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV7662 :ISA SHARE :OBJECT MV7649 :PARTICIPANT MV7661 :PRESENT "PRESENT"
  :RAW-TEXT "shared")
 (:VAR MV7649 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV7661 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL)
 (:VAR MV7654 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV7651 :ISA CAN))

___________________
158: "Do you know any drugs for BRAF?"

                    SOURCE-START
e14   KNOW          1 "Do you know any drugs for BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Do you know any drugs for BRAF?"
 (:VAR MV7677 :ISA POLAR-QUESTION :STATEMENT MV7676)
 (:VAR MV7676 :ISA KNOW :AGENT MV7668 :STATEMENT MV7671)
 (:VAR MV7668 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV7671 :ISA DRUG :TARGET MV7673 :QUANTIFIER MV7670 :RAW-TEXT "drugs")
 (:VAR MV7673 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7670 :ISA ANY :WORD "any"))

___________________
159: "Does STAT3 regulate the JUN gene in the lung?"

                    SOURCE-START
e21   REGULATE      1 "Does STAT3 regulate the JUN gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the JUN gene in the lung?"
 (:VAR MV7689 :ISA POLAR-QUESTION :STATEMENT MV7687)
 (:VAR MV7687 :ISA REGULATE :AGENT MV7678 :OBJECT MV7683 :RAW-TEXT "regulate")
 (:VAR MV7678 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7683 :ISA GENE :ORGAN MV7686 :HAS-DETERMINER "THE" :EXPRESSES MV7682
  :RAW-TEXT "gene")
 (:VAR MV7686 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV7682 :ISA PROTEIN :RAW-TEXT "JUN" :UID "UP:P05412" :NAME "JUN_HUMAN"))

___________________
160: "Does STAT3 regulate the c-fos gene in liver?"

                    SOURCE-START
e19   REGULATE      1 "Does STAT3 regulate the c-fos gene in liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in liver?"
 (:VAR MV7700 :ISA POLAR-QUESTION :STATEMENT MV7698)
 (:VAR MV7698 :ISA REGULATE :AGENT MV7690 :OBJECT MV7695 :RAW-TEXT "regulate")
 (:VAR MV7690 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7695 :ISA GENE :ORGAN MV7697 :HAS-DETERMINER "THE" :EXPRESSES MV7691
  :RAW-TEXT "gene")
 (:VAR MV7697 :ISA LIVER)
 (:VAR MV7691 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
161: "Does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e14   REGULATE      1 "Does STAT3 regulate the c-fos gene" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene?"
 (:VAR MV7708 :ISA POLAR-QUESTION :STATEMENT MV7707)
 (:VAR MV7707 :ISA REGULATE :AGENT MV7701 :OBJECT MV7706 :RAW-TEXT "regulate")
 (:VAR MV7701 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7706 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV7702 :RAW-TEXT
  "gene")
 (:VAR MV7702 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
162: "Does STAT3 regulate the cfos gene in the lung?"

                    SOURCE-START
e21   REGULATE      1 "Does STAT3 regulate the cfos gene in the lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the cfos gene in the lung?"
 (:VAR MV7720 :ISA POLAR-QUESTION :STATEMENT MV7718)
 (:VAR MV7718 :ISA REGULATE :AGENT MV7709 :OBJECT MV7714 :RAW-TEXT "regulate")
 (:VAR MV7709 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7714 :ISA GENE :ORGAN MV7717 :HAS-DETERMINER "THE" :EXPRESSES MV7713
  :RAW-TEXT "gene")
 (:VAR MV7717 :ISA LUNG :HAS-DETERMINER "THE")
 (:VAR MV7713 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
163: "Does TP53 target MDM2?"

                    SOURCE-START
e10   TARGET        1 "Does TP53 target MDM2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Does TP53 target MDM2?" (:VAR MV7727 :ISA POLAR-QUESTION :STATEMENT MV7726)
 (:VAR MV7726 :ISA TARGET :AGENT MV7721 :OBJECT MV7722 :RAW-TEXT "target")
 (:VAR MV7721 :ISA PROTEIN :RAW-TEXT "TP53" :UID "UP:P04637" :NAME "P53_HUMAN")
 (:VAR MV7722 :ISA PROTEIN :RAW-TEXT "MDM2" :UID "UP:Q00987" :NAME
  "MDM2_HUMAN"))

___________________
164: "Does stat3 regulate cfors in liver"

                    SOURCE-START
e13   REGULATE      1 "Does stat3 regulate cfors in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfors in liver"
 (:VAR MV7736 :ISA POLAR-QUESTION :STATEMENT MV7734)
 (:VAR MV7734 :ISA REGULATE :AGENT MV7728 :OBJECT MV7731 :RAW-TEXT "regulate")
 (:VAR MV7728 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7731 :ISA BIO-ENTITY :ORGAN MV7733 :NAME "cfors")
 (:VAR MV7733 :ISA LIVER))

___________________
165: "Does stat3 regulate cfos in liver"

                    SOURCE-START
e13   REGULATE      1 "Does stat3 regulate cfos in liver" 8
                    END-OF-SOURCE
("Does stat3 regulate cfos in liver"
 (:VAR MV7745 :ISA POLAR-QUESTION :STATEMENT MV7743)
 (:VAR MV7743 :ISA REGULATE :AGENT MV7737 :OBJECT MV7740 :RAW-TEXT "regulate")
 (:VAR MV7737 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7740 :ISA PROTEIN :ORGAN MV7742 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV7742 :ISA LIVER))

___________________
166: "Does it regulate cfos in brain"

                    SOURCE-START
e13   REGULATE      1 "Does it regulate cfos in brain" 7
                    END-OF-SOURCE
("Does it regulate cfos in brain"
 (:VAR MV7754 :ISA POLAR-QUESTION :STATEMENT MV7752)
 (:VAR MV7752 :ISA REGULATE :AGENT-OR-CAUSE MV7747 :OBJECT MV7749 :RAW-TEXT
  "regulate")
 (:VAR MV7747 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV7749 :ISA PROTEIN :ORGAN MV7751 :RAW-TEXT "cfos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV7751 :ISA BRAIN))

___________________
167: "Does stat3 regulate cfos?"

                    SOURCE-START
e8    REGULATE      1 "Does stat3 regulate cfos" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 regulate cfos?"
 (:VAR MV7760 :ISA POLAR-QUESTION :STATEMENT MV7759)
 (:VAR MV7759 :ISA REGULATE :AGENT MV7755 :OBJECT MV7758 :RAW-TEXT "regulate")
 (:VAR MV7755 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7758 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
168: "Does stat3 regulate the cfos gene in blood cells"

                    SOURCE-START
e20   REGULATE      1 "Does stat3 regulate the cfos gene in blood cells" 11
                    END-OF-SOURCE
("Does stat3 regulate the cfos gene in blood cells"
 (:VAR MV7772 :ISA POLAR-QUESTION :STATEMENT MV7770)
 (:VAR MV7770 :ISA REGULATE :AGENT MV7761 :OBJECT MV7766 :RAW-TEXT "regulate")
 (:VAR MV7761 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7766 :ISA GENE :CELL-TYPE MV7769 :HAS-DETERMINER "THE" :EXPRESSES
  MV7765 :RAW-TEXT "gene")
 (:VAR MV7769 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV7768)
 (:VAR MV7768 :ISA BIO-ORGAN :NAME "blood" :UID "BTO:0000089")
 (:VAR MV7765 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
169: "Does the il-12 pathway utilize SGK1?"

                    SOURCE-START
e14   UTILIZE       1 "Does the il-12 pathway utilize SGK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the il-12 pathway utilize SGK1?"
 (:VAR MV7780 :ISA POLAR-QUESTION :STATEMENT MV7779)
 (:VAR MV7779 :ISA UTILIZE :PARTICIPANT MV7777 :OBJECT MV7774 :RAW-TEXT
  "utilize")
 (:VAR MV7777 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV7773 :RAW-TEXT
  "pathway")
 (:VAR MV7773 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12")
 (:VAR MV7774 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
170: "Does the mTor pathway utilize SGK1?"

                    SOURCE-START
e15   UTILIZE       1 "Does the mTor pathway utilize SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway utilize SGK1?"
 (:VAR MV7790 :ISA POLAR-QUESTION :STATEMENT MV7789)
 (:VAR MV7789 :ISA UTILIZE :PARTICIPANT MV7787 :OBJECT MV7781 :RAW-TEXT
  "utilize")
 (:VAR MV7787 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV7784 :RAW-TEXT
  "pathway")
 (:VAR MV7784 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME
  "MTOR_HUMAN")
 (:VAR MV7781 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
171: "Give me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras decreases frizzled8."
 (:VAR MV7792 :ISA GIVE :THEME MV7799 :BENEFICIARY MV7793 :PRESENT "PRESENT")
 (:VAR MV7799 :ISA EVIDENCE :STATEMENT MV7798 :HAS-DETERMINER "THE")
 (:VAR MV7798 :ISA DECREASE :AGENT MV7797 :OBJECT MV7791 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV7797 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV7791 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV7793 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
172: "Give me the evidence that kras regulates frizzled8."

                    SOURCE-START
e17   GIVE          1 "Give me the evidence that kras regulates frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Give me the evidence that kras regulates frizzled8."
 (:VAR MV7801 :ISA GIVE :THEME MV7808 :BENEFICIARY MV7802 :PRESENT "PRESENT")
 (:VAR MV7808 :ISA EVIDENCE :STATEMENT MV7807 :HAS-DETERMINER "THE")
 (:VAR MV7807 :ISA REGULATE :AGENT MV7806 :OBJECT MV7800 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV7806 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV7800 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV7802 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
173: "Is MEK a kinase?"

                    SOURCE-START
e8    BE            1 "Is MEK a kinase" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK a kinase?" (:VAR MV7813 :ISA POLAR-QUESTION :STATEMENT MV7809)
 (:VAR MV7809 :ISA BE :PREDICATE MV7812 :SUBJECT MV7810)
 (:VAR MV7812 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase")
 (:VAR MV7810 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
174: "Is MEK2 inhibited by Selumetinib?"

                    SOURCE-START
e11   INHIBIT       1 "Is MEK2 inhibited by Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is MEK2 inhibited by Selumetinib?"
 (:VAR MV7821 :ISA POLAR-QUESTION :STATEMENT MV7819)
 (:VAR MV7819 :ISA INHIBIT :OBJECT MV7814 :AGENT MV7818 :RAW-TEXT "inhibited")
 (:VAR MV7814 :ISA PROTEIN :RAW-TEXT "MEK2" :UID "UP:P36507" :NAME
  "MP2K2_HUMAN")
 (:VAR MV7818 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
175: "Is STAT3 a transcription factor for c-fos gene?"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene?"
 (:VAR MV7830 :ISA POLAR-QUESTION :STATEMENT MV7825)
 (:VAR MV7825 :ISA BE :PREDICATE MV7823 :SUBJECT MV7822)
 (:VAR MV7823 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV7828 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription factor")
 (:VAR MV7828 :ISA GENE :EXPRESSES MV7824 :RAW-TEXT "gene")
 (:VAR MV7824 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV7822 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
176: "Is STAT3 a transcription-factor for c-fos gene?"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription-factor for c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription-factor for c-fos gene?"
 (:VAR MV7839 :ISA POLAR-QUESTION :STATEMENT MV7834)
 (:VAR MV7834 :ISA BE :PREDICATE MV7832 :SUBJECT MV7831)
 (:VAR MV7832 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV7837 :HAS-DETERMINER
  "A" :RAW-TEXT "transcription-factor")
 (:VAR MV7837 :ISA GENE :EXPRESSES MV7833 :RAW-TEXT "gene")
 (:VAR MV7833 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV7831 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
177: "Is STAT3 one of the regulators of the c-fos gene?"

                    SOURCE-START
e27   BE            1 "Is STAT3 one of the regulators of the c-fos gene" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 one of the regulators of the c-fos gene?"
 (:VAR MV7854 :ISA POLAR-QUESTION :STATEMENT MV7842)
 (:VAR MV7842 :ISA BE :PREDICATE MV7848 :SUBJECT MV7840)
 (:VAR MV7848 :ISA REGULATOR :QUANTIFIER MV7845 :THEME MV7851 :HAS-DETERMINER
  "THE" :RAW-TEXT "regulators")
 (:VAR MV7845 :ISA NUMBER :VALUE 1)
 (:VAR MV7851 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV7841 :RAW-TEXT
  "gene")
 (:VAR MV7841 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV7840 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
178: "Is Selumetinib an inhibitor of MEK1?"

                    SOURCE-START
e14   BE            1 "Is Selumetinib an inhibitor of MEK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Selumetinib an inhibitor of MEK1?"
 (:VAR MV7862 :ISA POLAR-QUESTION :STATEMENT MV7856)
 (:VAR MV7856 :ISA BE :PREDICATE MV7859 :SUBJECT MV7857)
 (:VAR MV7859 :ISA INHIBITOR :PROTEIN MV7855 :HAS-DETERMINER "AN" :RAW-TEXT
  "inhibitor")
 (:VAR MV7855 :ISA PROTEIN :RAW-TEXT "MEK1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV7857 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib"))

___________________
179: "Is Vemurafenib an inhibitor for BRAF?"

                    SOURCE-START
e13   BE            1 "Is Vemurafenib an inhibitor for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is Vemurafenib an inhibitor for BRAF?"
 (:VAR MV7870 :ISA POLAR-QUESTION :STATEMENT MV7863)
 (:VAR MV7863 :ISA BE :PREDICATE MV7866 :SUBJECT MV7864)
 (:VAR MV7866 :ISA INHIBITOR :TARGET-OR-PROTEIN MV7868 :HAS-DETERMINER "AN"
  :RAW-TEXT "inhibitor")
 (:VAR MV7868 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7864 :ISA DRUG :RAW-TEXT "Vemurafenib" :NAME "vemurafenib"))

___________________
180: "Is fakeprotein a kinase"

                    SOURCE-START
e8    BE            1 "Is fakeprotein a kinase" 5
                    END-OF-SOURCE
("Is fakeprotein a kinase" (:VAR MV7875 :ISA POLAR-QUESTION :STATEMENT MV7871)
 (:VAR MV7871 :ISA BE :PREDICATE MV7874 :SUBJECT MV7872)
 (:VAR MV7874 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase")
 (:VAR MV7872 :ISA BIO-ENTITY :NAME "fakeprotein"))

___________________
181: "Is hmga2 a kinase"

                    SOURCE-START
e9    BE            1 "Is hmga2 a kinase" 6
                    END-OF-SOURCE
("Is hmga2 a kinase" (:VAR MV7880 :ISA POLAR-QUESTION :STATEMENT MV7877)
 (:VAR MV7877 :ISA BE :PREDICATE MV7879 :SUBJECT MV7876)
 (:VAR MV7879 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase")
 (:VAR MV7876 :ISA PROTEIN :RAW-TEXT "hmga2" :UID "UP:P52926" :NAME
  "HMGA2_HUMAN"))

___________________
182: "Is stat3 an apoptotic regulator?"

                    SOURCE-START
e12   BE            1 "Is stat3 an apoptotic regulator" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 an apoptotic regulator?"
 (:VAR MV7887 :ISA POLAR-QUESTION :STATEMENT MV7882)
 (:VAR MV7882 :ISA BE :PREDICATE MV7886 :SUBJECT MV7881)
 (:VAR MV7886 :ISA REGULATOR :HAS-DETERMINER "AN" :PREDICATION MV7884 :RAW-TEXT
  "regulator")
 (:VAR MV7884 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV7881 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
183: "Is stat3 involved in any apoptotic pathways?"

                    SOURCE-START
e16   INVOLVE       1 "Is stat3 involved in any apoptotic pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in any apoptotic pathways?"
 (:VAR MV7898 :ISA POLAR-QUESTION :STATEMENT MV7896)
 (:VAR MV7896 :ISA INVOLVE :PARTICIPANT MV7888 :CONTEXT-OR-THEME MV7895)
 (:VAR MV7888 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7895 :ISA PATHWAY :QUANTIFIER MV7892 :PROCESS MV7893 :RAW-TEXT
  "pathways")
 (:VAR MV7892 :ISA ANY :WORD "any")
 (:VAR MV7893 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
184: "Is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e14   INVOLVE       1 "Is stat3 involved in apoptotic regulation" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in apoptotic regulation?"
 (:VAR MV7908 :ISA POLAR-QUESTION :STATEMENT MV7906)
 (:VAR MV7906 :ISA INVOLVE :PARTICIPANT MV7899 :THEME MV7905)
 (:VAR MV7899 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7905 :ISA REGULATE :AGENT MV7903 :RAW-TEXT "regulation")
 (:VAR MV7903 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
185: "Is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e13   INVOLVE       1 "Is stat3 involved in regulating apoptosis" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 involved in regulating apoptosis?"
 (:VAR MV7917 :ISA POLAR-QUESTION :STATEMENT MV7915)
 (:VAR MV7915 :ISA INVOLVE :PARTICIPANT MV7909 :THEME MV7913)
 (:VAR MV7909 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7913 :ISA REGULATE :AFFECTED-PROCESS MV7914 :PROGRESSIVE "PROGRESSIVE"
  :RAW-TEXT "regulating")
 (:VAR MV7914 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
186: "What proteins does MEK phosphorylate?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "What proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does MEK phosphorylate?"
 (:VAR MV7923 :ISA PHOSPHORYLATE :AMINO-ACID MV7919 :AGENT MV7921 :RAW-TEXT
  "phosphorylate")
 (:VAR MV7919 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV7921 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
187: "Is the first one a kinase"

                    SOURCE-START
e0    BE            1 "Is " 2
e11   NUMBER        2 "the first one " 5
e12   KINASE        5 "a kinase" 7
                    END-OF-SOURCE


___________________
188: "Is there a drug that targets BRAF?"

                    SOURCE-START
e19   THERE-EXISTS  1 "Is there a drug that targets BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there a drug that targets BRAF?"
 (:VAR MV7943 :ISA POLAR-QUESTION :STATEMENT MV7942)
 (:VAR MV7942 :ISA THERE-EXISTS :VALUE MV7937 :PREDICATE MV7934)
 (:VAR MV7937 :ISA DRUG :PREDICATION MV7940 :HAS-DETERMINER "A" :RAW-TEXT
  "drug")
 (:VAR MV7940 :ISA TARGET :AGENT MV7940 :THAT-REL T :OBJECT MV7941 :PRESENT
  "PRESENT" :RAW-TEXT "targets")
 (:VAR MV7941 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV7934 :ISA SYNTACTIC-THERE))

___________________
189: "Is there an apoptotic pathway regulated by stat3?"

                    SOURCE-START
e22   THERE-EXISTS  1 "Is there an apoptotic pathway regulated by stat3" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway regulated by stat3?"
 (:VAR MV7956 :ISA POLAR-QUESTION :STATEMENT MV7954)
 (:VAR MV7954 :ISA THERE-EXISTS :VALUE MV7951 :PREDICATE MV7946)
 (:VAR MV7951 :ISA PATHWAY :PREDICATION MV7952 :HAS-DETERMINER "AN" :PROCESS
  MV7949 :RAW-TEXT "pathway")
 (:VAR MV7952 :ISA REGULATE :AFFECTED-PROCESS MV7952 :AGENT MV7944 :PAST "PAST"
  :RAW-TEXT "regulated")
 (:VAR MV7944 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7949 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV7946 :ISA SYNTACTIC-THERE))

___________________
190: "Is there an apoptotic pathway that is regulated by stat3?"

                    SOURCE-START
e27   THERE-EXISTS  1 "Is there an apoptotic pathway that is regulated by stat3" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is there an apoptotic pathway that is regulated by stat3?"
 (:VAR MV7972 :ISA POLAR-QUESTION :STATEMENT MV7969)
 (:VAR MV7969 :ISA THERE-EXISTS :VALUE MV7964 :PREDICATE MV7959)
 (:VAR MV7964 :ISA PATHWAY :PREDICATION MV7970 :HAS-DETERMINER "AN" :PROCESS
  MV7962 :RAW-TEXT "pathway")
 (:VAR MV7970 :ISA REGULATE :AFFECTED-PROCESS MV7970 :THAT-REL T :AGENT MV7957
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV7957 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7962 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV7959 :ISA SYNTACTIC-THERE))

___________________
191: "Let me know if there are any apoptotic genes stat3 regulates"

                    SOURCE-START
e25   LET           1 "Let me know if there are any apoptotic genes stat3 regulates" 13
                    END-OF-SOURCE
("Let me know if there are any apoptotic genes stat3 regulates"
 (:VAR MV7974 :ISA LET :COMPLEMENT MV7988 :PRESENT "PRESENT")
 (:VAR MV7988 :ISA KNOW :AGENT MV7975 :STATEMENT MV7987 :PRESENT "PRESENT")
 (:VAR MV7975 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV7987 :ISA WH-QUESTION :STATEMENT MV7986 :WH IF)
 (:VAR MV7986 :ISA THERE-EXISTS :VALUE MV7984 :PREDICATE MV7980)
 (:VAR MV7984 :ISA GENE :PREDICATION MV7985 :QUANTIFIER MV7981 :PREDICATION
  MV7982 :RAW-TEXT "genes")
 (:VAR MV7985 :ISA REGULATE :AGENT MV7973 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV7973 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV7981 :ISA ANY :WORD "any")
 (:VAR MV7982 :ISA APOPTOSIS :RAW-TEXT "apoptotic") (:VAR MV7980 :ISA BE))

___________________
192: "Let me know which genes stat3 regulates"

                    SOURCE-START
e12   LET           1 "Let me know which genes " 6
e9    REGULATE      6 "stat3 regulates" 9
                    END-OF-SOURCE


___________________
193: "List all the genes regulated by elk1 and srf?"

                    SOURCE-START
e17   LIST          1 "List all the genes regulated by elk1 and srf" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("List all the genes regulated by elk1 and srf?"
 (:VAR MV7998 :ISA LIST :THEME MV8001 :PRESENT "PRESENT")
 (:VAR MV8001 :ISA GENE :PREDICATION MV8002 :QUANTIFIER MV7999 :HAS-DETERMINER
  "THE" :RAW-TEXT "genes")
 (:VAR MV8002 :ISA REGULATE :OBJECT MV8002 :AGENT MV8006 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV8006 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL)
 (:VAR MV7999 :ISA ALL :WORD "all"))

___________________
194: "List genes regulated by elk1 and srf"

                    SOURCE-START
e12   LIST          1 "List genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("List genes regulated by elk1 and srf"
 (:VAR MV8009 :ISA LIST :THEME MV8010 :PRESENT "PRESENT")
 (:VAR MV8010 :ISA GENE :PREDICATION MV8011 :RAW-TEXT "genes")
 (:VAR MV8011 :ISA REGULATE :OBJECT MV8011 :AGENT MV8015 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV8015 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL))

___________________
195: "List some genes that are regulated by elk1 and srf"

                    SOURCE-START
e21   LIST          1 "List some genes that are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("List some genes that are regulated by elk1 and srf"
 (:VAR MV8018 :ISA LIST :THEME MV8020 :PRESENT "PRESENT")
 (:VAR MV8020 :ISA GENE :PREDICATION MV8028 :QUANTIFIER MV8019 :RAW-TEXT
  "genes")
 (:VAR MV8028 :ISA REGULATE :OBJECT MV8028 :THAT-REL T :AGENT MV8027 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV8027 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL)
 (:VAR MV8019 :ISA SOME :WORD "some"))

___________________
196: "List the evidence that kras decreases frizzled8."

                    SOURCE-START
e15   LIST          1 "List the evidence that kras decreases frizzled8" 9
                    PERIOD
                    END-OF-SOURCE
("List the evidence that kras decreases frizzled8."
 (:VAR MV8031 :ISA LIST :THEME MV8037 :PRESENT "PRESENT")
 (:VAR MV8037 :ISA EVIDENCE :STATEMENT MV8036 :HAS-DETERMINER "THE")
 (:VAR MV8036 :ISA DECREASE :AGENT MV8035 :OBJECT MV8030 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV8035 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV8030 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
197: "Name genes regulated by elk1 and srf"

                    SOURCE-START
e14   NAME-SOMETHING  1 "Name genes regulated by elk1 and srf" 9
                    END-OF-SOURCE
("Name genes regulated by elk1 and srf"
 (:VAR MV8039 :ISA NAME-SOMETHING :PATIENT MV8042 :PRESENT "PRESENT")
 (:VAR MV8042 :ISA GENE :PREDICATION MV8043 :RAW-TEXT "genes")
 (:VAR MV8043 :ISA REGULATE :OBJECT MV8043 :AGENT MV8047 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV8047 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL))

___________________
198: "Of the apoptotic genes regulated by stat3, which are active in the liver?"

                    SOURCE-START
e34   COPULAR-PREDICATION 1 "Of the apoptotic genes regulated by stat3, which are active in the liver" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes regulated by stat3, which are active in the liver?"
 (:VAR MV8064 :ISA COPULAR-PREDICATION :ITEM MV8054 :VALUE MV8059 :PREDICATE
  MV8058)
 (:VAR MV8054 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV8055
  :HAS-DETERMINER "THE" :PREDICATION MV8052 :RAW-TEXT "genes")
 (:VAR MV8055 :ISA REGULATE :OBJECT MV8055 :AGENT MV8049 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV8049 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV8052 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV8059 :ISA ACTIVE :ORGAN MV8062)
 (:VAR MV8062 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV8058 :ISA BE :PRESENT "PRESENT"))

___________________
199: "Of the apoptotic genes stat3 regulates, which are active in the liver?"

                    SOURCE-START
e31   COPULAR-PREDICATION 1 "Of the apoptotic genes stat3 regulates, which are active in the liver" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the apoptotic genes stat3 regulates, which are active in the liver?"
 (:VAR MV8082 :ISA COPULAR-PREDICATION :ITEM MV8073 :VALUE MV8077 :PREDICATE
  MV8076)
 (:VAR MV8073 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV8074
  :HAS-DETERMINER "THE" :PREDICATION MV8071 :RAW-TEXT "genes")
 (:VAR MV8074 :ISA REGULATE :AGENT MV8068 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV8068 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV8071 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV8077 :ISA ACTIVE :ORGAN MV8080)
 (:VAR MV8080 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV8076 :ISA BE :PRESENT "PRESENT"))

___________________
200: "Of the genes stat3 regulates in the liver, which are apoptotic?"

                    SOURCE-START
e29   COPULAR-PREDICATION 1 "Of the genes stat3 regulates in the liver, which are apoptotic" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the genes stat3 regulates in the liver, which are apoptotic?"
 (:VAR MV8097 :ISA COPULAR-PREDICATION :ITEM MV8088 :VALUE MV8095 :PREDICATE
  MV8094)
 (:VAR MV8088 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV8089
  :HAS-DETERMINER "THE" :RAW-TEXT "genes")
 (:VAR MV8089 :ISA REGULATE :AGENT MV8085 :ORGAN MV8092 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV8085 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV8092 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV8095 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV8094 :ISA BE :PRESENT "PRESENT"))

___________________
201: "Of the hepatic genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e23   COPULAR-PREDICATION 1 "Of the hepatic genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the hepatic genes stat3 regulates, which are apoptotic?"
 (:VAR MV8111 :ISA COPULAR-PREDICATION :ITEM MV8105 :VALUE MV8109 :PREDICATE
  MV8108)
 (:VAR MV8105 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV8106
  :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV8104 :RAW-TEXT "genes")
 (:VAR MV8106 :ISA REGULATE :AGENT MV8101 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV8101 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV8104 :ISA LIVER) (:VAR MV8109 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV8108 :ISA BE :PRESENT "PRESENT"))

___________________
202: "Of the liver genes stat3 regulates, which are apoptotic?"

                    SOURCE-START
e23   COPULAR-PREDICATION 1 "Of the liver genes stat3 regulates, which are apoptotic" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Of the liver genes stat3 regulates, which are apoptotic?"
 (:VAR MV8124 :ISA COPULAR-PREDICATION :ITEM MV8118 :VALUE MV8122 :PREDICATE
  MV8121)
 (:VAR MV8118 :ISA GENE :HAS-DETERMINER "WHICH" :PREDICATION MV8119
  :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV8117 :RAW-TEXT "genes")
 (:VAR MV8119 :ISA REGULATE :AGENT MV8114 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV8114 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV8117 :ISA LIVER) (:VAR MV8122 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV8121 :ISA BE :PRESENT "PRESENT"))

___________________
203: "Please find pathways involving SRF"

                    SOURCE-START
e7    BIO-FIND      1 "Please find pathways involving SRF" 6
                    END-OF-SOURCE
("Please find pathways involving SRF"
 (:VAR MV8128 :ISA BIO-FIND :OBJECT MV8129 :PRESENT "PRESENT" :ADVERB MV8127
  :RAW-TEXT "find")
 (:VAR MV8129 :ISA PATHWAY :PREDICATION MV8130 :RAW-TEXT "pathways")
 (:VAR MV8130 :ISA INVOLVE :PARTICIPANT MV8130 :THEME MV8131 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV8131 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV8127 :ISA PLEASE))

___________________
204: "Please show me KEGG pathways involving SRF"

                    SOURCE-START
e13   SHOW          1 "Please show me KEGG pathways involving SRF" 8
                    END-OF-SOURCE
("Please show me KEGG pathways involving SRF"
 (:VAR MV8133 :ISA SHOW :STATEMENT-OR-THEME MV8136 :BENEFICIARY MV8134 :PRESENT
  "PRESENT" :ADVERB MV8132)
 (:VAR MV8136 :ISA PATHWAY :PREDICATION MV8137 :MODIFIER MV8135 :RAW-TEXT
  "pathways")
 (:VAR MV8137 :ISA INVOLVE :PARTICIPANT MV8137 :THEME MV8138 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV8138 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV8135 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV8134 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV8132 :ISA PLEASE))

___________________
205: "Please show me pathways involving SRF"

                    SOURCE-START
e11   SHOW          1 "Please show me pathways involving SRF" 7
                    END-OF-SOURCE
("Please show me pathways involving SRF"
 (:VAR MV8140 :ISA SHOW :STATEMENT-OR-THEME MV8142 :BENEFICIARY MV8141 :PRESENT
  "PRESENT" :ADVERB MV8139)
 (:VAR MV8142 :ISA PATHWAY :PREDICATION MV8143 :RAW-TEXT "pathways")
 (:VAR MV8143 :ISA INVOLVE :PARTICIPANT MV8143 :THEME MV8144 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV8144 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV8141 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV8139 :ISA PLEASE))

___________________
206: "MEK activates ERK"

                    SOURCE-START
e4    BIO-ACTIVATE  1 "MEK activates ERK" 4
                    END-OF-SOURCE
("MEK activates ERK"
 (:VAR MV8146 :ISA BIO-ACTIVATE :AGENT MV8145 :OBJECT MV8147 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV8145 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV8147 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
207: "Remove the fact that MEK activates ERK"

                    SOURCE-START
e14   REMOVE        1 "Remove the fact that MEK activates ERK" 8
                    END-OF-SOURCE
("Remove the fact that MEK activates ERK"
 (:VAR MV8148 :ISA REMOVE :OBJECT MV8155 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV8155 :ISA FACT :STATEMENT MV8153 :HAS-DETERMINER "THE")
 (:VAR MV8153 :ISA BIO-ACTIVATE :AGENT MV8152 :OBJECT MV8154 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV8152 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV8154 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
208: "Let's build a model"

                    SOURCE-START
e1    PROPOSAL-MARKER 1 "Let's " 4
e2    BUILD         4 "build " 5
e6    MODEL         5 "a model" 7
                    END-OF-SOURCE


___________________
209: "Inactive MEK activates ERK"

                    SOURCE-START
e6    BIO-ACTIVATE  1 "Inactive MEK activates ERK" 5
                    END-OF-SOURCE
("Inactive MEK activates ERK"
 (:VAR MV8162 :ISA BIO-ACTIVATE :AGENT MV8161 :OBJECT MV8163 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV8161 :ISA PROTEIN-FAMILY :PREDICATION MV8160 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV8160 :ISA INACTIVE)
 (:VAR MV8163 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
210: "Remove the fact that inactive MEK activates ERK"

                    SOURCE-START
e16   REMOVE        1 "Remove the fact that inactive MEK activates ERK" 9
                    END-OF-SOURCE
("Remove the fact that inactive MEK activates ERK"
 (:VAR MV8164 :ISA REMOVE :OBJECT MV8172 :PRESENT "PRESENT" :RAW-TEXT "Remove")
 (:VAR MV8172 :ISA FACT :STATEMENT MV8170 :HAS-DETERMINER "THE")
 (:VAR MV8170 :ISA BIO-ACTIVATE :AGENT MV8169 :OBJECT MV8171 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV8169 :ISA PROTEIN-FAMILY :PREDICATION MV8168 :RAW-TEXT "MEK" :NAME
  "MEK" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV8168 :ISA INACTIVE)
 (:VAR MV8171 :ISA PROTEIN-FAMILY :RAW-TEXT "ERK" :NAME "ERK" :COUNT 7
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
211: "Show immune system pathways"

                    SOURCE-START
e5    SHOW          1 "Show immune system pathways" 5
                    END-OF-SOURCE
("Show immune system pathways"
 (:VAR MV8174 :ISA SHOW :STATEMENT-OR-THEME MV8175 :PRESENT "PRESENT")
 (:VAR MV8175 :ISA PATHWAY :NON-CELLULAR-LOCATION MV8173 :RAW-TEXT "pathways")
 (:VAR MV8173 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
212: "Show me pathways involving SRF"

                    SOURCE-START
e9    SHOW          1 "Show me pathways involving SRF" 6
                    END-OF-SOURCE
("Show me pathways involving SRF"
 (:VAR MV8176 :ISA SHOW :STATEMENT-OR-THEME MV8178 :BENEFICIARY MV8177 :PRESENT
  "PRESENT")
 (:VAR MV8178 :ISA PATHWAY :PREDICATION MV8179 :RAW-TEXT "pathways")
 (:VAR MV8179 :ISA INVOLVE :PARTICIPANT MV8179 :THEME MV8180 :PROGRESSIVE
  "PROGRESSIVE")
 (:VAR MV8180 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV8177 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
213: "Show me pathways with SRF in them"

                    SOURCE-START
e13   SHOW          1 "Show me pathways with SRF in them" 8
                    END-OF-SOURCE
("Show me pathways with SRF in them"
 (:VAR MV8181 :ISA SHOW :STATEMENT-OR-THEME MV8183 :BENEFICIARY MV8182 :PRESENT
  "PRESENT")
 (:VAR MV8183 :ISA PATHWAY :PATHWAYCOMPONENT MV8185 :RAW-TEXT "pathways")
 (:VAR MV8185 :ISA PROTEIN
  :CELL-LINE-OR-CELL-TYPE-OR-CELLULAR-LOCATION-OR-CONTEXT-OR-ORGAN-OR-PREPARATION-OR-ORGANISM-OR-IN-EQUILIBRIUM-WITH-OR-COMPLEX-OR-EQUILIBRIUM-STATE-OR-STATE-OR-IN-PATHWAY
  MV8187 :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV8187 :ISA PRONOUN/PLURAL :WORD "them")
 (:VAR MV8182 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
214: "Show me pathways with SRF"

                    SOURCE-START
e8    SHOW          1 "Show me pathways with SRF" 6
                    END-OF-SOURCE
("Show me pathways with SRF"
 (:VAR MV8190 :ISA SHOW :STATEMENT-OR-THEME MV8192 :BENEFICIARY MV8191 :PRESENT
  "PRESENT")
 (:VAR MV8192 :ISA PATHWAY :PATHWAYCOMPONENT MV8194 :RAW-TEXT "pathways")
 (:VAR MV8194 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV8191 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
215: "Show me the evidence that kras decreases frizzled8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras decreases frizzled8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras decreases frizzled8."
 (:VAR MV8197 :ISA SHOW :STATEMENT-OR-THEME MV8204 :BENEFICIARY MV8198 :PRESENT
  "PRESENT")
 (:VAR MV8204 :ISA EVIDENCE :STATEMENT MV8203 :HAS-DETERMINER "THE")
 (:VAR MV8203 :ISA DECREASE :AGENT MV8202 :OBJECT MV8196 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV8202 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV8196 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV8198 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
216: "Show me the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e25   SHOW          1 "Show me the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV8206 :ISA SHOW :STATEMENT-OR-THEME MV8217 :BENEFICIARY MV8207 :PRESENT
  "PRESENT")
 (:VAR MV8217 :ISA EVIDENCE :STATEMENT MV8212 :HAS-DETERMINER "THE")
 (:VAR MV8212 :ISA DECREASE :AGENT MV8211 :AFFECTED-PROCESS-OR-OBJECT MV8214
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV8211 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV8214 :ISA BIO-AMOUNT :MEASURED-ITEM MV8205 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV8205 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV8207 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
217: "Show me the evidence that kras regulates frizzled8?"

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Show me the evidence that kras regulates frizzled8?"
 (:VAR MV8219 :ISA SHOW :STATEMENT-OR-THEME MV8226 :BENEFICIARY MV8220 :PRESENT
  "PRESENT")
 (:VAR MV8226 :ISA EVIDENCE :STATEMENT MV8225 :HAS-DETERMINER "THE")
 (:VAR MV8225 :ISA REGULATE :AGENT MV8224 :OBJECT MV8218 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV8224 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV8218 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV8220 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
218: "Show transcription factors shared by elk1 and srf"

                    SOURCE-START
e13   SHOW          1 "Show transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Show transcription factors shared by elk1 and srf"
 (:VAR MV8229 :ISA SHOW :STATEMENT-OR-THEME MV8227 :PRESENT "PRESENT")
 (:VAR MV8227 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV8230 :RAW-TEXT
  "transcription factors")
 (:VAR MV8230 :ISA SHARE :OBJECT MV8230 :PARTICIPANT MV8234 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV8234 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL))

___________________
219: "Tell me how stat3 regulates apoptosis"

                    SOURCE-START
e11   TELL          1 "Tell me how stat3 regulates apoptosis" 8
                    END-OF-SOURCE
("Tell me how stat3 regulates apoptosis"
 (:VAR MV8243 :ISA TELL :STATEMENT MV8242 :BENEFICIARY MV8238 :PRESENT
  "PRESENT")
 (:VAR MV8242 :ISA WH-QUESTION :STATEMENT MV8240 :VAR NIL :WH HOW)
 (:VAR MV8240 :ISA REGULATE :AGENT MV8236 :AFFECTED-PROCESS MV8241 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV8236 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV8241 :ISA APOPTOSIS :RAW-TEXT "apoptosis")
 (:VAR MV8238 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
220: "Tell me what apoptotic pathways are regulated by stat3 in the liver"

                    SOURCE-START
e27   TELL          1 "Tell me what apoptotic pathways are regulated by stat3 in the liver" 14
                    END-OF-SOURCE
("Tell me what apoptotic pathways are regulated by stat3 in the liver"
 (:VAR MV8261 :ISA TELL :STATEMENT MV8257 :STATEMENT MV8246 :PRESENT "PRESENT")
 (:VAR MV8257 :ISA REGULATE :AFFECTED-PROCESS MV8250 :AGENT MV8244 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV8250 :ISA PATHWAY :HAS-DETERMINER "WHAT" :PROCESS MV8248 :RAW-TEXT
  "pathways")
 (:VAR MV8248 :ISA APOPTOSIS :RAW-TEXT "apoptotic")
 (:VAR MV8244 :ISA PROTEIN :ORGAN MV8256 :RAW-TEXT "stat3" :UID "UP:P40763"
  :NAME "STAT3_HUMAN")
 (:VAR MV8256 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV8246 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
221: "Tell me what genes elk1 and srf regulate"

                    SOURCE-START
e15   TELL          1 "Tell me what genes elk1 and srf regulate" 10
                    END-OF-SOURCE
("Tell me what genes elk1 and srf regulate"
 (:VAR MV8271 :ISA TELL :STATEMENT MV8266 :BENEFICIARY MV8264 :PRESENT
  "PRESENT")
 (:VAR MV8266 :ISA GENE :PREDICATION MV8269 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV8269 :ISA REGULATE :AGENT MV8270 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV8270 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL)
 (:VAR MV8264 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
222: "Tell me what pathways are regulated by stat3 in the liver"

                    SOURCE-START
e24   TELL          1 "Tell me what pathways are regulated by stat3 in the liver" 13
                    END-OF-SOURCE
("Tell me what pathways are regulated by stat3 in the liver"
 (:VAR MV8287 :ISA TELL :STATEMENT MV8283 :STATEMENT MV8274 :PRESENT "PRESENT")
 (:VAR MV8283 :ISA REGULATE :AFFECTED-PROCESS MV8276 :AGENT MV8272 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV8276 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV8272 :ISA PROTEIN :ORGAN MV8282 :RAW-TEXT "stat3" :UID "UP:P40763"
  :NAME "STAT3_HUMAN")
 (:VAR MV8282 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV8274 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
223: "What KEGG pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What KEGG pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve immune signaling?"
 (:VAR MV8291 :ISA INVOLVE :PARTICIPANT MV8290 :THEME MV8293 :PRESENT
  "PRESENT")
 (:VAR MV8290 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV8289 :RAW-TEXT
  "pathways")
 (:VAR MV8289 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV8293 :ISA SIGNAL :MODIFIER MV8292 :RAW-TEXT "signaling")
 (:VAR MV8292 :ISA IMMUNE))

___________________
224: "What MAP kinase phosphatases are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatases are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatases are regulated by ELK1?"
 (:VAR MV8301 :ISA REGULATE :OBJECT MV8297 :AGENT MV8295 :RAW-TEXT "regulated")
 (:VAR MV8297 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV8294 :RAW-TEXT
  "phosphatases")
 (:VAR MV8294 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME
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
 (:VAR MV8295 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
225: "What apoptotic genes are downstream of stat3?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What apoptotic genes are downstream of stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes are downstream of stat3?"
 (:VAR MV8312 :ISA COPULAR-PREDICATION :ITEM MV8307 :VALUE MV8309 :PREDICATE
  MV8308)
 (:VAR MV8307 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV8306 :RAW-TEXT
  "genes")
 (:VAR MV8306 :ISA APOPTOTIC)
 (:VAR MV8309 :ISA DOWNSTREAM :PARTICIPANT-OR-RELATIVE-TO MV8303)
 (:VAR MV8303 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV8308 :ISA BE))

___________________
226: "What apoptotic genes does stat3 regulate in the liver?"

                    SOURCE-START
e20   REGULATE      1 "What apoptotic genes does stat3 regulate in the liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate in the liver?"
 (:VAR MV8323 :ISA REGULATE :OBJECT MV8317 :AGENT MV8313 :ORGAN MV8322
  :RAW-TEXT "regulate")
 (:VAR MV8317 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV8316 :RAW-TEXT
  "genes")
 (:VAR MV8316 :ISA APOPTOTIC)
 (:VAR MV8313 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV8322 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
227: "What apoptotic genes does stat3 regulate?"

                    SOURCE-START
e12   REGULATE      1 "What apoptotic genes does stat3 regulate" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes does stat3 regulate?"
 (:VAR MV8332 :ISA REGULATE :OBJECT MV8329 :AGENT MV8325 :RAW-TEXT "regulate")
 (:VAR MV8329 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV8328 :RAW-TEXT
  "genes")
 (:VAR MV8328 :ISA APOPTOTIC)
 (:VAR MV8325 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
228: "What apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e16   COPULAR-PREDICATION 1 "What apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic genes is stat3 upstream of?"
 (:VAR MV8342 :ISA COPULAR-PREDICATION :ITEM MV8333 :VALUE MV8339 :PREDICATE
  MV8338)
 (:VAR MV8333 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV8339 :ISA UPSTREAM :PARTICIPANT-OR-RELATIVE-TO MV8337)
 (:VAR MV8337 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV8336 :RAW-TEXT
  "genes")
 (:VAR MV8336 :ISA APOPTOTIC) (:VAR MV8338 :ISA BE))

___________________
229: "What apoptotic pathways involve stat3?"

                    SOURCE-START
e10   INVOLVE       1 "What apoptotic pathways involve stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What apoptotic pathways involve stat3?"
 (:VAR MV8348 :ISA INVOLVE :PARTICIPANT MV8347 :THEME MV8343 :PRESENT
  "PRESENT")
 (:VAR MV8347 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV8346 :RAW-TEXT
  "pathways")
 (:VAR MV8346 :ISA APOPTOTIC)
 (:VAR MV8343 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
230: "What are Selumetinib's targets?"

                    SOURCE-START
e8    BE            1 "What are Selumetinib's targets" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are Selumetinib's targets?"
 (:VAR MV8355 :ISA BE :PREDICATE MV8353 :SUBJECT MV8349)
 (:VAR MV8353 :ISA TARGET-PROTEIN :AGENT MV8352 :RAW-TEXT "targets")
 (:VAR MV8352 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV8349 :ISA WHAT))

___________________
231: "What are some JAK1 inhibitors?"

                    SOURCE-START
e8    BE            1 "What are some JAK1 inhibitors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some JAK1 inhibitors?"
 (:VAR MV8361 :ISA BE :PREDICATE MV8360 :SUBJECT MV8357)
 (:VAR MV8360 :ISA INHIBITOR :QUANTIFIER MV8359 :PROTEIN MV8356 :RAW-TEXT
  "inhibitors")
 (:VAR MV8359 :ISA SOME :WORD "some")
 (:VAR MV8356 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV8357 :ISA WHAT))

___________________
232: "What are some drugs that inhibit BRAF?"

                    SOURCE-START
e13   BE            1 "What are some drugs that inhibit BRAF" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some drugs that inhibit BRAF?"
 (:VAR MV8369 :ISA BE :PREDICATE MV8365 :SUBJECT MV8362)
 (:VAR MV8365 :ISA DRUG :PREDICATION MV8367 :QUANTIFIER MV8364 :RAW-TEXT
  "drugs")
 (:VAR MV8367 :ISA INHIBIT :AGENT MV8367 :THAT-REL T :OBJECT MV8368 :PRESENT
  "PRESENT" :RAW-TEXT "inhibit")
 (:VAR MV8368 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN")
 (:VAR MV8364 :ISA SOME :WORD "some") (:VAR MV8362 :ISA WHAT))

___________________
233: "What are some genes in the MAPK signaling pathway?"

                    SOURCE-START
e16   BE            1 "What are some genes in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some genes in the MAPK signaling pathway?"
 (:VAR MV8379 :ISA BE :PREDICATE MV8374 :SUBJECT MV8371)
 (:VAR MV8374 :ISA GENE :CONTEXT MV8370 :QUANTIFIER MV8373 :RAW-TEXT "genes")
 (:VAR MV8370 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV8377
  :RAW-TEXT "signaling pathway")
 (:VAR MV8377 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV8373 :ISA SOME :WORD "some") (:VAR MV8371 :ISA WHAT))

___________________
234: "What are some proteins in the MAPK signaling pathway?"

                    SOURCE-START
e16   BE            1 "What are some proteins in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some proteins in the MAPK signaling pathway?"
 (:VAR MV8389 :ISA BE :PREDICATE MV8384 :SUBJECT MV8381)
 (:VAR MV8384 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV8380 :QUANTIFIER MV8383
  :RAW-TEXT "proteins")
 (:VAR MV8380 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV8387
  :RAW-TEXT "signaling pathway")
 (:VAR MV8387 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV8383 :ISA SOME :WORD "some") (:VAR MV8381 :ISA WHAT))

___________________
235: "What are the members of RAS?"

                    SOURCE-START
e11   BE            1 "What are the members of RAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the members of RAS?"
 (:VAR MV8397 :ISA BE :PREDICATE MV8393 :SUBJECT MV8390)
 (:VAR MV8393 :ISA MEMBER :SET MV8395 :HAS-DETERMINER "THE")
 (:VAR MV8395 :ISA PROTEIN-FAMILY :RAW-TEXT "RAS" :NAME "Ras" :COUNT 3
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "RASN_HUMAN") (:UID "UP:P01111"))
   (PROTEIN (:NAME "RASK_HUMAN") (:UID "UP:P01116"))
   (PROTEIN (:NAME "RASH_HUMAN") (:UID "UP:P01112")))
  :UID "FA:03663")
 (:VAR MV8390 :ISA WHAT))

___________________
236: "What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e27   BE            1 "What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV8411 :ISA BE :PREDICATE MV8404 :SUBJECT MV8401)
 (:VAR MV8404 :ISA MICRO-RNA :PREDICATION MV8406 :HAS-DETERMINER "THE"
  :RAW-TEXT "miRNAS")
 (:VAR MV8406 :ISA REGULATE :AGENT MV8406 :THAT-REL T :OBJECT MV8410 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV8410 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS NIL)
 (:VAR MV8401 :ISA WHAT))

___________________
237: "What are the regulators of MAPPK14 in bladder"

                    SOURCE-START
e17   BE            1 "What are the regulators of MAPPK14 in bladder" 10
                    END-OF-SOURCE
("What are the regulators of MAPPK14 in bladder"
 (:VAR MV8422 :ISA BE :PREDICATE MV8416 :SUBJECT MV8413)
 (:VAR MV8416 :ISA REGULATOR :THEME MV8412 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV8412 :ISA BIO-ENTITY :ORGAN MV8419 :NAME "MAPPK14")
 (:VAR MV8419 :ISA BIO-ORGAN :NAME "bladder" :UID "BTO:0001418")
 (:VAR MV8413 :ISA WHAT))

___________________
238: "What are the regulators of SMURF2 in liver?"

                    SOURCE-START
e17   BE            1 "What are the regulators of SMURF2 in liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2 in liver?"
 (:VAR MV8433 :ISA BE :PREDICATE MV8427 :SUBJECT MV8424)
 (:VAR MV8427 :ISA REGULATOR :THEME MV8423 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV8423 :ISA PROTEIN :ORGAN MV8430 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV8430 :ISA LIVER) (:VAR MV8424 :ISA WHAT))

___________________
239: "What are the regulators of SMURF2?"

                    SOURCE-START
e12   BE            1 "What are the regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of SMURF2?"
 (:VAR MV8441 :ISA BE :PREDICATE MV8438 :SUBJECT MV8435)
 (:VAR MV8438 :ISA REGULATOR :THEME MV8434 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV8434 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN")
 (:VAR MV8435 :ISA WHAT))

___________________
240: "What are the regulators of c-fos in lung?"

                    SOURCE-START
e17   BE            1 "What are the regulators of c-fos in lung" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the regulators of c-fos in lung?"
 (:VAR MV8452 :ISA BE :PREDICATE MV8446 :SUBJECT MV8443)
 (:VAR MV8446 :ISA REGULATOR :THEME MV8442 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV8442 :ISA PROTEIN :ORGAN MV8449 :RAW-TEXT "c-fos" :UID "UP:P01100"
  :NAME "FOS_HUMAN")
 (:VAR MV8449 :ISA LUNG) (:VAR MV8443 :ISA WHAT))

___________________
241: "What are the regulators of mapk14 in bladeeer"

                    SOURCE-START
e2    WHAT          1 "What " 2
e3    BE            2 "are " 3
e15   REGULATOR     3 "the regulators of mapk14 " 8
e13   IN            8 "in bladeeer" 10
                    END-OF-SOURCE


___________________
242: "What are the regulators of mapk14"

                    SOURCE-START
e12   BE            1 "What are the regulators of mapk14" 8
                    END-OF-SOURCE
("What are the regulators of mapk14"
 (:VAR MV8470 :ISA BE :PREDICATE MV8467 :SUBJECT MV8464)
 (:VAR MV8467 :ISA REGULATOR :THEME MV8463 :HAS-DETERMINER "THE" :RAW-TEXT
  "regulators")
 (:VAR MV8463 :ISA PROTEIN :RAW-TEXT "mapk14" :UID "UP:Q16539" :NAME
  "MK14_HUMAN")
 (:VAR MV8464 :ISA WHAT))

___________________
243: "What are the targets of PLX-4720?"

                    SOURCE-START
e13   BE            1 "What are the targets of PLX-4720" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the targets of PLX-4720?"
 (:VAR MV8479 :ISA BE :PREDICATE MV8475 :SUBJECT MV8472)
 (:VAR MV8475 :ISA TARGET-PROTEIN :MOLECULE-TYPE MV8471 :HAS-DETERMINER "THE"
  :RAW-TEXT "targets")
 (:VAR MV8471 :ISA MOLECULE :RAW-TEXT "PLX-4720" :UID "PCID:24180719")
 (:VAR MV8472 :ISA WHAT))

___________________
244: "What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e6    WHAT          1 "What " 2
e7    BE            2 "are " 3
e27   COPULAR-PREDICATION 3 "the transcription factors in common to the SRF, HRAS, and elk1 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
245: "What are the transcription factors that regulate EELK1 and SRF?"

                    SOURCE-START
e19   BE            1 "What are the transcription factors that regulate EELK1 and SRF" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EELK1 and SRF?"
 (:VAR MV8505 :ISA BE :PREDICATE MV8495 :SUBJECT MV8497)
 (:VAR MV8495 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV8501 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV8501 :ISA REGULATE :AGENT MV8501 :THAT-REL T :OBJECT MV8504 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV8504 :ISA COLLECTION :RAW-TEXT "EELK1 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL)
 (:VAR MV8497 :ISA WHAT))

___________________
246: "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"

                    SOURCE-START
e28   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
 (:VAR MV8519 :ISA BE :PREDICATE MV8506 :SUBJECT MV8510)
 (:VAR MV8506 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV8514 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV8514 :ISA REGULATE :AGENT MV8514 :THAT-REL T :OBJECT MV8518 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV8518 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS NIL)
 (:VAR MV8510 :ISA WHAT))

___________________
247: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e28   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV8533 :ISA BE :PREDICATE MV8520 :SUBJECT MV8524)
 (:VAR MV8520 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV8528 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV8528 :ISA REGULATE :AGENT MV8528 :THAT-REL T :OBJECT MV8532 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV8532 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS NIL)
 (:VAR MV8524 :ISA WHAT))

___________________
248: "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"

                    SOURCE-START
e24   BE            1 "What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
 (:VAR MV8547 :ISA BE :PREDICATE MV8541 :SUBJECT MV8537)
 (:VAR MV8541 :ISA REGULATOR :THEME MV8545 :HAS-DETERMINER "THE" :PREDICATION
  MV8540 :RAW-TEXT "regulators")
 (:VAR MV8545 :ISA COLLECTION :RAW-TEXT "CCND1, FOXM1, DHFR, and KLF4" :TYPE
  PROTEIN :NUMBER 4 :ITEMS NIL)
 (:VAR MV8540 :ISA UPSTREAM) (:VAR MV8537 :ISA WHAT))

___________________
249: "What cell cycle genes are regulated by FOS?"

                    SOURCE-START
e14   REGULATE      1 "What cell cycle genes are regulated by FOS" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What cell cycle genes are regulated by FOS?"
 (:VAR MV8555 :ISA REGULATE :OBJECT MV8550 :AGENT MV8554 :RAW-TEXT "regulated")
 (:VAR MV8550 :ISA GENE :HAS-DETERMINER "WHAT" :MODIFIER MV8548 :RAW-TEXT
  "genes")
 (:VAR MV8548 :ISA CELLULAR-PROCESS :RAW-TEXT "cell cycle" :UID "GO:0007049")
 (:VAR MV8554 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
250: "What does ERBB regulate?"

                    SOURCE-START
e6    REGULATE      1 "What does ERBB regulate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does ERBB regulate?"
 (:VAR MV8561 :ISA REGULATE :OBJECT MV8557 :AGENT MV8559 :RAW-TEXT "regulate")
 (:VAR MV8557 :ISA WHAT)
 (:VAR MV8559 :ISA PROTEIN :RAW-TEXT "ERBB" :UID "UP:P00533" :NAME
  "EGFR_HUMAN"))

___________________
251: "What does it regulate in liver"

                    SOURCE-START
e12   REGULATE      1 "What does it regulate in liver" 7
                    END-OF-SOURCE
("What does it regulate in liver"
 (:VAR MV8568 :ISA REGULATE :OBJECT MV8562 :AGENT-OR-CAUSE MV8564 :ORGAN MV8567
  :RAW-TEXT "regulate")
 (:VAR MV8562 :ISA WHAT) (:VAR MV8564 :ISA PRONOUN/INANIMATE :WORD "it")
 (:VAR MV8567 :ISA LIVER))

___________________
252: "What does p53 regulate?"

                    SOURCE-START
e7    REGULATE      1 "What does p53 regulate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What does p53 regulate?"
 (:VAR MV8574 :ISA REGULATE :OBJECT MV8571 :AGENT MV8570 :RAW-TEXT "regulate")
 (:VAR MV8571 :ISA WHAT)
 (:VAR MV8570 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
253: "What does rb1 regulate"

                    SOURCE-START
e7    REGULATE      1 "What does rb1 regulate" 6
                    END-OF-SOURCE
("What does rb1 regulate"
 (:VAR MV8579 :ISA REGULATE :OBJECT MV8576 :AGENT MV8575 :RAW-TEXT "regulate")
 (:VAR MV8576 :ISA WHAT)
 (:VAR MV8575 :ISA PROTEIN :RAW-TEXT "rb1" :UID "UP:P06400" :NAME "RB_HUMAN"))

___________________
254: "What does smad2 regulate"

                    SOURCE-START
e7    REGULATE      1 "What does smad2 regulate" 6
                    END-OF-SOURCE
("What does smad2 regulate"
 (:VAR MV8584 :ISA REGULATE :OBJECT MV8581 :AGENT MV8580 :RAW-TEXT "regulate")
 (:VAR MV8581 :ISA WHAT)
 (:VAR MV8580 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
255: "What does stat regulate"

                    SOURCE-START
e6    REGULATE      1 "What does stat regulate" 5
                    END-OF-SOURCE
("What does stat regulate"
 (:VAR MV8589 :ISA REGULATE :OBJECT MV8585 :AGENT MV8587 :RAW-TEXT "regulate")
 (:VAR MV8585 :ISA WHAT)
 (:VAR MV8587 :ISA PROTEIN :RAW-TEXT "stat" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN"))

___________________
256: "What downregulates fzd8?"

                    SOURCE-START
e5    DOWNREGULATE  1 "What downregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates fzd8?"
 (:VAR MV8593 :ISA WH-QUESTION :STATEMENT MV8592 :VAR NIL :WH WHAT)
 (:VAR MV8592 :ISA DOWNREGULATE :OBJECT MV8590 :PRESENT "PRESENT" :RAW-TEXT
  "downregulates")
 (:VAR MV8590 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
257: "What drug could I use to target pancreatic cancer?"

                    SOURCE-START
e15   DRUG          1 "What drug " 3
e4    MODAL         3 "could " 4
e20   BIO-USE       4 "I use to target pancreatic cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
258: "What drug should I use for pancreatic cancer?"

                    SOURCE-START
e18   BIO-USE       1 "What drug should I use for pancreatic cancer" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What drug should I use for pancreatic cancer?"
 (:VAR MV8618 :ISA BIO-USE :OBJECT MV8609 :MODAL MV8610 :AGENT MV8611 :DISEASE
  MV8607 :MODAL MV8610 :RAW-TEXT "use")
 (:VAR MV8609 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drug")
 (:VAR MV8610 :ISA SHOULD) (:VAR MV8611 :ISA INTERLOCUTOR :NAME "speaker")
 (:VAR MV8607 :ISA CANCER :UID "TS-0739") (:VAR MV8610 :ISA SHOULD))

___________________
259: "What drugs are inhibitors of GRB2?"

                    SOURCE-START
e11   BE            1 "What drugs are inhibitors of GRB2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs are inhibitors of GRB2?"
 (:VAR MV8626 :ISA BE :PREDICATE MV8623 :SUBJECT MV8621)
 (:VAR MV8623 :ISA INHIBITOR :PROTEIN MV8619 :RAW-TEXT "inhibitors")
 (:VAR MV8619 :ISA PROTEIN :RAW-TEXT "GRB2" :UID "UP:P62993" :NAME
  "GRB2_HUMAN")
 (:VAR MV8621 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs"))

___________________
260: "What drugs inhibit MAP2K1?"

                    SOURCE-START
e7    INHIBIT       1 "What drugs inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs inhibit MAP2K1?"
 (:VAR MV8630 :ISA INHIBIT :AGENT MV8629 :OBJECT MV8627 :PRESENT "PRESENT"
  :RAW-TEXT "inhibit")
 (:VAR MV8629 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV8627 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
261: "What drugs regulate BRAF?"

                    SOURCE-START
e6    REGULATE      1 "What drugs regulate BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs regulate BRAF?"
 (:VAR MV8633 :ISA REGULATE :AGENT MV8632 :OBJECT MV8634 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV8632 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV8634 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
262: "What drugs target BRAF?"

                    SOURCE-START
e7    TARGET        1 "What drugs target BRAF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What drugs target BRAF?"
 (:VAR MV8638 :ISA TARGET :AGENT MV8636 :OBJECT MV8639 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV8636 :ISA DRUG :HAS-DETERMINER "WHAT" :RAW-TEXT "drugs")
 (:VAR MV8639 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
263: "What genes are downstream of stat3?"

                    SOURCE-START
e12   COPULAR-PREDICATION 1 "What genes are downstream of stat3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are downstream of stat3?"
 (:VAR MV8647 :ISA COPULAR-PREDICATION :ITEM MV8642 :VALUE MV8644 :PREDICATE
  MV8643)
 (:VAR MV8642 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8644 :ISA DOWNSTREAM :PARTICIPANT-OR-RELATIVE-TO MV8640)
 (:VAR MV8640 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV8643 :ISA BE))

___________________
264: "What genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathway?"
 (:VAR MV8658 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV8650 :VALUE MV8657 :PREP
  "IN" :PREDICATE MV8651)
 (:VAR MV8650 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8657 :ISA GENE :CONTEXT MV8648 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV8648 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV8654
  :RAW-TEXT "signaling pathway")
 (:VAR MV8654 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV8651 :ISA BE))

___________________
265: "What genes are in the MAPK signaling pathways?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the MAPK signaling pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the MAPK signaling pathways?"
 (:VAR MV8670 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV8662 :VALUE MV8669 :PREP
  "IN" :PREDICATE MV8663)
 (:VAR MV8662 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8669 :ISA GENE :CONTEXT MV8660 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV8660 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV8666
  :RAW-TEXT "signaling pathways")
 (:VAR MV8666 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV8663 :ISA BE))

___________________
266: "What genes are in the immune system pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the immune system pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the immune system pathway?"
 (:VAR MV8682 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV8674 :VALUE MV8681 :PREP
  "IN" :PREDICATE MV8675)
 (:VAR MV8674 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8681 :ISA GENE :CONTEXT MV8678 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV8678 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV8672
  :RAW-TEXT "pathway")
 (:VAR MV8672 :ISA BIO-ORGAN :UID "UBERON:0002405") (:VAR MV8675 :ISA BE))

___________________
267: "What genes are in the prolactin signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "What genes are in the prolactin signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are in the prolactin signaling pathway?"
 (:VAR MV8694 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV8686 :VALUE MV8693 :PREP
  "IN" :PREDICATE MV8687)
 (:VAR MV8686 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8693 :ISA GENE :CONTEXT MV8684 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV8684 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV8690
  :RAW-TEXT "signaling pathway")
 (:VAR MV8690 :ISA PROTEIN :RAW-TEXT "prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN")
 (:VAR MV8687 :ISA BE))

___________________
268: "What genes are involved in the IL-12 pathway?"

                    SOURCE-START
e18   INVOLVE       1 "What genes are involved in the IL-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the IL-12 pathway?"
 (:VAR MV8705 :ISA INVOLVE :PARTICIPANT MV8699 :CONTEXT-OR-THEME MV8704)
 (:VAR MV8699 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8704 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV8697 :RAW-TEXT
  "pathway")
 (:VAR MV8697 :ISA PROTEIN :RAW-TEXT "IL-12" :UID "NCIT:C20514" :NAME
  "NCIT:C20514"))

___________________
269: "What genes are involved in the Prolactin pathway?"

                    SOURCE-START
e16   INVOLVE       1 "What genes are involved in the Prolactin pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the Prolactin pathway?"
 (:VAR MV8715 :ISA INVOLVE :PARTICIPANT MV8708 :CONTEXT-OR-THEME MV8714)
 (:VAR MV8708 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8714 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV8713 :RAW-TEXT
  "pathway")
 (:VAR MV8713 :ISA PROTEIN :RAW-TEXT "Prolactin" :UID "UP:P01236" :NAME
  "PRL_HUMAN"))

___________________
270: "What genes are involved in the il-12 pathway?"

                    SOURCE-START
e17   INVOLVE       1 "What genes are involved in the il-12 pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the il-12 pathway?"
 (:VAR MV8725 :ISA INVOLVE :PARTICIPANT MV8719 :CONTEXT-OR-THEME MV8724)
 (:VAR MV8719 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8724 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV8717 :RAW-TEXT
  "pathway")
 (:VAR MV8717 :ISA PROTEIN-FAMILY :RAW-TEXT "il-12" :NAME "IL-12" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "IL12B_HUMAN") (:UID "UP:P29460"))
   (PROTEIN (:NAME "IL12A_HUMAN") (:UID "UP:P29459")))
  :UID "FPLX:IL12"))

___________________
271: "What genes are involved in the immune system pathway?"

                    SOURCE-START
e17   INVOLVE       1 "What genes are involved in the immune system pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are involved in the immune system pathway?"
 (:VAR MV8735 :ISA INVOLVE :PARTICIPANT MV8729 :CONTEXT-OR-THEME MV8734)
 (:VAR MV8729 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8734 :ISA PATHWAY :HAS-DETERMINER "THE" :NON-CELLULAR-LOCATION MV8727
  :RAW-TEXT "pathway")
 (:VAR MV8727 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
272: "What genes are regulated by FAKEPRTN"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated " 5
e9    BY            5 "by FAKEPRTN" 7
                    END-OF-SOURCE


___________________
273: "What genes are regulated by elk1 and srf?"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by elk1 and srf" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are regulated by elk1 and srf?"
 (:VAR MV8755 :ISA REGULATE :OBJECT MV8748 :AGENT MV8754 :RAW-TEXT "regulated")
 (:VAR MV8748 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8754 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL))

___________________
274: "What genes are regulated by smda2"

                    SOURCE-START
e12   REGULATE      1 "What genes are regulated " 5
e10   BY            5 "by smda2" 8
                    END-OF-SOURCE


___________________
275: "What genes are regulated by srf"

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated by srf" 7
                    END-OF-SOURCE
("What genes are regulated by srf"
 (:VAR MV8772 :ISA REGULATE :OBJECT MV8767 :AGENT MV8771 :RAW-TEXT "regulated")
 (:VAR MV8767 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8771 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
276: "What genes are regulated by stat3 and srf"

                    SOURCE-START
e15   REGULATE      1 "What genes are regulated by stat3 and srf" 10
                    END-OF-SOURCE
("What genes are regulated by stat3 and srf"
 (:VAR MV8783 :ISA REGULATE :OBJECT MV8776 :AGENT MV8782 :RAW-TEXT "regulated")
 (:VAR MV8776 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8782 :ISA COLLECTION :RAW-TEXT "stat3 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL))

___________________
277: "What genes are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What genes are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are targeted by lung cancer?"
 (:VAR MV8791 :ISA TARGET :OBJECT MV8787 :CAUSE MV8785 :RAW-TEXT "targeted")
 (:VAR MV8787 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8785 :ISA CANCER :UID "TS-0571"))

___________________
278: "What genes are there in the MAPK signaling pathway?"

                    SOURCE-START
e21   COPULAR-PREDICATE 1 "What genes are there in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are there in the MAPK signaling pathway?"
 (:VAR MV8805 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV8795 :VALUE MV8804 :PREP
  "IN" :PREDICATE MV8796)
 (:VAR MV8795 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8804 :ISA GENE :CONTEXT MV8793 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV8793 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV8801
  :RAW-TEXT "signaling pathway")
 (:VAR MV8801 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV8796 :ISA BE))

___________________
279: "What genes are used in the MAPK signaling pathway?"

                    SOURCE-START
e17   BIO-USE       1 "What genes are used in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes are used in the MAPK signaling pathway?"
 (:VAR MV8815 :ISA BIO-USE :OBJECT MV8809 :CONTEXT MV8807 :RAW-TEXT "used")
 (:VAR MV8809 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8807 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV8814
  :RAW-TEXT "signaling pathway")
 (:VAR MV8814 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
280: "What genes does lung cancer target?"

                    SOURCE-START
e10   TARGET        1 "What genes does lung cancer target" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does lung cancer target?"
 (:VAR MV8823 :ISA TARGET :OBJECT MV8819 :CAUSE MV8817 :RAW-TEXT "target")
 (:VAR MV8819 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8817 :ISA CANCER :UID "TS-0571"))

___________________
281: "What genes does smad2 upregulate?"

                    SOURCE-START
e9    UPREGULATE    1 "What genes does smad2 upregulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does smad2 upregulate?"
 (:VAR MV8829 :ISA UPREGULATE :OBJECT MV8826 :AGENT MV8824 :RAW-TEXT
  "upregulate")
 (:VAR MV8826 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8824 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
282: "What genes does stat3 regulate in liver cells?"

                    SOURCE-START
e16   REGULATE      1 "What genes does stat3 regulate in liver cells" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver cells?"
 (:VAR MV8838 :ISA REGULATE :OBJECT MV8832 :AGENT MV8830 :CELL-TYPE MV8837
  :RAW-TEXT "regulate")
 (:VAR MV8832 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8830 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV8837 :ISA CELL-TYPE :NON-CELLULAR-LOCATION MV8836)
 (:VAR MV8836 :ISA LIVER))

___________________
283: "What genes does stat3 regulate in liver?"

                    SOURCE-START
e14   REGULATE      1 "What genes does stat3 regulate in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in liver?"
 (:VAR MV8847 :ISA REGULATE :OBJECT MV8842 :AGENT MV8840 :ORGAN MV8846
  :RAW-TEXT "regulate")
 (:VAR MV8842 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8840 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV8846 :ISA LIVER))

___________________
284: "What genes does stat3 regulate in lung?"

                    SOURCE-START
e14   REGULATE      1 "What genes does stat3 regulate in lung" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate in lung?"
 (:VAR MV8856 :ISA REGULATE :OBJECT MV8851 :AGENT MV8849 :ORGAN MV8855
  :RAW-TEXT "regulate")
 (:VAR MV8851 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8849 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV8855 :ISA LUNG))

___________________
285: "What genes does stat3 regulate"

                    SOURCE-START
e9    REGULATE      1 "What genes does stat3 regulate" 7
                    END-OF-SOURCE
("What genes does stat3 regulate"
 (:VAR MV8863 :ISA REGULATE :OBJECT MV8860 :AGENT MV8858 :RAW-TEXT "regulate")
 (:VAR MV8860 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8858 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
286: "What genes in the liver does stat3 regulate?"

                    SOURCE-START
e15   GENE          1 "What genes in the liver " 6
e9    DO            6 "does " 7
e13   REGULATE      7 "stat3 regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
287: "What genes is stat3 upstream from?"

                    SOURCE-START
e12   COPULAR-PREDICATION 1 "What genes is stat3 upstream from" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes is stat3 upstream from?"
 (:VAR MV8880 :ISA COPULAR-PREDICATION :ITEM MV8873 :VALUE MV8877 :PREDICATE
  MV8876)
 (:VAR MV8873 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV8877 :ISA UPSTREAM :RELATIVE-TO MV8875)
 (:VAR MV8875 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8876 :ISA BE))

___________________
288: "What genes is stat3 upstream of?"

                    SOURCE-START
e13   COPULAR-PREDICATION 1 "What genes is stat3 upstream of" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes is stat3 upstream of?"
 (:VAR MV8888 :ISA COPULAR-PREDICATION :ITEM MV8881 :VALUE MV8885 :PREDICATE
  MV8884)
 (:VAR MV8881 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV8885 :ISA UPSTREAM :PARTICIPANT-OR-RELATIVE-TO MV8883)
 (:VAR MV8883 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV8884 :ISA BE))

___________________
289: "What genes regulated by FOS are kinases?"

                    SOURCE-START
e14   BE            1 "What genes regulated by FOS are kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by FOS are kinases?"
 (:VAR MV8894 :ISA BE :SUBJECT MV8890 :PREDICATE MV8895 :PRESENT "PRESENT")
 (:VAR MV8890 :ISA GENE :PREDICATION MV8891 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV8891 :ISA REGULATE :OBJECT MV8891 :AGENT MV8893 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV8893 :ISA PROTEIN :RAW-TEXT "FOS" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV8895 :ISA KINASE :RAW-TEXT "kinases"))

___________________
290: "What genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "What genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes regulated by stat3 are kinases?"
 (:VAR MV8902 :ISA BE :SUBJECT MV8899 :PREDICATE MV8903 :PRESENT "PRESENT")
 (:VAR MV8899 :ISA GENE :PREDICATION MV8900 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV8900 :ISA REGULATE :OBJECT MV8900 :AGENT MV8897 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV8897 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV8903 :ISA KINASE :RAW-TEXT "kinases"))

___________________
291: "What immune pathways involve KRAS and ELK1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve KRAS and ELK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve KRAS and ELK1?"
 (:VAR MV8909 :ISA INVOLVE :PARTICIPANT MV8908 :THEME MV8912 :PRESENT
  "PRESENT")
 (:VAR MV8908 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV8907 :RAW-TEXT
  "pathways")
 (:VAR MV8907 :ISA IMMUNE)
 (:VAR MV8912 :ISA COLLECTION :RAW-TEXT "KRAS and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL))

___________________
292: "What immune pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "What immune pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve SRF?"
 (:VAR MV8916 :ISA INVOLVE :PARTICIPANT MV8915 :THEME MV8917 :PRESENT
  "PRESENT")
 (:VAR MV8915 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV8914 :RAW-TEXT
  "pathways")
 (:VAR MV8914 :ISA IMMUNE)
 (:VAR MV8917 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
293: "What immune pathways involve kras and elk1?"

                    SOURCE-START
e12   INVOLVE       1 "What immune pathways involve kras and elk1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve kras and elk1?"
 (:VAR MV8922 :ISA INVOLVE :PARTICIPANT MV8921 :THEME MV8925 :PRESENT
  "PRESENT")
 (:VAR MV8921 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV8920 :RAW-TEXT
  "pathways")
 (:VAR MV8920 :ISA IMMUNE)
 (:VAR MV8925 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL))

___________________
294: "What immune pathways involve tap1 and jak1?"

                    SOURCE-START
e13   INVOLVE       1 "What immune pathways involve tap1 and jak1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What immune pathways involve tap1 and jak1?"
 (:VAR MV8931 :ISA INVOLVE :PARTICIPANT MV8930 :THEME MV8933 :PRESENT
  "PRESENT")
 (:VAR MV8930 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV8929 :RAW-TEXT
  "pathways")
 (:VAR MV8929 :ISA IMMUNE)
 (:VAR MV8933 :ISA COLLECTION :RAW-TEXT "tap1 and jak1" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL))

___________________
295: "What inhibits BRAF?"

                    SOURCE-START
e4    INHIBIT       1 "What inhibits BRAF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What inhibits BRAF?"
 (:VAR MV8937 :ISA WH-QUESTION :STATEMENT MV8935 :VAR NIL :WH WHAT)
 (:VAR MV8935 :ISA INHIBIT :OBJECT MV8936 :PRESENT "PRESENT" :RAW-TEXT
  "inhibits")
 (:VAR MV8936 :ISA PROTEIN :RAW-TEXT "BRAF" :UID "UP:P15056" :NAME
  "BRAF_HUMAN"))

___________________
296: "What is STAT3?"

                    SOURCE-START
e4    BE            1 "What is STAT3" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT3?" (:VAR MV8941 :ISA BE :PREDICATE MV8938 :SUBJECT MV8939)
 (:VAR MV8938 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV8939 :ISA WHAT))

___________________
297: "What is STAT?"

                    SOURCE-START
e3    BE            1 "What is STAT" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is STAT?" (:VAR MV8945 :ISA BE :PREDICATE MV8944 :SUBJECT MV8942)
 (:VAR MV8944 :ISA PROTEIN :RAW-TEXT "STAT" :UID "UP:P35610" :NAME
  "SOAT1_HUMAN")
 (:VAR MV8942 :ISA WHAT))

___________________
298: "What is downstream of stat3?"

                    SOURCE-START
e10   COPULAR-PREDICATE 1 "What is downstream of stat3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is downstream of stat3?"
 (:VAR MV8953 :ISA WH-QUESTION :STATEMENT MV8952 :VAR NIL :WH WHAT)
 (:VAR MV8952 :ISA COPULAR-PREDICATION :VALUE MV8949 :PREDICATE MV8948)
 (:VAR MV8949 :ISA DOWNSTREAM :PARTICIPANT-OR-RELATIVE-TO MV8946)
 (:VAR MV8946 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV8948 :ISA BE))

___________________
299: "What is erbb?"

                    SOURCE-START
e3    BE            1 "What is erbb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is erbb?" (:VAR MV8957 :ISA BE :PREDICATE MV8956 :SUBJECT MV8954)
 (:VAR MV8956 :ISA PROTEIN :RAW-TEXT "erbb" :UID "UP:P00533" :NAME
  "EGFR_HUMAN")
 (:VAR MV8954 :ISA WHAT))

___________________
300: "What is errb?"

                    SOURCE-START
e3    BE            1 "What is errb" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What is errb?" (:VAR MV8961 :ISA BE :PREDICATE MV8960 :SUBJECT MV8958)
 (:VAR MV8960 :ISA BIO-ENTITY :NAME "errb") (:VAR MV8958 :ISA WHAT))

___________________
301: "What is regulated by elk1"

                    SOURCE-START
e10   REGULATE      1 "What is regulated by elk1" 7
                    END-OF-SOURCE
("What is regulated by elk1"
 (:VAR MV8967 :ISA REGULATE :OBJECT MV8963 :AGENT MV8962 :RAW-TEXT "regulated")
 (:VAR MV8963 :ISA WHAT)
 (:VAR MV8962 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
302: "What is the evidence that kras decreases frizzled8?"

                    SOURCE-START
e16   BE            1 "What is the evidence that kras decreases frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases frizzled8?"
 (:VAR MV8978 :ISA BE :PREDICATE MV8977 :SUBJECT MV8970)
 (:VAR MV8977 :ISA EVIDENCE :STATEMENT MV8976 :HAS-DETERMINER "THE")
 (:VAR MV8976 :ISA DECREASE :AGENT MV8975 :OBJECT MV8969 :PRESENT "PRESENT"
  :RAW-TEXT "decreases")
 (:VAR MV8975 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV8969 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV8970 :ISA WHAT))

___________________
303: "What is the evidence that kras decreases the amount of frizzled8?"

                    SOURCE-START
e24   BE            1 "What is the evidence that kras decreases the amount of frizzled8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras decreases the amount of frizzled8?"
 (:VAR MV8992 :ISA BE :PREDICATE MV8991 :SUBJECT MV8980)
 (:VAR MV8991 :ISA EVIDENCE :STATEMENT MV8986 :HAS-DETERMINER "THE")
 (:VAR MV8986 :ISA DECREASE :AGENT MV8985 :AFFECTED-PROCESS-OR-OBJECT MV8988
  :PRESENT "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV8985 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV8988 :ISA BIO-AMOUNT :MEASURED-ITEM MV8979 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV8979 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV8980 :ISA WHAT))

___________________
304: "What is the target of Selumetinib?"

                    SOURCE-START
e12   BE            1 "What is the target of Selumetinib" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the target of Selumetinib?"
 (:VAR MV9001 :ISA BE :PREDICATE MV8996 :SUBJECT MV8993)
 (:VAR MV8996 :ISA TARGET-PROTEIN :AGENT MV8999 :HAS-DETERMINER "THE" :RAW-TEXT
  "target")
 (:VAR MV8999 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV8993 :ISA WHAT))

___________________
305: "What kinases does smad2 regulate"

                    SOURCE-START
e9    REGULATE      1 "What kinases does smad2 regulate" 7
                    END-OF-SOURCE
("What kinases does smad2 regulate"
 (:VAR MV9007 :ISA REGULATE :OBJECT MV9004 :AGENT MV9002 :RAW-TEXT "regulate")
 (:VAR MV9004 :ISA KINASE :HAS-DETERMINER "WHAT" :RAW-TEXT "kinases")
 (:VAR MV9002 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
306: "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e21   REGULATE      1 "What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV9019 :ISA WH-QUESTION :STATEMENT MV9015 :VAR NIL :WH WHAT)
 (:VAR MV9015 :ISA REGULATE :OBJECT MV9020 :PRESENT "PRESENT" :RAW-TEXT
  "regulate")
 (:VAR MV9020 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS NIL))

___________________
307: "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e19   REGULATE      1 "What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV9026 :ISA REGULATE :AGENT MV9025 :OBJECT MV9030 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV9025 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "miRNAs")
 (:VAR MV9030 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS NIL))

___________________
308: "What microRNAs target STAT3?"

                    SOURCE-START
e8    TARGET        1 "What microRNAs target STAT3" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What microRNAs target STAT3?"
 (:VAR MV9035 :ISA TARGET :AGENT MV9033 :OBJECT MV9031 :PRESENT "PRESENT"
  :RAW-TEXT "target")
 (:VAR MV9033 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "microRNAs")
 (:VAR MV9031 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
309: "What micrornas are regulated by p53?"

                    SOURCE-START
e12   REGULATE      1 "What micrornas are regulated by p53" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What micrornas are regulated by p53?"
 (:VAR MV9042 :ISA REGULATE :OBJECT MV9038 :AGENT MV9036 :RAW-TEXT "regulated")
 (:VAR MV9038 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV9036 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
310: "What micrornas regulate genes in the mapk signaling pathways"

                    SOURCE-START
e17   REGULATE      1 "What micrornas regulate genes in the mapk signaling pathways" 10
                    END-OF-SOURCE
("What micrornas regulate genes in the mapk signaling pathways"
 (:VAR MV9047 :ISA REGULATE :AGENT MV9046 :OBJECT MV9048 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV9046 :ISA MICRO-RNA :HAS-DETERMINER "WHAT" :RAW-TEXT "micrornas")
 (:VAR MV9048 :ISA GENE :CONTEXT MV9044 :RAW-TEXT "genes")
 (:VAR MV9044 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV9051
  :RAW-TEXT "signaling pathways")
 (:VAR MV9051 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
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
311: "What pahtways involve SRF?"

                    SOURCE-START
e6    INVOLVE       1 "What pahtways involve SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pahtways involve SRF?"
 (:VAR MV9055 :ISA INVOLVE :PARTICIPANT MV9054 :THEME MV9056 :PRESENT
  "PRESENT")
 (:VAR MV9054 :ISA BIO-ENTITY :HAS-DETERMINER "WHAT" :NAME "pahtways")
 (:VAR MV9056 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
312: "What pathways are common to STAT3 and SRF?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What pathways are common to STAT3 and SRF" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are common to STAT3 and SRF?"
 (:VAR MV9067 :ISA COPULAR-PREDICATION :ITEM MV9059 :VALUE MV9061 :PREDICATE
  MV9060)
 (:VAR MV9059 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV9061 :ISA COMMON :THEME MV9065)
 (:VAR MV9065 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL)
 (:VAR MV9060 :ISA BE))

___________________
313: "What pathways involve SRF?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SRF?"
 (:VAR MV9070 :ISA INVOLVE :PARTICIPANT MV9069 :THEME MV9071 :PRESENT
  "PRESENT")
 (:VAR MV9069 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV9071 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
314: "What pathways involve cfos?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve cfos" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve cfos?"
 (:VAR MV9074 :ISA INVOLVE :PARTICIPANT MV9073 :THEME MV9075 :PRESENT
  "PRESENT")
 (:VAR MV9073 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV9075 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN"))

___________________
315: "What pathways involve kras and elk1?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve kras and elk1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve kras and elk1?"
 (:VAR MV9079 :ISA INVOLVE :PARTICIPANT MV9078 :THEME MV9082 :PRESENT
  "PRESENT")
 (:VAR MV9078 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV9082 :ISA COLLECTION :RAW-TEXT "kras and elk1" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL))

___________________
316: "What pathways involve the SRF transcription factor?"

                    SOURCE-START
e12   INVOLVE       1 "What pathways involve the SRF transcription factor" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the SRF transcription factor?"
 (:VAR MV9086 :ISA INVOLVE :PARTICIPANT MV9085 :THEME MV9083 :PRESENT
  "PRESENT")
 (:VAR MV9085 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV9083 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "THE" :MODIFIER MV9088
  :RAW-TEXT "transcription factor")
 (:VAR MV9088 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
317: "What pathways utilize srf and is srf a kinase"

                    SOURCE-START
e15   UTILIZE       1 "What pathways utilize srf and is srf " 8
e11   KINASE        8 "a kinase" 10
                    END-OF-SOURCE


___________________
318: "What proteins are in the MAPK family?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "What proteins are in the MAPK family" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are in the MAPK family?"
 (:VAR MV9109 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV9100 :VALUE MV9107 :PREP
  "IN" :PREDICATE MV9101)
 (:VAR MV9100 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV9107 :ISA PROTEIN-FAMILY :HAS-DETERMINER "THE" :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV9101 :ISA BE))

___________________
319: "What proteins are targeted by lung cancer?"

                    SOURCE-START
e12   TARGET        1 "What proteins are targeted by lung cancer" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins are targeted by lung cancer?"
 (:VAR MV9116 :ISA TARGET :OBJECT MV9112 :CAUSE MV9110 :RAW-TEXT "targeted")
 (:VAR MV9112 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV9110 :ISA CANCER :UID "TS-0571"))

___________________
320: "What proteins does PLX-4720 target?"

                    SOURCE-START
e10   TARGET        1 "What proteins does PLX-4720 target" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does PLX-4720 target?"
 (:VAR MV9124 :ISA TARGET :OBJECT MV9120 :AGENT MV9118 :RAW-TEXT "target")
 (:VAR MV9120 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV9118 :ISA MOLECULE :RAW-TEXT "PLX-4720" :UID "PCID:24180719"))

___________________
321: "What proteins does lung cancer target?"

                    SOURCE-START
e10   TARGET        1 "What proteins does lung cancer target" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does lung cancer target?"
 (:VAR MV9131 :ISA TARGET :OBJECT MV9127 :CAUSE MV9125 :RAW-TEXT "target")
 (:VAR MV9127 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV9125 :ISA CANCER :UID "TS-0571"))

___________________
322: "What proteins does vemurafenib target?"

                    SOURCE-START
e9    TARGET        1 "What proteins does vemurafenib target" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins does vemurafenib target?"
 (:VAR MV9138 :ISA TARGET :OBJECT MV9133 :AGENT MV9135 :RAW-TEXT "target")
 (:VAR MV9133 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV9135 :ISA DRUG :RAW-TEXT "vemurafenib" :NAME "vemurafenib"))

___________________
323: "What proteins might lead to the development of lung cancer?"

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of lung cancer" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What proteins might lead to the development of lung cancer?"
 (:VAR MV9150 :ISA LEAD :CAUSE MV9141 :MODAL MV9142 :THEME MV9146 :MODAL MV9142
  :RAW-TEXT "lead")
 (:VAR MV9141 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV9142 :ISA MIGHT)
 (:VAR MV9146 :ISA DEVELOPMENT :DISEASE MV9139 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV9139 :ISA CANCER :UID "TS-0571") (:VAR MV9142 :ISA MIGHT))

___________________
324: "What proteins might lead to the development of pancreatic cancer."

                    SOURCE-START
e20   LEAD          1 "What proteins might lead to the development of pancreatic cancer" 11
                    PERIOD
                    END-OF-SOURCE
("What proteins might lead to the development of pancreatic cancer."
 (:VAR MV9162 :ISA LEAD :CAUSE MV9153 :MODAL MV9154 :THEME MV9158 :MODAL MV9154
  :RAW-TEXT "lead")
 (:VAR MV9153 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV9154 :ISA MIGHT)
 (:VAR MV9158 :ISA DEVELOPMENT :DISEASE MV9151 :HAS-DETERMINER "THE" :RAW-TEXT
  "development")
 (:VAR MV9151 :ISA CANCER :UID "TS-0739") (:VAR MV9154 :ISA MIGHT))

___________________
325: "What reactome pathways involve immune signaling?"

                    SOURCE-START
e10   INVOLVE       1 "What reactome pathways involve immune signaling" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune signaling?"
 (:VAR MV9166 :ISA INVOLVE :PARTICIPANT MV9165 :THEME MV9168 :PRESENT
  "PRESENT")
 (:VAR MV9165 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV9164 :RAW-TEXT
  "pathways")
 (:VAR MV9164 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV9168 :ISA SIGNAL :MODIFIER MV9167 :RAW-TEXT "signaling")
 (:VAR MV9167 :ISA IMMUNE))

___________________
326: "What regulates HGF?"

                    SOURCE-START
e4    REGULATE      1 "What regulates HGF" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates HGF?"
 (:VAR MV9172 :ISA WH-QUESTION :STATEMENT MV9170 :VAR NIL :WH WHAT)
 (:VAR MV9170 :ISA REGULATE :OBJECT MV9171 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV9171 :ISA PROTEIN :RAW-TEXT "HGF" :UID "UP:P14210" :NAME "HGF_HUMAN"))

___________________
327: "What regulates SMURF2?"

                    SOURCE-START
e5    REGULATE      1 "What regulates SMURF2" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates SMURF2?"
 (:VAR MV9176 :ISA WH-QUESTION :STATEMENT MV9175 :VAR NIL :WH WHAT)
 (:VAR MV9175 :ISA REGULATE :OBJECT MV9173 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV9173 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
328: "What regulates smurf2 in liver"

                    SOURCE-START
e10   REGULATE      1 "What regulates smurf2 in liver" 7
                    END-OF-SOURCE
("What regulates smurf2 in liver"
 (:VAR MV9183 :ISA WH-QUESTION :STATEMENT MV9179 :VAR NIL :WH WHAT)
 (:VAR MV9179 :ISA REGULATE :OBJECT MV9177 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV9177 :ISA PROTEIN :ORGAN MV9181 :RAW-TEXT "smurf2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV9181 :ISA LIVER))

___________________
329: "What signaling pathways are shared by RELA and ELK1?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by RELA and ELK1" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by RELA and ELK1?"
 (:VAR MV9193 :ISA SHARE :OBJECT MV9184 :PARTICIPANT MV9192 :RAW-TEXT "shared")
 (:VAR MV9184 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV9192 :ISA COLLECTION :RAW-TEXT "RELA and ELK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL))

___________________
330: "What signaling pathways are shared by STAT3 and SRF?"

                    SOURCE-START
e16   SHARE         1 "What signaling pathways are shared by STAT3 and SRF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3 and SRF?"
 (:VAR MV9204 :ISA SHARE :OBJECT MV9195 :PARTICIPANT MV9203 :RAW-TEXT "shared")
 (:VAR MV9195 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV9203 :ISA COLLECTION :RAW-TEXT "STAT3 and SRF" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL))

___________________
331: "What signaling pathways are shared by STAT3, SOCS3 and SRF?"

                    SOURCE-START
e19   SHARE         1 "What signaling pathways are shared by STAT3, SOCS3 and SRF" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
 (:VAR MV9216 :ISA SHARE :OBJECT MV9206 :PARTICIPANT MV9215 :RAW-TEXT "shared")
 (:VAR MV9206 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT
  "signaling pathways")
 (:VAR MV9215 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3 and SRF" :TYPE PROTEIN
  :NUMBER 3 :ITEMS NIL))

___________________
332: "What tissues is STAT3 expressed in?"

                    SOURCE-START
e13   GENE-TRANSCRIPT-EXPRESS 1 "What tissues is STAT3 expressed in" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What tissues is STAT3 expressed in?"
 (:VAR MV9225 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV9218 :RAW-TEXT
  "expressed")
 (:VAR MV9218 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
333: "What transcription factor produces SMURF2?"

                    SOURCE-START
e8    BIO-PRODUCE   1 "What transcription factor produces SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factor produces SMURF2?"
 (:VAR MV9229 :ISA BIO-PRODUCE :AGENT MV9226 :OBJECT MV9227 :PRESENT "PRESENT"
  :RAW-TEXT "produces")
 (:VAR MV9226 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV9227 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
334: "What transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factor transcribes SMURF2?"
 (:VAR MV9233 :ISA TRANSCRIBE :AGENT MV9230 :OBJECT MV9231 :PRESENT "PRESENT"
  :RAW-TEXT "transcribes")
 (:VAR MV9230 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV9231 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
335: "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e31   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 23
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV9249 :ISA COPULAR-PREDICATION :ITEM MV9234 :VALUE MV9241 :PREDICATE
  MV9240)
 (:VAR MV9234 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV9241 :ISA COMMON :THEME MV9246)
 (:VAR MV9246 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV9247 :RAW-TEXT
  "genes")
 (:VAR MV9247 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS NIL)
 (:VAR MV9240 :ISA BE))

___________________
336: "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e26   COPULAR-PREDICATION 1 "What transcription factors are common to the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV9263 :ISA COPULAR-PREDICATION :ITEM MV9250 :VALUE MV9256 :PREDICATE
  MV9255)
 (:VAR MV9250 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV9256 :ISA COMMON :THEME MV9260)
 (:VAR MV9260 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV9261 :RAW-TEXT
  "genes")
 (:VAR MV9261 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS NIL)
 (:VAR MV9255 :ISA BE))

___________________
337: "What genes does stat3 regulate?"

                    SOURCE-START
e9    REGULATE      1 "What genes does stat3 regulate" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What genes does stat3 regulate?"
 (:VAR MV9269 :ISA REGULATE :OBJECT MV9266 :AGENT MV9264 :RAW-TEXT "regulate")
 (:VAR MV9266 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV9264 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
338: "What transcription factors are common to these genes?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "What transcription factors are common to these genes" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are common to these genes?"
 (:VAR MV9278 :ISA COPULAR-PREDICATION :ITEM MV9270 :VALUE MV9273 :PREDICATE
  MV9272)
 (:VAR MV9270 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV9273 :ISA COMMON :THEME MV9276)
 (:VAR MV9276 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV9272 :ISA BE))

___________________
339: "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e32   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV9294 :ISA COPULAR-PREDICATION :ITEM MV9279 :VALUE MV9280 :PREDICATE
  MV9286)
 (:VAR MV9279 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV9280 :ISA IN-COMMON :THEME MV9291)
 (:VAR MV9291 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV9292 :RAW-TEXT
  "genes")
 (:VAR MV9292 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS NIL)
 (:VAR MV9286 :ISA BE))

___________________
340: "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   COPULAR-PREDICATION 1 "What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes" 19
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV9308 :ISA COPULAR-PREDICATION :ITEM MV9295 :VALUE MV9296 :PREDICATE
  MV9301)
 (:VAR MV9295 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV9296 :ISA IN-COMMON :THEME MV9305)
 (:VAR MV9305 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV9306 :RAW-TEXT
  "genes")
 (:VAR MV9306 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS NIL)
 (:VAR MV9301 :ISA BE))

___________________
341: "What transcription factors are regulators of SMURF2 in liver?"

                    SOURCE-START
e17   BE            1 "What transcription factors are regulators of SMURF2 in liver" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2 in liver?"
 (:VAR MV9319 :ISA BE :PREDICATE MV9313 :SUBJECT MV9309)
 (:VAR MV9313 :ISA REGULATOR :THEME MV9310 :RAW-TEXT "regulators")
 (:VAR MV9310 :ISA PROTEIN :ORGAN MV9316 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV9316 :ISA LIVER)
 (:VAR MV9309 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors"))

___________________
342: "What transcription factors are regulators of SMURF2?"

                    SOURCE-START
e12   BE            1 "What transcription factors are regulators of SMURF2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are regulators of SMURF2?"
 (:VAR MV9327 :ISA BE :PREDICATE MV9324 :SUBJECT MV9320)
 (:VAR MV9324 :ISA REGULATOR :THEME MV9321 :RAW-TEXT "regulators")
 (:VAR MV9321 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN")
 (:VAR MV9320 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors"))

___________________
343: "What transcription factors are shared by the SRF, HRAS, and elk1 genes?"

                    SOURCE-START
e24   SHARE         1 "What transcription factors are shared by the SRF, HRAS, and elk1 genes" 16
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
 (:VAR MV9340 :ISA SHARE :OBJECT MV9328 :PARTICIPANT MV9338 :RAW-TEXT "shared")
 (:VAR MV9328 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV9338 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV9339 :RAW-TEXT
  "genes")
 (:VAR MV9339 :ISA COLLECTION :RAW-TEXT "SRF, HRAS, and elk1" :TYPE PROTEIN
  :NUMBER 3 :ITEMS NIL))

___________________
344: "What transcription factors regulate SMURF2 in liver?"

                    SOURCE-START
e13   REGULATE      1 "What transcription factors regulate SMURF2 in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate SMURF2 in liver?"
 (:VAR MV9345 :ISA REGULATE :AGENT MV9342 :OBJECT MV9343 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV9342 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV9343 :ISA PROTEIN :ORGAN MV9347 :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4"
  :NAME "SMUF2_HUMAN")
 (:VAR MV9347 :ISA LIVER))

___________________
345: "What transcription factors regulate ZEB1?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate ZEB1" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate ZEB1?"
 (:VAR MV9352 :ISA REGULATE :AGENT MV9349 :OBJECT MV9350 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV9349 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV9350 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME
  "ZEB1_HUMAN"))

___________________
346: "What transcription factors regulate erk"

                    SOURCE-START
e7    REGULATE      1 "What transcription factors regulate erk" 6
                    END-OF-SOURCE
("What transcription factors regulate erk"
 (:VAR MV9355 :ISA REGULATE :AGENT MV9353 :OBJECT MV9356 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV9353 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV9356 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
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
347: "What transcription factors regulate genes in the mapk signaling pathwya"

                    SOURCE-START
e19   REGULATE      1 "What transcription factors regulate genes in the mapk signaling pathwya" 11
                    END-OF-SOURCE
("What transcription factors regulate genes in the mapk signaling pathwya"
 (:VAR MV9359 :ISA REGULATE :AGENT MV9357 :THEME MV9365 :OBJECT MV9360 :PRESENT
  "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV9357 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV9365 :ISA BIO-ENTITY :HAS-DETERMINER "THE" :MODIFIER MV9363 :MODIFIER
  MV9364 :NAME "pathwya")
 (:VAR MV9363 :ISA PROTEIN-FAMILY :RAW-TEXT "mapk" :NAME
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
 (:VAR MV9364 :ISA SIGNAL :RAW-TEXT "signaling")
 (:VAR MV9360 :ISA GENE :RAW-TEXT "genes"))

___________________
348: "What transcription factors regulated frizzled8?"

                    SOURCE-START
e9    PROTEIN       1 "What transcription factors regulated frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulated frizzled8?"
 (:VAR MV9368 :ISA PROTEIN :MODIFIER MV9367 :PREDICATION MV9370 :RAW-TEXT
  "frizzled8" :UID "UP:Q9H461" :NAME "FZD8_HUMAN")
 (:VAR MV9367 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV9370 :ISA REGULATE :OBJECT MV9370 :RAW-TEXT "regulated"))

___________________
349: "What transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "What transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors transcribe SMURF2?"
 (:VAR MV9374 :ISA TRANSCRIBE :AGENT MV9371 :OBJECT MV9372 :PRESENT "PRESENT"
  :RAW-TEXT "transcribe")
 (:VAR MV9371 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV9372 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
350: "What upregulates fzd8?"

                    SOURCE-START
e5    UPREGULATE    1 "What upregulates fzd8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates fzd8?"
 (:VAR MV9378 :ISA WH-QUESTION :STATEMENT MV9377 :VAR NIL :WH WHAT)
 (:VAR MV9377 :ISA UPREGULATE :OBJECT MV9375 :PRESENT "PRESENT" :RAW-TEXT
  "upregulates")
 (:VAR MV9375 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
351: "Where is STAT3 expressed?"

                    SOURCE-START
e7    GENE-TRANSCRIPT-EXPRESS 1 "Where is STAT3 expressed" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Where is STAT3 expressed?"
 (:VAR MV9383 :ISA GENE-TRANSCRIPT-EXPRESS :LOCATION MV9380 :OBJECT MV9379
  :RAW-TEXT "expressed")
 (:VAR MV9380 :ISA WHERE)
 (:VAR MV9379 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
352: "Which KEGG pathways involve SRF?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve SRF?"
 (:VAR MV9387 :ISA INVOLVE :PARTICIPANT MV9386 :THEME MV9388 :PRESENT
  "PRESENT")
 (:VAR MV9386 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV9385 :RAW-TEXT
  "pathways")
 (:VAR MV9385 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV9388 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
353: "Which KEGG pathways use SRF?"

                    SOURCE-START
e9    PROTEIN       1 "Which KEGG pathways use SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways use SRF?"
 (:VAR MV9394 :ISA PROTEIN :CONTEXT MV9391 :MODIFIER MV9392 :RAW-TEXT "SRF"
  :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV9391 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV9390 :RAW-TEXT
  "pathways")
 (:VAR MV9390 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV9392 :ISA BIO-USE :RAW-TEXT "use"))

___________________
354: "What transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate frizzled8?"
 (:VAR MV9398 :ISA REGULATE :AGENT MV9395 :OBJECT MV9396 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV9395 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV9396 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
355: "Which also regulate srf"

                    SOURCE-START
e5    ALSO          1 "Which also " 3
e6    REGULATE      3 "regulate srf" 5
                    END-OF-SOURCE


___________________
356: "Which apoptotic genes are regulated by stat3?"

                    SOURCE-START
e15   REGULATE      1 "Which apoptotic genes are regulated by stat3" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes are regulated by stat3?"
 (:VAR MV9412 :ISA REGULATE :OBJECT MV9408 :AGENT MV9404 :RAW-TEXT "regulated")
 (:VAR MV9408 :ISA GENE :HAS-DETERMINER "WHICH" :MODIFIER MV9407 :RAW-TEXT
  "genes")
 (:VAR MV9407 :ISA APOPTOTIC)
 (:VAR MV9404 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
357: "Which apoptotic genes is stat3 upstream of?"

                    SOURCE-START
e16   COPULAR-PREDICATION 1 "Which apoptotic genes is stat3 upstream of" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which apoptotic genes is stat3 upstream of?"
 (:VAR MV9423 :ISA COPULAR-PREDICATION :ITEM MV9414 :VALUE MV9420 :PREDICATE
  MV9419)
 (:VAR MV9414 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV9420 :ISA UPSTREAM :PARTICIPANT-OR-RELATIVE-TO MV9418)
 (:VAR MV9418 :ISA GENE :HAS-DETERMINER "WHICH" :MODIFIER MV9417 :RAW-TEXT
  "genes")
 (:VAR MV9417 :ISA APOPTOTIC) (:VAR MV9419 :ISA BE))

___________________
358: "Which genes are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which genes are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are targeted by STAT3?"
 (:VAR MV9430 :ISA TARGET :OBJECT MV9426 :AGENT MV9424 :RAW-TEXT "targeted")
 (:VAR MV9426 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV9424 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
359: "Which genes regulated by stat3 are kinases?"

                    SOURCE-START
e15   BE            1 "Which genes regulated by stat3 are kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes regulated by stat3 are kinases?"
 (:VAR MV9437 :ISA BE :SUBJECT MV9434 :PREDICATE MV9438 :PRESENT "PRESENT")
 (:VAR MV9434 :ISA GENE :PREDICATION MV9435 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV9435 :ISA REGULATE :OBJECT MV9435 :AGENT MV9432 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV9432 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV9438 :ISA KINASE :RAW-TEXT "kinases"))

___________________
360: "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e29   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV9454 :ISA SHARE :OBJECT MV9446 :PARTICIPANT MV9452 :RAW-TEXT "shared")
 (:VAR MV9446 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV9445 :RAW-TEXT
  "pathways")
 (:VAR MV9445 :ISA IMMUNE)
 (:VAR MV9452 :ISA GENE :EXPRESSES MV9453 :RAW-TEXT "genes")
 (:VAR MV9453 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS NIL))

___________________
361: "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV9469 :ISA SHARE :OBJECT MV9461 :PARTICIPANT MV9467 :RAW-TEXT "shared")
 (:VAR MV9461 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV9460 :RAW-TEXT
  "pathways")
 (:VAR MV9460 :ISA IMMUNE)
 (:VAR MV9467 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV9468 :RAW-TEXT
  "genes")
 (:VAR MV9468 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS NIL))

___________________
362: "Which kegg pathways utilize genes regulated by smad2"

                    SOURCE-START
e15   UTILIZE       1 "Which kegg pathways utilize genes regulated by smad2" 10
                    END-OF-SOURCE
("Which kegg pathways utilize genes regulated by smad2"
 (:VAR MV9475 :ISA UTILIZE :PARTICIPANT MV9474 :OBJECT MV9476 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV9474 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV9473 :RAW-TEXT
  "pathways")
 (:VAR MV9473 :ISA BIO-ENTITY :NAME "kegg")
 (:VAR MV9476 :ISA GENE :PREDICATION MV9477 :RAW-TEXT "genes")
 (:VAR MV9477 :ISA REGULATE :OBJECT MV9477 :AGENT MV9471 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV9471 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
363: "Which Reactome pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which Reactome pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which Reactome pathways utilize SRF?"
 (:VAR MV9483 :ISA UTILIZE :PARTICIPANT MV9482 :OBJECT MV9484 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV9482 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV9481 :RAW-TEXT
  "pathways")
 (:VAR MV9481 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV9484 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
364: "Which kegg pathways utilize it"

                    SOURCE-START
e9    UTILIZE       1 "Which kegg pathways utilize it" 6
                    END-OF-SOURCE
("Which kegg pathways utilize it"
 (:VAR MV9488 :ISA UTILIZE :PARTICIPANT MV9487 :OBJECT MV9489 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV9487 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV9486 :RAW-TEXT
  "pathways")
 (:VAR MV9486 :ISA BIO-ENTITY :NAME "kegg")
 (:VAR MV9489 :ISA PRONOUN/INANIMATE :WORD "it"))

___________________
365: "Which of them are regulated by elk1"

                    SOURCE-START
e14   REGULATE      1 "Which of them are regulated by elk1" 9
                    END-OF-SOURCE
("Which of them are regulated by elk1"
 (:VAR MV9498 :ISA REGULATE :OBJECT MV9497 :AGENT MV9490 :RAW-TEXT "regulated")
 (:VAR MV9497 :ISA WH-QUESTION/SELECT :SET MV9493 :WH WHICH)
 (:VAR MV9493 :ISA PRONOUN/PLURAL :WORD "them")
 (:VAR MV9490 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
366: "Which of these are expressed in liver"

                    SOURCE-START
e14   GENE-TRANSCRIPT-EXPRESS 1 "Which of these are expressed in liver" 8
                    END-OF-SOURCE
("Which of these are expressed in liver"
 (:VAR MV9507 :ISA WH-QUESTION/SELECT :STATEMENT MV9508 :WH WHICH)
 (:VAR MV9508 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV9502 :ORGAN MV9506
  :PRESENT "PRESENT" :RAW-TEXT "expressed")
 (:VAR MV9502 :ISA THESE :WORD "these") (:VAR MV9506 :ISA LIVER))

___________________
367: "Which of these are in immune pathways"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    END-OF-SOURCE
("Which of these are in immune pathways"
 (:VAR MV9517 :ISA WH-QUESTION/SELECT :STATEMENT MV9519 :WH WHICH)
 (:VAR MV9519 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV9512 :VALUE MV9516 :PREP
  "IN" :PREDICATE MV9513)
 (:VAR MV9512 :ISA THESE :WORD "these")
 (:VAR MV9516 :ISA PATHWAY :MODIFIER MV9515 :RAW-TEXT "pathways")
 (:VAR MV9515 :ISA IMMUNE) (:VAR MV9513 :ISA BE :PRESENT "PRESENT"))

___________________
368: "what proteins does MEK phosphorylate?"

                    SOURCE-START
e8    PHOSPHORYLATE 1 "what proteins does MEK phosphorylate" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("what proteins does MEK phosphorylate?"
 (:VAR MV9525 :ISA PHOSPHORYLATE :AMINO-ACID MV9521 :AGENT MV9523 :RAW-TEXT
  "phosphorylate")
 (:VAR MV9521 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV9523 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
369: "Which of these are kinases"

                    SOURCE-START
e9    BE            1 "Which of these are kinases" 6
                    END-OF-SOURCE
("Which of these are kinases"
 (:VAR MV9531 :ISA WH-QUESTION/SELECT :STATEMENT MV9529 :WH WHICH)
 (:VAR MV9529 :ISA BE :SUBJECT MV9528 :PREDICATE MV9530 :PRESENT "PRESENT")
 (:VAR MV9528 :ISA THESE :WORD "these")
 (:VAR MV9530 :ISA KINASE :RAW-TEXT "kinases"))

___________________
370: "Which of those are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of those are regulated by elk1" 9
                    END-OF-SOURCE
("Which of those are regulated by elk1"
 (:VAR MV9539 :ISA WH-QUESTION/SELECT :STATEMENT MV9540 :WH WHICH)
 (:VAR MV9540 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV9535 :AGENT MV9532
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV9535 :ISA THOSE :WORD "those")
 (:VAR MV9532 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
371: "Which of these are regulated by elk1"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by elk1" 9
                    END-OF-SOURCE
("Which of these are regulated by elk1"
 (:VAR MV9549 :ISA WH-QUESTION/SELECT :STATEMENT MV9550 :WH WHICH)
 (:VAR MV9550 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV9545 :AGENT MV9542
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV9545 :ISA THESE :WORD "these")
 (:VAR MV9542 :ISA PROTEIN :RAW-TEXT "elk1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
372: "Which of these are regulated by fakeprotein"

                    SOURCE-START
e9    WHICH         1 "Which of " 3
e12   REGULATE      3 "these are regulated " 6
e11   BY            6 "by fakeprotein" 8
                    END-OF-SOURCE


___________________
373: "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e27   SHARE         1 "Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV9575 :ISA SHARE :OBJECT MV9567 :PARTICIPANT MV9573 :RAW-TEXT "shared")
 (:VAR MV9567 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV9573 :ISA GENE :EXPRESSES MV9574 :RAW-TEXT "genes")
 (:VAR MV9574 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS NIL))

___________________
374: "Which pathways are shared by stat3, socs3, and creb5"

                    SOURCE-START
e20   SHARE         1 "Which pathways are shared by stat3, socs3, and creb5" 15
                    END-OF-SOURCE
("Which pathways are shared by stat3, socs3, and creb5"
 (:VAR MV9587 :ISA SHARE :OBJECT MV9581 :PARTICIPANT MV9586 :RAW-TEXT "shared")
 (:VAR MV9581 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV9586 :ISA COLLECTION :RAW-TEXT "stat3, socs3, and creb5" :TYPE PROTEIN
  :NUMBER 3 :ITEMS NIL))

___________________
375: "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"

                    SOURCE-START
e30   SHARE         1 "Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes" 22
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
 (:VAR MV9603 :ISA SHARE :OBJECT MV9594 :PARTICIPANT MV9601 :RAW-TEXT "shared")
 (:VAR MV9594 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV9601 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV9602 :RAW-TEXT
  "genes")
 (:VAR MV9602 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, IFNG, FOXO3, and CREB5"
  :TYPE PROTEIN :NUMBER 5 :ITEMS NIL))

___________________
376: "Which pathways involve TAP1 and JAK1?"

                    SOURCE-START
e11   INVOLVE       1 "Which pathways involve TAP1 and JAK1" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve TAP1 and JAK1?"
 (:VAR MV9609 :ISA INVOLVE :PARTICIPANT MV9608 :THEME MV9611 :PRESENT
  "PRESENT")
 (:VAR MV9608 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV9611 :ISA COLLECTION :RAW-TEXT "TAP1 and JAK1" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL))

___________________
377: "Which pathways involve calcium?"

                    SOURCE-START
e6    INVOLVE       1 "Which pathways involve calcium" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve calcium?"
 (:VAR MV9614 :ISA INVOLVE :PARTICIPANT MV9613 :THEME MV9615 :PRESENT
  "PRESENT")
 (:VAR MV9613 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV9615 :ISA CALCIUM :RAW-TEXT "calcium"))

___________________
378: "Which pathways use SRF?"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways use SRF?"
 (:VAR MV9619 :ISA BIO-USE :AGENT MV9617 :OBJECT MV9620 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV9617 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV9620 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
379: "Which pathways use these"

                    SOURCE-START
e7    BIO-USE       1 "Which pathways use these" 5
                    END-OF-SOURCE
("Which pathways use these"
 (:VAR MV9624 :ISA BIO-USE :AGENT MV9622 :OBJECT MV9625 :PRESENT "PRESENT"
  :RAW-TEXT "use")
 (:VAR MV9622 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV9625 :ISA THESE :WORD "these"))

___________________
380: "Which pathways utilize SRF?"

                    SOURCE-START
e6    UTILIZE       1 "Which pathways utilize SRF" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways utilize SRF?"
 (:VAR MV9628 :ISA UTILIZE :PARTICIPANT MV9627 :OBJECT MV9629 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV9627 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV9629 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
381: "Which pathways utilize these genes"

                    SOURCE-START
e8    UTILIZE       1 "Which pathways utilize these genes" 6
                    END-OF-SOURCE
("Which pathways utilize these genes"
 (:VAR MV9632 :ISA UTILIZE :PARTICIPANT MV9631 :OBJECT MV9634 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV9631 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV9634 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
382: "Which proteins are targeted by STAT3?"

                    SOURCE-START
e12   TARGET        1 "Which proteins are targeted by STAT3" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which proteins are targeted by STAT3?"
 (:VAR MV9641 :ISA TARGET :OBJECT MV9637 :AGENT MV9635 :RAW-TEXT "targeted")
 (:VAR MV9637 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "proteins")
 (:VAR MV9635 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
383: "Which reactome pathways utilize srf"

                    SOURCE-START
e8    UTILIZE       1 "Which reactome pathways utilize srf" 6
                    END-OF-SOURCE
("Which reactome pathways utilize srf"
 (:VAR MV9646 :ISA UTILIZE :PARTICIPANT MV9645 :OBJECT MV9647 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV9645 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV9644 :RAW-TEXT
  "pathways")
 (:VAR MV9644 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV9647 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
384: "Which transcription factors are in the MAPK signaling pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "Which transcription factors are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors are in the MAPK signaling pathway?"
 (:VAR MV9658 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV9648 :VALUE MV9657 :PREP
  "IN" :PREDICATE MV9651)
 (:VAR MV9648 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV9657 :ISA TRANSCRIPTION-FACTOR :CONTEXT-OR-IN-PATHWAY MV9649
  :HAS-DETERMINER "WHICH" :RAW-TEXT "transcription factors")
 (:VAR MV9649 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV9654
  :RAW-TEXT "signaling pathway")
 (:VAR MV9654 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV9651 :ISA BE))

___________________
385: "Which transcription factors regulate frizzled8 in the liver?"

                    SOURCE-START
e16   REGULATE      1 "Which transcription factors regulate frizzled8 in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8 in the liver?"
 (:VAR MV9663 :ISA REGULATE :AGENT MV9660 :OBJECT MV9661 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV9660 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV9661 :ISA PROTEIN :ORGAN MV9666 :RAW-TEXT "frizzled8" :UID "UP:Q9H461"
  :NAME "FZD8_HUMAN")
 (:VAR MV9666 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
386: "Which transcription factors regulate frizzled8?"

                    SOURCE-START
e8    REGULATE      1 "Which transcription factors regulate frizzled8" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which transcription factors regulate frizzled8?"
 (:VAR MV9671 :ISA REGULATE :AGENT MV9668 :OBJECT MV9669 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV9668 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHICH" :RAW-TEXT
  "transcription factors")
 (:VAR MV9669 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
387: "Let's move AKT1 on top."

                    SOURCE-START
e1    PROPOSAL-MARKER 1 "Let's " 4
e4    MOVE-SOMETHING-SOMEWHERE  4 "move " 5
e3    PROTEIN       5 "AKT1 " 7
e9    ON            7 "on top" 9
                    PERIOD
                    END-OF-SOURCE


___________________
388: "Let's show the phosphorylated AKT1 on top."

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's show the phosphorylated AKT1 " 9
e15   ON            9 "on top" 11
                    PERIOD
                    END-OF-SOURCE


___________________
389: "What are the common upstreams of AKT1 and  BRAF?"

                    SOURCE-START
e17   BE            1 "What are the common upstreams of AKT1 and  BRAF" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRAF?"
 (:VAR MV9700 :ISA BE :PREDICATE MV9694 :SUBJECT MV9690)
 (:VAR MV9694 :ISA UPSTREAM :PARTICIPANT-OR-RELATIVE-TO MV9698 :HAS-DETERMINER
  "THE" :PREDICATION MV9693)
 (:VAR MV9698 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRAF" :TYPE PROTEIN :NUMBER
  2 :ITEMS NIL)
 (:VAR MV9693 :ISA COMMON) (:VAR MV9690 :ISA WHAT))

___________________
390: "Is stat3 expressed exclusively in liver?"

                    SOURCE-START
e13   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed exclusively in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed exclusively in liver?"
 (:VAR MV9709 :ISA POLAR-QUESTION :STATEMENT MV9707)
 (:VAR MV9707 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV9701 :ORGAN MV9706
  :RAW-TEXT "expressed")
 (:VAR MV9701 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV9706 :ISA LIVER))

___________________
391: "Is stat3 expressed in spleen?"

                    SOURCE-START
e11   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in spleen" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in spleen?"
 (:VAR MV9717 :ISA POLAR-QUESTION :STATEMENT MV9715)
 (:VAR MV9715 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV9710 :ORGAN MV9714
  :RAW-TEXT "expressed")
 (:VAR MV9710 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV9714 :ISA SPLEEN))

___________________
392: "PDK1 phosphorylates AKT1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "PDK1 phosphorylates AKT1" 6
                    PERIOD
                    END-OF-SOURCE
("PDK1 phosphorylates AKT1."
 (:VAR MV9720 :ISA PHOSPHORYLATE :AGENT MV9718 :SUBSTRATE MV9719 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV9718 :ISA PROTEIN :RAW-TEXT "PDK1" :UID "UP:O15530" :NAME
  "PDPK1_HUMAN")
 (:VAR MV9719 :ISA PROTEIN :RAW-TEXT "AKT1" :UID "UP:P31749" :NAME
  "AKT1_HUMAN"))

___________________
393: "Show phosphorylated akt1 on top."

                    SOURCE-START
e11   SHOW          1 "Show phosphorylated akt1 " 5
e10   ON            5 "on top" 7
                    PERIOD
                    END-OF-SOURCE


___________________
394: "What are the common upstreams of AKT1 and  BRA?"

                    SOURCE-START
e17   BE            1 "What are the common upstreams of AKT1 and  BRA" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common upstreams of AKT1 and  BRA?"
 (:VAR MV9739 :ISA BE :PREDICATE MV9733 :SUBJECT MV9729)
 (:VAR MV9733 :ISA UPSTREAM :PARTICIPANT-OR-RELATIVE-TO MV9737 :HAS-DETERMINER
  "THE" :PREDICATION MV9732)
 (:VAR MV9737 :ISA COLLECTION :RAW-TEXT "AKT1 and  BRA" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL)
 (:VAR MV9732 :ISA COMMON) (:VAR MV9729 :ISA WHAT))

___________________
395: "RAF activates MEK and MEK activates ERK."

                    SOURCE-START
e11   BIO-ACTIVATE  1 "RAF activates MEK and MEK activates ERK" 8
                    PERIOD
                    END-OF-SOURCE
("RAF activates MEK and MEK activates ERK."
 (:VAR MV9747 :ISA COLLECTION :RAW-TEXT
  "RAF activates MEK and MEK activates ERK" :TYPE BIO-ACTIVATE :NUMBER 2 :ITEMS
  NIL))

___________________
396: "What is the path from RAF to MEK?"

                    SOURCE-START
e0    WHAT          1 "What " 2
e1    BE            2 "is " 3
e10   PATH          3 "the path " 5
e12   FROM          5 "from RAF " 7
e11   TO            7 "to MEK" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
397: "What tissues can I ask about?"

                    SOURCE-START
e10   TISSUE        1 "What tissues " 3
e2    MODAL         3 "can " 4
e12   ASK           4 "I ask " 6
e8 e9               "about" :: ABOUT, ABOUT
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
398: "let's show phosphorylated akt1 on top."

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "let's show phosphorylated akt1 " 8
e12   ON            8 "on top" 10
                    PERIOD
                    END-OF-SOURCE


___________________
399: "remove the fact that mek activates erk"

                    SOURCE-START
e14   REMOVE        1 "remove the fact that mek activates erk" 8
                    END-OF-SOURCE
("remove the fact that mek activates erk"
 (:VAR MV9776 :ISA REMOVE :OBJECT MV9783 :PRESENT "PRESENT" :RAW-TEXT "remove")
 (:VAR MV9783 :ISA FACT :STATEMENT MV9781 :HAS-DETERMINER "THE")
 (:VAR MV9781 :ISA BIO-ACTIVATE :AGENT MV9780 :OBJECT MV9782 :PRESENT "PRESENT"
  :RAW-TEXT "activates")
 (:VAR MV9780 :ISA PROTEIN-FAMILY :RAW-TEXT "mek" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV9782 :ISA PROTEIN-FAMILY :RAW-TEXT "erk" :NAME "ERK" :COUNT 7
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
400: "what are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "what are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what are positive regulators of the cfos gene?"
 (:VAR MV9793 :ISA BE :PREDICATE MV9787 :SUBJECT MV9784)
 (:VAR MV9787 :ISA REGULATOR :THEME MV9791 :PREDICATION MV9786 :RAW-TEXT
  "regulators")
 (:VAR MV9791 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV9790 :RAW-TEXT
  "gene")
 (:VAR MV9790 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV9786 :ISA POSITIVE) (:VAR MV9784 :ISA WHAT))

___________________
401: "what transcription factors regulate FOS in soft tissue?"

                    SOURCE-START
e14   REGULATE      1 "what transcription factors regulate FOS in soft tissue" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors regulate FOS in soft tissue?"
 (:VAR MV9796 :ISA REGULATE :AGENT MV9794 :OBJECT MV9797 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV9794 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV9797 :ISA PROTEIN :NON-CELLULAR-LOCATION MV9800 :RAW-TEXT "FOS" :UID
  "UP:P01100" :NAME "FOS_HUMAN")
 (:VAR MV9800 :ISA TISSUE :PREDICATION MV9799) (:VAR MV9799 :ISA SOFT))

___________________
402: "Are there any drugs inhibiting MEK?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs inhibiting MEK" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs inhibiting MEK?"
 (:VAR MV9810 :ISA POLAR-QUESTION :STATEMENT MV9809)
 (:VAR MV9809 :ISA THERE-EXISTS :VALUE MV9806 :PREDICATE MV9803)
 (:VAR MV9806 :ISA DRUG :PREDICATION MV9807 :QUANTIFIER MV9805 :RAW-TEXT
  "drugs")
 (:VAR MV9807 :ISA INHIBIT :AGENT MV9807 :OBJECT MV9808 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "inhibiting")
 (:VAR MV9808 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK")
 (:VAR MV9805 :ISA ANY :WORD "any") (:VAR MV9803 :ISA SYNTACTIC-THERE))

___________________
403: "Are there any drugs targeting KRAS?"

                    SOURCE-START
e14   THERE-EXISTS  1 "Are there any drugs targeting KRAS" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any drugs targeting KRAS?"
 (:VAR MV9819 :ISA POLAR-QUESTION :STATEMENT MV9818)
 (:VAR MV9818 :ISA THERE-EXISTS :VALUE MV9815 :PREDICATE MV9812)
 (:VAR MV9815 :ISA DRUG :PREDICATION MV9816 :QUANTIFIER MV9814 :RAW-TEXT
  "drugs")
 (:VAR MV9816 :ISA TARGET :AGENT MV9816 :OBJECT MV9817 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "targeting")
 (:VAR MV9817 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV9814 :ISA ANY :WORD "any") (:VAR MV9812 :ISA SYNTACTIC-THERE))

___________________
404: "Are there any genes in the liver that are regulated by stat3?"

                    SOURCE-START
e31   THERE-EXISTS  1 "Are there any genes in the liver that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes in the liver that are regulated by stat3?"
 (:VAR MV9837 :ISA POLAR-QUESTION :STATEMENT MV9833)
 (:VAR MV9833 :ISA THERE-EXISTS :VALUE MV9825 :PREDICATE MV9822)
 (:VAR MV9825 :ISA GENE :PREDICATION MV9834 :ORGAN MV9828 :QUANTIFIER MV9824
  :RAW-TEXT "genes")
 (:VAR MV9834 :ISA REGULATE :OBJECT MV9834 :THAT-REL T :AGENT MV9820 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV9820 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV9828 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV9824 :ISA ANY :WORD "any") (:VAR MV9822 :ISA SYNTACTIC-THERE))

___________________
405: "Are there any genes involved in apoptosis that are regulated by stat3?"

                    SOURCE-START
e31   THERE-EXISTS  1 "Are there any genes involved in apoptosis that are regulated by stat3" 14
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any genes involved in apoptosis that are regulated by stat3?"
 (:VAR MV9855 :ISA POLAR-QUESTION :STATEMENT MV9851)
 (:VAR MV9851 :ISA THERE-EXISTS :VALUE MV9843 :PREDICATE MV9840)
 (:VAR MV9843 :ISA GENE :PREDICATION MV9844 :QUANTIFIER MV9842 :RAW-TEXT
  "genes")
 (:VAR MV9844 :ISA INVOLVE :THEME MV9844 :THEME MV9846 :PAST "PAST")
 (:VAR MV9846 :ISA APOPTOSIS :PREDICATION MV9852 :RAW-TEXT "apoptosis")
 (:VAR MV9852 :ISA REGULATE :AFFECTED-PROCESS MV9852 :THAT-REL T :AGENT MV9838
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV9838 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV9842 :ISA ANY :WORD "any") (:VAR MV9840 :ISA SYNTACTIC-THERE))

___________________
406: "Are there any genes stat3 is upstream of?"

                    SOURCE-START
e12   THERE-EXISTS  1 "Are there " 3
e16   COPULAR-PREDICATION 3 "any genes stat3 is upstream " 9
e11   OF            9 "of" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
407: "Are there any inhibitors for JAK1?"

                    SOURCE-START
e15   THERE-EXISTS  1 "Are there any inhibitors for JAK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Are there any inhibitors for JAK1?"
 (:VAR MV9876 :ISA POLAR-QUESTION :STATEMENT MV9874)
 (:VAR MV9874 :ISA THERE-EXISTS :VALUE MV9872 :PREDICATE MV9869)
 (:VAR MV9872 :ISA INHIBITOR :TARGET-OR-PROTEIN MV9867 :QUANTIFIER MV9871
  :RAW-TEXT "inhibitors")
 (:VAR MV9867 :ISA PROTEIN :RAW-TEXT "JAK1" :UID "UP:P23458" :NAME
  "JAK1_HUMAN")
 (:VAR MV9871 :ISA ANY :WORD "any") (:VAR MV9869 :ISA SYNTACTIC-THERE))

___________________
408: "Are there genes regulated by elk1 and srf"

                    SOURCE-START
e19   THERE-EXISTS  1 "Are there genes regulated by elk1 and srf" 10
                    END-OF-SOURCE
("Are there genes regulated by elk1 and srf"
 (:VAR MV9889 :ISA POLAR-QUESTION :STATEMENT MV9886)
 (:VAR MV9886 :ISA THERE-EXISTS :VALUE MV9881 :PREDICATE MV9879)
 (:VAR MV9881 :ISA GENE :PREDICATION MV9882 :RAW-TEXT "genes")
 (:VAR MV9882 :ISA REGULATE :OBJECT MV9882 :AGENT MV9887 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV9887 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL)
 (:VAR MV9879 :ISA SYNTACTIC-THERE))

___________________
409: "Can you find any apoptotic pathways stat3 is involved in?"

                    SOURCE-START
e2    MODAL         1 "Can " 2
e19   BIO-FIND      2 "you find any apoptotic pathways stat3 " 9
e17   INVOLVE       9 "is involved " 11
e12   IN            11 "in" 12
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
410: "Can you find any apoptotic pathways that stat3 is involved in?"

                    SOURCE-START
e2    MODAL         1 "Can " 2
e24   BIO-FIND      2 "you find any apoptotic pathways that stat3 is involved " 12
e14   IN            12 "in" 13
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
411: "Can you look up which genes targeted by stat3 are involved in apoptosis?"

                    SOURCE-START
e2    MODAL         1 "Can " 2
e28   LOOK          2 "you look " 4
e27   UP            4 "up which " 6
e26   INVOLVE       6 "genes targeted by stat3 are involved in apoptosis" 15
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
412: "Can you show me genes regulated by ELK1"

                    SOURCE-START
e18   SHOW          1 "Can you show me genes regulated by ELK1" 10
                    END-OF-SOURCE
("Can you show me genes regulated by ELK1"
 (:VAR MV9943 :ISA POLAR-QUESTION :STATEMENT MV9937)
 (:VAR MV9937 :ISA SHOW :AGENT MV9936 :STATEMENT-OR-THEME MV9939 :BENEFICIARY
  MV9938 :MODAL MV9935)
 (:VAR MV9936 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV9939 :ISA GENE :PREDICATION MV9940 :RAW-TEXT "genes")
 (:VAR MV9940 :ISA REGULATE :OBJECT MV9940 :AGENT MV9934 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV9934 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV9938 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV9935 :ISA CAN))

___________________
413: "Can you show me genes that are regulated by ELK1"

                    SOURCE-START
e23   SHOW          1 "Can you show me genes that are regulated by ELK1" 12
                    END-OF-SOURCE
("Can you show me genes that are regulated by ELK1"
 (:VAR MV9956 :ISA POLAR-QUESTION :STATEMENT MV9947)
 (:VAR MV9947 :ISA SHOW :AGENT MV9946 :STATEMENT-OR-THEME MV9949 :BENEFICIARY
  MV9948 :MODAL MV9945)
 (:VAR MV9946 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV9949 :ISA GENE :PREDICATION MV9954 :RAW-TEXT "genes")
 (:VAR MV9954 :ISA REGULATE :OBJECT MV9954 :THAT-REL T :AGENT MV9944 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV9944 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV9948 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV9945 :ISA CAN))

___________________
414: "Can you show me the pahtways that involve SRF"

                    SOURCE-START
e20   SHOW          1 "Can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("Can you show me the pahtways that involve SRF"
 (:VAR MV9966 :ISA POLAR-QUESTION :STATEMENT MV9959)
 (:VAR MV9959 :ISA SHOW :AGENT MV9958 :THEME MV9962 :BENEFICIARY MV9960 :MODAL
  MV9957)
 (:VAR MV9958 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV9962 :ISA BIO-ENTITY :PREDICATION MV9964 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV9964 :ISA INVOLVE :PARTICIPANT MV9964 :THAT-REL T :THEME MV9965
  :PRESENT "PRESENT")
 (:VAR MV9965 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV9960 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV9957 :ISA CAN))

___________________
415: "Can you tell me the genes regulated by STAT3"

                    SOURCE-START
e21   TELL          1 "Can you tell me the genes regulated by STAT3" 11
                    END-OF-SOURCE
("Can you tell me the genes regulated by STAT3"
 (:VAR MV9978 :ISA POLAR-QUESTION :STATEMENT MV9977)
 (:VAR MV9977 :ISA TELL :AGENT MV9969 :STATEMENT MV9973 :BENEFICIARY MV9971
  :MODAL MV9968)
 (:VAR MV9969 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV9973 :ISA GENE :PREDICATION MV9974 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV9974 :ISA REGULATE :OBJECT MV9974 :AGENT MV9967 :PAST "PAST" :RAW-TEXT
  "regulated")
 (:VAR MV9967 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV9971 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV9968 :ISA CAN))

___________________
416: "Can you tell me the genes that STAT3 regulates"

                    SOURCE-START
e21   TELL          1 "Can you tell me the genes that STAT3 regulates" 11
                    END-OF-SOURCE
("Can you tell me the genes that STAT3 regulates"
 (:VAR MV9989 :ISA POLAR-QUESTION :STATEMENT MV9988)
 (:VAR MV9988 :ISA TELL :AGENT MV9981 :STATEMENT MV9985 :BENEFICIARY MV9983
  :MODAL MV9980)
 (:VAR MV9981 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV9985 :ISA GENE :PREDICATION MV9987 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV9987 :ISA REGULATE :OBJECT MV9987 :THAT-REL T :AGENT MV9979 :PRESENT
  "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV9979 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV9983 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV9980 :ISA CAN))

___________________
417: "Can you tell me the genes that are regulated by STAT3"

                    SOURCE-START
e26   TELL          1 "Can you tell me the genes that are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes that are regulated by STAT3"
 (:VAR MV10004 :ISA POLAR-QUESTION :STATEMENT MV10003)
 (:VAR MV10003 :ISA TELL :AGENT MV9992 :STATEMENT MV9996 :BENEFICIARY MV9994
  :MODAL MV9991)
 (:VAR MV9992 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV9996 :ISA GENE :PREDICATION MV10001 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV10001 :ISA REGULATE :OBJECT MV10001 :THAT-REL T :AGENT MV9990 :PRESENT
  "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV9990 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV9994 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV9991 :ISA CAN))

___________________
418: "Can you tell me the genes which are regulated by STAT3"

                    SOURCE-START
e25   TELL          1 "Can you tell me the genes which are regulated by STAT3" 13
                    END-OF-SOURCE
("Can you tell me the genes which are regulated by STAT3"
 (:VAR MV10020 :ISA POLAR-QUESTION :STATEMENT MV10019)
 (:VAR MV10019 :ISA TELL :AGENT MV10007 :STATEMENT MV10011 :BENEFICIARY MV10009
  :MODAL MV10006)
 (:VAR MV10007 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV10011 :ISA GENE :PREDICATION MV10018 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV10018 :ISA REGULATE :OBJECT MV10018 :AGENT MV10005 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV10005 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10009 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV10006 :ISA CAN))

___________________
419: "Can you tell me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e25   TELL          1 "Can you tell me what transcription factors are shared by elk1 and srf" 15
                    END-OF-SOURCE
("Can you tell me what transcription factors are shared by elk1 and srf"
 (:VAR MV10038 :ISA POLAR-QUESTION :STATEMENT MV10037)
 (:VAR MV10037 :ISA TELL :AGENT MV10024 :STATEMENT MV10034 :STATEMENT MV10026
  :MODAL MV10023)
 (:VAR MV10024 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV10034 :ISA SHARE :OBJECT MV10021 :PARTICIPANT MV10033 :PRESENT
  "PRESENT" :RAW-TEXT "shared")
 (:VAR MV10021 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV10033 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL)
 (:VAR MV10026 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV10023 :ISA CAN))

___________________
420: "Can you tell me which genes are regulated by STAT3"

                    SOURCE-START
e21   TELL          1 "Can you tell me which genes are regulated by STAT3" 12
                    END-OF-SOURCE
("Can you tell me which genes are regulated by STAT3"
 (:VAR MV10053 :ISA POLAR-QUESTION :STATEMENT MV10052)
 (:VAR MV10052 :ISA TELL :AGENT MV10041 :STATEMENT MV10049 :STATEMENT MV10043
  :MODAL MV10040)
 (:VAR MV10041 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV10049 :ISA REGULATE :OBJECT MV10045 :AGENT MV10039 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV10045 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV10039 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10043 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV10040 :ISA CAN))

___________________
421: "Can you tell me which genes in the liver are regulated by stat3?"

                    SOURCE-START
e29   TELL          1 "Can you tell me which genes in the liver are regulated by stat3" 15
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes in the liver are regulated by stat3?"
 (:VAR MV10072 :ISA POLAR-QUESTION :STATEMENT MV10071)
 (:VAR MV10071 :ISA TELL :AGENT MV10056 :STATEMENT MV10067 :STATEMENT MV10058
  :MODAL MV10055)
 (:VAR MV10056 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV10067 :ISA REGULATE :OBJECT MV10060 :AGENT MV10054 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV10060 :ISA GENE :ORGAN MV10063 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV10063 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV10054 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10058 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV10055 :ISA CAN))

___________________
422: "Can you tell me which genes stat3 regulates?"

                    SOURCE-START
e17   TELL          1 "Can you tell me which genes stat3 regulates" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Can you tell me which genes stat3 regulates?"
 (:VAR MV10082 :ISA POLAR-QUESTION :STATEMENT MV10081)
 (:VAR MV10081 :ISA TELL :AGENT MV10075 :STATEMENT MV10079 :BENEFICIARY MV10077
  :MODAL MV10074)
 (:VAR MV10075 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV10079 :ISA GENE :PREDICATION MV10080 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV10080 :ISA REGULATE :AGENT MV10073 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV10073 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10077 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV10074 :ISA CAN))

___________________
423: "Does STAT3 affect the expression of c-fos?"

                    SOURCE-START
e17   AFFECT        1 "Does STAT3 affect the expression of c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of c-fos?"
 (:VAR MV10092 :ISA POLAR-QUESTION :STATEMENT MV10090)
 (:VAR MV10090 :ISA AFFECT :AGENT MV10083 :AFFECTED-PROCESS MV10088 :RAW-TEXT
  "affect")
 (:VAR MV10083 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10088 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV10084 :HAS-DETERMINER
  "THE" :RAW-TEXT "expression")
 (:VAR MV10084 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
424: "Does STAT3 affect the expression of the c-fos gene?"

                    SOURCE-START
e22   AFFECT        1 "Does STAT3 affect the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 affect the expression of the c-fos gene?"
 (:VAR MV10104 :ISA POLAR-QUESTION :STATEMENT MV10102)
 (:VAR MV10102 :ISA AFFECT :AGENT MV10093 :AFFECTED-PROCESS MV10098 :RAW-TEXT
  "affect")
 (:VAR MV10093 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10098 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV10101 :HAS-DETERMINER
  "THE" :RAW-TEXT "expression")
 (:VAR MV10101 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV10094 :RAW-TEXT
  "gene")
 (:VAR MV10094 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
425: "Does STAT3 increase the expression of the c-fos gene?"

                    SOURCE-START
e23   INCREASE      1 "Does STAT3 increase the expression of the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase the expression of the c-fos gene?"
 (:VAR MV10117 :ISA POLAR-QUESTION :STATEMENT MV10115)
 (:VAR MV10115 :ISA INCREASE :AGENT MV10105 :AFFECTED-PROCESS MV10111 :RAW-TEXT
  "increase")
 (:VAR MV10105 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10111 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV10114 :HAS-DETERMINER
  "THE" :RAW-TEXT "expression")
 (:VAR MV10114 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV10106 :RAW-TEXT
  "gene")
 (:VAR MV10106 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
426: "Does STAT3 increase transcription of the c-fos gene?"

                    SOURCE-START
e20   INCREASE      1 "Does STAT3 increase transcription of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 increase transcription of the c-fos gene?"
 (:VAR MV10129 :ISA POLAR-QUESTION :STATEMENT MV10127)
 (:VAR MV10127 :ISA INCREASE :AGENT MV10118 :AFFECTED-PROCESS MV10123 :RAW-TEXT
  "increase")
 (:VAR MV10118 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10123 :ISA TRANSCRIBE :OBJECT MV10126 :RAW-TEXT "transcription")
 (:VAR MV10126 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV10119 :RAW-TEXT
  "gene")
 (:VAR MV10119 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
427: "Does stat3 affect the expression of cfos?"

                    SOURCE-START
e16   AFFECT        1 "Does stat3 affect the expression of cfos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Does stat3 affect the expression of cfos?"
 (:VAR MV10139 :ISA POLAR-QUESTION :STATEMENT MV10137)
 (:VAR MV10137 :ISA AFFECT :AGENT MV10130 :AFFECTED-PROCESS MV10134 :RAW-TEXT
  "affect")
 (:VAR MV10130 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10134 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV10136 :HAS-DETERMINER
  "THE" :RAW-TEXT "expression")
 (:VAR MV10136 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
428: "Does the mTor pathway contain SGK1?"

                    SOURCE-START
e15   CONTAIN       1 "Does the mTor pathway contain SGK1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the mTor pathway contain SGK1?"
 (:VAR MV10149 :ISA POLAR-QUESTION :STATEMENT MV10148)
 (:VAR MV10148 :ISA CONTAIN :PARTICIPANT MV10146 :THEME MV10140)
 (:VAR MV10146 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV10143 :RAW-TEXT
  "pathway")
 (:VAR MV10143 :ISA PROTEIN :RAW-TEXT "mTor" :UID "UP:P42345" :NAME
  "MTOR_HUMAN")
 (:VAR MV10140 :ISA PROTEIN :RAW-TEXT "SGK1" :UID "UP:O00141" :NAME
  "SGK1_HUMAN"))

___________________
429: "Find a treatment for pancreatic cancer."

                    SOURCE-START
e11   BIO-FIND      1 "Find a treatment for pancreatic cancer" 7
                    PERIOD
                    END-OF-SOURCE
("Find a treatment for pancreatic cancer."
 (:VAR MV10151 :ISA BIO-FIND :OBJECT MV10153 :PRESENT "PRESENT" :RAW-TEXT
  "Find")
 (:VAR MV10153 :ISA TREATMENT :DISEASE MV10150 :HAS-DETERMINER "A" :RAW-TEXT
  "treatment")
 (:VAR MV10150 :ISA CANCER :UID "TS-0739"))

___________________
430: "Find genes in the liver regulated by stat3"

                    SOURCE-START
e17   BIO-FIND      1 "Find genes in the liver regulated by stat3" 10
                    END-OF-SOURCE
("Find genes in the liver regulated by stat3"
 (:VAR MV10157 :ISA BIO-FIND :OBJECT MV10158 :PRESENT "PRESENT" :RAW-TEXT
  "Find")
 (:VAR MV10158 :ISA GENE :PREDICATION MV10162 :ORGAN MV10161 :RAW-TEXT "genes")
 (:VAR MV10162 :ISA REGULATE :OBJECT MV10162 :AGENT MV10156 :PAST "PAST"
  :RAW-TEXT "regulated")
 (:VAR MV10156 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10161 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
431: "Find genes that stat3 regulates"

                    SOURCE-START
e11   BIO-FIND      1 "Find genes that stat3 regulates" 7
                    END-OF-SOURCE
("Find genes that stat3 regulates"
 (:VAR MV10167 :ISA BIO-FIND :OBJECT MV10168 :PRESENT "PRESENT" :RAW-TEXT
  "Find")
 (:VAR MV10168 :ISA GENE :PREDICATION MV10170 :RAW-TEXT "genes")
 (:VAR MV10170 :ISA REGULATE :OBJECT MV10170 :THAT-REL T :AGENT MV10166
  :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV10166 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
432: "Find transcription factors shared by elk1 and srf"

                    SOURCE-START
e13   BIO-FIND      1 "Find transcription factors shared by elk1 and srf" 10
                    END-OF-SOURCE
("Find transcription factors shared by elk1 and srf"
 (:VAR MV10173 :ISA BIO-FIND :OBJECT MV10171 :PRESENT "PRESENT" :RAW-TEXT
  "Find")
 (:VAR MV10171 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV10174 :RAW-TEXT
  "transcription factors")
 (:VAR MV10174 :ISA SHARE :OBJECT MV10174 :PARTICIPANT MV10178 :PAST "PAST"
  :RAW-TEXT "shared")
 (:VAR MV10178 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL))

___________________
433: "How does KRAS activate MAPK3?"

                    SOURCE-START
e9    BIO-ACTIVATE  1 "How does KRAS activate MAPK3" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does KRAS activate MAPK3?"
 (:VAR MV10185 :ISA BIO-ACTIVATE :MANNER MV10181 :AGENT MV10183 :OBJECT MV10180
  :RAW-TEXT "activate")
 (:VAR MV10181 :ISA HOW)
 (:VAR MV10183 :ISA PROTEIN :RAW-TEXT "KRAS" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV10180 :ISA PROTEIN :RAW-TEXT "MAPK3" :UID "UP:P27361" :NAME
  "MK03_HUMAN"))

___________________
434: "How does STAT3 regulate the c-fos gene?"

                    SOURCE-START
e15   REGULATE      1 "How does STAT3 regulate the c-fos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("How does STAT3 regulate the c-fos gene?"
 (:VAR MV10193 :ISA REGULATE :MANNER MV10188 :AGENT MV10186 :OBJECT MV10192
  :RAW-TEXT "regulate")
 (:VAR MV10188 :ISA HOW)
 (:VAR MV10186 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10192 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV10187 :RAW-TEXT
  "gene")
 (:VAR MV10187 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
435: "How does knocking out p53 cause cancer via its effect on miRNAs?"

                    SOURCE-START
e2    HOW           1 "How " 2
e3    DO            2 "does " 3
e4    KNOCK         3 "knocking " 4
e20   OUT           4 "out p53 " 7
e19   CAUSE         7 "cause cancer " 9
e9    VIA           9 "via " 10
e10   PRONOUN/INANIMATE 10 "its " 11
e18   EFFECT        11 "effect on miRNAs" 14
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
436: "How does stat3 regulate apoptosis in the liver?"

                    SOURCE-START
e17   REGULATE      1 "How does stat3 regulate apoptosis in the liver" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis in the liver?"
 (:VAR MV10219 :ISA REGULATE :MANNER MV10212 :AGENT MV10211 :AFFECTED-PROCESS
  MV10215 :RAW-TEXT "regulate")
 (:VAR MV10212 :ISA HOW)
 (:VAR MV10211 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10215 :ISA APOPTOSIS :ORGAN MV10218 :RAW-TEXT "apoptosis")
 (:VAR MV10218 :ISA LIVER :HAS-DETERMINER "THE"))

___________________
437: "How does stat3 regulate apoptosis?"

                    SOURCE-START
e9    REGULATE      1 "How does stat3 regulate apoptosis" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptosis?"
 (:VAR MV10226 :ISA REGULATE :MANNER MV10222 :AGENT MV10221 :AFFECTED-PROCESS
  MV10225 :RAW-TEXT "regulate")
 (:VAR MV10222 :ISA HOW)
 (:VAR MV10221 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10225 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
438: "How does stat3 regulate apoptotic genes?"

                    SOURCE-START
e12   REGULATE      1 "How does stat3 regulate apoptotic genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("How does stat3 regulate apoptotic genes?"
 (:VAR MV10234 :ISA REGULATE :MANNER MV10228 :AGENT MV10227 :OBJECT MV10233
  :RAW-TEXT "regulate")
 (:VAR MV10228 :ISA HOW)
 (:VAR MV10227 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10233 :ISA GENE :PREDICATION MV10231 :RAW-TEXT "genes")
 (:VAR MV10231 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
439: "How is stat3 involved in apoptotic regulation?"

                    SOURCE-START
e15   INVOLVE       1 "How is stat3 involved in apoptotic regulation" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotic regulation?"
 (:VAR MV10243 :ISA INVOLVE :MANNER MV10236 :PARTICIPANT MV10235 :THEME
  MV10242)
 (:VAR MV10236 :ISA HOW)
 (:VAR MV10235 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10242 :ISA REGULATE :AGENT MV10240 :RAW-TEXT "regulation")
 (:VAR MV10240 :ISA APOPTOSIS :RAW-TEXT "apoptotic"))

___________________
440: "How is stat3 involved in apoptotis regulation in the liver?"

                    SOURCE-START
e22   INVOLVE       1 "How is stat3 involved in apoptotis regulation in the liver" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in apoptotis regulation in the liver?"
 (:VAR MV10255 :ISA INVOLVE :MANNER MV10246 :PARTICIPANT MV10245 :THEME
  MV10251)
 (:VAR MV10246 :ISA HOW)
 (:VAR MV10245 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10251 :ISA REGULATE :ORGAN MV10254 :OBJECT MV10250 :RAW-TEXT
  "regulation")
 (:VAR MV10254 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV10250 :ISA BIO-ENTITY :NAME "apoptotis"))

___________________
441: "How is stat3 involved in regulating apoptosis?"

                    SOURCE-START
e14   INVOLVE       1 "How is stat3 involved in regulating apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 involved in regulating apoptosis?"
 (:VAR MV10265 :ISA INVOLVE :MANNER MV10259 :PARTICIPANT MV10258 :THEME
  MV10263)
 (:VAR MV10259 :ISA HOW)
 (:VAR MV10258 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10263 :ISA REGULATE :AFFECTED-PROCESS MV10264 :PROGRESSIVE
  "PROGRESSIVE" :RAW-TEXT "regulating")
 (:VAR MV10264 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
442: "How is stat3 used to regulate apoptosis?"

                    SOURCE-START
e14   BIO-USE       1 "How is stat3 used to regulate apoptosis" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("How is stat3 used to regulate apoptosis?"
 (:VAR MV10274 :ISA BIO-USE :MANNER MV10268 :OBJECT MV10267 :THEME MV10275
  :RAW-TEXT "used")
 (:VAR MV10268 :ISA HOW)
 (:VAR MV10267 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10275 :ISA REGULATE :AFFECTED-PROCESS MV10273 :RAW-TEXT "regulate")
 (:VAR MV10273 :ISA APOPTOSIS :RAW-TEXT "apoptosis"))

___________________
443: "How many genes are in the MAPK signaling pathway?"

                    SOURCE-START
e19   COPULAR-PREDICATE 1 "How many genes are in the MAPK signaling pathway" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How many genes are in the MAPK signaling pathway?"
 (:VAR MV10287 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV10279 :VALUE MV10286
  :PREP "IN" :PREDICATE MV10280)
 (:VAR MV10279 :ISA GENE :HAS-DETERMINER "HOW" :QUANTIFIER MV10278 :RAW-TEXT
  "genes")
 (:VAR MV10278 :ISA MANY :WORD "many")
 (:VAR MV10286 :ISA GENE :CONTEXT MV10276 :HAS-DETERMINER "HOW" :QUANTIFIER
  MV10278 :RAW-TEXT "genes")
 (:VAR MV10276 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV10283
  :RAW-TEXT "signaling pathway")
 (:VAR MV10283 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV10278 :ISA MANY :WORD "many") (:VAR MV10280 :ISA BE))

___________________
444: "How might a STAT3 mutation affect breast cancer?"

                    SOURCE-START
e15   AFFECT        1 "How might a STAT3 mutation affect breast cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("How might a STAT3 mutation affect breast cancer?"
 (:VAR MV10296 :ISA AFFECT :MANNER MV10291 :MODAL MV10292 :AGENT MV10294
  :OBJECT MV10290 :MODAL MV10292 :RAW-TEXT "affect")
 (:VAR MV10291 :ISA HOW) (:VAR MV10292 :ISA MIGHT)
 (:VAR MV10294 :ISA MUTATION :OBJECT MV10289 :HAS-DETERMINER "A"
  :AGENT-OR-OBJECT MV10289 :RAW-TEXT "mutation")
 (:VAR MV10289 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10289 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10290 :ISA CANCER :UID "TS-0591") (:VAR MV10292 :ISA MIGHT))

___________________
445: "Is STAT3 a regulator for c-fos?"

                    SOURCE-START
e4    BE            1 "Is " 2
e1    PROTEIN       2 "STAT3 " 4
e10   REGULATOR     4 "a regulator " 6
e11   FOR           6 "for c-fos" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
446: "Is STAT3 a regulator of c-fos"

                    SOURCE-START
e15   BE            1 "Is STAT3 a regulator of c-fos" 10
                    END-OF-SOURCE
("Is STAT3 a regulator of c-fos"
 (:VAR MV10311 :ISA POLAR-QUESTION :STATEMENT MV10306)
 (:VAR MV10306 :ISA BE :PREDICATE MV10308 :SUBJECT MV10304)
 (:VAR MV10308 :ISA REGULATOR :THEME MV10305 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV10305 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV10304 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
447: "Is STAT3 a regulator of the c-fos gene"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene"
 (:VAR MV10321 :ISA POLAR-QUESTION :STATEMENT MV10314)
 (:VAR MV10314 :ISA BE :PREDICATE MV10316 :SUBJECT MV10312)
 (:VAR MV10316 :ISA REGULATOR :THEME MV10319 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV10319 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV10313 :RAW-TEXT
  "gene")
 (:VAR MV10313 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV10312 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
448: "Is STAT3 a regulator of the c-fos gene?"

                    SOURCE-START
e20   BE            1 "Is STAT3 a regulator of the c-fos gene" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a regulator of the c-fos gene?"
 (:VAR MV10331 :ISA POLAR-QUESTION :STATEMENT MV10324)
 (:VAR MV10324 :ISA BE :PREDICATE MV10326 :SUBJECT MV10322)
 (:VAR MV10326 :ISA REGULATOR :THEME MV10329 :HAS-DETERMINER "A" :RAW-TEXT
  "regulator")
 (:VAR MV10329 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV10323 :RAW-TEXT
  "gene")
 (:VAR MV10323 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV10322 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
449: "Is STAT3 a transcription factor for c-fos gene"

                    SOURCE-START
e18   BE            1 "Is STAT3 a transcription factor for c-fos gene" 12
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos gene"
 (:VAR MV10340 :ISA POLAR-QUESTION :STATEMENT MV10335)
 (:VAR MV10335 :ISA BE :PREDICATE MV10333 :SUBJECT MV10332)
 (:VAR MV10333 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV10338
  :HAS-DETERMINER "A" :RAW-TEXT "transcription factor")
 (:VAR MV10338 :ISA GENE :EXPRESSES MV10334 :RAW-TEXT "gene")
 (:VAR MV10334 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV10332 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
450: "Is STAT3 a transcription factor for c-fos"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos"
 (:VAR MV10348 :ISA POLAR-QUESTION :STATEMENT MV10344)
 (:VAR MV10344 :ISA BE :PREDICATE MV10342 :SUBJECT MV10341)
 (:VAR MV10342 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV10343
  :HAS-DETERMINER "A" :RAW-TEXT "transcription factor")
 (:VAR MV10343 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV10341 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
451: "Is STAT3 a transcription factor for c-fos?"

                    SOURCE-START
e16   BE            1 "Is STAT3 a transcription factor for c-fos" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for c-fos?"
 (:VAR MV10356 :ISA POLAR-QUESTION :STATEMENT MV10352)
 (:VAR MV10352 :ISA BE :PREDICATE MV10350 :SUBJECT MV10349)
 (:VAR MV10350 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV10351
  :HAS-DETERMINER "A" :RAW-TEXT "transcription factor")
 (:VAR MV10351 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV10349 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
452: "Is STAT3 a transcription factor for the c-fos gene?"

                    SOURCE-START
e21   BE            1 "Is STAT3 a transcription factor for the c-fos gene" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor for the c-fos gene?"
 (:VAR MV10366 :ISA POLAR-QUESTION :STATEMENT MV10360)
 (:VAR MV10360 :ISA BE :PREDICATE MV10358 :SUBJECT MV10357)
 (:VAR MV10358 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV10364
  :HAS-DETERMINER "A" :RAW-TEXT "transcription factor")
 (:VAR MV10364 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV10359 :RAW-TEXT
  "gene")
 (:VAR MV10359 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV10357 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
453: "Is STAT3 regulated by c-fos?"

                    SOURCE-START
e12   REGULATE      1 "Is STAT3 regulated by c-fos" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 regulated by c-fos?"
 (:VAR MV10374 :ISA POLAR-QUESTION :STATEMENT MV10372)
 (:VAR MV10372 :ISA REGULATE :OBJECT MV10367 :AGENT MV10368 :RAW-TEXT
  "regulated")
 (:VAR MV10367 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10368 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
454: "Is Stat3 a transcription factor for the c-fos gene"

                    SOURCE-START
e21   BE            1 "Is Stat3 a transcription factor for the c-fos gene" 13
                    END-OF-SOURCE
("Is Stat3 a transcription factor for the c-fos gene"
 (:VAR MV10384 :ISA POLAR-QUESTION :STATEMENT MV10378)
 (:VAR MV10378 :ISA BE :PREDICATE MV10376 :SUBJECT MV10375)
 (:VAR MV10376 :ISA TRANSCRIPTION-FACTOR :CONTROLLED-GENE MV10382
  :HAS-DETERMINER "A" :RAW-TEXT "transcription factor")
 (:VAR MV10382 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV10377 :RAW-TEXT
  "gene")
 (:VAR MV10377 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV10375 :ISA PROTEIN :RAW-TEXT "Stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
455: "List genes regulated by ELK1"

                    SOURCE-START
e9    LIST          1 "List genes regulated by ELK1" 7
                    END-OF-SOURCE
("List genes regulated by ELK1"
 (:VAR MV10386 :ISA LIST :THEME MV10387 :PRESENT "PRESENT")
 (:VAR MV10387 :ISA GENE :PREDICATION MV10388 :RAW-TEXT "genes")
 (:VAR MV10388 :ISA REGULATE :OBJECT MV10388 :AGENT MV10385 :PAST "PAST"
  :RAW-TEXT "regulated")
 (:VAR MV10385 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
456: "List genes that are regulated by ELK1"

                    SOURCE-START
e16   LIST          1 "List genes that are regulated by ELK1" 9
                    END-OF-SOURCE
("List genes that are regulated by ELK1"
 (:VAR MV10392 :ISA LIST :THEME MV10393 :PRESENT "PRESENT")
 (:VAR MV10393 :ISA GENE :PREDICATION MV10398 :RAW-TEXT "genes")
 (:VAR MV10398 :ISA REGULATE :OBJECT MV10398 :THAT-REL T :AGENT MV10391
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV10391 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
457: "List some genes that stat3 regulates"

                    SOURCE-START
e13   LIST          1 "List some genes that stat3 regulates" 8
                    END-OF-SOURCE
("List some genes that stat3 regulates"
 (:VAR MV10401 :ISA LIST :THEME MV10403 :PRESENT "PRESENT")
 (:VAR MV10403 :ISA GENE :PREDICATION MV10405 :QUANTIFIER MV10402 :RAW-TEXT
  "genes")
 (:VAR MV10405 :ISA REGULATE :OBJECT MV10405 :THAT-REL T :AGENT MV10400
  :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV10400 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10402 :ISA SOME :WORD "some"))

___________________
458: "List the genes STAT3 regulates"

                    SOURCE-START
e9    LIST          1 "List the genes " 4
e8    REGULATE      4 "STAT3 regulates" 7
                    END-OF-SOURCE


___________________
459: "List the genes that are regulated by STAT3"

                    SOURCE-START
e19   LIST          1 "List the genes that are regulated by STAT3" 10
                    END-OF-SOURCE
("List the genes that are regulated by STAT3"
 (:VAR MV10412 :ISA LIST :THEME MV10414 :PRESENT "PRESENT")
 (:VAR MV10414 :ISA GENE :PREDICATION MV10419 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV10419 :ISA REGULATE :OBJECT MV10419 :THAT-REL T :AGENT MV10411
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV10411 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
460: "List the genes which STAT3 regulates"

                    SOURCE-START
e11   LIST          1 "List the genes " 4
e10   REGULATE      4 "which STAT3 regulates" 8
                    END-OF-SOURCE


___________________
461: "List the pahtways that involve SRF"

                    SOURCE-START
e13   LIST          1 "List the pahtways that involve SRF" 7
                    END-OF-SOURCE
("List the pahtways that involve SRF"
 (:VAR MV10427 :ISA LIST :THEME MV10429 :PRESENT "PRESENT")
 (:VAR MV10429 :ISA BIO-ENTITY :PREDICATION MV10431 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV10431 :ISA INVOLVE :PARTICIPANT MV10431 :THAT-REL T :THEME MV10432
  :PRESENT "PRESENT")
 (:VAR MV10432 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
462: "Show me genes regulated by ELK1"

                    SOURCE-START
e13   SHOW          1 "Show me genes regulated by ELK1" 8
                    END-OF-SOURCE
("Show me genes regulated by ELK1"
 (:VAR MV10434 :ISA SHOW :STATEMENT-OR-THEME MV10436 :BENEFICIARY MV10435
  :PRESENT "PRESENT")
 (:VAR MV10436 :ISA GENE :PREDICATION MV10437 :RAW-TEXT "genes")
 (:VAR MV10437 :ISA REGULATE :OBJECT MV10437 :AGENT MV10433 :PAST "PAST"
  :RAW-TEXT "regulated")
 (:VAR MV10433 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV10435 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
463: "Show me genes that are regulated by ELK1"

                    SOURCE-START
e18   SHOW          1 "Show me genes that are regulated by ELK1" 10
                    END-OF-SOURCE
("Show me genes that are regulated by ELK1"
 (:VAR MV10441 :ISA SHOW :STATEMENT-OR-THEME MV10443 :BENEFICIARY MV10442
  :PRESENT "PRESENT")
 (:VAR MV10443 :ISA GENE :PREDICATION MV10448 :RAW-TEXT "genes")
 (:VAR MV10448 :ISA REGULATE :OBJECT MV10448 :THAT-REL T :AGENT MV10440
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV10440 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN")
 (:VAR MV10442 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
464: "Show me genes that stat3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show me genes that stat3 regulates" 8
                    END-OF-SOURCE
("Show me genes that stat3 regulates"
 (:VAR MV10451 :ISA SHOW :STATEMENT-OR-THEME MV10453 :BENEFICIARY MV10452
  :PRESENT "PRESENT")
 (:VAR MV10453 :ISA GENE :PREDICATION MV10455 :RAW-TEXT "genes")
 (:VAR MV10455 :ISA REGULATE :OBJECT MV10455 :THAT-REL T :AGENT MV10450
  :PRESENT "PRESENT" :RAW-TEXT "regulates")
 (:VAR MV10450 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10452 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
465: "Show me the pahtways that involve SRF"

                    SOURCE-START
e15   SHOW          1 "Show me the pahtways that involve SRF" 8
                    END-OF-SOURCE
("Show me the pahtways that involve SRF"
 (:VAR MV10456 :ISA SHOW :THEME MV10459 :BENEFICIARY MV10457 :PRESENT
  "PRESENT")
 (:VAR MV10459 :ISA BIO-ENTITY :PREDICATION MV10461 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV10461 :ISA INVOLVE :PARTICIPANT MV10461 :THAT-REL T :THEME MV10462
  :PRESENT "PRESENT")
 (:VAR MV10462 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV10457 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
466: "Show me what transcription factors are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show me what transcription factors are shared by elk1 and srf" 13
                    END-OF-SOURCE
("Show me what transcription factors are shared by elk1 and srf"
 (:VAR MV10476 :ISA SHOW :STATEMENT MV10474 :THEME MV10466 :PRESENT "PRESENT")
 (:VAR MV10474 :ISA SHARE :OBJECT MV10463 :PARTICIPANT MV10473 :PRESENT
  "PRESENT" :RAW-TEXT "shared")
 (:VAR MV10463 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV10473 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL)
 (:VAR MV10466 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
467: "Show me which genes are regulated by STAT3"

                    SOURCE-START
e16   SHOW          1 "Show me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Show me which genes are regulated by STAT3"
 (:VAR MV10487 :ISA SHOW :STATEMENT MV10485 :THEME MV10479 :PRESENT "PRESENT")
 (:VAR MV10485 :ISA REGULATE :OBJECT MV10481 :AGENT MV10477 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV10481 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV10477 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10479 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
468: "Show the genes which STAT3 regulates"

                    SOURCE-START
e13   SHOW          1 "Show the genes which STAT3 regulates" 8
                    END-OF-SOURCE
("Show the genes which STAT3 regulates"
 (:VAR MV10489 :ISA SHOW :STATEMENT-OR-THEME MV10491 :PRESENT "PRESENT")
 (:VAR MV10491 :ISA GENE :PREDICATION MV10493 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV10493 :ISA REGULATE :AGENT MV10488 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV10488 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN"))

___________________
469: "Show the pahtways that involve SRF"

                    SOURCE-START
e13   SHOW          1 "Show the pahtways that involve SRF" 7
                    END-OF-SOURCE
("Show the pahtways that involve SRF"
 (:VAR MV10494 :ISA SHOW :THEME MV10496 :PRESENT "PRESENT")
 (:VAR MV10496 :ISA BIO-ENTITY :PREDICATION MV10498 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV10498 :ISA INVOLVE :PARTICIPANT MV10498 :THAT-REL T :THEME MV10499
  :PRESENT "PRESENT")
 (:VAR MV10499 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
470: "Show transcription factors that are shared by elk1 and srf"

                    SOURCE-START
e20   SHOW          1 "Show transcription factors that are shared by elk1 and srf" 12
                    END-OF-SOURCE
("Show transcription factors that are shared by elk1 and srf"
 (:VAR MV10502 :ISA SHOW :STATEMENT-OR-THEME MV10500 :PRESENT "PRESENT")
 (:VAR MV10500 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV10510 :RAW-TEXT
  "transcription factors")
 (:VAR MV10510 :ISA SHARE :OBJECT MV10510 :THAT-REL T :PARTICIPANT MV10509
  :PRESENT "PRESENT" :RAW-TEXT "shared")
 (:VAR MV10509 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL))

___________________
471: "Tell me the genes which are regulated by STAT3"

                    SOURCE-START
e20   TELL          1 "Tell me the genes which are regulated by STAT3" 11
                    END-OF-SOURCE
("Tell me the genes which are regulated by STAT3"
 (:VAR MV10524 :ISA TELL :STATEMENT MV10516 :BENEFICIARY MV10514 :PRESENT
  "PRESENT")
 (:VAR MV10516 :ISA GENE :PREDICATION MV10523 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV10523 :ISA REGULATE :OBJECT MV10523 :AGENT MV10512 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV10512 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10514 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
472: "Tell me what genes are regulated by elk1 and srf"

                    SOURCE-START
e19   TELL          1 "Tell me what genes are regulated by elk1 and srf" 12
                    END-OF-SOURCE
("Tell me what genes are regulated by elk1 and srf"
 (:VAR MV10539 :ISA TELL :STATEMENT MV10536 :STATEMENT MV10527 :PRESENT
  "PRESENT")
 (:VAR MV10536 :ISA REGULATE :OBJECT MV10529 :AGENT MV10535 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV10529 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV10535 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL)
 (:VAR MV10527 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
473: "Tell me which genes are regulated by STAT3"

                    SOURCE-START
e16   TELL          1 "Tell me which genes are regulated by STAT3" 10
                    END-OF-SOURCE
("Tell me which genes are regulated by STAT3"
 (:VAR MV10551 :ISA TELL :STATEMENT MV10548 :STATEMENT MV10542 :PRESENT
  "PRESENT")
 (:VAR MV10548 :ISA REGULATE :OBJECT MV10544 :AGENT MV10540 :PRESENT "PRESENT"
  :RAW-TEXT "regulated")
 (:VAR MV10544 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV10540 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10542 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
474: "What are positive regulators of cfos?"

                    SOURCE-START
e10   BE            1 "What are positive regulators of cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of cfos?"
 (:VAR MV10559 :ISA BE :PREDICATE MV10555 :SUBJECT MV10552)
 (:VAR MV10555 :ISA REGULATOR :THEME MV10557 :PREDICATION MV10554 :RAW-TEXT
  "regulators")
 (:VAR MV10557 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV10554 :ISA POSITIVE) (:VAR MV10552 :ISA WHAT))

___________________
475: "What are some regulators of SMURF2?"

                    SOURCE-START
e11   BE            1 "What are some regulators of SMURF2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are some regulators of SMURF2?"
 (:VAR MV10567 :ISA BE :PREDICATE MV10564 :SUBJECT MV10561)
 (:VAR MV10564 :ISA REGULATOR :THEME MV10560 :QUANTIFIER MV10563 :RAW-TEXT
  "regulators")
 (:VAR MV10560 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN")
 (:VAR MV10563 :ISA SOME :WORD "some") (:VAR MV10561 :ISA WHAT))

___________________
476: "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"

                    SOURCE-START
e30   BE            1 "What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" 24
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
 (:VAR MV10583 :ISA BE :PREDICATE MV10577 :SUBJECT MV10573)
 (:VAR MV10577 :ISA REGULATOR :THEME MV10581 :HAS-DETERMINER "THE" :PREDICATION
  MV10576 :RAW-TEXT "regulators")
 (:VAR MV10581 :ISA COLLECTION :RAW-TEXT
  "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :TYPE PROTEIN :NUMBER 6 :ITEMS
  NIL)
 (:VAR MV10576 :ISA COMMON) (:VAR MV10573 :ISA WHAT))

___________________
477: "What are the common regulators of elk1 and srf"

                    SOURCE-START
e17   BE            1 "What are the common regulators of elk1 and srf" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srf"
 (:VAR MV10595 :ISA BE :PREDICATE MV10589 :SUBJECT MV10585)
 (:VAR MV10589 :ISA REGULATOR :THEME MV10593 :HAS-DETERMINER "THE" :PREDICATION
  MV10588 :RAW-TEXT "regulators")
 (:VAR MV10593 :ISA COLLECTION :RAW-TEXT "elk1 and srf" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL)
 (:VAR MV10588 :ISA COMMON) (:VAR MV10585 :ISA WHAT))

___________________
478: "What are the common regulators of elk1 and srg"

                    SOURCE-START
e17   BE            1 "What are the common regulators of elk1 and srg" 11
                    END-OF-SOURCE
("What are the common regulators of elk1 and srg"
 (:VAR MV10607 :ISA BE :PREDICATE MV10601 :SUBJECT MV10597)
 (:VAR MV10601 :ISA REGULATOR :THEME MV10605 :HAS-DETERMINER "THE" :PREDICATION
  MV10600 :RAW-TEXT "regulators")
 (:VAR MV10605 :ISA COLLECTION :RAW-TEXT "elk1 and srg" :TYPE PROTEIN :NUMBER 2
  :ITEMS NIL)
 (:VAR MV10600 :ISA COMMON) (:VAR MV10597 :ISA WHAT))

___________________
479: "What are the common regulators of those genes"

                    SOURCE-START
e15   BE            1 "What are the common regulators of those genes" 9
                    END-OF-SOURCE
("What are the common regulators of those genes"
 (:VAR MV10617 :ISA BE :PREDICATE MV10612 :SUBJECT MV10608)
 (:VAR MV10612 :ISA REGULATOR :THEME MV10615 :HAS-DETERMINER "THE" :PREDICATION
  MV10611 :RAW-TEXT "regulators")
 (:VAR MV10615 :ISA GENE :HAS-DETERMINER "THOSE" :RAW-TEXT "genes")
 (:VAR MV10611 :ISA COMMON) (:VAR MV10608 :ISA WHAT))

___________________
480: "What are the genes regulated by STAT3?"

                    SOURCE-START
e2    WHAT          1 "What " 2
e3    BE            2 "are " 3
e14   REGULATE      3 "the genes regulated by STAT3" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
481: "What are the genes which STAT3 regulates?"

                    SOURCE-START
e14   BE            1 "What are the genes which STAT3 regulates" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes which STAT3 regulates?"
 (:VAR MV10634 :ISA BE :PREDICATE MV10631 :SUBJECT MV10628)
 (:VAR MV10631 :ISA GENE :PREDICATION MV10633 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV10633 :ISA REGULATE :AGENT MV10627 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV10627 :ISA PROTEIN :HAS-DETERMINER "WHICH" :RAW-TEXT "STAT3" :UID
  "UP:P40763" :NAME "STAT3_HUMAN")
 (:VAR MV10628 :ISA WHAT))

___________________
482: "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"

                    SOURCE-START
e28   BE            1 "What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3" 21
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
 (:VAR MV10650 :ISA BE :PREDICATE MV10643 :SUBJECT MV10638)
 (:VAR MV10643 :ISA REGULATOR :THEME MV10648 :HAS-DETERMINER "THE" :MODIFIER
  MV10642 :RAW-TEXT "regulators")
 (:VAR MV10648 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2, and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS NIL)
 (:VAR MV10642 :ISA FREQUENT :COMPARATIVE MV10641)
 (:VAR MV10641 :ISA SUPERLATIVE-QUANTIFIER :NAME "most")
 (:VAR MV10638 :ISA WHAT))

___________________
483: "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"

                    SOURCE-START
e27   BE            1 "What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
 (:VAR MV10664 :ISA BE :PREDICATE MV10651 :SUBJECT MV10655)
 (:VAR MV10651 :ISA TRANSCRIPTION-FACTOR :PREDICATION MV10659 :HAS-DETERMINER
  "THE" :RAW-TEXT "transcription factors")
 (:VAR MV10659 :ISA REGULATE :AGENT MV10659 :THAT-REL T :OBJECT MV10663
  :PRESENT "PRESENT" :RAW-TEXT "regulate")
 (:VAR MV10663 :ISA COLLECTION :RAW-TEXT "EGFR, SRF, STAT3, JAK2 and SMAD3"
  :TYPE PROTEIN :NUMBER 5 :ITEMS NIL)
 (:VAR MV10655 :ISA WHAT))

___________________
484: "What other genes are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other genes are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other genes are in the first pathway?"
 (:VAR MV10676 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV10667 :VALUE MV10675
  :PREP "IN" :PREDICATE MV10668)
 (:VAR MV10667 :ISA GENE :HAS-DETERMINER "WHAT" :QUANTIFIER MV10666 :RAW-TEXT
  "genes")
 (:VAR MV10666 :ISA OTHER :WORD "other")
 (:VAR MV10675 :ISA GENE :CONTEXT MV10672 :HAS-DETERMINER "WHAT" :QUANTIFIER
  MV10666 :RAW-TEXT "genes")
 (:VAR MV10672 :ISA PATHWAY :HAS-DETERMINER "THE" :NUMBER MV10671 :RAW-TEXT
  "pathway")
 (:VAR MV10671 :ISA ORDINAL :WORD "first" :NUMBER 1)
 (:VAR MV10666 :ISA OTHER :WORD "other") (:VAR MV10668 :ISA BE))

___________________
485: "What other proteins are in the first pathway?"

                    SOURCE-START
e18   COPULAR-PREDICATE 1 "What other proteins are in the first pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What other proteins are in the first pathway?"
 (:VAR MV10689 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV10680 :VALUE MV10688
  :PREP "IN" :PREDICATE MV10681)
 (:VAR MV10680 :ISA PROTEIN :HAS-DETERMINER "WHAT" :QUANTIFIER MV10679
  :RAW-TEXT "proteins")
 (:VAR MV10679 :ISA OTHER :WORD "other")
 (:VAR MV10688 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV10685 :HAS-DETERMINER
  "WHAT" :QUANTIFIER MV10679 :RAW-TEXT "proteins")
 (:VAR MV10685 :ISA PATHWAY :HAS-DETERMINER "THE" :NUMBER MV10684 :RAW-TEXT
  "pathway")
 (:VAR MV10684 :ISA ORDINAL :WORD "first" :NUMBER 1)
 (:VAR MV10679 :ISA OTHER :WORD "other") (:VAR MV10681 :ISA BE))

___________________
486: "What pathways are they in?"

                    SOURCE-START
e6    PATHWAY       1 "What pathways " 3
e2    BE            3 "are " 4
e3    PRONOUN/PLURAL  4 "they " 5
e5    IN            5 "in" 6
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
487: "What pathways involve SOARING?"

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve SOARING" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SOARING?"
 (:VAR MV10698 :ISA INVOLVE :PARTICIPANT MV10697 :THEME MV10699 :PRESENT
  "PRESENT")
 (:VAR MV10697 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV10699 :ISA SOAR :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT "SOARING"))

___________________
488: "What proteins are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What proteins are in the first pathway" 8
                    END-OF-SOURCE
("What proteins are in the first pathway"
 (:VAR MV10710 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV10701 :VALUE MV10709
  :PREP "IN" :PREDICATE MV10702)
 (:VAR MV10701 :ISA PROTEIN :HAS-DETERMINER "WHAT" :RAW-TEXT "proteins")
 (:VAR MV10709 :ISA PROTEIN :CONTEXT-OR-IN-PATHWAY MV10706 :HAS-DETERMINER
  "WHAT" :RAW-TEXT "proteins")
 (:VAR MV10706 :ISA PATHWAY :HAS-DETERMINER "THE" :NUMBER MV10705 :RAW-TEXT
  "pathway")
 (:VAR MV10705 :ISA ORDINAL :WORD "first" :NUMBER 1) (:VAR MV10702 :ISA BE))

___________________
489: "What pathways involve frizzled8?"

                    SOURCE-START
e7    INVOLVE       1 "What pathways involve frizzled8" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve frizzled8?"
 (:VAR MV10715 :ISA INVOLVE :PARTICIPANT MV10714 :THEME MV10712 :PRESENT
  "PRESENT")
 (:VAR MV10714 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV10712 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
490: "What genes are in the first pathway"

                    SOURCE-START
e16   COPULAR-PREDICATE 1 "What genes are in the first pathway" 8
                    END-OF-SOURCE
("What genes are in the first pathway"
 (:VAR MV10726 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV10717 :VALUE MV10725
  :PREP "IN" :PREDICATE MV10718)
 (:VAR MV10717 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV10725 :ISA GENE :CONTEXT MV10722 :HAS-DETERMINER "WHAT" :RAW-TEXT
  "genes")
 (:VAR MV10722 :ISA PATHWAY :HAS-DETERMINER "THE" :NUMBER MV10721 :RAW-TEXT
  "pathway")
 (:VAR MV10721 :ISA ORDINAL :WORD "first" :NUMBER 1) (:VAR MV10718 :ISA BE))

___________________
491: "What questions can you answer about microRNAs?"

                    SOURCE-START
e0    WHAT          1 "What " 2
e2    BIO-QUESTION  2 "questions " 3
e3    MODAL         3 "can " 4
e11   ANSWER        4 "you answer " 6
e10   ABOUT         6 "about microRNAs" 8
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
492: "What transcription factors regulate mothers against decapentaplegic?"

                    SOURCE-START
e8    REGULATE      1 "What transcription factors regulate mothers against decapentaplegic" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcription factors regulate mothers against decapentaplegic?"
 (:VAR MV10742 :ISA REGULATE :AGENT MV10739 :OBJECT MV10740 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV10739 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV10740 :ISA PROTEIN-FAMILY :RAW-TEXT "mothers against decapentaplegic"
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
493: "Where does stat3 regulate cfos"

                    SOURCE-START
e9    REGULATE      1 "Where does stat3 regulate cfos" 7
                    END-OF-SOURCE
("Where does stat3 regulate cfos"
 (:VAR MV10748 :ISA REGULATE :LOCATION MV10744 :AGENT MV10743 :OBJECT MV10747
  :RAW-TEXT "regulate")
 (:VAR MV10744 :ISA WHERE)
 (:VAR MV10743 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10747 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
494: "Which KEGG pathways involve ATP?"

                    SOURCE-START
e8    INVOLVE       1 "Which KEGG pathways involve ATP" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways involve ATP?"
 (:VAR MV10752 :ISA INVOLVE :PARTICIPANT MV10751 :THEME MV10753 :PRESENT
  "PRESENT")
 (:VAR MV10751 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV10750 :RAW-TEXT
  "pathways")
 (:VAR MV10750 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV10753 :ISA NUCLEOTIDE :RAW-TEXT "ATP" :UID "PCID:5957"))

___________________
495: "Which genes are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which genes are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are in the MAPK signaling pathway?"
 (:VAR MV10764 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV10756 :VALUE MV10763
  :PREP "IN" :PREDICATE MV10757)
 (:VAR MV10756 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV10763 :ISA GENE :CONTEXT MV10754 :HAS-DETERMINER "WHICH" :RAW-TEXT
  "genes")
 (:VAR MV10754 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV10760
  :RAW-TEXT "signaling pathway")
 (:VAR MV10760 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV10757 :ISA BE))

___________________
496: "Which genes are involved in the oncogenic MAPK signaling pathway?"

                    SOURCE-START
e19   INVOLVE       1 "Which genes are involved in the oncogenic MAPK signaling pathway" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("Which genes are involved in the oncogenic MAPK signaling pathway?"
 (:VAR MV10775 :ISA INVOLVE :PARTICIPANT MV10768 :CONTEXT-OR-THEME MV10766)
 (:VAR MV10768 :ISA GENE :HAS-DETERMINER "WHICH" :RAW-TEXT "genes")
 (:VAR MV10766 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :PREDICATION
  MV10773 :MODIFIER MV10774 :RAW-TEXT "signaling pathway")
 (:VAR MV10773 :ISA ONCOGENIC)
 (:VAR MV10774 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
497: "Which kinases regulate x?"

                    SOURCE-START
e6    REGULATE      1 "Which kinases regulate x" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases regulate x?"
 (:VAR MV10779 :ISA REGULATE :AGENT MV10778 :OBJECT MV10780 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV10778 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV10780 :ISA BIO-ENTITY :NAME "x"))

___________________
498: "Which kinases negatively regulate x?"

                    SOURCE-START
e7    DOWNREGULATE  1 "Which kinases negatively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate x?"
 (:VAR MV10781 :ISA DOWNREGULATE :AGENT MV10783 :OBJECT MV10784 :PRESENT
  "PRESENT" :RAW-TEXT "negatively regulate")
 (:VAR MV10783 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV10784 :ISA BIO-ENTITY :NAME "x"))

___________________
499: "Which kinases positively regulate x?"

                    SOURCE-START
e7    UPREGULATE    1 "Which kinases positively regulate x" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases positively regulate x?"
 (:VAR MV10785 :ISA UPREGULATE :AGENT MV10787 :OBJECT MV10788 :PRESENT
  "PRESENT" :RAW-TEXT "positively regulate")
 (:VAR MV10787 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV10788 :ISA BIO-ENTITY :NAME "x"))

___________________
500: "Which of these are in immune pathways?"

                    SOURCE-START
e14   COPULAR-PREDICATION 1 "Which of these are in immune pathways" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune pathways?"
 (:VAR MV10796 :ISA WH-QUESTION/SELECT :STATEMENT MV10798 :WH WHICH)
 (:VAR MV10798 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV10791 :VALUE MV10795
  :PREP "IN" :PREDICATE MV10792)
 (:VAR MV10791 :ISA THESE :WORD "these")
 (:VAR MV10795 :ISA PATHWAY :MODIFIER MV10794 :RAW-TEXT "pathways")
 (:VAR MV10794 :ISA IMMUNE) (:VAR MV10792 :ISA BE :PRESENT "PRESENT"))

___________________
501: "Which of these are in immune system pathways?"

                    SOURCE-START
e15   COPULAR-PREDICATION 1 "Which of these are in immune system pathways" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are in immune system pathways?"
 (:VAR MV10806 :ISA WH-QUESTION/SELECT :STATEMENT MV10808 :WH WHICH)
 (:VAR MV10808 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV10802 :VALUE MV10805
  :PREP "IN" :PREDICATE MV10803)
 (:VAR MV10802 :ISA THESE :WORD "these")
 (:VAR MV10805 :ISA PATHWAY :NON-CELLULAR-LOCATION MV10799 :RAW-TEXT
  "pathways")
 (:VAR MV10799 :ISA BIO-ORGAN :UID "UBERON:0002405")
 (:VAR MV10803 :ISA BE :PRESENT "PRESENT"))

___________________
502: "What are the genes STAT3 regulates?"

                    SOURCE-START
e12   BE            1 "What are the genes STAT3 regulates" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are the genes STAT3 regulates?"
 (:VAR MV10815 :ISA BE :PREDICATE MV10813 :SUBJECT MV10810)
 (:VAR MV10813 :ISA GENE :PREDICATION MV10814 :HAS-DETERMINER "THE" :RAW-TEXT
  "genes")
 (:VAR MV10814 :ISA REGULATE :AGENT MV10809 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV10809 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10810 :ISA WHAT))

___________________
503: "Which of those are in the immune pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATION 1 "Which of those are in the immune pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of those are in the immune pathway?"
 (:VAR MV10824 :ISA WH-QUESTION/SELECT :STATEMENT MV10826 :WH WHICH)
 (:VAR MV10826 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV10818 :VALUE MV10823
  :PREP "IN" :PREDICATE MV10819)
 (:VAR MV10818 :ISA THOSE :WORD "those")
 (:VAR MV10823 :ISA PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV10822 :RAW-TEXT
  "pathway")
 (:VAR MV10822 :ISA IMMUNE) (:VAR MV10819 :ISA BE :PRESENT "PRESENT"))

___________________
504: "Which pathways involve p53?"

                    SOURCE-START
e7    INVOLVE       1 "Which pathways involve p53" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which pathways involve p53?"
 (:VAR MV10830 :ISA INVOLVE :PARTICIPANT MV10829 :THEME MV10827 :PRESENT
  "PRESENT")
 (:VAR MV10829 :ISA PATHWAY :HAS-DETERMINER "WHICH" :RAW-TEXT "pathways")
 (:VAR MV10827 :ISA PROTEIN :RAW-TEXT "p53" :UID "UP:P04637" :NAME "P53_HUMAN"))

___________________
505: "can you show me the pahtways that involve SRF"

                    SOURCE-START
e20   SHOW          1 "can you show me the pahtways that involve SRF" 10
                    END-OF-SOURCE
("can you show me the pahtways that involve SRF"
 (:VAR MV10840 :ISA POLAR-QUESTION :STATEMENT MV10833)
 (:VAR MV10833 :ISA SHOW :AGENT MV10832 :THEME MV10836 :BENEFICIARY MV10834
  :MODAL MV10831)
 (:VAR MV10832 :ISA INTERLOCUTOR :NAME "hearer")
 (:VAR MV10836 :ISA BIO-ENTITY :PREDICATION MV10838 :HAS-DETERMINER "THE" :NAME
  "pahtways")
 (:VAR MV10838 :ISA INVOLVE :PARTICIPANT MV10838 :THAT-REL T :THEME MV10839
  :PRESENT "PRESENT")
 (:VAR MV10839 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV10834 :ISA INTERLOCUTOR :NAME "speaker") (:VAR MV10831 :ISA CAN))

___________________
506: "Does Selumetinib inhibit MAP2K1?"

                    SOURCE-START
e8    INHIBIT       1 "Does Selumetinib inhibit MAP2K1" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Does Selumetinib inhibit MAP2K1?"
 (:VAR MV10846 :ISA POLAR-QUESTION :STATEMENT MV10845)
 (:VAR MV10845 :ISA INHIBIT :AGENT MV10843 :OBJECT MV10841 :RAW-TEXT "inhibit")
 (:VAR MV10843 :ISA DRUG :RAW-TEXT "Selumetinib" :NAME "selumetinib")
 (:VAR MV10841 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
507: "Let's build a model of the KRAS neighborhood."

                    SOURCE-START
e1    PROPOSAL-MARKER 1 "Let's " 4
e2    BUILD         4 "build " 5
e12   MODEL         5 "a model " 7
e15   OF            7 "of the KRAS neighborhood" 11
                    PERIOD
                    END-OF-SOURCE


___________________
508: "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."

                    SOURCE-START
e28   KNOW          1 "I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk" 15
                    PERIOD
                    END-OF-SOURCE
("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
 (:VAR MV10873 :ISA COLLECTION :TYPE KNOW :NUMBER 2 :ITEMS NIL))

___________________
509: "Let's build a model."

                    SOURCE-START
e1    PROPOSAL-MARKER 1 "Let's " 4
e2    BUILD         4 "build " 5
e6    MODEL         5 "a model" 7
                    PERIOD
                    END-OF-SOURCE


___________________
510: "MAP2K1 phosphorylates MAPK1."

                    SOURCE-START
e6    PHOSPHORYLATE 1 "MAP2K1 phosphorylates MAPK1" 8
                    PERIOD
                    END-OF-SOURCE
("MAP2K1 phosphorylates MAPK1."
 (:VAR MV10880 :ISA PHOSPHORYLATE :AGENT MV10878 :SUBSTRATE MV10879 :PRESENT
  "PRESENT" :RAW-TEXT "phosphorylates")
 (:VAR MV10878 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN")
 (:VAR MV10879 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
511: "DUSP6 dephosphorylates MAPK1."

                    SOURCE-START
e6    DEPHOSPHORYLATE 1 "DUSP6 dephosphorylates MAPK1" 6
                    PERIOD
                    END-OF-SOURCE
("DUSP6 dephosphorylates MAPK1."
 (:VAR MV10883 :ISA DEPHOSPHORYLATE :AGENT MV10881 :SUBSTRATE MV10882 :PRESENT
  "PRESENT" :RAW-TEXT "dephosphorylates")
 (:VAR MV10881 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV10882 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN"))

___________________
512: "Is the amount of phosphorylated MAPK1 always high?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always high" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always high?"
 (:VAR MV10894 :ISA POLAR-QUESTION :STATEMENT MV10893)
 (:VAR MV10893 :ISA COPULAR-PREDICATION :ITEM MV10887 :VALUE MV10891 :PREDICATE
  MV10885)
 (:VAR MV10887 :ISA BIO-AMOUNT :MEASURED-ITEM MV10884 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV10884 :ISA PROTEIN :PREDICATION MV10889 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV10889 :ISA PHOSPHORYLATE :SUBSTRATE MV10889 :RAW-TEXT
  "phosphorylated")
 (:VAR MV10891 :ISA HIGH :ADVERB MV10890) (:VAR MV10890 :ISA ALWAYS)
 (:VAR MV10885 :ISA BE))

___________________
513: "Is the amount of phosphorylated MAPK1 always low?"

                    SOURCE-START
e19   COPULAR-PREDICATION 1 "Is the amount of phosphorylated MAPK1 always low" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Is the amount of phosphorylated MAPK1 always low?"
 (:VAR MV10905 :ISA POLAR-QUESTION :STATEMENT MV10904)
 (:VAR MV10904 :ISA COPULAR-PREDICATION :ITEM MV10898 :VALUE MV10902 :PREDICATE
  MV10896)
 (:VAR MV10898 :ISA BIO-AMOUNT :MEASURED-ITEM MV10895 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV10895 :ISA PROTEIN :PREDICATION MV10900 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV10900 :ISA PHOSPHORYLATE :SUBSTRATE MV10900 :RAW-TEXT
  "phosphorylated")
 (:VAR MV10902 :ISA LOW :ADVERB MV10901) (:VAR MV10901 :ISA ALWAYS)
 (:VAR MV10896 :ISA BE))

___________________
514: "Does the MAP2K1-MAPK1 complex vanish?"

                    SOURCE-START
e15   VANISH        1 "Does the MAP2K1-MAPK1 complex vanish" 12
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the MAP2K1-MAPK1 complex vanish?"
 (:VAR MV10915 :ISA POLAR-QUESTION :STATEMENT MV10914)
 (:VAR MV10914 :ISA VANISH :AGENT MV10913 :RAW-TEXT "vanish")
 (:VAR MV10913 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "MAP2K1-MAPK1"
  :COMPONENT MV10907 :COMPONENT MV10906)
 (:VAR MV10907 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV10906 :ISA PROTEIN :RAW-TEXT "MAP2K1" :UID "UP:Q02750" :NAME
  "MP2K1_HUMAN"))

___________________
515: "Does the DUSP6-MAPK1 complex vanish?"

                    SOURCE-START
e15   VANISH        1 "Does the DUSP6-MAPK1 complex vanish" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the DUSP6-MAPK1 complex vanish?"
 (:VAR MV10925 :ISA POLAR-QUESTION :STATEMENT MV10924)
 (:VAR MV10924 :ISA VANISH :AGENT MV10923 :RAW-TEXT "vanish")
 (:VAR MV10923 :ISA BIO-COMPLEX :HAS-DETERMINER "THE" :RAW-TEXT "DUSP6-MAPK1"
  :COMPONENT MV10917 :COMPONENT MV10916)
 (:VAR MV10917 :ISA PROTEIN :RAW-TEXT "MAPK1" :UID "UP:P28482" :NAME
  "MK01_HUMAN")
 (:VAR MV10916 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN"))

___________________
516: "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"

                    SOURCE-START
e45   EVENT-RELATION  1 "Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold" 20
                    QUESTION-MARK
                    END-OF-SOURCE
("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
 (:VAR MV10951 :ISA POLAR-QUESTION :STATEMENT MV10950)
 (:VAR MV10950 :ISA EVENT-RELATION :SUBORDINATED-EVENT MV10948 :EVENT MV10945)
 (:VAR MV10948 :ISA WH-QUESTION :STATEMENT MV10937 :WH IF)
 (:VAR MV10937 :ISA INCREASE :AGENT-OR-CAUSE MV10935 :MULTIPLIER MV10944
  :AFFECTED-PROCESS-OR-OBJECT MV10939 :PRESENT "PRESENT" :RAW-TEXT "increase")
 (:VAR MV10935 :ISA INTERLOCUTOR :NAME "person-and-machine")
 (:VAR MV10944 :ISA N-FOLD :NUMBER MV10943)
 (:VAR MV10943 :ISA NUMBER :VALUE 10)
 (:VAR MV10939 :ISA BIO-AMOUNT :MEASURED-ITEM MV10927 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV10927 :ISA PROTEIN :RAW-TEXT "DUSP6" :UID "UP:Q16828" :NAME
  "DUS6_HUMAN")
 (:VAR MV10945 :ISA VANISH :CAUSE MV10930 :RAW-TEXT "vanish")
 (:VAR MV10930 :ISA BIO-AMOUNT :MEASURED-ITEM MV10926 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV10926 :ISA PROTEIN :PREDICATION MV10932 :RAW-TEXT "MAPK1" :UID
  "UP:P28482" :NAME "MK01_HUMAN")
 (:VAR MV10932 :ISA PHOSPHORYLATE :SUBSTRATE MV10932 :RAW-TEXT
  "phosphorylated"))

___________________
517: "Show me the evidence that kras regulates fzd8."

                    SOURCE-START
e17   SHOW          1 "Show me the evidence that kras regulates fzd8" 10
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that kras regulates fzd8."
 (:VAR MV10953 :ISA SHOW :STATEMENT-OR-THEME MV10960 :BENEFICIARY MV10954
  :PRESENT "PRESENT")
 (:VAR MV10960 :ISA EVIDENCE :STATEMENT MV10959 :HAS-DETERMINER "THE")
 (:VAR MV10959 :ISA REGULATE :AGENT MV10958 :OBJECT MV10952 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV10958 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV10952 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV10954 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
518: "What increases the amount of fzd8?"

                    SOURCE-START
e14   INCREASE      1 "What increases the amount of fzd8" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of fzd8?"
 (:VAR MV10969 :ISA WH-QUESTION :STATEMENT MV10964 :VAR NIL :WH WHAT)
 (:VAR MV10964 :ISA INCREASE :AFFECTED-PROCESS-OR-OBJECT MV10966 :PRESENT
  "PRESENT" :RAW-TEXT "increases")
 (:VAR MV10966 :ISA BIO-AMOUNT :MEASURED-ITEM MV10961 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV10961 :ISA PROTEIN :RAW-TEXT "fzd8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
519: "Which kinases are in the MAPK signaling pathway?"

                    SOURCE-START
e17   COPULAR-PREDICATE 1 "Which kinases are in the MAPK signaling pathway" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases are in the MAPK signaling pathway?"
 (:VAR MV10980 :ISA COPULAR-PREDICATION-OF-PP :ITEM MV10972 :VALUE MV10979
  :PREP "IN" :PREDICATE MV10973)
 (:VAR MV10972 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV10979 :ISA KINASE :CONTEXT-OR-IN-PATHWAY MV10970 :HAS-DETERMINER
  "WHICH" :RAW-TEXT "kinases")
 (:VAR MV10970 :ISA SIGNALING-PATHWAY :HAS-DETERMINER "THE" :MODIFIER MV10976
  :RAW-TEXT "signaling pathway")
 (:VAR MV10976 :ISA PROTEIN-FAMILY :RAW-TEXT "MAPK" :NAME
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
 (:VAR MV10973 :ISA BE))

___________________
520: "Does STAT3 regulate the c-fos gene in the liver?"

                    SOURCE-START
e22   REGULATE      1 "Does STAT3 regulate the c-fos gene in the liver" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("Does STAT3 regulate the c-fos gene in the liver?"
 (:VAR MV10993 :ISA POLAR-QUESTION :STATEMENT MV10991)
 (:VAR MV10991 :ISA REGULATE :AGENT MV10982 :OBJECT MV10987 :RAW-TEXT
  "regulate")
 (:VAR MV10982 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV10987 :ISA GENE :ORGAN MV10990 :HAS-DETERMINER "THE" :EXPRESSES
  MV10983 :RAW-TEXT "gene")
 (:VAR MV10990 :ISA LIVER :HAS-DETERMINER "THE")
 (:VAR MV10983 :ISA PROTEIN :RAW-TEXT "c-fos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
521: "what genes are regulated by smad2?"

                    SOURCE-START
e12   REGULATE      1 "what genes are regulated by smad2" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by smad2?"
 (:VAR MV11000 :ISA REGULATE :OBJECT MV10996 :AGENT MV10994 :RAW-TEXT
  "regulated")
 (:VAR MV10996 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV10994 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
522: "Which of these are regulated by smad2?"

                    SOURCE-START
e15   REGULATE      1 "Which of these are regulated by smad2" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are regulated by smad2?"
 (:VAR MV11009 :ISA WH-QUESTION/SELECT :STATEMENT MV11010 :WH WHICH)
 (:VAR MV11010 :ISA REGULATE :AFFECTED-PROCESS-OR-OBJECT MV11005 :AGENT MV11002
  :PRESENT "PRESENT" :RAW-TEXT "regulated")
 (:VAR MV11005 :ISA THESE :WORD "these")
 (:VAR MV11002 :ISA PROTEIN :RAW-TEXT "smad2" :UID "UP:Q15796" :NAME
  "SMAD2_HUMAN"))

___________________
523: "Which of these also regulate cfos?"

                    SOURCE-START
e12   REGULATE      1 "Which of these also regulate cfos" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these also regulate cfos?"
 (:VAR MV11019 :ISA WH-QUESTION/SELECT :STATEMENT MV11017 :WH WHICH)
 (:VAR MV11017 :ISA REGULATE :AGENT-OR-CAUSE MV11014 :OBJECT MV11018 :PRESENT
  "PRESENT" :ADVERB MV11015 :RAW-TEXT "regulate")
 (:VAR MV11014 :ISA THESE :WORD "these")
 (:VAR MV11018 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV11015 :ISA ALSO))

___________________
524: "what transcription factors transcribe SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factors transcribe SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factors transcribe SMURF2?"
 (:VAR MV11023 :ISA TRANSCRIBE :AGENT MV11020 :OBJECT MV11021 :PRESENT
  "PRESENT" :RAW-TEXT "transcribe")
 (:VAR MV11020 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factors")
 (:VAR MV11021 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
525: "what transcription factor transcribes SMURF2?"

                    SOURCE-START
e8    TRANSCRIBE    1 "what transcription factor transcribes SMURF2" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what transcription factor transcribes SMURF2?"
 (:VAR MV11027 :ISA TRANSCRIBE :AGENT MV11024 :OBJECT MV11025 :PRESENT
  "PRESENT" :RAW-TEXT "transcribes")
 (:VAR MV11024 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "WHAT" :RAW-TEXT
  "transcription factor")
 (:VAR MV11025 :ISA PROTEIN :RAW-TEXT "SMURF2" :UID "UP:Q9HAU4" :NAME
  "SMUF2_HUMAN"))

___________________
526: "Which KEGG pathways utilize SRF?"

                    SOURCE-START
e8    UTILIZE       1 "Which KEGG pathways utilize SRF" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which KEGG pathways utilize SRF?"
 (:VAR MV11031 :ISA UTILIZE :PARTICIPANT MV11030 :OBJECT MV11032 :PRESENT
  "PRESENT" :RAW-TEXT "utilize")
 (:VAR MV11030 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV11029 :RAW-TEXT
  "pathways")
 (:VAR MV11029 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV11032 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
527: "What transcription factors are in the calcium regulated pathways?"

                    SOURCE-START
e16   COPULAR-PREDICATION 1 "What transcription factors are in the calcium " 8
e13   REGULATE      8 "regulated " 9
e10   PATHWAY       9 "pathways" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
528: "What pathways involve the immune system?"

                    SOURCE-START
e10   INVOLVE       1 "What pathways involve the immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve the immune system?"
 (:VAR MV11047 :ISA INVOLVE :PARTICIPANT MV11046 :THEME MV11044 :PRESENT
  "PRESENT")
 (:VAR MV11046 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV11044 :ISA BIO-ORGAN :HAS-DETERMINER "THE" :UID "UBERON:0002405"))

___________________
529: "What KEGG pathways involve ERBB2, JUN, and MAPK8?"

                    SOURCE-START
e16   INVOLVE       1 "What KEGG pathways involve ERBB2, JUN, and MAPK8" 13
                    QUESTION-MARK
                    END-OF-SOURCE
("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
 (:VAR MV11054 :ISA INVOLVE :PARTICIPANT MV11053 :THEME MV11057 :PRESENT
  "PRESENT")
 (:VAR MV11053 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV11052 :RAW-TEXT
  "pathways")
 (:VAR MV11052 :ISA BIO-ENTITY :NAME "KEGG")
 (:VAR MV11057 :ISA COLLECTION :RAW-TEXT "ERBB2, JUN, and MAPK8" :TYPE PROTEIN
  :NUMBER 3 :ITEMS NIL))

___________________
530: "What pathways are shared by these genes?"

                    SOURCE-START
e13   SHARE         1 "What pathways are shared by these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways are shared by these genes?"
 (:VAR MV11065 :ISA SHARE :OBJECT MV11059 :PARTICIPANT MV11064 :RAW-TEXT
  "shared")
 (:VAR MV11059 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV11064 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes"))

___________________
531: "what genes are regulated by srf?"

                    SOURCE-START
e11   REGULATE      1 "what genes are regulated by srf" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are regulated by srf?"
 (:VAR MV11073 :ISA REGULATE :OBJECT MV11068 :AGENT MV11072 :RAW-TEXT
  "regulated")
 (:VAR MV11068 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV11072 :ISA PROTEIN :RAW-TEXT "srf" :UID "UP:P11831" :NAME "SRF_HUMAN"))

___________________
532: "What are common pathways for these genes?"

                    SOURCE-START
e12   BE            1 "What are common pathways for these genes" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("What are common pathways for these genes?"
 (:VAR MV11083 :ISA BE :PREDICATE MV11078 :SUBJECT MV11075)
 (:VAR MV11078 :ISA PATHWAY :PATHWAYCOMPONENT MV11081 :PREDICATION MV11077
  :RAW-TEXT "pathways")
 (:VAR MV11081 :ISA GENE :HAS-DETERMINER "THESE" :RAW-TEXT "genes")
 (:VAR MV11077 :ISA COMMON) (:VAR MV11075 :ISA WHAT))

___________________
533: "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"

                    SOURCE-START
e24   SHARE         1 "Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes" 17
                    QUESTION-MARK
                    END-OF-SOURCE
("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
 (:VAR MV11096 :ISA SHARE :OBJECT MV11089 :PARTICIPANT MV11094 :RAW-TEXT
  "shared")
 (:VAR MV11089 :ISA PATHWAY :HAS-DETERMINER "WHICH" :MODIFIER MV11088 :RAW-TEXT
  "pathways")
 (:VAR MV11088 :ISA IMMUNE)
 (:VAR MV11094 :ISA GENE :EXPRESSES MV11095 :RAW-TEXT "genes")
 (:VAR MV11095 :ISA COLLECTION :RAW-TEXT "STAT3, SOCS3, and CREB5" :TYPE
  PROTEIN :NUMBER 3 :ITEMS NIL))

___________________
534: "What MAP kinase phosphatase are regulated by ELK1?"

                    SOURCE-START
e15   REGULATE      1 "What MAP kinase phosphatase are regulated by ELK1" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What MAP kinase phosphatase are regulated by ELK1?"
 (:VAR MV11105 :ISA REGULATE :OBJECT MV11101 :AGENT MV11099 :RAW-TEXT
  "regulated")
 (:VAR MV11101 :ISA PHOSPHATASE :HAS-DETERMINER "WHAT" :ENZYME MV11098
  :RAW-TEXT "phosphatase")
 (:VAR MV11098 :ISA PROTEIN-FAMILY :RAW-TEXT "MAP kinase" :NAME
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
 (:VAR MV11099 :ISA PROTEIN :RAW-TEXT "ELK1" :UID "UP:P19419" :NAME
  "ELK1_HUMAN"))

___________________
535: "What reactome pathways involve immune system?"

                    SOURCE-START
e9    INVOLVE       1 "What reactome pathways involve immune system" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What reactome pathways involve immune system?"
 (:VAR MV11111 :ISA INVOLVE :PARTICIPANT MV11110 :THEME MV11107 :PRESENT
  "PRESENT")
 (:VAR MV11110 :ISA PATHWAY :HAS-DETERMINER "WHAT" :MODIFIER MV11109 :RAW-TEXT
  "pathways")
 (:VAR MV11109 :ISA BIO-ENTITY :NAME "reactome")
 (:VAR MV11107 :ISA BIO-ORGAN :UID "UBERON:0002405"))

___________________
536: "Is stat3 a kinase?"

                    SOURCE-START
e9    BE            1 "Is stat3 a kinase" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 a kinase?" (:VAR MV11116 :ISA POLAR-QUESTION :STATEMENT MV11113)
 (:VAR MV11113 :ISA BE :PREDICATE MV11115 :SUBJECT MV11112)
 (:VAR MV11115 :ISA KINASE :HAS-DETERMINER "A" :RAW-TEXT "kinase")
 (:VAR MV11112 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
537: "Is STAT3 a transcription factor?"

                    SOURCE-START
e10   BE            1 "Is STAT3 a transcription factor" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is STAT3 a transcription factor?"
 (:VAR MV11121 :ISA POLAR-QUESTION :STATEMENT MV11119)
 (:VAR MV11119 :ISA BE :PREDICATE MV11118 :SUBJECT MV11117)
 (:VAR MV11118 :ISA TRANSCRIPTION-FACTOR :HAS-DETERMINER "A" :RAW-TEXT
  "transcription factor")
 (:VAR MV11117 :ISA PROTEIN :RAW-TEXT "STAT3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN"))

___________________
538: "Which of these are protein kinases?"

                    SOURCE-START
e11   BE            1 "Which of these are protein kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are protein kinases?"
 (:VAR MV11128 :ISA WH-QUESTION/SELECT :STATEMENT MV11125 :WH WHICH)
 (:VAR MV11125 :ISA BE :SUBJECT MV11124 :PREDICATE MV11127 :PRESENT "PRESENT")
 (:VAR MV11124 :ISA THESE :WORD "these")
 (:VAR MV11127 :ISA KINASE :ENZYME MV11126 :RAW-TEXT "kinases")
 (:VAR MV11126 :ISA PROTEIN :RAW-TEXT "protein"))

___________________
539: "Which of these are tyrosine kinases?"

                    SOURCE-START
e11   BE            1 "Which of these are tyrosine kinases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinases?"
 (:VAR MV11135 :ISA WH-QUESTION/SELECT :STATEMENT MV11132 :WH WHICH)
 (:VAR MV11132 :ISA BE :SUBJECT MV11131 :PREDICATE MV11134 :PRESENT "PRESENT")
 (:VAR MV11131 :ISA THESE :WORD "these")
 (:VAR MV11134 :ISA KINASE :AMINO-ACID MV11133 :RAW-TEXT "kinases")
 (:VAR MV11133 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

___________________
540: "Which of these are serine/threonine kinases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine kinases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine kinases?"
 (:VAR MV11144 :ISA WH-QUESTION/SELECT :STATEMENT MV11139 :WH WHICH)
 (:VAR MV11139 :ISA BE :SUBJECT MV11138 :PREDICATE MV11142 :PRESENT "PRESENT")
 (:VAR MV11138 :ISA THESE :WORD "these")
 (:VAR MV11142 :ISA KINASE :AMINO-ACID MV11143 :RAW-TEXT "kinases")
 (:VAR MV11143 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID
  :ITEMS NIL))

___________________
541: "Which of these are phosphatases?"

                    SOURCE-START
e9    BE            1 "Which of these are phosphatases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are phosphatases?"
 (:VAR MV11150 :ISA WH-QUESTION/SELECT :STATEMENT MV11148 :WH WHICH)
 (:VAR MV11148 :ISA BE :SUBJECT MV11147 :PREDICATE MV11149 :PRESENT "PRESENT")
 (:VAR MV11147 :ISA THESE :WORD "these")
 (:VAR MV11149 :ISA PHOSPHATASE :RAW-TEXT "phosphatases"))

___________________
542: "Which of these are proteases?"

                    SOURCE-START
e9    BE            1 "Which of these are proteases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are proteases?"
 (:VAR MV11156 :ISA WH-QUESTION/SELECT :STATEMENT MV11154 :WH WHICH)
 (:VAR MV11154 :ISA BE :SUBJECT MV11153 :PREDICATE MV11155 :PRESENT "PRESENT")
 (:VAR MV11153 :ISA THESE :WORD "these")
 (:VAR MV11155 :ISA PROTEIN :RAW-TEXT "proteases" :UID "UP:P63127" :NAME
  "VPK9_HUMAN"))

___________________
543: "Which of these are receptors?"

                    SOURCE-START
e9    BE            1 "Which of these are receptors" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptors?"
 (:VAR MV11162 :ISA WH-QUESTION/SELECT :STATEMENT MV11160 :WH WHICH)
 (:VAR MV11160 :ISA BE :SUBJECT MV11159 :PREDICATE MV11161 :PRESENT "PRESENT")
 (:VAR MV11159 :ISA THESE :WORD "these")
 (:VAR MV11161 :ISA RECEPTOR :RAW-TEXT "receptors"))

___________________
544: "Which of these are tyrosine kinase receptors?"

                    SOURCE-START
e13   BE            1 "Which of these are tyrosine kinase receptors" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine kinase receptors?"
 (:VAR MV11170 :ISA WH-QUESTION/SELECT :STATEMENT MV11166 :WH WHICH)
 (:VAR MV11166 :ISA BE :SUBJECT MV11165 :PREDICATE MV11169 :PRESENT "PRESENT")
 (:VAR MV11165 :ISA THESE :WORD "these")
 (:VAR MV11169 :ISA RECEPTOR :MODIFIER MV11167 :MODIFIER MV11168 :RAW-TEXT
  "receptors")
 (:VAR MV11167 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine")
 (:VAR MV11168 :ISA KINASE :RAW-TEXT "kinase"))

___________________
545: "Which of these are histone demethylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone demethylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone demethylases?"
 (:VAR MV11176 :ISA WH-QUESTION/SELECT :STATEMENT MV11175 :WH WHICH)
 (:VAR MV11175 :ISA BE :SUBJECT MV11174 :PREDICATE MV11171 :PRESENT "PRESENT")
 (:VAR MV11174 :ISA THESE :WORD "these")
 (:VAR MV11171 :ISA PROTEIN-FAMILY :RAW-TEXT "histone demethylases" :NAME
  "histone demethylase" :UID "GO:0032452"))

___________________
546: "Which of these are histone methylases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methylases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methylases?"
 (:VAR MV11182 :ISA WH-QUESTION/SELECT :STATEMENT MV11181 :WH WHICH)
 (:VAR MV11181 :ISA BE :SUBJECT MV11180 :PREDICATE MV11177 :PRESENT "PRESENT")
 (:VAR MV11180 :ISA THESE :WORD "these")
 (:VAR MV11177 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methylases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
547: "Which of these are histone methyltransferases?"

                    SOURCE-START
e10   BE            1 "Which of these are histone methyltransferases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are histone methyltransferases?"
 (:VAR MV11188 :ISA WH-QUESTION/SELECT :STATEMENT MV11187 :WH WHICH)
 (:VAR MV11187 :ISA BE :SUBJECT MV11186 :PREDICATE MV11183 :PRESENT "PRESENT")
 (:VAR MV11186 :ISA THESE :WORD "these")
 (:VAR MV11183 :ISA PROTEIN-FAMILY :RAW-TEXT "histone methyltransferases" :NAME
  "histone methyltransferase" :UID "GO:0042054"))

___________________
548: "Which of these are demethylases?"

                    SOURCE-START
e9    BE            1 "Which of these are demethylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are demethylases?"
 (:VAR MV11194 :ISA WH-QUESTION/SELECT :STATEMENT MV11192 :WH WHICH)
 (:VAR MV11192 :ISA BE :SUBJECT MV11191 :PREDICATE MV11193 :PRESENT "PRESENT")
 (:VAR MV11191 :ISA THESE :WORD "these")
 (:VAR MV11193 :ISA PROTEIN-FAMILY :RAW-TEXT "demethylases" :NAME "demethylase"
  :UID "GO:0032451"))

___________________
549: "Which of these are methylases?"

                    SOURCE-START
e9    BE            1 "Which of these are methylases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methylases?"
 (:VAR MV11200 :ISA WH-QUESTION/SELECT :STATEMENT MV11198 :WH WHICH)
 (:VAR MV11198 :ISA BE :SUBJECT MV11197 :PREDICATE MV11199 :PRESENT "PRESENT")
 (:VAR MV11197 :ISA THESE :WORD "these")
 (:VAR MV11199 :ISA PROTEIN-FAMILY :RAW-TEXT "methylases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
550: "Which of these are methyltransferases?"

                    SOURCE-START
e9    BE            1 "Which of these are methyltransferases" 6
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are methyltransferases?"
 (:VAR MV11206 :ISA WH-QUESTION/SELECT :STATEMENT MV11204 :WH WHICH)
 (:VAR MV11204 :ISA BE :SUBJECT MV11203 :PREDICATE MV11205 :PRESENT "PRESENT")
 (:VAR MV11203 :ISA THESE :WORD "these")
 (:VAR MV11205 :ISA PROTEIN-FAMILY :RAW-TEXT "methyltransferases" :NAME
  "methyltransferase" :UID "GO:0008168"))

___________________
551: "Which of these are steroid receptors?"

                    SOURCE-START
e11   BE            1 "Which of these are steroid receptors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are steroid receptors?"
 (:VAR MV11213 :ISA WH-QUESTION/SELECT :STATEMENT MV11210 :WH WHICH)
 (:VAR MV11210 :ISA BE :SUBJECT MV11209 :PREDICATE MV11212 :PRESENT "PRESENT")
 (:VAR MV11209 :ISA THESE :WORD "these")
 (:VAR MV11212 :ISA RECEPTOR :MODIFIER MV11211 :RAW-TEXT "receptors")
 (:VAR MV11211 :ISA MOLECULE :RAW-TEXT "steroid" :NAME "steroid" :UID
  "CHEBI:35341"))

___________________
552: "Which of these are receptor tyrosine kinases?"

                    SOURCE-START
e10   BE            1 "Which of these are receptor tyrosine kinases" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are receptor tyrosine kinases?"
 (:VAR MV11219 :ISA WH-QUESTION/SELECT :STATEMENT MV11218 :WH WHICH)
 (:VAR MV11218 :ISA BE :SUBJECT MV11217 :PREDICATE MV11214 :PRESENT "PRESENT")
 (:VAR MV11217 :ISA THESE :WORD "these")
 (:VAR MV11214 :ISA PROTEIN-FAMILY :RAW-TEXT "receptor tyrosine kinases" :NAME
  "receptor tyrosine kinase" :COUNT 2 :FAMILY-MEMBERS
  ((PROTEIN (:NAME "TKTL1_HUMAN") (:UID "UP:P51854"))
   (PROTEIN (:NAME "NTRK1_HUMAN") (:UID "UP:P04629")))
  :UID "NCIT:C17660"))

___________________
553: "Which of these are transcription factors?"

                    SOURCE-START
e10   BE            1 "Which of these are transcription factors" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are transcription factors?"
 (:VAR MV11225 :ISA WH-QUESTION/SELECT :STATEMENT MV11224 :WH WHICH)
 (:VAR MV11224 :ISA BE :SUBJECT MV11223 :PREDICATE MV11220 :PRESENT "PRESENT")
 (:VAR MV11223 :ISA THESE :WORD "these")
 (:VAR MV11220 :ISA TRANSCRIPTION-FACTOR :RAW-TEXT "transcription factors"))

___________________
554: "Which of these are DNA binding proteins?"

                    SOURCE-START
e12   BE            1 "Which of these are DNA binding proteins" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are DNA binding proteins?"
 (:VAR MV11232 :ISA WH-QUESTION/SELECT :STATEMENT MV11230 :WH WHICH)
 (:VAR MV11230 :ISA BE :SUBJECT MV11229 :PREDICATE MV11231 :PRESENT "PRESENT")
 (:VAR MV11229 :ISA THESE :WORD "these")
 (:VAR MV11231 :ISA PROTEIN :MODIFIER MV11226 :RAW-TEXT "proteins")
 (:VAR MV11226 :ISA DNA-BINDING :RAW-TEXT "DNA binding"))

___________________
555: "Which of these are serine/threonine phosphatases?"

                    SOURCE-START
e14   BE            1 "Which of these are serine/threonine phosphatases" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are serine/threonine phosphatases?"
 (:VAR MV11241 :ISA WH-QUESTION/SELECT :STATEMENT MV11236 :WH WHICH)
 (:VAR MV11236 :ISA BE :SUBJECT MV11235 :PREDICATE MV11239 :PRESENT "PRESENT")
 (:VAR MV11235 :ISA THESE :WORD "these")
 (:VAR MV11239 :ISA PHOSPHATASE :MODIFIER MV11240 :RAW-TEXT "phosphatases")
 (:VAR MV11240 :ISA COLLECTION :RAW-TEXT "serine/threonine" :TYPE AMINO-ACID
  :ITEMS NIL))

___________________
556: "Which of these are tyrosine phosphatases?"

                    SOURCE-START
e11   BE            1 "Which of these are tyrosine phosphatases" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which of these are tyrosine phosphatases?"
 (:VAR MV11248 :ISA WH-QUESTION/SELECT :STATEMENT MV11245 :WH WHICH)
 (:VAR MV11245 :ISA BE :SUBJECT MV11244 :PREDICATE MV11247 :PRESENT "PRESENT")
 (:VAR MV11244 :ISA THESE :WORD "these")
 (:VAR MV11247 :ISA PHOSPHATASE :MODIFIER MV11246 :RAW-TEXT "phosphatases")
 (:VAR MV11246 :ISA AMINO-ACID :RAW-TEXT "tyrosine" :NAME "tyrosine"))

___________________
557: "What does MEK phosphorylate?"

                    SOURCE-START
e6    PHOSPHORYLATE 1 "What does MEK phosphorylate" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What does MEK phosphorylate?"
 (:VAR MV11253 :ISA PHOSPHORYLATE :AMINO-ACID MV11249 :AGENT MV11251 :RAW-TEXT
  "phosphorylate")
 (:VAR MV11249 :ISA WHAT)
 (:VAR MV11251 :ISA PROTEIN-FAMILY :RAW-TEXT "MEK" :NAME "MEK" :COUNT 2
  :FAMILY-MEMBERS
  ((PROTEIN (:NAME "MP2K2_HUMAN") (:UID "UP:P36507"))
   (PROTEIN (:NAME "MP2K1_HUMAN") (:UID "UP:Q02750")))
  :UID "FPLX:MEK"))

___________________
558: "which of these are exclusively expressed in liver?"

                    SOURCE-START
e16   GENE-TRANSCRIPT-EXPRESS 1 "which of these are exclusively expressed in liver" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("which of these are exclusively expressed in liver?"
 (:VAR MV11262 :ISA WH-QUESTION/SELECT :STATEMENT MV11263 :WH WHICH)
 (:VAR MV11263 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV11256 :ORGAN MV11261
  :PRESENT "PRESENT" :ADVERB MV11258 :RAW-TEXT "expressed")
 (:VAR MV11256 :ISA THESE :WORD "these") (:VAR MV11261 :ISA LIVER)
 (:VAR MV11258 :ISA EXCLUSIVELY))

___________________
559: "What regulates frizzled8?"

                    SOURCE-START
e5    REGULATE      1 "What regulates frizzled8" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates frizzled8?"
 (:VAR MV11268 :ISA WH-QUESTION :STATEMENT MV11267 :VAR NIL :WH WHAT)
 (:VAR MV11267 :ISA REGULATE :OBJECT MV11265 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV11265 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN"))

___________________
560: "What increases the amount of myc?"

                    SOURCE-START
e13   INCREASE      1 "What increases the amount of myc" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What increases the amount of myc?"
 (:VAR MV11277 :ISA WH-QUESTION :STATEMENT MV11271 :VAR NIL :WH WHAT)
 (:VAR MV11271 :ISA INCREASE :AFFECTED-PROCESS-OR-OBJECT MV11273 :PRESENT
  "PRESENT" :RAW-TEXT "increases")
 (:VAR MV11273 :ISA BIO-AMOUNT :MEASURED-ITEM MV11275 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV11275 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
561: "What upregulates myc?"

                    SOURCE-START
e4    UPREGULATE    1 "What upregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What upregulates myc?"
 (:VAR MV11281 :ISA WH-QUESTION :STATEMENT MV11279 :VAR NIL :WH WHAT)
 (:VAR MV11279 :ISA UPREGULATE :OBJECT MV11280 :PRESENT "PRESENT" :RAW-TEXT
  "upregulates")
 (:VAR MV11280 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
562: "What downregulates myc?"

                    SOURCE-START
e4    DOWNREGULATE  1 "What downregulates myc" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What downregulates myc?"
 (:VAR MV11285 :ISA WH-QUESTION :STATEMENT MV11283 :VAR NIL :WH WHAT)
 (:VAR MV11283 :ISA DOWNREGULATE :OBJECT MV11284 :PRESENT "PRESENT" :RAW-TEXT
  "downregulates")
 (:VAR MV11284 :ISA PROTEIN :RAW-TEXT "myc" :UID "UP:P01106" :NAME "MYC_HUMAN"))

___________________
563: "What decreases the amount of GFAP?"

                    SOURCE-START
e12   DECREASE      1 "What decreases the amount of GFAP" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("What decreases the amount of GFAP?"
 (:VAR MV11293 :ISA WH-QUESTION :STATEMENT MV11287 :VAR NIL :WH WHAT)
 (:VAR MV11287 :ISA DECREASE :AFFECTED-PROCESS-OR-OBJECT MV11289 :PRESENT
  "PRESENT" :RAW-TEXT "decreases")
 (:VAR MV11289 :ISA BIO-AMOUNT :MEASURED-ITEM MV11291 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV11291 :ISA PROTEIN :RAW-TEXT "GFAP" :UID "UP:P14136" :NAME
  "GFAP_HUMAN"))

___________________
564: "What regulates GLUL?"

                    SOURCE-START
e4    REGULATE      1 "What regulates GLUL" 4
                    QUESTION-MARK
                    END-OF-SOURCE
("What regulates GLUL?"
 (:VAR MV11297 :ISA WH-QUESTION :STATEMENT MV11295 :VAR NIL :WH WHAT)
 (:VAR MV11295 :ISA REGULATE :OBJECT MV11296 :PRESENT "PRESENT" :RAW-TEXT
  "regulates")
 (:VAR MV11296 :ISA PROTEIN :RAW-TEXT "GLUL" :UID "UP:P15104" :NAME
  "GLNA_HUMAN"))

___________________
565: "What regulates GLUL from the literature?"

                    SOURCE-START
e0    WHAT          1 "What " 2
e9    REGULATE      2 "regulates GLUL " 4
e8    FROM          4 "from the literature" 7
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
566: "What regulates GLUL from the GEO RNAi database?"

                    SOURCE-START
e0    WHAT          1 "What " 2
e13   REGULATE      2 "regulates GLUL " 4
e12   FROM          4 "from the GEO RNAi database" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
567: "Which kinases regulate the cfos gene?"

                    SOURCE-START
e11   REGULATE      1 "Which kinases regulate the cfos gene" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases regulate the cfos gene?"
 (:VAR MV11316 :ISA REGULATE :AGENT MV11315 :OBJECT MV11319 :PRESENT "PRESENT"
  :RAW-TEXT "regulate")
 (:VAR MV11315 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV11319 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV11318 :RAW-TEXT
  "gene")
 (:VAR MV11318 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
568: "Which kinases negatively regulate the cfos gene?"

                    SOURCE-START
e12   DOWNREGULATE  1 "Which kinases negatively regulate the cfos gene" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Which kinases negatively regulate the cfos gene?"
 (:VAR MV11320 :ISA DOWNREGULATE :AGENT MV11322 :OBJECT MV11325 :PRESENT
  "PRESENT" :RAW-TEXT "negatively regulate")
 (:VAR MV11322 :ISA KINASE :HAS-DETERMINER "WHICH" :RAW-TEXT "kinases")
 (:VAR MV11325 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV11324 :RAW-TEXT
  "gene")
 (:VAR MV11324 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME
  "FOS_HUMAN"))

___________________
569: "What are positive regulators of the cfos gene?"

                    SOURCE-START
e15   BE            1 "What are positive regulators of the cfos gene" 9
                    QUESTION-MARK
                    END-OF-SOURCE
("What are positive regulators of the cfos gene?"
 (:VAR MV11335 :ISA BE :PREDICATE MV11329 :SUBJECT MV11326)
 (:VAR MV11329 :ISA REGULATOR :THEME MV11333 :PREDICATION MV11328 :RAW-TEXT
  "regulators")
 (:VAR MV11333 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV11332 :RAW-TEXT
  "gene")
 (:VAR MV11332 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV11328 :ISA POSITIVE) (:VAR MV11326 :ISA WHAT))

___________________
570: "What transcribes ZEB1?"

                    SOURCE-START
e5    TRANSCRIBE    1 "What transcribes ZEB1" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What transcribes ZEB1?"
 (:VAR MV11339 :ISA WH-QUESTION :STATEMENT MV11338 :VAR NIL :WH WHAT)
 (:VAR MV11338 :ISA TRANSCRIBE :OBJECT MV11336 :PRESENT "PRESENT" :RAW-TEXT
  "transcribes")
 (:VAR MV11336 :ISA PROTEIN :RAW-TEXT "ZEB1" :UID "UP:P37275" :NAME
  "ZEB1_HUMAN"))

___________________
571: "Show me the evidence that IL6 increases the amount of SOCS1."

                    SOURCE-START
e27   SHOW          1 "Show me the evidence that IL6 increases the amount of SOCS1" 14
                    PERIOD
                    END-OF-SOURCE
("Show me the evidence that IL6 increases the amount of SOCS1."
 (:VAR MV11342 :ISA SHOW :STATEMENT-OR-THEME MV11353 :BENEFICIARY MV11343
  :PRESENT "PRESENT")
 (:VAR MV11353 :ISA EVIDENCE :STATEMENT MV11348 :HAS-DETERMINER "THE")
 (:VAR MV11348 :ISA INCREASE :AGENT MV11340 :AFFECTED-PROCESS-OR-OBJECT MV11350
  :PRESENT "PRESENT" :RAW-TEXT "increases")
 (:VAR MV11340 :ISA PROTEIN :RAW-TEXT "IL6" :UID "UP:P05231" :NAME "IL6_HUMAN")
 (:VAR MV11350 :ISA BIO-AMOUNT :MEASURED-ITEM MV11341 :HAS-DETERMINER "THE"
  :RAW-TEXT "amount")
 (:VAR MV11341 :ISA PROTEIN :RAW-TEXT "SOCS1" :UID "UP:O15524" :NAME
  "SOCS1_HUMAN")
 (:VAR MV11343 :ISA INTERLOCUTOR :NAME "speaker"))

___________________
572: "Show me the evidence that KRAS decreasse the amount of FZD8."

                    SOURCE-START
e22   SHOW          1 "Show me the evidence " 5
e8    THAT          5 "that " 6
e17   BIO-ENTITY    6 "KRAS decreasse " 8
e20   BIO-AMOUNT    8 "the amount of FZD8" 13
                    PERIOD
                    END-OF-SOURCE


___________________
573: "What is the evidence that kras regulates frizzled8?"

                    SOURCE-START
e16   BE            1 "What is the evidence that kras regulates frizzled8" 10
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that kras regulates frizzled8?"
 (:VAR MV11375 :ISA BE :PREDICATE MV11374 :SUBJECT MV11367)
 (:VAR MV11374 :ISA EVIDENCE :STATEMENT MV11373 :HAS-DETERMINER "THE")
 (:VAR MV11373 :ISA REGULATE :AGENT MV11372 :OBJECT MV11366 :PRESENT "PRESENT"
  :RAW-TEXT "regulates")
 (:VAR MV11372 :ISA PROTEIN :RAW-TEXT "kras" :UID "UP:P01116" :NAME
  "RASK_HUMAN")
 (:VAR MV11366 :ISA PROTEIN :RAW-TEXT "frizzled8" :UID "UP:Q9H461" :NAME
  "FZD8_HUMAN")
 (:VAR MV11367 :ISA WHAT))

___________________
574: "What is the evidence that SRF binds the cfos gene?"

                    SOURCE-START
e20   BE            1 "What is the evidence that SRF binds the cfos gene" 11
                    QUESTION-MARK
                    END-OF-SOURCE
("What is the evidence that SRF binds the cfos gene?"
 (:VAR MV11387 :ISA BE :PREDICATE MV11386 :SUBJECT MV11376)
 (:VAR MV11386 :ISA EVIDENCE :STATEMENT MV11382 :HAS-DETERMINER "THE")
 (:VAR MV11382 :ISA BINDING :BINDER MV11381 :DIRECT-BINDEE MV11385 :PRESENT
  "PRESENT" :RAW-TEXT "binds")
 (:VAR MV11381 :ISA PROTEIN :RAW-TEXT "SRF" :UID "UP:P11831" :NAME "SRF_HUMAN")
 (:VAR MV11385 :ISA GENE :HAS-DETERMINER "THE" :EXPRESSES MV11384 :RAW-TEXT
  "gene")
 (:VAR MV11384 :ISA PROTEIN :RAW-TEXT "cfos" :UID "UP:P01100" :NAME
  "FOS_HUMAN")
 (:VAR MV11376 :ISA WHAT))

___________________
575: "what genes are exclusively expressed in liver?"

                    SOURCE-START
e13   GENE-TRANSCRIPT-EXPRESS 1 "what genes are exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("what genes are exclusively expressed in liver?"
 (:VAR MV11395 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV11389 :ORGAN MV11394
  :ADVERB MV11391 :RAW-TEXT "expressed")
 (:VAR MV11389 :ISA GENE :HAS-DETERMINER "WHAT" :RAW-TEXT "genes")
 (:VAR MV11394 :ISA LIVER) (:VAR MV11391 :ISA EXCLUSIVELY))

___________________
576: "Is stat3 expressed in liver?"

                    SOURCE-START
e11   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 expressed in liver" 7
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 expressed in liver?"
 (:VAR MV11404 :ISA POLAR-QUESTION :STATEMENT MV11402)
 (:VAR MV11402 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV11397 :ORGAN MV11401
  :RAW-TEXT "expressed")
 (:VAR MV11397 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV11401 :ISA LIVER))

___________________
577: "Is stat3 exclusively expressed in liver?"

                    SOURCE-START
e13   GENE-TRANSCRIPT-EXPRESS 1 "Is stat3 exclusively expressed in liver" 8
                    QUESTION-MARK
                    END-OF-SOURCE
("Is stat3 exclusively expressed in liver?"
 (:VAR MV11413 :ISA POLAR-QUESTION :STATEMENT MV11411)
 (:VAR MV11411 :ISA GENE-TRANSCRIPT-EXPRESS :OBJECT MV11405 :ORGAN MV11410
  :ADVERB MV11407 :RAW-TEXT "expressed")
 (:VAR MV11405 :ISA PROTEIN :RAW-TEXT "stat3" :UID "UP:P40763" :NAME
  "STAT3_HUMAN")
 (:VAR MV11410 :ISA LIVER) (:VAR MV11407 :ISA EXCLUSIVELY))