;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "just ern citations"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  January 1996

;; Cut down from [citations] 1/19

(in-package :sparser)
#|


To get some generality, everywhere possible the words that can appear
in the patterns are rewritten as nonterminals that indicate what they
are, e.g. "earnings" -> 'financial-data'.

The patterns are written in terms of these labels, so giving a
word a particular label ipso facto determines what patterns it is
part of.


;;;------------------------------------------
;;; The various kinds of results ("Fin-Dat")
;;;------------------------------------------

Once you narrow the problem down to just the detection of earnings results
you can settle for a flat enumeration of the variations, taking each case
as a term produced by the lexer (tokenizer) without bothering with any
internal compositional structure.

e.g.  "net", "net income", "income", "earnings", "net earnings"

These are what I've seen in noun form (where the time period may be immediately
to one side or the other).  It's also occasionally given as a verb:
  "For [time], [co] ... earned ... $ (or $/shr) ..." 



The only thing that's important to note here is that the writers can combine
the fact that the result is 'earnings' with wording that indicates that
the number there are about to give is a 'per-share' figure.

There seem to be a goodly number of these. They're much more prevalent
in press releases then they are in the summary stories that appear in
regular newspapers.

"earnings per share", "earnings per common share", "eps" (sometimes capitalized),
"net income per share"

You also get this signal as a statement at the beginning of the sentence:
  "On a per share basis ... earnings ... $ ..."


If they use both an 'income' phrase and an 'earnings' phrase in the same
time period the earnings means earnings/share.



;;;-------------------------------------------------------
;;; Time -- the period over which the result was measured
;;;-------------------------------------------------------

The reference period is invariably a (fiscal) year or a simple fraction
 of one ('quarter', 'half'), with the position of the fractional period
 within the year spelled out ('first').

The terms "quarter" and "half" are usually treated as referential common nouns
rather than as measurements (e.g. they can be used to refer to other
periods: "the previous quarter"; they can also be used to refer again
to the current period "the period"). 

The phrase is  a 'ordinal' (e.g. "first") followed by either of the two words 
"quarter" or "half".

There are also variations where the period is given as so many months,
often with a preceding ordinal:  "the nine months (ending ...)", "(the)
first three months".  The number is always spelled out, never (yet) just
a digit.

Obviously you don't need to bother with getting the "the" that usually
appears at the beginning of these phrases. 'Swallowing it up' is important
when using an adjacency-driven parser (e.g. almost any chart algorithm)
but it's irrelevant when you're going phrase by phrase. 




The time period can be followed by a phrase that says when it ends.
(You'd imagine that they might also talk about when their fiscal intervals
start, but I've never observed it.)  These might or might not be relevant
to include. They invariably seem to be conventional quarterly times so
they do seem to be pro forma except perhaps to indicate that the company's
fiscal year is off from the calendar year by a certain amount.

I rewrite these as an 'ending-date'.  The various forms of the word "end"
are all rewritten as 'end', and I've observed

   ending-date (end day-of-the-month)  "ended Oct. 31"
   ending-date (end date)              "ended Oct. 31, 1995"




That a year is a 'fiscal year' is marked with literal words in combination
with the digit sequence that names the year.

So you need a set of:  year -> "1996"

And then you get these patterns and perhaps some others. ("FY" ?) 
  fiscal-year ("fiscal year" year)
  fiscal-year ("fiscal" year)

When the time period is a per-year result you get a lot of variations. I don't
think I've seen them all.  "the full year", "For the year ended... , ..."

Since just the digits of the year is quite common as a way to indicate a
yearly result, you'll want to be somewhat careful an be sure that your rules
for parts of a year include any year that's present ("first quarter 1995",
"first quarter ending March 31, 1996") rather than strand the year and risk
the possibility that it will be missinterpreted.



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

Money phrases are pretty obvious.  The only thing that wouldn't already
be in most commerce-oriented lexers is the 'per share' phrasing.

These rules grouped the per-share and the money together into one phrase.
Obviously you don't have to do that so long as the routine that scans
the sequence of phrases that you turn up knows to stop looking once it
has seen one of these per-share phrases and thus avoid confusing it with
the one that will almost invariably follow in the 'comparison' 

  #<PSR419  money ->  money or-amount-per-share>
  #<PSR418  or-amount-per-share ->  COMMA or-amount-per-share>
  #<PSR417  or-amount-per-share ->  "or" amount-per-share>
  #<PSR416  amount-per-share ->  money share-of-stock>
  #<PSR415  amount-per-share ->  money per-share>
  #<PSR414  per-share ->  "per" share-of-stock>
  #<PSR413  {common-noun} -> "a" common-noun>
  #<PSR412  share-of-stock ->  "shares">
  #<PSR411  share-of-stock ->  "share">



;;;-----------------------------------------------
;;; combining a fin-dat term with its time-period
;;;-----------------------------------------------

The time period is most frequently immediately adjacent to the fin-dat
(grammatically it's an adjunct to the fin-dat np).   On the 'just phrases'
model of how to do this task you don't need to actually make these
compositions unless they would help in anchoring the correct time period
to the result in the (many many) cases where there are lots of prior
time periods already mentioned in the text that might be mistakenly
taken to be the result's time period. (Often as not the prior times will
be the same, but why worry.)


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

|#

