;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "workspace"
;;;  Module: "grammar/model/sl/score/
;;; version: August 2021

;; Broken out of comlex-verb-explorations 8/23/21

(in-package :sparser)

(defparameter *word-tranch-1*
  '("abate" "abound" "abuse" "accentuate" "accept" "access" "accommodate" "account" "ache"
    "acquire" "addict" "address" "administer" "admire" "adopt" "advertise" "advise" "advocate"))

(defparameter *word-tranch-2*
  '( "bre" ;; no entry in comle
    "break" "bridge" "brief" "bring" "brook" "brought"))

(defparameter *word-tranch-3*
  '( ;; -- "cross" is also an adjective
    "cruise" "crush" "cultivate" "curve"
    "dare" "daydream" "deal" "debate" "debug" "decay" "decelerate" "decline" "decompose" "decree"
    "deepen" "default" "defend" "deflect" "deliberate" "delineate" "deliver" "deluge" "depart"
    "depict" "deploy" "deserve" "design" "desire" "despair" "destroy" "deviate" "diagnose" "differ"
    "differentiate" "dip" "disagree" "disapprove" "discharge" "discipline" "disclose" "disconnect"
    "discount" "discourage" "discourse" "discover" "discredit" "disentangle" "disgust" "dislike"
    "dismiss" "disprove" "dispute" "disseminate" "distort" "distract" "distress" "distrust"
    "divine" "document" "dodge" "dose" "doubt" "dovetail" "downplay" "draw" "dread" "dream" "drink"
    "dry" ))

(defparameter *word-tranch-4*
  '( 
    ;; "equal" ;; list in value of an irregular
    ;; ditto "fuel" "hang"
   "happen" "harden"
    "harm" "harries" "harry" "hazard" "headquarter" "heal" "hear" "heat" "hedge" "heighten" "held"
    "hinder" "hit" "hoax" "hold" "hole" "holiday" "honor" "host" "house" "hug" "hum" "humor"
    "humour" "hunch" "hunches" "hunt" "hurdle" "hurt" "illuminate" "image" "impose" "index"
    "inject" "input" "inspect" "inspire" "instance" "institute" "insult" "inter" "intercept"
    "interest" "interpret" "interview" "invalid" "invalidate" "inverse" "invoke" "irrigate" "jail"
    "jaw" "job" "join" "joke" "jot" "journey" "judge" "keen" "key" "kid" "kiss" "kisses" "kit"
    "knew" "knight" "knit" "know" "labor" "labour" "ladder" "land" "landscape" "last" "laugh"
    "layer" "lessen" "liberate" "license" "lie" "light" "live" "load" "lock" "lodge" "log" "lord"
    "lull" "lure" "machine" "madden" "magnifies" "magnify" "mail" "major" "manage" "mandate"
    "manifest" "manifold" "march" "market" "mask" "master" "maunder" "maximise" "mean" "meet"
    "merit" "message" "mill" "mind" "misconduct" "misread" "miss" "misses" "mistake" "mistrust"
    "mitigate" "moderate" "motivate" "mouth" "mute" "navigate" "necessitate" "neighbor" "neighbour"
    "net" "nettle" "nominate" "nose" "notice" "nuance" "occasion" "offer" "offset" "order"
    "outline" "overcome" "overflow" "overlaid" "overlay" "overload" "override" ))

(defparameter *word-tranch-5*
  '( "package" "page"
    "paid" "pair" "panic" "paper" "parallel" "parcel" "partake" "pass" "pause" "pave" "pension"
    "people" "perceive" "permit" "pet" "peter" "phase" "phone" "pickle" "picture" "piece" "plague"
    "plan" "plot" "point" "police" "polish" "poll" "ponder" "port" "portray" "pose" "posture"
    "potter" "pout" "power" "practice" "prefer" "prejudice" "premise" "prep" "press" "pressure"
    "pretend" "prey" "price" "print" "prize" "proce" "profile" "profit" "program" "progress"
    "prohibit" "project" "prompt" "proposition" "prospect" "protest" "punish" "puzzle" "quarantine"
    "queen" "quest" "quiet" "quit" "quiz" "race" "racket" "raffle" "raft" "rallies" "rally" "rap"
    "reason" "rebel" "rebuke" "rebut" "recall" "receipt" "redefine" "refer" "refine" "reflect"
    "reform" "refuse" "register" "regress" "regresses" "reign" "reinforce" "reject" "relate"
    "remark" "remedies" "remedy" "remember" "remit" "render" "replace" "replies" "reply" "request"
    "rerun" "rescue" "research" "reset" "resonate" "respect" "rest" "restart" "restore" "retail"
    "review" "revolt" "revolve" "reward" "ridge" "right" "rim" "ripple" "rise" "risk" "rival"
    "room" "root" "rose" "rough" "round" "row" "rub" "rule" "ruminate" "rumor" "sacrifice" "saddle"
    "safeguard" "salute" "sandwich" "save" "savvy" "scan" "scatter" "scent" "schedule" "scheme"
    "school" "score" "screech" "search" "season" "secure" "segment" "sell" "send" "sense" "sent"
    "service" "settle" "sever" "sex" "shadow" "shake" "shallow" "shape" "shave" "shelter" "shelve"
    "shin" "ship" "shock" "shoe" "shop" "shore" "shorten" "shot" "shrink" "shut" "sift" "sign"
    "sin" "sip" "sit" "skew" "ski" "skyrocket" "sleep" "slight" "slur" "smart" "smell" "smoke"
    "smolder" "smooth" "snack" "snap" "sneeze" "snow" "snowball" "soap" "sole" "solicit" "solve"
    "sound" "source" "speak" "speculate" "spend" "spike" "spill" "spin" "split" "sport" "spot"
    "spread" "sprinkle" "squire" "stake" "stall" "stand" "staple" "star" "station" "steel" "steep"
    "stem" "stereotype" "stick" "stone" "store" "str" "strand" "strengthen" "stress" "strike"
    "strip" "struck" "stud" "stump" "style" "stymie" "sub" "submit" "subscribe" "subside" "suffer"
    "suffice" "sum" "sun" "sup" "supplies" "supply" "surge" "survey" "swab" "swear" "swing"
    "tackle" "take" "tan" "taste" "teach" "telephone" "thread" "threat" "throw" "thumb" "tide"
    "tolerate" "toll" "total" "towel" "tower" "trace" "track" "travel" "trend" "trip" "troll"
    "troop" "trouble" "trump" "turn" "twitter" "type" "uncover" "underestimate" "undermine"
    "underrate" "underscore" "undertake" "undervalue" "uniform" "unravel" "update" "uphold" "upset"
    "usher" "vary" "visit" "voice" "wait" "waive" "wake" "wall" "war" "wave" "weather" "weekend"
    "welcome" "wheel" "wild" "win" "wipe" "wish" "wishes" "wonder" "woo" "word" "worship" "wrap"
    "wrote" "zone"))



;;;(defvar plist '("bewares" :infinitive "beware" :present-participle *none* :past-tense *none*))

#|
;-- verb with specializations

(define-category administer :specializes comlex-verb
  :binds ((to to))
  :realization (:verb  ("administer" :past-tense "administered" :past-participle "administered" :present-participle "administering")
                :s SUBJECT :o OBJECT :to to))


;;----------  what annotation do we have to do to these categories/words
sp> (ic 'invest)
#<ref-category INVEST>
  plist             = (:mumble..
  symbol            = category::invest
  rule-set          = nil
  id-counter        = 0
  slots             = (#<variable on> #<variable for> #<variable outside> #<variable at>..
  binds             = nil
  mix-ins           = nil
  realization       = (#<realization for invest: "invest" verb>)
  lattice-position  = #<top-lp invest->comlex-verb  4503>
  operations        = #<operations for invest>
  instances         = nil
  rnodes            = nil

sp> (unit-plist *)
(:mumble
 #<m-rdata: INVEST, svo v="invest" (#<variable subject> #<variable object>)>
 :rdata-expr
 (:verb "invest" :s subject :o object :on on :for for :outside outside :at at
  :with with :in in :into into)
 :super-categories
 (#<ref-category INVEST> #<ref-category COMLEX-VERB>
  #<ref-category SUBCATEGORIZATION-PATTERN> #<ref-category LINGUISTIC>
  #<ref-category ABSTRACT> #<mixin WITH-ACTOR> #<mixin WITH-PATIENT>
  #<ref-category THEMATIC-ROLE> #<ref-category ADDS-RELATION>
  #<ref-category NOTATIONAL-EXTENSION> #<ref-category TOP>)
 :rules
 (#<PSR-260038 invest → "invest"> #<PSR-260039 invest → "invests">
  #<PSR-260040 invest → "invested"> #<PSR-260041 invest → "investing">)
 :grammar-module #<grammar-module *SCORE-VERBS*> :file-location
 #P"SPARSER:BIO;SCORE-VERBS.LISP")


sp> (iw "invest")
#<word "invest">
  plist                    = (:inflection-of-verb #1=#<word "invests"> :verb-inflections..
  symbol                   = word::|invest|
  rule-set                 = #<rule-set for #<word "invest">>
  pname                    = "invest"
  morphology               = nil
  capitalization           = :lower-case
  capitalization-variants  = nil

sp> (unit-plist *)
(:inflection-of-verb #<word "invests"> :verb-inflections
 (#<word "investing"> #<word "invested"> #<word "invests">) :file-location
 #P"SPARSER:BIO;SCORE-VERBS.LISP" :grammar-module
 #<grammar-module *SCORE-VERBS*>)













-- comlex-entry  returns the entire entry, all parts of speech

sp> (comlex-entry "fill")
((verb
  (:subc
   ((pp :pval ("with" "from"))
    (part-np-pp :pval ("on" "with") :adval ("out" "up" "in"))
    (part-pp :adval ("in") :pval ("for")) (part-np :adval ("in" "up" "out"))
    (part :adval ("up" "out" "in")) (np-pp :pval ("from" "to" "with")) (np)
    (np-np) (intrans))
   :features ((vveryving :prespart t))))
 (noun))

-- comlex-subcategorization  returns the portion of the entry for one part of speech

sp> (comlex-subcategorization "fill" 'verb)
(verb
 (:subc
  ((pp :pval ("with" "from")) ; pg.74
   (part-np-pp :pval ("on" "with") :adval ("out" "up" "in")) 'pg.101
   (part-pp :adval ("in") :pval ("for")) ;pg.99 prep as advP vs. prepP
   (part-np :adval ("in" "up" "out")) ;pg.95 particle can move 
   (part :adval ("up" "out" "in"))    ;pg.93 'particle'
   (np-pp :pval ("from" "to" "with")) ;pg.77
   (np) ;pg.72
   (np-np) ;pg.73
   (intrans)) ;pg.68
  :features ((vveryving :prespart t)))) ;pg.65

|#


#| Adverb
sp> (comlex-entry "underneath")
((adverb
  (:features ((loc&dir-adv))
   :modif ((pred-adv)
           (clausal-adv :final t :init t)))))

|#

#| Adjective
sp> (comlex-entry "traditional")
((adjective
  (:comparative ("more traditional") 
   :superlative ("most traditional")
   :subc ((extrap-adj-that-s)
          (extrap-adj-for-to-inf-np-omit))
  :features ((gradable)))))

extrap-adj-that-s -- pg.36 sentential complement corresponds to
  an extraposed sentential subject
  "It is traditional that he sells books"

extrap-adj-for-to-inf-np-omit -- pg.45  allows the logical object of the embeded clause
  to occupy subject position of the matrix
    extrap-adj-for-to-inf: "It is traditional for children to fill a box with fresh grass"

|#
