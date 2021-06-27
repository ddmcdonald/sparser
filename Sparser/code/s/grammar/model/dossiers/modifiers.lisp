;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2021 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "modifiers"
;;;    Module:   "model;dossiers:"
;;;   Version:   February 2021

;; Created 1/4/13 to group together comparatives, approximators, etc in
;; one place so they're easier to keep track of. (1/9/13) Moved in all
;; the adverbs from words/adverbs1, including the ones with only function 
;; word definitions because their category hasn't been defined yet. 
;; (1/18/13) put in define-position-in-process. 5/22 added "no longer"
;; (5/30/13) added in earlier, sooner as adverbs and function words
;; 5/6/14 Moved in the quantities from its own file
;; 10/29/14 exposed the comparatives. Forgot why they had been commented out.

;; Commenting out some word for collision with stronger forms in bio
;; through 4/20/15 and beyond.


(in-package :sparser)


;;;----------------------
;;; Discourse adverbials
;;;----------------------

(define-discourse-adverbial "anyway"
    :doc "As in 'we'll do it anyway', which makes sense when
 there was some impediment to doing it, but we're indicating
 that we want to ignore it. 
   Used in utterance-initial position, it has the force of 
 injecting a break into the discourse and a goal of shifting topics, 
 often to a prior topic that was pushed.")
;;/// In (p/s "Let's build it anyway.") the 'anyway' is parsed
;; as an adverb on the verb. It really should be an operator
;; at the discourse level, but we can cross that bridge later.


;;---- "so"
;; Also used anaphorically "and so did Harry"
;; as an agreement "I think so"
;;/// and a zillion other readings
(define-adverb "so")

;; Is defined as a subordinate conjunctino too in
;; words/conjunctions.lisp


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

;; not sure if this is appropriate, but we are getting bad parses for "one or more proteins"
(define-approximator/determiner "or more")
(define-approximator/determiner "or fewer")
(define-approximator/determiner "or less")

(define-approximator/determiner "almost")

;; (define-approximator/determiner "about") ;; this is subtle
(define-preposition "about") ;; but not point in having two edges here

(define-approximator/determiner "around")

(define-approximator/determiner "a bit") ; "just a bit more unpopular"
(define-approximator/determiner "a little bit")

(define-approximator/determiner "approximately")
(define-approximator/determiner "at least")
(define-approximator/determiner "at most")
(define-approximator/determiner "barely")
(define-approximator/determiner "exactly") ;; not just a determiner..
(define-approximator/determiner "just")
(define-approximator/determiner "more than") ;;????????????
(define-approximator/determiner "nearly") ;; could also be approx/adverbial. what to do for this type of "generic" modifier that can go before preps, adjs too?
(define-approximator/determiner "precisely") ;;
(define-approximator/determiner "roughly")
(define-approximator/determiner "somewhat") ;; also an intensifier?

(define-approximator/adverbial "fairly")
(define-approximator/adverbial "hardly")
(define-approximator/adverbial "mostly")
(define-approximator/adverbial "only") ;; "only two" "this can only occur if.."




#|  approximator rules

;; initiated 11/15/95

(def-form-rule (approximator np)
  :form np
  :referent (:daughter right-edge))
|#


;;;------------
;;; {attitude}
;;;------------
#|
(define-reflection-on "despite")

(define-reflection-on "in spite of")
(define-reflection-on "regardless of")
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

(define-intensifier "abnormally")
(define-intensifier "absolutely")
(define-intensifier "acutely")
(define-intensifier "amazingly")
(define-intensifier "astoundingly")
(define-intensifier "dramatically")
(define-intensifier "drastically")
(define-intensifier "especially")
(define-intensifier "excessively")
(define-intensifier "extensively")
(define-intensifier "extraordinarily")
(define-intensifier "extremely")
(define-intensifier "fully")
(define-intensifier "immensely")
(define-intensifier "loosely")
(define-intensifier "mainly")
(define-intensifier "marginally")
(define-intensifier "markedly")
(define-intensifier "meaningfully")
(define-intensifier "merely")
(define-intensifier "moderately")
(define-intensifier "nicely")
(define-intensifier "too") ; what about sense of "also"?
(define-intensifier "quite")
(define-intensifier "radically")
(define-intensifier "really")
(define-intensifier "sharply")
(define-intensifier "significantly")
;;(define-intensifier "somewhat") -- approx. determiner
(define-intensifier "sparingly")
(define-intensifier "sparsely")
(define-intensifier "straightforwardly")
(define-intensifier "strictly")
(define-intensifier "strikingly")
(define-intensifier "strongly")
(define-intensifier "totally")
(define-intensifier "tremendously")
(define-intensifier "truly")
(define-intensifier "uncharacteristically")
(define-intensifier "undeniably")
(define-intensifier "understandably")
(define-intensifier "undoubtedly")
(define-intensifier "unexpectedly")
(define-intensifier "unfortunately")
(define-intensifier "unmistakably")
(define-intensifier "unusually")
(define-intensifier "vaguely")
(define-intensifier "wonderfully")

(define-function-term "very" 'adverb
  :super-category 'intensifier
  :tree-families '(pre-adj-adverb pre-adv-adverb))



;;;---------------------------
;;; position within a process
;;;---------------------------
;; As adverbs, these can be positioned sentence initial or final
;; as well as pre-verb, so they need bracketing that can indicate
;; segment starts too.  If there's an equivalent adjective form
;; we give them a common referent

(define-position-in-process "eventually" :adj "eventual" :form 'temporal-adjective)
(define-position-in-process "initially" :adj "initial")
(define-position-in-process "finally" :adj "final")
(define-position-in-process "subsequently" :adj "subsequent")
(define-position-in-process "ultimately" :adj "ultimate")


;;;----------
;;; quantity
;;;----------
#|  A "quantity", like a number, is the answer to "how many"
    Quantities distribute exactly like numbers, including their composition
    to form measurements and their capacity as determiners.  |#

(define-quantity "multiple")
(define-quantity "unlimited")

;; "numerous", "several" "various" moved to quantifiers because
;; they can be used in partitive constructions



;;;------------
;;; Sequencers
;;;------------

(define-sequencer/adjective "first") ;; "it was first rinsed ..."
(define-sequencer/adjective "last")
(define-sequencer/adjective "previous")
(define-simultaneous-adjective-adverb "next" ;; We next considered ...
    :super-category 'sequencer)

(define-sequencer/adjective "former")
(define-sequencer/adjective "latter")
        
(unless (current-script :biology)
  (define-sequencer/adjective "following"))

(define-relative-position-preposition "after")
(define-relative-position-preposition "before")
(define-relative-position-preposition "during")


;;;-----------
;;; subjuncts
;;;-----------

;; Quirk et all 8.116, H&P p586
(define-focusing-adverb "also")  
        

;;;------
;;; time
;;;------

;;;---------- deictic, standalone

(define-relative-time-adverb "ago") ;; really only good in th age-ago phrase
(define-relative-time-adverb "already")
(define-relative-time-adverb "as yet")
(define-relative-time-adverb "currently")
(define-relative-time-adverb "formerly") ;; might move / redefine?
(define-relative-time-adverb "immediately")
(define-relative-time-adverb "lately")
(define-relative-time-adverb "presently")
(define-relative-time-adverb "previously") ;;maybe
(define-relative-time-adverb "recently")
(define-relative-time-adverb "soon")
(define-relative-time-adverb "still") ;; not just for time, though "still others" "standing still"
(define-relative-time-adverb "thereafter") ;; "immediately thereafter" ?
(define-relative-time-adverb "then") ;<<<<<<<<<<<<<<<<<<<<
(define-relative-time-adverb "yet") 


;;;---------- deictic, complement-taking
;;  take "than" complements

(define-adverb "sooner")
(define-adverb "earlier")
(define-adverb "later") ;; "later on"?


;;;---------
;;; adjectives / adverbs
;;;---------
(adj/adv "obvious" "obviously" :super-category 'modifier)
(adj/adv "operational" "operationally" :super-category 'modifier)
(adj/adv "severe" "severely" :super-category 'modifier)

;;;---------
;;; adverbs
;;;--------

;;;---------- directional adverbs
(define-adverb "diagonally")
(define-adverb "laterally")
(define-adverb "orthogonally")
(define-adverb "perpendicularly")

;;;---------- adverbs


(define-adverb "accordingly")
(define-adverb "accurately")
(unless (current-script :biology)
  (define-adverb "actively"))
(define-adverb "actually")
(define-adverb "additionally")
(define-adverb "adequately")
(define-adverb "admirably")
(define-adverb "admittedly")
(define-adverb "again") ;; <--- could be part of a sequence?
(define-adverb "agriculturally")
(define-adverb "alarmingly")
(define-adverb "all the way")
(define-adverb "alone")
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

(define-adverb "chronologically")
(define-adverb "circularly")
(define-adverb "clearly")
(define-adverb "clinically")
(define-adverb "clonally")
(define-adverb "closely")
(define-adverb "coherently")
(define-adverb "collectively")
(define-adverb "colloquially")
(define-adverb "commercially")
(define-adverb "commonly")
(define-adverb "compactly")
(define-adverb "comparatively")
(define-adverb "completely")
(define-adverb "comprehensively")
(define-adverb "computationally")
(define-adverb "conceptually")
(define-adverb "conclusively")
(define-adverb "concomitantly")
(define-adverb "concordantly")
(define-adverb "conditionally")
(define-adverb "confidently")
(define-adverb "consequently")
(define-adverb "considerably")
(define-adverb "consistently")
(define-adverb "continuously")
(define-adverb "conventionally")
(define-adverb "conversely")
(define-adverb "convincingly")
(define-adverb "cooperatively")
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
(define-adverb "dynamically")
;;(define-adverb "e.g.") -- see conjunction
(define-adverb "e. g.") ;; attested?
(define-adverb "easily")
(define-adverb "effectively")
(define-adverb "efficiently")
(define-adverb "electrically")

(define-adverb "energetically")
(define-adverb "entirely") ;;hmm
(define-adverb "environmentally")
(define-adverb "enzymatically")
(define-adverb "equally")
(define-adverb "equivalently")
(define-adverb "erroneously")
(define-adverb "essentially")
(define-adverb "ethically")
(define-adverb "even")
(define-adverb "evenly")
(define-adverb "evidently")
(define-adverb "evocatively")
(define-adverb "evolutionarily")
(define-adverb "exclusively")
(define-adverb "experimentally")
(define-adverb "externally")
(define-adverb "familiarly")
(define-adverb "famously")
(define-adverb "federally")
(define-adverb "figuratively")
(define-adverb "finely")
(define-adverb "firmly")
;; (define-adverb "for example") -- see conjunction
(define-adverb "for instance")
(define-adverb "forcefully")
(define-adverb "formally")
(define-adverb "fortunately")
(define-adverb "frankly") ;when used with 'neoplastic': as opposed to "potentially"
(define-adverb "freely")
(define-adverb "frustratingly")
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

(define-adverb "hugely")
(define-adverb "hypothetically")
(define-adverb "ideally")
(define-adverb "identifiably")
(define-adverb "illustratively")
(define-adverb "implicitly")
(define-adverb "importantly")
(define-adverb "in concert")
(define-adverb "in contrast")
(define-adverb "in stark contrast")
(define-adverb "in fact")
(define-adverb "in general")
(define-adverb "in part")
(define-adverb "in large part")
(define-adverb "in one way or another")
(define-adverb "in turn") ;; imposes relationship between events
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
;; (define-adverb "instead") use subord. conj.
(define-adverb "insufficiently")
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
(define-adverb "largely") ;; could be approx.
(define-adverb "legally")
(define-adverb "lightly")
(define-adverb "linearly")
(define-adverb "literally")
(define-adverb "locally")
(define-adverb "logically")
(define-adverb "mathematically")
(define-adverb "maximally")
(define-adverb "measurably")
(define-adverb "medically")

(define-adverb "metaphorically")
(define-adverb "mildly")
(define-adverb "minimally")

(define-adverb "modestly")
(define-adverb "morbidly")
(define-adverb "morphologically")
(define-adverb "mutually")
(define-adverb "nationally")
(define-adverb "natively")
(define-adverb "naturally")
(define-adverb "necessarily")
(define-adverb "newly")
(define-adverb "nominally")
(define-adverb "noninvasively")
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
;; (define-adverb "otherwise") ;; subord. comj
(define-adverb "painfully")
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
(define-adverb "please") ;; not sure about this
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
(define-adverb "pretty" :super-category 'intensifier)
(define-adverb "primarily")
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
(define-adverb "randomly")
(define-adverb "rapidly")
(define-adverb "rather")
(define-adverb "readily")
(define-adverb "realistically")
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
(define-adverb "sexually")
(define-adverb "shortly")
(define-adverb "similarly")
(define-adverb "simply")
(define-adverb "simultaneously")
(define-adverb "singly")
(define-adverb "slightly")
(define-adverb "slowly")
(define-adverb "so far") ;;hm
(define-adverb "socially")
(define-adverb "solely")
(define-adverb "somehow")
(define-adverb "spatially")
(define-adverb "specially")
(define-adverb "specifically")
(define-adverb "spontaneously")
(define-adverb "stably")
(define-adverb "starkly")
(define-adverb "statistically")
(define-adverb "steadily")
(define-adverb "stochastically")
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
(define-adverb "symbiotically")
(define-adverb "symptomatically")
(define-adverb "synthetically")
(define-adverb "technically")
(define-adverb "technologically")
(define-adverb "temporally")
(define-adverb "temporarily") ;;
(define-adverb "terminally")
(define-adverb "theoretically")
;; (define-adverb "thereby") ;; moved to subord. conjunctions
(define-adverb "thermodynamically")
(define-adverb "thinly")
(define-adverb "thoroughly")
(define-adverb "thus far")
(define-adverb "tightly") ;; "tightly controlled" from nfkappab ..hmm.
(define-adverb "together") ;;
(define-adverb "topically")
(define-adverb "traditionally")
(define-adverb "transcriptionally") ; <-- MIGHT want to associate w/ noun 'transcription', adj;
(define-adverb "transiently")
(define-adverb "transitively")
(define-adverb "typically")
(define-adverb "ungainly")
(define-adverb "uniformly")
(define-adverb "unintentionally")
(define-adverb "uniquely")
(define-adverb "unnaturally")
(define-adverb "unrealistically")
(define-adverb "unsurprisingly")
(define-adverb "variously")
(define-adverb "visually")
(define-adverb "weakly")
(define-adverb "well")
(define-adverb "widely")
(define-adverb "whatsoever") ; negative contexts: "none __"

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

(define-adjective "aberrant")
(unless (current-script :biology)
  (define-adjective "able")) ; want to give "to" tree family? [yes - in biology] "able to do x" .. or no.
(define-adjective "abnormal")
(unless (current-script :biology)
  (define-adjective "abundant"))
(define-adjective "accurate")
(unless (current-script :biology)
  (define-adjective "active"))
(define-adjective "adaptive")
(define-adjective "adhesive")
(define-adjective "adjacent" :form 'spatial-adjective)
(define-adjective "advantageous") 
(define-adjective "aerobic")
(define-adjective "alternative") ;also a noun
(define-adjective "anaerobic")
(define-adjective "analogous")
(define-adjective "ancillary")
(define-adjective "anomalous")
(define-adjective "antiapoptotic")
(define-adjective "antitumoral")
(define-adjective "apoptotic")
(define-adjective "appropriate")
(define-adjective "autocrine")
(define-adjective "avian")
(define-adjective "basal")
(define-adjective "beneficial")

(define-adjective "bona fide")
(define-adjective "broad")

(define-adjective "canonical")
(define-adjective "capable") ;of

(define-adjective "causal")
(define-adjective "cellular") ;cell
(define-adjective "central" :form 'spatial-adjective)
;;(define-adjective "certain") ; stronger def in harvard-terms
(define-adjective "chimeric")

(define-adjective "chronic")
(define-adjective "circumstantial")
(define-adjective "clear")
;;(define-adjective "clinical")
(define-adjective "clonal")
;;(define-adjective "common")
(define-adjective "complementary")
(define-adjective "complete")
(unless (current-script :biology)
  (define-adjective "complex")) ;also noun // need noun for biology
(define-adjective "conceptual")
(define-adjective "confluent")
(unless (current-script :biology)
  (define-adjective "consistent") ; with
  (define-adjective "constitutive"))
(define-adjective "continual")
(define-adjective "continuous") ; process-y
(define-adjective "counterintuitive")
(unless (current-script :biology)
  (define-adjective "critical"))
(define-adjective "crucial")
(define-adjective "cytotoxic")
(define-adjective "decisive")
(define-adjective "defective")
;;(define-adjective "deficient") ;; 4/20/15 moved to biology/terms1.lisp to take an argument
(define-adjective "deleterious")
(define-adjective "demonstrable")
(define-adjective "derivative")
(define-adjective "detailed")
(define-adjective "dichotomous")
(define-adjective "different") ;interesting
(define-adjective "differential")
(define-adjective "difficult")
(define-adjective "direct")
(define-adjective "discrete")
(define-adjective "distant" :form 'spatial-adjective)
(define-adjective "distinct")
(define-adjective "distinctive")
(define-adjective "diverse")
(define-adjective "dominant")
(define-adjective "dormant")
(define-adjective "druggable")
(define-adjective "dynamic")
(define-adjective "dysfunctional")
(define-adjective "economical")
(define-adjective "efficient")
(define-adjective "elaborate")

(define-adjective "entire")
(define-adjective "environmental")

(define-adjective "evasive")

(define-adjective "excessive")
(define-adjective "experimental")
(define-adjective "extensive")

(define-adjective "extraordinary")
(define-adjective "extreme")
(define-adjective "extrinsic")
(define-adjective "familiar")
(define-adjective "fascinating")
(define-adjective "feasible")
(define-adjective "foreign")
(define-adjective "free") ;<--- "free of..."
(define-adjective "frequent") ;
(define-adjective "full-blown")
(define-adjective "functional")
(define-adjective "fundamental")

(define-adjective "genuine")
(define-adjective "given")
(define-adjective "good")
(define-adjective "gradual")
(define-adjective "gross")
(define-adjective "harmful")
(define-adjective "heavy")

(define-adjective "heritable")

(define-adjective "hybrid")
(define-adjective "hyperactive")
(define-adjective "hyperresponsive")
(define-adjective "hypoxic") ;low-oxygen
(define-adjective "ill")

(define-adjective "implicit")
(adj "important" :mixins (action-on-eventuality))
(adj "impressive" :mixins (action-on-eventuality))
(define-adjective "inactivated")
(adj "inadequate" :mixins (action-on-eventuality))
(adj "inappropriate" :mixins (action-on-eventuality))
(define-adjective "incipient")
(define-adjective "incomplete")
;;(define-adjective "independent")
(define-adjective "individual")
(adj "inflammatory" :mixins (action-on-eventuality))
(define-adjective "informative")
(define-adjective "innate")
(define-adjective "inner" :form 'spatial-adjective)
(define-adjective "innocuous")
(define-adjective "instrumental")
(define-adjective "insufficient")
(define-adjective "insular")
(define-adjective "intact")
(define-adjective "integral")
(define-adjective "interconnected")

(define-adjective "intrinsic")
(define-adjective "invisible")
(define-adjective "irreparable")
(define-adjective "irreversible")
(define-adjective "karyotypic")
(define-adjective "key") ;also noun
(define-adjective "known")
;; (define-adjective "large") -- quality
(define-adjective "latent")
(define-adjective "lineal")
(define-adjective "local")
(define-adjective "logical")
;; (define-adjective "lower") ;;/// ambig w/ verb reading
;;    delaying until after current crunch 9/19/14.
(define-adjective "major")
(define-adjective "malignant")
(define-adjective "maximal")
(define-adjective "mechanistic")

(define-adjective "morphological")

(define-adjective "multistep")

(define-adjective "nascent")
(define-adjective "national")
(define-adjective "natural")
(define-adjective "nearby" :form 'spatial-adjective)
(adj "necessary" :super state
                 :mixins (action-on-eventuality)
                 :realization 
     (:for theme ;; 'for eating'
       :to theme
       :to-comp theme))
;;(define-adjective "necessary")

(define-adjective "neighboring" :form 'spatial-adjective)

(define-adjective "new")
(define-adjective "nominal")

(define-adjective "normal")
(define-adjective "corrected-to-normal")
(define-adjective "notable")
(define-adjective "null")
(define-adjective "obscure")

(define-adjective "ongoing")
(define-adjective "organismic")
(define-adjective "original")
(define-adjective "orthogonal")
(define-adjective "other") ; was a quantifier at one point
(define-adjective "outer" :form 'spatial-adjective)
(define-adjective "overt")
(define-adjective "own")


(define-adjective "paradoxical")
(define-adjective "particular")
(define-adjective "passive")

(define-adjective "permissive")
(define-adjective "perpendicular" :form 'spatial-adjective)
(define-adjective "persistent")

(define-adjective "poor")
(define-adjective "potent")
(define-adjective "powerful")
; (define-adjective "precise") in nfkb
(define-adjective "preeminent")

(define-adjective "prevalent")
(define-adjective "primary")

(define-adjective "professional") ;with 'phagocyte' means something special

(define-adjective "prominent")
(define-adjective "proper")
(define-adjective "prospective")
(define-adjective "protective")

(define-adjective "prototypical")
(define-adjective "quiescent")
(define-adjective "random")
(unless (current-script :biology)
  (define-adjective "rapid"))
(define-adjective "rare")
(define-adjective "raw")
(define-adjective "reactive")
(define-adjective "recent" :form 'temporal-adjective)
(define-adjective "receptive")
(define-adjective "recessive")
(define-adjective "reciprocal")
(define-adjective "redundant")
(define-adjective "regular")
(define-adjective "regulatory")
(define-adjective "related")
(define-adjective "remarkable")

(define-adjective "reversible")
(define-adjective "selective")
(define-adjective "senescent")
;; (define-adjective "short") -- quality
(define-adjective "significant")
(define-adjective "silent") ;in terms of mutation: no resultant change in phenotype
(unless (current-script :biology)
  (define-adjective "similar"))
(define-adjective "simple")
;; (define-adjective "small")-- quality
(define-adjective "solid")

(define-adjective "specific")
(define-adjective "spontaneous")
(unless (current-script :biology)
  (define-adjective "stable"))

(define-adjective "structural")
(define-adjective "subcritical")
(define-adjective "suboptimal")
(define-adjective "substantial")
(define-adjective "successful")
(define-adjective "successive") ;!!!
(define-adjective "sufficient")
(define-adjective "supportive")
(define-adjective "surgical")
(define-adjective "susceptible")
(define-adjective "systematic")

(define-adjective "transformative")
(define-adjective "transitive")
(define-adjective "transitory")

;;(define-adjective "two-dimensional") ;synonym "2D", is this spatial?
;;   in midlevel ontology
(define-adjective "unanticipated")
(define-adjective "unbalanced")
(define-adjective "uncontrolled")
(define-adjective "undirected")
(define-adjective "unexpected")
(define-adjective "unresolved")
(define-adjective "unstable")
(define-adjective "upper" :form 'spatial-adjective)
(define-adjective "useable")
(unless (current-script :biology)
  (define-adjective "useful"))
;; (define-adjective "variable") - moved to experiment-language
(define-adjective "vast")
(define-adjective "versatile")
(define-adjective "viable")
(define-adjective "vigorous")
(define-adjective "widespread")
(define-adjective "wrong")

