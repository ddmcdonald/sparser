;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "test-messages"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  March 2016

;; Initiated 1/2/16.

(in-package :mumble)



;;;--------------------------------------------------
;;; The canned messages for Dialog-1, and their form
;;;--------------------------------------------------

#| For the KQML expressions that TRIPS uses, the specification
of what to say will be given as an s-expression.

Whether we read it over a stream or are passed it fully formed
remains tbd, this assumes we get the entire s-exp using symbols
and we'll have to appreciate their package. However there's now
an operation at the beginnng of the specification processing that
launders all the symbols into the mumble package. 

Each s-exp corresponds to a single utterance. An acknowledgement
followed by an elaboration is two sexp just so we don't have
to worry about combining them. (That's a separate problem we
can put off till after the PI meeting perhaps?)

The first thing in the s-exp is a symbol naming the speech
act to make. For something like Confirm that could be sufficient
to provide a basis for selecting a text to say.
.
Any elaborations to the speech act should follow it. The general
story on elaborations would be to take Ed Hovy's thesis as the
starting point and see whether any old code can be repurposed.

The content of the utterance is self-contained in its own s-exp.
It's not clear yet whether annotations on that should be done
as operators around the core content or should follow the s-exp
for the core.

Core expressions correspond to clauses. The are expressed as if
they were keyword-based function calls (so we don't have to worry
about which argument is which).

Speech acts that are directives will come out as imperatives 
and we don't have to include the "you" portion. That fact is burned
in rather than deliberated and corresponds to making them commands

|#
; build a staircase

(defparameter utt-1.1 '(propose-goal friendly
                         (build :artifact (a staircase))))

#| To handle embedded terms like (any staircase) we need to 
recursively handle arguments before we handle the operator,
just like function application. Though that won't work if we
need the operator's resource to determine the context in which
the argument is going to be realized.

1. Keyword arguments
  To decode them we need to have the Krisp class of the operator
('build'), look up the correspondence of the variable ('artifact')
to a parameter of the phrase, and of course look up the phrase
itself. (Or choice of alternative phrases/resources with some
selection criteria)

  As a shortcut, given that all that's needed are commands,
could use positional arguments, interpreted as the post-verbal
constituents. And can punt the "a" operator by taking the
default to be indefinite determiners (i.e. no semantics to speak of).
|#


(defparameter utt-1.1a '(propose-goal friendly (build :o staircase)))
; (sexp-reader utt-1.1a)

#| Alternative expedient 'direct to resources' scheme:
a. We look at the car of the sexp, see the symbol 'build, and
 retrieve its lexicalized tree using it's pname as the key to
 get-lexicalized-phrase. That's a clause open in s and o. 
b. Make a dtn based on that resource
c. We 'just know' that we're making a command so we have a function
 take a dtn and bind the subject to the pronoun as in build-a-
 staircase. 
d. An operator like 'build' can take any number of 
 phrase-level parameters (:o) / value pairs. 
 
|#

;; N.b. the 'a' or 'any' operator isn't actually being used.
;; Without yet being able to tie what we say to their subsequent
;; action, I've just cut a corner.

(defparameter utt-2 
   '(propose-goal (put :o1 block :o2 (location on :the-table))))
; (sexp-reader utt-2)

(defparameter utt-3a '(acknowledge)) ;; "ok"
(defparameter utt-3b '(good-job)) ;; as if spoken to a dog or child


(defparameter utt-3c 
  '(perform (push-together :o (collection :b1 :b2))))

#| This is the final thing we say. It's in reply to the
question "Like this?" said after they've pushed the blocks
together. Our use of "that" (in "That's good") is to refer
to the same thing they referred to with "this", which is
the configuration of blocks they've just created. Alternatively
it might be a reference to the action they just took.
Question is how to motivate the demontrative pronouns. 
The "this" vs. "that" might just be perspective and which
person is making the reference. (near vs. far)
|#
(defparameter utt-4 '(confirm-did-right-thing)) ;; punting on real treatment


;;;--------------------------------------------------------------------------
;;; whole dialog as smoke test. Notice by-hand context for user's utterances
;;;--------------------------------------------------------------------------

; (test-dialog-1)
(defun test-dialog-1 ()

  (initialize-nlg-discourse-history)

  ;; 1. :me "Let's build a staircase."
  (say (sexp-reader utt-1.1a)) ;; Mumble initialization starts a turn

  ;; 1. :you "OK"
  (start-next-turn :speaker sp::*you*) ;; but these we need to do explicitly

  ;; 2 :me "Put a block on the table."
  (say (sexp-reader utt-2))

  ;; 2 :you "Here are two."
  (start-next-turn :speaker sp::*you*)
  (record-unadorned-mention *b1*)
  (record-unadorned-mention *b2*)
  (record-unadorned-mention *the-two-blocks-he-put-down*)
  (set-the-focus *the-two-blocks-he-put-down*)

  ;; 3 :me "Ok. Good. Push them together."
  ;;(say (sexp-reader utt-3a))
  ;;(say (sexp-reader utt-3b))
  ;;  First good reason to create a text structure out of these
  ;;  three 'things to say'.   Mechanically, since each call to
  ;; sexp-reader initiates a new turn, and focus is properly
  ;; defined as a fact about the previous turn, making these
  ;; spurious extra turns moves the one with the focus statement
  ;; too far away and the collection strategy fails (errors out)
  ;; because it's just got that one option at the moment.
  (say (sexp-reader utt-3c))

  ;; 3 :you "Like this?"
  (start-next-turn :speaker sp::*you*)


  ;; 4 :me "That's good."
  (say (sexp-reader utt-4)))

