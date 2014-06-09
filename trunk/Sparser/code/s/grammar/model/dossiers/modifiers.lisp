;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "modifiers"
;;;    Module:   "model;dossiers:"
;;;   Version:   May 2014

;; Created 1/4/13 to group together comparatives, approximators, etc in
;; one place so they're easier to keep track of. (1/9/13) Moved in all
;; the adverbs from words/adverbs1, including the ones with only function 
;; word definitions because their category hasn't been defined yet. 
;; (1/18/13) put in define-position-in-process. 5/22 added "no longer"
;; (5/30/13) added in earlier, sooner as adverbs and function words
;; 5/6/14 Moved in the quantities from its own file

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

;; what to do about stacks e.g. "just barely"

(define-approximator/determiner "almost")
(define-approximator/determiner "about")
(define-approximator/determiner "around")

(define-approximator/determiner "at least")
(define-approximator/determiner "at most")
(define-approximator/determiner "barely")
(define-approximator/determiner "exactly")
(define-approximator/determiner "just")
(define-approximator/determiner "less than")
(define-approximator/determiner "more than")
(define-approximator/determiner "nearly") ;; could also be approx/adverbial. what to do??
(define-approximator/determiner "precisely")
(define-approximator/determiner "somewhat")



(define-approximator/adverbial  "fairly")
(define-approximator/adverbial "hardly") ;; can go before adjectives, right?
(define-approximator/adverbial "mostly")
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

(define-event-frequency "always")
(define-event-frequency "constantly")
(define-event-frequency "daily")
(define-event-frequency "ever")
(define-event-frequency "forever") ;; is this more of a duration? does it matter?
(define-event-frequency "frequently")
(define-event-frequency "hourly")
(define-event-frequency "indefinitely") ;;does this belong?
(define-event-frequency "monthly")
(define-event-frequency "never")
(define-event-frequency "often")
(define-event-frequency "rarely")
(define-event-frequency "seldom")
(define-event-frequency "usually")
(define-event-frequency "yearly")



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
;;immensely?



;;;---------- likelyhood

(define-function-word "probably"   :brackets '( ].adverb ))


;;;---------------------------
;;; position within a process
;;;---------------------------
; These can be positioned sentence initial or final as well
; a pre-verb, so they need bracketing that can indicate
; segment starts too.

(define-position-in-process "eventually")
(define-position-in-process "finally")
(define-position-in-process "initially")
(define-position-in-process "subsequently")




;;;----------
;;; quantity
;;;----------
#|  A "quantity", like a number, is the answer to "how many"
    Quantities distribute exactly like numbers, including their composition
    to form measurements and their capacity as determiners.  |#

(define-quantity  "several")



;;;------------
;;; Sequencers
;;;------------

;; initiated 5/27/94 v2.3

(define-sequencer/determiner "last")
(define-sequencer/determiner "previous")

(define-sequencer/determiner "next")
(define-sequencer/determiner "subsequent")
(define-sequencer/determiner "following")

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

(define-individual 'relative-time-adverb :name "as yet")
(define-individual 'relative-time-adverb :name "currently")
(define-individual 'relative-time-adverb :name "formerly") ;; might move / redefine?
(define-individual 'relative-time-adverb :name "immediately")
(define-individual 'relative-time-adverb :name "lately")
(define-individual 'relative-time-adverb :name "presently")
(define-individual 'relative-time-adverb :name "previously") ;;maybe
(define-individual 'relative-time-adverb :name "recently")
(define-individual 'relative-time-adverb :name "soon")
(define-individual 'relative-time-adverb :name "yet")


;;;---------- deictic, complement-taking
;;  take "than" complements

(define-adverb "sooner")
(define-adverb "earlier")
(define-adverb "later")

;;;---------
;;; adverbs
;;;--------

(define-adverb "accurately")
(define-adverb "actively")
(define-adverb "acutely")
(define-adverb "additionally")
(define-adverb "adequately")
(define-adverb "admirably")
(define-adverb "admittedly")
(define-adverb "agriculturally")
(define-adverb "alternatively")
(define-adverb "anatomically") ;; not a manner..hmm
(define-adverb "analytically")
(define-adverb "appropriately")
(define-adverb "approximately")
(define-adverb "aptly")
(define-adverb "arbitrarily")
(define-adverb "arguably")
(define-adverb "asexually")
(define-adverb "asymmetrically")
(define-adverb "at once")
(define-adverb "badly")
(define-adverb "basically")
(define-adverb "beautifully")
(define-adverb "bilaterally")
(define-adverb "biochemically")
(define-adverb "biologically")
(define-adverb "briefly")
(define-adverb "broadly")
(define-adverb "carefully")
(define-adverb "casually")
(define-adverb "categorically")
(define-adverb "centrally")
(define-adverb "certainly")
(define-adverb "characteristically")
(define-adverb "cheaply")
(define-adverb "chemically")
(define-adverb "chronologically")
(define-adverb "circularly")
(define-adverb "clinically")
(define-adverb "closely")
(define-adverb "collectively")
(define-adverb "colloquially")
(define-adverb "commercially")
(define-adverb "commonly")
(define-adverb "comparatively")
(define-adverb "computationally")
(define-adverb "conceptually")
(define-adverb "conclusively")
(define-adverb "conditionally")
(define-adverb "confidently")
(define-adverb "consistently")
(define-adverb "continuously")
(define-adverb "conventionally")
(define-adverb "conversely")
(define-adverb "convincingly")
(define-adverb "covalently")
(define-adverb "critically")
(define-adverb "currently")
(define-adverb "cytologically")
(define-adverb "dangerously")
(define-adverb "deeply")
(define-adverb "definitely")
(define-adverb "densely")
(define-adverb "differently")
(define-adverb "discreetly")
(define-adverb "discretely")
(define-adverb "distributionally")
(define-adverb "dramatically")
(define-adverb "dynamically")
(define-adverb "e.g.")
(define-adverb "easily")
(define-adverb "effectively")
(define-adverb "efficiently")
(define-adverb "electrically")
(define-adverb "endosymbiotically")
(define-adverb "energetically")
(define-adverb "entirely") ;;hmm
(define-adverb "environmentally")
(define-adverb "enzymatically")
(define-adverb "equally")
(define-adverb "equivalently")
(define-adverb "erroneously")
(define-adverb "especially")
(define-adverb "ethically")
(define-adverb "evocatively")
(define-adverb "evolutionarily")
(define-adverb "excessively")
(define-adverb "exclusively")
(define-adverb "experimentally")
(define-adverb "extensively")
(define-adverb "externally")
(define-adverb "extraordinarily")
(define-adverb "extremely")
(define-adverb "famously")
(define-adverb "federally")
(define-adverb "figuratively")
(define-adverb "finely")
(define-adverb "for example")
(define-adverb "forcefully")
(define-adverb "formally")
(define-adverb "fortunately")
(define-adverb "freely")
(define-adverb "frustratingly")
(define-adverb "fully") ;;
(define-adverb "functionally")
(define-adverb "fundamentally")
(define-adverb "generally")
(define-adverb "generically")
(define-adverb "genetically")
(define-adverb "gently")
(define-adverb "genuinely")
(define-adverb "geographically")
(define-adverb "geologically")
(define-adverb "globally")
(define-adverb "graphically")
(define-adverb "greatly")
(define-adverb "heartedly")
(define-adverb "historically")
(define-adverb "homeostatically")
(define-adverb "hugely")
(define-adverb "ideally")
(define-adverb "identifiably")
(define-adverb "illustratively")
(define-adverb "implicitly")
(define-adverb "importantly")
(define-adverb "in fact")
(define-adverb "inaccurately")
(define-adverb "inadvertently")
(define-adverb "incidentally")
(define-adverb "incompletely")
(define-adverb "incorrectly")
(define-adverb "independently")
(define-adverb "indirectly")
(define-adverb "individually")
(define-adverb "industrially")
(define-adverb "inevitably")
(define-adverb "inexpensively")
(define-adverb "informally")
(define-adverb "infrequently")
(define-adverb "inherently")
(define-adverb "innately")
(define-adverb "intensely")
(define-adverb "intentionally")
(define-adverb "interestingly")
(define-adverb "internally")
(define-adverb "intimately")
(define-adverb "ionically")
(define-adverb "irreparably")
(define-adverb "jointly")
(define-adverb "kinetically")
(define-adverb "legally")
(define-adverb "lightly")
(define-adverb "linearly")
(define-adverb "literally")
(define-adverb "logically")
(define-adverb "loosely") ;; maybe move to approx.
(define-adverb "mainly") ;;
(define-adverb "marginally")
(define-adverb "markedly")
(define-adverb "mathematically")
(define-adverb "maximally")
(define-adverb "meaningfully")
(define-adverb "medically")
(define-adverb "merely") ;;
(define-adverb "metabolically")
(define-adverb "metaphorically")
(define-adverb "minimally")
(define-adverb "mitotically")
(define-adverb "moderately") ;;degree?
(define-adverb "modestly")
(define-adverb "morbidly")
(define-adverb "mutually")
(define-adverb "naturally")
(define-adverb "necessarily")
(define-adverb "newly")
(define-adverb "nicely")
(define-adverb "nominally")
(define-adverb "normally")
(define-adverb "notably")
(define-adverb "noticeably")
(define-adverb "occasionally")
(define-adverb "oddly")
(define-adverb "openly")
(define-adverb "originally")
(define-adverb "otherwise") ;;
(define-adverb "osmotically")
(define-adverb "painstakingly")
(define-adverb "passively")
(define-adverb "perfectly")
(define-adverb "permanently")
(define-adverb "perpendicularly")
(define-adverb "persistently") ;; want to be an event-frequency?
(define-adverb "perversely")
(define-adverb "physically")
(define-adverb "physiologically")
(define-adverb "popularly")
;;(define-adverb "positively") moved to NFkappB to go with "positive"
(define-adverb "possibly") ;;maybe move up to likelihood
(define-adverb "potentially")
(define-adverb "potently")
(define-adverb "powerfully")
(define-adverb "practically")
(define-adverb "precipitously")
(define-adverb "predictably")
(define-adverb "predominantly")
(define-adverb "preferentially")
(define-adverb "prematurely")
(define-adverb "previously") ;; maybe want to specify something else?
(define-adverb "privately")
(define-adverb "properly")
(define-adverb "publicly")
(define-adverb "purely")
(define-adverb "quickly")
(define-adverb "radially")
(define-adverb "radically")
(define-adverb "randomly")
(define-adverb "rapidly")
(define-adverb "readily")
(define-adverb "realistically")
(define-adverb "really") ;; not really (ha!)
(define-adverb "reasonably")
(define-adverb "reciprocally")
(define-adverb "regularly")
(define-adverb "reliably")
(define-adverb "remarkably")
(define-adverb "reproductively") ;;seems more pre-adjectival
(define-adverb "respectively") ;; weird one
(define-adverb "reversibly")
(define-adverb "rhythmically")
(define-adverb "roughly") ;; generally used as an estimate..
(define-adverb "sadly") 
(define-adverb "safely")
(define-adverb "schematically")
(define-adverb "scientifically")
(define-adverb "seemingly")
(define-adverb "selectively")
(define-adverb "seriously")
(define-adverb "severely")
(define-adverb "sexually")
(define-adverb "sharply")
(define-adverb "shortly")
(define-adverb "significantly")
(define-adverb "simply")
(define-adverb "simultaneously")
(define-adverb "singly")
(define-adverb "slightly")
(define-adverb "slowly")
(define-adverb "socially")
(define-adverb "solely")
(define-adverb "spatially")
(define-adverb "specifically")
(define-adverb "spontaneously")
(define-adverb "steadily")
(define-adverb "straightforwardly")
(define-adverb "strictly")
(define-adverb "strikingly")
(define-adverb "strongly")
(define-adverb "structurally")
(define-adverb "substantially")
(define-adverb "successfully")
(define-adverb "suddenly")
(define-adverb "surely")
(define-adverb "surprisingly")
(define-adverb "symptomatically")
(define-adverb "technically")
(define-adverb "technologically")
(define-adverb "temporarily") ;;
(define-adverb "terminally")
(define-adverb "thermodynamically")
(define-adverb "thoroughly")
(define-adverb "tightly")
(define-adverb "together") ;;
(define-adverb "topically")
(define-adverb "totally") ;;
(define-adverb "traditionally")
(define-adverb "tremendously")
(define-adverb "truly")
(define-adverb "typically")
(define-adverb "uncharacteristically")
(define-adverb "undeniably")
(define-adverb "understandably")
(define-adverb "unexpectedly")
(define-adverb "unfortunately")
(define-adverb "ungainly")
(define-adverb "unintentionally")
(define-adverb "unlikely") ;;move to likelihood?
(define-adverb "unnaturally")
(define-adverb "unrealistically")
(define-adverb "unsurprisingly")
(define-adverb "unusually")
(define-adverb "variously")
(define-adverb "visually")
(define-adverb "wonderfully")


;;;------
;;; adjectives
;;;------


;;(define-adjective "daily")
(define-adjective "known")



;;respectively (each?)
