Notes on COMLEX
Version 6/2/14

Comlex is the "common lexicon" developed for DARPA at NYU.
Comlex has information about parts of speech, irregulars, and 
subcategorization. We are presently not using the subcategorization
information but will be shortly.

In 2011, a summer intern, Pedro Pastrana Camacho, brought over
the complete lexicon and massaged it in a set of files that 
could be loaded into lisp. (See grammar/rules/words/one-offs/,
which also has word lists from LinGO's ERG grammar.) The result
was the file one-offs/comlex-def-forms.lisp, which consists of
as series of calls to the function def-word. For instance, here is
their definition for the word "abstract", which they analyzed as
being three-ways ambiguous. 

(def-word "abstract" 
   (:comlex (verb
             (:subc ((np-pp :pval ("from")) (np)))) 
            (noun
             (:features
              ((countable)))) 
            (adjective
             (:features
              ((gradable))))))

The meaning of their terms and other conventions is defined in a 
set of papers we copied into the nlp repository. (One substantive 
flaw with Comlex is that it doesn't include an frequency or genre 
information, so we have no way to get a preference for one of the 
three senses over another from just this resource.)

This lexicon has roughly 53k words in it, which makes it unreasonable
to have it loaded all of the time. Instead we load word by word
when we encounter one of its words during a parse. This is arranged by 
the operations in the include-comlex switch setting:

(defun include-comlex ()
  (setq *incorporate-generic-lexicon* t)
  (what-to-do-with-unknown-words :check-for-primed)  
  (establish-version-of-def-word :comlex)
  (unless *comlex-word-lists-loaded*
    (load-comlex))
  (unless *comlex-words-primed*
    (prime-comlex)))

The what-to-do-with-unknown-words is pretty self explanatory.
The def-word macro is defined in words/one-offs/def-word.lisp. It is
a switched function, whose definition is fixed by the value that's
passed to establish-version-of-def-word. The value :comlex sets up
the function to be prime-word-from-comlex defined in the file 
words/comlex-priming.lisp. 

The function load-comlex sets up category-specific hash tables with
names like *is-an-adjective-in-comlex* that are used to support the
predicate is-in-comlex? Files in one-offs with names such as
comlex-adjectives.lisp support this data, and are part of an ordinary 
load of Sparser.

The function prime-comlex sets up the table we use for deploying this
lexicon only as we need it. It loads comlex-def-forms.lisp which
executes all of the def-word forms in it and populates the table. 
The work is done by prime-word-from-comlex which reads the raw entry
form and does some preprocessing before making its entry in the table.
Primarily what is does is ignore information that we're not presently
able to use, such as the classification of an adjective.

The function establish-unknown-word (see objects/chart/words/lookup/
switch-new1.lisp for the switched function setup) consults this table when
the tokenizer process encounters an unknown word (a word that has no
rules or other information associated with it, see (unknown-word?).
The alternatives are in objects/chart/words/lookup/new-words4.lisp. 
For Comlex we use the function look-for-primed-word-else-all-properties. 

This routine passes numbers to their usual handler (nearly all digit sequences
are unknown), and otherwise looks to see whether the new word has an
entry in the table *primed-words*. If it does, the processing continues
with unpack-primed-words (see grammar/rules/brackets/comlex-unpacking.lisp),
otherwise it uses the normal make-word/all-properties function. 

When used with its priming definition, the def-word macro just loads
the *primed-words* hashtable with a mapping from the word (as a symbol
created by make-word-symbol) to the s-expression that makes up its
(somewhat simplified) Comlex entry. The unpack function is faced with
an expression such as this:

(gethash "netted" *primed-words*)
=> 
(:comlex "net"
 (verb
  (:tensed/singular "nets" :infinitive "net" :present-participle
   "netting" :past-tense "netted")
  (:subc ((np))))
 (noun) 
 (adjective))

Unpack-primed-word starts by making a proper word object and continues
with a first level distinction between words that are ambiguous and those
that are not. The simple case is unambiguous-comlex-primed-decoder where
for each possible Comlex part of speech (noun, verb, adjective, adverb,
prep, sconj, and all the others) it calls a matching 'setup' operation.

If the parameter *edge-for-unknown-words* is set, then we make a category,
referent, and single-term rule for the word. Presently it's set by default.
Otherwise we just assign the word its POS-appropriate set of brackets,
e.g. with assign-brackets-to-adjective (see grammar/rules/brackets/
assignments.lisp). The full processing is done by a function like 
setup-adjective (also in the assignments file). 

For the ambiguous cases, we first identify which combination we have
(see ambiguous-comlex-primed-decoder), and then make a set of 'setup'
calls, one for each POS, all with the function's 'ambiguous?' flag set.

Here is a typical example of a setup function.

defun setup-common-noun (word comlex-clause 
                         &optional ambiguous?)
  (let ((marked-plural (explicit-plurals comlex-clause))
        (category-name (name-to-use-for-category word))
        (super-category (super-category-for-POS :noun)))
    (when ambiguous?
      (setq category-name
            (construct-disambiguating-category-name
             category-name super-category)))
    (when (category-named category-name)
      (push-debug `(,category-name ,word ,comlex-clause))
      (error "Setup: The category named ~a already exists."
             category-name))
    (let* ((category (define-category/expr category-name
                        `(:specializes ,super-category
                         :instantiates :self)))
           (rules
            (make-cn-rules/aux ;; we don't need to decipher the 'word'
             word
             category ;; lhs
             category ;; referent
             marked-plural)))
      (mark-as-constructed-category-for-word category super-category)
      (add-rules-to-category category rules)
      category)))

It digs further into the comlex-clause to look for irregular forms
("ox" "oxen"). Then it consults a simple function to come up with
a name for the category (based on the word), and another to supply
a super-category (very high up in the taxonomy). If the word is 
ambiguous it revises the category name to reflect the distinction 
by appending the name of the super-category to it.

If that category name is already in use, it usually means that the model
has a definition for a very general category ('time') but it hasn't
been associated with a word. We deal with these as we encounter them,
and the treatment thus far has been to go to the conflicting category
and add the word there.

Finally the function creates a category to serve as the new word's
referent (extremely shallow meaning) and a unary rule to go with it.


