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

(define-approximator/determiner "approximately")
(define-approximator/determiner "at least")
(define-approximator/determiner "at most")
(define-approximator/determiner "barely")
(define-approximator/determiner "exactly") ;; not just a determiner..
(define-approximator/determiner "just")
;(define-approximator/determiner "less than") comparatives..
;(define-approximator/determiner "more than")
(define-approximator/determiner "nearly") ;; could also be approx/adverbial. what to do for this type of "generic" modifier that can go before preps, adjs too?
(define-approximator/determiner "precisely") ;;
(define-approximator/determiner "roughly")
(define-approximator/determiner "somewhat")

(define-approximator/adverbial  "fairly")
(define-approximator/adverbial "hardly") ;; can go before adjectives, right?
(define-approximator/adverbial "mostly")
(define-approximator/adverbial  "only") ;; "only two" "this can only occur if.."




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
(define-event-frequency "chronically")
(define-event-frequency "constantly")
(define-event-frequency "daily") ;can also be an adjective.
(define-event-frequency "ever")
(define-event-frequency "forever") ;; is this more of a duration? does it matter?
(define-event-frequency "frequently") ; what about 'frequent'
(define-event-frequency "hourly") ;+adj
(define-event-frequency "indefinitely")
(define-event-frequency "monthly") ;+adj
(define-event-frequency "never")
(define-event-frequency "often")
(define-event-frequency "rarely")
(define-event-frequency "seldom")
(define-event-frequency "usually")
(define-event-frequency "yearly") ;+adj



#|  "frequency idioms"  initiated 10/24/94

;; purely a stop-gap measure

(def-cfr idiom-fragment ("at a time"))

;; as in "only one virus-detection program at a time"
;; and related to "17 {Xes} in a row" or "all {of them} at once"
|#


;;;---------- intensifier

(define-adverb "immensely")
(define-adverb "too") ;what about sense of "also" ?

(define-function-term "very" 'adverb
  :tree-families '(pre-adj-adverb pre-adv-adverb))

;; OLD CODE:
;; Since these don't start verb groups, they can't be marked 'adverb'
;; They can modify adverbs and comparatives at least

;;(define-function-word "too"   :brackets '( ].adverb .[adverb ))
;;(define-function-word "very"  :brackets '( ].adverb .[adverb ))




;;;---------- likelihood

(define-adverb "probably")
(define-adverb "definitely")
(define-adjective "likely") ;could be either adj or adv
(define-adverb "possibly") 
(define-adverb "potentially")
(define-adverb "unlikely") ; not really an adverb? 



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
(define-position-in-process "ultimately")




;;;----------
;;; quantity
;;;----------
#|  A "quantity", like a number, is the answer to "how many"
    Quantities distribute exactly like numbers, including their composition
    to form measurements and their capacity as determiners.  |#

(define-quantity "multiple")
(define-quantity "numerous")
(define-quantity  "several")
(define-quantity "unlimited")
(define-quantity "various")



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

(define-individual 'relative-time-adverb :name "already")
(define-individual 'relative-time-adverb :name "as yet")
(define-individual 'relative-time-adverb :name "currently")
(define-individual 'relative-time-adverb :name "formerly") ;; might move / redefine?
(define-individual 'relative-time-adverb :name "immediately")
(define-individual 'relative-time-adverb :name "lately")
(define-individual 'relative-time-adverb :name "presently")
(define-individual 'relative-time-adverb :name "previously") ;;maybe
(define-individual 'relative-time-adverb :name "recently")
(define-individual 'relative-time-adverb :name "soon")
(define-individual 'relative-time-adverb :name "still") ;; not just for time, though "still others" "standing still"
(define-individual 'relative-time-adverb :name "yet") 


;;;---------- deictic, complement-taking
;;  take "than" complements

(define-adverb "sooner")
(define-adverb "earlier")
(define-adverb "later") ;; "later on"?


;;;---------
;;; adjectives / adverbs
;;;---------
(adj/adv "obvious" "obviously" :super-category 'modifier)

;;;---------
;;; adverbs
;;;--------

;;;---------- directional adverbs
(define-adverb "diagonally")
(define-adverb "laterally")
(define-adverb "orthogonally")
(define-adverb "perpendicularly")

;;;---------- adverbs


(define-adverb "abnormally")
(define-adverb "absolutely")
(define-adverb "accordingly")
(define-adverb "accurately")
(define-adverb "actively")
(define-adverb "actually")
(define-adverb "acutely")
(define-adverb "additionally")
(define-adverb "adequately")
(define-adverb "admirably")
(define-adverb "admittedly")
(define-adverb "agriculturally")
(define-adverb "alarmingly")
(define-adverb "alternatively")
(define-adverb "amply")
(define-adverb "anatomically")
(define-adverb "analytically")
(define-adverb "apparently")
(define-adverb "appropriately")
(define-adverb "aptly")
(define-adverb "arbitrarily")
(define-adverb "architecturally")
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
(define-adverb "by necessity")
(define-adverb "carefully")
(define-adverb "casually")
(define-adverb "categorically")
(define-adverb "causally")
(define-adverb "centrally")
(define-adverb "certainly")
(define-adverb "characteristically")
(define-adverb "cheaply")
(define-adverb "chemically")
(define-adverb "chronologically")
(define-adverb "circularly")
(define-adverb "clearly")
(define-adverb "clinically")
(define-adverb "closely")
(define-adverb "collectively")
(define-adverb "colloquially")
(define-adverb "commercially")
(define-adverb "commonly")
(define-adverb "compactly")
(define-adverb "comparatively")
(define-adverb "completely")
(define-adverb "computationally")
(define-adverb "conceptually")
(define-adverb "conclusively")
(define-adverb "concomitantly")
(define-adverb "conditionally")
(define-adverb "confidently")
(define-adverb "consequently")
(define-adverb "consistently")
(define-adverb "continuously")
(define-adverb "conventionally")
(define-adverb "conversely")
(define-adverb "convincingly")
(define-adverb "correspondingly")
(define-adverb "covalently")
(define-adverb "critically")
(define-adverb "crucially")
(define-adverb "currently")
(define-adverb "cytologically")
(define-adverb "dangerously")
(define-adverb "deeply")
(define-adverb "demonstrably")
(define-adverb "densely")
(define-adverb "developmentally")
(define-adverb "differently")
(define-adverb "directly")
(define-adverb "discreetly")
(define-adverb "discretely")
(define-adverb "distributionally")
(define-adverb "dramatically")
(define-adverb "drastically")
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
(define-adverb "essentially")
(define-adverb "ethically")
(define-adverb "evenly")
(define-adverb "evidently")
(define-adverb "evocatively")
(define-adverb "evolutionarily")
(define-adverb "excessively")
(define-adverb "exclusively")
(define-adverb "experimentally")
(define-adverb "extensively")
(define-adverb "externally")
(define-adverb "extraordinarily")
(define-adverb "extremely")
(define-adverb "familiarly")
(define-adverb "famously")
(define-adverb "federally")
(define-adverb "figuratively")
(define-adverb "finely")
(define-adverb "firmly")
(define-adverb "for example")
(define-adverb "for instance")
(define-adverb "forcefully")
(define-adverb "formally")
(define-adverb "fortunately")
(define-adverb "frankly") ;when used with 'neoplastic': as opposed to "potentially"
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
(define-adverb "gradually")
(define-adverb "graphically")
(define-adverb "greatly")
(define-adverb "heartedly")
(define-adverb "heavily")
(define-adverb "highly") ;; might move to approx. 
(define-adverb "historically")
(define-adverb "hitherto")
(define-adverb "homeostatically")
(define-adverb "hugely")
(define-adverb "hypothetically")
(define-adverb "ideally")
(define-adverb "identifiably")
(define-adverb "illustratively")
(define-adverb "implicitly")
(define-adverb "importantly")
(define-adverb "in contrast")
(define-adverb "in fact")
(define-adverb "in general")
(define-adverb "inaccurately")
(define-adverb "inadvertently")
(define-adverb "incidentally")
(define-adverb "incompletely")
(define-adverb "incorrectly")
(define-adverb "increasingly")
(define-adverb "incrementally")
(define-adverb "indeed")
(define-adverb "independently")
(define-adverb "indirectly")
(define-adverb "individually")
(define-adverb "indoors")
(define-adverb "industrially")
(define-adverb "inevitably")
(define-adverb "inexpensively")
(define-adverb "informally")
(define-adverb "infrequently")
(define-adverb "inherently")
(define-adverb "innately")
(define-adverb "instead")
(define-adverb "integrally")
(define-adverb "intensely")
(define-adverb "intentionally")
(define-adverb "interestingly")
(define-adverb "internally")
(define-adverb "intimately")
(define-adverb "intrinsically")
(define-adverb "invariably")
(define-adverb "invasively")
(define-adverb "ionically")
(define-adverb "irreparably")
(define-adverb "jointly")
(define-adverb "kinetically")
(define-adverb "largely") ;; could be approx. ;;also: "in large part"
(define-adverb "legally")
(define-adverb "lightly")
(define-adverb "linearly")
(define-adverb "literally")
(define-adverb "locally")
(define-adverb "logically")
(define-adverb "loosely") ;; maybe move to approx.
(define-adverb "mainly") ;;
(define-adverb "marginally")
(define-adverb "markedly")
(define-adverb "mathematically")
(define-adverb "maximally")
(define-adverb "meaningfully")
(define-adverb "measurably")
(define-adverb "medically")
(define-adverb "merely") ;;
(define-adverb "metabolically")
(define-adverb "metaphorically")
(define-adverb "mildly")
(define-adverb "minimally")
(define-adverb "mitotically")
(define-adverb "moderately") ;;degree?
(define-adverb "modestly")
(define-adverb "morbidly")
(define-adverb "morphologically")
(define-adverb "mutually")
(define-adverb "natively")
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
(define-adverb "organically")
(define-adverb "originally")
(define-adverb "osmotically")
(define-adverb "ostensibly")
(define-adverb "otherwise") ;;
(define-adverb "painstakingly")
(define-adverb "paradoxically")
(define-adverb "partially")
(define-adverb "particularly")
(define-adverb "partly") ;; "in part" 
(define-adverb "passively")
(define-adverb "perfectly")
(define-adverb "permanently")
(define-adverb "persistently")
(define-adverb "pervasively")
(define-adverb "perversely")
(define-adverb "physically")
(define-adverb "physiologically")
(define-adverb "poorly") ;; 
(define-adverb "popularly")
;;(define-adverb "positively") moved to NFkappB to go with "positive"
(define-adverb "potently")
(define-adverb "powerfully")
(define-adverb "practically")
(define-adverb "precipitously")
(define-adverb "predictably")
(define-adverb "predominantly")
(define-adverb "preferentially")
(define-adverb "prematurely")
(define-adverb "presumably")
(define-adverb "previously") ;; maybe want to specify something else?
(define-adverb "privately")
(define-adverb "progressively")
(define-adverb "properly")
(define-adverb "publicly")
(define-adverb "purely")
(define-adverb "purposefully")
(define-adverb "qualitatively")
(define-adverb "quantitatively")
(define-adverb "questionably")
(define-adverb "quickly")
(define-adverb "quiescently")
(define-adverb "quietly")
(define-adverb "radially")
(define-adverb "radically")
(define-adverb "randomly")
(define-adverb "rapidly")
(define-adverb "readily")
(define-adverb "realistically")
(define-adverb "really") ;; not really (ha!)
(define-adverb "reasonably")
(define-adverb "reciprocally")
(define-adverb "redundantly")
(define-adverb "regionally")
(define-adverb "regularly")
(define-adverb "relatively")
(define-adverb "reliably")
(define-adverb "remarkably")
(define-adverb "reproductively") ;;seems more pre-adjectival
(define-adverb "respectively") ;; <---- keep an eye out for this one
(define-adverb "reversibly")
(define-adverb "rhythmically")
(define-adverb "robustly")
(define-adverb "routinely")
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
(define-adverb "similarly")
(define-adverb "simply")
(define-adverb "simultaneously")
(define-adverb "singly")
(define-adverb "slightly")
(define-adverb "slowly")
(define-adverb "so far") ;;hm
(define-adverb "socially")
(define-adverb "solely")
(define-adverb "sparingly")
(define-adverb "sparsely")
(define-adverb "spatially")
(define-adverb "specially")
(define-adverb "specifically")
(define-adverb "spontaneously")
(define-adverb "stably")
(define-adverb "starkly")
(define-adverb "statistically")
(define-adverb "steadily")
(define-adverb "stochastically")
(define-adverb "straightforwardly")
(define-adverb "strictly")
(define-adverb "strikingly")
(define-adverb "strongly")
(define-adverb "structurally")
(define-adverb "substantially")
(define-adverb "subtly")
(define-adverb "successfully")
(define-adverb "suddenly")
(define-adverb "sufficiently")
(define-adverb "surely")
(define-adverb "surprisingly")
(define-adverb "superfluously")
(define-adverb "swiftly")
(define-adverb "symptomatically")
(define-adverb "synthetically")
(define-adverb "technically")
(define-adverb "technologically")
(define-adverb "temporally")
(define-adverb "temporarily") ;;
(define-adverb "terminally")
(define-adverb "theoretically")
(define-adverb "thereby") ;;
(define-adverb "thermodynamically")
(define-adverb "thinly")
(define-adverb "thoroughly")
(define-adverb "thus far")
(define-adverb "tightly") ;; "tightly controlled" from nfkappab ..hmm.
(define-adverb "together") ;;
(define-adverb "topically")
(define-adverb "totally") ;;
(define-adverb "traditionally")
(define-adverb "transcriptionally") ; <-- MIGHT want to associate w/ noun 'transcription', adj;
(define-adverb "transiently")
(define-adverb "transitively")
(define-adverb "tremendously")
(define-adverb "truly")
(define-adverb "typically")
(define-adverb "uncharacteristically")
(define-adverb "undeniably")
(define-adverb "understandably")
(define-adverb "undoubtedly")
(define-adverb "unexpectedly")
(define-adverb "unfortunately")
(define-adverb "ungainly")
(define-adverb "uniformly")
(define-adverb "unintentionally")
(define-adverb "unmistakably")
(define-adverb "unnaturally")
(define-adverb "unrealistically")
(define-adverb "unsurprisingly")
(define-adverb "unusually")
(define-adverb "vaguely")
(define-adverb "variously")
(define-adverb "visually")
(define-adverb "weakly")
(define-adverb "well")
(define-adverb "widely")
(define-adverb "wonderfully")



;;;------
;;; adjectives
;;;------


;;;----
;;; adjectives that make discursive references
;;;----
;future
(define-adjective "aforementioned")
(define-adjective "novel") 

;;should there be a rule for past participles --> adjectives
;; "given" as in "For a given cell, ..."

;;;-----
;;; bulk of adjectives
;;;-----

(define-adjective "able") ; want to give "to" tree family? "able to do x" .. or no.
(define-adjective "abundant")
(define-adjective "active")
(define-adjective "adaptive")
(define-adjective "adhesive")
(define-adjective "adjacent" :form 'spatial-adjective) 
(define-adjective "alternative") ;also a noun
(define-adjective "analogous")
(define-adjective "ancillary")
(define-adjective "antiapoptotic")
(define-adjective "apoptotic")
(define-adjective "autocrine")
(define-adjective "basal")
(define-adjective "beneficial")
(define-adjective "bioactive")
(define-adjective "biological")
(define-adjective "bona fide")
(define-adjective "canonical")
(define-adjective "capable") ;of
(define-adjective "catalytic")
(define-adjective "cellular") ;cell
(define-adjective "certain") ;interesting
(define-adjective "chimeric")
(define-adjective "chromosomal") ;chromosome
(define-adjective "chronic")
(define-adjective "common")
(define-adjective "complementary")
(define-adjective "complex") ;also noun
(define-adjective "conceptual")
(define-adjective "confluent")
(define-adjective "consistent") ;with
(define-adjective "constitutive")
(define-adjective "continuous") ; process-y
(define-adjective "critical")
(define-adjective "crucial")
(define-adjective "cytotoxic")
(define-adjective "defective")
(define-adjective "deficient")
(define-adjective "detailed")
(define-adjective "different") ;interesting
(define-adjective "difficult")
(define-adjective "distinct")
(define-adjective "distinctive")
(define-adjective "diverse")
(define-adjective "dormant")
(define-adjective "embryonic")
(define-adjective "endothelial") ; endothelium is noun
(define-adjective "environmental")
(define-adjective "epithelial")
(define-adjective "eventual" :form 'temporal-adjective)
(define-adjective "excessive")
(define-adjective "experimental")
(define-adjective "extracellular" :form 'spatial-adjective)
(define-adjective "extreme")
(define-adjective "extrinsic")
(define-adjective "free") ;<--- "free of..."
(define-adjective "frequent") ;
(define-adjective "functional")
(define-adjective "fundamental")
(define-adjective "genetic")
(define-adjective "genomic") ;genome
(define-adjective "genuine")
(define-adjective "given")
(define-adjective "gradual")
(define-adjective "heritable")
(define-adjective "heterotypic")
(define-adjective "homeostatic")
(define-adjective "hybrid")
(define-adjective "hyperactive")
(define-adjective "hyperresponsive")
(define-adjective "ill")
(define-adjective "immune")
(define-adjective "implicit")
(define-adjective "important")
(define-adjective "inactivated")
(define-adjective "inadequate")
(define-adjective "inappropriate")
(define-adjective "incipient")
(define-adjective "inflammatory") 
(define-adjective "inner" :form 'spatial-adjective)
(define-adjective "innocuous")
(define-adjective "insufficient")
(define-adjective "insular")
(define-adjective "intact")
(define-adjective "integral")
(define-adjective "intracellular" :form 'spatial-adjective)
(define-adjective "intrinsic")
(define-adjective "invisible")
(define-adjective "irreparable")
(define-adjective "key") ;also noun
(define-adjective "known")
(define-adjective "lineal")
(define-adjective "local")
(define-adjective "logical")
(define-adjective "major")
(define-adjective "malignant")
(define-adjective "maximal")
(define-adjective "mechanistic")
(define-adjective "metastatic")
(define-adjective "mitochondrial")
(define-adjective "mitogenic")
(define-adjective "morphological")
(define-adjective "multicellular")
(define-adjective "multistep")
(define-adjective "nearby" :form 'spatial-adjective)
(define-adjective "necrotic")
(define-adjective "neighboring" :form 'spatial-adjective)
(define-adjective "neoplastic")
(define-adjective "new")
(define-adjective "normal")
(define-adjective "notable")
(define-adjective "obscure")
(define-adjective "oncogenic")
(define-adjective "organismic")
(define-adjective "original")
(define-adjective "orthogonal")
(define-adjective "outer" :form 'spatial-adjective)
(define-adjective "paradoxical")
(define-adjective "particular")
(define-adjective "passive")
(define-adjective "pericellular" :form 'spatial-adjective)
(define-adjective "perpendicular" :form 'spatial-adjective)
(define-adjective "persistent")
;(define-adjective "physical")
(define-adjective "physiologic")
(define-adjective "pituitary")
(define-adjective "potent")
(define-adjective "powerful")
; (define-adjective "precise") in nfkb
(define-adjective "preeminent")
(define-adjective "preneoplastic")
(define-adjective "prevalent")
(define-adjective "proapoptotic") ;should explicitly relate to apoptosis?
(define-adjective "professional")
(define-adjective "proinflammatory") 
(define-adjective "proliferative") ;opposite: "antiproliferative" or "nonproliferative"
(define-adjective "proper")
(define-adjective "prospective")
(define-adjective "proteolytic")
(define-adjective "prototypical")
(define-adjective "quiescent")
(define-adjective "random")
(define-adjective "rare")
(define-adjective "raw")
(define-adjective "recent" :form 'temporal-adjective)
(define-adjective "recessive")
(define-adjective "redundant")
(define-adjective "regulatory")
(define-adjective "remarkable")
(define-adjective "replicative") 
(define-adjective "reversible")
(define-adjective "similar") ;relation
(define-adjective "solid")
(define-adjective "somatic")
(define-adjective "specific")
(define-adjective "stromal") ;stroma
(define-adjective "structural")
(define-adjective "suboptimal")
(define-adjective "substantial")
(define-adjective "successive") ;;!!!
(define-adjective "sufficient")
(define-adjective "susceptible")
(define-adjective "systematic")
(define-adjective "telomeric") ;telomere
(define-adjective "therapeutic")
(define-adjective "tractable")
(define-adjective "transformative")
(define-adjective "transitive")
(define-adjective "transitory")
(define-adjective "transmembrane")
(define-adjective "tumorigenic")
(define-adjective "two-dimensional") ;synonym "2D", is this spatial?
(define-adjective "undirected")
(define-adjective "upper" :form 'spatial-adjective)
(define-adjective "useable")
(define-adjective "useful")
(define-adjective "vast")
(define-adjective "versatile")
(define-adjective "viable")
(define-adjective "widespread")


