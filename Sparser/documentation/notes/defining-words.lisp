(in-package :sparser)

;; Note on defining-words -- particularly w.r.t. capitalization
;; version 5/7/19

The notion of what a word is nicely describe in the 3d chapter of the
manual: documents/manual/3.Labels.pdf. Here we're looking at the
paths through the code.

We normally use the 'resolve' code in objects/chart/generics/resolve.lisp

(resolve "string")
  Returns the word with the pname "string" if it already exists

(resolve/make "asdfa")
  Returns the existing work if it exists or makes it if it doesn't

resolve/make calls resolve-string-to-word/make,
which is in objects/chart/words/resolve.lisp
Here we the distinction between words and polywords.
The characters in the print name of a polyword by definition are not
all the same character type, typically alphabetics with spaces.

Also, resolve-string-to-word/make is sensitive to the global flag
*force-case-shift*. If the flag is up it will have one of the values
:lowercase or :uppercase and transforms the string accordingly.

Like it describes in chapter 3 of the manual, words are defined to be
case-sensitive. Assuming there is no forced case shift, these return
distinct (not EQ) word objects.
  (resolve/make "may")
  (resolve/make "May")

The next step is define-word/expr (in chart/words/def-form.lisp).
It uses the tokenizer's machinery to make the word and its symbol.
Then catalog/word knits the word object into various lists and sets
its symbol to the word. For example.

sp> (resolve "Christmas")
nil
sp> (resolve/make "Christmas")
#<word "Christmas">
sp> (d *)
#<word "Christmas">
  [structure-object]
Slots with :instance allocation:
  plist                    = nil
  symbol                   = word::|Christmas|
  rule-set                 = nil
  pname                    = "Christmas"
  morphology               = nil
  capitalization           = :initial-letter-capitalized
  capitalization-variants  = nil
#<word "Christmas">

The symbol for the word is in the 'word' package, and it has the same
capitalization as the word, so you have to use the vertical bar
characters to refer to it.

sp> word::|Christmas|
#<word "Christmas">

After defining the word object for the string, define-word/expr uses
another piece of the tokenizer's machinery to look for 'properties' of
the word, which essentially is a keyword describing its capitalization
and stashing it in its capitalization field. Any more interesting
morphology is done for unknown new words as part of the process of
giving them as much grammatical information as possible, which is a
different note.

Finally define-word/expr calls do-word-canonical-form, and that's
where its gets interesting, since we have to bring the operations of
the tokenizer into consideration. But in short, what this function
does, when it is passed a word that it not all lowercase, say "NeXT"
(the name of Steve Job's other company), is to define an additional
word where the capitalization is all lower cases and then cross-link
the two.

So if this is were we start

(iw "next")  
#<word "next">
  [structure-object]

Slots with :instance allocation:
  plist                    = (:function-word #<ref-category ADVERB> :grammar-module..
  symbol                   = word::|next|
  rule-set                 = #<rule-set for #<word "next">>
  pname                    = "next"
  morphology               = nil
  capitalization           = :lower-case
  capitalization-variants  = nil

Then do this to make the capitalization variant of "next"

sp> (resolve/make "NeXT")
  0: (do-word-canonical-form "NeXT" #<word "NeXT">)
  0: do-word-canonical-form returned (#<word "next">)
#<word "NeXT">
sp> (d *)
#<word "NeXT">
  [structure-object]

Slots with :instance allocation:
  plist                    = nil
  symbol                   = word::|NeXT|
  rule-set                 = nil
  pname                    = "NeXT"
  morphology               = nil
  capitalization           = :mixed-case
  capitalization-variants  = (#<word "next">)
#<word "NeXT">

We get a new word object, and we get a link back to the original
version of "next" in the capitalization-variants field.

This is cross-linked back to the original word object, since if we now
look at it we get this.

sp> (iw "next")
#<word "next">
  [structure-object]

Slots with :instance allocation:
  plist                    = (:function-word #<ref-category ADVERB> :grammar-module..
  symbol                   = word::|next|
  rule-set                 = #<rule-set for #<word "next">>
  pname                    = "next"
  morphology               = nil
  capitalization           = :lower-case
  capitalization-variants  = (#<word "NeXT">)
#<word "next">

