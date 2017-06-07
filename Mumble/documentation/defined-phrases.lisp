;; ~/sparser/Mumble/documentation/defined-phrases.lisp
;; 6/7/17

;;---------- preamble ----------

Most of the phrases in Mumble/grammar/phrases.lisp are just
grammatical variations of a much smaller set of 'base' phrases.
This is a hold-over from the original form of Mumble-86,
where we grouped phrases into families. The grammatical
context at the point of realization, as well as features on
the specification would determine which of the alternatives
was 'choosen'.

Today we just want the base cases, and we handled the
variants by applying transformations at runtime, e.g. for
different sorts of relative clauess, WH questions or the
'for - to' variation on agent and patient. ("For all the
phrases to be written out would take way too long.")

We'll do the same for variants that we never explicitly
encoded for families such as reductions under conjunction,
clefts, pseudocleft and anything else we need.

So this list is --just-- the base cases.

;;;-------------------------------------
;;;   phrases spanning whole clauses
;;;-------------------------------------

first-sentence-of-discourse-unit (s) ;; sentence slot (capitalizes, final punct)

first-paragraph-of-discourse-unit (R) ;; paragraph slot

comp-s (wh s) ;; wh in comp slot

response-s (r s) ;; 'r' is in leading-detached-adverbial-phrase slot
 ;; comma inserted after r -- "Ok, I'll come along if I have to"

S-Vocative (sentence vocative)  ;; uses vocative slot and sentence slot
Vocative-S (vocative sentence)

S-Comma-Vocative (sentence comma vocative) ;; comma slot inserts initial comma
Vocative-Comma-S (vocative comma sentence)

if/then (antec conseq) ;; inserts "if" and "then"
if/silent (antec conseq) ;; just the "if"

two-item-conjunction (one two) ;; puts in the "and"
two-item-conjunction-with-conjunction (one conj two) ;; explicit conjunction arg


;;--- dummy subject constructions 
There-be-s-comp (s c) ;; "there <be> [s: 'a cat'] [c: 'on the mat']
There-be-s (s) ;; "there is a cat'


;;;----------------------------------
;;;  np, determiner, quantifier, WH
;;;----------------------------------

bare-np-head (n) ;; no labels on the slot

common-noun (n) ;; common-noun label

proper-name (n)
;; np with additional proper-name label that capitalizes the word

two-element-capitalized-sequence (pn1 pn2) ;; proper names

pronominal-np (p) ;; pronoun slot rather than np-head. Controls attachments

np-just-possessor (n) ;; :additional-labels (possessive-np)

Abstract-np (n) ;; for words marked as abstract-noun

singleton-np (n) ;; has no attachment points

vocative (n) ;; hook for being more than bare-np-head


det-np (d n)
determined-np (d n) ;;/// redundant - flush one of them

number-np (number n)

possessive-np (p n)

of-genitive (n p) ;; QGL&S 5.115, 9.54

partitive (quant n)

NP-head-first-compound-noun (n other) ;; "$10"

percent (amount n)

quantifier-head (n number) ;; quantifier phrase + np-head

qualifier-head (n qualifier)

head-qualifier (n qualifier) ;; ad-hoc for fragments like "60 in January"

numbered-element-of-collection (collection number) ;; "March 31", "track 7", "flight 236"


;;--- determiners and WH

determiner-phrase (d) ;; only  for understanding or fixed phrase

QP (q)  ;; quantifier phrase

QpNpcomop (q np)  ;; e.g. [whp "How many"] [c "rabbits"] /// spelling?


WHP (wh q)  ;; WH phrase -- "What else", "How many"

wh-term (wh q)  ;; almost dedicated to "how" phrases


;;--- digit sequences (handles the "," vs. "." separator, 'k')

digit-sequence/ones (n)

digit-sequence/thousands (k n)

digit-sequence/thousands-point (k n p)



;;;------------------------------------------------
;;;   prepositional, adverbial, adjective phrases
;;;------------------------------------------------

prepositional-phrase (p prep-object)
PP (p prep-object) ;;/// redundant - pick one


Advp (adv)

AdvpIComp (adv c) ;; infinitive complement

AdvpOfComp (adv c) ;; of complement


bare-adj (a) ;; no attachments to the adjective

adjp (a) ;; takes intensifiers, pre/pos adverbs

comparative-adjp (a) ;; takes adjp attachments, plus than-complement

superlative-adjp (a) ;; takes the  adjp attachments

modified-adjp (m a)  ;; "two stories high" 

quantified-adjp (q a)

adj-comp (a c) ;; "(is) able to swim"

adjp-prepcomp (a c) ;; "(is) down in the dumps"

adj-that-comp (a c) ;; "(be) careful ..."

adjective-of-complement (a c) ;; "(is) capable of ..."

X-to-Y (x p y) ;; "heart to heart"



;;;--------------------------
;;;       clauses 
;;;--------------------------

;;;---SV (intransitives, ergatives...?)
SV (s v)  "Fluffy is sleeping"

SV-for-inf  "For him to sleep"


;;;--- S V O  "Fluffy loves balls"   Agent-Patient
SVO (s v o)


;;;--- SVO passives w/o by-phrases - added by hand
SVO-SIMPLE-PASSIVE (s v)

S-V-DO-SIMPLE-PASSIVE (s v do),


;;;---  S V O  "It's mine"
SVPossessive (s v o)


;;;--- SVAdverbial  --- S V Adv
SVADV (s v a)

SVadv-obj-rel (wh s v a) --  "how far he ran"


;;;--- S V Particle "the plane took off"
SVP (s v p)


;;;--- S V 0 Particle"    
SVPO (s v p o)  ;; "Milfred blew up the truck"
SVOP (s v p o)  ;; "Milfred blew the truck u


;;;--- S V P O  "Mustard is used in lots of salads"
SVPrepO (s v p o)


;;;--- two objects: S V O1 O2 

SVO1O2 (s v o1 o2)  ;; "... call him an intruder"

SVO-ADJ (s v o adj) ;; "... make the shirt purple"

S-V-IO-DO (s v do io)

S-V-DO-ForIO (s v do io) ;;--- S V DO FOR dative
 
S-V-ForIO-SIMPLE-PASSIVE (s v io) ;; "the book was bought for peter"

S-V-DO-ToIO (s v do io)

S-V-ToIO-SIMPLE-PASSIVE (s v io) ;; "the book was bought To peter"


;;;--- two objects and a preposition
;;--- S V P O1 O2  "(What) we like about him (is) his panache"
;;  verb-bound preposition
SVPO1O2 (s v p o1 o2)

;--- S V O1 P O2  "trade a Donald Duck for an Archie"
SVO1PO2 (s v o1 p o2)


S-V-DO-ToIO (s v do io) ;; to-dative, e.g. "give"


;;;--- complements (various labels for comp slot)

SVBeComp (s v c)  ;; "seems"
SVInvertedBeComp (c v s)
SVFrontedBeComp (c s v)  ;; Yoda-speak

S-be-COMP (s c) ;; burned-in verb "be"

SVICOMP (s v c) ;; equi ("want" "expect" "promise") "I want to come too"

SVPComp (s v p c) ;; "it seems like you're happy"

SVOICOMP (s v o c) ;; "I told you to come in"

SVOICOMP-simple-passive (s v c) ;; "you were told to come in"

SVOC (s v o c) ;; "We let him play with the ducks" -- not 'to' inf.

SVOPComp/ing (s v o p c) ;; S V {O} Prep Comp/ing: "You keep him from coming"

SVPComp/ing (s v p c) ;; no object:  "She talked about skiing in Austria"

SVIngcomp (s v c)  ;; S V I (participial complement):

SVVPCOMP (s v c)

SVPCOMP (s v pr probj)

SVOPCOMP (s v o p prep-object)

SVOPCOMP-SIMPLE-PASSIVE  (s v pr probj) ;; incororates the 'be'

SVSCOMP (s v c) ;; sentential 'that' complement
SVSCOMP_no-that (s v c)

SVOSCOMP (s v o c) ;; e.g. "tell"

SVVPCOMP (s v c) ;; "fluffy likes watching movies/to watch movies"


;;--- compounded for an idiom - not kocher TAG because crossed boundary
 SVO_posssessive-head (s v poss h) ;; "I like your style"


;;;--------------------------
;;;      verb phrases
;;;--------------------------

;;-- for different chunking
subj-pred (s vp)


V (v)
VP-no-args ( v ) ;; redundant unless we change the slot label

VPrt (v p) ;; particle or owned preposition

VAdvp (v adv)

VO (v o) ;; verb is marked to be a gerund

VOAdv (v o adv) ;; "See you later"

VOPrt (v o p) ;; particle after object

VPrepO (v p o) ;; preposition ("up") before object

VPrepcomp (v pp)

VPrtPrepcomp (v p pp) ;; partical followed by pp

VP-O-pcomp (v o p prep-object)

VIcomp (v c) ;; inf-comp slot: "seems to be bad", "wants to play"

VP-scomp (v c) ;; scomp slot

Vvpcomp (v vp) ;; vpcomp slot

;;/// there are hyphenated variants of many of these: identical execept
;; for the spelling

vp-adjective-phrase (v a) ;; predicate-adjective slot

VP-O-pcomp (v o p prep-object)

VP-o-icomp (v o c) ;; infinitive complement

VP-participial-comp (v c) ;; vpcomp marked to be participle
