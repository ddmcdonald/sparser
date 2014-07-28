Notes on writing model-backed grammars/lexicons for Sparser
Last modified: June 3d, 2014, ddm
-----------------------------------

Contents
 -- Introduction
 -- Definition as individuals
 -- "Short cuts"
 -- Definitions as categories
 -- define-function-term

----------------------
Introduction

The easiest way to understand how to define a word is to look at
examples. The function words are in /grammar/rules/words/ in different
files by their type (conjunction, determiner, etc.). 

If you don't know how you want to categorize a new closed-class word
or are undecided, then you can give it a minimal definition like this 
one from the aux-verb.lisp file.

  (define-function-word  "will" :brackets '( ].verb .[modal ))

When you meta-. on define-function-word you will see that it converts
the string to a word object, sets it up its rule-set, and assigns
its brackets. How brackets are used to delimit phrases is too large
a topic to cover here, but the basic story for individual words is
simple. This definition says that any ongoing phrase should end if
the next word is "will" because it is a verb. It contributes a phrase 
ending bracket -- ] -- on the position just before "will", the dot in the
bracket ( ]. ) stands for the position -- the bracket label (verb) is
on the position of the word. The .[modal bracket says that we can
start a new phrase ("segment") at the position just before the "will" 
and record that the first word in this phrase is a modal. 

One thing in particular that define-function-word does not do is to
create a referent for the word. If the word is given in a literal
in some rule, the value in the referent field will be the word itself.
(See define-function-term below for the equivalent operation that
does provide a proper referent for the word.)


This minimal definition of the auxiliaries is complemented by the rules
and definitions in files in grammar/rules/syntax/ (e.g. have, be, modals).
These setups usually define a category to be the words' referent, and
then use free-form rule definitions. Here are examples from be.lisp.

(define-category  be
  :instantiates  self
  :specializes   event
  :index (:temporary :list))

(def-cfr be ("am")
  :form verb
  :referent be )

(def-form-rule (be verb+ing)
  :form verb
  :referent (:head right-edge
             :subtype progressive))


---------------------------
Definitions as Individuals

Most of the vocabulary for the core of Sparser's model corresponds to
instances of categories (which are called individuals in Sparser's KRISP 
knowledge representation system). The categories are in one of the files
in grammar/model/core/. The words themselves -- the instances -- are in
one of the files in grammar/model/dossiers/. Here is an example for
seasons of the year from model/core/time/seasons.lisp

(define-category  season
  :specializes time
  :instantiates self
  :rule-label time ;;rule-label time sets the syntactic label as "time"
  :binds ((name :primitive word)
          (abbreviation :primitive word) ;; really? I'm skeptical
          (position-in-year . ordinal))
  :index (:permanent :key name)
  :realization (:common-noun name ))

The key thing to note here is that their realization is specified to be
a common noun. That is to say that when an individual season is created,
the string that is used will be given the brackets that go with
ordinary nouns. It will also have two rules created that rewrite the
singular and plural words as 'season', with that particular season
as their referent. Here is one of the definitions from the seasons.lisp 
file in model/dossiers/ followed by the piece of code that handles the
additional information. 

(define-season "summer" 1)

(defun define-season (string integer)
  ;; The define-or-find does the conversion of the string
  ;; into a word and creates the two rules that go with
  ;; being a common noun (i.e. singular and plural forms)
  ;; with the season individual as their referent
  (let ((season (define-or-find-individual
                    'season :name string))
        (ordinal (nth-ordinal integer)))
    (bind-variable 'position-in-year ordinal season)       
    season ))

The realization specification on the category is consulted in the call to 
define-or-find-individual. ("define-or-find" because it retrieves the existing
season individual if it was already defined rather than make another one.)

The special handling in define-season is because we want to look up the
ordinal that goes with that number (itself an individual) and store that
in the position-in-year of the new season individual rather than storing
the number. As a rule, objects are always more versatile than literals like
strings or numbers. 

-------------------
Using "Short cuts"

That was the 'long form' of creating an instance of a category and linking
it to a word or words. It takes a while to type in, and remembering the
syntax and options to define-category and realization specifications is
tedious. Fortunately, standard versions of these long forms are gradually
getting packaged as 'short cuts' -- functions that create the category
and realization for you. There are not enough of them yet, and they need
refinement, but it will only get better. The set of generic short cuts
that we presently have is in grammar/rules/tree-families/short-cuts.lisp.
The verb-based short cuts are good. The noun-based ones need more thought.
They let us do things like this, which condenses about 50 lines down to
two.

;; "IKKα induces p100 processing"
(svo/nominal/adjective "induce" "induction" "inducible"
                       :subject 'bio-entity :theme 'event)


--------------------------
Definitions as categories

As a rule, head nouns denote instances of a category: people, seasons, months,
units of measure. Verbs are defined as categories that define a relationship
over their arguments and adjuncts. Their instances are (the individuals that 
represent the content of) parsed clauses.

What about modifiers like adjectives, adverbs, and quantifiers? They modify
the entity that's denoted by the head of the phrase they're part of, but
the real question is how should they do that and how is that functionality
implemented in Sparser.

We treat them functionally, where the meaning of, say, "next" is determined
by co-composition with its head. The intensional denotation of "next week"
is a description of that relative time. However, if we know what "this week"
is, i.e. we have a calendar date for it, then we can compute a calendar
value for "next week" to provide it with an extensional meaning. [[ Almost
ready to use, but not quite ]]

So the meaning of a 'sequencer' like "next" is that it composes with a head
that denotes a sequence of some sort (days, ages, a script of events, ...)
and, if an index into that sequence is known, "next" denotes an operator
that will return the next element in the sequence. 

There are a great many technicalities as to how that comes about which 
will be documented elsewhere, but the bottom line is that we implement
modifiers as categories, using a set of short cuts whenever there appear
to be useful differences in meaning, extending the set of short cuts
if we want to establish a class of modifier that we don't already have. 

The place to start is with the file grammar/model/dossiers/modifiers.lisp.
This file is intended to be the collection point for modifiers of all
sorts. Previously they had been distributed across about a dozen files
and it was too difficult to keep track of what had been defined and what
hadn't. The modifiers file is intended to make it easy to scan and see
if we already have a definition for a word and then easily add it or
change what you now consider to be an inaccurate or inadequate classification.

The short cut functions in modifiers.lisp are functions such as define-
comparative, define-event-frequency, or define-quantity. For example:

(define-event-frequency  "always")

(define-sequencer/determiner "next")


---------------------
define-function-term

For the most part, these modifier-classifying functions are all defined in 
the file model/core/adjuncts/others.lisp. Unless they are particularly old,
they are built on a standard template that uses the generator function
define-function-term that does all the work. For example this is the 
function used with words like "despite" and "in spite of" (along with the 
commentary presently in the file). 

;; <A happened> despite <proposition P>
;;  Binds to a clause to its right creating an adjunct to the clause
;;  to its left in the same style as a purpose clause. 
;;  Functionally is a subordinating conjunction
;;  Takes nominalized clauses/participals
(defun define-reflection-on (string)
  (define-function-term string 'subordinate-conjunction
    ;; If we had a "starts clause" bracket that might help
    :brackets '( ].adverb .[np )
    ;; This isn't the right ETF, but it sort of patterns right
    :tree-families '(sentence-adverb)))

Here is a similar short cut function that is used with words like
"previous" or "next". It makes use of every option that the generator
function presently knows about.

(defun define-sequencer/determiner (string)
  (define-function-term string 'det
    :super-category 'sequencer
    :rule-label 'sequencer
    :discriminator 'sequence
    :brackets (list ].quantifier .[np )
    :tree-families '(generic-np-premodifier)))


The signature of define-function-term is 
   (string form 
    &key brackets super-category 
         rule-label discriminator
         tree-families)    

The string is the word being defined and the form is the name of
its syntactic form category (see grammar/rules/syntax/categories.lisp).
All of the keyword arguments can be omitted, in which case they 
will be bound to default values that correspond to defining an adverb.

The effect of define-function-term is to create the word, give it the
indicated brackets, and create a category based on that word. The new
category has the indicated super-category and a realization determined
by the choice of tree-family (which is yet another topic). The result
is the new category and a set of unary rules that have the category
as their referent. 

Normally, the label on these rules will be the generated category.
That is not always what we want, so the keyword argument 'rule-label'
is provided where you can stipulate that the label should be. 
Without it, that sequencer definition would have produced rules
like next => "next". With it, we can generalize all those words
for parsing purposes and the rules look like sequencer => "next".

The purpose of the discriminator parameter is to let you accommodate
the cases where a modifier legitimately has different word senses
which want to have their own category. Normally the name of the
category that's created is the same as the word (or polyword) that
is being defined, e.g. ALSO. This parameter provides a symbol that
is appended to the end of the word, e.g., NEXT-SEQUENCE. 

This is probably enough parameterization to cover anything we want.
On the other hand this conception of how to handle modifiers in bulk
was only created last year for a short burst of vocabulary addition
and, as you can see by reading through the file, it is still in its
infancy.
