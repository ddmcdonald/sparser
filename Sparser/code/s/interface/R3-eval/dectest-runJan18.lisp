(dtst nil t)


Writing result to /Users/mark/sparser/trunk/Sparser/code/s/interface/R3-eval/dec-out-01-18-15-1516.csv
(1 (P "We selected four drugs for our studies (Figures S1A–S1D).")) 
Storing #<pronoun/first/plural "we" 289>
Storing #<number "4">
Storing #<pronoun/first/plural "our" 299>
Storing #<study-bio-process 1359>
Storing #<figure 1358>
Storing #<compass-point "south" 514>
Storing #<single-capitalized-letter "S">
Storing #<number "1">
Storing #<single-capitalized-letter "A">
Storing #<a 97>
Storing #<compass-point "south" 514>
Storing #<single-capitalized-letter "S">
Storing #<number "1">
Storing #<single-capitalized-letter "D">[we][ selected][ four drugs]
sdm-span-segment: #<edge32 3 drug 5>
 for [ our studies (figures s1a-s1d)]


                    SOURCE-START
e37   SELECT        1 "we selected four drugs for our studies ( figures s 1 a - s 1 d )" 18
                    PERIOD
                    END-OF-SOURCE

Relations for sent 1: "We selected four drugs for our studies (Figures S1A–S1D)."
(#<select 1357>)

Relation: #<select 1357> subj: #<pronoun/first/plural "we" 289> obj NIL
(2 (P "Sorafenib is a class II (inactive conformation binder) drug (Wan et al., 2004) that inhibits V600EBRAF at 40 nM, CRAF at 13 nM, and several other kinases in the low nM range (Wilhelm et al., 2004).")) 
Storing #<a 98>
Storing #<year "2004" 361>
Storing #<that 91>
Storing #<protein "V600EBRAF" 943>
Storing #<number "40">
Storing #<unit-of-measure "nM" 849>
Storing #<protein "CRaf" 899>
Storing #<number "13">
Storing #<unit-of-measure "nM" 849>
Storing #<quantity "several" 464>
Storing #<kinase 1356>
Storing #<the 100>
Storing #<unit-of-measure "nM" 849>
Storing #<year "2004" 361>
Storing #<binder 1355>
Storing #<year "2004" 361>
Storing #<et al. 1354>
Storing #<year "2004" 361>
Storing #<et al. 1353>[sorafenib][ is][ a class ii (inactive conformation binder) drug (wan et al., 2004)]
Storing #<position-in-a-sequence 1350> that [ inhibits][ v600ebraf] at [ 40 nm, craf]
Storing #<measurement 1347>
sdm-span-segment: #<edge65 26 protein 30>
 at [ 13 nm]
Storing #<measurement 1346>, and [ several other kinases]
sdm-span-segment: #<edge67 35 kinase 38>
Storing #<range 1345> in [ the low nm range (wilhelm et al., 2004)]

"IGNORING LIKELY THATCOMP IN SWEEP" 

                    SOURCE-START
e78   IS-BIO-ENTITY 1 "sorafenib is a class ii ( inactive conformation binder ) drug ( wan et al . , 2004 ) that inhibits v 600 ebraf" 25
e73   AT            25 "at 40 nm , craf" 30
e72   AT            30 "at 13 nm" 33
e32                 "COMMA"
e33 e34             "and" :: and, AND
e67   KINASE        35 "several other kinases" 38
e71   IN            38 "in the low nm range ( wilhelm et al . , 2004 )" 51
                    PERIOD
                    END-OF-SOURCE

Relations for sent 2: "Sorafenib is a class II (inactive conformation binder) drug (Wan et al., 2004) that inhibits V600EBRAF at 40 nM, CRAF at 13 nM, and several other kinases in the low nM range (Wilhelm et al., 2004)."
NIL

(3 (P "It is the least-selective drug that we used.")) 
Storing #<pronoun/inanimate "it" 288>
Storing #<the 100>
Storing #<that 91>
Storing #<pronoun/first/plural "we" 289>[it][ is][ the least-selective drug] that [ we][ used]

"IGNORING LIKELY THATCOMP IN SWEEP" 

                    SOURCE-START
e0    PRONOUN/INANIMATE 1 "it" 2
e15   IS-BIO-ENTITY 2 "is the least - selective drug" 8
e14   USE           8 "that we used" 11
                    PERIOD
                    END-OF-SOURCE

Relations for sent 3: "It is the least-selective drug that we used."
(#<use 1346>)

Relation: #<use 1346> subj: #<pronoun/first/plural "we" 289> obj NIL
(4 (P "PLX4720 is a class I (active conformation binder) inhibitor that is highly selective and inhibits V600EBRAF at 13 nM (Tsai et al., 2008).")) 
Storing #<a 98>
Storing #<pronoun/first/singular "I" 284>
Storing #<single-capitalized-letter "I">
Storing #<that 91>
Storing #<protein "V600EBRAF" 943>
Storing #<number "13">
Storing #<unit-of-measure "nM" 849>
Storing #<year "2008" 357>
Storing #<binder 1456>
Storing #<et al. 1455>[plx4720][ is]
Storing #<inhibitor 1453>[ a class i (active conformation binder) inhibitor] that [ is highly selective]
Storing #<selective 1451> and [ inhibits][ v600ebraf] at [ 13 nm (tsai et al., 2008)]
Storing #<measurement 1449>

"IGNORING LIKELY THATCOMP IN SWEEP" 

                    SOURCE-START
e54   IS-BIO-ENTITY 1 "plx 4720 is a class i ( active conformation binder ) inhibitor that is highly selective" 17
e22 e23             "and" :: and, AND
e50   INHIBIT       18 "inhibits v 600 ebraf at 13 nm ( tsai et al . , 2008 )" 33
                    PERIOD
                    END-OF-SOURCE

Relations for sent 4: "PLX4720 is a class I (active conformation binder) inhibitor that is highly selective and inhibits V600EBRAF at 13 nM (Tsai et al., 2008)."
(#<inhibit 1450>)

Relation: #<inhibit 1450> subj: NIL obj NIL
(5 (P "885-A (Figure S1C) is a close analog of the class I inhibitor SB590885 (King et al., 2006) that is also highly selective for BRAF.")) 
Storing #<compass-point "south" 514>
Storing #<single-capitalized-letter "S">
Storing #<number "1">
Storing #<single-capitalized-letter "C">
Storing #<a 98>
Storing #<the 100>
Storing #<pronoun/first/singular "I" 284>
Storing #<single-capitalized-letter "I">
Storing #<year "2006" 359>
Storing #<that 91>
Storing #<protein "BRaf" 898>[885-a (figure s1c)][ is]
Storing #<analog 1448>[ a close analog] of [ the class i inhibitor sb590885 (king et al., 2006)] that [ is also highly selective]
Storing #<selective 1445> for [ braf]

"IGNORING LIKELY THATCOMP IN SWEEP" 

                    SOURCE-START
e66   IS-BIO-ENTITY 1 "885 - a ( figure s 1 c ) is a close analog of the class i inhibitor sb 590885 ( king et al . , 2006 ) that is also highly selective for braf" 36
                    PERIOD
                    END-OF-SOURCE

Relations for sent 5: "885-A (Figure S1C) is a close analog of the class I inhibitor SB590885 (King et al., 2006) that is also highly selective for BRAF."
NIL

(6 (P "It inhibits V600EBRAF at 2 nM (Figure S1E), is ineffective against a panel of 64 other protein kinases (Table S1), and preferentially blocks BRAF mutant cancer cell proliferation (Figure S1F).")) 
Storing #<pronoun/inanimate "it" 288>
Storing #<protein "V600EBRAF" 943>
Storing #<number "2">
Storing #<unit-of-measure "nM" 849>
Storing #<compass-point "south" 514>
Storing #<single-capitalized-letter "S">
Storing #<number "1">
Storing #<compass-point "east" 513>
Storing #<single-capitalized-letter "E">
Storing #<a 98>
Storing #<kinase 1443>
Storing #<compass-point "south" 514>
Storing #<single-capitalized-letter "S">
Storing #<number "1">
Storing #<protein "BRaf" 898>
Storing #<compass-point "south" 514>
Storing #<single-capitalized-letter "S">
Storing #<number "1">
Storing #<single-capitalized-letter "F">[it][ inhibits][ v600ebraf] at [ 2 nm (figure s1e)]
Storing #<measurement 1441>, [ is ineffective]
Storing #<ineffective 1440> against [ a panel] of [ 64 other protein kinases (table s1)]
sdm-span-segment: #<edge70 22 kinase 31>
, and [ preferentially blocks][ braf mutant cancer cell proliferation (figure s1f)]
Storing #<panel 1439>
(CAN 'T FIND VERB ON EDGE #<edge67 16 ineffective 18>) 
(CAN 'T FIND VERB ON EDGE #<edge67 16 ineffective 18>) 

                    SOURCE-START
e0    PRONOUN/INANIMATE 1 "it" 2
e82   INHIBIT       2 "inhibits v 600 ebraf at 2 nm ( figure s 1 e )" 15
e18                 "COMMA"
e67   INEFFECTIVE   16 "is ineffective" 18
e79   AGAINST       18 "against a panel of 64 other protein kinases ( table s 1 )" 31
e39                 "COMMA"
e40 e41             "and" :: and, AND
e76   BLOCK         33 "preferentially blocks braf mutant cancer cell proliferation ( figure s 1 f )" 46
                    PERIOD
                    END-OF-SOURCE

Relations for sent 6: "It inhibits V600EBRAF at 2 nM (Figure S1E), is ineffective against a panel of 64 other protein kinases (Table S1), and preferentially blocks BRAF mutant cancer cell proliferation (Figure S1F)."
(#<block 1437> #<inhibit 1442>)

Relation: #<block 1437> subj: NIL obj #<proliferate 1436>
Relation: #<inhibit 1442> subj: NIL obj NIL
(7 (P "Finally, we also used the potent and selective MEK inhibitor PD184352 (Sebolt-Leopold et al., 1999).")) 
Storing #<pronoun/first/plural "we" 289>
Storing #<the 100>
Storing #<bio-family "MEK" 914>
Storing #<year "1999" 366>
Storing #<et al. 1441>[finally,]
Storing #<finally 1435>[ we][ also used][ the potent]
Storing #<potent 1476>
sdm-span-segment: #<edge32 6 modifier 8>
 and [ selective mek inhibitor pd184352 (sebolt-leopold et al., 1999)]
Storing #<potent collection 1477>

                    SOURCE-START
e30   ADVERB        1 "finally ," 3
e38   USE           3 "we also used the potent and selective mek inhibitor pd 184352 ( sebolt - leopold et al . , 1999 )" 24
                    PERIOD
                    END-OF-SOURCE

Relations for sent 7: "Finally, we also used the potent and selective MEK inhibitor PD184352 (Sebolt-Leopold et al., 1999)."
(#<use 1433>)

Relation: #<use 1433> subj: #<pronoun/first/plural "we" 289> obj NIL
(8 (P "As expected, all four drugs blocked ERK activity in BRAF mutant A375 melanoma cells (Figure 1A; see Table S2).")) 
Storing #<number "4">
Storing #<bio-family "ERK" 911>
Storing #<protein "BRaf" 898>
Storing #<cell-line "A375" 982>
Storing #<cell 1431>
Storing #<number "1">
Storing #<single-capitalized-letter "A">
Storing #<a 97>
Storing #<compass-point "south" 514>
Storing #<single-capitalized-letter "S">
Storing #<number "2">[as expected, all four drugs]
Storing #<as expected 1430>
sdm-span-segment: #<edge37 1 drug 7>
[ blocked]
Storing #<activity 1428>[ erk activity] in [ braf mutant a375 melanoma cells (figure 1a; see table s2)]


                    SOURCE-START
e46   BLOCK         1 "as expected , all four drugs blocked erk activity in braf mutant a 375 melanoma cells ( figure 1 a ; see table s 2 )" 27
                    PERIOD
                    END-OF-SOURCE

Relations for sent 8: "As expected, all four drugs blocked ERK activity in BRAF mutant A375 melanoma cells (Figure 1A; see Table S2)."
(#<block 1429>)

Relation: #<block 1429> subj: #<drug 1432> obj #<activity 1428>
(9 (P "Similarly, all four drugs inhibited ERK in SkMel24, SkMel28, D25, and WM266.4 cells, another four lines that express mutant BRAF (Figure S1G).")) 
Storing #<number "4">
Storing #<bio-family "ERK" 911>
Storing #<cell-line "SkMel24" 989>
Storing #<cell-line "SkMel28" 990>
Storing #<cell-line "D25" 984>
Storing #<cell-line "WM266.4" 991>
Storing #<cell 1426>
Storing #<number "4">
Storing #<line 1425>
Storing #<that 91>
Storing #<protein "BRaf" 898>
Storing #<single-capitalized-letter "G">
Storing #<collection #<"SkMel24" 989> #<"SkMel28" 990> #<"D25" 984> #<"WM266.4" 991> 8>[similarly, all four drugs]
Storing #<similarly 1424>
sdm-span-segment: #<edge46 1 drug 6>
[ inhibited][ erk] in [ skmel24, skmel28, d25, and wm266.4 cells, another four lines]
sdm-span-segment: #<edge48 9 line 28>
 that [ express][ mutant braf (figure s1g)]

"IGNORING LIKELY THATCOMP IN SWEEP" 

                    SOURCE-START
e56   INHIBIT       1 "similarly , all four drugs inhibited erk in skmel 24 , skmel 28 , d 25 , and wm 266 . 4 cells , another four lines that express mutant braf ( figure s 1 g )" 38
                    PERIOD
                    END-OF-SOURCE

Relations for sent 9: "Similarly, all four drugs inhibited ERK in SkMel24, SkMel28, D25, and WM266.4 cells, another four lines that express mutant BRAF (Figure S1G)."
(#<inhibit 1423>)

Relation: #<inhibit 1423> subj: #<drug 1427> obj NIL
(10 (P "We also tested the drugs in D04, MM415, MM485, and WM852 NRAS mutant cells (Table S2).")) 
Storing #<pronoun/first/plural "we" 289>
Storing #<the 100>
Storing #<cell-line "D04" 983>
Storing #<cell-line "MM415" 985>
Storing #<cell-line "MM485" 986>
Storing #<cell-line "WM852" 992>
Storing #<protein "NRas" 895>
Storing #<cell 1420>
Storing #<collection #<"D04" 983> #<"MM415" 985> #<"MM485" 986> #<"WM852" 992> 9>[we][ also tested][ the drugs] in [ d04, mm415, mm485, and wm852 nras mutant cells (table s2)]


                    SOURCE-START
e38   TEST          1 "we also tested the drugs in d 04 , mm 415 , mm 485 , and wm 852 nras mutant cells ( table s 2 )" 27
                    PERIOD
                    END-OF-SOURCE

Relations for sent 10: "We also tested the drugs in D04, MM415, MM485, and WM852 NRAS mutant cells (Table S2)."
(#<test 1418>)

Relation: #<test 1418> subj: #<pronoun/first/plural "we" 289> obj NIL
(11 (P "As expected, PD184352 and sorafenib inhibited ERK in all of these lines (Figure 1A).")) 
Storing #<bio-family "ERK" 911>
Storing #<these 95>
Storing #<line 1417>
Storing #<number "1">
Storing #<single-capitalized-letter "A">
Storing #<a 97>[as expected, pd184352 and sorafenib]
Storing #<as expected 1416>
sdm-span-segment: #<edge31 1 drug 8>
[ inhibited][ erk] in [ all of these lines (figure 1a)]
sdm-span-segment: #<edge33 11 line 20>



                    SOURCE-START
e37   INHIBIT       1 "as expected , pd 184352 and sorafenib inhibited erk in all of these lines ( figure 1 a )" 20
                    PERIOD
                    END-OF-SOURCE

Relations for sent 11: "As expected, PD184352 and sorafenib inhibited ERK in all of these lines (Figure 1A)."
(#<inhibit 1415>)

Relation: #<inhibit 1415> subj: #<drug collection 1495> obj NIL
(12 (P "Surprisingly, however, PLX4720 and 885-A caused an unexpected increase in ERK activity in the NRAS mutant cells (Figure 1A).")) 
Storing #<an 99>
Storing #<bio-family "ERK" 911>
Storing #<the 100>
Storing #<protein "NRas" 895>
Storing #<cell 1414>[surprisingly,]
Storing #<surprisingly 1413> however, [ plx4720 and 885-a][ caused][ an unexpected increase]
Storing #<activity 1410> in [ erk activity] in [ the nras mutant cells (figure 1a)]


                    SOURCE-START
e35   ADVERB        1 "surprisingly ," 3
e2    HOWEVER       3 "however" 4
e3                  "COMMA"
e45   CAUSE         5 "plx 4720 and 885 - a caused an unexpected increase" 15
e43   IN            15 "in erk activity" 18
e42   IN            18 "in the nras mutant cells ( figure 1 a )" 28
                    PERIOD
                    END-OF-SOURCE

Relations for sent 12: "Surprisingly, however, PLX4720 and 885-A caused an unexpected increase in ERK activity in the NRAS mutant cells (Figure 1A)."
(#<cause 1412>)

Relation: #<cause 1412> subj: #<drug collection 1499> obj NIL
(13 (P "NRAS or CRAF depletion by RNA interference (RNAi) blocked MEK/ERK activation by PLX4720 and 885-A in NRAS mutant cells (Figure 1B and 1C) and we show that 885-A activated CRAF in these cells (Figure 1D).")) 
Storing #<protein "NRas" 895>
Storing #<protein "CRaf" 899>
Storing #<pathway "MEK/ERK" 1398>
Storing #<protein "NRas" 895>
Storing #<cell 1409>
Storing #<number "1">
Storing #<single-capitalized-letter "B">
Storing #<number "1">
Storing #<single-capitalized-letter "C">
Storing #<pronoun/first/plural "we" 289>
Storing #<that 91>
Storing #<protein "CRaf" 899>
Storing #<these 95>
Storing #<cell 1408>
Storing #<number "1">
Storing #<single-capitalized-letter "D">
Storing #<protein collection 1512>[nras or craf depletion] by [ rna interference (rnai)][ blocked][ mek/erk activation] by [ plx4720 and 885-a] in [ nras mutant cells (figure 1b and 1c)] and [ we][ show] that [ 885-a][ activated][ craf] in [ these cells (figure 1d)]
Storing #<cell 1409>

"IGNORING LIKELY THATCOMP IN SWEEP" 

                    SOURCE-START
e88   DEPLETE       1 "nras or craf depletion by rna interference ( rnai )" 11
e86   BLOCK         11 "blocked mek / erk activation by plx 4720 and 885 - a in nras mutant cells ( figure 1 b and 1 c )" 35
e38 e39             "and" :: and, AND
e81   SHOW          36 "we show" 38
e80   BIO-ACTIVATE  38 "that 885 - a activated craf in these cells ( figure 1 d )" 52
                    PERIOD
                    END-OF-SOURCE

Relations for sent 13: "NRAS or CRAF depletion by RNA interference (RNAi) blocked MEK/ERK activation by PLX4720 and 885-A in NRAS mutant cells (Figure 1B and 1C) and we show that 885-A activated CRAF in these cells (Figure 1D)."
(#<bio-activate 1558> #<show 1559> #<block 1561> #<deplete 1407>)

Relation: #<bio-activate 1558> subj: #<drug "885-A" 840> obj #<protein "CRaf" 899>
Relation: #<show 1559> subj: #<pronoun/first/plural "we" 289> obj NIL
Relation: #<block 1561> subj: NIL obj #<bio-activate 1560>
Relation: #<deplete 1407> subj: #<prepositional-phrase 1598> obj NIL
(14 (P "We previously reported that oncogenic RAS requires CRAF but not BRAF to activate MEK (Dumaz et al., 2006) and consistent with this, BRAF is inactive in NRAS mutant cells (Figure 1E).")) 
Storing #<pronoun/first/plural "we" 289>
Storing #<relative-time-adverb "previously" 477>
Storing #<report-verb "report" 806>
Storing #<that 91>
Storing #<bio-family "Ras" 896>
Storing #<protein "CRaf" 899>
Storing #<protein "BRaf" 898>
Storing #<bio-family "MEK" 914>
Storing #<year "2006" 359>
Storing #<this 96>
Storing #<protein "BRaf" 898>
Storing #<protein "NRas" 895>
Storing #<cell 1557>
Storing #<number "1">
Storing #<compass-point "east" 513>
Storing #<single-capitalized-letter "E">
Storing #<et al. 1556>[we][ previously reported] that [ oncogenic ras][ requires][ craf] but [ not braf]
Storing #<protein "BRaf" 898>
sdm-span-segment: #<edge56 10 protein 12>
 to [ activate][ mek (dumaz et al., 2006)] and [ consistent] with [ this, braf]
Storing #<protein "BRaf" 898>
sdm-span-segment: #<edge57 26 protein 29>
[ is inactive]
Storing #<inactive 1550> in [ nras mutant cells (figure 1e)]

"IGNORING LIKELY THATCOMP IN SWEEP" 

                    SOURCE-START
e70   REPORT        1 "we previously reported" 4
e69   REQUIRE       4 "that oncogenic ras requires craf" 9
e12   BUT           9 "but" 10
e56   PROTEIN       10 "not braf" 12
e66   TO            12 "to activate mek ( dumaz et al . , 2006 )" 23
e26 e27             "and" :: and, AND
e28   MODIFIER      24 "consistent" 25
e64   WITH          25 "with this , braf is inactive in nras mutant cells ( figure 1 e )" 40
                    PERIOD
                    END-OF-SOURCE

Relations for sent 14: "We previously reported that oncogenic RAS requires CRAF but not BRAF to activate MEK (Dumaz et al., 2006) and consistent with this, BRAF is inactive in NRAS mutant cells (Figure 1E)."
(#<bio-activate 1552> #<require 1553> #<report 1554>)

Relation: #<bio-activate 1552> subj: NIL obj #<bio-family "MEK" 914>
Relation: #<require 1553> subj: #<bio-family "Ras" 896> obj NIL
Relation: #<report 1554> subj: #<pronoun/first/plural "we" 289> obj NIL
(15 (P "These data therefore present an intriguing paradox.")) 
Storing #<these 95>
Storing #<an 99>[these data]
sdm-span-segment: #<edge9 1 bio-entity 3>
[ therefore present]
Storing #<paradox 1547>[ an intriguing paradox]


                    SOURCE-START
e14   PRESENT       1 "these data therefore present an intriguing paradox" 8
                    PERIOD
                    END-OF-SOURCE

Relations for sent 15: "These data therefore present an intriguing paradox."
(#<present 1548>)

Relation: #<present 1548> subj: #<bio-entity "data" 976> obj NIL
(16 (P "BRAF is not active and is not required for MEK/ERK activation in RAS mutant cells.")) 
Storing #<protein "BRaf" 898>
Storing #<pathway "MEK/ERK" 1398>
Storing #<bio-family "Ras" 896>
Storing #<cell 1546>[braf][ is not active]
Storing #<active 1544> and [ is not required] for [ mek/erk activation] in [ ras mutant cells]


                    SOURCE-START
e32   ACTIVE        1 "braf is not active" 5
e5 e6               "and" :: and, AND
e31   REQUIRE+ED    6 "is not required for mek / erk activation in ras mutant cells" 18
                    PERIOD
                    END-OF-SOURCE

Relations for sent 16: "BRAF is not active and is not required for MEK/ERK activation in RAS mutant cells."
(#<require 1542>)

Relation: #<require 1542> subj: NIL obj NIL
(17 (P "Nevertheless, BRAF inhibitors hyperactivate CRAF and MEK in these cells, so we studied the underlying mechanism(s).")) 
Storing #<protein "BRaf" 898>
Storing #<inhibitor 1540>
Storing #<protein "CRaf" 899>
Storing #<bio-family "MEK" 914>
Storing #<these 95>
Storing #<cell 1539>
Storing #<pronoun/first/plural "we" 289>
Storing #<the 100>
Storing #<protein collection 1614>[nevertheless, braf inhibitors]
Storing #<nevertheless 1538>
sdm-span-segment: #<edge29 1 inhibitor 5>
[ hyperactivate][ craf and mek] in [ these cells], so [ we][ studied][ the underlying mechanism(s)]
Storing #<event 1536>

                    SOURCE-START
e37   BIO-HYPERACTIVATE 1 "nevertheless , braf inhibitors hyperactivate craf and mek in these cells" 12
e15                 "COMMA"
e16 e17             "so" :: so, SO
e18   PRONOUN/FIRST/PLURAL  14 "we" 15
e33   STUDY         15 "studied the underlying mechanism ( s )" 22
                    PERIOD
                    END-OF-SOURCE

Relations for sent 17: "Nevertheless, BRAF inhibitors hyperactivate CRAF and MEK in these cells, so we studied the underlying mechanism(s)."
(#<bio-hyperactivate 1537>)

Relation: #<bio-hyperactivate 1537> subj: #<inhibitor 1540> obj #<protein collection 1614>
(18 (P "In this study, we show that inhibition of BRAF by chemical or genetic means in the presence of oncogenic or growth-factor activated RAS induces BRAF binding to CRAF, leading to CRAF hyperactivation and consequently elevated MEK and ERK signaling.")) 
Storing #<this 96>
Storing #<pronoun/first/plural "we" 289>
Storing #<that 91>
Storing #<protein "BRaf" 898>
Storing #<the 100>
Storing #<bio-family "Ras" 896>
Storing #<protein "BRaf" 898>
Storing #<protein "CRaf" 899>
Storing #<protein "CRaf" 899>
Storing #<bio-family "MEK" 914>
Storing #<bio-family "ERK" 911>
Storing #<hyphenated-pair 1534>
Storing #<bio-family collection 1619>
Storing #<chemical collection 1620>in [ this study], [ we][ show] that [ inhibition] of [ braf]
Storing #<means 1530> by [ chemical or genetic means] in [ the presence] of [ oncogenic] or [ growth-factor][ activated][ ras][ induces][ braf][ binding] to [ craf, leading]
sdm-span-segment: #<edge73 31 lead 34>
 to [ craf hyperactivation]
Storing #<signaling 1523> and [ consequently elevated mek and erk signaling]

"IGNORING LIKELY THATCOMP IN SWEEP" 
"IGNORING LIKELY THATCOMP IN SWEEP" 

                    SOURCE-START
e90   IN            1 "in this study" 4
e6                  "COMMA"
e89   SHOW          5 "we show" 7
e9 e10              "that" :: that, THAT
e88   INHIBIT       8 "inhibition of braf by chemical or genetic means" 16
e84   IN            16 "in the presence" 19
e29 e30             "of" :: of, OF
e31   MODIFIER      20 "oncogenic" 21
e32 e33             "or" :: or, OR
e83   BIO-ACTIVATE  22 "growth - factor activated" 26
e82   INDUCE        26 "ras induces" 28
e81   BIO-BIND      28 "braf binding" 30
e80   TO            30 "to craf , leading to craf hyperactivation" 37
e54 e55             "and" :: and, AND
e76   SIGNALING     38 "consequently elevated mek and erk signaling" 44
                    PERIOD
                    END-OF-SOURCE

Relations for sent 18: "In this study, we show that inhibition of BRAF by chemical or genetic means in the presence of oncogenic or growth-factor activated RAS induces BRAF binding to CRAF, leading to CRAF hyperactivation and consequently elevated MEK and ERK signaling."
(#<bio-bind 1525> #<induce 1526> #<bio-activate 1527> #<inhibit 1531> #<show 1532>)

Relation: #<bio-bind 1525> subj: #<protein "BRaf" 898> obj NIL
Relation: #<induce 1526> subj: #<bio-family "Ras" 896> obj NIL
Relation: #<bio-activate 1527> subj: NIL obj NIL
Relation: #<inhibit 1531> subj: #<prepositional-phrase 1666> obj NIL
Relation: #<show 1532> subj: #<pronoun/first/plural "we" 289> obj NIL
(19 (P "The mechanism we describe is another paradigm of RAF activation downstream of RAS and based on our findings, we propose the following mechanism by which this occurs.")) 
Storing #<the 100>
Storing #<pronoun/first/plural "we" 289>
Storing #<bio-family "Raf" 900>
Storing #<bio-family "Ras" 896>
Storing #<pronoun/first/plural "our" 299>
Storing #<finding 1520>
Storing #<pronoun/first/plural "we" 289>
Storing #<the 100>
Storing #<this 96>[the mechanism][ we][ describe is]
Storing #<be 1675>
sdm-span-segment: #<edge43 4 be 6>
[ another paradigm]
Storing #<paradigm 1676>
sdm-span-segment: #<edge44 6 paradigm 8>
 of [ raf activation][ downstream] of [ ras] and [ based] on [ our findings], [ we][ propose][ the following mechanism] by which [ this][ occurs]
Storing #<downstream 1517>

                    SOURCE-START
e42   MECHANISM     1 "the mechanism" 3
e3    PRONOUN/FIRST/PLURAL  3 "we" 4
e43   BE            4 "describe is" 6
e44   PARADIGM      6 "another paradigm" 8
e55   OF            8 "of raf activation" 11
e54   DOWNSTREAM    11 "downstream of ras" 14
e19 e20             "and" :: and, AND
e21   BASE          15 "based" 16
e52   ON            16 "on our findings" 19
e28                 "COMMA"
e51   PROPOSE       20 "we propose the following mechanism" 25
e36 e37             "by" :: by, BY
e38   WHICH         26 "which" 27
e49   OCCUR         27 "this occurs" 29
                    PERIOD
                    END-OF-SOURCE

Relations for sent 19: "The mechanism we describe is another paradigm of RAF activation downstream of RAS and based on our findings, we propose the following mechanism by which this occurs."
(#<occur 1513> #<propose 1515> #<base 1516> #<be 1675>)

Relation: #<occur 1513> subj: NIL obj NIL
Relation: #<propose 1515> subj: #<pronoun/first/plural "we" 289> obj NIL
Relation: #<base 1516> subj: NIL obj NIL
Relation: #<be 1675> subj: NIL obj NIL
(20 (P "We posit that in RAS mutant cells, BRAF maintains itself in an inactive conformation through its own kinase activity, either through auto-phosphorylation, or by phosphorylating a partner protein that then keeps it inactive (Figure 7A).")) 
Storing #<pronoun/first/plural "we" 289>
Storing #<that 91>
Storing #<bio-family "Ras" 896>
Storing #<cell 1748>
Storing #<protein "BRaf" 898>
Storing #<pronoun/inanimate "itself" 312>
Storing #<an 99>
Storing #<pronoun/inanimate "its" 298>
Storing #<either 93>
Storing #<a 98>
Storing #<that 91>
Storing #<calculated-time "then" 27>
Storing #<pronoun/inanimate "it" 288>
Storing #<number "7">
Storing #<single-capitalized-letter "A">
Storing #<a 97>[we][ posit] that in [ ras mutant cells, braf]
sdm-span-segment: #<edge62 5 protein 10>
[ maintains]
Storing #<conformation 1744> itself in [ an inactive conformation]
Storing #<activity 1743> through [ its own kinase activity]
sdm-span-segment: #<edge67 17 activity 21>
, [ either] through [ auto-phosphorylation], or by [ phosphorylating]
Storing #<protein 1741>[ a partner protein] that then [ keeps][ it][ inactive (figure 7a)]

"IGNORING LIKELY THATCOMP IN SWEEP" 
"IGNORING LIKELY THATCOMP IN SWEEP" 
"IGNORING LIKELY THATCOMP IN SWEEP" 
"IGNORING LIKELY THATCOMP IN SWEEP" 

                    SOURCE-START
e77   POSIT         1 "we posit" 3
e2 e3               "that" :: that, THAT
e76   IN            4 "in ras mutant cells , braf maintains" 11
e13   PRONOUN/INANIMATE 11 "itself" 12
e74   IN            12 "in an inactive conformation" 16
e73   THROUGH       16 "through its own kinase activity" 21
e27                 "COMMA"
e28   EITHER        22 "either" 23
e72   THROUGH       23 "through auto - phosphorylation" 27
e33                 "COMMA"
e34 e35             "or" :: or, OR
e71   BY            29 "by phosphorylating a partner protein" 34
e44 e45             "that" :: that, THAT
e46 e47             "then" :: TIME, THEN
e48   KEEP          36 "keeps" 37
e49   PRONOUN/INANIMATE 37 "it" 38
e50   INACTIVE      38 "inactive ( figure 7 a )" 44
                    PERIOD
                    END-OF-SOURCE

Relations for sent 20: "We posit that in RAS mutant cells, BRAF maintains itself in an inactive conformation through its own kinase activity, either through auto-phosphorylation, or by phosphorylating a partner protein that then keeps it inactive (Figure 7A)."
(#<keep 1740> #<phosphorylate 1742> #<phosphorylate 1747> #<maintain 1745> #<posit 1746>)

Relation: #<keep 1740> subj: NIL obj NIL
Relation: #<phosphorylate 1742> subj: NIL obj NIL
Relation: #<phosphorylate 1747> subj: NIL obj NIL
Relation: #<maintain 1745> subj: #<protein "BRaf" 898> obj NIL
Relation: #<posit 1746> subj: #<pronoun/first/plural "we" 289> obj NIL
(21 (P "We are currently using mass-spectrometry and mutagenic approaches to elucidate the underlying mechanism.")) 
Storing #<pronoun/first/plural "we" 289>
Storing #<relative-time-adverb "currently" 472>
Storing #<approach 1738>
Storing #<the 100>[we][ are currently using][ mass-spectrometry] and [ mutagenic approaches] to [ elucidate][ the underlying mechanism]
Storing #<mass spectrometry collection 1764>

                    SOURCE-START
e31   USE           1 "we are currently using mass - spectrometry and mutagenic approaches to elucidate the underlying mechanism" 16
                    PERIOD
                    END-OF-SOURCE

Relations for sent 21: "We are currently using mass-spectrometry and mutagenic approaches to elucidate the underlying mechanism."
(#<use 1735>)

Relation: #<use 1735> subj: #<pronoun/first/plural "we" 289> obj NIL
(22 (P "We propose that when BRAF is  inhibited, it escapes this auto-inhibited fate and is recruited to the plasma membrane by RAS, where it forms a stable complex with CRAF.")) 
Storing #<pronoun/first/plural "we" 289>
Storing #<that 91>
Storing #<protein "BRaf" 898>
Storing #<pronoun/inanimate "it" 288>
Storing #<this 96>
Storing #<the 100>
Storing #<bio-family "Ras" 896>
Storing #<pronoun/inanimate "it" 288>
Storing #<a 98>
Storing #<protein "CRaf" 899>[we][ propose] that when [ braf][ is  inhibited], [ it][ escapes]
Storing #<fate 1726>[ this auto-inhibited fate] and [ is recruited] to [ the plasma membrane] by [ ras], where [ it][ forms]
Storing #<complex 1722>[ a stable complex] with [ craf]

"IGNORING LIKELY THATCOMP IN SWEEP" 
"IGNORING LIKELY THATCOMP IN SWEEP" 

                    SOURCE-START
e56   PROPOSE       1 "we propose" 3
e2 e3               "that" :: that, THAT
e55   INHIBIT       4 "when braf is  inhibited" 8
e8                  "COMMA"
e9    PRONOUN/INANIMATE 9 "it" 10
e10   ESCAPE        10 "escapes" 11
e45   FATE          11 "this auto - inhibited fate" 16
e17 e18             "and" :: and, AND
e46   RECRUIT+ED    17 "is recruited" 19
e53   TO            19 "to the plasma membrane" 23
e52   BY            23 "by ras" 25
e31                 "COMMA"
e32   WHERE         26 "where" 27
e33   PRONOUN/INANIMATE 27 "it" 28
e51   FORM          28 "forms a stable complex" 32
e50   WITH          32 "with craf" 34
                    PERIOD
                    END-OF-SOURCE

Relations for sent 22: "We propose that when BRAF is  inhibited, it escapes this auto-inhibited fate and is recruited to the plasma membrane by RAS, where it forms a stable complex with CRAF."
(#<form 1723> #<recruit 1725> #<escape 1734> #<inhibit 1727> #<propose 1728>)

Relation: #<form 1723> subj: NIL obj #<complex 1722>
Relation: #<recruit 1725> subj: NIL obj NIL
Relation: #<escape 1734> subj: NIL obj NIL
Relation: #<inhibit 1727> subj: NIL obj NIL
Relation: #<propose 1728> subj: #<pronoun/first/plural "we" 289> obj NIL
(23 (P "Critically, we posit that because it is inhibited, BRAF does not directly phosphorylate MEK, but rather it acts as a scaffold whose function is to enhance CRAF activation, thereby allowing CRAF to hyperactivate the pathway (Figure 7B).")) 
Storing #<pronoun/first/plural "we" 289>
Storing #<that 91>
Storing #<pronoun/inanimate "it" 288>
Storing #<protein "BRaf" 898>
Storing #<bio-family "MEK" 914>
Storing #<pronoun/inanimate "it" 288>
Storing #<a 98>
Storing #<protein "CRaf" 899>
Storing #<protein "CRaf" 899>
Storing #<the 100>
Storing #<number "7">
Storing #<single-capitalized-letter "B">[critically,]
Storing #<critically 1721>[ we][ posit] that because [ it][ is inhibited], [ braf][ does not directly phosphorylate][ mek], but [ rather][ it][ acts] as [ a scaffold] whose [ function][ is] to [ enhance][ craf activation, thereby allowing craf]
sdm-span-segment: #<edge65 30 allow 36>
 to [ hyperactivate][ the pathway (figure 7b)]

"IGNORING LIKELY THATCOMP IN SWEEP" 
Storing #<be 1710>
"IGNORING LIKELY THATCOMP IN SWEEP" 

                    SOURCE-START
e56   ADVERB        1 "critically ," 3
e75   POSIT         3 "we posit" 5
e4 e5               "that" :: that, THAT
e6    BECAUSE       6 "because" 7
e7    PRONOUN/INANIMATE 7 "it" 8
e57   INHIBIT+ED    8 "is inhibited" 10
e10                 "COMMA"
e74   PHOSPHORYLATE 11 "braf does not directly phosphorylate mek" 17
e18                 "COMMA"
e19   BUT           18 "but" 19
e20   RATHER        19 "rather" 20
e21   PRONOUN/INANIMATE 20 "it" 21
e22 e23             "acts" :: BIO-ACT-AS, BIO-ACT
e72   AS            22 "as a scaffold" 25
e29   WHOSE         25 "whose" 26
e71   BE            26 "function is" 28
e70   TO            28 "to enhance craf activation , thereby allowing craf" 36
e68   TO            36 "to hyperactivate the pathway ( figure 7 b )" 45
                    PERIOD
                    END-OF-SOURCE

Relations for sent 23: "Critically, we posit that because it is inhibited, BRAF does not directly phosphorylate MEK, but rather it acts as a scaffold whose function is to enhance CRAF activation, thereby allowing CRAF to hyperactivate the pathway (Figure 7B)."
(#<bio-hyperactivate 1705> #<bio-enhance 1709> #<be 1710> #<phosphorylate 1716> #<inhibit 1719> #<posit 1720>)

Relation: #<bio-hyperactivate 1705> subj: NIL obj NIL
Relation: #<bio-enhance 1709> subj: NIL obj #<allow 1708>
Relation: #<be 1710> subj: NIL obj NIL
Relation: #<phosphorylate 1716> subj: #<protein "BRaf" 898> obj NIL
Relation: #<inhibit 1719> subj: NIL obj NIL
Relation: #<posit 1720> subj: #<pronoun/first/plural "we" 289> obj NIL
(24 (P "We do not know the stoichiometry of the components in these complexes, but since BRAF and CRAF must both bind to RAS for complex formation, it seems likely that at least two RAS proteins are needed to stimulate formation of the complex (Figure 7B).")) 
Storing #<pronoun/first/plural "we" 289>
Storing #<the 100>
Storing #<the 100>
Storing #<component 1715>
Storing #<these 95>
Storing #<complex 1703>
Storing #<protein "BRaf" 898>
Storing #<protein "CRaf" 899>
Storing #<bio-family "Ras" 896>
Storing #<pronoun/inanimate "it" 288>
Storing #<that 91>
Storing #<number "2">
Storing #<bio-family "Ras" 896>
Storing #<protein 1702>
Storing #<the 100>
Storing #<protein collection 1788>[we][ do not know][ the stoichiometry] of [ the components] in [ these complexes], but since [ braf and craf][ must][ both][ bind] to [ ras] for [ complex formation], [ it][ seems][ likely] that [ at least two ras proteins]
sdm-span-segment: #<edge75 32 protein 37>
[ are needed] to [ stimulate][ formation] of [ the complex (figure 7b)]

"IGNORING LIKELY THATCOMP IN SWEEP" 

                    SOURCE-START
e0    PRONOUN/FIRST/PLURAL  1 "we" 2
e91   KNOW          2 "do not know the stoichiometry" 7
e90   OF            7 "of the components" 10
e89   IN            10 "in these complexes" 13
e17                 "COMMA"
e18   BUT           14 "but" 15
e88   SINCE         15 "since braf and craf" 19
e24   MODAL         19 "must" 20
e25 e26             "both" :: both, BOTH
e87   BIO-BIND      21 "bind to ras" 24
e85   FOR           24 "for complex formation" 27
e37                 "COMMA"
e38   PRONOUN/INANIMATE 28 "it" 29
e84   SEEM          29 "seems likely" 31
e83   NEED          31 "that at least two ras proteins are needed" 39
e81   TO            39 "to stimulate formation of the complex ( figure 7 b )" 50
                    PERIOD
                    END-OF-SOURCE

Relations for sent 24: "We do not know the stoichiometry of the components in these complexes, but since BRAF and CRAF must both bind to RAS for complex formation, it seems likely that at least two RAS proteins are needed to stimulate formation of the complex (Figure 7B)."
(#<stimulate 1831> #<need 1832> #<seem 1834> #<bio-bind 1836> #<know 1700>)

Relation: #<stimulate 1831> subj: NIL obj NIL
Relation: #<need 1832> subj: #<protein 1702> obj NIL
Relation: #<seem 1834> subj: NIL obj NIL
Relation: #<bio-bind 1836> subj: NIL obj #<prepositional-phrase 1892>
Relation: #<know 1700> subj: NIL obj NIL
(25 (P " Next, we tested whether overexpression of these genes was sufficient to activate the MAPK pathway.")) 
Storing #<pronoun/first/plural "we" 289>
Storing #<these 95>
Storing #<gene 1699>
Storing #<be 1828>
Storing #<the 100>
Storing #<bio-family "MAPK" 910>[ next,]
Storing #<next 1827>[ we][ tested] whether [ overexpression] of [ these genes][ was sufficient]
Storing #<sufficient 1824> to [ activate][ the mapk pathway]

(CAN 'T FIND VERB ON EDGE #<edge27 10 modifier 12>) 
(CAN 'T FIND VERB ON EDGE #<edge27 10 modifier 12>) 

                    SOURCE-START
e25   ADVERB        1 "next ," 3
e33   TEST          3 "we tested" 5
e6    WHETHER       5 "whether" 6
e7    OVEREXPRESS   6 "overexpression" 7
e32   OF            7 "of these genes" 10
e27   MODIFIER      10 "was sufficient" 12
e31   TO            12 "to activate the mapk pathway" 17
                    PERIOD
                    END-OF-SOURCE

Relations for sent 25: " Next, we tested whether overexpression of these genes was sufficient to activate the MAPK pathway."
(#<bio-activate 1823> #<overexpress 1825> #<test 1826>)

Relation: #<bio-activate 1823> subj: NIL obj #<bio-family "MAPK" 910>
Relation: #<overexpress 1825> subj: NIL obj NIL
Relation: #<test 1826> subj: #<pronoun/first/plural "we" 289> obj NIL
(26 (P "At baseline, COT expression increased ERK phosphorylation in a manner comparable to MEK1DD, consistent with MAP kinase pathway activation (Fig. 2a and Supplementary Fig. 6).")) 
Storing #<protein "cot" 947>
Storing #<bio-family "ERK" 911>
Storing #<a 98>
Storing #<protein "MEK1" 912>
Storing #<protein "MAP" 945>
Storing #<number "2">
Storing #<a 98>
Storing #<number "6">
Storing #<fig 1821>[at baseline, cot expression]
Storing #<at baseline 1819>
sdm-span-segment: #<edge50 1 gene-transcript-express 6>
[ increased][ erk phosphorylation] in [ a manner][ comparable] to [ mek1dd,][ consistent] with [ map kinase pathway activation (fig. 2a and supplementary fig. 6)]


                    SOURCE-START
e60   INCREASE      1 "at baseline , cot expression increased erk phosphorylation" 9
e58   IN            9 "in a manner" 12
e15   COMPARABLE    12 "comparable" 13
e57   TO            13 "to mek 1 dd ," 18
e22   MODIFIER      18 "consistent" 19
e56   WITH          19 "with map kinase pathway activation ( fig . 2 a and supplementary fig . 6 )" 35
                    PERIOD
                    END-OF-SOURCE

Relations for sent 26: "At baseline, COT expression increased ERK phosphorylation in a manner comparable to MEK1DD, consistent with MAP kinase pathway activation (Fig. 2a and Supplementary Fig. 6)."
(#<increase 1818>)

Relation: #<increase 1818> subj: #<gene-transcript-express 1820> obj NIL
(27 (P "Overexpression of wild-type COT or C-RAF resulted in constitutive phosphorylation of ERK and MEK in the presence of PLX4720, whereas kinase-dead derivatives had no effect (Fig. 2a, Supplementary Fig. 7).")) 
Storing #<protein "cot" 947>
Storing #<protein "CRaf" 899>
Storing #<bio-family "ERK" 911>
Storing #<bio-family "MEK" 914>
Storing #<the 100>
Storing #<derivative 1812>
Storing #<have 1811>
Storing #<number "7">
Storing #<bio-family collection 1924>
Storing #<protein collection 1925>
Storing #<fig 1810>[overexpression] of [ wild-type cot or c-raf][ resulted] in [ constitutive phosphorylation] of [ erk and mek] in [ the presence] of [ plx4720], whereas [ kinase-dead derivatives][ had][ no effect (fig. 2a, supplementary fig. 7)]
Storing #<effect 1926>
sdm-span-segment: #<edge60 32 effect 45>

Storing #<presence 1806>

                    SOURCE-START
e0    OVEREXPRESS   1 "overexpression" 2
e70   OF            2 "of wild - type cot or c - raf" 11
e69   RESULT        11 "resulted in constitutive phosphorylation of erk and mek in the presence of plx 4720" 25
e33                 "COMMA"
e34   WHEREAS       26 "whereas" 27
e59   DERIVATIVE    27 "kinase - dead derivatives" 31
e61   HAVE          31 "had no effect ( fig . 2 a , supplementary fig . 7 )" 45
                    PERIOD
                    END-OF-SOURCE

Relations for sent 27: "Overexpression of wild-type COT or C-RAF resulted in constitutive phosphorylation of ERK and MEK in the presence of PLX4720, whereas kinase-dead derivatives had no effect (Fig. 2a, Supplementary Fig. 7)."
(#<have 1811> #<result 1808> #<overexpress 1809>)

Relation: #<have 1811> subj: NIL obj NIL
Relation: #<result 1808> subj: NIL obj NIL
Relation: #<overexpress 1809> subj: NIL obj NIL
(28 (P "Based on these results, we hypothesized that COT and C-RAF drive resistance to RAF inhibition predominantly through re-activation of MAPK signaling.")) 
Storing #<these 95>
Storing #<pronoun/first/plural "we" 289>
Storing #<that 91>
Storing #<protein "cot" 947>
Storing #<protein "CRaf" 899>
Storing #<bio-family "Raf" 900>
Storing #<bio-family "MAPK" 910>
Storing #<protein collection 1965>[based] on [ these results], [ we][ hypothesized] that [ cot and c-raf][ drive][ resistance] to [ raf inhibition][ predominantly] through [ re-activation]
Storing #<signaling 1796> of [ mapk signaling]

"IGNORING LIKELY THATCOMP IN SWEEP" 
Storing #<drive 1801>
"IGNORING LIKELY THATCOMP IN SWEEP" 

                    SOURCE-START
e0    BASE          1 "based" 2
e49   ON            2 "on these results" 5
e6                  "COMMA"
e48   HYPOTHESIZE   6 "we hypothesized" 8
e9 e10              "that" :: that, THAT
e37   PROTEIN       9 "cot and c - raf" 14
e47   DRIVE         14 "drive resistance to raf inhibition predominantly" 20
e43   THROUGH       20 "through re - activation of mapk signaling" 27
                    PERIOD
                    END-OF-SOURCE

Relations for sent 28: "Based on these results, we hypothesized that COT and C-RAF drive resistance to RAF inhibition predominantly through re-activation of MAPK signaling."
(#<bio-activate 1797> #<hypothesize 1802> #<base 1804>)

Relation: #<bio-activate 1797> subj: NIL obj #<prepositional-phrase 1972>
Relation: #<hypothesize 1802> subj: #<pronoun/first/plural "we" 289> obj NIL
Relation: #<base 1804> subj: NIL obj NIL
(29 (P "Notably, of the nine candidate ORFs from our initial screen, a subset (3) did not show persistent ERK/MEK phosphorylation following RAF inhibition, suggesting MAPK pathway-independent alteration of drug sensitivity (Supplementary Fig. 8).")) 
Storing #<the 100>
Storing #<number "9">
Storing #<orf 1795>
Storing #<pronoun/first/plural "our" 299>
Storing #<a 98>
Storing #<number "3">
Storing #<bio-family "ERK" 911>
Storing #<bio-family "MEK" 914>
Storing #<bio-family "Raf" 900>
Storing #<bio-family "MAPK" 910>
Storing #<number "8">
Storing #<fig 1794>[notably,]
Storing #<notably 1793> of [ the nine candidate orfs]
sdm-span-segment: #<edge61 4 orf 8>
Storing #<screen 1792> from [ our initial screen], [ a subset (3)][ did not show][ persistent erk/mek phosphorylation][ following raf inhibition, suggesting mapk pathway-independent alteration]
sdm-span-segment: #<edge74 26 suggest 36>
Storing #<sensitivity 2032> of [ drug sensitivity (supplementary fig. 8)]


                    SOURCE-START
e58   ADVERB        1 "notably ," 3
e79   OF            3 "of the nine candidate orfs" 8
e78   FROM          8 "from our initial screen" 12
e15                 "COMMA"
e64   SUBSET        13 "a subset ( 3 )" 18
e77   SHOW          18 "did not show persistent erk / mek phosphorylation" 26
e74   SUGGEST       26 "following raf inhibition , suggesting mapk pathway - independent alteration" 36
e76   OF            36 "of drug sensitivity ( supplementary fig . 8 )" 45
                    PERIOD
                    END-OF-SOURCE

Relations for sent 29: "Notably, of the nine candidate ORFs from our initial screen, a subset (3) did not show persistent ERK/MEK phosphorylation following RAF inhibition, suggesting MAPK pathway-independent alteration of drug sensitivity (Supplementary Fig. 8)."
(#<suggest 2037> #<show 1789>)

Relation: #<suggest 2037> subj: NIL obj NIL
Relation: #<show 1789> subj: NIL obj NIL
(30 (P "a dummy sentence.")) 
Skipping sentence 30 because of known problems
(31 (P "a dummy sentence.")) 
Storing #<a 98>
Storing #<sentence 2036>[a dummy sentence]


                    SOURCE-START
e5    SENTENCE      1 "a dummy sentence" 4
                    PERIOD
                    END-OF-SOURCE

Relations for sent 31: "a dummy sentence."
NIL

(32 (P "Several groups have shown that C-RAF activation and heterodimerization with B-RAF constitute critical components of the cellular response to B-RAF inhibition.")) 
Storing #<quantity "several" 464>
Storing #<group 2031>
Storing #<that 91>
Storing #<protein "CRaf" 899>
Storing #<protein "BRaf" 898>
Storing #<component 2030>
Storing #<the 100>
Storing #<protein "BRaf" 898>[several groups]
sdm-span-segment: #<edge33 1 group 3>
[ have shown] that [ c-raf activation and heterodimerization] with [ b-raf][ constitute][ critical components]
Storing #<response 2025> of [ the cellular response] to [ b-raf inhibition]

"IGNORING LIKELY THATCOMP IN SWEEP" 
"IGNORING LIKELY THATCOMP IN SWEEP" 

                    SOURCE-START
e45   SHOW          1 "several groups have shown" 5
e6 e7               "that" :: that, THAT
e35   BIO-ACTIVATE  6 "c - raf activation and heterodimerization" 12
e44   WITH          12 "with b - raf" 16
e43   CONSTITUTE    16 "constitute critical components" 19
e42   OF            19 "of the cellular response to b - raf inhibition" 28
                    PERIOD
                    END-OF-SOURCE

Relations for sent 32: "Several groups have shown that C-RAF activation and heterodimerization with B-RAF constitute critical components of the cellular response to B-RAF inhibition."
(#<constitute 2026> #<bio-activate collection 2052> #<show 2028>)

Relation: #<constitute 2026> subj: NIL obj NIL
Relation: #<bio-activate collection 2052> subj: NIL obj #<protein "CRaf" 899>
Relation: #<show 2028> subj: NIL obj NIL
(33 (P "In A375 cells, endogenous C-RAF:B-RAF heterodimers were measurable and inducible following treatment with PLX4720 (Supplementary Fig. 9).")) 
Storing #<cell-line "A375" 982>
Storing #<cell 2027>
Storing #<heterodimer 2023>
Storing #<be 2022>
Storing #<number "9">
Storing #<measurable collection 2068>
Storing #<fig 2021>in [ a375 cells, endogenous c-raf:b-raf heterodimers]
sdm-span-segment: #<edge34 2 heterodimer 15>
[ were measurable and inducible][ following treatment] with [ plx4720 (supplementary fig. 9)]

(CAN 'T FIND VERB ON EDGE #<edge35 15 measurable 19>) 
(CAN 'T FIND VERB ON EDGE #<edge35 15 measurable 19>) 

                    SOURCE-START
e38   IN            1 "in a 375 cells , endogenous c - raf : b - raf heterodimers" 15
e35   MEASURABLE    15 "were measurable and inducible" 19
e36   TREATMENT     19 "following treatment" 21
e37   WITH          21 "with plx 4720 ( supplementary fig . 9 )" 30
                    PERIOD
                    END-OF-SOURCE

Relations for sent 33: "In A375 cells, endogenous C-RAF:B-RAF heterodimers were measurable and inducible following treatment with PLX4720 (Supplementary Fig. 9)."
NIL

(34 (P "However, endogenous C-RAF phosphorylation at S338, an event required for C-RAF activation, remained low (Supplementary Fig. 9).")) 
Storing #<protein "CRaf" 899>
Storing #<an 99>
Storing #<protein "CRaf" 899>
Storing #<number "9">
Storing #<fig 2019>however, [ endogenous c-raf phosphorylation] at [ s338], [ an event][ required] for [ c-raf activation], [ remained low (supplementary fig. 9)]
Storing #<low 2076>
sdm-span-segment: #<edge34 21 low 29>

Storing #<s338 2017>

                    SOURCE-START
e0    HOWEVER       1 "however" 2
e1                  "COMMA"
e38   PHOSPHORYLATE 3 "endogenous c - raf phosphorylation at s 338" 11
e10                 "COMMA"
e32   EVENT         12 "an event" 14
e36   REQUIRE       14 "required for c - raf activation" 20
e20                 "COMMA"
e34   LOW           21 "remained low ( supplementary fig . 9 )" 29
                    PERIOD
                    END-OF-SOURCE

Relations for sent 34: "However, endogenous C-RAF phosphorylation at S338, an event required for C-RAF activation, remained low (Supplementary Fig. 9)."
(#<require 2015> #<phosphorylate 2018>)

Relation: #<require 2015> subj: NIL obj NIL
Relation: #<phosphorylate 2018> subj: NIL obj NIL
(35 (P "In contrast, ectopically expressed C-RAF was phosphorylated on S338 (Supplementary Fig. 9) and its PLX4720 resistance phenotype was associated with sustained MEK/ERK activation (Fig. 2a, Supplementary Fig. 9).")) 
Storing #<protein "CRaf" 899>
Storing #<be 2013>
Storing #<number "9">
Storing #<pronoun/inanimate "its" 298>
Storing #<be 2012>
Storing #<pathway "MEK/ERK" 1398>
Storing #<number "9">
Storing #<fig 2011>
Storing #<fig 2010>[in contrast, ectopically expressed c-raf]
Storing #<in contrast 2008>
sdm-span-segment: #<edge51 1 protein 9>
[ was phosphorylated] on [ s338 (supplementary fig. 9)]
Storing #<phenotype 2004> and [ its plx4720 resistance phenotype]
sdm-span-segment: #<edge55 21 phenotype 26>
[ was associated] with [ sustained mek/erk activation (fig. 2a, supplementary fig. 9)]
Storing #<s338 collection 2080>

                    SOURCE-START
e63   PHOSPHORYLATE 1 "in contrast , ectopically expressed c - raf was phosphorylated on s 338 ( supplementary fig . 9 ) and its plx 4720 resistance phenotype" 26
e56   ASSOCIATE+ED  26 "was associated" 28
e60   WITH          28 "with sustained mek / erk activation ( fig . 2 a , supplementary fig . 9 )" 45
                    PERIOD
                    END-OF-SOURCE

Relations for sent 35: "In contrast, ectopically expressed C-RAF was phosphorylated on S338 (Supplementary Fig. 9) and its PLX4720 resistance phenotype was associated with sustained MEK/ERK activation (Fig. 2a, Supplementary Fig. 9)."
(#<associate 2003> #<phosphorylate 2006>)

Relation: #<associate 2003> subj: NIL obj NIL
Relation: #<phosphorylate 2006> subj: NIL obj NIL
(36 (P "Moreover, ectopic expression of a high-activity C-RAF truncation mutant (C-RAF W22) was more effective than wild-type C-RAF in mediating PLX4720 resistance and ERK activation (Supplementary Fig. 10), further indicating that elevated C-RAF activity may direct resistance to this agent.")) 
Storing #<a 98>
Storing #<protein "CRaf" 899>
Storing #<protein "CRaf" 899>
Storing #<compass-point "west" 512>
Storing #<single-capitalized-letter "W">
Storing #<be 1999>
Storing #<protein "CRaf" 899>
Storing #<bio-family "ERK" 911>
Storing #<number "10">
Storing #<that 91>
Storing #<protein "CRaf" 899>
Storing #<this 96>
Storing #<activity 1998>
Storing #<residue-on-protein 2088>
Storing #<fig 1997>[moreover, ectopic expression]
Storing #<moreover 1995>
sdm-span-segment: #<edge74 1 gene-transcript-express 5>
Storing #<mutant 1994> of [ a high-activity c-raf truncation mutant (c-raf w22)][ was more effective]
Storing #<effective 1992>
Storing #<protein "CRaf" 899> than [ wild-type c-raf] in [ mediating][ plx4720 resistance] and [ erk activation (supplementary fig. 10)], [ further indicating]
sdm-span-segment: #<edge84 47 indicate 49>
Storing #<activity 1988> that [ elevated c-raf activity][ may][ direct resistance] to [ this agent]

"IGNORING LIKELY THATCOMP IN SWEEP" 
"IGNORING LIKELY THATCOMP IN SWEEP" 
(CAN 'T FIND VERB ON EDGE #<edge80 22 effective 25>) 
(CAN 'T FIND VERB ON EDGE #<edge80 22 effective 25>) 

                    SOURCE-START
e74   GENE-TRANSCRIPT-EXPRESS 1 "moreover , ectopic expression" 5
e94   OF            5 "of a high - activity c - raf truncation mutant ( c - raf w 22 )" 22
e80   EFFECTIVE     22 "was more effective" 25
e27                 "than"
e81   PROTEIN       26 "wild - type c - raf" 32
e93   IN            32 "in mediating plx 4720 resistance" 37
e38 e39             "and" :: and, AND
e83   BIO-ACTIVATE  38 "erk activation ( supplementary fig . 10 )" 46
e47                 "COMMA"
e84   INDICATE      47 "further indicating" 49
e50 e51             "that" :: that, THAT
e86   ACTIVITY      50 "elevated c - raf activity" 55
e91   MODAL         55 "may direct resistance to this agent" 61
                    PERIOD
                    END-OF-SOURCE

Relations for sent 36: "Moreover, ectopic expression of a high-activity C-RAF truncation mutant (C-RAF W22) was more effective than wild-type C-RAF in mediating PLX4720 resistance and ERK activation (Supplementary Fig. 10), further indicating that elevated C-RAF activity may direct resistance to this agent."
(#<indicate 2089> #<bio-activate 1989> #<mediate 1991> #<gene-transcript-express 1996>)

Relation: #<indicate 2089> subj: NIL obj NIL
Relation: #<bio-activate 1989> subj: NIL obj #<bio-family "ERK" 911>
Relation: #<mediate 1991> subj: NIL obj NIL
Relation: #<gene-transcript-express 1996> subj: NIL obj NIL
(37 (P "Consistent with this model, oncogenic alleles of NRAS and KRAS conferred PLX4720 resistance in A375 cells (Fig. 2b) and yielded sustained C-RAF(S338) and ERK phosphorylation in the context of drug treatment (Fig. 2c).")) 
Storing #<this 96>
Storing #<allele 2136>
Storing #<protein "NRas" 895>
Storing #<protein "KRas" 893>
Storing #<cell-line "A375" 982>
Storing #<cell 2135>
Storing #<number "2">
Storing #<protein "CRaf" 899>
Storing #<bio-family "ERK" 911>
Storing #<the 100>
Storing #<number "2">
Storing #<protein collection 2153>[consistent] with [ this model, oncogenic alleles]
sdm-span-segment: #<edge64 3 allele 8>
 of [ nras and kras][ conferred][ plx4720 resistance] in [ a375 cells (fig. 2b)] and [ yielded sustained c-raf(s338)] and [ erk phosphorylation] in [ the context]
Storing #<treatment 2127> of [ drug treatment (fig. 2c)]
Storing #<collection #<cell 2135> #<"CRaf" 899> #<phosphorylate 2129> 27>

                    SOURCE-START
e0    MODIFIER      1 "consistent" 2
e80   WITH          2 "with this model , oncogenic alleles of nras and kras conferred plx 4720 resistance" 16
e75   IN            16 "in a 375 cells ( fig . 2 b ) and yielded sustained c - raf ( s 338 ) and erk phosphorylation" 39
e74   IN            39 "in the context" 42
e73   OF            42 "of drug treatment ( fig . 2 c )" 51
                    PERIOD
                    END-OF-SOURCE

Relations for sent 37: "Consistent with this model, oncogenic alleles of NRAS and KRAS conferred PLX4720 resistance in A375 cells (Fig. 2b) and yielded sustained C-RAF(S338) and ERK phosphorylation in the context of drug treatment (Fig. 2c)."
(#<confer 2133>)

Relation: #<confer 2133> subj: #<allele 2136> obj NIL
(38 (P "Thus, although genetic alterations that engender C-RAF activation (e.g., oncogenic RAS mutations) tend to show mutual exclusivity with B-RAFV600E mutation, such co-occurring events [19, 20] might be favored in the context of acquired resistance to B-RAF inhibition.")) 
Skipping sentence 38 because of known problems
(39 (P " We then considered whether COT-expressing cancer cells remain sensitive to MAPK pathway inhibition at a target downstream of COT or RAF.")) 
Skipping sentence 39 because of known problems
(40 (P "Here, we queried the OUMS-23 and RPMI-7951 cell lines for sensitivity to the MEK1/2 inhibitor CI-1040.")) 
Storing #<deictic-location "here" 174>
Storing #<pronoun/first/plural "we" 289>
Storing #<the 100>
Storing #<cell-line "OUMS-23" 987>
Storing #<cell-line "RPMI-7951" 988>
Storing #<cell line 2126>
Storing #<the 100>
Storing #<bio-family "MEK" 914>
Storing #<cell-line collection 2182>[here], [ we][ queried][ the oums-23 and rpmi-7951 cell lines] for [ sensitivity] to [ the mek1/2 inhibitor ci-1040]
Storing #<sensitivity 2124>

                    SOURCE-START
e0 e1               "here" :: here, DEICTIC-LOCATION
e2                  "COMMA"
e3    PRONOUN/FIRST/PLURAL  3 "we" 4
e36   QUERY         4 "queried the oums - 23 and rpmi - 7951 cell lines" 15
e35   FOR           15 "for sensitivity to the mek 1 / 2 inhibitor ci - 1040" 27
                    PERIOD
                    END-OF-SOURCE

Relations for sent 40: "Here, we queried the OUMS-23 and RPMI-7951 cell lines for sensitivity to the MEK1/2 inhibitor CI-1040."
(#<query 2125>)

Relation: #<query 2125> subj: NIL obj NIL
(41 (P "Interestingly, both cell lines were refractory to MEK inhibition (Fig. 4a) and displayed sustained ERK phosphorylation even at 1 μM CI-1040 (Fig. 4b).")) 
Storing #<cell line 2123>
Storing #<be 2122>
Storing #<bio-family "MEK" 914>
Storing #<number "4">
Storing #<a 98>
Storing #<bio-family "ERK" 911>
Storing #<number "1">
Storing #<unit-of-measure "μm" 845>
Storing #<number "4">[interestingly, both cell lines]
Storing #<interestingly 2121>
sdm-span-segment: #<edge44 1 cell line 6>
[ were refractory]
Storing #<refractory 2120> to [ mek inhibition (fig. 4a)] and [ displayed sustained erk phosphorylation][ even] at [ 1 μm ci-1040 (fig. 4b)]
Storing #<measurement 2114>

(CAN 'T FIND VERB ON EDGE #<edge45 6 refractory 8>) 
(CAN 'T FIND VERB ON EDGE #<edge45 6 refractory 8>) 

                    SOURCE-START
e44   CELL LINE     1 "interestingly , both cell lines" 6
e45   REFRACTORY    6 "were refractory" 8
e54   TO            8 "to mek inhibition ( fig . 4 a ) and displayed sustained erk phosphorylation" 22
e26   EVEN          22 "even" 23
e53   AT            23 "at 1 μm ci - 1040 ( fig . 4 b )" 35
                    PERIOD
                    END-OF-SOURCE

Relations for sent 41: "Interestingly, both cell lines were refractory to MEK inhibition (Fig. 4a) and displayed sustained ERK phosphorylation even at 1 μM CI-1040 (Fig. 4b)."
NIL

(42 (P "Ectopic COT expression in A375 and SKMEL28 cells also conferred decreased sensitivity to the MEK inhibitors CI-1040 and AZD6244, suggesting that COT expression alone was sufficient to induce this phenotype (Fig. 4c, 4d, Supplementary Fig. 17).")) 
Storing #<protein "cot" 947>
Storing #<cell-line "A375" 982>
Storing #<cell-line "SkMel28" 990>
Storing #<cell 2114>
Storing #<the 100>
Storing #<bio-family "MEK" 914>
Storing #<inhibitor 2113>
Storing #<that 91>
Storing #<protein "cot" 947>
Storing #<be 2112>
Storing #<this 96>
Storing #<number "4">
Storing #<number "4">
Storing #<number "17">
Storing #<cell-line collection 2201>
Storing #<fig 2111>[ectopic cot expression]
Storing #<sensitivity 2109> in [ a375 and skmel28 cells also conferred decreased sensitivity]
sdm-span-segment: #<edge74 5 sensitivity 15>
 to [ the mek inhibitors ci-1040 and azd6244], [ suggesting] that [ cot expression][ alone was sufficient]
Storing #<sufficient 2103> to [ induce][ this phenotype (fig. 4c, 4d, supplementary fig. 17)]

"IGNORING LIKELY THATCOMP IN SWEEP" 
"IGNORING LIKELY THATCOMP IN SWEEP" 
(CAN 'T FIND VERB ON EDGE #<edge79 31 modifier 33>) 
(CAN 'T FIND VERB ON EDGE #<edge79 31 modifier 33>) 

                    SOURCE-START
e69   GENE-TRANSCRIPT-EXPRESS 1 "ectopic cot expression" 4
e86   IN            4 "in a 375 and skmel 28 cells also conferred decreased sensitivity to the mek inhibitors ci - 1040 and azd 6244" 25
e30                 "COMMA"
e31   SUGGEST       26 "suggesting" 27
e32 e33             "that" :: that, THAT
e78   GENE-TRANSCRIPT-EXPRESS 28 "cot expression" 30
e80   MODIFIER      30 "alone was sufficient" 33
e83   TO            33 "to induce this phenotype ( fig . 4 c , 4 d , supplementary fig . 17 )" 51
                    PERIOD
                    END-OF-SOURCE

Relations for sent 42: "Ectopic COT expression in A375 and SKMEL28 cells also conferred decreased sensitivity to the MEK inhibitors CI-1040 and AZD6244, suggesting that COT expression alone was sufficient to induce this phenotype (Fig. 4c, 4d, Supplementary Fig. 17)."
(#<induce 2102> #<gene-transcript-express 2104> #<suggest 2105> #<gene-transcript-express 2110>)

Relation: #<induce 2102> subj: NIL obj NIL
Relation: #<gene-transcript-express 2104> subj: NIL obj NIL
Relation: #<suggest 2105> subj: NIL obj NIL
Relation: #<gene-transcript-express 2110> subj: NIL obj NIL
(43 (P "Similar to results observed with pharmacological MEK inhibitors, MEK1/2 knockdown only modestly suppressed COT–mediated ERK phosphorylation in A375 cells (Supplementary Fig. 18).")) 
Storing #<bio-family "MEK" 914>
Storing #<inhibitor 2099>
Storing #<bio-family "MEK" 914>
Storing #<protein "cot" 947>
Storing #<bio-family "ERK" 911>
Storing #<cell-line "A375" 982>
Storing #<cell 2098>
Storing #<number "18">
Storing #<fig 2096>[similar] to [ results][ observed] with [ pharmacological mek inhibitors, mek1/2 knockdown only modestly suppressed cot-mediated erk phosphorylation]
Storing #<knockdown 2090>
sdm-span-segment: #<edge45 6 phosphorylate 23>
 in [ a375 cells (supplementary fig. 18)]


                    SOURCE-START
e0    SIMILAR       1 "similar" 2
e1 e2               "to" :: to, TO
e49   OBSERVE       3 "results observed" 5
e48   WITH          5 "with pharmacological mek inhibitors , mek 1 / 2 knockdown only modestly suppressed cot - mediated erk phosphorylation" 23
e47   IN            23 "in a 375 cells ( supplementary fig . 18 )" 33
                    PERIOD
                    END-OF-SOURCE

Relations for sent 43: "Similar to results observed with pharmacological MEK inhibitors, MEK1/2 knockdown only modestly suppressed COT–mediated ERK phosphorylation in A375 cells (Supplementary Fig. 18)."
(#<observe 2094>)

Relation: #<observe 2094> subj: NIL obj NIL
(44 (P "In accordance with prior observations24, these data raised the possibility that COT may activate ERK through MEK-independent and MEK-dependent mechanisms.")) 
Storing #<these 95>
Storing #<the 100>
Storing #<that 91>
Storing #<protein "cot" 947>
Storing #<bio-family "ERK" 911>
Storing #<bio-family "MEK" 914>
Storing #<bio-family "MEK" 914>
Storing #<mechanism 2261>
Storing #<independent 2260>
Storing #<dependent 2259>
Storing #<independent collection 2276>in accordance with [ prior observations24,][ these data]
sdm-span-segment: #<edge39 8 bio-entity 10>
[ raised][ the possibility] that [ cot][ may activate][ erk] through [ mek-independent and mek-dependent mechanisms]

"IGNORING LIKELY THATCOMP IN SWEEP" 

                    SOURCE-START
e50   IN ACCORDANCE WITH  1 "in accordance with prior observations 24 , these data raised the possibility" 13
e46   BIO-ACTIVATE  13 "that cot may activate erk" 18
e43   THROUGH       18 "through mek - independent and mek - dependent mechanisms" 27
                    PERIOD
                    END-OF-SOURCE

Relations for sent 44: "In accordance with prior observations24, these data raised the possibility that COT may activate ERK through MEK-independent and MEK-dependent mechanisms."
(#<bio-activate 2256> #<raise 2258>)

Relation: #<bio-activate 2256> subj: #<protein "cot" 947> obj #<bio-family "ERK" 911>
Relation: #<raise 2258> subj: #<bio-entity "observations24," 2275> obj NIL
(45 (P "To test this hypothesis directly, we performed an in vitro kinase assay using recombinant COT and ERK1.")) 
Storing #<this 96>
Storing #<pronoun/first/plural "we" 289>
Storing #<an 99>
Storing #<protein "cot" 947>
Storing #<protein "ERK1" 907>
Storing #<protein collection 2285>to [ test][ this hypothesis][ directly,]
Storing #<directly 2253>[ we][ performed]
Storing #<assay 2251>[ an in vitro kinase assay][ using][ recombinant cot and erk1]


                    SOURCE-START
e36   TO            1 "to test this hypothesis" 5
e27   ADVERB        5 "directly ," 7
e34   PERFORM       7 "we performed an in vitro kinase assay" 14
e32   USE           14 "using recombinant cot and erk 1" 20
                    PERIOD
                    END-OF-SOURCE

Relations for sent 45: "To test this hypothesis directly, we performed an in vitro kinase assay using recombinant COT and ERK1."
(#<use 2250> #<perform 2252> #<test 2255>)

Relation: #<use 2250> subj: NIL obj NIL
Relation: #<perform 2252> subj: #<pronoun/first/plural "we" 289> obj NIL
Relation: #<test 2255> subj: NIL obj NIL
(46 (P "Indeed, recombinant COT induced pThr202/Tyr204 phosphorylation of ERK1 in vitro (Supplementary Fig.  18) suggesting that in certain contexts, COT expression may potentiate ERK activation in a MEK-independent manner.")) 
Storing #<protein "cot" 947>
Storing #<protein "ERK1" 907>
Storing #<number "18">
Storing #<that 91>
Storing #<context 2249>
Storing #<protein "cot" 947>
Storing #<bio-family "ERK" 911>
Storing #<a 98>
Storing #<bio-family "MEK" 914>
Storing #<independent 2248>
Storing #<fig 2247>
Storing #<protein "cot" 947>[indeed, recombinant cot]
Storing #<indeed 2246>
sdm-span-segment: #<edge49 1 protein 5>
[ induced][ pthr202/tyr204 phosphorylation] of [ erk1][ in vitro (supplementary fig.  18) suggesting]
sdm-span-segment: #<edge51 15 suggest 24>
 that in [ certain contexts, cot expression]
sdm-span-segment: #<edge54 26 gene-transcript-express 31>
[ may potentiate][ erk activation]
Storing #<manner 2239> in [ a mek-independent manner]

"IGNORING LIKELY THATCOMP IN SWEEP" 
"IGNORING LIKELY THATCOMP IN SWEEP" 

                    SOURCE-START
e66   INDUCE        1 "indeed , recombinant cot induced pthr 202 / tyr 204 phosphorylation of erk 1" 15
e51   SUGGEST       15 "in vitro ( supplementary fig .  18 ) suggesting" 24
e20 e21             "that" :: that, THAT
e62   IN            25 "in certain contexts , cot expression may potentiate erk activation" 35
e59   IN            35 "in a mek - independent manner" 41
                    PERIOD
                    END-OF-SOURCE

Relations for sent 46: "Indeed, recombinant COT induced pThr202/Tyr204 phosphorylation of ERK1 in vitro (Supplementary Fig.  18) suggesting that in certain contexts, COT expression may potentiate ERK activation in a MEK-independent manner."
(#<potentiate 2242> #<suggest 2286> #<induce 2245>)

Relation: #<potentiate 2242> subj: #<gene-transcript-express 2243> obj NIL
Relation: #<suggest 2286> subj: NIL obj NIL
Relation: #<induce 2245> subj: #<protein "cot" 947> obj NIL
(47 (P "another dummy sentence.")) 
Storing #<sentence 2241>[another dummy sentence]
sdm-span-segment: #<edge5 1 sentence 4>



                    SOURCE-START
e5    SENTENCE      1 "another dummy sentence" 4
                    PERIOD
                    END-OF-SOURCE

Relations for sent 47: "another dummy sentence."
NIL

(48 (P " Oncogenic mutations in the serine/threonine kinase B-RAF are found in 50–70% of malignant melanomas 1.")) 
Storing #<the 100>
Storing #<protein "BRaf" 898>
Storing #<number "50">
Storing #<number "70">
Storing #<melananoma 2237>
Storing #<number "1">[ oncogenic mutations] in [ the serine/threonine kinase b-raf][ are found] in [ 50-70]% of [ malignant melanomas 1]
sdm-span-segment: #<edge34 20 digit-sequence 23>



                    SOURCE-START
e28   MUTATE        1 "oncogenic mutations" 3
e37   IN            3 "in the serine / threonine kinase b - raf" 12
e32   FIND+ED       12 "are found" 14
e36   IN            14 "in 50 - 70" 18
e20                 "PERCENT-SIGN"
e35   OF            19 "of malignant melanomas 1" 23
                    PERIOD
                    END-OF-SOURCE

Relations for sent 48: " Oncogenic mutations in the serine/threonine kinase B-RAF are found in 50–70% of malignant melanomas 1."
(#<find 2236> #<mutate 2238>)

Relation: #<find 2236> subj: NIL obj NIL
Relation: #<mutate 2238> subj: NIL obj NIL
(49 (P "Pre-clinical studies have demonstrated that the B-RAFV600E mutation predicts a dependency on the mitogen activated protein kinase (MAPK) signaling cascade in melanoma [1–5] —an observation that has been validated by the success of RAF and MEK inhibitors in clinical trials 6–8.")) 
Storing #<study-bio-process 2235>
Storing #<that 91>
Storing #<the 100>
Storing #<protein "V600EBRAF" 943>
Storing #<a 98>
Storing #<the 100>
Storing #<bio-family "ERK" 911>
Storing #<bio-family "MAPK" 910>
Storing #<number "1">
Storing #<number "5">
Storing #<an 99>
Storing #<that 91>
Storing #<be 2234>
Storing #<the 100>
Storing #<bio-family "Raf" 900>
Storing #<bio-family "MEK" 914>
Storing #<inhibitor 2233>
Storing #<trial 2232>
Storing #<number "6">
Storing #<number "8">
Storing #<bio-family collection 2318>
Storing #<name-word "MAPK">[pre-clinical studies][ have demonstrated] that [ the b-rafv600e mutation][ predicts][ a dependency]
Storing #<cascade 2225> on [ the mitogen activated protein kinase (mapk) signaling cascade] in [ melanoma] [1-5] [ -an observation] that [ has been validated] by [ the success] of [ raf and mek inhibitors] in [ clinical trials 6-8]

"IGNORING LIKELY THATCOMP IN SWEEP" 
"IGNORING LIKELY THATCOMP IN SWEEP" 
Storing #<melananoma 2224>
"IGNORING LIKELY THATCOMP IN SWEEP" 

                    SOURCE-START
e104  DEMONSTRATE   1 "pre - clinical studies have demonstrated" 7
e7 e8               "that" :: that, THAT
e81   MUTATE        8 "the b - rafv 600 e mutation" 15
e103  PREDICT       15 "predicts a dependency on the mitogen activated protein kinase ( mapk ) signaling cascade in melanoma [ 1 - 5 ]" 36
e98   VALIDATE      36 "- an observation that has been validated" 43
e96   BY            43 "by the success" 46
e95   OF            46 "of raf and mek inhibitors" 51
e94   IN            51 "in clinical trials 6 - 8" 57
                    PERIOD
                    END-OF-SOURCE

Relations for sent 49: "Pre-clinical studies have demonstrated that the B-RAFV600E mutation predicts a dependency on the mitogen activated protein kinase (MAPK) signaling cascade in melanoma [1–5] —an observation that has been validated by the success of RAF and MEK inhibitors in clinical trials 6–8."
(#<validate 2222> #<predict 2227> #<mutate 2228> #<demonstrate 2230>)

Relation: #<validate 2222> subj: NIL obj NIL
Relation: #<predict 2227> subj: NIL obj NIL
Relation: #<mutate 2228> subj: NIL obj NIL
Relation: #<demonstrate 2230> subj: NIL obj NIL
(50 (P "However, clinical responses to targeted anticancer therapeutics are frequently confounded by de novo or acquired resistance [9–11].")) 
Storing #<response 2229>
Storing #<number "9">
Storing #<number "11">
Storing #<de novo collection 2350>however, [ clinical responses]
Storing #<therapeutics 2221> to [ targeted anticancer therapeutics][ are frequently confounded] by [ de novo or acquired resistance]


                    SOURCE-START
e0    HOWEVER       1 "however" 2
e1                  "COMMA"
e28   RESPONSE      3 "clinical responses" 5
e36   TO            5 "to targeted anticancer therapeutics" 9
e32   CONFOUND+ED   9 "are frequently confounded" 12
e35   BY            12 "by de novo or acquired resistance [ 9 - 11 ]" 23
                    PERIOD
                    END-OF-SOURCE

Relations for sent 50: "However, clinical responses to targeted anticancer therapeutics are frequently confounded by de novo or acquired resistance [9–11]."
(#<confound 2217>)

Relation: #<confound 2217> subj: NIL obj NIL
(51 (P "Identification of resistance mechanisms in a manner that elucidates alternative ‘druggable’ targets may inform effective long-term treatment strategies [12].")) 
Storing #<mechanism 2215>
Storing #<a 98>
Storing #<that 91>
Storing #<strategy 2214>
Storing #<number "12">[identification] of [ resistance mechanisms] in [ a manner] that [ elucidates][ alternative 'druggable']
Storing #<druggable 2408>
sdm-span-segment: #<edge31 10 modifier 14>
[ targets may inform]
sdm-span-segment: #<edge33 14 inform 17>
[ effective long-term treatment strategies]

"IGNORING LIKELY THATCOMP IN SWEEP" 
Storing #<manner 2406>

                    SOURCE-START
e0    IDENTIFY      1 "identification" 2
e44   OF            2 "of resistance mechanisms" 5
e43   IN            5 "in a manner that elucidates alternative ' druggable ' targets may inform effective long - term treatment strategies [ 12 ]" 26
                    PERIOD
                    END-OF-SOURCE

Relations for sent 51: "Identification of resistance mechanisms in a manner that elucidates alternative ‘druggable’ targets may inform effective long-term treatment strategies [12]."
(#<identify 2407>)

Relation: #<identify 2407> subj: NIL obj NIL
(52 (P "Here, we expressed ~600 kinase and kinase-related open reading frames (ORFs) in parallel to functionally interrogate resistance to a selective RAF kinase inhibitor.")) 
Storing #<deictic-location "here" 174>
Storing #<pronoun/first/plural "we" 289>
Storing #<orf 2403>
Storing #<a 98>
Storing #<bio-family "Raf" 900>
Storing #<hyphenated-pair 2402>[here], [ we][ expressed]
Storing #<kinase 2400>[ ~600 kinase]
Storing #<open reading frames 2399> and [ kinase-related open reading frames (orfs)] in [ parallel] to [ functionally interrogate][ resistance]
Storing #<inhibitor 2394> to [ a selective raf kinase inhibitor]
Storing #<kinase collection 2427>

                    SOURCE-START
e0 e1               "here" :: here, DEICTIC-LOCATION
e2                  "COMMA"
e3    PRONOUN/FIRST/PLURAL  3 "we" 4
e53   GENE-TRANSCRIPT-EXPRESS 4 "expressed ~ 600 kinase and kinase - related open reading frames ( orfs )" 18
e17 e18             "in" :: in, IN
e19   PARALLEL      19 "parallel" 20
e52   TO            20 "to functionally interrogate resistance to a selective raf kinase inhibitor" 30
                    PERIOD
                    END-OF-SOURCE

Relations for sent 52: "Here, we expressed ~600 kinase and kinase-related open reading frames (ORFs) in parallel to functionally interrogate resistance to a selective RAF kinase inhibitor."
(#<interrogate 2396> #<gene-transcript-express 2401>)

Relation: #<interrogate 2396> subj: NIL obj NIL
Relation: #<gene-transcript-express 2401> subj: NIL obj NIL
(53 (P "We identified MAP3K8 (COT/TPL2) as a MAPK pathway agonist that drives resistance to RAF inhibition in BRAFV600E cell lines.")) 
Storing #<pronoun/first/plural "we" 289>
Storing #<protein "MAP" 945>
Storing #<number "3">
Storing #<single-capitalized-letter "K">
Storing #<number "8">
Storing #<protein "COT/TPL2" 946>
Storing #<a 98>
Storing #<name-word "MAPK">
Storing #<bio-family "MAPK" 910>
Storing #<that 91>
Storing #<bio-family "Raf" 900>
Storing #<protein "V600EBRAF" 943>
Storing #<cell line 2402>[we][ identified][ map3k8 (cot/tpl2)]
sdm-span-segment: #<edge39 3 digit-sequence 13>
Storing #<agonist 2392> as [ a mapk pathway agonist] that [ drives][ resistance] to [ raf inhibition] in [ brafv600e cell lines]

"IGNORING LIKELY THATCOMP IN SWEEP" 
Storing #<drive 2391>

                    SOURCE-START
e53   IDENTIFY      1 "we identified map 3 k 8 ( cot / tpl 2 )" 13
e51   AS            13 "as a mapk pathway agonist that drives resistance to raf inhibition" 24
e45   IN            24 "in brafv 600 e cell lines" 30
                    PERIOD
                    END-OF-SOURCE

Relations for sent 53: "We identified MAP3K8 (COT/TPL2) as a MAPK pathway agonist that drives resistance to RAF inhibition in BRAFV600E cell lines."
(#<identify 2393>)

Relation: #<identify 2393> subj: #<pronoun/first/plural "we" 289> obj NIL
(54 (P "COT activates ERK primarily through MEK-dependent mechanisms that do not require RAF signaling.")) 
Storing #<protein "cot" 947>
Storing #<bio-family "ERK" 911>
Storing #<bio-family "MEK" 914>
Storing #<mechanism 2388>
Storing #<that 91>
Storing #<bio-family "Raf" 900>
Storing #<dependent 2387>[cot][ activates][ erk][ primarily] through [ mek-dependent mechanisms] that [ do not require]
Storing #<signaling 2381>[ raf signaling]

"IGNORING LIKELY THATCOMP IN SWEEP" 

                    SOURCE-START
e34   BIO-ACTIVATE  1 "cot activates erk primarily through mek - dependent mechanisms that do not require raf signaling" 16
                    PERIOD
                    END-OF-SOURCE

Relations for sent 54: "COT activates ERK primarily through MEK-dependent mechanisms that do not require RAF signaling."
(#<bio-activate 2386>)

Relation: #<bio-activate 2386> subj: #<protein "cot" 947> obj #<bio-family "ERK" 911>
(55 (P "Moreover, COT expression is associated with de novo resistance in BRAFV600E cultured cell lines and acquired resistance in melanoma cells and tissue obtained from relapsing patients following treatment with MEK or RAF inhibition.")) 
Storing #<protein "cot" 947>
Storing #<protein "V600EBRAF" 943>
Storing #<cell line 2382>
Storing #<cell 2380>
Storing #<patient 2379>
Storing #<bio-family "MEK" 914>
Storing #<bio-family "Raf" 900>
Storing #<bio-family collection 2448>[moreover, cot expression]
Storing #<moreover 2377>
sdm-span-segment: #<edge52 1 gene-transcript-express 5>
[ is associated] with [ de novo resistance] in [ brafv600e cultured cell lines] and [ acquired resistance] in [ melanoma cells] and [ tissue][ obtained] from [ relapsing][ patients][ following treatment] with [ mek or raf inhibition]


                    SOURCE-START
e68   ASSOCIATE+ED  1 "moreover , cot expression is associated" 7
e67   WITH          7 "with de novo resistance" 11
e66   IN            11 "in brafv 600 e cultured cell lines" 18
e21 e22             "and" :: and, AND
e57   RESIST        19 "acquired resistance" 21
e65   IN            21 "in melanoma cells" 24
e29 e30             "and" :: and, AND
e31   TISSUE        25 "tissue" 26
e64   OBTAIN        26 "obtained from relapsing patients" 30
e59   TREATMENT     30 "following treatment" 32
e61   WITH          32 "with mek or raf inhibition" 37
                    PERIOD
                    END-OF-SOURCE

Relations for sent 55: "Moreover, COT expression is associated with de novo resistance in BRAFV600E cultured cell lines and acquired resistance in melanoma cells and tissue obtained from relapsing patients following treatment with MEK or RAF inhibition."
(#<obtain 2371> #<resist 2374> #<associate 2376>)

Relation: #<obtain 2371> subj: NIL obj NIL
Relation: #<resist 2374> subj: NIL obj NIL
Relation: #<associate 2376> subj: NIL obj NIL
(56 (P "We further identify combinatorial MAPK pathway inhibition or targeting of COT kinase activity as possible therapeutic strategies for reducing MAPK pathway activation in this setting.")) 
Storing #<pronoun/first/plural "we" 289>
Storing #<name-word "MAPK">
Storing #<bio-family "MAPK" 910>
Storing #<protein "cot" 947>
Storing #<strategy 2367>
Storing #<name-word "MAPK">
Storing #<bio-family "MAPK" 910>
Storing #<this 96>[we][ further][ identify][ combinatorial mapk pathway inhibition or targeting]
Storing #<activity 2364> of [ cot kinase activity] as [ possible therapeutic strategies] for [ reducing][ mapk pathway activation] in [ this setting]


                    SOURCE-START
e0    PRONOUN/FIRST/PLURAL  1 "we" 2
e1    FURTHER       2 "further" 3
e57   IDENTIFY      3 "identify combinatorial mapk pathway inhibition or targeting of cot kinase activity" 14
e54   AS            14 "as possible therapeutic strategies" 18
e53   FOR           18 "for reducing mapk pathway activation" 23
e51   IN            23 "in this setting" 26
                    PERIOD
                    END-OF-SOURCE

Relations for sent 56: "We further identify combinatorial MAPK pathway inhibition or targeting of COT kinase activity as possible therapeutic strategies for reducing MAPK pathway activation in this setting."
(#<reduce 2363> #<identify 2365>)

Relation: #<reduce 2363> subj: NIL obj NIL
Relation: #<identify 2365> subj: NIL obj NIL
(57 (P "Together, these results provide new insights into resistance mechanisms involving the MAPK pathway and articulate an integrative approach through which high-throughput functional screens may inform the development of novel therapeutic strategies.")) 
Storing #<these 95>
Storing #<insight 2359>
Storing #<mechanism 2358>
Storing #<the 100>
Storing #<name-word "MAPK">
Storing #<bio-family "MAPK" 910>
Storing #<an 99>
Storing #<screen 2542>
Storing #<the 100>
Storing #<strategy 2541>
Storing #<throughput 2540>[together,]
Storing #<together 2539>[ these results][ provide][ new insights] into [ resistance mechanisms][ involving][ the mapk pathway] and [ articulate]
Storing #<approach 2533>[ an integrative approach] through which [ high-throughput functional screens][ may inform][ the development] of [ novel therapeutic strategies]


                    SOURCE-START
e47   ADVERB        1 "together ," 3
e48   RESULT        3 "these results" 5
e66   PROVIDE       5 "provide new insights" 8
e65   INTO          8 "into resistance mechanisms" 11
e67   INVOLVE       11 "involving the mapk pathway and articulate an integrative approach" 20
e27   THROUGH       20 "through" 21
e28   WHICH         21 "which" 22
e56   SCREEN        22 "high - throughput functional screens" 27
e62   INFORM        27 "may inform the development" 31
e61   OF            31 "of novel therapeutic strategies" 35
                    PERIOD
                    END-OF-SOURCE

Relations for sent 57: "Together, these results provide new insights into resistance mechanisms involving the MAPK pathway and articulate an integrative approach through which high-throughput functional screens may inform the development of novel therapeutic strategies."
(#<inform 2532> #<involve collection 2546> #<provide 2537> #<result 2538>)

Relation: #<inform 2532> subj: NIL obj NIL
Relation: #<involve collection 2546> subj: NIL obj NIL
Relation: #<provide 2537> subj: NIL obj NIL
Relation: #<result 2538> subj: NIL obj NIL
