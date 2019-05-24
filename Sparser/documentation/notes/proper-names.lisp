;; Sparser/documentation/notes/proper-names.lisp
;; 5/22/19

Sparser can recognize the names of people, companies, and a few other
kinds of names provide that their grammar module is part of the loaded
configuration. There is a good paper on PNF (proper name facility)
that explains the notions of interior and exterior evidence that
grounds its abilities. It's included in documentation/papers/ as
ProperNames-SIGLEX-19923.pdf.

Conceptually it is organizes as a finite state automata (fsa), and the
search for a name is initiated at the same place in the control
structure: the function word-level-fsa-sweep during the initial
per-sentence early operations in driver/chart/psp/multi-scan.lisp.

As that function walks through the edges in the chart, if the word it
has reached is capitalized (word-at-this-position-is-capitalized?) and
the *pnf-routine* flag is up, then the PNF scan is initiated
with a call to pnf.

PNF is a switched function. By default it is set to the standard
default function, pnf/scan-classify-record -- pnf stub and this
function are both in model/core/names/fsa/driver.lisp, as are most
of the other controlling parameters. Like other fsa routines, PNF
returns an edge if it succeed, or nil if it doesn't not find a name or
rejects what it got.

The basic idea is to scan ahead and demarcate the longest span of
capitalized words, with some special checks to accommodate punctuation
and special case words. cap-seq-continues-from-here? runs that scan
and returns the position at its end.

The function classify-and-record-name does the other two steps. It
distinguishes between single and multi word spans. For multi-word
spans we go through a perhaps over-elaborate process of examining
words (edges over words) within the span an collecting a set of
features. This is all in names/fsa/examine.lisp along with the
classification routine (person?, company?) and a check for reduced
references. That path is kicked off by c&r-multi-word-span and its
tail subroutine classify-&-record-span which make the call to
examine-capitalized-sequence and makes sense of its result.

Single capitalized words go through c&r-single-word. The split there
is between single words that are know to produce edge and those
that are completely unknown. What happend in that no-edge case depends
on the value of the parameter *treat-single-Capitalized-words-as-names*
which defaults to t. When it is up we treat the word as a name by
calling do-single-word-name to set up all the requisite parts to yield
an uncategorized-name, with the requisite machinery to get the
identical name object the next time the word is parsed.

If there are edges over the word they are checked for the possibility
that they are reduced references to already known words and otherwise
are ignored.

