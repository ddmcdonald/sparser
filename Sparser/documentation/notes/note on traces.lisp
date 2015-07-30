(in-package :sparser)

;; Note on Sparser code tracing system
;; version of 9/15/14

Sparser has a system for conditional traces. They are defined
by a special form called deftrace. These forms are clustered
into files according to their function. For example the file
objects/traces/pronouns.lisp contains all of the traces that
track what's happening with pronouns. They all share a standard
pattern, e.g. 

(deftrace :decoding-definite-reference-to (head)
  ;; called from dereference-DefNP
  (when *tracing-pronouns*
    (trace-msg "[defNP] Looking for a ~a" head)))

The trace-msg form is basically just a format statement 
that takes arguments in the normal way while adding
a ~& and ~% around your string so that messages prints
to its own line. 

All traces are gated on a global parameter, in this case
it's the symbol *tracing-pronouns*. With a very few exceptions
in ancient code, every trace parameter like this goes with
a pair of funtions that turn it on or off.

(defun trace-pronouns ()
  (setq *tracing-pronouns* t))

(defun untrace-pronouns ()
  (setq *tracing-pronouns* nil))

You invoke these function from the listener as a normal
function call, and you only do it when you're debugging and
want to see what's going on, as leaving a trace on puts
and enormous drag on runtime largely because of the overhead
of writing to *standard-out*. 

=========

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

which happens to almost the right answer. Which is why we debug.



========== How to find the traces for your problem

If you don't know where to look, you can start by taking an instance
of a trace call in the code you're investigating, say it is

    (tr :ns-scanned-punctuation word)

in the uniform-scan code. Copy the keyword to the Lisp listenr,
replace the initial colon with the string "trace-" 

? trace-ns-scanned-punctuation

That gives you the name of the actual function which you can access 
via meta-. in the usual way. 
