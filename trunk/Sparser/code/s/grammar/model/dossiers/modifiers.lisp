;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "modifiers"
;;;    Module:   "model;dossiers:"
;;;   Version:   May 2013

;; Created 1/4/13 to group together comparatives, approximators, etc in
;; one place so they're easier to keep track of. (1/9/13) Moved in all
;; the adverbs from words/adverbs1, including the ones with only function 
;; word definitions because their category hasn't been defined yet. 
;; (1/18/13) put in define-position-in-process. 5/22 added "no longer"
;; (5/30/13) added in earlier, sooner as adverbs and function words

(in-package :sparser)

;;;----------------
;;; Approximations
;;;----------------
;; initiated 6/6/93 v2.3.  5/27/94 removed "several".
;; 0.1 (11/17) distinguished determiners from adverbs
;;     (9/23/11) Added "just"

;; (A)  "I have just seven days left"
;; (B)  "I just came back from there"
;;
;;  These bind to their left,
;;  and they terminate whatever is ongoing

(define-approximator/determiner "almost")
(define-approximator/determiner "about")
(define-approximator/determiner "around")

(define-approximator/determiner "at least")
(define-approximator/determiner "at most")

(define-approximator/determiner "more than")
(define-approximator/determiner "less than")

(define-approximator/adverbial  "fairly")
(define-approximator/determiner "just")
(define-approximator/adverbial  "only")



#|  approximator rules

;; initiated 11/15/95

(def-form-rule (approximator np)
  :form np
  :referent (:daughter right-edge))
|#


;;;------------
;;; {attitude}
;;;------------

(define-reflection-on "despite")

(define-reflection-on "in spite of")
(define-reflection-on "regardless of")




;;;--------------
;;; Comparatives
;;;--------------

;; initiated 7/29/94. Added some polywords 9/10/09.
;; 0.1 (2/17/10) added "rather than", which isn't at all the same thing, but
;;  since it's just going for a parse, rather than an interpretation, that's
;;  ok for now. ///Could we generalize the "than" part? It will certainly
;;  have a common interpretation.

;; These don't combine with adverbs
;;
(define-comparative "fewer"     :brackets '( ].phrase  .[np ))
(define-comparative "less"      :brackets '( ].phrase  .[np ))
(define-comparative "more"      :brackets '( ].phrase  .[np ))
(define-comparative "most"      :brackets '( ].phrase  .[np ))


;; Strictly speaking, the "than" cases have different grammatical properties
;; since then can act as determiners whereas the 'bare' versions demand 
;; a preceding determiner. Given the bracket algebra for NPs though, I think
;; this will come out in the wash (ddm 9/10/09)

(define-comparative "fewer than"    :brackets '( ].phrase  .[np ))
(define-comparative "greater than"  :brackets '( ].phrase  .[np ))
(define-comparative "less than" :brackets '( ].phrase  .[np ))
(define-comparative "more than" :brackets '( ].phrase  .[np ))


(define-comparative "better"       :brackets '( ].phrase  .[np ))
(define-comparative "worse"        :brackets '( ].phrase  .[np ))
(define-comparative "better than"  :brackets '( ].phrase  .[np ))
(define-comparative "worse than"   :brackets '( ].phrase  .[np ))

;; 10/24/94
(define-comparative "bigger") ;; better best
;; comparative-adjective
(define-comparative "smaller") ;; small smallest


(define-function-word "than" )



;;/// Goes somewhere else when we get serious about meaning
(define-comparative "rather than" :brackets '( ].phrase  .[np ))


#|  ;; From former rules-comparatives  ;; initiated 7/29/94

(def-cfr comparative-prefix (comparative "than")
  :form nil
  :referent (:daughter left-edge))

(def-cfr comparison (comparative-prefix number)
  :form adjp
  :referent (:daughter left-edge))  ;; obviously wrong
|#



;;;------------
;;; enablement
;;;------------

;; These take interesting complements. Refine the brackets?
(define-function-word "in order to" :brackets '(].phrase .[phrase))
(define-function-word "so that" :brackets '(].phrase .[phrase))


;;--- "dis-enablement" ??

(define-adverb "no longer")

;; Added in 8/2013
;;one must be careful about potential ambiguity
;;e.g. "He did it as well as the rest" vs "He did it as well/also"
(define-adverb "as well")


;;;-----------
;;; Frequency
;;;-----------

;; initiated 6/4/93 v2.3. redone w/ def-form 5/25/94

(define-event-frequency  "always")
(define-event-frequency  "frequently")
(define-event-frequency  "never")
(define-event-frequency  "often")
(define-event-frequency  "rarely")
(define-event-frequency  "seldom")
(define-event-frequency  "usually")

#|  "frequency idioms"  initiated 10/24/94

;; purely a stop-gap measure

(def-cfr idiom-fragment ("at a time"))

;; as in "only one virus-detection program at a time"
;; and related to "17 {Xes} in a row" or "all {of them} at once"
|#


;;;---------- intensifier

;; Since these don't start verb groups, they can't be marked 'adverb'
;; They can modify adverbs and comparatives at least

(define-function-word "too"   :brackets '( ].adverb .[adverb ))
(define-function-word "very"  :brackets '( ].adverb .[adverb ))



;;;---------- likelyhood

(define-function-word "probably"   :brackets '( ].adverb ))


;;;---------------------------
;;; position within a process
;;;---------------------------
; These can be positioned sentence initial or final as well
; a pre-verb, so they need bracketing that can indicate
; segment starts too.

(define-position-in-process "initially")
(define-position-in-process "finally")
(define-position-in-process "eventually")




;;;------------
;;; Sequencers
;;;------------

;; initiated 5/27/94 v2.3

(define-sequencer/determiner "last")

(define-sequencer/determiner "next")
(define-sequencer/determiner "subsequent")

(define-sequencer/preposition "after")
(define-sequencer/preposition "before")

(define-sequencer/preposition "during")


;;;-----------
;;; subjuncts
;;;-----------

;; Quirk et all 8.116, H&P p586
(define-focusing-adverb "also")  
        

;;;------
;;; time
;;;------

;;;---------- deictic, standalone

(define-function-word "immediately" :brackets '( ].adverb  adverb.[ ))
(define-function-word "soon"        :brackets '( ].adverb  adverb.[ ))


;;;---------- deictic, complement-taking
;;  take "than" complements

(define-adverb "sooner")
(define-adverb "earlier")
(define-adverb "later")

