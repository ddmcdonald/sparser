;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "interface"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  January 2016

;; Initiated 1/2/16.

(in-package :sparser)

#| For the KQML expressions that TRIPS uses, the specification
of what to say will be given as an s-expression.

Whether we read it over a stream or are passed it fully formed
remains tbd, this assumes we get the entire s-exp using symbols
in the XXXX package.

Each s-exp corresponds to a single utterance. An acknowledgement
followed by an elaboration is two utterances so we don't have
to worry about combining them.

The first thing in the s-exp is a symbol indicating the speech
act to make. For something like Confirm that could be sufficient.
Any elaborations to the speech act should follow it.

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
recursively handle arguments before we handle the 
|#