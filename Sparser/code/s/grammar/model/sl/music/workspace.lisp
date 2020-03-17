;; 4/17/19

(in-package :sparser)

;; From 4/17/18 telcon notes
Clay: "give me 4 more measures like that"
"move the G"

;; 5/7/18
"measures one through three"
"transpose the C up one half step"



;; The original sentence list, with this parameter, is at
;; clic/notes/museci/sentences.lisp. Load the file to
;; bind *museci-sentences*. The test routine is more generic
;; than it's name suggests. 

sp> (test-bio-utterances  *museci-sentences*)


___________________
0: "Delete everything before beat 2 of measure 1."

                    source-start
e17   DELETE        1 "Delete everything before beat 2 of measure 1" 9
                    period
                    end-of-source
(#<delete 3794>
 (theme
  (#<subseq-up-to 3793>
   (quantifier (#<indefinite-pronoun "everything" 663> (word "everything")))
   (index (#<ordinal  543> (number 2)))
   (reference-sequence
    (#<measure 3781> (position (#<ordinal  540> (number 1)))))
   (type #<ref-category BEAT>)))
 (present #<ref-category PRESENT>))

___________________
1: "Delete everything below C4."
[Delete ]everything below [C4]
Method: below (i1930) & note (i4171)

                    source-start
e9    DELETE        1 "Delete everything below C4" 6
                    period
                    end-of-source
:done-printing
sp> (semtree 9)
(#<delete 4176>
 (theme
  (#<below 4175>
   (quantifier (#<indefinite-pronoun "everything" 927> (word "everything")))
   (ground
    (#<pitch-class 4171> (number 4) (note (#<note "C" 4147> (name "C")))))
   (word "below")))
 (present #<ref-category PRESENT>))
sp> (stree 9)
 e9 delete/vp                 p1 - p6   rule 793
  e0 delete/vg                p1 - p2   rule 3517
    "delete"
  e8 below/np                 p2 - p6   rule 448
    e2 indefinite-pronoun/indef-pronoun   p2 - p3   rule 2028
      "everything"
    e7 below/pp               p3 - p6   rule 1103
      e3 below/preposition    p3 - p4   rule 2834
        "below"
      e6 pitch-class/np       p4 - p6   create-pitch-class
        e1 note/common-noun   p4 - p5   rule 4848
          "C"
        e5 number/number      p5 - p6   number-fsa
          e4 digit-sequence/number    p5 - p6   rule 1586
            "4"

If we want a set of notes (see the 'below' method), then we
should also work up the "everything" in a serious way.

sp> (irr 448)
referent: (funcall indefinite-pn/np left-referent right-referent)
#<PSR-448 np → {indef-pronoun pp}>
The principal handling of 'everything' is in quantifier-noun-compound
where the present move is to treat the pronoun/quantifier as though it
was a determiner and stash it like we have here.

sp> (de 2)
category: #<ref-category INDEFINITE-PRONOUN>
form: #<ref-category INDEF-PRONOUN>
rule: #<PSR-2028 indefinite-pronoun → "everything">
referent: #<indefinite-pronoun "everything" 927>

Looks like indefinite pronouns are individuals rather than classes
like the preposition are, so we can't write methods on them directly.
Changing that is a SMOP ('simple matter of programming') though,
provided we were careful about chasing down the fanout.
They should fall into super-classes ('everything' vs. 'nothing')
that could be interesting to model.

___________________
2: "Delete everything between beats 1 and 3"

                    source-start
e13   DELETE        1 "Delete everything between beats 1 and 3" 8
                    end-of-source
(#<delete 3803>
 (theme
  (#<subseq-both-ends 3802>
   (quantifier (#<indefinite-pronoun "everything" 663> (word "everything")))
   (end-index (#<ordinal  546> (number 3)))
   (index (#<ordinal  540> (number 1)))
   (reference-sequence (#<sequence 3766> (type #<ref-category BEAT>)))
   (type #<ref-category BEAT>)))
 (present #<ref-category PRESENT>))

___________________
3: "Delete everything between C4 and G4"

                    source-start
e0    DELETE        1 "Delete " 2
e14   BETWEEN       2 "everything between C4 and G4" 9
                    end-of-source

                    source-start
e0    VG            1 "Delete " 2
e14   NP            2 "everything between C4 and G4" 9
                    end-of-source


___________________
4: "Delete the E between C4 and G4"

                    source-start
e0    DELETE        1 "Delete " 2
e18   SINGLE-CAPITALIZED-LETTER 2 "the E between C4 and G4" 10
                    end-of-source

                    source-start
e0    VG            1 "Delete " 2
e18   NP            2 "the E between C4 and G4" 10
                    end-of-source


___________________
5: "Delete the third from the last note"

                    source-start
e0    DELETE        1 "Delete " 2
e15   THE           2 "the third from the last note" 8
                    end-of-source

                    source-start
e0    VG            1 "Delete " 2
e15   NP            2 "the third from the last note" 8
                    end-of-source


___________________
6: "insert an F4 whole note on beat 1 of measure 3"

                    source-start
e1    INSERT        1 "insert " 2
e28   NOTE          2 "an F4 whole note on beat 1 of measure 3" 13
                    end-of-source

                    source-start
e1    VG            1 "insert " 2
e28   NP            2 "an F4 whole note on beat 1 of measure 3" 13
                    end-of-source


___________________
7: "invert all the notes around G4"

                    source-start
e13   INVERT        1 "invert all the notes " 5
e12   TWO-PART-LABEL  5 "around G4" 8
                    end-of-source

                    source-start
e13   VP            1 "invert all the notes " 5
e12   NP            5 "around G4" 8
                    end-of-source


___________________
8: "Invert everything between beat 1 of measure 3 and beat 4 of measure 5."

                    source-start
e0    INVERT        1 "Invert " 2
e30   BETWEEN       2 "everything between beat 1 of measure 3 and beat 4 of measure 5" 15
                    period
                    end-of-source

                    source-start
e0    VG            1 "Invert " 2
e30   NP            2 "everything between beat 1 of measure 3 and beat 4 of measure 5" 15
                    period
                    end-of-source


___________________
9: "Move all the notes in measure 2 down 1 octave."

                    source-start
e23   MOVE-SOMETHING-SOMEWHERE  1 "Move all the notes in measure 2 down 1 octave" 11
                    period
                    end-of-source
(#<move-something-somewhere 3877>
 (theme
  (#<note plural 3876>
   (modifier
    (#<measure 3872> (modifier (#<octave 3868> (number 1)))
     (position (#<ordinal  543> (number 2)))))
   (quantifier (#<all 353> (word "all")))
   (has-determiner (#<the 106> (word "the")))))
 (present #<ref-category PRESENT>))

___________________
10: "Put a C in the rest."

                    source-start
e0 e1               "put" :: PUT-SOMETHING-SOMEWHERE, PUT-SOMETHING-SOMEWHERE
e13   SINGLE-CAPITALIZED-LETTER 2 "a C in the rest" 7
                    period
                    end-of-source

                    source-start
e0 e1               "put" :: PUT-SOMETHING-SOMEWHERE, PUT-SOMETHING-SOMEWHERE
e13   NP            2 "a C in the rest" 7
                    period
                    end-of-source


___________________
11: "Put a C on top of the E."

                    source-start
e0 e1               "put" :: PUT-SOMETHING-SOMEWHERE, PUT-SOMETHING-SOMEWHERE
e18   SINGLE-CAPITALIZED-LETTER 2 "a C on top of the E." 10
                    end-of-source

                    source-start
e0 e1               "put" :: PUT-SOMETHING-SOMEWHERE, PUT-SOMETHING-SOMEWHERE
e18   NP            2 "a C on top of the E." 10
                    end-of-source


___________________
12: "Put a C where the rest is."

                    source-start
e0 e1               "put" :: PUT-SOMETHING-SOMEWHERE, PUT-SOMETHING-SOMEWHERE
e10   SINGLE-CAPITALIZED-LETTER 2 "a C " 4
e5    WHERE         4 "where " 5
e11   REST          5 "the rest " 7
e9    BE            7 "is" 8
                    period
                    end-of-source

                    source-start
e0 e1               "put" :: PUT-SOMETHING-SOMEWHERE, PUT-SOMETHING-SOMEWHERE
e10   NP            2 "a C " 4
e5    WH-PRONOUN    4 "where " 5
e11   NP            5 "the rest " 7
e9    VG            7 "is" 8
                    period
                    end-of-source


___________________
13: "reverse all the notes in measures 1 through 4"

                    source-start
e18   REVERSE       1 "reverse all the notes in measures 1 " 8
e20   THROUGH       8 "through 4" 10
                    end-of-source

                    source-start
e18   VP            1 "reverse all the notes in measures 1 " 8
e20   PP            8 "through 4" 10
                    end-of-source


___________________
14: "reverse everything between the C in measure 1 and the E in measure 2"

                    source-start
e3    REVERSE       1 "reverse " 2
e31   BETWEEN       2 "everything between the C in measure 1 and the E in measure 2" 15
                    end-of-source

                    source-start
e3    VG            1 "reverse " 2
e31   NP            2 "everything between the C in measure 1 and the E in measure 2" 15
                    end-of-source


___________________
15: "Reverse measures 2 through 4"

                    source-start
e7    REVERSE       1 "Reverse measures " 3
e11   NUMBER        3 "2 through 4" 6
                    end-of-source

                    source-start
e7    VP            1 "Reverse measures " 3
e11   NP            3 "2 through 4" 6
                    end-of-source


___________________
16: "Reverse the first and last notes"

                    source-start
e0    REVERSE       1 "Reverse " 2
e10   THE           2 "the first and last notes" 7
                    end-of-source

                    source-start
e0    VG            1 "Reverse " 2
e10   NP            2 "the first and last notes" 7
                    end-of-source


___________________
17: "reverse the notes from beats 1 through 3 in measure 2"

                    source-start
e23   REVERSE       1 "reverse the notes from beats 1 " 7
e26   THROUGH       7 "through 3 in measure 2" 12
                    end-of-source

                    source-start
e23   VP            1 "reverse the notes from beats 1 " 7
e26   PP            7 "through 3 in measure 2" 12
                    end-of-source


___________________
18: "transpose the note on beat 3.5 of measure 5 down 1 half step"

                    source-start
e32   TRANSPOSE     1 "transpose the note on beat 3.5 of measure 5 down 1 half step" 16
                    end-of-source
(#<transpose 3945>
 (theme
  (#<note 3944>
   (modifier
    (#<beat 3942>
     (sequence
      (#<measure 3938>
       (modifier (#<step 3936> (number 1) (modifier (#<half  3929>))))
       (position (#<ordinal  552> (number 5)))))
     (position (#<ordinal  3940> (number 3.5)))))
   (has-determiner (#<the 106> (word "the")))))
 (present #<ref-category PRESENT>))

___________________
19: "Where are the Es?"

                    source-start
e1    WHERE         1 "Where " 2
e6    BE            2 "are the Es" 5
                    question-mark
                    end-of-source

                    source-start
e1    WH-PRONOUN    1 "Where " 2
e6    VP            2 "are the Es" 5
                    question-mark
                    end-of-source


___________________
20: "Work on measures 1 and 2"

                    source-start
e11   WORK-ON       1 "Work on measures " 4
e12   NUMBER        4 "1 and 2" 7
                    end-of-source

                    source-start
e11   VP            1 "Work on measures " 4
e12   NP            4 "1 and 2" 7
                    end-of-source


___________________
21: "Work on measures 1 through 5"

                    source-start
e10   WORK-ON       1 "Work on measures " 4
e14   NUMBER        4 "1 through 5" 7
                    end-of-source

                    source-start
e10   VP            1 "Work on measures " 4
e14   NP            4 "1 through 5" 7
                    end-of-source
21 sentences in *list-of-bio-utterances*
nil
sp> 
