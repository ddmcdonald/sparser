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
followed by an elaboration is two sexp just so we don't have
to worry about combining them. (That's a separate problem we
can put off.)

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
about which argument is which).

Speech acts that are directives will come out as imperatives 
and we don't have to include the "you" portion. 

|#

;; build a staircase

(defparameter utt-1.1 '(propose-goal friendly
                         (build :artifact (any staircase))))

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
constituents. And can punt the "any" operator by taking the
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

(defparameter utt-2 
   '(propose-goal (put :o1 block :o2 (location on :the-table))))
; (sexp-reader utt-2)

(defparameter utt-3a '(acknowledge)) ;; "ok"
(defparameter utt-3b '(good-job)) ;; as if spoken to a dog or child

(defun utt3c-preparation ()
  "Run this to create the context assumed by utterance 3"
  (set-the-focus *the-two-blocks-he-put-down*))
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
(defparameter utt-4 '(confirm-did-right-thing)) ;; punting

; (test-dialog-1)
(defun test-dialog-1 ()
  (say (sexp-reader utt-1.1a))
  (say (sexp-reader utt-2))
  (say (sexp-reader utt-3a))
  (say (sexp-reader utt-3b))
  (utt3c-preparation)
  (say (sexp-reader utt-3c))
  (say (sexp-reader utt-4)))


;;;----------
;;; The code
;;;----------

(defvar *sentence-type* :statement ;;?? or sort out w/ predicates ??
  "Holds the toplevel type (loosely speaking) of the utterance
   (sentence), e.g. :statement, :command, :question, etc. ")

(defvar *speech-act* nil
  "Holds the speech act for reference by embedded routines")



(defun sexp-reader (sexp)
  "sexp in, dtn out"
  ;; 1st get the symbols in our package
  (setq sexp (launder-sexp-symbols-package sexp (find-package :mumble)))

  ;; 2. for specific individuals, retrive them from their keyword form
  (setq sexp (launder-sexp-to-dereference-keywords sexp))

  ;; 3. Switch from variables to parameters
;;///////////////  (setq sexp (launder-sexp-to-switch-to-parameters sexp))

  (let* ((speech-act (mumble-symbol (car sexp)))
         (*speech-act* speech-act))
    (declare (special *speech-act*))
    (if (standalone-speech-act speech-act)
      (do-standalone-speech-act speech-act)
      (let ( elaborations core )
        (loop for item in (cdr sexp)
          when (symbolp item) do (push (mumble-symbol item) elaborations)
          when (consp item) do (setq core item))
        (let ((dtn (interpret-sexp-core core)))
          ;; Does the speech act dictate the large-scale form
          ;; of the utterance? Do the elaborations modulate or
          ;; add to that?
          (instantiate-speech-act dtn speech-act elaborations)

          ;; Wrap the whole thing in a sentence. 
          ;;/// this is the wrong level to do this at, since in the
          ;; interesting cases we have several sexp and need to provide
          ;; a discourse structure to embed them in or for that matter,
          ;; however, to fold one element within the realization of another
          ;; like "however" here.
          (discourse-unit dtn))))))

(defun interpret-sexp-core (core-sexp) ;; (build :o staircase)
  (let* ((operator (car core-sexp))
         (pairs (cdr core-sexp))
         (phrase (get-lexicalized-phrase operator)))
    (unless phrase
      (error "Undefined term? Cannot retrieve a lexicalized ~
              resource for the operator ~a" operator))
    (let ((dtn (make-dtn :resource phrase
                         ;;//// the instantiated object would be 
                         ;; a better referent.
                         :referent core-sexp)))
      ;; fill the variables, constructing DTNs for their values
      (recursively-expand-tree dtn pairs)
      ;;\\\ If any remain unbound, see if the context permits it
      dtn)))

#| Walk through the paramter assignments and look at the
values. One of the goals is to ensure expressibility, but
that isn't really going to work without adopting something
more along the lines of McDonald 1998 and McDonald & Greenbacker 2010. 
  For CwC the values are unlikely to be deep, so the
'recursive' part of this routine can probably be ignored
For now just worry about the planning of references.
|#
(defun recursively-expand-tree (dtn parameter-value-plist)
  ;; Here we'd keep track of the relation to the DTN of
  ;; the value we're realizing ('expanding'). It's place
  ;; in the context of the discourse too. 
  (do ((parameter-name (car parameter-value-plist) (car rest))
       (value-exp (cadr parameter-value-plist) (cadr rest))
       (rest (cddr parameter-value-plist) (cddr rest)))
      ((null parameter-name))
    (let ((parameter (parameter-named 
                      (mumble-symbol parameter-name))) ;; flush keyword
          (value (expand-value value-exp)))
      (make-complement-node parameter value dtn))))

#| The cons case is for '(any block)'. If it's a symbol
then it's either the name of a category (on the Sparser side)
or a designator for a block or other sort of particular. 
For illustration purposes we can make those keyword symbols
like they were in Shurdu. 
|#
(defun expand-value (value-exp)
  (typecase value-exp
    (cons
     (plan-reference-to-composite value-exp))
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
or (inside 'any') we don't care which one we get.
 1. Have individuals of this sort already been mentioned?
    "another one", "another block", "(do you have) one?"
 2. Was that reference recent or long ago? 
 3. Is this type salient / in focus ?


See should-be-pronominalized-in-present-context
  If we set focus then we force pronominalization.
  That routine does so online during the readout. 
interface/derivations/discourse-reference.lisp 
  needs real content - mostly stubs    record-reference mentions

|#
(defun plan-reference-to-category (category-name)
  (let ((category (sp::category-named 
                   (sparser-symbol category-name) :break-if-none)))
    ;; first check if there is a mention of this category
    ;; in the recent discourse => "another one", "one more"

    ;; Otherwise get the tree. Here we're just presuming
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

      ;; If this is the first mention, then use an indefinite
      (initially-indefinite dtn)
      dtn)))


(defun plan-reference-to-individual (i)
  (cond
   ((unique? i)
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

#| (set-the-focus *the-two-blocks-he-put-down*)
   (setq sexp `(collection ,*b1* ,*b2*))
   (setq items (cdr sexp))
|#
(defun create-collection-and-refer-to-it (items)
  "The arguments are expected ot be Krisp individuals.
  We find-or-make their collection and the made a
  DTN. If the collection is in focus we pronominalize,
  otherwise we enumberate them."
  (let* ((collection (sp::find-or-make-individual 'sp::collection
                                                  :items items))
         (dtn (make-dtn :referent collection)))
    (push-debug `(,collection ,items))
    (cond
     ((in-focus? collection)
      (setf (resource dtn) ;;(wrap-pronoun 'third-person-plural)
            (mumble-value 'third-person-plural 'pronoun)
            ))
     ;; "the (two) blocks"
     ;; enumeration -- e.g. for the drugs in BioC dialog
     (t (error "No collection strategy applied")))
    dtn))

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
    ;; but before than no point in reifying them
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
   that resulted from the action) to confirm that it was correct.
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
  

;;--- for Command 
(defun instantiate-speech-act (dtn speech-act elaborations)
  ;; method-ize later
  (declare (ignore elaborations))
  (case speech-act
    (propose-goal (command dtn))
    (perform (command dtn))
    (otherwise 
     (error "Don't know the consequence for the dtn of ~a" speech-act))))


#|--------------------------------------------------------
 H: What drug should I use?
 Bob: I don't know of any 
   (drugs that address target proteins in pancreatic cancer)

 Bob: But 88% of pancreatic cancer patients have mutated active KRAS

P: patients with pancreatic cancer
C: cancer cells in P
K: the KRAS proteins in C
M: mutated (K, [G12D, G12C, G12V, Q61H])
Prevelance: 88% of the K are M
Functional-effect-of(M, active(K))

 the KRAS proteins in 88% of <patients> have mutations that make them active

|#

