;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "loader"
;;;  Module: "grammar/model/sl/score/
;;; version: September 2021

;; Broken out of comlex-verb-explorations 8/23/21

(in-package :sparser)

;;;-------
;;; lists
;;;-------

(defparameter *COMLEX-VERBS* ;; 817
  '("abate" "abound" "abuse" "accentuate" "accept" "access" "accommodate" "account" "ache"
    "acquire" "addict" "address" "administer" "admire" "adopt" "advertise" "advise" "advocate"
    "affirm" "afflict" "afford" "agree" "aid" "aim" "alert" "allocate" "alternate" "ameliorate"
    "anger" "angle" "ape" "appeal" "appreciate" "approximate" "arise" "arouse" "arrange"
    "ascertain" "assault" "assert" "attack" "attain" "aver" "avoid" "backfire" "bag" "balance"
    "ball" "ban" "battle" "bay" "beach" "beaches" "bear" "begin" "behave" "behoove" "being"
    "belittle" "bell" "belong" "benefit" "bespeak" "beware" "bias" "biases" "bill" "bin"
    "blame" "bleach" "blend" "blunt" "blur" "bolster" "bomb" "bottle" "bow" "box" "bracket" "brake"
    "branch" "break" "bridge" "brief" "bring" "brook" "bubble" "build" "bullshit"
    "burden" "burke" "bus" "butter" "button" "buy" "bypass" "cable" "calibrate" "call" "calm"
    "campaign" "cap" "career" "cartoon" "cash" "cast" "catch" "caught" "center" "centre"
    "certificate" "chain" "chair" "chase" "chat" "check" "checker" "cheer" "chew" "choose" "circle"
    "cite" "claim" "clam" "class" "clean" "clear" "clip" "close" "clot" "cloud" "club"
    "coach" "cohere" "coin" "coincide" "coke" "collapse" "comb" "come" "comfort" "comment" "commit"
    "compass" "compel" "comport" "compound" "comprehend" "con" "concert" "concur" "conflict"
    "confront" "conjecture" "connote" "conquer" "contact" "contend" "contour" "contradict"
    "converse" "copyright" "cord" "core" "correct" "corroborate" "cough" "count" "counteract"
    "couple" "course" "cox" "craft" "crash" "crew" "cross" "cruise" "crush" "cultivate" "curve"
    "dare" "daydream" "deal" "debate" "debug" "decay" "decelerate" "decline" "decompose" "decree"
    "deepen" "default" "defend" "deflect" "deliberate" "delineate" "deliver" "deluge" "depart"
    "depict" "deploy" "deserve" "design" "desire" "despair" "destroy" "deviate" "diagnose" "differ"
    "differentiate" "dip" "disagree" "disapprove" "discharge" "discipline" "disclose" "disconnect"
    "discount" "discourage" "discourse" "discover" "discredit" "disentangle" "disgust" "dislike"
    "dismiss" "disprove" "dispute" "disseminate" "distort" "distract" "distress" "distrust"
    "divine" "document" "dodge" "dose" "doubt" "dovetail" "downplay" "draw" "dread" "dream" "drink"
    "dry" "earth" "echo" "egg" "elbow" "embrace" "employ" "empty" "encompass" "encompasses"
    "encounter" "encourage" "endorse" "endure" "enforce" "engage" "enjoy" "enlighten" "enrich"
    "entail" "equal" "err" "escalate" "esteem" "estimate" "evade" "evaluate" "exact" "excel"
    "excuse" "execute" "exempt" "exercise"
    "expand" "explore" "factor" "fail" "fake" "fall"
    "fashion" "fatigue" "fault" "fear" "fee" "fence" "fight" "file" "filter" "finance"
    "finger" "flag" "flame" "flatten" "flavour" "flee" "flock" "flood" "floor" "flour" "flow"
    "focus" "fold" "follow" "foot" "force" "forgo" "format" "formulate" "foster" "fox" "fracture"
    "frank" "freelance" "front" "fuck" "fuel" "fulfil" "gad" "game" "garden" "gargle" "garland"
    "gather" "gauge" "gaze" "gesture" "gift" "ginger" "glance" "glimmer" "glimpse" "go" "gong"
    "grab" "grade" "graduate" "grasp" "grave" "gravitate" "greet" "grey" "group" "guarantee"
    "guess" "guide" "gun" "gut" "halve" "ham" "hamper" "hand" "handshake" "hang" "happen" "harden"
    "harm" "harry" "hazard" "headquarter" "heal" "hear" "heat" "hedge" "heighten" "held"
    "hinder" "hit" "hoax" "hold" "hole" "holiday" "honor" "host" "house" "hug" "hum" "humor"
    "humour" "hunch" "hunches" "hunt" "hurdle" "hurt" "illuminate" "image" "impose" "index"
    "inject" "input" "inspect" "inspire" "instance" "institute" "insult" "inter" "intercept"
    "interest" "interpret" "interview" "invalid" "invalidate" "inverse" "invoke" "irrigate" "jail"
    "jaw" "job" "join" "joke" "jot" "journey" "judge" "keen" "key" "kid" "kiss" "kit"
    "knight" "knit" "know" "labor" "labour" "ladder" "land" "landscape" "last" "laugh"
    "layer" "lessen" "liberate" "license" "lie" "light" "live" "load" "lock" "lodge" "log" "lord"
    "lull" "lure" "machine" "madden" "magnify" "mail" "major" "manage" "mandate"
    "manifest" "manifold" "march" "market" "mask" "master" "maunder" "maximise" "mean" "meet"
    "merit" "message" "mill" "mind" "misconduct" "misread" "miss" "misses" "mistake" "mistrust"
    "mitigate" "moderate" "motivate" "mouth" "mute" "navigate" "necessitate" "neighbor" "neighbour"
    "net" "nettle" "nominate" "nose" "notice" "nuance" "occasion" "offer" "offset" "order"
    "outline" "overcome" "overflow" "overlaid" "overlay" "overload" "override" "package" "page"
    "paid" "pair" "panic" "paper" "parallel" "parcel" "partake" "pass" "pause" "pave" "pension"
    "people" "perceive" "permit" "pet" "peter" "phase" "phone" "pickle" "picture" "piece" "plague"
    "plan" "plot" "point" "police" "polish" "poll" "ponder" "port" "portray" "pose" "posture"
    "potter" "pout" "power" "practice" "prefer" "prejudice" "premise" "prep" "press" "pressure"
    "pretend" "prey" "price" "print" "prize""profile" "profit" "program" "progress"
    "prohibit" "project" "prompt" "proposition" "prospect" "protest" "punish" "puzzle" "quarantine"
    "queen" "quest" "quiet" "quit" "quiz" "race" "racket" "raffle" "raft" "rally" "rap"
    "reason" "rebel" "rebuke" "rebut" "recall" "receipt" "redefine" "refer" "refine" "reflect"
    "reform" "refuse" "register" "regress" "reign" "reinforce" "reject" "relate"
    "remark" "remedy" "remember" "remit" "render" "replace" "replies" "reply" "request"
    "rerun" "rescue" "research" "reset" "resonate" "respect" "rest" "restart" "restore" "retail"
    "review" "revolt" "revolve" "reward" "ridge" "right" "rim" "ripple" "rise" "risk" "rival"
    "room" "root" "rose" "rough" "round" "row" "rub" "rule" "ruminate" "rumor" "sacrifice" "saddle"
    "safeguard" "salute" "sandwich" "save" "savvy" "scan" "scatter" "scent" "schedule" "scheme"
    "school" "score" "screech" "search" "season" "secure" "segment" "sell" "send" "sense" 
    "service" "settle" "sever" "sex" "shadow" "shake" "shallow" "shape" "shave" "shelter" "shelve"
    "shin" "ship" "shock" "shoe" "shop" "shore" "shorten" "shot" "shrink" "shut" "sift" "sign"
    "sin" "sip" "sit" "skew" "ski" "skyrocket" "sleep" "slight" "slur" "smart" "smell" "smoke"
    "smolder" "smooth" "snack" "snap" "sneeze" "snow" "snowball" "soap" "sole" "solicit" "solve"
    "sound" "source" "speak" "speculate" "spend" "spike" "spill" "spin" "split" "sport" "spot"
    "spread" "sprinkle" "squire" "stake" "stall" "stand" "staple" "star" "station" "steel" "steep"
    "stem" "stereotype" "stick" "stone" "store" "strand" "strengthen" "stress" "strike"
    "strip" "stud" "stump" "style" "stymie" "sub" "submit" "subscribe" "subside" "suffer"
    "suffice" "sum" "sun" "sup" "supplies" "supply" "surge" "survey" "swab" "swear" "swing"
    "tackle" "take" "tan" "taste" "teach" "telephone" "thread" "threat" "throw" "thumb" "tide"
    "tolerate" "toll" "total" "towel" "tower" "trace" "track" "travel" "trend" "trip" "troll"
    "troop" "trouble" "trump" "turn" "twitter" "type" "uncover" "underestimate" "undermine"
    "underrate" "underscore" "undertake" "undervalue" "uniform" "unravel" "update" "uphold" "upset"
    "usher" "vary" "visit" "voice" "wait" "waive" "wake" "wall" "war" "wave" "weather" "weekend"
    "welcome" "wheel" "wild" "win" "wipe" "wish" "wonder" "woo" "word" "worship" "wrap"
    "wrote" "zone"))



(defparameter *morph-comlex-verbs* ;; 613
  '("abide" "absent" "absorb" "accessed" "accompany" "accomplish" "accord" "accuse" "achieve"
    "acknowledge" "adapt" "addressed" "adjust" "admit" "affiliate" "aged" "aggregate" "alarm" "align"
    "allay" "allege" "alleviate" "alter" "amaze" "amount" "annotate" "annoy" "anticipate" "appal"
    "appraise" "apprehend" "approach" "approve" "argue" "arm" "arrive" "ascend" "ascribe" "assign"
    "assist" "assure" "attacks" "attempt" "attend" "attest" "attract" "author" "automate" "average"
    "await" "award" "back" "be" "bereave" "bike" "blind" "bombard" "boost" "bound" "bowl" "brace"
    "bridges" "broadcast" "browse" "bud" "burgeon" "burn" "can" "cancel" "canceled" "capitalize"
    "capture" "categorize" "caution" "cease" "celebrate" "censor" "certify" "channel" "charge"
    "cherish" "circulate" "clarify" "classify" "cleanse" "click" "coat" "codify" "cohabit"
    "collaborate" "collar" "collect" "combat" "combine" "commence" "commission" "communicate"
    "commute" "compete" "complement" "complete" "complicate" "comprise" "compute" "conceal" "conceive"
    "concentrate" "conclude" "condense" "condition" "conform" "confuse" "congregate" "connect"
    "consent" "consist" "conspire" "constrain" "constrict" "construe" "consult" "consume"
    "contaminate" "contemplate" "converge" "convey" "coordinate" "cop" "counsel" "counter"
    "counterbalance" "crease" "cripple" "criticize" "crystallize" "cure" "curtail" "cut" "dash" "dawn"
    "debunk" "decide" "declare" "decry" "dedicate" "deem" "defect" "defer" "define" "defy" "delay"
    "delude" "demand" "denote" "deny" "depressed" "deprive" "designate" "destine" "devalue"
    "devastate" "devise" "devote" "dial" "dilute" "disable" "disappear" "discard" "discern"
    "discontent" "discriminate" "disengage" "disinfect" "dislocate" "dispense" "display" "dispose"
    "disregard" "dissatisfy" "dissent" "distance" "distribute" "disturb" "diverge" "diversify"
    "divorce" "donate" "down" "draft" "dun" "dupe" "dwarf" "dying" "ease" "eat" "educate" "elapse"
    "elect" "elicit" "elope" "emanate" "embed" "emerge" "emphasize" "enact" "end" "endanger"
    "endeavor" "engineer" "enrol" "ensure" "entertain" "entitle" "entrance" "envision" "equalize"
    "equip" "erase" "evacuate" "evidence" "evoke" "evolve" "exacerbate" "exaggerate" "exasperate"
    "exceed" "excite" "exclude" "exert" "exhaust" "exhibit" "expedite" "experience" "expire" "exploit"
    "expose" "extend" "externalize" "extract" "extrapolate" "fabricate" "face" "favor" "feed" "field"
    "fingers" "finish" "fix" "flash" "flourish" "fly" "forecast" "forego" "formalize" "found" "frame"
    "freeze" "frustrate" "fry" "fund" "gain" "gamble" "gear" "generalize" "govern" "grant" "ground"
    "guaranteed" "hail" "halt" "handle" "harnessing" "hatch" "head" "heed" "help" "hide" "hijack"
    "hire" "hoard" "hospitalize" "ignite" "ignore" "imagine" "imbue" "immerse" "immunize" "impend"
    "implement" "implore" "incite" "incline" "incur" "individualize" "infect" "infer" "inflate"
    "inhabit" "inoculate" "inquire" "instil" "institutionalize" "instruct" "integrate" "intensify"
    "intermix" "interrupt" "intersect" "intertwine" "intervene" "introduce" "introvert" "inundate"
    "invent" "invest" "invite" "issue" "jeopardize" "jog" "justify" "lag" "lament" "launch" "layers"
    "lean" "leave" "lend" "lift" "listen" "litter" "locate" "loosen" "love" "lying" "manipulate"
    "manufacture" "mark" "marry" "matter" "maximize" "memorize" "merge" "mine" "minimize" "mirror"
    "misbehave" "misguide" "mislead" "misrepresent" "missed" "misunderstand" "mix" "model" "modeled"
    "monitor" "mount" "multiply" "neglect" "nest" "normalize" "notify" "nudge" "nullify" "nurse"
    "nurture" "obey" "oblige" "obscure" "occupy" "omit" "open" "oppose" "opt" "organize" "orient"
    "outweigh" "overarch" "overburden" "overcrowd" "overestimate" "overlook" "overreact"
    "overshadowed" "overtax" "overwhelm" "own" "pacify" "pack" "paint" "patent" "patronize" "pay"
    "perfect" "perish" "perpetrate" "personalize" "persuade" "pertain" "phrase" "pick" "play" "poison"
    "polarize" "politicize" "pollute" "pool" "populate" "portion" "position" "post" "postpone" "pound"
    "practise" "praise" "preclude" "predispose" "preoccupy" "prescribe" "presume" "prevail" "proceed"
    "processed" "profiles" "promise" "pronounce" "provoke" "publicize" "publish" "punch" "purchase"
    "pursue" "qualify" "quantify" "quote" "rag" "rail" "ration" "rationalize" "realize" "reap"
    "reassessing" "reassure" "receive" "recommend" "reconcile" "reconstruct" "record" "recount"
    "recover" "rectify" "recycle" "redact" "refrain" "refund" "regain" "regard" "reinstate" "relax"
    "relay" "remind" "rename" "renewed" "reopen" "repeat" "reproduce" "reprogram" "repute" "resemble"
    "reserve" "reshape" "resolve" "restrain" "restrict" "rethink" "retire" "retract" "retrieve"
    "revise" "reword" "rid" "rinse" "rivet" "rush" "sanction" "satisfy" "saturate" "scale" "scare"
    "scrap" "scrutinize" "see" "seek" "separate" "shade" "share" "shield" "shift" "shout" "shower"
    "shun" "side" "signaled" "signify" "simplify" "simulate" "sink" "situate" "size" "skewed" "slide"
    "soak" "socialize" "sort" "span" "spare" "specialize" "specify" "speed" "spray" "square" "stagger"
    "standardize" "stay" "steer" "step" "stock" "stop" "strain" "strap" "stratify" "stream"
    "streamline" "strive" "structure" "struggle" "stun" "subtract" "succumb" "suit" "supervise"
    "supplement" "suppose" "surface" "surprise" "surround" "survive" "suspect" "suspend" "sweep"
    "tail" "tailor" "talk" "tally" "tap" "terrify" "theorize" "threaten" "thrilling" "thrive" "tickle"
    "tied" "tighten" "time" "tingle" "tint" "tire" "touch" "towers" "traffic" "trafficking" "train"
    "transmit" "trim" "trust" "try" "types" "underpin" "underwent" "unearth" "unfold" "unify" "unite"
    "unleash" "unpack" "unraveled" "urge" "vacation" "vaccinate" "vacillate" "value" "ventilate"
    "vest" "violate" "visualize" "volunteer" "vote" "walk" "wander" "warrant" "wash" "watch" "weaken"
    "wear" "weigh" "weight" "whip" "wire" "withdraw" "witnessed" "worry" "yawn" "yelled" "zones"))



(defparameter *word-list* ;; 591
  '(
  "access" "accomplish" "address" "adhere" "adopt" "agree"
  "alternate" "answer" "approximate" "arches" "argues" "arise"
  "array" "ascertain" "assemble" "assess" "attempts"
  "autoradiography" "average" "avoid" "awaits" "ax" "balloon" "bands"
  "becomes" "belongs" "best" "biopsy" "blast" "blot" "blunt"
  "borders" "bottom" "breast" "bred" "bridge" "brings" "bypass"
  "capture" "cases" "center" "chain" "challenge" "channel" "charge"
  "cluster" "color" "compensate" "compounds" "conclude" "conflict"
  "constructs" "contacts" "contribute" "cooperate" "copy" "core"
  "correlates" "counter" "course" "cross" "curves" "cut" "decay"
  "deserve" "develop" "die" "differ" "discontinues" "discover"
  "dishes" "displaces" "doses" "dot" "double" "dry" "duplicate"
  "elicit" "emphasizes" "empty" "enable" "encompasses" "encounters"
  "engage" "equal" "evade" "exaggerate" "excel" "exclude" "exerts"
  "exists" "experiments" "explore" "extracts" "facilitates" "fields"
  "film" "filter" "fit" "flag" "focus" "fork" "fret" "gag" "gain"
  "gel" "gift" "glass" "halt" "ham" "hand" "head" "heat" "helps"
  "highlight" "hinge" "hits" "holes" "host" "ice" "images"
  "immunoblots" "impact" "impart" "includes" "instances" "institute"
  "introduce" "issue" "japan" "joint" "layer" "lends" "lies" "limits"
  "link" "lives" "log" "looks" "lowers" "lynch" "master" "mature"
  "mean" "milk" "mix" "mock" "motor" "muscle" "nickel" "note" "offer"
  "override" "pairs" "parallels" "participates" "patterns" "perk"
  "perturb" "phase" "pierce" "pipes" "plate" "plays" "points"
  "possesses" "precipitates" "produce" "progress" "project" "proof"
  "prove" "pull" "quadruplicate" "question" "rabbit" "rays" "read"
  "reason" "recapitulate" "regards" "relates" "renders" "repair"
  "repeats" "research" "reside" "retard" "reverse" "revert" "rip"
  "room" "rule" "run" "samples" "see" "sense" "sensitize" "serves"
  "services" "set" "shanghai" "share" "shift" "shock" "side" "signs"
  "single" "size" "skin" "slices" "slight" "slope" "smooth" "spaces"
  "specify" "speculate" "spin" "split" "stack" "stem" "stock" "storm"
  "strand" "stress" "stretch" "structures" "sum" "suspend" "tail"
  "talk" "thin" "times" "total" "trace" "transplant" "traps" "trends"
  "trigger" "types" "undergo" "underscores" "utilizes" "visualize"
  "water" "weight" "wells"
  "accelerating" "aging" "aligning" "alkylating" "antagonizing" "arresting"
  "bearing" "changing" "circumventing" "coding" "collaborating"
  "competing" "compiling" "complementing" "comprising" "connecting"
  "covering" "damaging" "distinguishing" "disturbing" "dividing"
  "docking" "enabling" "exceeding" "funding" "grafting" "harboring"
  "heterodimerizing" "implying" "interesting" "inviting" "ionizing"
  "joining" "lacking" "loosening" "meeting" "monitoring"
  "neutralizing" "noncoding" "offspring" "overlying" "packaging"
  "profiling" "promising" "quantifying" "quantitating" "ranging"
  "recognizing" "reprobing" "residing" "rotating" "scaffolding"
  "sequestering" "shuttling" "silencing" "splicing" "strengthening"
  "striking" "suffering" "supporting" "surprising" "surrounding"
  "switching" "tempting" "trading" "transforming" "varying"
  "warranting" "working"
  "abolished" "accepted" "accompanied" "achieved" "acknowledged"
  "addressed" "allowed" "altered" "annealed" "annotated" "appeared"
  "applied" "approved" "ascribed" "asked" "assayed" "assessed"
  "assisted" "attributed" "augmented" "autophosphorylated"
  "autoradiographied" "baked" "behaved" "believed" "biopsied"
  "biotinylated" "boiled" "buffered" "calculated" "called" "carried"
  "centered" "centrifuged" "characterized" "cleaned" "cleaved"
  "cloned" "coated" "coiled" "coimmunoprecipitated" "collected"
  "colocalized" "combined" "compartmentalized" "complexed"
  "complicated" "composed" "conducted" "configured" "confirmed"
  "conjugated" "consisted" "continued" "contrasted" "converted"
  "coordinated" "corrected" "counted" "counteracted" "counterstained"
  "coupled" "cultivated" "declared" "defined" "degraded" "dehydrated"
  "denatured" "derived" "desalted" "designated" "designed" "detached"
  "determined" "developed" "dialyzed" "differentiated" "diluted"
  "directed" "discarded" "disconnected" "discovered" "discussed"
  "displaed" "dissolved" "documented" "downmodulated" "drafted"
  "elicited" "eliminated" "embedded" "emerged" "endowed" "enriched"
  "ensured" "evaluated" "evidenced" "excised" "exhibited" "expanded"
  "exposed" "extended" "failed" "filed" "fixed" "focused" "followed"
  "formed" "fractionated" "fragmented" "fused" "generalized"
  "harvested" "heightened" "held" "immortalized" "immunoblotted"
  "immunocompromised" "immunostained" "implicated" "imported"
  "imposed" "incubated" "infected" "infiltrated" "initiated"
  "injected" "inserted" "integrated" "intercepted" "intercrossed"
  "interfaced" "inverted" "irradiated" "isolated" "judged"
  "juxtaposed" "kept" "labeled" "led" "left" "lessened" "limbed"
  "limited" "listed" "loaded" "localized" "located" "lost" "lowered"
  "lysed" "made" "mapped" "marked" "matched" "mentioned" "mirrored"
  "mixed" "mobilized" "modeled" "monitored" "mounted" "multiplied"
  "named" "normalized" "numbered" "opposed" "organized"
  "overproduced" "paralleled" "permeabilized" "persisted"
  "photographed" "piloted" "plotted" "pooled" "postfixed"
  "postulated" "precleared" "precluded" "preformed" "prepared"
  "pretreated" "prioritized" "processed" "prolonged" "prompted"
  "pronounced" "propagated" "proteolyzed" "published" "pulled"
  "pulverized" "purchased" "quantitated" "questioned" "reasoned"
  "recommended" "recorded" "recovered" "reexamined" "referred"
  "reflected" "rejoined" "rendered" "replaced" "repressed" "rescued"
  "resolved" "responded" "restored" "restricted" "resuspended"
  "retained" "returned" "reviewed" "rinsed" "rose" "scanned" "scored"
  "scraped" "screened" "searched" "seeded" "separated" "sequenced"
  "showed" "solubilized" "sonicated" "sought" "specialized"
  "sponsored" "spotted" "stained" "started" "starved" "stopped"
  "stored" "stratified" "subcloned" "subjected" "supervised"
  "supplemented" "survived" "synthesized" "termed" "terminated"
  "thought" "took" "tranfected" "transfected" "transferred"
  "triggered" "unaffected" "unappreciated" "unchanged" "uncleaved"
  "uncovered" "undefined" "unexplored" "unidentified" "united"
  "unmatched" "unpaired" "unpublished" "unrelated" "unselected"
  "unstimulated" "untranslated" "untreated" "vortexed" "washed"
  "weakened" "wondered" "zymed"
    ))



;;;-------------------------------
;;; vetting a word for suitablity
;;;-------------------------------

(defgeneric candidate-for-comlex-category? (word)
  (:documentation "The word has to be unknown and it has to
    have an entry in comlex. Does not notice words that we only know about
    because they occurred in another word's plist")
  (:method ((pname string))
    (let ((w (resolve pname)))
      (if (null w) ; we never defined a word with this pname
        (comlex-entry pname) ; though it also does need an entry
        (candidate-for-comlex-category? w))))
  (:method ((w word))
    (unless (punctuation? w)
      (unless (word-mentioned-in-rules? w) ; we're using it, so it's known
        (comlex-entry w)))))



;;;---------------------------
;;; Applying filters to lists
;;;---------------------------
#| We run the candidate test over all of the words in each list ('populate')
 and save the results in a new parameter. These are then merged to form
 the master list that we pass through write-word-definitions-to-file to get
 regular define-category expressions for all of them. |#


(defparameter *words-used-in-polywords* nil) ;; 1,135

(defun populate-words-used-in-polywords ()
  "Looping the candidate test over the master word list returns about 1.5k words.
   Sampling says they are :used-in-pw"
  (let ((raw-list
         (alphabetize-list-of-words
          (remove-duplicates
           (loop for word in *words-defined*
              when (candidate-for-comlex-category? word)
              collect word)))))
    (let ((clean
           (remove-duplicates
            (loop for w in raw-list
               collect (stem-form w)))))
      (setq *words-used-in-polywords* (mapcar #'word-pname clean))
      (length clean))))



(defparameter *clean-comlex-verbs* nil  ;; 632
  "These were examined by hand to remove plurals, past versions")

(defun populate-clean-comlex-verbs ()
  (let ((candidate-list
         (sort
          (remove-duplicates
           (loop for pname in *comlex-verbs*
              when (candidate-for-comlex-category? pname)
              collect pname)
           :test #'equal)
          #'string<)))
    (setq *clean-comlex-verbs* candidate-list)
    (length candidate-list)))



(defparameter *clean-morph-comlex-verbs* nil) ;; 506

(defun populate-clean-morph-word-list ()
  (let ((raw-list
         (sort
          (remove-duplicates
           (loop for pname in *morph-comlex-verbs*
              when (candidate-for-comlex-category? pname)
              collect pname)
           :test #'equal)
          #'string<)))
    (let ((clean
           (remove-duplicates
            (loop for w in raw-list
               collect (stem-form w)))))
      (setq *clean-morph-comlex-verbs* (mapcar #'word-pname clean))
      (length clean))))



(defparameter *clean-word-list* nil) ;; 262

(defun populate-clean-word-list ()
  "Mixture of stems and morphological variants"
  (let ((raw-list
         (sort
          (remove-duplicates
           (loop for pname in *word-list*
              when (candidate-for-comlex-category? pname)
              collect pname)
           :test #'equal)
          #'string<)))
    (let ((clean
           (remove-duplicates
            (loop for w in raw-list
               collect (stem-form w)))))
      (setq *clean-word-list* clean)
      (length clean))))




;;;------------
;;; master list
;;;------------

(defun prep-all-word-lists ()
  "Run all the filters. They each return a count."
  (let ((word-count
         (+ (populate-words-used-in-polywords)
            (populate-clean-comlex-verbs)
            (populate-clean-morph-word-list)
            (populate-clean-word-list))))
    word-count))


(defparameter *master-comlex-word-list* nil)

(defun merge-word-lists ()
  (declare (special *words-used-in-polywords* *clean-comlex-verbs*
                    *clean-morph-comlex-verbs* *clean-word-list*))
  (let* ((merged-1
          (append *words-used-in-polywords* *clean-comlex-verbs*))
         (merged-2
          (append *clean-morph-comlex-verbs* merged-1))
         (merged-3
          (append *clean-word-list* merged-2)))
    (let ((de-duped
           (remove-duplicates merged-3 :test #'equal)))
      (let ((sorted (sort (copy-list de-duped) #'string<)))
        (setq *master-comlex-word-list* sorted)
        (length sorted)))))












;;--- original constructors for the lists

#+ignore  ;; For  use when assembling the list
(setq *comlex-verbs*
      (sort
       (remove-duplicates
        (loop for w in *COMLEX-VERBS*
              when (or (second (gethash w *primed-words*))
                       (second (gethash (stem-form w) *primed-words*)))
              collect
                (or (second (gethash w *primed-words*))
                    (second (gethash (stem-form w) *primed-words*))))
        :test #'equal)
       #'string<))


#+ignore  ;; For  use when assembling the list
(setq *morph-comlex-verbs*
      (sort
       (remove-duplicates
        (loop for w in *morph-comlex-verbs*
              when (or (second (gethash w *primed-words*))
                       (second (gethash (stem-form w) *primed-words*)))
                collect
                (or (second (gethash w *primed-words*))
                    (second (gethash (stem-form w) *primed-words*))))
        :test #'equal)
       #'string<))
