(in-package :sparser)

;; Note on Sparser code tracing system
;; version of 9/15/14

Sparser has a system for conditional traces. They are defined
by a special form called deftrace. These forms are stored in
files according to their function. For example the file
objects/traces/pronouns.lisp contains all of the traces that
track what's happening with pronouns. All trace functions
share a standard pattern, e.g. 

(deftrace :decoding-definite-reference-to (head)
  ;; called from dereference-DefNP
  (when *tracing-pronouns*
    (trace-msg "[defNP] Looking for a ~a" head)))

The trace-msg form is basically just a format statement 
that takes arguments in the normal way while adding
a ~& and ~% around your string so that messages prints
on its own line. 

All traces are gated on some global parameter, in this case
it's the symbol *tracing-pronouns*. With a very few exceptions
in ancient code, every trace parameter comes with a pair of
functions that turn it on or off.

(defun trace-pronouns ()
  (setq *tracing-pronouns* t))

(defun untrace-pronouns ()
  (setq *tracing-pronouns* nil))

You invoke these function from the listener as a normal
function call, and you only do it when you're debugging and
want to see what's going on.

Trace functions are relatively low overhead check, just an
access to a global variable to see whether it is nil or not.
If you wanted to avoid even that much, the generated trace
functions are individually gated on this master switch variable.
    *allow-tr-tracing*

The details of the code for traces is in objects/traces/
trace-function.lisp


========= Useful sets of traces

## k-methods
By convention we add a trace-statement to every k-method
and these are turned on by (trace-methods).  Most of these
are variations on the 'compose' method (in syntactic-functions
like make-pp) so there is a set of traces to pick up those
cases too: (trace-composition).

## unknown words -- trace-unknowns
(trace-unknowns) is a composite of the traces for words introduced
by their morphological structure, the reports from find-word
and the handling unknown words, particularly looking them up in
Comlex.

sp> (trace-unknowns)
t
sp> (p "Three camels coming for grass under the bed every January 5th")
[find] "camels" no symbol. Completely unknown
*** defining new word #<word "camels">
[unknown] Comlex-entry: (comlex camel (noun (features ((countable pval (by))))))
[find] "coming" no symbol. Completely unknown
*** defining new word #<word "coming">
[unknown] Comlex-entry: (comlex come (adjective)
                         (noun (features ((countable))))
                         (verb
                          (tensed/singular comes infinitive come past-tense
                           came)
                          (features ((vmotion)) subc
                           ((advp) (pp-pred-rs pval (to)) (adjp-pred)
                            (p-ing-sc pval (into)) (pp-pp pval (from to))
                            (to-inf-sc)
                            (pp pval
                                (after off out of to under from into of with))
                            (part-pp adval (down in around back over up on)
                             pval (for from on to with))
                            (part adval
                             (along in about around back over out to up))
                            (intrans)))))
[find] "grass" no symbol. Completely unknown
*** defining new word #<word "grass">
[unknown] Comlex-entry: (comlex grass (verb (subc ((np) (intrans)))) (noun))
[find] "bed" no symbol. Completely unknown
*** defining new word #<word "bed">
[unknown] Comlex-entry: (comlex bed
                         (verb
                          (tensed/singular beds infinitive bed
                           present-participle bedding past-tense bedded)
                          (subc
                           ((part-np-pp adval (down) pval (for)) (np-advp)
                            (np))))
                         (noun (features ((countable pval (in))))))
[find] no rule set for "january"
       but #<word "January"> has one
*** defining new word #<word "th">
[unknown] morph-keyword: nil
[Three camels ][coming ]for [grass ]under [the bed every January ]5th

                    source-start
e31   CAMEL         1 "Three camels coming for grass under the bed every January " 11
e32   ORDINAL       11 "5th" 13
                    end-of-source


## Rules -- trace-multiply
The core of applying any sort of rule in the 'multiply-edges' function
that accesses the rule index that binary rules of every sort are
mapped into. A rule you think should have run might not actually exist
or may have been blocked on semantic or formal grounds.

Given "... [every January] [5th] ..." as edges 23 and 21
sp> (trace-multiply)
t
sp> (multiply 23 21)
Checking e23+e21
No rule based on semantic labels
[form] Looking for form rules to compose e23 with e21
[form] at least one of the edges' form labels composes with category-labels
[form] there is no form rule that combines e23 and e21
[form] neither form label has a category combination
No form rule
[syn] Looking for purely syntactic combinations
[syn] Both form labels (n-bar quantifier) have form ids
[syn] which compose (psr-318)
 Found syntactic rule #<PSR-318 np → {n-bar quantifier}>
[subcat-test] Does psr-318 pass the subcat-test in allowable-post-quantifier?
     with arguments  #<month "January" 4145> and #<position-in-a-sequence 4140> ?
[subcat-test]  no
 it's not valid
nil



## Miscellaneous

(trace-digits-fsa)

(trace-pnf)

(trace-chunker)
(trace-early-rules)


========= Placing traces

You put a call to a trace wherever you want, usually the 
purpose is to track the progress of an extended operation as
it passes from function to function, or to show the values of
key variables or objects. This is an excerpt from the function
dereference-DefNP. 

    (let ((discourse-entry (discourse-entry category-to-look-for)))
      (if discourse-entry
        (tr :defnp-category-has-entry)
        (tr :defnp-no-entry))

The trace is invoked with the macro tr, followed by the keyword
that defines the trace and then any arguments the trace wants.

For example, I did this
? (trace-pronouns)
t
? (cells-defNP)
[braf][ is not active] and [ is not required] for [ mek/erk activation]
in [ ras mutant cells]
[nevertheless], [ braf inhibitors][ hyperactivate][ craf and mek] 
in [ these cells]
[defNP] Looking for a #<cell-line 5346>
[defNP]   It has an entry in the discourse history
[defNP]   returning #<cell-line 6589>

which happens to be almost the right answer. Which is why we debug.



========== How to find the traces for your problem

If you don't know where to look, you can start by taking an instance
of a trace call in the code you're investigating, say it is

    (tr :ns-scanned-punctuation word)

in the uniform-scan code. Copy the keyword to the Lisp listenr,
replace the initial colon with the string "trace-" 

? trace-ns-scanned-punctuation

That gives you the name of the actual function which you can access 
via meta-. in the usual way. /// 6/18/19 -- actually it doesn't.
The macro has to be rewritten to make that possible.
