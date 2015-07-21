(in-package :sparser)

;; Note on the "sweeping" control structure used 
;; in the Big Mechanism treatment of biology.

In the 'normal' case, before we began to work on the molecular
biology of signaling pathways in cancer, all of the parsing operations
were tightly interleaved by a tail recursive network of function
calls orchestrated by the code in /drivers/chart/psp/scan3.lisp. 

Such tight control makes sense in a sublanguage for which there is
a rich semantic grammar. We do not have this for scientific journal
articles in biology, which have the most complex lexico-syntactic
patterns we have seen this side of contracts law. To compensate,
we have developed a control structure that makes multiple passes
over a sentence, beginning with the simplest, most likely to be
correct, analysis, continuing through the most heuristic. When all
of the processing on a sentence is finished, it moves on to the
next sentence and repeats the process. 

This control structure is established by this line in the switch 
setting function bio-setting where we're saying what kind of chart
handling we want:
   (setq *kind-of-chart-processing-to-do* :successive-sweeps)

We analysis starts, that setting almost immediately to the function 
sentence-sweep-loop which organizes the dispatches to all of the
routines that do the work. 

Sentence-sweep-loop is organized as a loop over successive sentences.
Given a document, it pours successive sentences into the chart, does
all the processing over that sentence, and then moves on to the
next. Instances of the sentence document structure class are used to
keep track of where we are and for storing information that will be
useful later, such as the sentence's subject (when it can be identified)
which is used for dereferencing prounouns.

---------- scan-terminals-loop
The first pass is done by the function scan-terminals-loop which
is responsible for very basic analysis operations. 
 (a) It looks for polywords.
 (b) It looks for word and edge-based FSAs, such as the one that
  converts sequences of digits into numbers. (N.b "1,258.02"
  is a sequence of five words in the chart.)
 (c) It calls complete to which trigger hooks such as the ones
  that notice parentheses and especially the period-hook.
 (d) It introduces the edges for every terminal, which means
  that when this pass is done there will will be a fully-populated
  chart of minimal edges over the words in the sentence.  If we
  allowed for the possibility of unknown words in biology mode
  those would not have edges, but we're using a version of the
  unknown word routine that makes sure that there is at least a
  minimal (part-of-speech based) analysis of every word.

---------- period-hook
This sweep stops when the period-hook function runs and concludes
that the period is an end-of-sentence indicator, which is the task
of the function period-marks-sentence-end? on the basis of the
capitalization of the next word. The period hook is called from
the complete code. It can only take effect if its completion action
is turned on. The biology switch setting calls period-hook-on to
ensure this. This code is also responsible for updating the 
document structure to create a new sentence instance. When it does
this, the 'current sentence' becomes the next one, which is why
the sentence being analyzed is locally bound within sentence-sweep-loop
and explicitly passed to all the analyzers to provide the bounds
in the chart for their operations.

When it concludes that we've reached the end of the sentence,
period-hook does a throw (a non-local return) to the :end-of-sentence
catch in sentence-sweep-loop which proceeds to the next pass over 
the sentence.

Periods that are no end-of-sentence markers are normally part of
defined abbreviations, in which case they are handled by the FSA
check in the first pass (scan-terminals-loop). 

---------- pattern-sweep
The driver for this next level is pattern-sweep -- it engages the
no-separating-space patterns. Pattern-sweep and scan-terminals-loop
are all in the file drivers/chart/psp/multi-scan.lisp as are the
two passes that follow it.

Like all of these sweeps, it walks through the treetops of the 
chart one at a time left to right from the beginning of the sentence
(starts-at-pos sentence) to the end (ends-at-pos). The final
treetop, whitch is typically the word for period, is not checked
for patterns. 

In this pass, the only treetop edges that will span more than one word 
are edges over polywords or that span the result of a FSA's successful
identification of what it was written to recognize.  

The principal check is for instances of patterns where there is 
no space between words, which is laid out next. This sweep is always 
working with two words at once because it looks to the position
between the words (the local variable position-after in the code)
to ask whether it there is any whitespace between the two words. 
The check is encapsulated in the function no-space-before-word? but
all that does is check whether the proceding-whitespace field in
the position is nil. 

----------- debris-analysis rules
If there is whitespace after the treetop we check for whether it
starts a debris-analysis pattern (DA). The function check-for-pattern 
manages this check. Since a successful pattern always returns
an edge over the chart-span that it accounted for we don't have
to look at its return value because it will be handled by the
main loop when it asks for the next treetop. There is a example
of a DA rule in sl/biology/rules.lisp in the comma-adverb-comma 
rule. Within the pattern-sweep we are only considering DA paterns
that are based on words. 

----------- Specific no-space patterns
If there is no whitespace between two words (newlines count as white
space) then we first consider the possibility of a defined no space
pattern which is looking for a explicitly defined sequence of terms.
This check is managed by check-for-pattern and success is defined
by returning the position just after the last term (usually word)
in the pattern. The pattern scare-quotes in the biology rules file
is an example.

The two sequential pattern schemes have a lot in common even though
the syntax used to define them is quite different. There is much
to be said for using these more often as a means writing cheap 
transition networks for phenomena that do not pattern well as binary
trees.

----------- General no-space patterns
If there is no space between two words and no specifically defined
pattern applies (which is usually the case) then we drop through
and call do-no-space-collection which is syntactic sugar (and a place
to stage traces) for a call to collect-no-space-segment-into-word.
Calls to collect-no-space-segment-into-word will always succeed 
because they will presume that there is a sensible multi-word term
that is composed out of the contiguous words and will define it
if it's not already known. 

This phase of processing has been beefed up dramatically for biology
since there are so many instances where we have to decode a pattern
to determine what is being referred to, e.g. proteins: AF6, MEK1, 
SHOC2, pathways: 

The first thing that collect-no-space-segment-into-word does is to
find the end of the segment. It calls sweep-to-end-of-ns-regions 
to identify the first position to the right that does have whitespace
on it, or any other of a small set of stopping criteria such as
reaching an open bracket. Along the way is collects up the positions
of any hyphens, slashes, or colons that appear in the sequence since
these have special interpretations.

The next step is to call characterize-words-in-region to provide
a set of keyword labels for each of the words. The sequence of these
keywords becomes that basis of 'patterns' that fall into groups of
similar patterns that -- given that we are operating in the sublanguage
of biology -- can be often be given very specific interpretations. 
For example, the pattern (:single-cap :digits :single-cap) usually
designates a point mutation ("BRAF V600E"). Typically, recognized
patterns are passed to a function that will check any preconditions
before finalizing the classification. In this case, the function is
reify-point-mutation-and-make-edge which checks for the letters being
names for amino acids. 

The dispatch to specific pattern recognizing functions such as
resolve-hyphen-patter or divide-and-recombine-ns-pattern-with-slash 
is the last thing that collect-no-space-segment-into-word does before
it returns the end position of the not-separated-by-whitespace sequence,
indicating success. The dispatch is preceded by a call to the function
parse-between-boundaries which is given a chance to, in effect, look
for a predefined pattern (such as a polyword) before we resort to the
looking at different sets of patterns. 

The routines that make the final decisions about what a pattern means
are all responsible for creating an appropriately labeled edge over
the span. The base case, and what we fall through to if nothing more
applies, is reify-ns-name-and-make-edge, which breaks down into two
cases, one conditioned on the flag *big-mechanism* (set in init/scripts/
bio-script.lisp) and a default. The default makes an instance of the
category 'spelled-name' and assumes that something else will provide
the context to really understand it (e.g. "M1A1"). The biology case
calls reify-ns-name-as-bio-entity to determine the category and referent
of the edge over the span. It first looks to see whether there is 
an OBO with that name (using corresponding-obo) and if not calls
reify-bio-entity to create a bio-entity. Note that both of these
routines go back to the character buffer to get the true capitalization
of the words by calling actual-characters-of-word with the bounding
positions and the (usually) lowercase'd words in the span. 

Note that both reify-spelled-name and reify-bio-entity (by way of its
call to def-bio) are going to make a polyword from the word sequence. 
This means that the next time though, the a ns-word sequence will not
go through this pattern facility but be handed in the first pass as
a polyword. Also, every ns sequence is going to be reified, even if
it has not be matched to a specific pattern. This is controlled by
the flag *work-on-ns-patterns* which defaults to nil. Setting it to
T will trap unmatched sequences and let you extend the pattern set
and helper functions to handle it. 

The best way to get a feel for what the new pattern facility can do
you should read through collect-no-space-segment-into-word to make
this concrete and then browse analyzers/psp/patterns/patterns.lisp to
see how the pattern check is organized (basically it is raw code) and 
look some of its cases. 


----------- 3d lowlevel pass: "short" conjunctions
The next pass is contolled by the function short-conjunctions-sweep.
It is conditioned on whether the global *pending-conjunction* has
a value. This global will have been set in the first pass where
we make calls to the complete function, word by word. This is the
setup (in rules/syntax/conjunction8.lisp)

  (define-completion-action word::|and|
    :mark-event  'mark-instance-of-AND)

So every time the word "and" is see in the first pass, the function
mark-instance-of-AND is called. In this 'sucessive-sweeps?' mode
the position just before the conjunction is pushed onto the global
accumulator, letting us keep track of every instance of "and" and "or"
in the sentence.

At this point in the analysis we are only looking for conjunctions
over "short" spans. The computation done by short-conjunction-sweep
is essentially the same it is in later conjunction checks, but
at this early point in the analysis, when all that has happened is
the introduction of unary terminal edges, polywords, and no-space 
patterns, the only edges found by its calls to next-treetop/leftward 
and its right-looking equivalent will be covering what amount to
orthographic words (albeit often formed out of multiple Sparser 
words and spaning several positions in the chart). For example
the four cell lines in Dec#10: "in D04, MM415, MM485, and WM852 
NRAS mutant cells". 

----------- Conjunction
As you saw, conjunction is not limited to pairs. We are invoking
a rather old and well tuned piece of code that was originally
designed to distinguish lists of companies and handle multi-element 
company names, as in law firms. By default if the driving function,
conjoin/2, succeeds, then it will look to the left for the rest
of a comma delimited list of entities using the same criteria
as it used with the first pair. 

The standard criteria is that the two edges being conjoined have
the same semantic label. We loosened that in recent years to
optionally conjoin edges if they have the same form label. Whether
or not we permit this is determined by the value of the flag
*allow-form-conjunction-heuristic*, which is presently on in
the short-conjunction-sweep, though there is a flag that can be
set of nil to try not doing it: *use-form-heuristic-in-conj-sweep* .

The decision whether or not to conjoin two edges is made by
the function conjunction-heuristics which presently has just these
two criteria. If we needed more subtle or context-sensitive 
rationale to conjoin (or not), that is where they would go. 


----------- 4th lowlevel pass: Parentheses
After applying conjunction we call sweep-to-span-parentheses,
which like the others does a treetop-by-treetop walk across the
sentence. What's different in this sweep is the call to the
function word-traversal-hook on each treetop. This hook, in
drivers/chart/traversal1.lisp, is designed to track and process
paired punctuation: square, curly, or angle brackets, quotations, 
and particularly parentheses. This call will return the set of
characters and their actions that are presently defined:
  (list-hash-table *traversal-routine-table*).

Each pair of characters, and open and a close, have a matching
pair of functions. A 'mark' function notes the position of the
open on a global variable (e.g. *position-of-pending-open-paren*),
and a 'span' function that determines what to do. 

The span-parentheses function is passed the position just before
the open paren and the position just after the close. It passed
these on to do-paired-punctuation-interior which is the common
final path for all sorts of paired punctuation. 

Do-paired-punctuation-interior has two sections. It doesn't do
any analysis of the words between the, e.g., parentheses. It only
looks at the result of any analysis that has preceded it and
reacts to it. 









