(in-package :sparser)

6/2/15 Navigating the no-space pattern code
Updated and extended 12/25/16

-------- Rationale and Overview

Biomedical articles are replete with composite terms that are not
easily handled by normal parsing techniques because of how they
incorporate punctuation as a central part of their meaning, for 
example "the p120-RasGAP C-terminus", "MAP2K1:MAP2K2 heterodimers".  

We developed a special, pattern-directed processing module to handle
such terms. As part of our multi-pass sentences analysis, it is run after 
the initial pass that applies polywords and local lexical interpretations
(such as recognizing "H-Ras" as a predefined protein), and before 
conjunctions and parentheses or any phrase parsing. 

With notable exceptions, the lexical elements of these complex terms
are always contiguous, i.e. they are not separated by spaces like
ordinary words are. Our "no space" pattern facility is triggered
whenever there is no space between one terminal and the next. It
begins by looking ahead to find the position where the sequence
ends. As it scans, it collects the chart locations of any punctuation
and summarizes the content of the sequence as a pattern. If the text
is "Activated FGFR4:pY-SHC1", then its will have recorded the colon
and the hyphen's locations, and formed this pattern (as a list of
keyword symbols) to describe "FGFR4:pY-SHC1".
      (protein :colon :mixed :hyphen protein).
(Note that FGFR4 and SHC1 are proteins we have already identified in
our lexicon, and they appear in the pattern as their semantic label.)
We then dispatch to different sets of simple pattern recognizers based
on whether there were any edges and what punctuation was observed. In
this case, The colon is recognized as the basis for splitting the
analysis into two parts (it is a standard delimiter for the proteins
in a complex). Within the second part of this pattern the focus is on
the terminal glossed as mixed, "pY", because these should often be
further decomposed. In this instance the lowercase "p" is appreciated
as indicating that the protein it precedes is phosphorylated, and the
"Y" is recognized as the short form for the amino acid tyrosine,
indicating that the phosphorylation of SHC1 was on an unidentified
tyrosine residue.

There is a large space of possible "no space patterns" and at this
point we have covered almost all of it that occurred in the first year's
text passages (though by no means all of the ones that occurred in all
the articles). We are now looking for ways to systematically search
this space for more patterns and fill in the gaps that we find. We
will also start to do a substring analysis within tokens. This will
let us appreciate terms like "RasGEF" or to identify their component
elements, and to recognize likely members of a otherwise unknown
family (MAP2K, MAP2K1, MAP2K2K2).


-------- Avoiding regressions

There is a file of test cases in model/sl/biology/citations.lisp that
is a start at a comprehensive set that spans all of the cases we
correctly handle with the no-space facility. They are largely self-
explanatory, though there is a note on citations in the documentation. 
To run the test and determine whether any patterns that have regressed do

     (test-modules-citations '*biology*)

which will run through all the cases that were in the file when you
loaded. (Test new ones by hand when you create them and add them to
the file.)


-------- Debugging 

The function trace-ns-sequences will provide a trace of much of 
the decisions that are being made an the paths that are taken.
As always, untrace-ns-sequences turns the trace off.

The flag *work-on-ns-patterns*, which is nil by default, is
used extensively in the no-space code to provide a way to
avoid unfinished subsystems or simply to not bother to
look for more cases. Set it to T to work on the facility.



-------- Organization of the process

When running in 'no-brackets' mode the patterns are looked for
during the call to pattern-sweep on the current sentence. 

Within pattern-sweep we walk from treetop to treetop. Every word
should have been covered by at least one edge at that point,
and some of these edges will span multiple words (chart positions) 
because they are covering polywords or are the results of FSAs such 
as numbers. 

The pattern-sweep loop keeps track of the positions before and after
the current (possibly multi-position) treetop. If there is no space
recorded on the position-after we call check-for-pattern to see if any
word-based FSA applies (e.g. for a URL). If not, we call
do-no-space-collection to apply no-space patterns. In both cases, a
successful match is indicated by returning the last position reached
in the pattern search and failure is indicated by the returning nil.

Do-no-space-collection (which in the same file as the rest of the
base control loops: drivers/chart/psp/multi-scan.lisp) first checks 
whether the word after the no-space is one of the ones that is
never part of a no-space sequence (using word-is-bracket-punct and
word-never-in-ns-sequence). It then calls the collector proper --
collect-no-space-segment-into-word -- and passes it the position
that the treetop ends at. 

Collect-no-space-segment-into-word is in analyzers/psp/patterns/uniform-
scan.lisp. The first thing is does is to recover any multi-position
edge at its left-end and adjust its left-bound accordingly. A few
other odd-case checks are made before we get to the next significant
operation: finding out where the span of not-separated-by-spaces words
ends. 

Sweep-to-end-of-ns-regions is in analyzers/psp/patterns/
scan-gophers.lisp. Its role is to find the end of the sequence, usually
because of whitespace but possibly because of reaching close-bracket
punctuation and some other cases. Because it touches every word in
the segment it also records the position of any salient punctuation 
(hyphens, slashes, colons, any other punctuation character that's not
a segment-terminator) as well as any multi-position edges that it
encounters. These are all passed back to collect-no-space-segment-into-word
in a multi-value return. 

Leaving aside some small intervening details and checks, it next checks to
ensure that all the multi-position edges within the bounds of the
segment (if any) are correctly ordered from left to right. At that
point it calls parse-between-scan-boundaries (a tailored parsing
protocol. It and other tailored parsers are in analyzers/traversal/
forest-scan.lisp). This will handled the cases where the edges within
the span are accounted for by a parsing rule. If the result of the parse is
a single edge then we're done. Measure phrases ("0.45μm") are an example
of where the composition of the no-space segment is resolved by parsing. 

When there isn't a parse that covers the entire region of the segment,
collect-no-space-segment-into-word considers a number of cases that
may be able to determine the span's analysis directly (ns-protein-dispatch
and ns-amino-acid-pattern-resolve in analyzers/psp/patterns/protein-
patterns.lisp), or want to change the extent of the span (e.g. to
remove a final colon, which is invariably punctuation rather than
part of a pattern). These routines are somewhat ad-hoc insofar as they
focus on the final edge in the span rather than looking at the whole
pattern. As the note in the code says, they deserve a good review.
Their final step, if the special case they're checking for did not
apply, is to call the standard dispatch: ns-pattern-dispatch.

Also note that every deliberation in the dynamic scope of this
point in the code is wrapped in a catch. This is an escape route
for when no analysis seems possible. Throwing to
   :punt-on-nospace-without-resolution
will take us directly to collect-no-space-segment-into-word's return
point, where we return the end position of the span even if we
can't analyze it. The effect is to move the loop ahead to this
chart position and avoid trying other patterns in that region.

Ns-pattern-dispatch is the place to look for how the rest of the
no-space system is organized. Unless there is a throw, every path
through this function is guaranteed to form an edge over the entire
span. 

The first thing that ns-pattern-dispatch does is to have the words within
the no-space segment characterized so as to drive the pattern matchers.
This is done by characterize-words-in-region (in analyzers/psp/patterns/
charaterize-words.lisp). It is passed the ordered list of edges so that
its loop over the individual words in the sequence doesn't go inside
them. We also adjust the list of words given the edges so that they
are in sync.

The keywords for the pattern are determnied by characterize-word-type in
that same file. Edges are passed through as part of the pattern rather than
trying to summarize them. We distinguish single letters and digits from 
sequences of them, and lower from full from mixed case. There is a great
deal more that could be done at this level.

The code of ns-pattern-dispach is organized as a cond that tries to
address the most complex cases before the simple ones.

The default, if no pattern applies or if *work-on-ns-patterns* is nil
and some potential paths are blocked, we call the most generic analysis,
reify-ns-name-and-make-edge which makes a edge with a newly created
bio-entity as its referent. That work is done by reify-ns-name-as-bio-entity
in a big-mechanism load and by reify-spelled-name otherwise. This makes
a polyword for the word sequence, which means that once the entity has
been made it never goes through the no-space analysis again. 

The pattern checking per se is pretty haphazard. The best case to
look at first is the two routines in analyzers/psp/patterns/
pattern.lisp. They are both comparatively short, and they illustrate
the basic code-pattern that is used:
  -- All the tests are organized into a single cond
  -- Each test is a comparison of the pattern of terms in the sequence 
     against a possible pattern, e.g.
         (equal pattern '(:tilda :digits :percent-sign)) ;; "~15%"
     Where several patterns lead to the same behavior they are or'd
         (or (equal pattern `(:tilda :digits))  ;; ~60 in Dec# 52
             (equal pattern `(:tilda :single-digit)))
  -- Each case is annotated with an example.

Patterns.lisp is also where *work-on-ns-patterns* is defined and
includes a list of cases to try out.

A word about the arguments to these pattern testers, which are all
essentially the same.
  -- When there are, e.g., slashes in the pattern (as in "the
  Raf/MEK/ERK pathway.") what is passed in as the value of, in this
  case the slash-positions parameter is a list of one or more chart
  positions. The terminal at each of these positions is the indicated
  punctuation. In this pathway example, slash-positions will contain
  two positions.
  -- pattern: is a list of keywords. Note that these keywords can
  include the label on an edge, if it is of category that is on the
  list of *ns-informative-categories* (see patterns/characterize-
  words.lisp for all the details)
  -- words: is a list of words, one for each term in the pattern
  -- edges: is list of the corresponding edges, 

There is a certain amount of discipline on pattern-checking code in
that the most of the cases for a particular punctuation character is
grouped into a file with a sugestive name (colon-patterns.lisp). That
discipline is violated as often as it is respected, unfortunately,
since there is a good deal of overlap in what operations need to be
done, and we have to have a files that refer extensively to categories
in the model load from a different directory that loads late.

Moreover, I'm not at all sure that all the bases are being covered in
the body of code that is there. Certainly we can continue with this
set of interlinked conditionals for a goodly while by making
intermental additions of cases. (Turning on *work-on-ns-patterns* will
almost immediately pick up new opportunities for extension.) But
anything more substantive than local improvements is going to call for
a redesign that can better establish that it's covering all the space
of options, including decomposing words to identify the known terms
within them (analogous to RasGAF).
