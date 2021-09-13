;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "loader"
;;;  Module: "grammar/model/sl/score/
;;; version: September 2021

;; Broken out of comlex-verb-explorations 8/23/21

(in-package :sparser)

;; Set the value of *master-comlex-word-list* by running prep-all-word-lists
;; flowed by merge-word-lists

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
  "autoradiography" "average" "avoid" "awaits" "balloon" "bands"
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


;; cherry picked from Acumen rule 9/5/21 for articles 100-200
(defparameter *strings-with-no-comlex-entry*
  '("statehood" "oahu" "predawn" "wanna" "written" "abuzz" "snakelike"
    "pantherlike" "necropsy" "liger" "sunk" "gonna" "lasagne" "upload"
    "cloven" "kangeroo" "beluga" "cloven" "artwork" "photoshop" "characterisation"
    "von" "filmmaker" "shapeshifter" "slain" "multicolor" "nope" "unincorporate"
    "organise" "frack" "polarisation" "cellphone" "timor" "cryptozoologist"
    "beastie" "swum" "woken" "swamplands" "ridiculousness" "hangout" "flew"
    "dingos" "townsfolk" "townspeople" "netizens" "apologise" "mammologist"
    "landscaper" "snowboarder" "mohawk" "pointy" "capuchin" "nutritionist"
    "gringos" "outreach" "wacky" "slurp" "smackdown" "autoplay" "etc" "gunk"
    "jammies" "heist" "wireline" "culturally" "ought" "sportfish" "techno"
    "bassist" "funkify" "blown" "goofiness" "pantsuit" "bigfoot" "kooky"
    "deli" "guacamole" "grandmotherly" "bereft" "selfies" "faux" "meme"
    "newish" ))

;; printed by save-no-morphology-list-to-parameter for  ac-100-to-200
(defvar *no-morphology-on-acumen-word* ;; so it can't be stemmed
 '("farmer" "slaughter" "claw" "mark" "neck" "creature" "blame" "legendary" 
 "overnight" "sharp" "fang" "livestock" "legged" "attack" "video" "enclosure" 
 "uninjured" "vicious" "deal" "mutilation" "mysterious" "rest" "strange" "mix" 
 "kangaroo" "capture" "suburb" "worker" "spotted" "break" "wood" "lure" 
 "snap" "photo" "wild" "skunk" "badger" "wolf" "mythical" "bloodsuck" 
 "picture" "word" "suck" "cabra" "coyote" "infect" "discover" "fatal" 
 "sighting" "puncture" "wind" "chest" "drain" "legend" "born" "beast" 
 "far" "supposedly" "spawn" "allegedly" "voice" "movie" "funny" "inspire" 
 "actor" "mobile" "phone" "upcoming" "steal" "character" "animation" "job" 
 "film" "main" "heck" "guy" "myth" "tale" "nto" "love" 
 "trust" "worthy" "pal" "lend" "hero" "alive" "fun" "realize" 
 "muy" "simpatico" "lucha" "libre" "respect" "plane" "likeable" "heroic" 
 "judge" "passion" "dream" "honorable" "loyal" "wait" "save" "tip" 
 "popular" "sequel" "toy" "admit" "fantasy" "think" "stereotype" "opportunity" 
 "don" "sound" "beauty" "wonderful" "hope" "shape" "bro" "talent" 
 "esque" "senor" "help" "cree" "interview" "blog" "innovative" "insightful" 
 "critique" "perspective" "world" "lineup" "light" "youthful" "masterful" "delightful" 
 "electronic" "rubbery" "disco" "punk" "landmark" "excellent" "recap" "festival" 
 "hip" "hop" "beat" "infuse" "saxophone" "landed" "battle" "secure" 
 "spot" "singer" "jumpsuit" "tent" "podcast" "recording" "host" "improvise" 
 "vegan" "restaurant" "steakhouse" "reference" "door" "drunk" "sob" "audience" 
 "shout" "incoherent" "flattery" "baller" "sit" "knee" "leg" "dangle" 
 "pit" "circle" "pack" "cigarette" "jump" "elastic" "dance" "wear" 
 "balaclava" "shirt" "hook" "synth" "beige" "suit" "bowtie" "glitter" 
 "jacket" "plastic" "skirt" "power" "pop" "visceral" "cat" "incendiary" 
 "track" "backup" "dancer" "record" "theme" "song" "reboot" "bike" 
 "program" "celebrate" "birthday" "offering" "discount" "annual" "membership" "unveil" 
 "edition" "famous" "food" "hot" "deep" "dish" "pizza" "sandwich" 
 "cake" "thrown" "launch" "popularity" "surpassing" "ride" "log" "own" 
 "deploy" "signature" "sponsor" "resident" "visitor" "commit" "option" "proud" 
 "try" "easy" "excite" "station" "expansion" "thrill" "offer" "special" 
 "lookout" "traveling" "signup" "happy" "healthy" "transportation" "image" "accessible" 
 "friendly" "commuter" "tourist" "explore" "wheel" "encourage" "searching" "partner" 
 "designer" "disperse" "design" "adorn" "staple" "commemorate" "occasion" "classic" 
 "plantain" "post" "social" "prize" "expand" "cover" "square" "income" 
 "rider" "initiative" "ridership" "trip" "taken" "spearhead" "partnership" "win" 
 "milestone" "convenient" "affordable" "sponsorship" "map" "visit" "idea" "grub" 
 "bikeshare" "wish" "mini" "celebration" "kudos" "choose" "mighty" "sucker" 
 "cut" "beef" "overall" "sign" "valid" "window" "fist" "lebrat" 
 "delicious" "pic" "twitter" "humanoid" "wash" "hand" "floating" "shallow" 
 "water" "creepy" "vampire" "drink" "decompose" "terrify" "local" "lifeless" 
 "footage" "viral" "emerge" "online" "superstitious" "inhabit" "zoom" "unidentified" 
 "order" "expert" "department" "monkey" "reality" "decomposition" "ape" "contact" 
 "insist" "reportedly" "proven" "rumour" "real" "wander" "desert" "internet" 
 "baffle" "odd" "walking" "brief" "disappear" "bush" "movement" "hind" 
 "hunch" "arm" "mimic" "begin" "clip" "view" "viewer" "sceptical" 
 "fake" "comment" "camera" "alien" "bald" "user" "write" "div" 
 "miracle" "skull" "spark" "jaw" "aerial" "giant" "hairy" "prompting" 
 "conspiracy" "theorist" "abduction" "soldier" "join" "race" "underwater" "roam" 
 "depth" "warning" "swallow" "hole" "perusal" "late" "cocktail" "menu" 
 "send" "shiver" "spooky" "roster" "season" "bartender" "architect" "swear" 
 "intent" "coincidence" "morbid" "mind" "settled" "wave" "scene" "imagine" 
 "spin" "gin" "elixir" "monster" "folklore" "splash" "fruit" "garnish" 
 "seasonally" "available" "strawberry" "fierce" "bite" "generous" "freshly" "pepper" 
 "syrup" "sub" "customary" "party" "festive" "concoction" "batch" "crowd" 
 "distil" "customer" "blend" "alarming" "hue" "sparkling" "wine" "absinthe" 
 "ounce" "lemon" "juice" "twist" "atomizer" "spray" "coating" "interior" 
 "bourbon" "ice" "stir" "chill" "vodka" "puree" "combine" "cup" 
 "sugar" "heat" "dissolve" "blender" "pour" "mixture" "refrigerator" "cheesecloth" 
 "shaker" "habanero" "seasonal" "shrub" "liqueur" "peel" "sweeten" "vinegar" 
 "weigh" "equal" "reserve" "rub" "rind" "dry" "room" "temperature" 
 "clean" "champagne" "desire" "acidity" "shake" "flute" "alternative" "tourism" 
 "accommodation" "ambitious" "international" "advertise" "campaign" "segment" "commonwealth" "unique" 
 "coffee" "farm" "enjoy" "experience" "secluded" "agri" "hotel" "locate" 
 "mountain" "nursery" "ornamental" "medicinal" "culinary" "garden" "marvelous" "landscape" 
 "manage" "hotelier" "workshop" "sow" "cultivate" "pace" "educational" "invite" 
 "relax" "aromatherapy" "massage" "session" "yoga" "meditation" "designate" "facility" 
 "recreation" "expedition" "tree" "island" "hustle" "bustle" "entertain" "educate" 
 "agricultural" "rustic" "house" "exquisite" "greenhouse" "tout" "showcase" "earn" 
 "airport" "outsider" "prefer" "elsewhere" "tranquility" "stalk" "dessert" "stun" 
 "upright" "wasteland" "foot" "walk" "stoop" "pair" "debate" "sceptic" 
 "struggle" "point" "villager" "pitchfork" "scorching" "bizarre" "camouflage" "surroundings" 
 "hear" "chirp" "calmly" "veracity" "park" "car" "stick" "reappear" 
 "rack" "torn" "fabled" "chupacabara" "claim" "cynical" "massive" "hide" 
 "animate" "hiker" "elusive" "uncover" "terrorize" "community" "baddest" "sink" 
 "rock" "indie" "potential" "deliver" "website" "mailed" "weird" "folk" 
 "field" "roadkill" "begun" "declare" "mount" "trophy" "wall" "else" 
 "huh" "solve" "mystery" "retirement" "distribute" "distributor" "author" "warranty" 
 "right" "material" "advice" "approve" "promise" "guarantee" "completeness" "therein" 
 "responsibility" "construe" "commentary" "reflect" "infer" "connote" "expressly" "sole" 
 "discretion" "surface" "print" "eyewitness" "spike" "thin" "alienlike" "oblong" 
 "depiction" "mid" "phenomenon" "editor" "raccoon" "hoax" "residual" "impressionable" 
 "youth" "trace" "pin" "alt" "oe" "notice" "share" "resemblance" 
 "thriller" "connection" "hit" "theater" "see" "enter" "public" "conscious" 
 "speak" "theyre" "whole" "enchilada" "piece" "dont" "eat" "crow" 
 "chapter" "suspense" "horror" "comedy" "debut" "revive" "predator" "fight" 
 "dangerous" "charge" "combat" "violence" "disturb" "citizen" "incident" "gang" 
 "smuggle" "tunnel" "hunt" "commotion" "motorcycle" "remind" "enigmatic" "constant" 
 "assured" "ugly" "surrounding" "sneak" "peek" "watch" "rumor" "mange" 
 "enforcement" "barn" "colleague" "drill" "purport" "corpse" "internal" "eaten" 
 "vulture" "friend" "issue" "deadly" "spend" "search" "allege" "blazing" 
 "pursue" "rain" "cave" "police" "military" "personnel" "astound" "account" 
 "confrontation" "supernatural" "format" "worldwide" "copy" "carnivorous" "diet" "remote" 
 "hunter" "republic" "sighted" "prey" "colour" "longish" "resemble" "likeness" 
 "fox" "poison" "radiation" "maybe" "relate" "weapon" "supposed" "secret" 
 "defence" "veterinary" "marten" "vet" "skinny" "hair" "otter" "ear" 
 "nose" "stretch" "muzzle" "vary" "lurid" "unconfirmed" "chicken" "domestic" 
 "grey" "frightened" "accord" "cryptid" "game" "weekend" "infamous" "ferocious" 
 "quiet" "horrific" "wail" "grandson" "hurry" "bag" "wife" "countryside" 
 "mangy" "live" "domesticate" "wildlife" "subscribe" "affiliate" "mite" "suspect" 
 "emaciate" "sickly" "bear" "row" "rancher" "sort" "skin" "alert" 
 "lie" "hay" "winery" "farmhand" "inspection" "safety" "stumble" "outskirts" 
 "bale" "cellar" "realise" "reptile" "leathery" "scaly" "quill" "livelihood" 
 "couple" "suffering" "scabies" "leave" "busy" "gruesome" "pile" "danger" 
 "snare" "football" "net" "moose" "court" "confront" "menace" "hail" 
 "free" "terror" "home" "wipe" "cage" "massacre" "leap" "fence" 
 "paw" "sleep" "peace" "doubt" "malnourish" "haunt" "throw" "disgusting" 
 "elf" "creep" "halt" "plan" "roadway" "project" "infringe" "church" 
 "chapel" "construction" "weasel" "ancient" "lore" "contemporary" "serpent" "credibility" 
 "squid" "platypus" "dragon" "correct" "stuff" "fetch" "occupy" "formal" 
 "century" "biography" "missionary" "funeral" "loch" "reinvigorate" "modern" "surge" 
 "photographic" "documentation" "dub" "discredit" "portrait" "debunk" "stop" "curious" 
 "seek" "submarine" "scour" "empty" "enthusiast" "skeptic" "argue" "wake" 
 "boat" "boom" "economy" "cruise" "museum" "dedicate" "amusement" "buy" 
 "imaginable" "souvenir" "artist" "rendering" "catch" "evolutionary" "parasitic" "fur" 
 "demonic" "mainland" "victim" "panic" "demon" "strike" "comfort" "bed" 
 "channel" "nightmare" "stature" "comic" "appearance" "team" "serious" "bill" 
 "chronicle" "encounter" "reconsider" "sake" "magical" "bulldoze" "hawthorn" "favorite" 
 "meeting" "fairy" "curse" "brake" "crash" "wreak" "mischief" "angry" 
 "warn" "fort" "trouble" "unleash" "believer" "cousin" "photograph" "backyard" 
 "pose" "kristiannordestgaard" "explorer" "worldly" "elephantine" "dwelling" "sauropaud" "dinosaur" 
 "illustration" "sauropod" "researcher" "chart" "unexplored" "terrain" "mbembe" "gut" 
 "science" "hungry" "rush" "curvy" "tropical" "banana" "potassiumand" "vitamin" 
 "ravenous" "wonder" "pluck" "stand" "grocery" "effort" "transport" "root" 
 "palm" "perennial" "cooking" "apple" "lady" "finger" "aromatic" "thick" 
 "unpalatable" "pick" "ripen" "shipment" "taste" "shopping" "plump" "colored" 
 "ripeness" "ideal" "consumption" "starch" "sweet" "hasten" "paper" "ripe" 
 "maturation" "tomato" "avocado" "mellow" "wealth" "entree" "bread" "muffin" 
 "pancake" "kick" "cream" "pie" "split" "luscious" "ending" "crave" 
 "spectacle" "whip" "flamboyant" "saute" "slice" "cinnamon" "unsalted" "butter" 
 "aflame" "dark" "rum" "fire" "spoon" "caramelize" "amber" "sauce" 
 "chocolate" "coconut" "ginger" "macadamia" "nuts" "walnut" "bake" "broil" 
 "fry" "grill" "poach" "versatility" "squash" "flavor" "firm" "savory" 
 "instance" "potato" "boil" "mash" "pure" "starchy" "sugary" "cook" 
 "remember" "crack" "shrivel" "feel" "overly" "soft" "shade" "soup" 
 "stew" "omelet" "bacon" "chile" "curry" "garlic" "lime" "pork" 
 "salsa" "clove" "memorable" "specialty" "eclair" "size" "consist" "steak" 
 "lettuce" "mayonnaise" "layer" "flatten" "crisp" "delectable" "traditional" "ham" 
 "vegetable" "cheese" "replace" "toffee" "milk" "egg" "yolk" "beaten" 
 "grease" "loaf" "teaspoon" "salt" "soda" "blanch" "almond" "grind" 
 "processor" "finish" "flour" "vanilla" "optional" "saucepan" "whisk" "stove" 
 "ingredient" "thicken" "fine" "mesh" "strainer" "bowl" "cool" "oven" 
 "separate" "batter" "toothpick" "wire" "scoop" "chop" "lengthwise" "canola" 
 "aside" "golden" "glaze" "skillet" "olive" "onion" "mince" "cayenne" 
 "strip" "heatproof" "towel" "board" "dash" "soften" "tail" "sausage" 
 "sundae" "munch" "rotten" "tofu" "rattlesnake" "daring" "smorgasbord" "oddity" 
 "raindrop" "brave" "locust" "decade" "nutritional" "protein" "crispy" "salty" 
 "flavour" "peanut" "workout" "fad" "purveyor" "exotic" "branch" "eatery" 
 "pride" "macabre" "decor" "furnish" "coffin" "booth" "style" "kielbasa" 
 "mislead" "creamy" "lumpy" "noodle" "sundaeguk" "intestine" "hangover" "trend" 
 "mizu" "shingen" "mochi" "crystalline" "solidify" "gelatine" "kinako" "roast" 
 "soy" "orb" "marshmallow" "usual" "bonfire" "tapioca" "chewy" "cassava" 
 "aesthetic" "pale" "chilli" "colourful" "fishing" "greet" "seat" "surround" 
 "moat" "teem" "quest" "rod" "bait" "ensure" "kasago" "scorpion" 
 "diner" "applaud" "chef" "devote" "loin" "shoulder" "recommend" "coentrada" 
 "trotter" "coriander" "salada" "orelha" "salad" "porco" "molho" "agridoce" 
 "sour" "caterer" "cuisine" "popcorn" "shrimp" "box" "overflow" "bathtub" 
 "decorate" "tiny" "rubber" "duck" "homage" "cotton" "candy" "powdered" 
 "pompadour" "wig" "authentic" "nestling" "juicy" "market" "stinky" "undesirable" 
 "delicacy" "soak" "rot" "brine" "meat" "spicy" "centre" "pungent" 
 "smell" "conclude" "doglike" "lurk" "vehicle" "store" "freezer" "received" 
 "bombard" "genetics" "laboratory" "forensic" "biologist" "conclusion" "chromosome" "haplotyp" 
 "ancestry" "biology" "oversee" "research" "paternity" "talk" "internationally" "ranch" 
 "overseas" "dispute" "makeup" "perfect" "beach" "bun" "typical" "tan" 
 "nice" "gloriously" "cheap" "coach" "bus" "bunch" "modernista" "siesta" 
 "squeeze" "tile" "sloppy" "convent" "chaste" "camping" "sirloin" "surf" 
 "rental" "nighter" "sleepy" "camp" "reserveamerica" "swell" "jetty" "paddle" 
 "longpointcafe" "wax" "rend" "taco" "pummel" "storm" "draw" "ferry" 
 "wickinn" "slash" "hardy" "soul" "landfall" "grab" "gear" "desk" 
 "wet" "sobo" "takeout" "truck" "killer" "fancy" "dig" "grove" 
 "whale" "colony" "thepeninsulahouse" "reasonable" "package" "poolside" "espresso" "guesthouse" 
 "airy" "suite" "request" "plantation" "mangrove" "plop" "arc" "sand" 
 "motorboat" "gape" "humpback" "shack" "restore" "loungey" "pickyour" "bean" 
 "omelette" "lush" "hillside" "haciendaeljibarito" "agro" "lodge" "kitchen" "freestand" 
 "wooden" "villa" "tour" "hacienda" "bestow" "drinker" "holiday" "gift" 
 "trampoline" "idyllic" "archipelago" "balcony" "html" "hire" "guide" "hash" 
 "bird" "bar" "nightlife" "taxi" "bocasaqualounge" "hostel" "sip" "seco" 
 "lion" "fee" "pocket" "bungalow" "cabopulmo" "resort" "dive" "scuba" 
 "manta" "ray" "snorkel" "wahoo" "marlin" "fisherman" "panga" "booby" 
 "swoop" "reggae" "royalty" "breadfruit" "actual" "marleyresort" "vacation" "inn" 
 "elaborately" "carve" "textile" "coral" "stone" "bath" "callaloo" "terrace" 
 "sunbathe" "float" "waterfall" "swimming" "music" "waft" "hidden" "outdoor" 
 "speaker" "impromptu" "jam" "mineral" "celebrity" "stomach" "cold" "snow" 
 "runoff" "sagewaterspa" "indulge" "valley" "pollution" "ordinance" "spy" "eyed" 
 "cholla" "private" "sloop" "sailing" "survive" "stock" "aurorabeachfront" "countless" 
 "swordfish" "sangria" "fresh" "lobster" "flashlight" "flood" "crust" "descend" 
 "energy" "unromantic" "blackout" "lesson" "flat" "bargain" "thecrane" "steady" 
 "breeze" "blow" "troop" "sunbaked" "dude" "teach" "surfing" "barbadossurf" 
 "strenuous" "distillery" "mountgay" "bluff" "glossy" "advertisement" "paradise" "punch" 
 "notorious" "teen" "landing" "rifle" "honestly" "reporter" "kid" "crazy" 
 "sick" "mainstream" "contend" "urban" "husband" "growl" "corn" "euthanize" 
 "peacefully" "refer" "inquiry" "warden" "gossip" "complaint" "receive" "care" 
 "disbelief" "baby" "wrinkly" "bulbous" "neighbor" "coon" "noise" "possum" 
 "harm" "curiosity" "infestation" "mysteriously" "stray" "infest" "scabiei" "painful" 
 "threaten" "ghoulish" "consequent" "itchy" "rash" "burrow" "finale" "chock" 
 "review" "alternate" "storyline" "spree" "malevolent" "force" "truth" "suspicion" 
 "approach" "dossier" "handle" "circumstance" "beer" "cosy" "chat" "fair" 
 "freak" "cell" "accept" "unbelievable" "fairytale" "stride" "feck" "spell" 
 "bombshell" "await" "hooray" "nausea" "cramp" "clever" "writer" "irrelevant" 
 "witchy" "inevitable" "showdown" "coma" "bitch" "interest" "situation" "unfold" 
 "cliff" "hanger" "abduct" "hate" "acronym" "know" "happily" "honeymoon" 
 "getaway" "enrage" "matter" "yeah" "cop" "guard" "betray" "abandon" 
 "rogue" "cope" "decay" "joke" "chum" "geekiest" "guest" "praise" 
 "geek" "mum" "cumbia" "sport" "percussion" "trumpet" "guitar" "accordion" 
 "bass" "musician" "fallen" "skeleton" "flower" "lively" "horn" "lyric" 
 "zebra" "onlooker" "grayish" "posterity" "rural" "denizen" "nasty" "den" 
 "imagination" "litter" "mutt" "licking" "discovery" "craze" "accompany" "caricature" 
 "hideous" "deer" "carcass" "whisper" "chupacrabra" "reptilian" "forked" "tongue" 
 "nonsense" "outdoorsman" "beg" "differ" "mar" "unsightly" "unconvinced" "refuse" 
 "unfortunate" "diseased" "woodland" "whisker" "intense" "circulate" "havoc" "sweep" 
 "cattle" "vow" "burn" "freakish" "monstrosity" "cynic" "calve" "savagely" 
 "parallel" "evade" "pursuer" "amalgam" "hyena" "sensation" "unlock" "rife" 
 "devil" "caption" "agree" "glowing" "aggressive" "lunge" "yonder" "calibur" 
 "nail" "defiant" "dispose" "jawbone" "toenail" "grant" "patent" "titled" 
 "comprise" "microfilter" "dishwasher" "invention" "tub" "wherein" "receptacle" "collected" 
 "hollow" "cylindrical" "circulation" "pump" "connect" "opening" "sprayer" "nozzle" 
 "file" "device" "impeller" "downtown" "fix" "neighborhood" "unhealthy" "riddle" 
 "confidence" "coat" "cower" "platoon" "hawk" "owl" "nest" "history" 
 "step" "nightly" "kit" "shoot" "anesthetize" "assign" "county" "solution" 
 "skill" "considerable" "repeat" "pay" "tax" "lawn" "admire" "uptick" 
 "unfamiliar" "fledgling" "trade" "accomplished" "election" "weather" "conversation" "spoken" 
 "broken" "barrier" "esprit" "togetherness" "inexplicable" "takeaway" "columnist" "sheeple" 
 "feral" "silence" "land" "consult" "relive" "anticipate" "button" "tie" 
 "shimmery" "necklace" "sunglasses" "stream" "blonde" "album" "technical" "difficulty" 
 "guitarist" "shrill" "feedback" "melancholy" "unbother" "pelvic" "thrust" "wrap" 
 "self" "brass" "busk" "gain" "captivate" "footwork" "baritone" "sun" 
 "bouncing" "harsh" "shadowy" "gorge" "mom" "wisdom" "forget" "oversized" 
 "rainbow" "striped" "cord" "scarf" "ukulele" "bang" "drum" "pad" 
 "gusto" "instrument" "tune" "sway" "smooth" "laugh" "sophomore" "shave" 
 "plume" "smoke" "rise" "drone" "beautiful" "heartache" "solo" "recovery" 
 "face" "radiant" "denim" "beanie" "twinkling" "sky" "journalism" "conference" 
 "embarrassingly" "lachrymose" "mourning" "sketch" "kitschy" "television" "cockeyed" "territory" 
 "upscale" "hike" "intone" "tough" "narrator" "flash" "shaky" "presume" 
 "hearted" "attempt" "fearsome" "oft" "misunderstand" "newish" "insult" "shroud" 
 "tonight" "headed" "meme" "steam" "chummy" "star" "politician" "bedecked" 
 "fleece" "bereft" "beam" "fan" "benign" "cheerily" "vat" "guacamole" 
 "grin" "quaint" "bookstore" "deli" "follower" "kooky" "creative" "faux" 
 "doctor" "bigfoot" "presidential" "contest" "pantsuit" "speech" "microphone" "honor" 
 "questionable" "fixture" "blast" "scourge" "confidant" "rethink" "finalize" "presidency" 
 "check" "helpful" "furry" "boot" "money" "political" "downright" "elate" 
 "airwaves" "sanctimony" "document" "sock" "glorious" "rear" "peddling" "volunteer" 
 "charity" "attainment" "servant" "fade" "thrive" "exposure" "publicity" "fury" 
 "drift" "elect" "contributor" "profoundly" "lad" "blown" "quintet" "front" 
 "keyboard" "player" "huge" "flair" "tasty" "funkify" "boogie" "pleasantly" 
 "recall" "vocal" "fiery" "duel" "blister" "harp" "harmonica" "plant" 
 "find" "drummer" "gig" "medicine" "occasional" "future" "stubbornly" "rap" 
 "cancel" "techno" "cancellation" "concert" "schedule" "studio" "depart" "club" 
 "afford" "condominium" "floor" "tournament" "lawsuit" "champion" "rule" "violation" 
 "captain" "crew" "angler" "avoid" "penalty" "gather" "hat" "stage" 
 "fish" "cash" "angling" "scrimp" "problem" "sad" "sportfish" "honest" 
 "reprisal" "roadblock" "upgrade" "plaintiff" "bullet" "vest" "justice" "slip" 
 "angle" "injustice" "ought" "rectify" "letter" "caution" "unsuccessful" "legal" 
 "entity" "ban" "penalize" "exact" "pounder" "rope" "overshadow" "protest" 
 "hoist" "pectoral" "fin" "bend" "center" "unfair" "reweigh" "twice" 
 "oral" "tradition" "adapt" "cultural" "adjust" "ancestor" "helpless" "sari" 
 "aquatic" "spirit" "household" "folktale" "portray" "denote" "message" "governing" 
 "practice" "norm" "verifiable" "govern" "yaka" "everyday" "scientific" "irregularly" 
 "nowhere" "diurnal" "distrust" "innocent" "distract" "era" "believable" "intervention" 
 "simplify" "narrative" "stupid" "complicated" "calamity" "accountability" "unimaginable" "deceive" 
 "resolve" "demand" "transparency" "communication" "politics" "desirable" "open" "constructive" 
 "criticism" "pawn" "seeker" "wise" "bottle" "permission" "geographic" "submit" 
 "disaster" "evolve" "snapshot" "filings" "coordination" "wireless" "caller" "intermittently" 
 "restoration" "signatory" "aggregate" "maximum" "coordinate" "prioritiz" "temporary" "asset" 
 "carrier" "maximize" "subscriber" "consumer" "cable" "wireline" "toll" "broadcast" 
 "input" "scan" "outreach" "offline" "radio" "relevant" "toe" "bloated" 
 "bid" "unusual" "abort" "unravel" "revisit" "flesh" "stink" "strangely" 
 "maggot" "sinister" "excuse" "suitcase" "attac" "jewelry" "art" "organizer" 
 "unwell" "eccentric" "heist" "tank" "shift" "bloodshot" "staring" "intake" 
 "buzz" "routine" "trustworthy" "eerily" "doze" "nap" "awake" "skip" 
 "migrant" "snuggle" "couch" "blanket" "slumber" "scary" "spook" "ready" 
 "triangle" "flirt" "gouge" "gunk" "mold" "immigrant" "etc" "radar" 
 "stranger" "unwanted" "inflame" "fantastic" "alley" "employer" "enduring" "blatant" 
 "racism" "incredibly" "contagion" "labor" "crop" "credit" "crap" "mutter" 
 "hell" "dreamland" "air" "detention" "heading" "identity" "faceless" "disposable" 
 "autoplay" "emulate" "roulette" "thief" "clingfilm" "humiliate" "driver" "tear" 
 "baseball" "smackdown" "lair" "slurp" "misogynist" "horny" "yuppie" "hang" 
 "honey" "smartly" "budget" "insipidly" "silly" "wacky" "amusing" "premier" 
 "moviemaker" "wit" "manifest" "meet" "bacchanal" "locale" "outing" "frightening" 
 "boring" "presto" "bloody" "flick" "shapeshift" "feast" "preferably" "hijack" 
 "sentiment" "government" "jungle" "waste" "slyly" "moment" "snicker" "chuckle" 
 "spoil" "yearning" "connoisseur" "zombie" "awful" "plot" "cinematography" "superb" 
 "trilogy" "lame" "mullah" "primordial" "ambivalent" "bloodlet" "witty" "rationale" 
 "otherworldly" "scheme" "complicity" "palaver" "cast" "photogenic" "deft" "disastrously" 
 "spice" "entertainment" "wittily" "minimum" "output" "installation" "compensation" "unjustified" 
 "settlement" "reject" "assertion" "indigenous" "federation" "unaffected" "willing" "dialogue" 
 "hostile" "intervene" "negotiation" "crude" "barrel" "bpd" "belong" "haunch" 
 "crab" "spokeswoman" "implant" "cheek" "reside" "taster" "turf" "gulp" 
 "mail" "sitewith" "sensational" "hard" "examiner" "curator" "howler" "capuchin" 
 "mistaken" "greyish" "neighbour" "kilogram" "kilometre" "veter" "mummify" "oval" 
 "shock" "horrible" "spacecraft" "machine" "pointy" "trapper" "pet" "splotch" 
 "condo" "crytpid" "bayou" "pest" "inbreeding" "neighbourhood" "fortnight" "bare" 
 "screech" "evil" "scratch" "goatsucker" "bleach" "blond" "mohawk" "snowboarder" 
 "hellbeast" "ridiculously" "tick" "bandy" "plain" "townsfolk" "distance" "residence" 
 "suburban" "lumber" "quick" "elongate" "snout" "notoriety" "forth" "naught" 
 "weak" "nearest" "trash" "townspeople" "advised" "adamant" "neatly" "mute" 
 "expose" "blissfully" "drama" "conveniently" "wield" "chupacraba" "purportedly" "photocall" 
 "altercation" "ransack" "debonair" "dealer" "recover" "stolen" "painting" "gold" 
 "cinema" "brightcove" "hilarious" "handsomely" "curio" "outfit" "promotional" "attend" 
 "relay" "wrestle" "thank" "task" "apologise" "attacker" "assailant" "brush" 
 "wryly" "smile" "career" "globe" "earth" "unsolved" "epic" "adventure" 
 "mission" "humor" "brand" "shark" "technology" "tackle" "climate" "planet" 
 "snowmobile" "fortune" "bushwhack" "rainforest" "perplex" "puzzle" "pound" "producer" 
 "fiction" "diversity" "amazement" "vivid" "genre" "exploration" "glimpse" "organization" 
 "global" "passionate" "leadership" "innovator" "portfolio" "digital" "factual" "strategic" 
 "alliance" "golf" "premium" "landscaper" "texture" "elephant" "wilderness" "fridge" 
 "skeptical" "specimen" "flying" "airplane" "powered" "competition" "homemade" "aircraft" 
 "lucky" "ramp" "compete" "resourceful" "engineering" "creativity" "victory" "criterion" 
 "showmanship" "plunge" "training" "skydiv" "glide" "paraglid" "flew" "fly" 
 "teammate" "bull" "bronco" "buster" "intimidate" "roach" "mean" "cockroach" 
 "reckon" "rustle" "bug" "patience" "buck" "grasp" "mythological" "awesome" 
 "scatter" "majestically" "plummet" "concrete" "penguin" "doesnt" "hangout" "craziness" 
 "odor" "garbage" "berry" "boar" "swamp" "pioneer" "discourage" "accuse" 
 "witchcraft" "crime" "execute" "ghost" "tragedy" "cemetery" "preside" "sheriff" 
 "prison" "super" "noteworthy" "treasure" "sore" "docile" "maternal" "paternal" 
 "impossible" "rational" "tingle" "icy" "monstrous" "cam" "dart" "cruel" 
 "prank" "curling" "photographer" "clear" "hump" "seal" "glacier" "poke" 
 "woken" "sudden" "thirdphaseofthemoon" "astonishing" "lock" "prehistoric" "extinction" "accidentally" 
 "loom" "swum" "afflict" "intestinal" "furor" "rampant" "consternation" "coy" 
 "hysteria" "beastie" "hype" "propensity" "exploit" "instinct" "prompt" "liken" 
 "meteoric" "climb" "stardom" "appeance" "frantic" "alter" "guilt" "longing" 
 "reunite" "la" "safe" "ticket" "civilization" "overwhelm" "emotion" "essence" 
 "orbe" "fecit" "timor" "oefor" "carpet" "stern" "impel" "curtain" 
 "gaze" "mistakenly" "whet" "chubacabra" "coop" "steel" "overbite" "pouch" 
 "nodule" "grandmother" "footprint" "cellphone" "regard" "convey" "fulfil" "commitment" 
 "investment" "diplomat" "back" "vote" "concede" "arrival" "coincide" "bilateral" 
 "intention" "rebuttal" "tweet" "diplomatic" "redesign" "gob" "vision" "optimistic" 
 "arena" "fuel" "theft" "federal" "gasoline" "tanker" "peso" "clandestine" 
 "refinery" "pipe" "analyst" "implement" "column" "commend" "nation" "pipeline" 
 "intelligence" "censure" "simplistic" "patrol" "security" "indiscriminate" "orderly" "immigration" 
 "personal" "fingerprint" "prisoner" "wrongfully" "environmentalist" "frack" "extraction" "teacher" 
 "education" "reform" "violently" "telephone" "counterpart" "sovereignty" "testify" "inaction" 
 "weaponry" "organise" "defend" "violent" "summon" "judicial" "calm" "unsure" 
 "worsen" "retake" "firearm" "traffic" "freeze" "flow" "agreement" "acquiesce" 
 "stem" "manufacture" "utter" "failure" "grudge" "enemy" "defeat" "ambition" 
 "hurt" "hamper" "careful" "misguided" "contrary" "ironic" "cartoon" "ctober" 
 "irony" "engulf" "disarray" "unquestionable" "meddle" "animalpolitico" "allocate" "deployment" 
 "negligible" "seamstress" "unincorporate" "donate" "cloth" "employee" "slow" "kindness" 
 "sew" "scrunch" "overhear" "dad" "equipment" "hospital" "nurse" "handiwork" 
 "page" "fabric" "pastor" "estate" "pickup" "delivery" "clientele" "figured" 
 "nope" "stitch" "rotary" "cutter" "thread" "complete" "perch" "inspiration" 
 "goofy" "motivation" "unsolicited" "uncomfortable" "donation" "retire" "temperamental" "teenager" 
 "shut" "homeless" "shelter" "entertainer" "performer" "theorize" "depict" "historic" 
 "entrench" "mythology" "merit" "scaley" "explode" "villain" "slain" "lechuza" 
 "witch" "attract" "lonely" "pray" "shapeshifter" "tribe" "magician" "magic" 
 "werewolf" "poster" "tight" "lipped" "due" "reservation" "fours" "frighteningly" 
 "intelligent" "classroom" "dwell" "documentary" "filmmaker" "von" "definitive" "lecture" 
 "affiliation" "homeland" "recipe" "spill" "deny" "damn" "capacity" "thorough" 
 "enthusiastic" "realistic" "chase" "bane" "prowl" "thirsty" "savage" "nightmarish" 
 "revel" "mankind" "candid" "maul" "rage" "frenzy" "sleuth" "ghastly" 
 "bloodthirsty" "meanwhile" "bridge" "curve" "uncanny" "adaptation" "jokingly" "detective" 
 "photoshop" "artwork" "round" "culprit" "snowfall" "legitimacy" "reek" "webbed" 
 "throat" "rip" "reel" "enormous" "date" "muscular" "gorilla" "bulldozer" 
 "grainy" "berserk" "spiny" "glance" "slay" "raid" "snake" "swim" 
 "sailor" "serpentine" "belt" "forehead" "historical" "reward" "peer" "beluga" 
 "panther" "lynx" "people" "copper" "sacred" "apart" "precious" "metal" 
 "hare" "drag" "porcupine" "hoof" "kangeroo" "cloven" "cry" "pitch" 
 "curdle" "scream" "womb" "stormy" "chimney" "vigilante" "storey" "upload" 
 "text" "transcript" "copter" "bump" "uh" "chimichanga" "dear" "chubby" 
 "papa" "smash" "shh" "lasagne" "foam" "bash" "stripe" "slit" 
 "brazen" "superstition" "listen" "gonna" "exaggeration" "honour" "suspicious" "beloved" 
 "shine" "butt" "collect" "loose" "strangle" "strewn" "carnage" "preposterous" 
 "sunk" "turkey" "sneer" "penis" "bin" "septic" "pub" "price" 
 "tuft" "stare" "nocturnal" "discomfort" "fawn" "liger" "driveway" "extend" 
 "backwards" "extinct" "necropsy" "snarl" "spokesperson" "quip" "sadness" "yearold" 
 "quote" "galaxy" "halfbeast" "kangaroolike" "sulfurlike" "stench" "pantherlike" "snakelike" 
 "destination" "someday" "abuzz" "satisfaction" "dye" "undisturbed" "foliage" "conclusive" 
 "poem" "vendor" "written" "grade" "tracker" "rodeo" "bronc" "slack" 
 "steer" "loud" "cheer" "bareback" "runner" "solidly" "cowboy" "qualify" 
 "unofficial" "wanna" "card" "redeem" "toast" "plenty" "frog" "invasive" 
 "commercial" "book" "oahu" "enormously" "robbery" "complain" "beforehand" "secretly" 
 "predawn" "indict" "courtesy" "jurisdiction" "indictment" "governor" "spokesman" "seize" 
 "conflict" "remark" "misinterpret" "benefit" "statehood" "neglect" "clout" "harassment" 
 "poet" "manuscript" "tape" "forcibly" "apartment" "lawyer" "decline" "allegation" 
 "warrant" "advocate" "pro" "trial" "preliminary" "magistrate" "protester" "chant" 
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


(defparameter *words-used-in-polywords* nil) ;; 1,130

(defun populate-words-used-in-polywords ()
  "Looping the candidate test over the master word list returns about 1.5k words.
   Sampling says they are :used-in-pw. Starts with words and ends with
   strings"
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



(defparameter *clean-comlex-verbs* nil)  ;; 630

(defun populate-clean-comlex-verbs ()
  "These were examined by hand to remove plurals, past versions"
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

(defun populate-clean-morph-verb-list ()
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
           (loop for p in raw-list
              collect (stem-form p))))
      (setq *clean-word-list* (mapcar #'word-pname clean))
      (length clean))))




;;;------------
;;; master list
;;;------------

(defun prep-all-word-lists () ; 3,097
  "Run all the filters. They each return a count."
  (let ((word-count
         (+ (populate-words-used-in-polywords)
            (populate-clean-comlex-verbs)
            (populate-clean-morph-verb-list)
            (populate-clean-word-list))))
    word-count))


(defparameter *master-comlex-word-list* nil) ; 2,183

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
