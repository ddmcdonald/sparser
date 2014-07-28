(in-package :sparser)  -- for meta-.

Notes on using brackets to delimit segments (minimal phrase chunks)
Version: 7/23/14

================================
Overview

Sparser's control structure divides logically into three processes:
(1) delimiting the next segment, (2) parsing within that segment,
and (3) parsing edges across segment boundaries.  A segment is the
sequence of words between positions in the chart between two phrase
boundaries, and linguistically corresponds to a minimal phrase. 

If you run sparser as a chunker (using just-bracketing-setting), the
toplevel in the chart will consists of noun phrases from the determiner
to the head and verb groups from their auxiliaries to the main verb 
including any adjacent adverbs. Prepositions are not included in
any segment, neither are conjunctions, sentence-level adverbs, nor
any sort of punctuation all things being equal (e.g. the punctuation
is not part of a polyword or consumed by an fsa). 

Segment boundaries are determined by the 'brackets' that are part of
the definition of every known word (or inferred from the morphology of
otherwise unknown words). Tests are made incrementally as words are
introduced into the chart and looked at. These tests have ballooned
into what sometimes feels like a Rube Goldberg machine that is probably
introducing an unnecessary drag on runtimes. Probably a total rewrite 
is in order, but first we need to understand what's presently there 
and balance against other needs.


================================
Files

The basic definitions of segment brackets as a data type are in
objects/chart/brackets/. The behavior of brackets is established
by the files in grammar/rules/brackets/. The assignment of brackets
to individual words is distributed to the word definitions, either
in whole files (e.g. rules/words/punctuation-bracketing.lisp) or as part
of the function that defines them, where the choice of brackets
follows the lists established in rules/brackets/assignments.lisp.

The segment-bounding code ('does this bracket start/end the segment?')
is in the file rules/brackets/judgements1.lisp with a set of auxiliary
tests in rules/brackets/predicates.lisp.


================================
Display

Unless we deliberately turn it off (e.g. by calling the function quiet)
the words of the text are echoed to the listener as they are scanned.
Because of a call to display-bracketing as Sparser is being loaded (from
the version-specific workspace file, display.lisp), the echoing is delayed
until the moment the segment has been completed but before anything
is done to it. This is in the key entry-point pts (for 'parse the 
segment' in the file drivers/chart/psp/pts5.lisp). 

The actual printing is done by routines in analyzers/forest/printers.lisp.
The function print-segment-and-pending-out-of-segment-words does the work
and maintains the printing-specific indexes. There is an edge-case bug
where the final segment or word-outside-of-brackets is sometimes not 
printed because the analysis ended without a final swing through pts.


================================
The structure of a bracket

Brackets are structs.

(defstruct (bracket
            (:conc-name #:b-)
            (:print-function print-bracket-structure))

  direction  ;; one of the symbols :[ or :]
  placement  ;; either :before or :after
  word       ;; a #<word>
  category   ;; a #<category> giving the form of a class of words
  symbol     ;; a specially constructed symbol in the :cs package
  rank       ;; a number: picks which wins when multiple brackets are available
  plist
  )

The are created by the define-bracket macro. The current stock of
brackets is in rules/brackets/types.lisp. For instance that file has
these two of the three brackets defined over prepositions

(define-bracket :]  :before  preposition 1)  ;; ].preposition
(define-bracket :]  :after   preposition 1)  ;; preposition].

As a side-effect, defining a bracket creates a globally proclaimed
special symbol whose value is the print-form of the bracket, which 
is extremely convenient. 

? .[article
#<bracket .[article >

? (d *)
#<bracket .[article >
Type: bracket
Class: #<structure-class bracket>
direction: :[
placement: :before
word: nil
category: #<ref-category ARTICLE>
symbol: .[article
rank: 1
plist: nil


================================
Assigning brackets to words

Brackets can be assigned to either words or categories (aka the labels
on edges). The function assign-bracket assigns a single bracket. Its
variant assign-brackets assigns several brackets at once. In both cases
an instance of a bracket-assignment struct is created as assigned to
the phrase-boundary field of the rule-set for the word/category. 

(defstruct (bracket-assignment
            (:conc-name #:ba-)
            (:print-function print-bracket-assignment-structure))
  ends-before
  begins-before
  ends-after
  begins-after
  backpointer )

That distributes the bracket or brackets to the field/s they correspond
to. This structure is what the control fsa consults.

The file rules/brackets/assignments.lisp contains what is hopefully the
single specification of what sets of brackets are assigned to words
by default according to their part of speech. They should all be able
to be overridden for specific cases, and if the def form that does
the assignment does not permit that it needs to be changed. 


================================
Debugging

Visual inspection of the output will pick out bad cases. We also have
a bulk tester, tb-segmentation-tester in the file treebank-reader.lisp
in rules/words/one-offs/. It's error handler to let you skip over
hard errors in Sparser's code needs some work, but it will compare 
the phrase-level bracketing of Treebank files against what Sparser 
does on the same texts and return a summary report.

The method brackets-on takes a string (or a word) or a number (or a
position) and tells you what brackets they have. 

? (brackets-on "precise")
 ].adjective .[np

? (brackets-on 3)
 ].phrase  p3  .[article


The next step is to look at one of the functions that make the decision
to start or end the segment. The usual problem is making the segment too
short, so that would be bracket-ends-the-segment? which is in the file
rules/brackets/judgements1.lisp with all the other tests. 

If you happen to hit on a new situation of bracket combinations or
a case that isn't already handled, then you will get a error message
that says you've hit a 'stub' and tries to describe as much of the context
as it can easily access. The flag *break-on-new-bracket-situations* could 
be set to nil if you just want to ignore cases like than and let it
make a default decision. 

If you believe you have the right choice of brackets on the words around
the problem site then the issue may be one of timing and you will have to 
look at trace output -- over the smallest amount of text that exhibits
the problem since traces can be long.

Sparser's trace facility is a subject for another note. Suffice it to say
that the code is heavily salted with conditional trace statements that
are turned on/off in logical groups. 

The simplest (smallest) trace to try is invoked by trace-brackets and
turned off by untrace-brackets. The is a (much) longer trace set that
is prepackaged as the function trace-segmentation.

(defun trace-segmentation ()
  (trace-brackets)
  (trace-segment-completion)
  (trace-segments)
  (trace-network)
  (trace-network-flow)
  (trace-status-history))

These are turned of as a group by untrace-segmentation. The two network
traces create the most output, but if the problem is suspected to be
an interaction somewhere deep in the mechanism then that much detail
(every function call in the control fsa) can be needed. 


================================
Timing

To understand what happens when, there is no real substitute for
reading and exploring the core of the control fsa, which is the file
drivers/chart/psp/scan3.lisp. (And by 'fsa' I mean a chain of tail-
recursive function calls.) This describes the high points. 

The basic loop starts with scan-next-pos which adds the next word
from the source to the next position in the chart and then introduces 
any 'leading' brackets the word may have (see introduce-leading-brackets). 
Having done that calls the next function in the chain to see if there is
now a close bracket on that position (a ] on the position before the
word we just scanned). 

Whether or not the close bracket ends an ongoing segment (a segment
whose left boundary is known) is determined by bracket-ends-the-segment?
If there is no ongoing segment, we see whether there is an open bracket
([) on the position and whether it starts a segment.

The judgement to start a segment is the job of adjudicate-new-open-bracket
and amounts to hopping over some known singletons, as indicated by
the brackets labeled punctuation, treetop, or pronoun, or moving from
the state of having no left boundary to having one. The boundary
position is pointed to by *left-segment-boundary*, and set up by a
call to interpret-open-bracket-as-segment-start which adds a bit more
information.

Note that the segment starts 'at' that position and that since words
are logically 'between' position then the segment starts with the word
just to the right of the position. 

All this is taking place in check-for-[-from-word-after and whether 
we start a new segment there or not, the next things we do is to check
for 'hidden-markup' (i.e. XML tags, but presently turned off) and we
the call check-for-polywords in order to continue. 

Polywords are atomic from the point of view of the scanner. If one
succeeds then we shift out of line and call adjudicate-result-of-word-fsa 
to re-enter the main process at the position at the end of the polyword
and at the correct place in controller’s chain of functions. If no polyword
succeeds (is recognized) then we proceed to look for patterns triggered
by a predefined pattern or by there being no space between two successive 
words. Look at check-for/initiate-scan-patterns for the details.

The next check is for word-based fsa (bits of largely raw code). If
the word we are looking at (still -- we haven't done another pull from
the tokenizer) is capitalized, it is passed to PNF 'Proper Name Facility'
to see whether it's the start of a name. Again if that succeeds we
pick up where the name left off after first negotiating our reentry
(in this case with a call to adjudicate-after-pnf).

Once all the possible word-level actions have been considered we do
three things in order (see word-level-actions). We call complete, 
call the word-traversal-hook (see the regular documentation), and
finally we look up all of the 'single term' rules that rewrite that
word and introduce those edges into the chart. 

At that point (in the call to introduce-terminal-edges) we look up the
brackets that go on the right side of the word (introduce-trailing-brackets)
and we start considering the position that follows the word.

The key function is check-for-]-from-prior-word since it does a call to
bracket-ends-the-segment? to determine whether we should end the segment
(that's assuming that there is a ] on the word). 

If the ] checker concludes that the position on the other (right) side
of the word is the end of the segment then the segment is finished
and we leave the word-level sweep by calling pts (Parse The Segment).

If that wasn't the end of the segment we check for the trailing brackets
from the word (if any) in check-for-[-from-prior-word and then we restart
the loop with a call to scan-next-position to read the next word from
the input stream.

