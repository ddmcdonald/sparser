(in-package :sparser)

;; Note on tokenizing and word morphology
;; version 7/28/14. Revised 8/20/21

We tokenize the input character source incrementally as we populate the chart. In the standard arrangement, the populating happens when initiate-successive-sweeps, the driver for the whole analysis, makes a call to scan-sentences-and-pws-to-eos.
(These functions are in no-brackets-protocol.lisp and multi-scan.lisp respectively, both in drivers/chart/psp/.)

The function that sets tokenizing process in motion is scan-next-position (in analyzers/psp/scan/scan.lisp). Scan-next-position identifies the position it is to fill from a set of state variables that are wrapped in a set of functions such as the-next-position-to-scan.

Scan-next-position calls add-terminal-to-chart. That gets that terminal by calling the function next-terminal, which returns a word. Note that 'tokens' in Sparser are always word objects, even spaces and punctuation.

When next-terminal returns with the next word, add-terminal-to-chart puts in into the chart. This is a moderately elaborate procedure since we need to distinguish the different sorts of word since they go in different places. Whitespace is represented as words, and it goes onto the 'preceding-whitespace' field of the position. Newlines are handled specially (see sort-out-result-of-newline-analysis as called from add-terminal-to-chart). Every other kind of word returned from next-terminal is passed through bump-&-store-word.

Bump-&-store-word (in analysers/psp/fill-chart/store.lisp) is responsible for managing all the state variables that govern the state of the chart and our location in the source character stream. The function was called with the position and the word to put there, and it uses the current state to set up all the fields of the position. It puts the word in the 'terminal' field of the position. It sets the 'capitalization' field to the capitalization that was computed by the token-fsa -- *capitalization-of-current-token*. The character-index field is computed at this point taking into account the possibility that the character-array has switched to its alternative array, but it is essentially the array-cell index of the next character (where we'll start when we want the word after this one) minus the length of the word.


The guts of the tokenizer is run-token-fsa. (Next-terminal calls new-token which calls run-token-fsa -- rather Baroque but don't ask until you've looked at the code.) To Sparser, a token is comprised on a run of a particular character type -- contiguous alphabetic characters or contiguous digits. Punctuation characters are different in that each one is taken a token by itself and we don't group them at this level, we use rules while parsing. When the next character is not of the same type as what we've been accumulating, we terminate the ongoing token and setup to get the next token. 

The token fsa works one character at a time. It accesses the next character from the *character-buffer-in-use* array indexed on *index-of-next-character* which it increments before using it. It looks for an 'entry' for the character by calling character-entry (which deserves a note for itself. Look in analyzers/tokenizer/alphabet-fns.lisp).

The entries for low range characters (e.g. ascii) are sorted in an array indexed by Lisp's numeric value for the character. These are all in analyzers/tokenizer/alphabet.lisp. Some examples:

(setf (elt *character-dispatch-array* 40)  ;; #\(
      `(:punctuation
        . ,(punctuation-named #\( )))

(setf (elt *character-dispatch-array* 57)  ;; #\9
      `(:number
        . (:digit . ,#\9 )))

(setf (elt *character-dispatch-array* 65)  ;; #\A
      `(:alphabetical
        . (:uppercase . ,#\a )))

(setf (elt *character-dispatch-array* 97)  ;; #\a
      `(:alphabetical
        . (:lowercase . ,#\a )))

Characters with higher numeric values have similar entries but are indexed on a simple table letting us create entries for an arbitrary number of characters (see the parameter *entries-for-out-of-band-characters*). 

If there is no entry, we've encountered a character that is not yet in 
Sparser's alphabet, perhaps a Greek character that's not yet been added. That leads to a call to announce-out-of-range-character which logs the new character by writing a message to the REPL. It then stores the character on an internal list we can handle afterwards (see write-lines-for-out-of-band-cache) and returns the entry for a space character to use in place of the unknown character.


The code for the fsa is in analyzers/tokenizer/token-fsa.lisp as three functions: Run-token-fsa is the start, and notices the cases of punctuation (calling do-punctuation), a character entry left over from the last token, and unknown characters.

Continue-token is for a sequence of characters of the same character type. It looks for punctuation or the shift in the character type that will demarcate the token. The global *pending-entry* is set when we switch character type and will get picked up on the next call to run-token-fsa. Otherwise we recurse on continue-token.

When we're done with the token (because we've detected a shift in type) we call finish-token. It loops over the list of accumulated entries and pushes them into the interning-array (a pointer to the global *word-lookup-buffer*), while calling the capitalization-fsa to work out the capitalization-state, which at the end is cleaned up and stashed on *capitalization-of-current-token*. Finish-token ends with a call to find-word in analyzers/tokenizer/lookup.lisp. The word returned by find-word is the value returned by the tokenizer.

