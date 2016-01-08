;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "citations"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  January 1995

;; initiated 1/5/96. Elaborated through 1/9

(in-package :sparser)
#|


;;;-----------------------------------------------------------------
;;; Non-trivial elements of the problem (= beyond cf rewrite-rules)
;;;-----------------------------------------------------------------

The company is rarely included in the sentences that give the results
and has to be inferred from the discourse.

When the company is included, it's usually as a pronoun or definite
reference ("the company").

The same thing happens with the time periods. Some are defnps ("for 
the quarter"), others are given at the beginning of the sentence or
in a prior sentence. 


There are lots of simple grammatical errors (though I haven't particularly
noticed any spelling errors), e.g. "...operating profits in the diagnostic 
division >>>rise<<< 58%, the company reported."



;;;------------------
;;; general approach
;;;------------------

Every relevant content word is given a label that dictates how it
can combine with its neighbors.  The labels are taken from a domain-level
vocabulary (e.g. "earnings" -> 'financial-data').  This is the syntactic
part of the grammar.

Every content word simultaneously gets a link to a typed structured
object that is an instance of some defined type (category) in the
semantic model (e.g. #<financial-data "earnings">).  This object is
what is entered into the fields of other such objects to ultimately
form the tuples for the full financial-reports. 

Most of the work of the analysis is done by a set of rewrite rules
of the straightforward sort (i.e. they are triggered by two constituents
with the appropriate labels being adjacent to each other). 
As the syntactic structure is forming, a parallel semantic structure
is being composed that is flatter and canonicalizes all the variation
seen in the texts. 

The fact that there is composition process going on at the semantic level 
allows the syntax of the text (its pattern set) to be done as a set of
individually very simple combinations.  

As a result, the quite large set of variations that occur in these texts 
(taken as large flat patterns) is accomodated by a relatively small set 
of rules -- there is as much work going on in the semantics as there is
in the syntax. 





;;;-------------------
;;; Design heuristics
;;;-------------------

Keep the individual patterns small. -- These are all binary.

Try to accomodate the range of variations locally as variations
in the way the smaller constituents are realized (nps, vps).
Keep the space of variation in the larger-scale constituents (s) small.


The information (field values) accumulates as each constituent
is formed. 

Record it at each level (type of non-terminal or composition)
in terms of a relation that is specific to that combination of
terms. 

This makes for a lot of different relation types. 
(I call them "categories".)  

Include rules that move information up as the larger constituents
are formed, copying it from the relations of the immediate
constituents to the relation (tuple) of the new node. 



;;;------------------------
;;;------------------------
;;; The individual pieces
;;;------------------------
;;;------------------------


;;;------------------------------------------
;;; The various kinds of results ("Fin-Dat")
;;;------------------------------------------

Finanical-data terms
  Single words or polywords ,
  Defined as common-nouns (automatically generates the plural),
  Acts as the head of its phrase, taking a number of different adjuncts
   that all add information that's to be folded into the full relation.
         

;;;--------------------------------------
;;; Subtyped ('qualified') Fin-dat terms
;;;--------------------------------------

Financial-data-qualifiers

  Single words or polywords, defined as common-nouns.
  Immediately precede finanical-data terms.

  #<PSR409  financial-data ->  fin-dat-qualifier financial-data>

  When one of them can stand by itself ("net") it gets an additional definition
   as a finanical-data term.


One case so far of a qualifier that follows the fin-dat term.
   "earnings per share"
   #<PSR410  financial-data ->  financial-data per-share>

////It folds-in information about how any value composed with it is
 to be interpreted, so that combination should probably be its own type
 so that that can be appreciated.


;;;-------------------------------------------------------
;;; Time -- the period over which the result was measured
;;;-------------------------------------------------------

The reference period is invariably a (fiscal) year or a simple fraction
 of one ('quarter', 'half'), with the position of the fractional period
 within the year spelled out ('first').

The terms "quarter" and "half" are usually treated as referential common nouns
rather than as measurements (e.g. they can be used to refer to other
periods: "the previous quarter"; they can also be used to refer again
to the current period "the period"). This makes them kind-terms or 'categories'
in my referential system.


To get some generality, a simple designation of one of these periods
 is labeled as an 'ordinal-fraction' ("first quarter") so that is neutral
 about the topic domains it applies to. ("The first half of that orange
 tasted really good, but something's wrong with this half.")

I constuct ordinal-fraction phrases as a 'ordinal' (e.g.,  ordinal -> "first")
followed by either of the two words "quarter" or "half".  (In fact I
actually have those words rewritten with labels ('quarter') and make
the rules in terms of those nonterminals, but that is because I'm
supporting a semantic description of the words and not just the surface
patterns.)

To be properly anchored, the fractional periods have to be linked to
 the appropriate fiscal year. The first step in that is changing its
 type (so that there is a place to record the year), which is done
 under the control of various contexts:

  #<PSR340  ordinal-fraction -> part-of-a-fiscal-year / "in" ___>
  #<PSR339  ordinal-fraction -> part-of-a-fiscal-year / "for" ___>
  #<PSR338  ordinal-fraction -> part-of-a-fiscal-year / ___ financial-data>
  #<PSR337  ordinal-fraction -> part-of-a-fiscal-year / ___ of-fiscal-year>
  #<PSR336  ordinal-fraction -> part-of-a-fiscal-year / ___ ending-date>

That handles "first quarter", "second half", etc. It doesn't rule out
cases that wouldn't make sense in this domain such as "thirteenth quarter",
but we don't worry about that because they simply aren't going to occur.


The fractional period can be followed by a phrase that says when it ends.
(You'd imagine that they might also talk about when their fiscal intervals
start, but I've never observed it.)

I rewrite these as an 'ending-date'.  The various forms of the word "end"
are all rewritten as 'end', and I've observed

   ending-date (end day-of-the-month)  "ended Oct. 31"
   ending-date (end date)              "ended Oct. 31, 1995"




That a year is a 'fical year' is marked with literal words in combination
with the digit sequence that names the year.

So you need a set of:  year -> "1996"

And then you get these patterns
  fiscal-year ("fiscal year" year)
  fiscal-year ("fiscal" year)



Combinations of those (and similar) pieces:
 
"the first quarter of fiscal 1996"
part-of-a-fiscal-year (part-of-a-fiscal-year of-fiscal-year)
 
"the first quarter fiscal 1996"
part-of-a-fiscal-year (part-of-a-fiscal-year fiscal-year)

"the first three months of fiscal 1996"
part-of-a-fiscal-year (fraction-of-amount-of-time of-fiscal-year)
 
;; "During the first six months of fiscal 1996"
part-of-a-fiscal-year (sequencer part-of-a-fiscal-year)



There is also a pattern where the two parts of the time period
(the fraction and the year) are wrapped on either side of the
datum:
       "first quarter earnings for 1996"





;;;-------
;;; money
;;;-------

Money phrases per set are done by a separate module of the grammar.
What's salient in this sublanguage is the restatement of one monetary value
 in alternative terms, almost always a dollar figure indicating total amount
 followed by the equivalent amount 'per share'.

  #<PSR419  money ->  money or-amount-per-share>
  #<PSR418  or-amount-per-share ->  COMMA or-amount-per-share>
  #<PSR417  or-amount-per-share ->  "or" amount-per-share>
  #<PSR416  amount-per-share ->  money share-of-stock>
  #<PSR415  amount-per-share ->  money per-share>
  #<PSR414  per-share ->  "per" share-of-stock>
  #<PSR413  {common-noun} -> "a" common-noun>
  #<PSR412  share-of-stock ->  "shares">
  #<PSR411  share-of-stock ->  "share">




;;;----------------------
;;;----------------------
;;; minimal combinations
;;;----------------------
;;;----------------------


;;;---------------------------------------------------------
;;; combining a financial-data term with its monetary value
;;;---------------------------------------------------------

In a noun phrase:
  head: fin-dat term
  followed by an 'of' phrase  "net of $106.3 million"

    #<PSR421  financial-data ->  financial-data of-money>

Reified as a type for fin-dat+value


Via a clause: fin-dat is the subject and the vp uses an empty verb
such as 'totaled'.  In these cases the fin-dat constituent has
virtually always accumulated additional information

    #<PSR446  fin-dats-value ->  financial-data valued-at-value>



;;;-----------------------------------------------
;;; combining a fin-dat term with its time-period
;;;-----------------------------------------------

The time period is most frequently immediately adjacent to the fin-dat
(grammatically it's an adjunct to the fin-dat np).


premodifier:  "first quarter earnings"  
              = (part-of-a-fiscal-year financial-data)

If you were going to continue parsing, that combination should be
rewritten as a 'financial-data' since that is the only aspect that
contributes to the larger-scale patterns.


postmodifier: "Net sales for the first nine months of fiscal year 1996"

To combine the two into one constituent you need to include all of the
prepositions that can mark the time period: "for", "in", sometimes "of"
are virtually all of them, but there could presumably be others. 

Even if you're not actively making constituents above the level of
the individual elements of the relation, appreciating the presence of 
the preposition and that it is adjacent to the fin-dat will make the
fact that it is the right time-period that much more certain. 



Via prior context:

  "results for the third quarter which ended Nov. 30, 1995.
   ... Net sales of $275.5 million  ... "

  "During the fourth quarter ..."

The statement of the time-period per se is the same in both cases.
The heuristic that you use 'the last time period mentioned'
is only overruled by the cases where the period is adjacent to (follows)
the fin-dat.


 



;;;-------------------------------------------
;;; combining a fin-dat term with its company
;;;-------------------------------------------

(relatively rare)

"Dun & Bradstreet Corp.'s first quarter profit"



You also see links via verbs like "announce", but these seem to be
general introductory statements where the fin-dat is "results" that
are then laid out in detail in subsequent sentences. 




;;;-------------------
;;; changes in amount
;;;-------------------

These are particular frequent because the information is news worthy.

For generality, the 'change-by-amount' is its own relation,
independent of the financial-report domain, and only enters it
when it appears in composition with a fin-ind, at which point
the combination is reified as a 'change-in-fin-dat-value'


"a 28% increase in earnings"
#<PSR435  change-in-value-of-fin-dat ->  change-by-amount in-financial-data>

"earnings rose"
#<PSR434  change-in-value-of-fin-dat ->  financial-data change-in-amount-verb>

"earnings rose 28%"
#<PSR433  change-in-value-of-fin-dat ->  financial-data change-in-amount>


The 'amount' in the change-in-amount can be supplemented by an adjunct
that gives the value.  "rose 7.3% to $11.38 million"  
These are appreciated within the change-in-amount constituent and then
copied up to the change-in-fin-dat-value when that composition is made.

The amount can be quite a long constituent, including the amount-per-share
and (for that matter, though I'm presently ignoring it) the comparison
information.  If present, the amt-per-share will have been incorporated
into the object representing the amount and gets copied up as well.









;;;-------------------
;;; Cabletron Systems
;;;-------------------

;; 1/9 9.7 -- new toplevel pattern combining the fin-dat+value and
;;            the change-by-amount+comparison
;;    Also (in the comparison) a new pattern for fin-dat+value and the
;;      reporting-period. 
Net sales of $275.5 million represented a 31 percent 
increase over sales of $210.0 million reported in the third quarter of
 the preceding year. 


;; 1/9 9.75 -- No rule for 'financial-data' + 'valued-at-value'
;;   and furthermore the field to fill is implicit in the identify
;;   of the fin-dat involved.
;;     Otherwise it has the same general patterning as the last one.
;;
Earnings per share were 78 cents representing a 
32 percent increase over earnings per share of 59 cents in the 
comparable quarter of the preceding year.  


;; 1/9 9.8 -- Same missing 'financial-data' + 'valued-at-value' rule. 
;;    Also no rule to fold in the 'change-by-amount' adjunct
;;
Net sales for the 
first nine months of fiscal year 1996 were $773.5 million, a 32 
percent increase, compared to $584.7 million in the first nine months 
of the preceding fiscal year.  


;; 1/9 9.85 -- ditto, and the rule wouldn't have completed without
;;   a 'search' since the 'ended-at-date'+comma-year' problem occurred.
;;   Otherwise, the 'change-by-amount' is introduced using
;;   a main verb ("represented") rather than as a simple adjunct

Net income in the third quarter 
ended Nov. 30, 1995 totaled $55.9 million represented a 34 percent 
increase over net income of $41.8 million in the comparable quarter of
 the preceding fiscal year.  










;;;-----------------------------------------------
;;; Contexts used to interpret names as companies
;;;-----------------------------------------------

;; Company's name is one word long:
#<PSR408  name-word-s -> company / ___ financial-data>
#<PSR407  name-word-s ->  name-word apostrophe-s>

















|#

