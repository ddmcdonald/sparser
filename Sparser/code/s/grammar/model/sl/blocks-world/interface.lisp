;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "interface"
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

;; build a staircase

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


;;;----------
;;;----------
;;; The code
;;;----------
;;;----------

(defvar *sentence-type* :statement ;;?? or sort out w/ predicates ??
  "Holds the toplevel type (loosely speaking) of the utterance
   (the sentence), e.g. :statement, :command, :question, etc. ")

(defvar *speech-act* nil
  "Holds the speech act for reference by embedded routines")


;;--- Entry point for 'messages' -- the sexps we expect TRIPS to route

(defun sexp-reader (sexp)
  "sexp in, dtn out"
  ;; 1st get the symbols in our package
  (setq sexp (launder-sexp-symbols-package sexp (find-package :mumble)))

  ;; 2. for specific individuals, retrive them from their keyword form
  (setq sexp (launder-sexp-to-dereference-keywords sexp))

  ;; 3. Switch from variables to parameters
;;///////////////  (setq sexp (launder-sexp-to-switch-to-parameters sexp))

  ;; 4. Start our turn
  (start-next-turn :speaker sp::*me*)

  (let* ((speech-act (car sexp))
         (*speech-act* speech-act))
    (declare (special *speech-act*))
    (if (standalone-speech-act speech-act)
      (do-standalone-speech-act speech-act)
      (let ( elaborations core )
        ;; e.g. (propose-goal (put :o1 block :o2 (location on :the-table)))
        (loop for item in (cdr sexp)
          when (symbolp item) do (push (mumble-symbol item) elaborations)
          when (consp item) do (setq core item))

        (let ((dtn (interpret-sexp-core core)))
          ;; interpret the core sexp to produce a DTN

          ;; Does the speech act dictate the large-scale form
          ;; of the utterance? Do the elaborations modulate or
          ;; add to that?
          (setq dtn (instantiate-speech-act dtn speech-act elaborations))

          ;; Wrap the whole thing in a sentence. 
          ;;/// this is the wrong level to do this at, since in the
          ;; interesting cases we have several sexp and need to provide
          ;; a discourse structure to embed them in or for that matter,
          ;; however, to fold one element within the realization of another
          ;; like the "however" in this sentence
          (discourse-unit dtn))))))


(defun interpret-sexp-core (core-sexp) ;; (build :o staircase)
  (let* ((operator (car core-sexp))
         (pairs (cdr core-sexp))
         (phrase (get-lexicalized-phrase operator)))
    (unless phrase
      (error "Undefined term? Cannot retrieve a lexicalized ~
              resource for the operator ~a" operator))
    (let ((dtn (make-dtn :resource phrase
                         :referent core-sexp)))
      ;; fill the variables, constructing DTNs for their values
      (recursively-expand-tree dtn pairs)
      ;; To do: If any remain unbound, see if the context permits it
      dtn)))


#| Walk through the paramter assignments and look at the
values. One of the goals is to ensure expressibility, but
that isn't really going to work without adopting something
more along the lines of McDonald 1998 and McDonald & Greenbacker 2010. 
  For CwC the values are unlikely to be deep, so the
'recursive' part of this routine can probably be ignored.
For now just worry about the planning of references.
|#
(defun recursively-expand-tree (dtn parameter-value-plist)
  ;; Here we'd keep track of the relation to the DTN of
  ;; the value we're realizing ('expanding'). And its place
  ;; in the context of the discourse too. 
  (do ((parameter-name (car parameter-value-plist) (car rest))
       (value-exp (cadr parameter-value-plist) (cadr rest))
       (rest (cddr parameter-value-plist) (cddr rest)))
      ((null parameter-name))
    (let ((parameter (parameter-named 
                      (mumble-symbol parameter-name))) ;; flush keyword
          (value (expand-value value-exp))) ;; does all the work
      (make-complement-node parameter value dtn))))


#| Symbols are assumed to be the names of categories and
are realized as indefinite nps ("a block") [[ a/any goes here ]]
Real things in the world such as particular blocks or the table 
are represented by their Krisp individuals. Lists are for locations
or collections.
|#
(defun expand-value (value-exp)
  (typecase value-exp
    (cons
     (plan-reference-to-composite value-exp)) ;; dispatch
    (symbol
     (assert (sparser::category-named value-exp))
     (plan-reference-to-category value-exp))
    (sparser::individual
     (plan-reference-to-individual value-exp))
    (otherwise
     (error "Unanticipated type of value expression: ~a~%~a"
            (type-of value-exp) value-exp))))


#| At least in the blocks world, a reference to a category
is effectively a reference to a individual instance of it
that may or may not exist. E.g. we could be building it
or (inside 'a') we don't care which one we get.

But we need to check for this sort of context because a shorter,
more contextually appropriate / fluent phrase may be better
 1. Have individuals of this sort already been mentioned?
    "another one", "another block", "(do you have) one?"
 2. Was that reference recent or long ago? 
 3. Is this category salient / in focus ?
|#
(defun plan-reference-to-category (category-name)
  (let ((category (sp::category-named 
                   (sparser-symbol category-name) :break-if-none))

        ;; first check if there is a mention of this category
        ;; in the recent discourse => "another one", "one more"
        (assumed-types (assumed-object-types)))

    (cond
     ((memq category assumed-types)
      (plan-how-to-use-One category))

     (t
      ;; Otherwise lookup the tree. Here we're just presuming
      ;; that we're getting an NP. We could probably confirm
      ;; it by knowledge that would be stored on the clause's
      ;; phrase and the current argument that organizes parsing
      ;; Of course, though, if we guarenteed that this is 
      ;; a category we're realizing then we only get into trouble
      ;; with verbal complements or other sorts of embedded clauses.
      (let* ((phrase (get-lexicalized-phrase category-name))
             (dtn (make-dtn :referent category ;; the Krisp object
                            :resource phrase)))
        ;; No we need to add the information that various 
        ;; pronoun and agreement functions what to have.
        ;; This is world knowledge, so we ought to be able
        ;; to stash it in the ontology and query for it.
        (neuter-&-third-person dtn)
        (singular dtn)
        
        ;; If this is the first mention, then use an indefinite,
        ;; on the other hand a later mention will be in a context
        ;; that will likely move us down the "one" path.
        ;; In any event this is Mumble's operator
        (initially-indefinite dtn)

        ;; Add our choice to the discourse history
        (record-use-of-object-type category)

        dtn)))))

(defun plan-how-to-use-One (category)
  "Return a dtn with the word 'one' as its resource and the
  category as its referent. The question is what's going one
  when the correct thing to say is 'another one' or 'one more'
  and where/when does that additional term come in?"
  (record-use-of-object-type category) ;; but it's not quite as strong (????)
  (let ((dtn (make-dtn :referent category
                       :resource (mumble-value 'replacitive-one/singular 'pronoun))))
    ;; See QGSL #6.55 for 'substitute one' I think we can just
    ;; use the pronoun and it will be understood correctly
    (neuter-&-third-person dtn)
    (singular dtn)
    dtn))


;;--- specific individuals -- corresponding to particulars in the scene

(defun plan-reference-to-individual (i)
  (cond
   ((unique? i) ;; "the table"
    (plan-the-category i))
   (t (error "Don't yet have a way to refer to ~a" i))))

(defun plan-the-category (i)
  "Describe the individual as a definite reference to its category."
  (let* ((category (sp::itype-of i))
         (phrase (get-lexicalized-phrase
                  (symbol-name (sp::cat-symbol category))))
         (dtn (make-dtn :referent i
                        :resource phrase)))
    (assert phrase)
    (always-definite dtn)
    dtn))


(defun plan-reference-to-composite (sexp)
  (let ((operator (car sexp)))
    (assert (member operator '(location collection)))
    (ecase operator
      (location
       (plan-reference-to-prepositional-location sexp))
      (collection ;; (collection ,*b1* ,*b2*)
       (create-collection-and-refer-to-it (cdr sexp))))))


(defun create-collection-and-refer-to-it (items)
  "The arguments are expected ot be Krisp individuals.
  We find-or-make their collection and then make a
  DTN. If the collection is in focus we pronominalize,
  otherwise we enumberate them."
  (let ((collection (sp::find-or-make-individual 'sp::collection
                                                  :items items))
         (dtn (make-dtn :referent collection)))
    (push-debug `(,collection ,items))
    (plan-reference-to-collection collection)))

(defun plan-reference-to-collection (collection)
  (cond
   ((in-focus? collection)
    (let ((dtn (make-dtn
                :referent collection
                :resource (mumble-value 'third-person-plural 'pronoun))))
      ;; history done by general-np-bundle-driver
      dtn))
   ;; How do we decide between describing the collection
   ;; and enumerating it?

   (t ;; "the (two) blocks" 
    ;; Can omit the count is it's known
    ;; Can use just the number if the fact of the collection is known
    (let* ((type (sp::value-of 'sp::type collection))
           (count (sp::value-of 'sp::number collection)) ;; simple Lisp number
           (phrase (get-lexicalized-phrase
                    (symbol-name (sp::cat-symbol type))))
           (dtn (make-dtn :referent collection
                          :resource phrase)))
      (plural dtn) ;; "blocks"

      ;; If we want to omit the number, that goes here.
;      (let ((number (reference-to-a-number count)))
;        ;; now we have to set it up to attach as a determiner
;        number)

      dtn))

     ;; enumeration -- e.g. for the drugs in BioC dialog
     (t (error "No defined collection strategy applied"))))




;; (location on ,*the-table*)
(defun plan-reference-to-prepositional-location (sexp)
  (let* ((prep-pname (cadr sexp))
         (prep (find-word prep-pname))
         (comp-sexp (caddr sexp))
         (comp-dtn (expand-value comp-sexp)))
    (assert prep)
    (assert comp-dtn)
    ;; build the pp by hand. When parsing we can have
    ;; prepositions that project typed complements
    ;; but before that there's no point in reifying them
    (let* ((phrase (phrase-named 'pp))
           (dtn (make-dtn :referent sexp :resource phrase))
           (c-prep (make-instance 'complement-node
                     :phrase-parameter (parameter-named 'p)
                     :value prep))
           (c-comp (make-instance 'complement-node
                     :phrase-parameter (parameter-named 'prep-object)
                     :value comp-dtn)))
      (push c-prep (complements dtn))
      (push c-comp (complements dtn))
      dtn)))

  


;;;-------------
;;; speech acts
;;;-------------

;;--- self contained. Might include "but"

(defmethod standalone-speech-act ((speech-act symbol))
  (memq speech-act '(acknowledge good-job confirm-did-right-thing)))

(defmethod do-standalone-speech-act ((speech-act symbol))
  (let ((dtn (ecase speech-act
               (acknowledge (plan-an-acknowledgement))
               (good-job (plan-brief-praise))
               (confirm-did-right-thing (construct-that-is-good)))))
    (discourse-unit dtn)))

(defun plan-an-acknowledgement ()
  (let ((lp (get-lexicalized-phrase 'ok)))
    (make-dtn :referent 'acknowledge ;;/// no -- more substantial
              :resource lp)))

(defun plan-brief-praise ()
  "Ought to be able to fold this into a main text"
  (let ((lp (get-lexicalized-phrase 'good)))
    (make-dtn :referent 'brief-praise ;;/// no -- more substantial
              :resource lp)))

(defun construct-that-is-good ()
  "Total punt -- taking 'that's good' as a conventional reply
   to other person's action (or the situation/configuration
   that resulted from the action) in order to confirm that it was correct.
   Imagine saying it to a little kid. It probably does indeed
   refer, but don't want to set all that up yet (2/11/16)."
  (let* ((lp (get-lexicalized-phrase 'be))
         (dtn (make-dtn :referent 'that-is-good ;;/// no -- more substantial
                        :resource lp))
         (s-comp (make-instance 'complement-node
                   :phrase-parameter (parameter-named 's)
                   :value (mumble-value 'that 'pronoun)))
         (c-comp (make-instance 'complement-node
                   :phrase-parameter (parameter-named 'c)
                   :value (plan-brief-praise)))) ;;kind of cheating
    (push c-comp (complements dtn))
    (push s-comp (complements dtn))
    (present-tense dtn)
    dtn))
  


(defun instantiate-speech-act (dtn speech-act elaborations)
  ;;// method-ize when there are more of these
  (let ((dtn-to-return dtn))
    (case speech-act
      (propose-goal 
       (command dtn)) ;; these don't change the identity of the dtn
      (perform
       (command dtn))
      (otherwise 
       (error "Don't know the consequence for the dtn of ~a" speech-act)))
    (when elaborations
      ;; only token, completely ad-hoc cases. Only purpose is
      ;; to illustrate modulating a core message (base eventuality)
      ;; by applying operations to it that add prefixes or interjections
      ;; like "please". Not worth going any real distance down this
      ;; road before working out what general story we should have
      ;; about this stuff.
      ;; (push-debug `(,elaborations)) (break "look at elaborations")
      (cond
       ((memq 'friendly elaborations)
        (setq dtn-to-return (let-us dtn)))))
    dtn-to-return))

