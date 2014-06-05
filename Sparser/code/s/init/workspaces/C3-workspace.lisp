;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "C3-workspace"
;;;   Module:  "init;workspaces:"
;;;  version:  March 2014

;; Initiated 9/16/13. Elaborated through 3/26/14

(in-package :sparser)

;;//// Add quantifiers to the C3 grammar
;; (setq cl-user::script :c3)

;; (load "/Users/ddm/sparser/load-nlp.lisp")

;; For when we use a load that doesn't set *c3* 
;;    (ad-hoc-c3-loader)
(defun ad-hoc-c3-loader ()
  (setq *c3* t)
  (create-ford-motor-company)
  (create-wakil)
  (c3-setting))

;; 72  (p "black ford suv has entered wakil")
;; 73  (p "two people are dismounting.")
;; (p "black ford suv has entered wakil. Two people are dismounting.")
;; 74  etc.  "correction, three people"
;; 79  "three guys entered the black ford suv in wakil"
;; 82  "black ford suv is leaving wakil to the west"

;; earlier
;; 28 "three guys have gotten into black ford suv at wakil"
;; 29 "back suv headed west on wakil road"


; (just-bracketing-setting)
; (word-frequency-setting)

; (load "/Users/ddm/sift/nlp/C3/code/ISR-ripper.lisp")

;;;-------------------------
;;;    How it all works
;;;-------------------------

;;--- Setting up restrictions
; decode-category-parameter-list handle-variable-restrictions

;;  => load-nlp => "scripts/C3" to set *c3* parameter
;;  everything -- unless boundp the parameter
;;     grammar-config dispatch, New file c3
;;  config;launch -- setting  (c3-setting)
;;  setting -> establish-kind-of-chart-processing-to-do = :c3-protocol
;;   => (initiate-c3-protocol) -- new file in drivers/chart/psp/
;;      crib from inititate-top-edges-protocol
#| 

We proceed through a text segment by segment

Scan-segment is the loop
First it calls read-through-segment-to-end 
which does the scan-next-position calls and the bracket 
introduction and analysis.
It returns once it's found the end of the segment.
That lets us identify the head, a.k.a. the final word 
in the segment.
When it is done the chart has been populated with the 
words of the segment and one bejond it but nothing has been done with them
other than making use of their bracket information. 

Once we've returned to scan-segment, we loop over
each of the words in the segment left to right. 

For each word we call introduce-next-word which first
checks that there actually are single-edge rules for 
the word and then calls install-terminal-edges which is
the standard way to do it. 

The referent processing of the individual words, which
is always just a unchanging category or individual, goes 
through referent-from-unary-rule. When the *c3* flag 
is up it call incorprate-referent-into-the-situation 
just before it returns. 

In incorporate-referent-into-the-situation the assumption
is that we're accumulating information onto a peg, which
we will cash out when we get to the head and transfer it 
all to an individual. [[ and we should be looking for subsequent
references here as the description assumulates ]]

As edges pass through incorporate-referent-into-the-situation 
the phrase-state can change through calls that pass the edge
to update-situation-state along with the symbol that indicates
that this is phrase-level state. 

Every time the state changes we call indexical-for-state which
returns an indexical variable. We then call add-indexical-to-situation
with that variable and the current peg as arguments.

Finally we call add-referent-to-peg where the point is 
to identify the predicate (variable) that goes with objects 
of that type (the category of the referent of the unary edge that
we're working on. That's hacked by a table: lookup-variable-for-value-type 
which takes a category symbol and returns a variable. 
[[ what's a more general, easily written, way to set this up? ]]

Given that variable (predicate), we call bind-variable-on-peg with the
peg, the variable, and the value (i.e. the referent of the edge).
All it does is push the pair of variable and value onto a list.
[[ could we draw inferences here? ]]  All we're doing, really, is
narrowing the possible meaning (satisfying categories) of the
head because we push the category of the variable onto a list
that defines the type of the peg: peg-type-list.

When the loop in scan-segment reaches the final word it binds 
a global flag indicating that the word is the head (or rather
its subroutine introduce-next-word does). This leads to a different
case once we've handled the edge and gotten to incorporate-referent-into-the-situation.
This is a call to incorporate-phrasal-head with the referent of
the head edge, the peg, and the edge itself. 

In incorporate-phrasal-head we create a fresh individual, do 
a sanity check that the type of the head (which provides the category
that the individual instantiates) is consistent with the type restrictions 
of the type list on the peg. [[ "suv" is a type that's converted by
an edge-composition method to a motor-vehicle -- should that sort
of this go here instead?  If it depends on pairs (co-composition) then
it's better on the edge method. ]]   Whether or not the new individual
is permanent depends on the index of its category.
[[ There's a note in incorporate-phrasal-head that perhaps this is
where we blow the latent variables into the situation. ]]

When that's done we're back in scan-segment and we call the equivalent
of PTS, which is c3-process-segment-and-update-state which starts by
having the unary edges of the segment composed using a tailored clone of
the customary parse-at-the-segment-level: c3-segment-parse, which
presumes that there is an applicable rule. Syntactic rules are used
(see grammar/rules/situation/rules) because (1) we have complete
control of the environment they execute in, and (2) all the good
stuff in in the compose methods that execute when these rules
complete (see same file). 

c3-segment-parse returns the final, segment-spanning edge to
c3-process-segment-and-update-state There, the phase-level state
is reinitialized, the sentence-level state is updated given the
form of this edge, an indexical for the new edge's referent at
the sentence level is created, and we call add-entity.

[[ add-entity, and the add-relation that is called in the compose 
methods, are where we really update the situation. As a placeholder
the presently just stash their individuals and bindings into 
a model designed to hold them.  ]]

When control returns from c3-process-segment-and-update-state to
scan-segment it calls itself tail-recursively. 

There is no provision as yet for what notices that we have accumulated
sentence-level constituents to the left as segments complete. 

[[ Should the tree be left-recursive or head-driven, i.e. what do
we do with the third constituent and any other post-verb edges 
that occur? ]]



(referent of single word)
depends on the current state, which comes from calling phrasal-state.
All in grammar/rules/situation/

The phrasal-state is the value of the state field of the situation object.
The choice of situation object, e.g. sentence-situation in objecs/doc/situation.lisp
 is set up once by designate-sentence-container and then used by
 make-sentence-container/situation which is called from make-sentence-container
 when start-sentence is called which is kicked from from initialize-paragraphs and
 on up: objects/doc/object1.lisp

States are objects with transition tables (grammar/rules/situation/state.lisp)
that may be for assembling phrases, sentences, or the whole discourse. 

They go with situation classes with the same range. Though right now (3/20/14)
it's not clear how to structure the discourse. 

States standup indexicals: grammar/rules/situation/variables.lisp





|#

(setq cl-user::location-of-text-corpora ;; copied from Grok
 "Users:ddm:sift:nlp:corpus:")          ;;/// Needs one location  !!
;; Note the pathname is given in ancient Mac syntax. 
(def-logical-pathname "corpus;" cl-user::location-of-text-corpora)

(def-logical-pathname "gboss;"  "corpus;gboss:")

(defvar gboss
  (define-document-stream '|ISR transcripts from EC10|
    :style-name 'hand-typed/no-headers
    :directory "gboss;"
    :unified t))

;; Text that breaks -- for Alex
;; (p "Saudi Arabia has confirmed six new infections from the potentially fatal MERS virus, the World Health Organization reported Friday, raising the total number of cases worldwide to 136. Most of the cases, which have resulted in 58 deaths, have been in Saudi Arabia. The latest cases, the W.H.O. said in a statement, afflicted three men and three women, all from the Riyadh region. MERS stands for Middle East Respiratory Syndrome. It is believed to be spread by bats and possibly camels. The concentration of MERS cases in Saudi Arabia has raised concern about the possible spread of the infection during the annual pilgrimage to Mecca and Medina later this month, when millions of Muslims from around the world visit the kingdom.")



;;;---------
;;;  meta-.
;;;---------

;; c3-grammar-module-choices  lambda-variable-named itype

; the-Master-loader load-the-grammar  c3-grammar-module-choices

; traces: trace-c3
; protocol: initiate-c3-protocol  bracket-that-starts-the-segment
;   incorporate-referent-into-the-situation  incorporate-phrasal-head
;   the-situation  current-peg  update-situation-state
;   add-indexical-to-situation

; ontology is all in grammar/sl/ISR/




;;--- 
#|  to do

|#