

___________________
1: "What genes does mir-128 regulate?" ;; bio-entity causes failure

                    SOURCE-START
e6    GENE          1 "What genes " 3
e4    DO            3 "does " 4
e1    BIO-ENTITY    4 "mir-128 " 7
e7    REGULATE      7 "regulate" 8
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
7: "What are the genes that have strong evidence of being regulated by mir-122-5p?" ;;  fixed evidence definition to allow of, although for
also doesn't work and after of was fixed it still didn't work either

                    SOURCE-START
e2    WHAT          1 "What " 2
e3    BE            2 "are " 3
e27   GENE          3 "the genes that have strong evidence " 9
e24   OF            9 "of being regulated by mir-122-5p" 19
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
28: "What is another name for BRAF?" ;; for some reason "another name for BRAF" isn't composing to "has-name" and "what is" isn't attaching

                    SOURCE-START
e0    WHAT          1 "What " 2
e1    BE            2 "is " 3
e10   NAME          3 "another name " 5
e9    FOR           5 "for BRAF" 7
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
29: "What is another name for MAP2K1?" ;; for some reason "another name for BRAF" isn't composing to "has-name" and "what is" isn't attaching

                    SOURCE-START
e2    WHAT          1 "What " 2
e3    BE            2 "is " 3
e11   NAME          3 "another name " 5
e10   FOR           5 "for MAP2K1" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
45: "What genes are regulated by SMDA2?" ;; bio-entity causes failure

                    SOURCE-START
e12   REGULATE      1 "What genes are regulated " 5
e10   BY            5 "by SMDA2" 8
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
49: "Which of these are regulated by SMDA2?" ;; bio-entity causes failure

                    SOURCE-START
e10   WHICH         1 "Which of " 3
e13   REGULATE      3 "these are regulated " 6
e12   BY            6 "by SMDA2" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
70: "What STAT3 regulated genes are involved in aptosis" ;; bio-entity causes failure

                    SOURCE-START
e16   INVOLVE       1 "What STAT3 regulated genes are involved " 8
e15   IN            8 "in aptosis" 10
                    END-OF-SOURCE


___________________
73: "Look up which genes targeted by stat3 are involved in apoptosis" ;; particle problem

                    SOURCE-START
e2    LOOK          1 "Look " 2
e24   UP            2 "up which " 4
e23   INVOLVE       4 "genes targeted by stat3 are involved in apoptosis" 13
                    END-OF-SOURCE


___________________
82: "What processes involve srf" ;; not sure why this doesn't compose

                    SOURCE-START
e5    PROCESS       1 "What processes " 3
e6    INVOLVE       3 "involve srf" 5
                    END-OF-SOURCE


___________________
85: "Which stat3-regulated genes are involved in apoptosis?" ;; not sure why this doesn't compose when "which genes are involved in apoptosis" works fine

                    SOURCE-START
e14   GENE          1 "Which stat3-regulated genes " 7
e6    BE            7 "are " 8
e17   INVOLVE       8 "involved in apoptosis" 11
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
89: "revert that" ;; not sure why this doesn't compose

                    SOURCE-START
e0    REVERT        1 "revert " 2
e2    THAT          2 "that" 3
                    END-OF-SOURCE


___________________
93: "undo that" ;; not sure why this doesn't compose

                    SOURCE-START
e0    UNDO          1 "undo " 2
e2    THAT          2 "that" 3
                    END-OF-SOURCE


___________________
106: "Let's highlight the downstream of AKT1." ;; let's problem and probably downstream

                    SOURCE-START
e1    PROPOSAL-MARKER 1 "Let's " 4
e5    HIGHLIGHT-ENDURANT  4 "highlight " 5
e7    THE           5 "the " 6
e12   DOWNSTREAM    6 "downstream of AKT1" 10
                    PERIOD
                    END-OF-SOURCE


___________________
107: "Let's move phosphorylated MAPK1 to the bottom." ;; let's problem also "to the bottom"

                    SOURCE-START
e1    PROPOSAL-MARKER 1 "Let's " 4
e4    MOVE-SOMETHING-SOMEWHERE  4 "move " 5
e11   PROTEIN       5 "phosphorylated MAPK1 " 8
e14   TO            8 "to the bottom" 11
                    PERIOD
                    END-OF-SOURCE


___________________
108: "Let's put AKT1, MAPK1 into mitochondrion." ;; let's problem

                    SOURCE-START
e1    PROPOSAL-MARKER 1 "Let's " 4
e11   PROTEIN       4 "put AKT1" 7
e8                  "COMMA"
e5    PROTEIN       8 "MAPK1 " 10
e13   INTO          10 "into mitochondrion" 12
                    PERIOD
                    END-OF-SOURCE


___________________
109: "Let's show AKT1 on the top." ;; preposition/model problem

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "Let's show AKT1 " 7
e12   ON            7 "on the top" 10
                    PERIOD
                    END-OF-SOURCE


___________________
110: "Does ELK1 decrease FOS in the model?" ;; this works without "in the model"

                    SOURCE-START
e2    DO            1 "Does " 2
e15   DECREASE      2 "ELK1 decrease FOS " 6
e13   IN            6 "in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
111: "Does ELK1 decrease the amount of FOS in the model?" ;; this works without "in the model"

                    SOURCE-START
e2    DO            1 "Does " 2
e23   DECREASE      2 "ELK1 decrease the amount of FOS " 9
e19   IN            9 "in the model" 12
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
112: "Does FOS decrease ELK1 in the model?" ;; this works without "in the model"

                    SOURCE-START
e2    DO            1 "Does " 2
e15   DECREASE      2 "FOS decrease ELK1 " 6
e13   IN            6 "in the model" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
124: "Is phosphorylated MAPK1 high at the end?" ;; this works without "at the end"

                    SOURCE-START
e2    BE            1 "Is " 2
e15   COPULAR-PREDICATION 2 "phosphorylated MAPK1 high " 6
e13   AT            6 "at the end" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
135: "Is the amount of MAPK1 phosphorylated eventually high?" ;; this feels garden-pathy to me

                    SOURCE-START
e2    BE            1 "Is " 2
e15   BIO-AMOUNT    2 "the amount of MAPK1 " 7
e12   PHOSPHORYLATE 7 "phosphorylated " 8
e13   HIGH          8 "eventually high" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
149: "Create a model where LCK phosphorylates CD3E" ;; create doesn't work

                    SOURCE-START
e2    CREATE        1 "Create " 2
e13   MODEL         2 "a model where LCK phosphorylates CD3E" 10
                    END-OF-SOURCE


___________________
187: "Is the first one a kinase" ;; fails because of "first one" -- also fails for "that" but works for is "MAPK"

                    SOURCE-START
e0    BE            1 "Is " 2
e11   NUMBER        2 "the first one " 5
e12   KINASE        5 "a kinase" 7
                    END-OF-SOURCE


___________________
192: "Let me know which genes stat3 regulates" ;; not sure of the problem -- can't really get any variant of this to work -- "let me know if" questions work, but I think the problem is that which is getting treated as a complementizer instead of a determiner here

                    SOURCE-START
e12   LET           1 "Let me know which genes " 6
e9    REGULATE      6 "stat3 regulates" 9
                    END-OF-SOURCE


___________________
208: "Let's build a model" ;; let problem

                    SOURCE-START
e1    PROPOSAL-MARKER 1 "Let's " 4
e2    BUILD         4 "build " 5
e6    MODEL         5 "a model" 7
                    END-OF-SOURCE


___________________
241: "What are the regulators of mapk14 in bladeeer" ;; bio-entity causes failure

                    SOURCE-START
e2    WHAT          1 "What " 2
e3    BE            2 "are " 3
e15   REGULATOR     3 "the regulators of mapk14 " 8
e13   IN            8 "in bladeeer" 10
                    END-OF-SOURCE


___________________
244: "What are the transcription factors in common to the SRF, HRAS, and elk1 genes?" ;; what be copular-pred doesn't work

                    SOURCE-START
e6    WHAT          1 "What " 2
e7    BE            2 "are " 3
e27   COPULAR-PREDICATION 3 "the transcription factors in common to the SRF, HRAS, and elk1 genes" 18
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
257: "What drug could I use to target pancreatic cancer?" ;; modal problem?

                    SOURCE-START
e15   DRUG          1 "What drug " 3
e4    MODAL         3 "could " 4
e20   BIO-USE       4 "I use to target pancreatic cancer" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
272: "What genes are regulated by FAKEPRTN" ;; bio-entity

                    SOURCE-START
e11   REGULATE      1 "What genes are regulated " 5
e9    BY            5 "by FAKEPRTN" 7
                    END-OF-SOURCE


___________________
274: "What genes are regulated by smda2" ;; bio-entity

                    SOURCE-START
e12   REGULATE      1 "What genes are regulated " 5
e10   BY            5 "by smda2" 8
                    END-OF-SOURCE


___________________
286: "What genes in the liver does stat3 regulate?" ;; in the liver causes problem

                    SOURCE-START
e15   GENE          1 "What genes in the liver " 6
e9    DO            6 "does " 7
e13   REGULATE      7 "stat3 regulate" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
317: "What pathways utilize srf and is srf a kinase" ;; complicated dual question

                    SOURCE-START
e15   UTILIZE       1 "What pathways utilize srf and is srf " 8
e11   KINASE        8 "a kinase" 10
                    END-OF-SOURCE


___________________
355: "Which also regulate srf" ;; lack of noun for which causes problem ("which genes" or "which of these" works

                    SOURCE-START
e5    ALSO          1 "Which also " 3
e6    REGULATE      3 "regulate srf" 5
                    END-OF-SOURCE


___________________
372: "Which of these are regulated by fakeprotein" ;; bio-entity

                    SOURCE-START
e9    WHICH         1 "Which of " 3
e12   REGULATE      3 "these are regulated " 6
e11   BY            6 "by fakeprotein" 8
                    END-OF-SOURCE


___________________
387: "Let's move AKT1 on top." ;; let and on top

                    SOURCE-START
e1    PROPOSAL-MARKER 1 "Let's " 4
e4    MOVE-SOMETHING-SOMEWHERE  4 "move " 5
e3    PROTEIN       5 "AKT1 " 7
e9    ON            7 "on top" 9
                    PERIOD
                    END-OF-SOURCE


___________________
388: "Let's show the phosphorylated AKT1 on top." ;; on top causes problem

                    SOURCE-START
e17   EXPLICIT-SUGGESTION 1 "Let's show the phosphorylated AKT1 " 9
e15   ON            9 "on top" 11
                    PERIOD
                    END-OF-SOURCE


___________________
393: "Show phosphorylated akt1 on top.";; on top causes problem

                    SOURCE-START
e11   SHOW          1 "Show phosphorylated akt1 " 5
e10   ON            5 "on top" 7
                    PERIOD
                    END-OF-SOURCE


___________________
396: "What is the path from RAF to MEK?" ;; needing to define path

                    SOURCE-START
e0    WHAT          1 "What " 2
e1    BE            2 "is " 3
e10   PATH          3 "the path " 5
e12   FROM          5 "from RAF " 7
e11   TO            7 "to MEK" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
397: "What tissues can I ask about?" ;; about conflict

                    SOURCE-START
e10   TISSUE        1 "What tissues " 3
e2    MODAL         3 "can " 4
e12   ASK           4 "I ask " 6
e8 e9               "about" :: ABOUT, ABOUT
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
398: "let's show phosphorylated akt1 on top." ;; on top problem

                    SOURCE-START
e14   EXPLICIT-SUGGESTION 1 "let's show phosphorylated akt1 " 8
e12   ON            8 "on top" 10
                    PERIOD
                    END-OF-SOURCE


___________________
406: "Are there any genes stat3 is upstream of?" ;; stranded prep

                    SOURCE-START
e12   THERE-EXISTS  1 "Are there " 3
e16   COPULAR-PREDICATION 3 "any genes stat3 is upstream " 9
e11   OF            9 "of" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
409: "Can you find any apoptotic pathways stat3 is involved in?" ;; stranded prep

                    SOURCE-START
e2    MODAL         1 "Can " 2
e19   BIO-FIND      2 "you find any apoptotic pathways stat3 " 9
e17   INVOLVE       9 "is involved " 11
e12   IN            11 "in" 12
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
410: "Can you find any apoptotic pathways that stat3 is involved in?" ;;stranded prep

                    SOURCE-START
e2    MODAL         1 "Can " 2
e24   BIO-FIND      2 "you find any apoptotic pathways that stat3 is involved " 12
e14   IN            12 "in" 13
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
411: "Can you look up which genes targeted by stat3 are involved in apoptosis?" ;; "up" particle plus unhandled polar-copular question

                    SOURCE-START
e2    MODAL         1 "Can " 2
e28   LOOK          2 "you look " 4
e27   UP            4 "up which " 6
e26   INVOLVE       6 "genes targeted by stat3 are involved in apoptosis" 15
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
435: "How does knocking out p53 cause cancer via its effect on miRNAs?" ;; particle for knocking out, plus how problem

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
458: "List the genes STAT3 regulates" ;; lack of that kills this

                    SOURCE-START
e9    LIST          1 "List the genes " 4
e8    REGULATE      4 "STAT3 regulates" 7
                    END-OF-SOURCE


___________________
460: "List the genes which STAT3 regulates" ;; lack of that kills this

                    SOURCE-START
e11   LIST          1 "List the genes " 4
e10   REGULATE      4 "which STAT3 regulates" 8
                    END-OF-SOURCE


___________________
480: "What are the genes regulated by STAT3?" ;; for some reason "the genes regulated by STAT3" is being taken as a regulate instead of a gene, even though "the genes regulated by STAT3" parsed alone is an np

                    SOURCE-START
e2    WHAT          1 "What " 2
e3    BE            2 "are " 3
e14   REGULATE      3 "the genes regulated by STAT3" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
486: "What pathways are they in?" ;; stranded preposition

                    SOURCE-START
e6    PATHWAY       1 "What pathways " 3
e2    BE            3 "are " 4
e3    PRONOUN/PLURAL  4 "they " 5
e5    IN            5 "in" 6
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
487: "What pathways involve SOARING?" ;; why is this in failures? it should fail, but still

                    SOURCE-START
e6    INVOLVE       1 "What pathways involve SOARING" 5
                    QUESTION-MARK
                    END-OF-SOURCE
("What pathways involve SOARING?"
 (:VAR MV5926 :ISA INVOLVE :PARTICIPANT MV5925 :THEME MV5927 :PRESENT
  "PRESENT")
 (:VAR MV5925 :ISA PATHWAY :HAS-DETERMINER "WHAT" :RAW-TEXT "pathways")
 (:VAR MV5927 :ISA SOAR :PROGRESSIVE "PROGRESSIVE" :RAW-TEXT "SOARING"))

___________________
491: "What questions can you answer about microRNAs?" ;; modal and more?

                    SOURCE-START
e0    WHAT          1 "What " 2
e2    BIO-QUESTION  2 "questions " 3
e3    MODAL         3 "can " 4
e11   ANSWER        4 "you answer " 6
e10   ABOUT         6 "about microRNAs" 8
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
507: "Let's build a model of the KRAS neighborhood." ;; let problem

                    SOURCE-START
e1    PROPOSAL-MARKER 1 "Let's " 4
e2    BUILD         4 "build " 5
e12   MODEL         5 "a model " 7
e15   OF            7 "of the KRAS neighborhood" 11
                    PERIOD
                    END-OF-SOURCE


___________________
509: "Let's build a model." ;; let problem

                    SOURCE-START
e1    PROPOSAL-MARKER 1 "Let's " 4
e2    BUILD         4 "build " 5
e6    MODEL         5 "a model" 7
                    PERIOD
                    END-OF-SOURCE


___________________
527: "What transcription factors are in the calcium regulated pathways?" ;; problem with calcium regulated vs. calcium-regulated

                    SOURCE-START
e16   COPULAR-PREDICATION 1 "What transcription factors are in the calcium " 8
e13   REGULATE      8 "regulated " 9
e10   PATHWAY       9 "pathways" 10
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
565: "What regulates GLUL from the literature?" ;; evidence problem

                    SOURCE-START
e0    WHAT          1 "What " 2
e9    REGULATE      2 "regulates GLUL " 4
e8    FROM          4 "from the literature" 7
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
566: "What regulates GLUL from the GEO RNAi database?" ;; evidence problem

                    SOURCE-START
e0    WHAT          1 "What " 2
e13   REGULATE      2 "regulates GLUL " 4
e12   FROM          4 "from the GEO RNAi database" 9
                    QUESTION-MARK
                    END-OF-SOURCE


___________________
572: "Show me the evidence that KRAS decreasse the amount of FZD8." ;; bio-entity

                    SOURCE-START
e22   SHOW          1 "Show me the evidence " 5
e8    THAT          5 "that " 6
e17   BIO-ENTITY    6 "KRAS decreasse " 8
e20   BIO-AMOUNT    8 "the amount of FZD8" 13
                    PERIOD
                    END-OF-SOURCE
