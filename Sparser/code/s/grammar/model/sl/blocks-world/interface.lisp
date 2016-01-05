;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "interface"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  January 2016

;; Initiated 1/2/16.

(in-package :mumble)

#| For the KQML expressions that TRIPS uses, the specification
of what to say will be given as an s-expression.

Whether we read it over a stream or are passed it fully formed
remains tbd, this assumes we get the entire s-exp using symbols
in the t.b.d. package. 

Each s-exp corresponds to a single utterance. An acknowledgement
followed by an elaboration is two sexp so we don't have
to worry about combining them.

The first thing in the s-exp is a symbol indicating the speech
act to make. For something like Confirm that could be sufficient.
Any elaborations to the speech act should follow it. The general
story on elaborations would be to take Ed Hovy's thesis as the
starting point and see whether any old code can be repurposed.

The content of the utterance is self-contained in its own s-exp.
It's not clear yet whether annotations on that should be done
as operators around the core content or should follow the s-exp
for the core.

Core expressions correspond to clauses. The are expressed as if
they were keyword-based function calls (so we don't have to worry
about which argument is which.

Speech acts that are directives will come out as imperatives 
and we don't have to include the "you" portion. 

|#

;; build a staircase

(defparameter utt-1.1 '(Propose-goal friendly
                         (build :artifact (any staircase))))

#| To handle embedded terms like (any staircase) we need to 
recursively handle arguments before we handle the operator,
just like function application.

1. Keyword arguments
  To decode them we need to have the Krisp class of the operator
('build'), look up the correspondence of the variable ('artifact')
to a parameter of the phrase, and of course look up the phrase
itself. (Or choice of alternative phrases/resources with some
selection criteria)

  As a shortcut, given that all that's needed are commands,
could use positional arguments, interpreted as the post-verbal
constituents. And can punt the "any" operator by taking the
default to be indefinite determiners (no semantics to speak of).
|#

(defparameter utt-1.1a '(Propose-goal friendly
                         (build staircase)))

#| Expedient 'direct to resources' scheme 
a. We look at the car of the sexp, see the symbol 'build, and
 retrieve its lexicalized tree using it's pname as the key to
 get-lexicalized-phrase. That's a clause open in s and o. 
b. Make a dtn based on that resource
c. We 'just know' that we're making a command so we have a function
 take a dtn and bind the subject to the pronoun as in build-a-
 staircase. 
d. We expect just a cadr ('staircase) in the sexp. So we pull
 that out.
e. The symbol is the referent (for the nonce) and we apply a
 purpose-build function to wrap it in kind, singular, and then we
 apply it to the only remain 'o parameter. 
|#

(defun hack-sexp-reader (sexp)
  "sexp in, dtn out"
  (let ((speech-act (car sexp)))
    (if (standalone-speech-act speech-act)
      (do-standalone-speech-act speech-act)
      (let ( elaborations core )
        (loop for item in (cdr sexp)
          when (symbolp item) do (push item elaborations)
          when (consp item) do (setq core item))
        (push-debug `(,core ,elaborations))
        
))))

(defmethod standalone-speech-act ((speech-act symbol))
  (memq speech-act '(acknowledge)))

(defun do-standalone-speech-act (speech-act)
  speech-act)



