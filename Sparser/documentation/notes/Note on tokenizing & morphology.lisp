(in-package :sparser)

;; Note on tokenizing and word morphology
;; version 7/28/14

Everything starts in the control functions in drivers/chart/psp/scan3.lisp.
For tokenizing -- for identifying the next token in the source being read
from and converting it to a word in the chart -- this is the function 
scan-next-pos, which in turn calls scan-next-position in the file analyzers/
psp/scan/scan1.lisp. 

That leads to calling add-terminal-to-chart (analyzers/psp/fill-chart/add5.lisp)
which calls next-terminal and adds the word (the struct, not the string)
to the chart (along with some bookkeeping about whitespace and newlines.

The next-terminal function is one of the ones that we parameterize by
setting its symbol-function. The initializing routine is
  establish-version-of-next-terminal-to-use (keyword &optional function)
in drivers/tokens/next-terminal2.lisp. The usual call (see 
uncontroversial-settings in /drivers/inits/switches2.lisp)
is to next-terminal/pass-through-all-tokens which immediately calls
next-token (analyzers/tokenizer/next-token3.lisp) and all it does
is call run-token-fsa where things start to happen (analyzers/tokenizer/
token-FSA3.lisp). 

The token fsa works one character at a time. It accesses the next character
from the *character-buffer-in-use* array indexed on *index-of-next-character* 
which it bumps before using. It looks for an 'entry' for the character by 
calling character-entry (which deserves a note for itself. Look in analyzers/
tokenizer/alphabet-fns.lisp). 

If there is no entry, we've encountered a character that is not in 
Sparser's alphabet, perhaps a Greek character that's not yet been added,
and everything will stop with an informative error message telling
you how to add the new character. 

If the car of the entry is :punctuation then run-token-fsa returns via 
do-punctuation. Otherwise it kcons' the cdr of the entry onto 
a  list that it passes to continue-token. The *category-of-accumulating-token* 
global is set on this first access.

In continue-token we look for punctuation or the shift in the character
type that demarcates the token. *pending-entry* is set if we switched
character type and gets picked up on the next call to run-token-fsa.
Otherwise we recurse on continue-token.

When we're done with the token (because we've detected a shift in
type) we call finish-token. It loops over the klist of accumulated
entries and pushes them into the interning-array (a pointer to the
global *word-lookup-buffer*), while calling the capitalization-fsa
to work out the capitalization-state, which at the end is cleaned up
and stashed on *capitalization-of-current-token*. 

Finish-token end with a call to find-word in analyzers/tokenizer/
lookup2.lisp. It does a lookup-word-symbol (objects/chart/words/
lookup/buffer.lisp) using the lisp symbol table to do its hash lookup
via find-symbol. 

The lookup returns a symbol in the *word-package*. If the token 
corresponds to a known word, the word will be bound to that symbol
and we return it and roll back up the call stack. Otherwise we call
establish-unknown-word, which is another parameterized function 
(set by what-to-do-with-unknown-words in /objects/chart/words/
lookup/switch-new1.lisp). 

The usual setting for the *unknown-word-policy* is :capitalization-digits-
&-morphology which corresponds to the function make-word/all-properties
(in objects/chart/words/lookup/new-words4.lisp). 

The first thing that happens in make-word/all-properties is that we
call make-word with the symbol and take the symbol-name of that symbol
(the precise set of characters pulled from the source) to be the pname
of the newly created word. 

Since punctuation has already been handled (and already returned back
to scan-next-position and into the chart), the only cases to handle
are numbers (see establish-properties-of-new-digit-sequence) and
alphabetics.  

For the new words that consist of just alpahbetical characters, we first
copy over the already-calculated description of its capitalization
to the word object and then we see if it has an suffix that we know about.
If it does, the morphology slot of the word struct (word-morphology) is
set to a description of the suffix. 

In the original version of the morphology lookup we just noticed 's',
'ed', 'ing', and 'ly' using calculate-morphology-of-word/in-buffer which
for the moment is still used. We recently added checks for a much more
extensive set of suffixes using the function suffix-checker (both 
functions and the *suffix-pos-table* are in objects/chart/words/lookup/
morphology.lisp). 

If the flag *introduce-brackets-for-unknown-words-from-their-suffixes* 
is up, then assign-morph-brackets-to-unknown-word will be called just
before the word is returned. 

As with words introduced from the Comlex lexicon, this operation is
sensitive to the flag *edge-for-unknown-words* (see grammar/rules/syntax/
affix-rules1.lisp). If the flag is down (nil) then all we do is interpret
the morphology (suffix) of the word as part of speech and add the set
of brackets that are assigned to such words by default. 

If the flag is up (t) then we call the same operations as used with
Comlex that create a category based on the word and set it up with
the usual set rules and bracket assignments (see, e.g., setup-common-noun).





