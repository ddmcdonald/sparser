;; Written 16:31:40 8/13/2019

(in-package :sparser)


(define-mixin-category absorb-39.8
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE WITH-GOAL WITH-THEME WITH-SOURCE)
  :realization (:VERB ("absorb" "ingest" "take")
                (:S GOAL :O THEME :FROM SOURCE) (:S GOAL :O THEME)))

(define-mixin-category accept-77.1
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-NP NP-V-S_ING NP-V-THAT-S NP-V-WHAT-S WITH-AGENT
           WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("accept" "buy" "understand" "encourage")
                (:S AGENT :O THEME)))

(define-mixin-category accompany-51.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION WITH-AGENT WITH-THEME
           WITH-DESTINATION)
  :binds ((SPARSER::THEME PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("accompany" "conduct" "escort" "guide" "lead" "misdirect"
                 "shepherd" "steer")
                (:S AGENT :O THEME :SPATIAL DESTINATION) (:S AGENT :O THEME)))

(define-mixin-category acquiesce-95.1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V-PP.THEME WITH-AGENT WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("accede" "bow" "capitulate" "defer" "fall" "give_way"
                 "give_in" "succumb" "yield")
                (:S AGENT :TO THEME) (:S AGENT :TO AGENT)))

(define-mixin-category acquiesce-95.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF ACQUIESCE-95.1)
  :realization (:VERB ("acquiesce" "consent" "submit") (:S AGENT :O THEME)))

(define-mixin-category act-114
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB
                ("action" "carry_out" "carry_through" "conduct" "execute"
                 "fulfill" "make" "cause" "engage_in")
                (:S AGENT :O PREDICATE)))

(define-mixin-category act-114-1
  :specializes subcategorization-pattern
  :mixins (NP-V ACT-114)
  :realization (:VERB ("do" "perform") (:S AGENT)))

(define-mixin-category act-114-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME NP-V-PP.PREDICATE ACT-114-1)
  :realization (:VERB ("act" "move") (:S AGENT :O PREDICATE)
                (:S AGENT :ON PREDICATE)))

(define-mixin-category addict-96
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.STIMULUS NP-V-NP-S_ING WITH-AGENT WITH-PATIENT
           WITH-STIMULUS)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("addict" "bias" "dispose" "incline" "predispose" "woo"
                 "slant")
                (:S AGENT :O PATIENT :TO STIMULUS)))

(define-mixin-category adjust-26.9
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP NP-V-NP-S_ING NP-V-S_ING NP-V-PP WITH-AGENT
           WITH-PATIENT WITH-GOAL WITH-SOURCE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("adapt" "accommodate" "conform" "adjust" "gear" "fit"
                 "readjust" "readapt" "assimilate")
                (:S AGENT :TO GOAL) (:S AGENT :O PATIENT :TO GOAL)
                (:S AGENT :O PATIENT)))

(define-mixin-category admire-31.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE NP-V-NP.STIMULUS NP-V-THAT-S NP-V-S_ING
           NP-V-NP-S_ING WITH-STIMULUS WITH-EXPERIENCER WITH-ATTRIBUTE)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                ("admire" "adore" "appreciate" "applaud" "bear" "bewail"
                 "cherish" "deify" "detest" "esteem" "exalt" "fancy" "favor"
                 "grudge" "idolize" "miss" "mistrust" "prefer" "affirm"
                 "reaffirm" "prize" "respect" "relish" "revere" "savor" "stand"
                 "support" "tolerate" "treasure" "trust" "value" "venerate"
                 "worship" "abhor" "deplore" "distrust" "dread" "envy"
                 "execrate" "lament" "loathe" "mourn" "pity" "resent" "rue"
                 "believe" "suffer")
                (:S EXPERIENCER :O STIMULUS)
                (:S EXPERIENCER :O STIMULUS :FOR ATTRIBUTE)))

(define-mixin-category admire-31.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF ADMIRE-31.2)
  :realization (:VERB
                ("despise" "disdain" "dislike" "regret" "like" "love" "enjoy"
                 "fear" "hate")
                (:S EXPERIENCER :O STIMULUS)))

(define-mixin-category admit-64.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.LOCATION WITH-AGENT WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB ("allow" "let" "hail") (:S AGENT :IO THEME :OC LOCATION)))

(define-mixin-category admit-64.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADV NP-V-NP-PP.LOCATION ADMIT-64.3)
  :realization (:VERB ("admit" "include" "permit" "receive" "welcome")
                (:S AGENT :O THEME :LOC LOCATION)
                (:S AGENT :IO THEME :OC LOCATION)))

(define-mixin-category adopt-93
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("abide-by" "assume" "adopt" "follow" "take_over" "take_on"
                 "take")
                (:S AGENT :O THEME)))

(define-mixin-category advise-37.9
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.RECIPIENT NP-V-NP.RECIPIENT-THAT-S NP-V-NP-HOW-S_INF
           NP-V-NP-S-QUOTE NP-V-NP-PP.TOPIC WITH-AGENT WITH-TOPIC
           WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("alert" "assure" "brief" "educate" "encourage" "notify")
                (:S AGENT :O RECIPIENT :OF TOPIC)
                (:S AGENT :IO RECIPIENT :OC TOPIC)
                (:S AGENT :O RECIPIENT :AGAINST TOPIC :ABOUT TOPIC :CONCERNING
                 TOPIC :ON TOPIC :REGARDING TOPIC :RESPECTING TOPIC)
                (:S AGENT :O RECIPIENT)))

(define-mixin-category advise-37.9-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.TOPIC NP-V-THAT-S NP-V-HOW-S_INF NP-V-S-QUOTE ADVISE-37.9)
  :realization (:VERB
                ("admonish" "advise" "caution" "counsel" "instruct" "warn")
                (:S AGENT :O TOPIC)
                (:S AGENT :AGAINST TOPIC :ABOUT TOPIC :CONCERNING TOPIC :ON
                 TOPIC :REGARDING TOPIC :RESPECTING TOPIC)))

(define-mixin-category allow-64.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-S_ING WITH-AGENT WITH-BENEFICIARY WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("approve" "authorize" "endorse" "okay" "sanction" "tolerate")
                (:S AGENT :O THEME) (:S AGENT :O BENEFICIARY)))

(define-mixin-category allow-64.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S ALLOW-64.1)
  :realization (:VERB ("allow" "permit") (:S AGENT :IO BENEFICIARY :OC THEME)))

(define-mixin-category amalgamate-22.2
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-ADVP-MIDDLE-PP NP-V-ADVP-MIDDLE WITH-AGENT
           WITH-PATIENT WITH-CO-PATIENT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB ("intermarry") (:S PATIENT (:M ADVERB))
                (:S PATIENT (:M ADVERB) :WITH CO-PATIENT)))

(define-mixin-category amalgamate-22.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-PATIENT NP-V-NP NP-V-PP.CO-PATIENT WITH-PATIENT
           WITH-CO-PATIENT AMALGAMATE-22.2)
  :binds ((SPARSER::CO-PATIENT PHYSICAL) (SPARSER::PATIENT PHYSICAL))
  :realization (:VERB ("couple" "incorporate" "integrate" "match" "overlap")
                (:S PATIENT :WITH CO-PATIENT) (:S AGENT :O PATIENT)
                (:S AGENT :O PATIENT :INTO CO-PATIENT :TO CO-PATIENT :WITH
                 CO-PATIENT)))

(define-mixin-category amalgamate-22.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V AMALGAMATE-22.2-1)
  :realization (:VERB ("amalgamate" "coalesce" "consolidate" "intermingle")
                (:S PATIENT)))

(define-mixin-category amalgamate-22.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-PATIENT NP-V-NP NP-V-PP WITH-PATIENT WITH-CO-PATIENT
           WITH-AGENT AMALGAMATE-22.2)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT ABSTRACT))
          (SPARSER::CO-PATIENT (:OR PHYSICAL-AGENT ABSTRACT))
          (SPARSER::PATIENT PHYSICAL))
  :realization (:VERB
                ("conjoin" "entangle" "muddle" "pair" "team" "affiliate"
                 "associate" "compare" "confederate" "confuse" "incorporate"
                 "integrate" "total" "identity")
                (:S PATIENT :WITH CO-PATIENT) (:S AGENT :O PATIENT)
                (:S AGENT :O PATIENT :WITH CO-PATIENT)))

(define-mixin-category amalgamate-22.2-2-1
  :specializes subcategorization-pattern
  :mixins (NP-V AMALGAMATE-22.2-2)
  :realization (:VERB
                ("alternate" "crisscross" "entwine" "interchange"
                 "interconnect" "interlace" "interlink" "interlock"
                 "intersperse" "intertwine" "interweave" "mate" "unite"
                 "coalesce" "coincide" "conflate" "consolidate" "contrast"
                 "correlate" "harmonize" "intermingle" "interrelate"
                 "repackage" "rhyme" "unify")
                (:S PATIENT)))

(define-mixin-category amalgamate-22.2-3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP AMALGAMATE-22.2)
  :realization (:VERB ("oppose") (:S AGENT :O PATIENT)))

(define-mixin-category amalgamate-22.2-3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-PATIENT AMALGAMATE-22.2-3)
  :realization (:VERB ("introduce" "figure")
                (:S AGENT :O PATIENT :TO CO-PATIENT)))

(define-mixin-category amalgamate-22.2-3-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT WITH-PATIENT WITH-CO-PATIENT AMALGAMATE-22.2-3-1)
  :binds ((SPARSER::CO-PATIENT PHYSICAL-AGENT)
          (SPARSER::PATIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("marry" "remarry" "wed") (:S PATIENT)))

(define-mixin-category amalgamate-22.2-3-2
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT WITH-PATIENT WITH-CO-PATIENT AMALGAMATE-22.2-3)
  :binds ((SPARSER::CO-PATIENT PHYSICAL) (SPARSER::PATIENT PHYSICAL)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB ("engage") (:S PATIENT)))

(define-mixin-category amuse-31.1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-ADV-MIDDLE NP-V-NP-PRO-ARB NP.CAUSE-V-NP
           NP-V-NP-ADJ WITH-EXPERIENCER WITH-STIMULUS WITH-RESULT)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                ("abash" "affect" "afflict" "affront" "aggravate" "aggrieve"
                 "agitate" "agonize" "alarm" "alienate" "amaze" "amuse" "anger"
                 "annoy" "antagonize" "appall" "appease" "arouse" "assuage"
                 "astonish" "astound" "awe" "baffle" "befuddle" "beguile"
                 "bewilder" "bewitch" "boggle" "bore" "bother" "browbeat" "bug"
                 "calm" "captivate" "chagrin" "charm" "cheer" "chill" "cloy"
                 "comfort" "concern" "confound" "confuse" "console" "content"
                 "convince" "cow" "crush" "cut" "daunt" "daze" "dazzle"
                 "deject" "delight" "demolish" "demoralize" "depress"
                 "devastate" "disappoint" "disarm" "discombobulate" "discomfit"
                 "disconcert" "discompose" "discourage" "disgrace" "disgruntle"
                 "disgust" "dishearten" "dishonour" "disillusion" "dismay"
                 "dispirit" "displease" "disquiet" "dissatisfy" "distract"
                 "distress" "disturb" "divert" "dumbfound" "elate" "electrify"
                 "embarrass" "embolden" "enchant" "encourage" "enervate"
                 "enflame" "engage" "engross" "enlighten" "enliven" "enrage"
                 "enrapture" "entertain" "enthrall" "enthuse" "entice"
                 "entrance" "exasperate" "excite" "exhaust" "exhilarate"
                 "fascinate" "fatigue" "faze" "flabbergast" "flatter" "floor"
                 "flummox" "fluster" "fox" "frighten" "frustrate" "fuddle"
                 "gall" "galvanize" "gladden" "gratify" "grieve" "harass"
                 "harm" "haunt" "hearten" "horrify" "humble" "humiliate" "hurt"
                 "hypnotize" "impair" "impress" "incense" "inflame" "infuriate"
                 "inspire" "insult" "interest" "intimidate" "intoxicate"
                 "intrigue" "invigorate" "irk" "irritate" "jade" "jar"
                 "jollify" "jolt" "kill" "lull" "madden" "menace" "mesmerize"
                 "miff" "misguide" "molest" "mollify" "mortify" "move" "muddle"
                 "mystify" "nauseate" "nettle" "nonplus" "numb" "obsess"
                 "occupy" "offend" "outrage" "overawe" "overwhelm" "pacify"
                 "pain" "peeve" "perplex" "perturb" "pester" "pique" "placate"
                 "plague" "please" "preoccupy" "provoke" "puzzle" "quench"
                 "rag" "rankle" "ravish" "reassure" "recharge" "refresh"
                 "rejuvenate" "relax" "relieve" "repel" "repulse" "revitalize"
                 "revolt" "rile" "ruffle" "sadden" "satisfy" "scandalize"
                 "scare" "shake" "shame" "shock" "sicken" "sober" "solace"
                 "soothe" "spellbind" "spook" "stagger" "startle" "stimulate"
                 "sting" "stir" "strike" "stump" "stun" "stupefy" "surprise"
                 "tantalize" "tempt" "terrify" "terrorize" "threaten" "thrill"
                 "throw" "tickle" "tire" "titillate" "torment" "torture"
                 "touch" "transfix" "transport" "trouble" "try" "unnerve"
                 "unsettle" "uplift" "upset" "vex" "weary" "worry" "wound"
                 "wow" "roil" "smite")
                (:S STIMULUS :IO EXPERIENCER :OC RESULT)
                (:S STIMULUS :O EXPERIENCER) (:S STIMULUS)
                (:S EXPERIENCER (:M ADVERB))))

(define-mixin-category animal_sounds-38
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.RECIPIENT NP-V-NP.THEME NP-V-PP.LOCATION
           NP.LOCATION-V-PP.AGENT WITH-AGENT WITH-THEME WITH-RECIPIENT
           HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("baa" "bark" "bay" "bellow" "blat" "bleat" "bray" "buzz"
                 "cackle" "call" "caw" "chatter" "cheep" "chirp" "chirrup"
                 "chitter" "cluck" "coo" "croak" "crow" "cuckoo" "drone"
                 "gobble" "growl" "grunt" "hee-haw" "hiss" "honk" "hoot" "howl"
                 "ki-yi" "low" "meow" "mew" "moo" "neigh" "oink" "peep" "pipe"
                 "purr" "quack" "roar" "rooroo" "scrawk" "squawk" "squeak"
                 "squeal" "stridulate" "trill" "tweet" "twitter" "wail"
                 "warble" "whimper" "whinny" "whistle" "woof" "yap" "yell"
                 "yelp" "yip" "yowl" "boom" "rattle" "groan" "ululate" "moan"
                 "rumble" "screech" "snarl" "thunder" "trumpet" "wheeze"
                 "whine")
                (:S LOCATION :WITH AGENT) (:S AGENT :O LOCATION)
                (:S AGENT :O THEME) (:S AGENT :DEST_DIR RECIPIENT) (:S AGENT)))

(define-mixin-category appeal-31.4
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.EXPERIENCER WITH-STIMULUS WITH-EXPERIENCER)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB NIL (:S STIMULUS :TO EXPERIENCER)))

(define-mixin-category appeal-31.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.EXPERIENCER APPEAL-31.4)
  :realization (:VERB ("niggle") (:S STIMULUS :AT EXPERIENCER)))

(define-mixin-category appeal-31.4-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.EXPERIENCER APPEAL-31.4)
  :realization (:VERB ("grate" "jar") (:S STIMULUS :ON EXPERIENCER)))

(define-mixin-category appeal-31.4-3
  :specializes subcategorization-pattern
  :mixins (NP-V APPEAL-31.4)
  :realization (:VERB ("appeal") (:S STIMULUS)))

(define-mixin-category appear-48.1.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION THERE-V-NP-PP PP.LOCATION-V-NP NP-V-ADV
           WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION))
  :realization (:VERB
                ("appear" "arise" "awake" "awaken" "break" "burst" "coalesce"
                 "come" "dawn" "derive" "develop" "emanate" "emerge" "erupt"
                 "evolve" "exude" "flow" "form" "grow" "gush" "irrupt" "issue"
                 "materialize" "open" "plop" "pop_up" "reappear" "re-emerge"
                 "result" "rise" "show_up" "spill" "spread" "spring up" "steal"
                 "stem" "stream" "supervene" "surge" "take_shape" "turn_up"
                 "turn_out" "wax")
                (:S THEME :O LOCATION) (:LOC LOCATION :O THEME)
                (:O THEME :LOC LOCATION) (:S THEME :LOC LOCATION) (:S THEME)))

(define-mixin-category appoint-29.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP-PP.RESULT NP-V-NP-TO-BE-NP NP-V-NP WITH-AGENT
           WITH-THEME WITH-RESULT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("appoint" "coronate" "crown" "designate" "elect" "install"
                 "proclaim" "mark" "ordain" "adopt" "upgrade" "reelect" "want"
                 "name" "nominate")
                (:S AGENT :O THEME) (:S AGENT :IO THEME :OC RESULT)))

(define-mixin-category assessment-34.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE NP-V-NP.ATTRIBUTE WITH-AGENT WITH-THEME
           WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("analyse" "analyze" "appraise" "assay" "assess" "audit"
                 "check" "consult" "examine" "evaluate" "feel_out" "follow"
                 "go_over" "inspect" "investigate" "monitor" "peruse"
                 "proofread" "regard" "research" "review" "sample" "scan"
                 "scrutinize" "study" "surveil" "survey" "taste" "test" "try"
                 "try_on" "try_out" "watch")
                (:S AGENT :IO THEME :OC ATTRIBUTE)
                (:S AGENT :O THEME :FOR ATTRIBUTE) (:S AGENT :O THEME)))

(define-mixin-category assuming_position-50
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION WITH-AGENT HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION))
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("bend" "bow" "crouch" "flop" "hang" "hunch" "hunch_up" "kneel"
                 "lean" "lie" "lie_down" "perch" "plop" "rise" "sit" "sit_down"
                 "slouch" "slump" "sprawl" "squat" "squat_down" "stand"
                 "stand_up" "stoop" "straddle")
                (:S AGENT :LOC LOCATION) (:S AGENT)))

(define-mixin-category attack-60.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB
                ("ambush" "assail" "assault" "bomb" "bombard" "charge"
                 "fall_upon" "jump" "lay_into" "round_on" "set_upon")
                (:S AGENT :O PATIENT)))

(define-mixin-category attack-60.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT WITH-PATIENT ATTACK-60.1)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB ("attack" "charge" "raid" "strike") (:S AGENT)))

(define-mixin-category attend-107.4
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-GOAL)
  :realization (:VERB NIL))

(define-mixin-category attend-107.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP ATTEND-107.4)
  :realization (:VERB ("attend" "patronize") (:S THEME :O GOAL)))

(define-mixin-category attend-107.4-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP ATTEND-107.4)
  :realization (:VERB ("go" "belong") (:S THEME :NIL GOAL)))

(define-mixin-category avoid-52
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.LOCATION NP-V-NP.THEME NP-V-S_ING WITH-AGENT HAS-LOCATION
           WITH-THEME)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("avoid" "boycott" "circumvent" "dodge" "duck" "elude" "eschew"
                 "evade" "forgo" "shun" "sidestep")
                (:S AGENT :O THEME) (:S AGENT :O LOCATION)))

(define-mixin-category banish-10.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE NP-V-NP-PP.DESTINATION WITH-AGENT
           WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL-AGENT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("banish" "deport" "evacuate" "exile" "expel" "extradite"
                 "recall" "recuse" "remove" "shanghai" "turn-away" "turn-back"
                 "turn-out" "boot")
                (:S AGENT :O THEME :TO DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE) (:S AGENT :O THEME)))

(define-mixin-category base-97.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE NP-V-NP-PP.SOURCE-WHETHER-S
           NP-V-NP-PP.SOURCE-S_ING NP-V-NP-PP.SOURCE-S WITH-AGENT WITH-THEME
           WITH-SOURCE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("base" "establish" "ground" "found" "build" "construe")
                (:S AGENT :O THEME :ON SOURCE)))

(define-mixin-category battle-36.4
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V NP-V-PP.CO-AGENT-PP.THEME-WHETHER-S
           NP-V-PP.CO-AGENT-PP.THEME-WHAT-S
           NP-V-PP.CO-AGENT-PP.THEME-WHAT-S_INF
           NP-V-PP.CO-AGENT-PP.THEME-WHETHER-S_INF NP-V-PP.CO-AGENT-PP.THEME
           NP-V-PP.TOPIC-NP-S_ING NP-V-PP.THEME-WHETHER-S NP-V-PP.THEME-WHAT-S
           NP-V-PP.THEME-WHETHER-S_INF NP-V-PP.THEME-WHAT-S_INF NP-V-PP.THEME
           WITH-AGENT WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("argue" "bargain" "bicker" "brawl" "clash" "collide" "compete"
                 "contend" "dicker" "dispute" "fence" "feud" "joust" "quarrel"
                 "quibble" "scrap" "scuffle" "skirmish" "spar" "spat"
                 "squabble" "struggle" "tilt" "tussle" "vie" "war" "wrangle")
                (:S AGENT :ABOUT THEME :|\|| THEME :OVER THEME)
                (:S AGENT :ABOUT TOPIC :|\|| TOPIC :OVER TOPIC)
                (:S AGENT :WITH AGENT :ABOUT THEME :|\|| THEME :OVER THEME)
                (:S AGENT) (:S AGENT :WITH AGENT)))

(define-mixin-category battle-36.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME NP-V-NP-PP.THEME-WHETHER-S
           NP-V-NP-PP.THEME-WHAT-S NP-V-NP-PP.THEME-WHETHER-S_INF
           NP-V-NP-PP.THEME-WHAT-S_INF BATTLE-36.4)
  :realization (:VERB
                ("battle" "box" "combat" "debate" "duel" "fight" "refight"
                 "wrestle")
                (:S AGENT :O AGENT :ABOUT THEME :|\|| THEME :OVER THEME)
                (:S AGENT :O AGENT)))

(define-mixin-category become-109.1
  :specializes subcategorization-pattern
  :mixins (NP-V-ADJ WITH-PATIENT WITH-RESULT)
  :realization (:VERB ("come_out" "get" "turn" "turn_up")
                (:S PATIENT :O RESULT)))

(define-mixin-category become-109.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.ATTRIBUTE BECOME-109.1)
  :realization (:VERB ("come" "fall" "go" "grow")
                (:S PATIENT :IN RESULT :|\|| RESULT :INTO RESULT)))

(define-mixin-category become-109.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP BECOME-109.1-1)
  :realization (:VERB ("become" "end_up" "leave") (:S PATIENT :O RESULT)))

(define-mixin-category beg-58.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_INF NP-V-S_INF WITH-AGENT WITH-PATIENT WITH-RESULT)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("request" "importune") (:S AGENT :O RESULT)))

(define-mixin-category beg-58.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.RESULT BEG-58.2)
  :realization (:VERB ("supplicate") (:S AGENT :FOR RESULT)))

(define-mixin-category beg-58.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RESULT BEG-58.2-1)
  :realization (:VERB ("beg") (:S AGENT :O PATIENT :FOR RESULT)))

(define-mixin-category begin-55.1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF WITH-AGENT WITH-THEME WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("go_on" "pledge" "proceed" "set_out")
                (:S AGENT :O THEME)))

(define-mixin-category begin-55.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING BEGIN-55.1)
  :realization (:VERB ("set_about") (:S AGENT :O THEME)))

(define-mixin-category begin-55.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP.THEME-V NP-V-NP NP-V-PP.INSTRUMENT NP-V-NP-PP.INSTRUMENT
           NP.INSTRUMENT-V-NP BEGIN-55.1-1)
  :realization (:VERB
                ("begin" "start" "start_off" "commence" "recommence" "resume"
                 "undertake")
                (:S INSTRUMENT :O THEME) (:S AGENT :O THEME :WITH INSTRUMENT)
                (:S THEME :WITH INSTRUMENT) (:S AGENT :O THEME) (:S THEME)))

(define-mixin-category being_dressed-41.3.3
  :specializes subcategorization-pattern
  :mixins (PASSIVE WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("attire" "clad" "garb" "outfit" "robe")
                (:S AGENT :IN THEME)))

(define-mixin-category bend-45.2
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP.PATIENT NP-V-NP-PP.INSTRUMENT NP.PATIENT-V
           NP-V-ADV-MIDDLE NP.INSTRUMENT-V-NP NP-V-NP-ADJ NP-V-NP-PP.RESULT
           NP-V-NP-PP.RESULT-PP.INSTRUMENT WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT SOLID) (SPARSER::PATIENT SOLID))
  :realization (:VERB
                ("bend" "crease" "crinkle" "crumple" "distend" "flex" "fold"
                 "furrow" "hyperextend" "roll" "round" "rumple" "scrunch"
                 "splay" "straighten" "stretch" "unfold" "unfurl" "unroll"
                 "unwind" "warp" "wrinkle" "unbend")
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S AGENT :IO PATIENT :OC RESULT) (:S INSTRUMENT :O PATIENT)
                (:S PATIENT (:M ADVERB)) (:S PATIENT)
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)))

(define-mixin-category benefit-72.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-PP WITH-CAUSE WITH-BENEFICIARY)
  :realization (:VERB ("benefit" "profit")
                (:S BENEFICIARY :FROM CAUSE :BY CAUSE) (:S BENEFICIARY)
                (:S CAUSE :O BENEFICIARY)))

(define-mixin-category berry-13.7
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("antique" "berry" "birdnest" "blackberry" "clam" "crab" "fish"
                 "fowl" "grouse" "hog" "hay" "log" "mushroom" "nest" "nut"
                 "oyster" "pearl" "prawn" "rabbit" "scollop" "seal" "shark"
                 "shrimp" "snail" "snipe" "sponge" "whale" "whelk" "whore"
                 "hawk")
                (:S AGENT)))

(define-mixin-category bill-54.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.RECIPIENT NP-V-NP-NP.ASSET WITH-AGENT WITH-EXTENT
           WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::EXTENT CURRENCY)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("amerce" "bet" "bill" "charge" "fine" "invoice" "mulct"
                 "overcharge" "save" "scrimp" "spare" "tax" "tip" "undercharge"
                 "wager")
                (:S AGENT :IO RECIPIENT :OC EXTENT) (:S AGENT :O RECIPIENT)))

(define-mixin-category birth-28.2
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("reproduce" "multiply" "procreate") (:S AGENT)))

(define-mixin-category birth-28.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP BIRTH-28.2)
  :realization (:VERB
                ("bear" "beget" "birth" "bring_forth" "deliver" "father"
                 "generate" "get" "have" "mother" "sire" "spawn")
                (:S AGENT :O PATIENT)))

(define-mixin-category body_internal_motion-49.1
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT PRONOUN) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("buck" "fidget" "flap" "gyrate" "jiggle" "kick" "rock"
                 "squirm" "sway" "teeter" "totter" "twitch" "waggle" "wiggle"
                 "wobble" "wriggle")
                (:S AGENT)))

(define-mixin-category body_internal_states-40.6
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.STIMULUS WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                ("convulse" "cower" "quake" "quiver" "shake" "shiver" "shudder"
                 "tremble" "writhe")
                (:S EXPERIENCER :FROM STIMULUS :AT STIMULUS) (:S EXPERIENCER)))

(define-mixin-category body_motion-49.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADV NP-V-ADV-NP WITH-AGENT WITH-THEME WITH-GOAL WITH-PATH)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB ("hold") (:S AGENT :IO PATH :OC THEME)
                (:S AGENT :IO THEME :OC PATH)))

(define-mixin-category body_motion-49.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP NP-V-PP NP-V-PP-PP BODY_MOTION-49.2)
  :realization (:VERB ("extend") (:S AGENT :IO PATH :OC THEME)
                (:S AGENT :DIR PATH) (:S AGENT :O GOAL)
                (:S AGENT :IO THEME :OC GOAL)))

(define-mixin-category body_motion-49.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V BODY_MOTION-49.2-1)
  :realization (:VERB ("reach" "stretch") (:S AGENT)))

(define-mixin-category braid-41.2.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("bob" "braid" "brush" "clip" "coldcream" "comb" "condition"
                 "crimp" "crop" "curl" "cut" "dye" "file" "gel" "henna"
                 "highlight" "lather" "manicure" "part" "perm" "paint" "plait"
                 "pluck" "powder" "rinse" "rouge" "set" "shampoo" "soap"
                 "style" "talc" "tease" "towel" "trim" "tweeze" "wave" "wax")
                (:S AGENT :O PATIENT)))

(define-mixin-category break-45.1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.INSTRUMENT NP.PATIENT-V
           NP-V-ADV-MIDDLE NP.INSTRUMENT-V-NP NP-V-NP-ADJ
           NP-V-NP-ADJ-PP.INSTRUMENT NP-V-NP-PP.RESULT
           NP-V-NP-PP.RESULT-PP.INSTRUMENT NP-V-PP.RESULT WITH-AGENT
           WITH-PATIENT WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT SOLID) (SPARSER::PATIENT SOLID))
  :realization (:VERB
                ("break" "break_apart" "break_down" "break_up" "chip" "cleave"
                 "crack" "crash" "crush" "dissolve" "fissure" "fracture"
                 "fragment" "rend" "rive" "rip" "shatter" "shred" "sliver"
                 "smash" "snap" "splinter" "split" "tear")
                (:S PATIENT :TO RESULT :INTO RESULT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S AGENT :IO PATIENT :OC RESULT :WITH INSTRUMENT)
                (:S AGENT :IO PATIENT :OC RESULT) (:S INSTRUMENT :O PATIENT)
                (:S PATIENT (:M ADVERB)) (:S PATIENT)
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)))

(define-mixin-category break_down-45.8
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-PATIENT)
  :realization (:VERB
                ("break_down" "croak" "die" "expire" "fall_apart" "go_out"
                 "go_down" "go_off" "give_out" "give_way" "give"
                 "kick_the_bucket" "pass_away" "perish" "poop_out"
                 "fizzle_out")
                (:S PATIENT)))

(define-mixin-category breathe-40.1.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.DESTINATION NP-V-NP.THEME NP-V-NP.THEME-PP.DESTINATION
           WITH-AGENT WITH-THEME WITH-DESTINATION)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("barf" "bleed" "dribble" "drool" "pee" "piss" "puke" "shit"
                 "spit" "sweat" "throw_up" "vomit" "weep")
                (:S AGENT :O THEME :ON DESTINATION :ONTO DESTINATION)
                (:S AGENT :O THEME)
                (:S AGENT :ON DESTINATION :ONTO DESTINATION) (:S AGENT)))

(define-mixin-category breathe-40.1.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP BREATHE-40.1.2)
  :realization (:VERB
                ("breathe" "cough" "cry" "defecate" "expectorate" "retch"
                 "slobber" "urinate" "hawk")
                (:S AGENT :O THEME)))

(define-mixin-category bring-11.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION NP-V-PP.DESTINATION-NP
           NP-V-NP-PP.INITIAL_LOCATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION NP-V-NP-ADVP WITH-AGENT
           WITH-THEME WITH-SOURCE WITH-DESTINATION WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::DESTINATION (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL))
  :realization (:VERB ("take") (:S INSTRUMENT :IO THEME :OC DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :AGAINST DESTINATION :BEFORE DESTINATION :INTO
                 DESTINATION :ON DESTINATION :TO DESTINATION :ONTO DESTINATION
                 :O THEME)
                (:S AGENT :O THEME :AGAINST DESTINATION :BEFORE DESTINATION
                 :INTO DESTINATION :ON DESTINATION :TO DESTINATION :ONTO
                 DESTINATION)
                (:S AGENT :O THEME)))

(define-mixin-category bring-11.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP-TOGETHER WITH-DESTINATION BRING-11.3)
  :binds ((SPARSER::DESTINATION PHYSICAL-AGENT))
  :realization (:VERB ("bring") (:S AGENT :O THEME)
                (:S AGENT :IO DESTINATION :OC THEME)))

(define-mixin-category build-26.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-NP.PRODUCT-PP.MATERIAL NP-V-NP.MATERIAL-PP.PRODUCT
           NP-V-NP.BENEFICIARY-NP-PP NP-V-NP-PP.MATERIAL-PP.BENEFICIARY
           NP-V-NP-PP.BENEFICIARY NP-V-NP-PP.PRODUCT-PP.BENEFICIARY
           NP.MATERIAL-V-NP NP-V-NP-NP-PP.ASSET NP-V-NP-PP.MATERIAL-PP.ASSET
           WITH-AGENT WITH-MATERIAL WITH-PRODUCT WITH-BENEFICIARY WITH-EXTENT)
  :binds ((SPARSER::EXTENT CURRENCY)
          (SPARSER::BENEFICIARY (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::MATERIAL PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("arrange" "assemble" "bake" "bead" "blow" "cast" "chisel"
                 "churn" "compile" "cook" "crochet" "develop" "embroider"
                 "erect" "fashion" "fold" "forge" "formulate" "grind" "grow"
                 "hack" "hammer" "knit" "mold" "pound" "reassemble" "refashion"
                 "roll" "sculpture" "sew" "spin" "stitch" "weave" "whittle")
                (:S AGENT :O PRODUCT :FROM MATERIAL :OUT_OF MATERIAL :FOR
                 EXTENT)
                (:S AGENT :IO BENEFICIARY :OC PRODUCT :FOR EXTENT)
                (:S MATERIAL :O PRODUCT)
                (:S AGENT :O MATERIAL :INTO PRODUCT :FOR BENEFICIARY)
                (:S AGENT :O MATERIAL :FOR BENEFICIARY)
                (:S AGENT :O PRODUCT :FROM MATERIAL :OUT_OF MATERIAL :FOR
                 BENEFICIARY)
                (:S AGENT :IO BENEFICIARY :OC PRODUCT :FROM MATERIAL :OUT_OF
                 MATERIAL)
                (:S AGENT :O PRODUCT :FOR BENEFICIARY)
                (:S AGENT :O MATERIAL :INTO PRODUCT)
                (:S AGENT :O PRODUCT :FROM MATERIAL :OUT_OF MATERIAL)
                (:S AGENT) (:S AGENT :O PRODUCT)))

(define-mixin-category build-26.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-P.ASSET NP.ASSET-V-NP NP.ASSET-V-NP-NP NP.ASSET-V-PP
           NP.ASSET-V-NP-PP BUILD-26.1)
  :realization (:VERB ("build" "carve" "cut" "make" "remake" "sculpt" "shape")
                (:S EXTENT :IO BENEFICIARY :OC PRODUCT :FROM MATERIAL :OUT_OF
                 MATERIAL)
                (:S EXTENT :O PRODUCT :FROM MATERIAL :OUT_OF MATERIAL)
                (:S EXTENT :IO BENEFICIARY :OC PRODUCT) (:S EXTENT :O PRODUCT)
                (:S AGENT :O PRODUCT :FOR EXTENT)))

(define-mixin-category bulge-47.5.3
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME NP-V HAS-LOCATION WITH-THEME)
  :binds ((SPARSER::LOCATION PHYSICAL))
  :realization (:VERB
                ("bristle" "bulge" "buzz" "hum" "hyperventilate" "seethe")
                (:S LOCATION) (:S LOCATION :WITH THEME)))

(define-mixin-category bully-59.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.RESULT WITH-AGENT WITH-PATIENT
           WITH-RESULT)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("annoy" "badger" "bullock" "bully" "frighten" "harass" "harry"
                 "hustle" "nag" "panic" "shame" "shock" "taunt" "tease"
                 "terrify")
                (:S AGENT :O PATIENT :INTO RESULT) (:S AGENT :O PATIENT)))

(define-mixin-category bump-18.4
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION HAS-LOCATION WITH-THEME)
  :binds ((SPARSER::THEME PHYSICAL) (SPARSER::LOCATION PHYSICAL))
  :realization (:VERB ("hit" "run")
                (:S THEME :AGAINST LOCATION :INTO LOCATION :ONTO LOCATION)))

(define-mixin-category bump-18.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-TOGETHER BUMP-18.4)
  :realization (:VERB
                ("bang" "bash" "brush" "bump" "butt" "clang" "clash" "clatter"
                 "collide" "crack" "crash" "crunch" "hammer" "knock" "ram"
                 "rap" "slam" "slap" "smack" "smash" "squash" "strike" "thud"
                 "thump")
                (:S THEME)))

(define-mixin-category butter-9.9
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.DESTINATION NP-V-NP-PP.THEME WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("aromatize" "asphalt" "bait" "black" "blanket" "blindfold"
                 "board" "bread" "brick" "bridle" "bronze" "butter"
                 "buttonhole" "calk" "camouflage" "cap" "carpet" "caulk"
                 "chrome" "clay" "cloak" "coal" "cork" "crown" "crumb" "diaper"
                 "dope" "drug" "feather" "fence" "flour" "forest" "frame"
                 "frost" "fuel" "glaze" "gag" "garland" "gas" "gild" "glass"
                 "glove" "graffiti" "grass" "gravel" "grease" "groove" "halter"
                 "harness" "hat" "heel" "ice" "ink" "label" "leash" "leaven"
                 "lipstick" "lubricate" "mantle" "mulch" "muzzle" "nickel"
                 "oil" "ornament" "panel" "paper" "parquet" "patch" "pepper"
                 "perfume" "plank" "plaster" "poison" "polish" "pomade"
                 "poster" "postmark" "powder" "punctuate" "putty" "robe" "roof"
                 "rosin" "rouge" "rut" "saddle" "salt" "salve" "sand" "scent"
                 "seed" "sequin" "shawl" "shingle" "shoe" "shutter" "side"
                 "silver" "slate" "slime" "slipcover" "sod" "soil" "sole"
                 "spice" "stain" "starch" "stopper" "stress" "string" "stucco"
                 "sugar" "sulphur" "tag" "tar" "tarmac" "tassel" "thatch"
                 "ticket" "tile" "tinsel" "top" "turf" "varnish" "veil"
                 "veneer" "wallpaper" "water" "wax" "wharf" "whitewash"
                 "wreathe" "yoke" "zipcode" "insulate" "sauce")
                (:S AGENT :O DESTINATION :WITH THEME) (:S AGENT :O DESTINATION)))

(define-mixin-category calibratable_cos-45.6.1
  :specializes subcategorization-pattern
  :mixins (NP.ATTRIBUTE-V NP.PATIENT-V-PP.ATTRIBUTE NP-V WITH-PATIENT
           WITH-ATTRIBUTE)
  :realization (:VERB ("build" "die") (:S PATIENT) (:S PATIENT :IN ATTRIBUTE)
                (:S ATTRIBUTE :S PATIENT)))

(define-mixin-category calibratable_cos-45.6.1-1
  :specializes subcategorization-pattern
  :mixins (NP.PATIENT-V-NP.EXTENT-PP.SOURCE-PP.GOAL
           NP.PATIENT-V-PP.EXTENT-PP.SOURCE-PP.GOAL
           NP.ATTRIBUTE-V-NP.EXTENT-PP.SOURCE-PP.GOAL
           NP.ATTRIBUTE-V-PP.EXTENT-PP.SOURCE-PP.GOAL
           NP.PATIENT-V-PP.ATTRIBUTE-NP.EXTENT-PP.SOURCE-PP.GOAL
           NP.PATIENT-V-PP.ATTRIBUTE-PP.EXTENT-PP.SOURCE-PP.GOAL WITH-EXTENT
           WITH-SOURCE WITH-RESULT CALIBRATABLE_COS-45.6.1)
  :realization (:VERB
                ("appreciate" "climb" "decline" "dip" "dive" "depreciate"
                 "drop" "dwindle" "explode" "fall" "fall_away" "fall-off"
                 "fluctuate" "gain" "go_down" "go_up" "grow" "jump" "mushroom"
                 "multiply" "plummet" "plump" "plunge" "retreat" "rocket"
                 "rise" "seesaw" "skyrocket" "slide" "slip" "soar" "surge"
                 "swing" "tumble" "swell")
                (:S PATIENT :IN ATTRIBUTE :BY EXTENT :FROM SOURCE :TO RESULT)
                (:S PATIENT :IN ATTRIBUTE :O EXTENT :FROM SOURCE :TO RESULT)
                (:S ATTRIBUTE :OF PATIENT :BY EXTENT :FROM SOURCE :TO RESULT)
                (:S ATTRIBUTE :OF PATIENT :O EXTENT :FROM SOURCE :TO RESULT)
                (:S PATIENT :BY EXTENT :FROM SOURCE :TO RESULT)
                (:S PATIENT :O EXTENT :FROM SOURCE :TO RESULT)))

(define-mixin-category calve-28.1
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("calve" "cub" "fawn" "foal" "kitten" "lamb" "litter" "pup"
                 "spawn" "whelp")
                (:S AGENT)))

(define-mixin-category captain-29.8
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.BENEFICIARY WITH-AGENT WITH-BENEFICIARY)
  :binds ((SPARSER::BENEFICIARY PHYSICAL) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("butcher" "judge" "lawyer" "midwife" "model" "prostitute"
                 "soldier" "volunteer" "whore")
                (:S AGENT :FOR BENEFICIARY)))

(define-mixin-category captain-29.8-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP CAPTAIN-29.8)
  :realization (:VERB
                ("babysit" "boss" "bully" "butler" "caddy" "captain" "champion"
                 "chaperone" "chauffeur" "clerk" "coach" "cox" "crew" "doctor"
                 "emcee" "escort" "guard" "host" "mother" "nurse" "partner"
                 "pilot" "pioneer" "police" "referee" "shepherd" "skipper"
                 "sponsor" "tailor" "tutor" "umpire" "understudy" "usher"
                 "valet" "witness")
                (:S AGENT :O BENEFICIARY)))

(define-mixin-category captain-29.8-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP CAPTAIN-29.8-1)
  :realization (:VERB ("star") (:S BENEFICIARY :O AGENT)))

(define-mixin-category care-88.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-THAT-S NP-V-WHETHER/IF-S WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("mind") (:S EXPERIENCER :O STIMULUS) (:S EXPERIENCER)))

(define-mixin-category care-88.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.STIMULUS-WHAT-S NP-V-WHAT-S NP-V-PP.STIMULUS-HOW/WHETHER-S
           CARE-88.1)
  :realization (:VERB ("care" "worry" "wonder")
                (:S EXPERIENCER :ABOUT STIMULUS) (:S EXPERIENCER :O STIMULUS)))

(define-mixin-category caring-75.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB NIL))

(define-mixin-category caring-75.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP CARING-75.2)
  :realization (:VERB ("babysit" "look_after" "manage" "mind" "wait_on")
                (:S AGENT :O THEME)))

(define-mixin-category caring-75.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP CARING-75.2-1)
  :realization (:VERB ("attend" "tend") (:S AGENT :TO THEME)))

(define-mixin-category caring-75.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP CARING-75.2)
  :realization (:VERB ("care" "look_out") (:S AGENT :FOR THEME)))

(define-mixin-category carry-11.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION NP-V-NP-PP.INITIAL_LOCATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION
           NP-V-NP-PP.DESTINATION-PP.INITIAL_LOCATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL))
  :realization (:VERB
                ("carry" "drag" "draw" "haul" "heft" "hoist" "lug" "nudge"
                 "pull" "run" "schlep" "tote" "tow" "tug" "yank")
                (:S AGENT :O THEME :TO DESTINATION :TOWARDS DESTINATION :SRC
                 SOURCE)
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION :TOWARDS
                 DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :O THEME :TO DESTINATION :TOWARDS DESTINATION)
                (:S AGENT :O THEME)))

(define-mixin-category carry-11.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INITIAL_LOCATION NP-V-NP-PP.DESTINATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION
           NP-V-NP-PP.DESTINATION-PP.INITIAL_LOCATION CARRY-11.4)
  :realization (:VERB NIL
                (:S AGENT :O THEME :TO DESTINATION :TOWARDS DESTINATION :SRC
                 SOURCE)
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION :TOWARDS
                 DESTINATION)
                (:S AGENT :O THEME :TO DESTINATION :TOWARDS DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE) (:S AGENT :O THEME)))

(define-mixin-category carry-11.4-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-DATIVE-NP WITH-DESTINATION CARRY-11.4-1)
  :binds ((SPARSER::DESTINATION PHYSICAL-AGENT))
  :realization (:VERB ("heave" "kick" "push" "shove" "thrust")
                (:S AGENT :IO DESTINATION :OC THEME)))

(define-mixin-category carve-21.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT PHYSICAL) (SPARSER::PATIENT PHYSICAL))
  :realization (:VERB NIL))

(define-mixin-category carve-21.2-1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.INSTRUMENT NP-V-ADVP-MIDDLE
           NP.INSTRUMENT-V-NP NP.INSTRUMENT-V-ADVP CARVE-21.2)
  :realization (:VERB
                ("bruise" "chip" "cleave" "crumble" "crumple" "crunch" "crush"
                 "cube" "dent" "dice" "fillet" "flake" "flatten" "gash" "gouge"
                 "grate" "grind" "mangle" "mash" "mince" "nick" "notch"
                 "perforate" "pulverize" "quarter" "scollop" "scrunch" "shred"
                 "slice" "slit" "smash" "squash" "squish" "trench")
                (:S INSTRUMENT (:M ADVERB)) (:S INSTRUMENT :O PATIENT)
                (:S PATIENT (:M ADVERB)) (:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category carve-21.2-2
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.INSTRUMENT NP-V-ADVP-MIDDLE
           NP.INSTRUMENT-V-NP NP.INSTRUMENT-V-ADVP CARVE-21.2)
  :realization (:VERB
                ("bore" "carve" "chop" "crop" "crumb" "drill" "file" "lance"
                 "mill" "mangle" "mow" "pink" "punch" "prune" "scollop" "sand"
                 "spear" "tool" "tread")
                (:S INSTRUMENT (:M ADVERB)) (:S INSTRUMENT :O PATIENT)
                (:S PATIENT (:M ADVERB)) (:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category caused_calibratable_cos-45.6.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.PATIENT-PP.EXTENT-PP.SOURCE-PP.GOAL
           NP-V-NP.PATIENT-NP.EXTENT-PP.SOURCE-PP.GOAL WITH-CAUSE WITH-PATIENT
           WITH-EXTENT WITH-SOURCE WITH-GOAL WITH-ATTRIBUTE)
  :realization (:VERB ("cut" "raise" "reduce") (:S CAUSE)))

(define-mixin-category caused_calibratable_cos-45.6.2-1
  :specializes subcategorization-pattern
  :mixins (NP.PATIENT-V-NP.EXTENT-PP.SOURCE-PP.GOAL
           NP.PATIENT-V-PP.EXTENT-PP.SOURCE-PP.GOAL
           NP.ATTRIBUTE-V-NP.EXTENT-PP.SOURCE-PP.GOAL
           NP.ATTRIBUTE-V-PP.EXTENT-PP.SOURCE-PP.GOAL
           NP.PATIENT-V-PP.ATTRIBUTE-NP.EXTENT-PP.SOURCE-PP.GOAL
           NP.PATIENT-V-PP.ATTRIBUTE-PP.EXTENT-PP.SOURCE-PP.GOAL WITH-ATTRIBUTE
           CAUSED_CALIBRATABLE_COS-45.6.2)
  :realization (:VERB
                ("advance" "balloon" "build-up" "decrease" "diminish"
                 "increase" "move" "shift" "vary" "lower")
                (:S PATIENT :IN ATTRIBUTE :BY EXTENT :FROM SOURCE :TO GOAL)
                (:S PATIENT :IN ATTRIBUTE :O EXTENT :FROM SOURCE :TO GOAL)
                (:S ATTRIBUTE :OF PATIENT :BY EXTENT :FROM SOURCE :TO GOAL)
                (:S ATTRIBUTE :OF PATIENT :O EXTENT :FROM SOURCE :TO GOAL)
                (:S PATIENT :BY EXTENT :FROM SOURCE :TO GOAL)
                (:S PATIENT :O EXTENT :FROM SOURCE :TO GOAL)))

(define-mixin-category change_bodily_state-40.8.4
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.STIMULUS WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                ("blanch" "blench" "faint" "pale" "sicken" "black_out" "swoon"
                 "doze" "doze_off" "drowse" "drowse_off" "drift_off" "konk_out"
                 "nod_off" "pass_out" "zonk_out")
                (:S EXPERIENCER :FROM STIMULUS :AT STIMULUS) (:S EXPERIENCER)))

(define-mixin-category characterize-29.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING NP-V-NP-TO-BE-ADJ NP-V-NP-PP.ATTRIBUTE WITH-AGENT
           WITH-THEME WITH-ATTRIBUTE)
  :binds ((SPARSER::THEME (:OR PHYSICAL COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("count" "depict" "detail" "envision" "fancy" "interpret"
                 "moot" "peg" "picture" "pigeonhole" "paint" "recast" "redraw"
                 "specify" "stereotype" "typecast" "bill" "cast" "diagnose"
                 "certify" "praise" "hail" "regard" "treat" "rank" "take"
                 "perceive" "adopt" "class" "classify" "select" "subselect"
                 "pidgeonhole" "stamp")
                (:S AGENT :O THEME :AS ATTRIBUTE)
                (:S AGENT :IO THEME :OC ATTRIBUTE)))

(define-mixin-category characterize-29.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF CHARACTERIZE-29.2)
  :realization (:VERB ("characterize" "conceive" "view" "underestimate")
                (:S AGENT :O THEME)))

(define-mixin-category characterize-29.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-WHAT-S NP-V-WHAT-S_INF CHARACTERIZE-29.2-1)
  :realization (:VERB
                ("portray" "define" "describe" "represent" "accept" "envisage"
                 "identify" "imagine" "visualize" "remember" "recollect")
                (:S AGENT :O THEME)))

(define-mixin-category characterize-29.2-1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJ NP-V-WHETHER/IF-S NP-V-WHAT-S NP-V-WHAT-S_INF
           CHARACTERIZE-29.2-1)
  :realization (:VERB ("report" "reveal") (:S AGENT :O THEME)))

(define-mixin-category chase-51.6
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.LOCATION NP-V-PP.THEME WITH-AGENT WITH-THEME
           WITH-PATH)
  :binds ((SPARSER::THEME PHYSICAL) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("chase" "follow" "pursue" "shadow" "tail" "track" "trail")
                (:S AGENT :AFTER THEME) (:S AGENT :O THEME :SPATIAL PATH)
                (:S AGENT :O THEME)))

(define-mixin-category cheat-10.6.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME WITH-AGENT WITH-THEME WITH-SOURCE WITH-GOAL)
  :binds ((SPARSER::SOURCE (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("cheat" "gull") (:S AGENT :O SOURCE :OUT_OF THEME)
                (:S AGENT :O SOURCE)))

(define-mixin-category cheat-10.6.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME CHEAT-10.6.1)
  :realization (:VERB ("con" "cozen" "fleece" "defraud" "swindle")
                (:S AGENT :O SOURCE :FOR THEME)))

(define-mixin-category cheat-10.6.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE CHEAT-10.6.1-1)
  :realization (:VERB ("rob" "bleed" "strip" "milk" "cull")
                (:S AGENT :O THEME :FROM SOURCE)))

(define-mixin-category chew-39.2
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB NIL))

(define-mixin-category chew-39.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-PP-CONATIVE NP-V-PP.PATIENT WITH-PATIENT CHEW-39.2)
  :binds ((SPARSER::PATIENT (:AND/OR NIL SOLID)))
  :realization (:VERB
                ("chew" "chomp" "crunch" "gnaw" "gum" "masticate" "munch"
                 "nibble" "pick" "peck" "lick" "teethe")
                (:S AGENT :ON PATIENT) (:S AGENT :AT PATIENT) (:S AGENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category chew-39.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-PP.PATIENT WITH-PATIENT CHEW-39.2)
  :binds ((SPARSER::PATIENT (:AND/OR NIL SOLID)))
  :realization (:VERB ("lap" "sip" "slurp" "suck") (:S AGENT :FROM PATIENT)
                (:S AGENT) (:S AGENT :O PATIENT)))

(define-mixin-category chit_chat-37.6
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V-PP.CO-AGENT-PP.TOPIC NP-V
           NP-V-PP.TOPIC-PP.CO-AGENT NP-V-PP.TOPIC WITH-AGENT WITH-AGENT
           WITH-TOPIC)
  :binds ((SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("chat" "chatter" "chitchat" "confer" "converse" "flirt" "gab"
                 "gossip" "jest" "joke" "palaver" "rap" "schmooze" "yak")
                (:S AGENT :ABOUT TOPIC) (:S AGENT :ABOUT TOPIC :WITH AGENT)
                (:S AGENT) (:S AGENT :WITH AGENT :ABOUT TOPIC)
                (:S AGENT :WITH AGENT)))

(define-mixin-category chit_chat-37.6-1
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF NP-V-NP NP-V-NP-PP.CO-AGENT CHIT_CHAT-37.6)
  :realization (:VERB ("argue" "debate" "discuss")
                (:S AGENT :O TOPIC :WITH AGENT) (:S AGENT :O TOPIC)))

(define-mixin-category classify-29.10
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.GOAL NP-V-NP-PP.LOCATION WITH-AGENT WITH-THEME
           WITH-GOAL)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("classify" "class" "constellate" "sort" "isolate" "reclassify"
                 "group" "regroup" "bracket" "lump" "chunk" "grade" "number"
                 "catalogue" "sort_out" "separate" "seed" "categorize" "code"
                 "recode")
                (:S AGENT :O THEME :IN GOAL) (:S AGENT :O THEME :AS GOAL)
                (:S AGENT :O THEME)))

(define-mixin-category clear-10.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.LOCATION NP-V-NP-PP.LOCATION NP-V-NP.LOCATION-PP.THEME
           WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION LOCATION) (SPARSER::SOURCE LOCATION)
          (SPARSER::THEME PHYSICAL))
  :realization (:VERB ("clean" "hollow") (:S AGENT :O SOURCE :OF THEME)
                (:S AGENT :O THEME :SRC SOURCE) (:S AGENT :O SOURCE)))

(define-mixin-category clear-10.3-1
  :specializes subcategorization-pattern
  :mixins (NP.LOCATION-V NP-V-PP.LOCATION CLEAR-10.3)
  :realization (:VERB ("clear" "drain" "empty") (:S THEME :SRC SOURCE)
                (:S SOURCE)))

(define-mixin-category cling-22.5
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-THEME NP-V-TOGETHER WITH-THEME WITH-THEME)
  :binds ((SPARSER::THEME PHYSICAL) (SPARSER::THEME PHYSICAL))
  :realization (:VERB ("adhere" "cleave" "cling") (:S THEME)
                (:S THEME :TO THEME :WITH THEME)))

(define-mixin-category cognize-85
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-PP.STIMULUS NP-V-PP.STIMULUS-HOW/WHETHER-S NP-V-THAT-S
           WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB ("cognise" "cognize") (:S EXPERIENCER :O STIMULUS)
                (:S EXPERIENCER :ABOUT STIMULUS) (:S EXPERIENCER :OF STIMULUS)))

(define-mixin-category coil-9.6
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP-PP.LOCATION NP-V-PP.LOCATION
           NP-V-ADV-MIDDLE-PP.LOCATION WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION LOCATION) (SPARSER::SOURCE LOCATION)
          (SPARSER::THEME (:AND/OR NIL NIL)))
  :realization (:VERB
                ("loop" "roll" "rotate" "spin" "swirl" "twine" "whirl" "wind")
                (:S THEME (:M ADVERB) :PATH DESTINATION)
                (:S THEME :PATH DESTINATION)
                (:S AGENT :O THEME :PATH DESTINATION)))

(define-mixin-category coil-9.6-1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-ADV-MIDDLE COIL-9.6)
  :realization (:VERB ("curl" "coil" "hook" "swing" "twirl" "twist")
                (:S THEME (:M ADVERB))))

(define-mixin-category coloring-24
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-ADJP NP-V-NP-PP.RESULT WITH-AGENT WITH-PATIENT
           WITH-RESULT)
  :binds ((SPARSER::PATIENT PHYSICAL))
  :realization (:VERB
                ("color" "distemper" "dye" "enamel" "glaze" "japan" "lacquer"
                 "paint" "repaint" "shellac" "spraypaint" "stain" "starch"
                 "tint" "varnish")
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S AGENT :IO PATIENT :OC RESULT) (:S AGENT :O PATIENT)))

(define-mixin-category compel-59.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.RESULT NP-V-NP-S_INF WITH-AGENT
           WITH-PATIENT PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("arm-twist" "bait" "bribe" "compel" "convince" "commandeer"
                 "dragoon" "drive" "goad" "hound" "impel" "induce" "influence"
                 "lead" "motivate" "obligate" "oblige" "palaver" "persuade"
                 "railroad" "rush" "sandbag" "steamroller" "suborn" "sway"
                 "wheedle")
                (:S AGENT :IO PATIENT :OC PREDICATE)
                (:S AGENT :O PATIENT :INTO PREDICATE) (:S AGENT :O PATIENT)))

(define-mixin-category complain-37.8
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.RECIPIENT NP-V-THAT-S NP-V-PP.RECIPIENT-THAT-S
           NP-V-PP.TOPIC NP-V-PP.TOPIC-PP.RECIPIENT NP-V-S-QUOTE
           NP-V-PP.RECIPIENT-S-QUOTE NP-V-PP.RECIPIENT-PP.TOPIC WITH-AGENT
           WITH-TOPIC WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("bellyache" "bitch" "boast" "brag" "caterwaul" "complain"
                 "crab" "gripe" "grouch" "grouse" "grumble" "kvetch" "moan"
                 "object" "whine")
                (:S AGENT :TO RECIPIENT :ABOUT TOPIC)
                (:S AGENT :TO RECIPIENT :O TOPIC) (:S AGENT :O TOPIC)
                (:S AGENT :ABOUT TOPIC :TO RECIPIENT) (:S AGENT :ABOUT TOPIC)
                (:S AGENT :TO RECIPIENT) (:S AGENT)))

(define-mixin-category complete-55.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("accomplish" "achieve" "bring-off" "pull-off")
                (:S AGENT :O THEME)))

(define-mixin-category complete-55.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING COMPLETE-55.2)
  :realization (:VERB ("complete" "discontinue" "quit") (:S AGENT :O THEME)))

(define-mixin-category comprehend-87.2
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-NP NP-V-NP-PP.ATTRIBUTE NP-V-S_ING NP-V-WHY-S
           NP-V-WHAT-S NP-V-THAT-S WITH-EXPERIENCER WITH-ATTRIBUTE
           WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("appreciate" "misconstrue" "misinterpret" "misunderstand"
                 "misapprehend")
                (:S EXPERIENCER :O STIMULUS)
                (:S EXPERIENCER :O STIMULUS :AS ATTRIBUTE)))

(define-mixin-category comprehend-87.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-HOW-S_INF NP-V-NP-TO-BE-NP COMPREHEND-87.2)
  :realization (:VERB
                ("grasp" "comprehend" "apprehend" "follow" "fathom" "get"
                 "read" "realize" "recognise" "recognize")
                (:S EXPERIENCER :O STIMULUS)))

(define-mixin-category comprehend-87.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V COMPREHEND-87.2-1)
  :realization (:VERB ("see") (:S EXPERIENCER)))

(define-mixin-category comprehend-87.2-1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.STIMULUS NP-V-PP.STIMULUS-S_ING NP-V-PP.STIMULUS-WHAT-S
           NP-V-NP-PP.ATTRIBUTE COMPREHEND-87.2-1-1)
  :realization (:VERB ("know" "understand") (:S EXPERIENCER)
                (:S EXPERIENCER :ABOUT STIMULUS :|\|| STIMULUS :OF STIMULUS)))

(define-mixin-category comprise-107.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-THEME WITH-ATTRIBUTE)
  :realization (:VERB
                ("comprise" "compose" "make" "make_up" "constitute" "form")
                (:S ATTRIBUTE :O THEME)))

(define-mixin-category comprise-107.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP COMPRISE-107.2)
  :realization (:VERB ("comprise" "consist_of" "encompass" "contain")
                (:S THEME :O ATTRIBUTE)))

(define-mixin-category concealment-16
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.BENEFICIARY NP-V-NP-PP.LOCATION NP-V-NP WITH-AGENT
           WITH-BENEFICIARY WITH-PATIENT HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::BENEFICIARY PHYSICAL-AGENT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("block" "cloister" "conceal" "curtain" "impound" "isolate"
                 "quarantine" "repress" "screen" "seclude" "sequester"
                 "shelter" "suppress")
                (:S AGENT :O PATIENT) (:S AGENT :O PATIENT :LOC LOCATION)
                (:S AGENT :O PATIENT :FROM BENEFICIARY)))

(define-mixin-category concealment-16-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.BENEFICIARY NP-V-PP.LOCATION CONCEALMENT-16)
  :realization (:VERB ("hide") (:S AGENT :LOC LOCATION)
                (:S AGENT :FROM BENEFICIARY) (:S AGENT)))

(define-mixin-category conduct-111.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP WITH-AGENT WITH-THEME WITH-BENEFICIARY)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB
                ("conduct" "give" "head" "hold" "host" "run" "spearhead"
                 "throw")
                (:S AGENT :IO THEME :OC BENEFICIARY) (:S AGENT :O THEME)))

(define-mixin-category confess-37.10
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-NP-TO-BE-NP NP-V-NP-ADJ NP-V-NP NP-V-NP-PP.RECIPIENT
           NP-V-S_ING NP-V-PP.RECIPIENT NP-V-PP.RECIPIENT-HOW-S NP-V-THAT-S
           WITH-AGENT WITH-RECIPIENT WITH-TOPIC)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("confess" "admit" "acknowledge" "fess_up" "proclaim" "reveal")
                (:S AGENT :O TOPIC) (:S AGENT :TO RECIPIENT :O TOPIC)
                (:S AGENT :TO RECIPIENT) (:S AGENT :O TOPIC :TO RECIPIENT)))

(define-mixin-category confine-92
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION LOCATION)
          (SPARSER::AGENT (:AND/OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("charge" "institutionalize" "incarcerate" "hospitalize"
                 "detain" "jail" "imprison" "jug" "immure")
                (:S AGENT :O THEME)))

(define-mixin-category confine-92-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION CONFINE-92)
  :realization (:VERB ("commit" "recommit" "send" "confine")
                (:S AGENT :O THEME :TO DESTINATION)))

(define-mixin-category confront-98
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT WITH-AGENT WITH-THEME WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("face" "confront" "head_on" "undertake" "tackle" "take_on"
                 "go_about" "approach" "brave" "handle" "intercept" "target"
                 "rival" "counter" "pre-empt" "combat" "breast" "move_in_on")
                (:S AGENT :O THEME :WITH INSTRUMENT) (:S AGENT :O THEME)))

(define-mixin-category conjecture-29.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-TO-BE-NP NP-V-THAT-S WITH-AGENT WITH-THEME PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("admit" "affirm" "assert" "conjecture" "deny" "determine"
                 "doubt" "hold" "prognosticate" "repute" "spectulate" "surmise"
                 "swear")
                (:S AGENT :O THEME) (:S AGENT :IO THEME :OC PREDICATE)))

(define-mixin-category conjecture-29.5-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP CONJECTURE-29.5)
  :realization (:VERB
                ("anticipate" "believe" "expect" "foreknow" "foresee"
                 "foretell" "guess" "infer" "presume" "prophesy" "trust"
                 "vaticinate")
                (:S AGENT :O THEME)))

(define-mixin-category conjecture-29.5-2
  :specializes subcategorization-pattern
  :mixins (NP-V-S CONJECTURE-29.5)
  :realization (:VERB ("feel")
                (:S AGENT :LIKE THEME :|\|| THEME :AS THEME :IF THEME :|\||
                 THEME :AS THEME :THOUGH THEME)))

(define-mixin-category consider-29.9
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF WITH-AGENT WITH-THEME WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB NIL (:S AGENT :O THEME)))

(define-mixin-category consider-29.9-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.ATTRIBUTE NP-V-NP-TO-BE-NP NP-V-THAT-S CONSIDER-29.9)
  :realization (:VERB ("acknowledge" "deem" "esteem" "rate" "reckon")
                (:S AGENT :O THEME) (:S AGENT :IO THEME :OC ATTRIBUTE)))

(define-mixin-category consider-29.9-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJ NP-V-WHETHER/IF-S NP-V-WHAT-S NP-V-WHAT-S_INF
           CONSIDER-29.9-1)
  :realization (:VERB ("report") (:S AGENT :O THEME)
                (:S AGENT :IO THEME :OC ATTRIBUTE)))

(define-mixin-category consider-29.9-1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-NP-ADJ NP-V-NP-NP NP-V-NP-PP.ATTRIBUTE
           NP-V-WHETHER-S_INF CONSIDER-29.9-1-1)
  :realization (:VERB ("consider") (:S AGENT :O THEME)
                (:S AGENT :O THEME :FOR ATTRIBUTE)
                (:S AGENT :IO THEME :OC ATTRIBUTE)))

(define-mixin-category consider-29.9-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP-TO-BE-NP NP-V-NP-ADJ NP-V-THAT-S CONSIDER-29.9)
  :realization (:VERB ("suspect" "think" "suppose" "posit") (:S AGENT :O THEME)
                (:S AGENT :IO THEME :OC ATTRIBUTE)))

(define-mixin-category conspire-71
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.CO-AGENT NP-V-PP.BENEFICIARY NP-V-S_INF WITH-AGENT
           WITH-AGENT WITH-THEME WITH-BENEFICIARY)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("ally" "collaborate" "collude" "conspire" "discriminate"
                 "legislate" "partner" "protest" "rebel" "retaliate" "scheme"
                 "sin" "team_up" "befriend")
                (:S AGENT :O THEME) (:S AGENT :AGAINST BENEFICIARY)
                (:S AGENT :WITH AGENT) (:S AGENT)))

(define-mixin-category consume-66
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING WITH-AGENT WITH-EXTENT WITH-GOAL)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("use" "consume") (:S AGENT :IO EXTENT :OC GOAL)
                (:S AGENT :O EXTENT)))

(define-mixin-category consume-66-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING NP-V-NP-PP.GOAL CONSUME-66)
  :realization (:VERB ("reuse" "misspend" "spend" "squander" "waste")
                (:S AGENT :O EXTENT :ON GOAL)))

(define-mixin-category contain-15.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-INSTRUMENT WITH-THEME)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization (:VERB ("contain" "hold") (:S INSTRUMENT :O THEME)))

(define-mixin-category contiguous_location-47.8
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-THEME WITH-THEME)
  :binds ((SPARSER::THEME PHYSICAL) (SPARSER::THEME PHYSICAL))
  :realization (:VERB
                ("bestride" "blanket" "border" "bound" "bracket" "bridge" "cap"
                 "circle" "cloak" "cover" "edge" "encircle" "enclose"
                 "encompass" "engulf" "envelop" "fence" "fill" "flank" "follow"
                 "forgo" "frame" "head" "hug" "line" "neighbor" "overcast"
                 "overhang" "precede" "predate" "rim" "ring" "skirt" "span"
                 "straddle" "support" "surmount" "surround" "top" "traverse"
                 "underlie" "wreathe" "enshroud" "veil")
                (:S THEME :O THEME)))

(define-mixin-category contiguous_location-47.8-1
  :specializes subcategorization-pattern
  :mixins (NP-V CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB
                ("abut" "adjoin" "cross" "hit" "intersect" "meet" "touch")
                (:S THEME :S THEME)))

(define-mixin-category contiguous_location-47.8-2
  :specializes subcategorization-pattern
  :mixins (NP-V CONTIGUOUS_LOCATION-47.8)
  :realization (:VERB ("dominate") (:S THEME)))

(define-mixin-category continue-55.3
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF NP.THEME-V NP-V NP-V-PP.TIME WITH-AGENT WITH-THEME
           TEMPORALLY-LOCALIZED)
  :binds ((SPARSER::CERTAINTY TIME)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("continue") (:S AGENT :UNTIL CERTAINTY)
                (:S THEME :UNTIL CERTAINTY) (:S AGENT) (:S THEME)
                (:S AGENT :O THEME)))

(define-mixin-category contribute-13.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RECIPIENT NP-V-NP.THEME- NP-V-PP.RECIPIENT-NP WITH-AGENT
           WITH-THEME WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("betroth" "forgo" "refer" "relinquish" "remit" "resign"
                 "restore" "gift" "give-away" "give-out" "give-up" "hand_out"
                 "pass_out" "shell_out" "abnegate" "turn-in" "turn-over")
                (:S AGENT :TO RECIPIENT :O THEME) (:S AGENT :O THEME)
                (:S AGENT :O THEME :TO RECIPIENT)))

(define-mixin-category contribute-13.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.RECIPIENT NP-V-NP-PP.RECIPIENT CONTRIBUTE-13.2)
  :realization (:VERB ("disseminate" "distribute")
                (:S AGENT :O THEME :AMONG RECIPIENT) (:S AGENT :TO RECIPIENT)))

(define-mixin-category contribute-13.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V CONTRIBUTE-13.2-1)
  :realization (:VERB
                ("administer" "circularize" "contribute" "donate" "forfeit"
                 "resubmit" "sacrifice" "submit" "surrender")
                (:S AGENT)))

(define-mixin-category contribute-13.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME CONTRIBUTE-13.2)
  :realization (:VERB ("disburse" "extend" "proffer" "transfer")
                (:S AGENT :IO RECIPIENT :OC THEME)))

(define-mixin-category contribute-13.2-2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP CONTRIBUTE-13.2-2)
  :realization (:VERB ("reimburse") (:S AGENT :O RECIPIENT)))

(define-mixin-category convert-26.6.2
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-PP.GOAL WITH-PATIENT WITH-RESULT WITH-SOURCE)
  :realization (:VERB
                ("advert" "come_around" "fall" "get" "get_around" "get_down"
                 "go_back" "resort" "return" "revert" "settle_down" "take"
                 "turn")
                (:S PATIENT :TO RESULT)))

(define-mixin-category convert-26.6.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.SOURCE-PP.GOAL CONVERT-26.6.2)
  :realization (:VERB ("return" "revert" "shift" "turn")
                (:S PATIENT :FROM SOURCE :TO RESULT)))

(define-mixin-category convert-26.6.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.GOAL WITH-AGENT
           CONVERT-26.6.2-1)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB
                ("change_over" "convert" "move_over" "switch" "switch_over")
                (:S AGENT :O PATIENT :TO RESULT) (:S AGENT :O PATIENT)
                (:S PATIENT)))

(define-mixin-category cooking-45.3
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP.PATIENT NP-V-NP-PP.INSTRUMENT NP.PATIENT-V
           NP-V-ADV-MIDDLE NP.INSTRUMENT-V-NP NP-V-NP-PP.RESULT
           NP-V-NP-PP.RESULT-PP.INSTRUMENT NP-V-PP.RESULT
           NP-V-PP.RESULT-PP.INSTRUMENT WITH-AGENT WITH-PATIENT WITH-INSTRUMENT
           WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT SOLID) (SPARSER::PATIENT PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("bake" "barbecue" "barbeque" "blanch" "boil" "braise" "broil"
                 "brown" "char" "charbroil" "charcoal-broil" "coddle" "cook"
                 "crisp" "deep-fry" "french-fry" "fry" "grill" "hardboil"
                 "heat" "microwave" "oven-fry" "oven-poach" "overbake"
                 "overcook" "overheat" "pan-broil" "pan-fry" "parboil" "parch"
                 "percolate" "perk" "pickle" "plank" "poach" "pot-roast"
                 "reheat" "rissole" "roast" "saute" "scald" "scallop" "sear"
                 "shirr" "simmer" "softboil" "steam" "steam-bake" "steep"
                 "stew" "stir-fry" "toast" "warm_up")
                (:S PATIENT :TO RESULT :INTO RESULT :IN INSTRUMENT :ON
                 INSTRUMENT :WITH INSTRUMENT)
                (:S PATIENT :TO RESULT :INTO RESULT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT :IN INSTRUMENT :ON
                 INSTRUMENT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S INSTRUMENT :O PATIENT) (:S PATIENT (:M ADVERB))
                (:S PATIENT)
                (:S AGENT :O PATIENT :IN INSTRUMENT :ON INSTRUMENT :WITH
                 INSTRUMENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category cooperate-73.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB NIL))

(define-mixin-category cooperate-73.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME NP-V-PP.CO-AGENT-PP.THEME NP-V-PP.THEME-S_ING
           COOPERATE-73.1)
  :realization (:VERB ("collaborate" "cooperate" "join") (:S AGENT :IN THEME)
                (:S AGENT :WITH AGENT :IN THEME)
                (:S AGENT :WITH AGENT :ON THEME) (:S AGENT :ON THEME)))

(define-mixin-category cooperate-73.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME NP-V-PP.THEME-S_ING COOPERATE-73.1)
  :realization (:VERB ("participate") (:S AGENT :IN THEME)))

(define-mixin-category cooperate-73.1-3
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME NP-V-PP.CO-AGENT-PP.THEME NP-V-PP.THEME-S_ING
           NP-V-PP.CO-AGENT-PP.THEME-S_ING COOPERATE-73.1)
  :realization (:VERB ("labour" "work") (:S AGENT :WITH AGENT :AT THEME)
                (:S AGENT :AT THEME) (:S AGENT :WITH AGENT :ON THEME)
                (:S AGENT :ON THEME)))

(define-mixin-category cope-83
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("deal") (:S AGENT :WITH THEME)))

(define-mixin-category cope-83-1
  :specializes subcategorization-pattern
  :mixins (NP-V COPE-83)
  :realization (:VERB ("cope") (:S AGENT)))

(define-mixin-category cope-83-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP COPE-83-1)
  :realization (:VERB ("manage" "grapple" "get_by" "get_through")
                (:S AGENT :O THEME)))

(define-mixin-category correlate-86.1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-NP-S_ING WITH-AGENT WITH-THEME WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("coincide" "correlate" "alternate" "flip-flop" "co-occur")
                (:S AGENT :O THEME :WITH THEME) (:S THEME :WITH THEME)))

(define-mixin-category correspond-36.1.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.THEME-S NP-V-PP.THEME-WHETHER/IF-S NP-V-PP.THEME-WHAT-S
           NP-V-PP.THEME-WHETHER-S_INF NP-V-PP.THEME-WHAT-S_INF NP-V-PP.THEME
           NP-V-PP.CO-AGENT-PP.THEME-WHETHER-S NP-V-PP.CO-AGENT-PP.THEME-WHAT-S
           NP-V-PP.CO-AGENT-PP.THEME-WHAT-S_INF
           NP-V-PP.CO-AGENT-PP.THEME-WHETHER-S_INF NP-V-PP.CO-AGENT-PP.THEME
           NP-V-WHAT-S WITH-AGENT WITH-AGENT WITH-TOPIC)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("banter" "bargain" "collaborate" "collide" "commiserate"
                 "communicate" "compromise" "concur" "confer" "cooperate"
                 "correspond" "deliberate" "differ" "disagree" "interact"
                 "negotiate" "plot")
                (:S AGENT :O TOPIC) (:S AGENT :WITH AGENT :ABOUT TOPIC)
                (:S AGENT :ABOUT TOPIC) (:S AGENT)))

(define-mixin-category correspond-36.1.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT-HOW-S NP-V-PP.CO-AGENT-HOW-S_INF NP-V-WHAT-S_INF
           CORRESPOND-36.1.1)
  :realization (:VERB ("agree") (:S AGENT :O TOPIC)
                (:S AGENT :WITH AGENT :O TOPIC)))

(define-mixin-category correspond-36.1.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-WHETHER/IF-S NP-V-WHETHER-S_INF CORRESPOND-36.1.1-1)
  :realization (:VERB ("debate" "argue") (:S AGENT :O TOPIC)))

(define-mixin-category cost-54.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.VALUE NP-V-NP-NP WITH-THEME WITH-PATH WITH-BENEFICIARY)
  :binds ((SPARSER::BENEFICIARY (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::THEME PHYSICAL))
  :realization (:VERB ("carry" "cost" "last" "net" "take")
                (:S THEME :IO BENEFICIARY :OC PATH) (:S THEME :O PATH)))

(define-mixin-category crane-40.3.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.RECIPIENT NP-V-NP-PP.RECIPIENT-PP.THEME
           WITH-AGENT WITH-PATIENT WITH-TOPIC WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("arch" "bare" "bat" "beat" "blow" "clench" "click" "close"
                 "cock" "crane" "crook" "cross" "drum" "flap" "flash" "flex"
                 "flick" "flutter" "fold" "gnash" "grind" "hang" "hunch" "kick"
                 "knit" "open" "pucker" "purse" "raise" "roll" "rub" "shake"
                 "show" "shuffle" "smack" "snap" "stamp" "stretch" "toss"
                 "turn" "twiddle" "twitch" "wag" "waggle" "wiggle" "wring"
                 "wrinkle")
                (:S AGENT :O PATIENT :DEST_DIR RECIPIENT :IN TOPIC)
                (:S AGENT :O PATIENT :DEST_DIR RECIPIENT) (:S AGENT :O PATIENT)))

(define-mixin-category create-26.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.MATERIAL NP-V-NP-PP.BENEFICIARY
           NP-V-NP-PP.ATTRIBUTE WITH-AGENT WITH-RESULT WITH-MATERIAL
           WITH-BENEFICIARY WITH-ATTRIBUTE)
  :binds ((SPARSER::BENEFICIARY PHYSICAL-AGENT) (SPARSER::MATERIAL PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("author" "coin" "compute" "concoct" "construct" "contrive"
                 "cowrite" "create" "derive" "fabricate" "form" "formulate"
                 "lay" "manufacture" "mass-produce" "model" "organize"
                 "produce" "publish" "rearrange" "rebuild" "reconstitute"
                 "reorganize" "style" "synthesize" "turn-out")
                (:S AGENT :IO RESULT :OC ATTRIBUTE)
                (:S AGENT :O RESULT :FOR BENEFICIARY)
                (:S AGENT :O RESULT :FROM MATERIAL :OUT_OF MATERIAL)
                (:S AGENT :O RESULT)))

(define-mixin-category create-26.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V CREATE-26.4)
  :realization (:VERB
                ("choreograph" "compose" "draft" "improvise" "invent"
                 "scriptwrite" "silkscreen" "write")
                (:S AGENT)))

(define-mixin-category create-26.4-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.BENEFICIARY-NP CREATE-26.4-1)
  :realization (:VERB ("conjure" "craft" "design" "dig" "draw" "paint" "spin")
                (:S AGENT :IO BENEFICIARY :OC RESULT)))

(define-mixin-category curtsey-40.3.3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.RECIPIENT NP-V-NP NP-V-NP-PP.RECIPIENT WITH-AGENT
           WITH-RECIPIENT WITH-TOPIC)
  :binds ((SPARSER::RECIPIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("bob" "bow" "curtsey" "genuflect" "kneel" "salaam" "salute")
                (:S AGENT :O TOPIC :TO RECIPIENT) (:S AGENT :O TOPIC)
                (:S AGENT :DEST_DIR RECIPIENT) (:S AGENT)))

(define-mixin-category cut-21.1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.INSTRUMENT NP-V-PP NP-V-PP-PP
           NP-V-ADVP-MIDDLE NP.INSTRUMENT-V-NP NP.INSTRUMENT-V-ADVP
           NP-V-NP-ADJP-PP.INSTRUMENT NP-V-NP-PP.RESULT-PP.INSTRUMENT
           NP-V-NP-ADJP NP-V-NP-PP.RESULT NP-V-NP-PP.SOURCE
           NP-V-NP-PP.SOURCE-PP.INSTRUMENT WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT WITH-SOURCE WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT PHYSICAL) (SPARSER::PATIENT PHYSICAL))
  :realization (:VERB NIL (:S AGENT :O PATIENT :FROM SOURCE :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :FROM SOURCE)
                (:S INSTRUMENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S INSTRUMENT :IO PATIENT :OC RESULT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S AGENT :IO PATIENT :OC RESULT :WITH INSTRUMENT)
                (:S AGENT :IO PATIENT :OC RESULT) (:S INSTRUMENT (:M ADVERB))
                (:S INSTRUMENT :O PATIENT) (:S PATIENT (:M ADVERB))
                (:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S AGENT :|THROUGH\|INTO| PATIENT) (:S AGENT :O PATIENT)))

(define-mixin-category cut-21.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-PATIENT CUT-21.1)
  :binds ((SPARSER::PATIENT (:OR NIL PRONOUN)))
  :realization (:VERB
                ("chip" "chop" "clip" "cut" "hack" "hew" "rip" "saw" "scarify"
                 "scrape" "scratch" "slash" "slice" "snip" "ream")
                (:S AGENT :O PATIENT)))

(define-mixin-category debone-10.8
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL) (SPARSER::SOURCE PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("deaccent" "debark" "debone" "debowel" "debug" "debur"
                 "declaw" "decontaminate" "defang" "defat" "defeather" "deflea"
                 "deflesh" "deflower" "defoam" "defog" "deforest" "defrost"
                 "defuzz" "degas" "degerm" "deglaze" "degrease" "degrit"
                 "degum" "degut" "dehair" "dehead" "dehorn" "dehull" "dehusk"
                 "deice" "deink" "delint" "delouse" "deluster" "demast" "derat"
                 "derib" "derind" "desalt" "descale" "desex" "desprout"
                 "destarch" "destress" "detassel" "detusk" "devein" "dewater"
                 "dewax" "deworm" "disembowel" "eviscerate")
                (:S AGENT :O SOURCE)))

(define-mixin-category declare-29.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP-TO-BE-NP NP-V-NP-ADJ NP-V-THAT-S WITH-AGENT
           WITH-THEME WITH-RESULT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("avow" "confess") (:S AGENT :O THEME)
                (:S AGENT :IO THEME :OC RESULT)))

(define-mixin-category declare-29.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-WHAT-S NP-V-NP-ADJ DECLARE-29.4)
  :realization (:VERB ("adjudge" "assume" "maintain")
                (:S AGENT :O THEME :AS RESULT) (:S AGENT :O THEME)))

(define-mixin-category declare-29.4-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-WHAT-S_INF NP-V-HOW-S DECLARE-29.4-1)
  :realization (:VERB ("prove") (:S AGENT :O THEME)))

(define-mixin-category declare-29.4-1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S_INF DECLARE-29.4-1-1)
  :realization (:VERB ("declare") (:S AGENT :O THEME)))

(define-mixin-category declare-29.4-1-1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-WHETHER/IF-S NP-V-WHETHER/IF-S_INF DECLARE-29.4-1-1)
  :realization (:VERB ("find" "judge") (:S AGENT :O THEME)))

(define-mixin-category declare-29.4-1-1-3
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING DECLARE-29.4-1-1)
  :realization (:VERB ("profess") (:S AGENT :O THEME)))

(define-mixin-category declare-29.4-2
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF DECLARE-29.4)
  :realization (:VERB ("proclaim") (:S AGENT :O THEME)))

(define-mixin-category dedicate-79
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING NP-V-NP-PP.GOAL WITH-AGENT WITH-THEME WITH-GOAL)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("dedicate" "devote" "commit")
                (:S AGENT :O THEME :TO GOAL)))

(define-mixin-category deduce-97.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE NP-V-THAT-S-PP.THEME NP-V-THAT-S
           WITH-AGENT WITH-THEME WITH-SOURCE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("reason" "reason_out" "conclude" "derive" "disprove" "infer"
                 "deduct" "deduce" "gather" "conceive" "prove" "rationalize")
                (:S AGENT :O THEME) (:S AGENT :FROM THEME :O SOURCE)
                (:S AGENT :O THEME :FROM SOURCE)))

(define-mixin-category defend-72.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME NP-V-S_ING WITH-AGENT WITH-BENEFICIARY
           WITH-THEME)
  :binds ((SPARSER::BENEFICIARY (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("defend" "insure" "protect" "shade" "preserve" "guard"
                 "safeguard" "speak_for")
                (:S AGENT :O BENEFICIARY)
                (:S AGENT :O BENEFICIARY :AGAINST THEME)))

(define-mixin-category deprive-10.6.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME WITH-AGENT WITH-THEME WITH-SOURCE WITH-GOAL)
  :binds ((SPARSER::SOURCE (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("burgle" "despoil" "disabuse" "plunder" "rid" "depopulate"
                 "bereave" "denude" "disarm" "drain" "dispossess" "deplete"
                 "divest" "deprive" "sap")
                (:S AGENT :O SOURCE :OF THEME) (:S AGENT :O SOURCE)))

(define-mixin-category destroy-44
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT NP.INSTRUMENT-V-NP WITH-AGENT
           WITH-PATIENT WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT PHYSICAL) (SPARSER::PATIENT PHYSICAL))
  :realization (:VERB
                ("annihilate" "blight" "blitz" "damage" "decimate" "demolish"
                 "desecrate" "destroy" "devastate" "disfigure" "efface"
                 "exterminate" "extirpate" "level" "louse_up" "maim" "mutilate"
                 "obliterate" "rack" "ravage" "raze" "ruin" "shipwreck" "smoke"
                 "undo" "unmake" "vaporize" "waste" "wrack" "wreck" "shatter")
                (:S INSTRUMENT :O PATIENT)
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)))

(define-mixin-category devour-39.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT PATHOGEN)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB
                ("consume" "devour" "down" "have" "imbibe" "ingest" "swill"
                 "take")
                (:S AGENT :O PATIENT)))

(define-mixin-category die-42.4
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-PATIENT WITH-CAUSE)
  :binds ((SPARSER::PATIENT PHYSICAL-AGENT))
  :realization (:VERB
                ("buy_the_farm" "decease" "fall" "give_up_the_ghost"
                 "kick_the_bucket" "pass" "pop_off" "snuff_it")
                (:S PATIENT)))

(define-mixin-category die-42.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CAUSE DIE-42.4)
  :realization (:VERB
                ("choke" "conk" "croak" "die" "drop_dead" "expire" "pass_away"
                 "perish")
                (:S PATIENT :OF CAUSE :|\|| CAUSE :FROM CAUSE)))

(define-mixin-category differ-23.4
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-THEME NP-V WITH-THEME WITH-THEME)
  :realization (:VERB ("branch" "deviate" "differ" "diverge" "vary") (:S THEME)
                (:S THEME :FROM THEME :WITH THEME)))

(define-mixin-category dine-39.5
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.PATIENT WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("banquet" "breakfast" "brunch" "dine" "feast" "graze" "junket"
                 "lunch" "luncheon" "nosh" "picnic" "snack" "sup")
                (:S AGENT :ON PATIENT) (:S AGENT)))

(define-mixin-category disappearance-48.2
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-PATIENT WITH-SOURCE)
  :realization (:VERB ("die" "go_out" "go_down" "go_off") (:S PATIENT)))

(define-mixin-category disappearance-48.2-1
  :specializes subcategorization-pattern
  :mixins (THERE-V-PP-NP DISAPPEARANCE-48.2)
  :realization (:VERB ("disappear" "expire" "go" "lapse" "perish" "vanish")
                (:S PATIENT :FROM SOURCE)))

(define-mixin-category disassemble-23.3
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.CO-PATIENT NP-V-ADV-MIDDLE
           WITH-AGENT WITH-PATIENT WITH-CO-PATIENT)
  :binds ((SPARSER::CO-PATIENT PHYSICAL) (SPARSER::PATIENT PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("carve" "detach" "disassemble" "disconnect" "dismantle"
                 "dismount" "pare" "partition" "segregate" "sift" "slice"
                 "sunder" "unbolt" "unbuckle" "unbutton" "unchain" "unclamp"
                 "unclasp" "unclip" "unfasten" "unfix" "unglue" "unhinge"
                 "unhitch" "unhook" "unlace" "unlatch" "unlock" "unleash"
                 "unpeg" "unpin" "unscrew" "unseal" "unshackle" "unstaple"
                 "unstitch" "untie" "unzip" "sieve")
                (:S PATIENT (:M ADVERB)) (:S AGENT :O PATIENT :FROM CO-PATIENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category discover-84
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF NP-V-NP NP-V-THAT-S NP-V-WHAT-S
           NP-V-WHAT-S_INF WITH-AGENT WITH-THEME WITH-SOURCE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("deduce" "determine" "discover" "find" "guess" "realize"
                 "ascertain" "rationalize" "relearn" "see" "scent_out" "solve"
                 "chance_across" "chance_on" "chance_upon" "work_out")
                (:S AGENT :O THEME)))

(define-mixin-category discover-84-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME-S_ING NP-V-PP.SOURCE-HOW-S NP-V-PP.SOURCE-HOW-S_INF
           NP-V-PP.SOURCE-PP.THEME-WHETHER/IF-S NP-V-PP.SOURCE-PP.THEME-WHAT-S
           NP-V-PP.SOURCE-PP.THEME-WHAT-S_INF
           NP-V-PP.SOURCE-PP.THEME-WHETHER-S_INF NP-V-WHAT-S_INF DISCOVER-84)
  :realization (:VERB ("pick_up") (:S AGENT :O THEME)
                (:S AGENT :FROM SOURCE :ABOUT THEME)
                (:S AGENT :FROM SOURCE :O THEME) (:S AGENT :ABOUT THEME)))

(define-mixin-category discover-84-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.THEME-S_ING NP-V-PP.THEME-WHAT-S NP-V-PP.THEME
           NP-V-PP.THEME-PP.SOURCE DISCOVER-84-1)
  :realization (:VERB ("hear" "learn" "study" "find_out" "figure_out")
                (:S AGENT :ABOUT THEME :FROM SOURCE) (:S AGENT :ABOUT THEME)
                (:S AGENT)))

(define-mixin-category disfunction-105.2.2
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-THEME)
  :realization (:VERB
                ("croak" "die" "fizzle_out" "give_out" "go_down" "go_off"
                 "go_out" "poop_out")
                (:S THEME)))

(define-mixin-category distinguish-23.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-INSTRUMENT WITH-THEME WITH-THEME)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB ("tell_apart") (:S AGENT :O THEME)))

(define-mixin-category distinguish-23.5-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP NP-V-PP DISTINGUISH-23.5)
  :realization (:VERB ("distinguish" "differentiate")
                (:S AGENT :BETWEEN THEME :O THEME)
                (:S INSTRUMENT :O THEME :FROM THEME) (:S AGENT :O THEME)))

(define-mixin-category dress-41.1.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT PRONOUN))
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("bathe" "change" "clothe" "disrobe" "dress" "exercise" "frock"
                 "lave" "moisturize" "preen" "primp" "shave" "shower" "strip"
                 "sunbathe" "tan" "unclothe" "undress" "wash")
                (:S AGENT :O PATIENT) (:S AGENT)))

(define-mixin-category dressing_well-41.3.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-UP NP-V-UP-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT PRONOUN)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB ("doll" "dress" "gussy" "spruce" "tog" "trick")
                (:S AGENT :O PATIENT)))

(define-mixin-category drive-11.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION NP-V-NP-PP.INITIAL_LOCATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION
           NP-V-NP-PP.DESTINATION-PP.INITIAL_LOCATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT MOTOR-VEHICLE)))
  :realization (:VERB
                ("bike" "drive" "row" "motor" "paddle" "tool" "tool_around"
                 "trundle" "wheel")
                (:S AGENT :O THEME :TO DESTINATION :SRC SOURCE)
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION :TOWARDS
                 DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :O THEME :TO DESTINATION :TOWARDS DESTINATION)
                (:S AGENT :O THEME)))

(define-mixin-category drive-11.5-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INITIAL_LOCATION NP-V-NP-PP.DESTINATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION
           NP-V-NP-PP.DESTINATION-PP.INITIAL_LOCATION DRIVE-11.5)
  :realization (:VERB ("barge" "bus" "cart" "ferry" "fly" "shuttle" "truck")
                (:S AGENT :O THEME :TO DESTINATION :SRC SOURCE)
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION)
                (:S AGENT :O THEME :TO DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE) (:S AGENT :O THEME)))

(define-mixin-category dub-29.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP WITH-AGENT WITH-THEME WITH-RESULT)
  :binds ((SPARSER::THEME (:OR PHYSICAL COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("call" "decree" "dub" "pronounce" "rename" "rule" "stamp"
                 "term" "vote" "anoint" "baptize" "brand" "christen"
                 "consecrate" "crown" "label" "name" "nickname" "style")
                (:S AGENT :O THEME) (:S AGENT :IO THEME :OC RESULT)))

(define-mixin-category earn-54.6
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-THEME WITH-EXTENT)
  :realization (:VERB ("attract" "bring" "bring_in" "earn" "fetch" "raise")
                (:S THEME :O EXTENT)))

(define-mixin-category eat-39.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB NIL))

(define-mixin-category eat-39.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-PP.SOURCE WITH-PATIENT EAT-39.1)
  :binds ((SPARSER::PATIENT (:AND/OR PATHOGEN SOLID)))
  :realization (:VERB ("eat") (:S AGENT :SRC SOURCE) (:S AGENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category eat-39.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-PP.SOURCE WITH-PATIENT EAT-39.1)
  :binds ((SPARSER::PATIENT (:AND/OR PATHOGEN SOLID)))
  :realization (:VERB ("drink") (:S AGENT :SRC SOURCE) (:S AGENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category eat-39.1-3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP WITH-PATIENT EAT-39.1)
  :binds ((SPARSER::PATIENT PATHOGEN))
  :realization (:VERB
                ("huff" "inject" "mainline" "snort" "shoot_up" "smoke" "use")
                (:S AGENT :O PATIENT) (:S AGENT)))

(define-mixin-category empathize-88.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.STIMULUS NP-V-PP.STIMULUS-S_ING NP-V-PP.STIMULUS-WHAT-S
           WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("empathize" "sympathize" "identify" "commiserate")
                (:S EXPERIENCER :WITH STIMULUS) (:S EXPERIENCER)))

(define-mixin-category employment-95.3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP NP-V-PP-PP WITH-AGENT WITH-AGENT WITH-THEME
           WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT)))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("clerk" "freelance" "subcontract" "temp" "work")
                (:S AGENT :IO ATTRIBUTE :OC AGENT)
                (:S AGENT :ON THEME :O AGENT)
                (:S AGENT :ON THEME :|\|| THEME :IN THEME :|\|| THEME :AT
                 THEME)
                (:S AGENT :O AGENT) (:S AGENT)))

(define-mixin-category encounter-30.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                ("chance_across" "chance_upon" "come_across" "encounter"
                 "happen_on" "happen_upon" "meet" "meet_with" "stumble_on"
                 "stumble_upon")
                (:S EXPERIENCER :O STIMULUS)))

(define-mixin-category enforce-63
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-THAT-S WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:AND/OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("control" "enforce" "impose") (:S AGENT :O THEME)))

(define-mixin-category engender-27.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-CAUSE WITH-THEME)
  :binds ((SPARSER::THEME ABSTRACT))
  :realization (:VERB
                ("beget" "bring" "bring_about" "create" "engender" "generate"
                 "kindle" "produce" "raise" "return" "set-in_motion" "set_off"
                 "shape" "sire" "spawn")
                (:S CAUSE :O THEME)))

(define-mixin-category engender-27.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S ENGENDER-27.1)
  :realization (:VERB
                ("actuate" "arouse" "call_forth" "cause" "elicit" "incite"
                 "inspire" "instigate" "prompt" "provoke" "spark" "stimulate"
                 "stir_up" "trigger")
                (:S CAUSE :IO THEME :OC PREDICATE)))

(define-mixin-category ensure-99
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-NP NP-V-NP-PP.BENEFICIARY NP-V-THAT-S PREDICATION
           WITH-THEME WITH-BENEFICIARY)
  :binds ((SPARSER::PREDICATE PREDICATE))
  :realization (:VERB
                ("ensure" "assure" "guarantee" "insure" "secure" "ascertain"
                 "reinsure" "provide")
                (:S PREDICATE :O THEME)
                (:S PREDICATE :O THEME :FOR BENEFICIARY)
                (:S PREDICATE :IO BENEFICIARY :OC THEME)))

(define-mixin-category entity_specific_cos-45.5
  :specializes subcategorization-pattern
  :mixins (NP.PATIENT-V WITH-PATIENT)
  :binds ((SPARSER::PATIENT PHYSICAL))
  :realization (:VERB
                ("apostatize" "atrophy" "blister" "bloom" "blossom" "bud"
                 "burgeon" "burn" "corrode" "crust" "decay" "decompose"
                 "deteriorate" "ebb" "erode" "ferment" "fester" "flower"
                 "foliate" "germinate" "green" "molder" "molt" "moult"
                 "oxidize" "phosphoresce" "progress" "putrefy" "rot" "rust"
                 "spoil" "sprout" "stagnate" "subside" "suppurate" "swell"
                 "tarnish" "wane" "wilt" "wither" "pullulate")
                (:S PATIENT)))

(define-mixin-category entity_specific_modes_being-47.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION THERE-V-NP NP.LOCATION-V-NP
           NP.LOCATION-V-PP.THEME WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION)))
  :realization (:VERB
                ("billow" "bloom" "blossom" "bristle" "bulge" "burn"
                 "effervesce" "fester" "fizz" "flow" "flower" "flux" "foam"
                 "froth" "moil" "propagate" "rage" "ripple" "roil" "seethe"
                 "smolder" "sprout")
                (:S LOCATION :WITH THEME) (:LOC LOCATION :O THEME) (:O THEME)
                (:S THEME :LOC LOCATION) (:S THEME)))

(define-mixin-category equip-13.4.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-FULFILLING-PP WITH-AGENT WITH-THEME WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("charge" "invest" "ply")
                (:S AGENT :O RECIPIENT :WITH THEME)))

(define-mixin-category equip-13.4.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.RECIPIENT EQUIP-13.4.2)
  :realization (:VERB
                ("arm" "equip" "outfit" "rearm" "recompense" "redress" "regale"
                 "remunerate" "repay" "reward" "saddle" "treat")
                (:S AGENT :O RECIPIENT)))

(define-mixin-category equip-13.4.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP.THEME-V-NP EQUIP-13.4.2-1)
  :realization (:VERB
                ("armor" "encumber" "fortify" "overburden" "weight" "burden"
                 "compensate")
                (:S THEME :O RECIPIENT)))

(define-mixin-category escape-51.1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.DESTINATION NP-V-PP.TRAJECTORY
           NP-V-PP.INITIAL_LOC-PP.DESTINATION WITH-THEME WITH-SOURCE
           WITH-DESTINATION WITH-PATH)
  :binds ((SPARSER::PATH PHYSICAL) (SPARSER::DESTINATION PHYSICAL)
          (SPARSER::SOURCE PHYSICAL) (SPARSER::THEME PHYSICAL))
  :realization (:VERB ("cut" "get" "make_it")
                (:S THEME :PATH SOURCE :PATH DESTINATION) (:S THEME :PATH PATH)
                (:S THEME :PATH DESTINATION)))

(define-mixin-category escape-51.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.INITIAL_LOC ESCAPE-51.1)
  :realization (:VERB
                ("advance" "approach" "come" "continue" "decamp" "fall" "file"
                 "go" "plunge" "recede" "return" "rise" "tumble" "arrive"
                 "set_off" "set_out" "bolt" "emerge" "emigrate" "retreat"
                 "skedaddle" "vamoose" "withdraw")
                (:S THEME :PATH SOURCE) (:S THEME)))

(define-mixin-category escape-51.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP ESCAPE-51.1-1)
  :realization (:VERB
                ("depart" "disembark" "escape" "exit" "flee" "leave" "vacate")
                (:S THEME :O SOURCE)))

(define-mixin-category escape-51.1-1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP ESCAPE-51.1-1)
  :realization (:VERB ("enter" "approach") (:S THEME :O DESTINATION)))

(define-mixin-category escape-51.1-1-3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP ESCAPE-51.1-1)
  :realization (:VERB ("ascend" "climb" "cross" "descend" "pass")
                (:S THEME :O PATH)))

(define-mixin-category establish-55.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("bring" "constitute" "constitutionalize" "innovate"
                 "machinate" "pioneer" "stage")
                (:S AGENT :O THEME)))

(define-mixin-category establish-55.5-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.INSTRUMENT WITH-INSTRUMENT ESTABLISH-55.5)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization (:VERB
                ("initiate" "establish" "fake" "feign" "format" "found" "plant"
                 "implement" "instigate" "institute" "organize" "originate"
                 "prepare" "premise" "devise" "mount" "bring_about" "arrange"
                 "introduce" "set" "simulate" "strike_up" "synthesise" "launch"
                 "open" "open_up")
                (:S AGENT :O THEME :WITH INSTRUMENT)))

(define-mixin-category estimate-34.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.VALUE WITH-AGENT WITH-THEME WITH-PATH)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("put") (:S AGENT :O THEME :AT PATH)))

(define-mixin-category estimate-34.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-HOW-S NP-V-NP-TO-BE-ADJ NP-V-THAT-S NP-V-WHAT-S
           ESTIMATE-34.2)
  :realization (:VERB
                ("estimate" "gauge" "approximate" "guess" "judge" "count"
                 "quantize" "assess" "guesstimate" "project")
                (:S AGENT :O THEME) (:S AGENT :O PATH)))

(define-mixin-category exceed-90
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE WITH-THEME WITH-THEME WITH-ATTRIBUTE)
  :realization (:VERB
                ("overcome" "overleap" "transcend" "better" "exceed" "lap"
                 "outbid" "outdo" "outmatch" "outnumber" "outrace" "outshine"
                 "outsmart" "outstrip" "outweigh" "outwit" "overreach"
                 "overstep" "surpass" "top")
                (:S THEME :O THEME :IN ATTRIBUTE) (:S THEME :O THEME)))

(define-mixin-category exchange-13.6.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-THEME NP-V-PP.THEME NP-V-NP-PP.CO-AGENT NP-V-NP
           WITH-AGENT WITH-THEME WITH-THEME WITH-AGENT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("barter" "change" "exchange" "trade")
                (:S AGENT :O THEME) (:S AGENT :O THEME :WITH AGENT)
                (:S AGENT :LOC THEME) (:S AGENT :O THEME :FOR THEME)))

(define-mixin-category exclude-107.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.GOAL NP-V-NP WITH-AGENT WITH-THEME WITH-GOAL)
  :binds ((SPARSER::THEME (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("omit") (:S AGENT :O THEME)
                (:S AGENT :O THEME :FROM GOAL)))

(define-mixin-category exclude-107.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.GOAL-S_ING EXCLUDE-107.3)
  :realization (:VERB ("exclude" "preclude") (:S AGENT :O THEME :FROM GOAL)))

(define-mixin-category exhale-40.1.3
  :specializes subcategorization-pattern
  :mixins (WITH-INSTRUMENT WITH-THEME)
  :binds ((SPARSER::INSTRUMENT PHYSICAL-AGENT))
  :realization (:VERB NIL))

(define-mixin-category exhale-40.1.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP EXHALE-40.1.3)
  :realization (:VERB
                ("defecate" "exhale" "hemorrhage" "perspire" "expectorate"
                 "regurgitate" "urinate" "whiff")
                (:S INSTRUMENT :O THEME) (:S INSTRUMENT)))

(define-mixin-category exhale-40.1.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP EXHALE-40.1.3)
  :realization (:VERB ("inhale") (:S INSTRUMENT :O THEME) (:S INSTRUMENT)))

(define-mixin-category exist-47.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION))
  :realization (:VERB
                ("coexist" "dwell" "exist" "extend" "flourish" "hold"
                 "languish" "linger" "live" "loom" "lurk" "persist"
                 "predominate" "prevail" "prosper" "remain" "reside" "shelter"
                 "stand" "stay" "thrive" "tower" "vegetate" "wait" "persevere")
                (:S THEME :LOC LOCATION) (:S THEME)))

(define-mixin-category exist-47.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-PP WITH-INSTRUMENT WITH-MANNER EXIST-47.1)
  :binds ((SPARSER::MANNER ADVERB) (SPARSER::INSTRUMENT OBJECT))
  :realization (:VERB ("endure" "live" "survive") (:S THEME :NIL MANNER)
                (:S THEME :NIL INSTRUMENT) (:S THEME :O INSTRUMENT)))

(define-mixin-category feeding-39.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.RECIPIENT NP-V-NP-DATIVE-NP WITH-AGENT WITH-THEME
           WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("bottlefeed" "breastfeed" "feed" "force-feed" "handfeed"
                 "nurse" "spoonfeed" "suckle")
                (:S AGENT :IO RECIPIENT :OC THEME)
                (:S AGENT :O THEME :TO RECIPIENT) (:S AGENT :O RECIPIENT)))

(define-mixin-category ferret-35.6
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE WITH-AGENT WITH-SOURCE WITH-THEME)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("ferret" "nose" "tease") (:S AGENT :O THEME :DIR SOURCE)))

(define-mixin-category fill-9.8
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V-NP NP-V-NP.DESTINATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("anoint" "bandage" "bestrew" "blacktop" "blockade" "blot"
                 "bombard" "choke" "clog" "close" "clutter" "contaminate" "dam"
                 "deluge" "dirty" "dope" "dot" "embellish" "emblazon"
                 "encircle" "endow" "enrich" "fill" "fleck" "flood" "garland"
                 "garnish" "grace" "gum_up" "honeycomb" "imbue" "impregnate"
                 "infect" "infest" "inlay" "interlace" "interlard" "interleave"
                 "intersperse" "interweave" "inundate" "lard" "lash" "litter"
                 "mask" "mottle" "ornament" "pad" "plate" "plug" "prefill"
                 "replenish" "repopulate" "resupply" "riddle" "ring" "ripple"
                 "sauce" "season" "smut" "soil" "splotch" "staff" "stipple"
                 "stop_up" "stud" "suffuse" "sully" "taint" "tinge" "inject")
                (:S AGENT :O DESTINATION) (:S THEME :O DESTINATION)
                (:S AGENT :O DESTINATION :WITH THEME)))

(define-mixin-category fill-9.8-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME FILL-9.8)
  :realization (:VERB
                ("adorn" "bathe" "bind" "blanket" "block" "carpet" "cloak"
                 "coat" "cover" "dapple" "deck" "decorate" "disguise" "douse"
                 "drench" "edge" "encrust" "entangle" "face" "festoon" "frame"
                 "line" "marinate" "panel" "pave" "redecorate" "robe"
                 "saturate" "shroud" "smother" "soak" "speckle" "spot"
                 "surround" "swaddle" "swathe" "tile" "tool" "trim" "veil"
                 "vein" "stain")
                (:S AGENT :O DESTINATION :IN THEME)))

(define-mixin-category fire-10.10
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE NP-V-NP-PP.ATTRIBUTE WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-GOAL WITH-ATTRIBUTE)
  :binds ((SPARSER::SOURCE COMPANY)
          (SPARSER::THEME (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("fire" "dismiss" "sack" "drop" "unseat" "oust" "expel"
                 "remove" "can" "send_away" "suspend" "force_out" "terminate"
                 "give_the_boot" "lay_off" "let_go" "shitcan")
                (:S AGENT :O THEME :AS ATTRIBUTE)
                (:S AGENT :O THEME :FROM SOURCE) (:S AGENT :O THEME)))

(define-mixin-category fit-54.3
  :specializes subcategorization-pattern
  :mixins (NP.LOCATION-V-NP NP-V-NP-PP.LOCATION WITH-AGENT WITH-PATH
           HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("carry" "contain" "fit" "feed" "hibernate" "hold" "house"
                 "reseat" "seat" "serve" "sleep" "store" "take")
                (:S AGENT :O PATH :IN LOCATION) (:S LOCATION :O PATH)))

(define-mixin-category flinch-40.5
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.STIMULUS WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                ("balk" "cower" "cringe" "flinch" "quail" "recoil" "shrink"
                 "wince")
                (:S EXPERIENCER :AT STIMULUS :FROM STIMULUS) (:S EXPERIENCER)))

(define-mixin-category floss-41.2.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-NP-PP.INSTRUMENT NP-V-PP.INSTRUMENT WITH-AGENT
           WITH-PATIENT WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("brush" "floss" "shave" "wash")
                (:S AGENT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category focus-87.1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.TOPIC NP-V-PP.THEME-S_ING NP-V-PP.TOPIC-WHAT-S
           NP-V-PP.TOPIC-WHAT-S_INF WITH-AGENT WITH-TOPIC)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT)))
  :realization (:VERB
                ("focus" "focalize" "center" "concentrate" "contemplate"
                 "converge" "dwell" "fixate")
                (:S AGENT :ON TOPIC)))

(define-mixin-category focus-87.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.TOPIC NP-V-PP.THEME-S_ING NP-V-PP.TOPIC-WHAT-S
           NP-V-PP.TOPIC-WHAT-S_INF FOCUS-87.1)
  :realization (:VERB
                ("brood" "deliberate" "meditate" "muse" "ponder" "reflect"
                 "ruminate" "think" "wonder")
                (:S AGENT :ABOUT TOPIC) (:S AGENT)))

(define-mixin-category forbid-64.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME WITH-AGENT WITH-THEME WITH-BENEFICIARY)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("dissuade" "keep") (:S AGENT :O BENEFICIARY :FROM THEME)))

(define-mixin-category forbid-64.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-NP FORBID-64.4)
  :realization (:VERB
                ("ban" "bar" "block" "deter" "discourage" "exclude" "forbid"
                 "hamper" "hinder" "impede" "inhibit" "obstruct" "preclude"
                 "prevent" "prohibit" "restrain" "stop")
                (:S AGENT :O THEME)))

(define-mixin-category free-10.6.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME WITH-CAUSE WITH-SOURCE WITH-THEME)
  :binds ((SPARSER::SOURCE (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("alleviate" "liberate" "discharge" "exonerate" "unburden"
                 "cleanse" "disencumber" "wean" "ease" "break")
                (:S CAUSE :O SOURCE :OF THEME)))

(define-mixin-category free-10.6.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING FREE-10.6.3)
  :realization (:VERB
                ("absolve" "acquit" "clear" "free" "emancipate" "release"
                 "rerelease")
                (:S CAUSE :O SOURCE :OF THEME)))

(define-mixin-category free-10.6.3-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME FREE-10.6.3-1)
  :realization (:VERB ("cure" "relieve" "purge" "purify")
                (:S CAUSE :O SOURCE :FROM THEME)))

(define-mixin-category free-80
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME WITH-CAUSE WITH-SOURCE WITH-THEME)
  :binds ((SPARSER::SOURCE (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("alleviate" "liberate" "discharge" "exonerate" "unburden"
                 "cleanse" "disencumber" "wean" "ease" "break")
                (:S CAUSE :O SOURCE :OF THEME)))

(define-mixin-category free-80-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING FREE-80)
  :realization (:VERB
                ("absolve" "acquit" "clear" "free" "emancipate" "release"
                 "rerelease")
                (:S CAUSE :O SOURCE :OF THEME)))

(define-mixin-category free-80-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME FREE-80-1)
  :realization (:VERB ("cure" "relieve" "purge" "purify")
                (:S CAUSE :O SOURCE :FROM THEME)))

(define-mixin-category fulfilling-13.4.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RECIPIENT NP-V-NP-FULFILLING-PP.THEME NP-V-NP WITH-AGENT
           WITH-THEME WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("issue" "leave" "present" "trust") (:S AGENT :O THEME)
                (:S AGENT :O RECIPIENT :WITH THEME)
                (:S AGENT :O THEME :TO RECIPIENT :|\|| RECIPIENT :FOR
                 RECIPIENT)))

(define-mixin-category fulfilling-13.4.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP FULFILLING-13.4.1)
  :realization (:VERB
                ("credit" "entrust" "furnish" "resupply" "serve" "supply")
                (:S AGENT :O RECIPIENT)))

(define-mixin-category fulfilling-13.4.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.RECIPIENT WITH-RECIPIENT WITH-AGENT FULFILLING-13.4.1)
  :binds ((SPARSER::AGENT (:OR ABSTRACT PHYSICAL-AGENT))
          (SPARSER::RECIPIENT (:OR ABSTRACT PHYSICAL-AGENT)))
  :realization (:VERB ("provide") (:S AGENT :FOR RECIPIENT)))

(define-mixin-category function-105.2.1
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-THEME)
  :realization (:VERB ("go" "go_on" "run") (:S THEME)))

(define-mixin-category function-105.2.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP PREDICATION FUNCTION-105.2.1)
  :binds ((SPARSER::PREDICATE PREDICATE))
  :realization (:VERB ("perform" "function" "operate" "work")
                (:S THEME :O PREDICATE)))

(define-mixin-category funnel-9.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION NP-V-NP-ADVP WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("dip" "dunk" "ladle" "hoe" "scoop" "siphon" "sop"
                 "channelize")
                (:S AGENT :IO THEME :OC DESTINATION)
                (:S AGENT :O THEME :DEST_CONF DESTINATION)))

(define-mixin-category funnel-9.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION FUNNEL-9.3)
  :realization (:VERB
                ("channel" "fit" "rake" "scrape" "shovel" "spoon" "squash"
                 "squish" "tuck" "wipe" "wring")
                (:S AGENT :O THEME :BETWEEN DESTINATION :IN_BETWEEN
                 DESTINATION)))

(define-mixin-category funnel-9.3-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.DESTINATION FUNNEL-9.3-1)
  :realization (:VERB
                ("bang" "dump" "funnel" "hammer" "pound" "push" "ram" "shake"
                 "squeeze" "sweep" "wedge")
                (:S THEME :INTO DESTINATION)))

(define-mixin-category future_having-13.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME- NP-V-NP-DATIVE-NP NP-V-NP-PP.GOAL NP-V-NP-PP-PP
           WITH-AGENT WITH-THEME WITH-BENEFICIARY WITH-GOAL)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB ("accord" "devolve" "portion-out" "ration") (:S AGENT)
                (:S AGENT :O THEME :FOR GOAL) (:S AGENT :IO GOAL :OC THEME)
                (:S AGENT :O THEME) (:S AGENT :O THEME :TO GOAL)))

(define-mixin-category future_having-13.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP-PP FUTURE_HAVING-13.3)
  :realization (:VERB
                ("advance" "allocate" "allot" "allow" "apportion" "assign"
                 "award" "bequeath" "cede" "concede" "extend" "grant"
                 "guarantee" "issue" "leave" "offer" "owe" "promise"
                 "reallocate" "reassign" "vote" "will" "yield")
                (:S AGENT)))

(define-mixin-category get-13.5.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE NP-V-NP-PP.BENEFICIARY
           NP-V-NP.BENEFICIARY-NP NP-V-NP-PP.ASSET NP.ASSET-V-NP
           NP-V-NP-PP.SOURCE-NP.ASSET WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-BENEFICIARY WITH-EXTENT)
  :binds ((SPARSER::EXTENT (:AND/OR LOCATION REGION))
          (SPARSER::BENEFICIARY (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::SOURCE PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("attain" "book" "buy" "call" "catch" "charter" "choose" "find"
                 "gather" "hire" "lease" "order" "phone" "pick" "pluck"
                 "procure" "pull" "reach" "rent" "reserve" "take" "win")
                (:S AGENT :O THEME :FROM SOURCE :AT EXTENT :FOR EXTENT)
                (:S EXTENT :O THEME) (:S AGENT :O THEME :FOR EXTENT)
                (:S AGENT :IO BENEFICIARY :OC THEME)
                (:S AGENT :O THEME :FOR BENEFICIARY)
                (:S AGENT :O THEME :FROM SOURCE) (:S AGENT :O THEME)))

(define-mixin-category get-13.5.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE WITH-SOURCE GET-13.5.1)
  :binds ((SPARSER::SOURCE ABSTRACT))
  :realization (:VERB
                ("earn" "fetch" "cash" "gain" "get" "save" "score" "secure")
                (:S AGENT :O THEME :FROM SOURCE :FOR SOURCE :ON SOURCE)))

(define-mixin-category give-13.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RECIPIENT NP-V-NP-DATIVE-NP NP-V-NP NP-V-PP.RECIPIENT
           WITH-AGENT WITH-THEME WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("deal" "give-back" "lend" "loan" "pass" "peddle" "refund"
                 "render")
                (:S AGENT :TO RECIPIENT) (:S AGENT :O THEME)
                (:S AGENT :IO RECIPIENT :OC THEME)
                (:S AGENT :O THEME :TO RECIPIENT)))

(define-mixin-category give-13.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.ASSET NP-V-NP-PP.RECIPIENT-PP.ASSET NP-V-NP-NP-PP.ASSET
           WITH-EXTENT GIVE-13.1)
  :realization (:VERB ("give" "hock" "hawk" "let" "rent" "sell" "lease" "pawn")
                (:S AGENT :IO RECIPIENT :OC THEME :AT EXTENT :FOR EXTENT :ON
                 EXTENT)
                (:S AGENT :O THEME :TO RECIPIENT :AT EXTENT :FOR EXTENT :ON
                 EXTENT)
                (:S AGENT :O THEME :FOR EXTENT :AT EXTENT)))

(define-mixin-category gobble-39.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB NIL))

(define-mixin-category gobble-39.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-UP NP-V-NP-DOWN WITH-PATIENT GOBBLE-39.3)
  :binds ((SPARSER::PATIENT (:AND/OR NIL SOLID)))
  :realization (:VERB ("bolt" "gobble" "wolf") (:S AGENT :O PATIENT)))

(define-mixin-category gobble-39.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-DOWN-NP WITH-PATIENT GOBBLE-39.3)
  :binds ((SPARSER::PATIENT (:AND/OR NIL SOLID)))
  :realization (:VERB ("gulp" "guzzle" "quaff" "slug" "swallow" "swig")
                (:S AGENT :O PATIENT)))

(define-mixin-category gorge-39.6
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.PATIENT WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("exist" "feed" "flourish" "gorge" "prosper" "subsist"
                 "survive" "thrive")
                (:S AGENT :ON PATIENT)))

(define-mixin-category groom-41.1.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::PATIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("cleanse" "curry" "groom" "neaten")
                (:S AGENT :O PATIENT)))

(define-mixin-category grow-26.2.1
  :specializes subcategorization-pattern
  :mixins (NP.MATERIAL-V-PP.PRODUCT NP.PRODUCT-V-PP.MATERIAL
           NP-V-NP.PRODUCT-PP.MATERIAL NP-V-NP.MATERIAL-PP.PRODUCT WITH-AGENT
           WITH-PATIENT WITH-PRODUCT)
  :binds ((SPARSER::PRODUCT PHYSICAL) (SPARSER::PATIENT PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("develop" "evolve" "generate" "grow" "hatch" "maturate"
                 "mature" "redevelop")
                (:S AGENT :O PATIENT :INTO PRODUCT)
                (:S AGENT :O PRODUCT :FROM PATIENT :OUT_OF PATIENT)
                (:S PRODUCT :FROM PATIENT :OUT_OF PATIENT)
                (:S PATIENT :INTO PRODUCT)))

(define-mixin-category harmonize-22.6
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-ADV NP-V-PP NP-V-ADV-PP NP-V WITH-THEME WITH-THEME)
  :realization (:VERB
                ("alternate" "cohere" "couple" "dovetail" "go" "pair"
                 "harmonize" "jibe" "match" "rhyme" "square")
                (:S THEME) (:S THEME (:M ADVERB) :O THEME) (:S THEME :O THEME)
                (:S THEME (:M ADVERB))))

(define-mixin-category help-72.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-BENEFICIARY WITH-THEME)
  :binds ((SPARSER::BENEFICIARY (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB NIL))

(define-mixin-category help-72.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME NP-V-NP-S_ING NP-V-NP-S_INF NP-V-S_ING
           HELP-72.1)
  :realization (:VERB ("support" "succor") (:S AGENT :WITH THEME)
                (:S AGENT :IO BENEFICIARY :OC THEME)
                (:S AGENT :O BENEFICIARY :WITH THEME) (:S AGENT :O BENEFICIARY)))

(define-mixin-category help-72.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME HELP-72.1-1)
  :realization (:VERB ("aid" "abet" "assist" "help") (:S AGENT :WITH THEME)))

(define-mixin-category help-72.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.BENEFICIARY NP-V-PP.BENEFICIARY-PP.THEME HELP-72.1)
  :realization (:VERB ("go" "pull")
                (:S AGENT :WITH BENEFICIARY :|\|| BENEFICIARY :FOR BENEFICIARY)))

(define-mixin-category herd-47.5.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP.THEME NP-V-NP-TOGETHER WITH-AGENT WITH-THEME)
  :binds ((SPARSER::THEME (:AND/OR PHYSICAL COLLECTION))
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("accumulate" "aggregate" "amass" "assemble" "cluster"
                 "collect" "congregate" "convene" "flock" "gather" "group"
                 "herd" "huddle" "mass" "reconvene")
                (:S AGENT :O THEME) (:S THEME)))

(define-mixin-category hiccup-40.1.1
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("belch" "blink" "blush" "burp" "eruct" "fart" "flush" "hiccup"
                 "pant" "salivate" "shiver" "sneeze" "sniffle" "snore" "snuff"
                 "snuffle" "swallow" "wheeze" "yawn")
                (:S AGENT)))

(define-mixin-category hire-13.5.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE NP-V-NP-TO-BE-NP WITH-AGENT WITH-THEME
           WITH-ATTRIBUTE)
  :binds ((SPARSER::THEME (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("commission" "contract" "draft" "employ" "engage" "enlist"
                 "groom" "hire" "prepare" "recruit" "reinstate" "sign"
                 "sign_on" "sign_up" "subcontract" "take_on" "train")
                (:S AGENT :IO THEME :OC ATTRIBUTE)
                (:S AGENT :O THEME :AS ATTRIBUTE) (:S AGENT :O THEME)))

(define-mixin-category hit-18.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT NP-V-NP-TOGETHER
           NP-V-NP-ADJP-PP.INSTRUMENT NP-V-NP-PP.RESULT
           NP-V-NP-PP.RESULT-PP.INSTRUMENT NP-V-NP-PP NP.INSTRUMENT-V-NP
           NP-V-NP-ADJP NP-V-NP-ADJP-PP.RESULT WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT PHYSICAL) (SPARSER::PATIENT PHYSICAL))
  :realization (:VERB
                ("bang" "bash" "blast" "bop" "click" "dash" "knap" "pink"
                 "squash" "squelch" "tamp" "thump" "thwack" "trounce" "whack"
                 "wham" "whang" "whap" "whop" "smite")
                (:S INSTRUMENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S INSTRUMENT :IO PATIENT :OC RESULT)
                (:S INSTRUMENT :O PATIENT)
                (:S AGENT :O INSTRUMENT :AGAINST PATIENT :ON PATIENT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S AGENT :IO PATIENT :OC RESULT :WITH INSTRUMENT)
                (:S AGENT :IO PATIENT :OC RESULT) (:S AGENT :O PATIENT)
                (:S AGENT :O PATIENT :WITH INSTRUMENT)))

(define-mixin-category hit-18.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP NP-V-PP-PP WITH-INSTRUMENT HIT-18.1)
  :binds ((SPARSER::INSTRUMENT (:OR NIL PRONOUN)))
  :realization (:VERB
                ("batter" "beat" "bump" "butt" "drum" "hammer" "hit" "jab"
                 "kick" "knock" "lash" "pound" "rap" "slap" "smack" "smash"
                 "strike" "stomp" "whang" "tap")
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)))

(define-mixin-category hold-15.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::THEME (:OR NIL PHYSICAL)) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("clasp" "clutch" "grab" "grasp" "grip" "handle" "hold" "seize"
                 "wield")
                (:S AGENT :O THEME)))

(define-mixin-category hunt-35.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V-PP.THEME-PP.LOCATION NP-V-PP.LOCATION-PP.THEME
           NP-V-NP-PP.LOCATION NP-V-NP NP-V WITH-AGENT HAS-LOCATION WITH-THEME)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("dig" "feel" "fish" "hunt" "mine" "pan" "poach" "scrounge"
                 "seek")
                (:S AGENT) (:S AGENT :O THEME)
                (:S AGENT :O THEME :LOC LOCATION)
                (:S AGENT :LOC LOCATION :FOR THEME)
                (:S AGENT :FOR THEME :LOC LOCATION)
                (:S AGENT :O LOCATION :FOR THEME)))

(define-mixin-category hurt-40.8.3
  :specializes subcategorization-pattern
  :mixins (WITH-EXPERIENCER)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB NIL))

(define-mixin-category hurt-40.8.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-PATIENT HURT-40.8.3)
  :realization (:VERB
                ("hit" "jam" "graze" "chafe" "overstretch" "rick" "sting"
                 "stub")
                (:S EXPERIENCER :O PATIENT)))

(define-mixin-category hurt-40.8.3-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V HURT-40.8.3-1)
  :realization (:VERB
                ("break" "chip" "fracture" "pull" "rupture" "split" "splinter"
                 "sprain" "tear" "turn" "twist")
                (:S PATIENT)))

(define-mixin-category hurt-40.8.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP HURT-40.8.3)
  :realization (:VERB
                ("bark" "bite" "bruise" "bump" "burn" "contuse" "cut" "hurt"
                 "injure" "nick" "prick" "scald" "scratch" "skin" "strain"
                 "sunburn" "wrench")
                (:S EXPERIENCER :O PATIENT)))

(define-mixin-category illustrate-25.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME WITH-AGENT WITH-THEME WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("address" "adorn" "autograph" "bead" "brand" "date" "decorate"
                 "embellish" "endorse" "gild" "ice" "illuminate" "illustrate"
                 "initial" "label" "letter" "monogram" "ornament" "redecorate"
                 "tag")
                (:S AGENT :O DESTINATION :WITH THEME) (:S AGENT :O DESTINATION)))

(define-mixin-category image_impression-25.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME-PP.DESTINATION NP-V-NP.DESTINATION-PP.THEME
           NP-V-NP.DESTINATION NP-V-NP.THEME NP-V WITH-AGENT WITH-THEME
           WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL))
  :realization (:VERB
                ("annotate" "applique" "emboss" "embroider" "engrave" "etch"
                 "handpaint" "imprint" "incise" "ingrain" "inscribe" "mark"
                 "paint" "reinscribe" "scar" "sign" "stamp" "stipple" "tattoo"
                 "tool")
                (:S AGENT) (:S AGENT :O THEME) (:S AGENT :O DESTINATION)
                (:S AGENT :O DESTINATION :WITH THEME)
                (:S AGENT :O THEME :LOC DESTINATION :DEST_CONF DESTINATION)))

(define-mixin-category indicate-78
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF NP-V-NP NP-V-WHETHER/IF-S NP-V-WHAT-S
           WITH-RECIPIENT WITH-CAUSE WITH-TOPIC)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("imply" "predict" "denote" "corroborate" "expose"
                 "prognosticate" "forebode" "anticipate")
                (:S CAUSE :O TOPIC)))

(define-mixin-category indicate-78-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.RECIPIENT-THAT-S NP-V-PP.RECIPIENT-WHETHER/IF-S
           NP-V-PP.RECIPIENT-WHAT-S NP-V-PP.RECIPIENT-HOW-S INDICATE-78)
  :realization (:VERB ("explain" "indicate" "say")
                (:S CAUSE :TO RECIPIENT :O TOPIC)))

(define-mixin-category indicate-78-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-TO-BE-NP INDICATE-78-1)
  :realization (:VERB
                ("affirm" "reaffirm" "disclose" "verify" "confirm"
                 "demonstrate" "establish" "prove" "reveal" "show" "suggest")
                (:S CAUSE :O TOPIC)))

(define-mixin-category initiate_communication-37.4.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.RECIPIENT WITH-AGENT WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("buzz" "get" "get_ahold_of" "get_hold_of" "ping" "reach")
                (:S AGENT :O RECIPIENT)))

(define-mixin-category initiate_communication-37.4.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V INITIATE_COMMUNICATION-37.4.2)
  :realization (:VERB ("call" "phone" "ring" "telephone") (:S AGENT)))

(define-mixin-category inquire-37.1.2
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF NP-V NP-V-NP.RECIPIENT NP-V-NP.TOPIC
           NP-V-NP-PP.TOPIC NP-V-NP-WHETHER-S NP-V-NP-WHAT-S
           NP-V-NP-WHETHER-S_INF NP-V-NP-WHAT-S_INF NP-V-PP.TOPIC-WHETHER-S
           NP-V-NP-PP.TOPIC-WHAT-S NP-V-PP.TOPIC-WHETHER-S_INF
           NP-V-PP.TOPIC-WHAT-S_INF NP-V-PP.TOPIC NP-V-PP.RECIPIENT-HOW-S
           NP-V-PP.RECIPIENT-HOW-S_INF NP-V-PP.RECIPIENT-WHETHER-S
           NP-V-PP.RECIPIENT-PP.TOPIC-WHAT-S
           NP-V-PP.RECIPIENT-PP.TOPIC-WHAT-S_INF
           NP-V-PP.RECIPIENT-PP.TOPIC-WHETHER-S_INF NP-V-WHETHER-S NP-V-WHAT-S
           NP-V-WHETHER-S_INF NP-V-WHAT-S_INF NP-V-NP-HOW-S WITH-AGENT
           WITH-RECIPIENT WITH-TOPIC)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("ask" "enquire" "inquire" "consult" "pry")
                (:S AGENT :IO RECIPIENT :OC TOPIC) (:S AGENT :O TOPIC)
                (:S AGENT :OF RECIPIENT :ABOUT TOPIC)
                (:S AGENT :OF RECIPIENT :O TOPIC) (:S AGENT :ABOUT TOPIC)
                (:S AGENT :O RECIPIENT :ABOUT TOPIC) (:S AGENT :O RECIPIENT)
                (:S AGENT)))

(define-mixin-category instr_communication-37.4.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP.RECIPIENT NP-V-NP-PP.RECIPIENT NP-V-NP-DATIVE-NP
           NP-V-NP.RECIPIENT-S-QUOTE NP-V-PP.RECIPIENT-S-QUOTE NP-V-NP-PP.TOPIC
           NP-V-THAT-S NP-V-WHEN-S_INF NP-V-S_INF NP-V-NP.RECIPIENT-THAT-S
           NP-V-NP.RECIPIENT-WHEN-S_INF NP-V-NP.RECIPIENT-S_INF
           NP-V-PP.RECIPIENT-THAT-S NP-V-PP.RECIPIENT-WHEN-S_INF
           NP-V-PP.RECIPIENT-S_INF NP-V-FOR-NP-S_INF WITH-AGENT WITH-TOPIC
           WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("broadcast" "cable" "e-mail" "fax" "modem" "netmail" "phone"
                 "radio" "relay" "satellite" "semaphore" "sign" "signal"
                 "telecast" "telegraph" "telephone" "telex" "wire" "wireless")
                (:S AGENT :FOR TOPIC) (:S AGENT :TO RECIPIENT :O TOPIC)
                (:S AGENT :IO RECIPIENT :OC TOPIC) (:S AGENT :O TOPIC)
                (:S AGENT :O RECIPIENT :ABOUT TOPIC)
                (:S AGENT :O TOPIC :TO RECIPIENT) (:S AGENT :O RECIPIENT)))

(define-mixin-category intend-61.2
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF NP-V-NP-PP.ATTRIBUTE WITH-AGENT WITH-TOPIC WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("aim") (:S AGENT :O TOPIC :AS ATTRIBUTE)
                (:S AGENT :O TOPIC)))

(define-mixin-category intend-61.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-S INTEND-61.2)
  :realization (:VERB ("mean") (:S AGENT :O TOPIC)))

(define-mixin-category intend-61.2-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING INTEND-61.2-1)
  :realization (:VERB ("intend" "plan") (:S AGENT :O TOPIC)))

(define-mixin-category interact-36.6
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.CO-AGENT WITH-AGENT WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("follow-up" "follow-through" "go-steady" "go-out" "interact"
                 "hook-up" "split-up")
                (:S AGENT :WITH AGENT) (:S AGENT)))

(define-mixin-category interrogate-37.1.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE NP-V-NP-PP.TOPIC WITH-AGENT
           WITH-RECIPIENT WITH-TOPIC WITH-ATTRIBUTE)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("cross-examine" "question" "interview" "interrogate")
                (:S AGENT :O RECIPIENT :ABOUT TOPIC)
                (:S AGENT :O RECIPIENT :AS ATTRIBUTE) (:S AGENT :O RECIPIENT)))

(define-mixin-category invest-13.5.4
  :specializes subcategorization-pattern
  :mixins (NP-V-PP WITH-AGENT WITH-THEME WITH-EXTENT WITH-GOAL)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("buy" "speculate") (:S AGENT :O GOAL)))

(define-mixin-category invest-13.5.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.GOAL NP-V-NP-PP.THEME INVEST-13.5.4)
  :realization (:VERB ("invest" "put" "commit" "allocate")
                (:S AGENT :IO EXTENT :OC THEME) (:S AGENT :IO EXTENT :OC GOAL)))

(define-mixin-category investigate-35.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.LOCATION-PP.THEME NP-V-NP.LOCATION WITH-AGENT HAS-LOCATION
           WITH-THEME)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("canvass" "explore" "examine" "frisk" "inspect" "investigate"
                 "monitor" "observe" "picket" "quiz" "raid" "ransack" "riffle"
                 "scan" "scrutinize" "surveil" "survey" "tap" "test" "tour")
                (:S AGENT :O LOCATION) (:S AGENT :O LOCATION :FOR THEME)))

(define-mixin-category involve-107.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.GOAL WITH-AGENT WITH-THEME WITH-GOAL)
  :binds ((SPARSER::THEME (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("involve" "engage" "relate" "include" "enroll")
                (:S AGENT :O THEME :IN GOAL) (:S AGENT :O THEME)))

(define-mixin-category judgment-33.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE NP-V-NP.ATTRIBUTE WITH-AGENT WITH-THEME
           WITH-ATTRIBUTE)
  :realization (:VERB
                ("abuse" "assault" "backbite" "badmouth" "blame" "blaspheme"
                 "condone" "find_fault_with" "gibe" "imprecate" "slang")
                (:S AGENT :O ATTRIBUTE) (:S AGENT :O THEME :FOR ATTRIBUTE)
                (:S AGENT :O THEME)))

(define-mixin-category judgment-33.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.ATTRIBUTE JUDGMENT-33.1)
  :realization (:VERB
                ("applaud" "approve" "assail" "attack" "belittle" "berate"
                 "bless" "calumniate" "castigate" "celebrate" "censure"
                 "chasten" "chastise" "chide" "cite" "commemorate" "commend"
                 "compliment" "condemn" "congratulate" "criticize" "curse"
                 "damn" "decry" "defame" "denigrate" "denounce" "deprecate"
                 "deride" "disparage" "eulogize" "excuse" "extol" "fault"
                 "felicitate" "forgive" "glorify" "greet" "honor" "incriminate"
                 "insult" "lambaste" "lampoon" "malign" "mock" "pardon"
                 "rebuke" "recommend" "reproach" "reprove" "repudiate" "revile"
                 "reward" "ridicule" "salute" "satirize" "scold" "scorn"
                 "shame" "slander" "snub" "stigmatize" "thank" "toast"
                 "upbraid" "vilify" "welcome" "write_up")
                (:S AGENT :O THEME :AS ATTRIBUTE)))

(define-mixin-category judgment-33.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-TO-BE-NP JUDGMENT-33.1-1)
  :realization (:VERB
                ("acclaim" "doubt" "hail" "herald" "judge" "laud" "praise")
                (:S AGENT :IO THEME :OC ATTRIBUTE)))

(define-mixin-category keep-15.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.LOCATION NP-V-NP WITH-AGENT WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("hoard" "hold" "keep" "leave" "store" "stock" "stockpile")
                (:S AGENT :O THEME) (:S AGENT :O THEME :LOC LOCATION)))

(define-mixin-category knead-26.5
  :specializes subcategorization-pattern
  :mixins (NP.MATERIAL-V-PP.PRODUCT NP-V-NP.MATERIAL-PP.PRODUCT
           NP-V-NP.MATERIAL WITH-AGENT WITH-PRODUCT WITH-MATERIAL)
  :binds ((SPARSER::MATERIAL PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("ball" "beat" "bend" "coil" "collect" "compress" "contort"
                 "curve" "distort" "fold" "flex" "flux" "knead" "melt" "shake"
                 "squash" "squeeze" "squish" "twirl" "twist" "wad" "whip"
                 "wind" "work")
                (:S AGENT :O MATERIAL) (:S AGENT :O MATERIAL :INTO PRODUCT)
                (:S MATERIAL :INTO PRODUCT)))

(define-mixin-category learn-14
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE NP-V-PP.SOURCE NP-V-NP WITH-AGENT WITH-TOPIC
           WITH-SOURCE)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB NIL (:S AGENT :O TOPIC) (:S AGENT :FROM SOURCE)
                (:S AGENT :O TOPIC :FROM SOURCE)))

(define-mixin-category learn-14-1
  :specializes subcategorization-pattern
  :mixins (NP-V LEARN-14)
  :realization (:VERB ("cram" "read" "relearn" "study" "learn") (:S AGENT)))

(define-mixin-category learn-14-2
  :specializes subcategorization-pattern
  :mixins (NP-V-THAT-S NP-V-WHAT-S NP-V-PP.SOURCE-HOW-S NP-V-PP.SOURCE-WH-S_INF
           LEARN-14)
  :realization (:VERB ("absorb" "assimilate" "glean" "memorize")
                (:S AGENT :FROM SOURCE :O TOPIC) (:S AGENT :O TOPIC)))

(define-mixin-category learn-14-2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.TOPIC LEARN-14-2)
  :realization (:VERB ("learn" "read") (:S AGENT :OF TOPIC :ABOUT TOPIC)))

(define-mixin-category leave-51.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.INITIAL_LOCATION WITH-THEME WITH-SOURCE WITH-GOAL)
  :binds ((SPARSER::SOURCE PHYSICAL-AGENT) (SPARSER::THEME PHYSICAL-AGENT))
  :realization (:VERB ("abandon" "split") (:S THEME :O SOURCE)))

(define-mixin-category leave-51.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V LEAVE-51.2)
  :realization (:VERB ("desert" "leave") (:S THEME)))

(define-mixin-category lecture-37.11
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING WITH-AGENT WITH-TOPIC WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB NIL (:S AGENT :ABOUT TOPIC)))

(define-mixin-category lecture-37.11-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.TOPIC NP-V-PP.RECIPIENT-PP.TOPIC LECTURE-37.11)
  :realization (:VERB
                ("gush" "lecture" "moralize" "preach" "rant" "rave" "remark"
                 "rhapsodize" "speak" "speak_out" "speak_up" "talk" "testify"
                 "theorize" "write" "pontificate")
                (:S AGENT :TO RECIPIENT :ABOUT TOPIC) (:S AGENT :ABOUT TOPIC)
                (:S AGENT)))

(define-mixin-category lecture-37.11-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.TOPIC-S_ING LECTURE-37.11-1)
  :realization (:VERB ("elaborate" "comment") (:S AGENT :ABOUT TOPIC)))

(define-mixin-category lecture-37.11-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.TOPIC NP-V-PP.TOPIC-S_ING LECTURE-37.11)
  :realization (:VERB ("dwell") (:S AGENT :ON TOPIC) (:S AGENT :ABOUT TOPIC)))

(define-mixin-category let-64.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S WITH-AGENT WITH-BENEFICIARY WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("let") (:S AGENT :IO BENEFICIARY :OC THEME)))

(define-mixin-category light_emission-43.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION NP.LOCATION-V-PP.THEME THERE-V-NP-PP.LOCATION
           PP.LOCATION-THERE-V-NP NP-V-NP.THEME WITH-THEME HAS-LOCATION
           WITH-AGENT)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT)))
          (SPARSER::LOCATION LOCATION) (SPARSER::THEME PHYSICAL-AGENT))
  :realization (:VERB
                ("beam" "blaze" "blink" "burn" "flame" "flare" "flash"
                 "flicker" "fluoresce" "glare" "gleam" "glimmer" "glint"
                 "glisten" "glitter" "glow" "incandesce" "scintillate"
                 "shimmer" "shine" "sparkle" "twinkle")
                (:S AGENT :O THEME) (:LOC LOCATION :O THEME)
                (:O THEME :LOC LOCATION) (:S LOCATION :WITH THEME)
                (:S THEME :LOC LOCATION) (:S THEME)))

(define-mixin-category limit-76
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.GOAL NP-V-NP-S_INF WITH-CAUSE
           WITH-PATIENT WITH-GOAL)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("confine" "limit" "reduce" "restrict" "restrain" "constrain")
                (:S CAUSE :IO PATIENT :OC GOAL) (:S CAUSE :O PATIENT :TO GOAL)
                (:S CAUSE :O PATIENT)))

(define-mixin-category linger-53.1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION NP-V-PP.THEME WITH-AGENT HAS-LOCATION WITH-THEME)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("dally" "dawdle" "dither" "equivocate" "hesitate" "linger"
                 "loaf" "loiter" "pause" "potter" "procrastinate" "putter"
                 "tarry")
                (:S AGENT :OVER THEME) (:S AGENT :LOC LOCATION)))

(define-mixin-category linger-53.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP LINGER-53.1)
  :realization (:VERB ("delay" "scruple" "stall") (:S AGENT :O THEME)))

(define-mixin-category lodge-46
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION NP-V-ADV WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::THEME PHYSICAL-AGENT))
  :realization (:VERB
                ("barrack" "bivouac" "board" "bunk" "camp" "dwell" "guest"
                 "live" "lodge" "overnight" "quarter" "reside" "room" "settle"
                 "shack_up" "shelter" "sleep_over" "squat" "stay_over" "stop"
                 "stay")
                (:S THEME :O LOCATION)
                (:S THEME :AT LOCATION :IN LOCATION :WITH LOCATION)))

(define-mixin-category long-32.2
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF WITH-INSTRUMENT WITH-THEME)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization (:VERB NIL (:S INSTRUMENT :O THEME)))

(define-mixin-category long-32.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME LONG-32.2)
  :realization (:VERB
                ("ache" "crave" "die" "fall" "hanker" "hope" "hunger" "itch"
                 "long" "lust" "pine" "pray" "thirst" "wish" "yearn")
                (:S INSTRUMENT :FOR THEME)))

(define-mixin-category long-32.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME LONG-32.2)
  :realization (:VERB ("hanker" "lust" "thirst" "yearn")
                (:S INSTRUMENT :AFTER THEME)))

(define-mixin-category lure-59.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.RESULT WITH-AGENT WITH-PATIENT
           PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("allure" "attract" "bewitch" "cajole" "coax" "coerce" "draw"
                 "entice" "flatter" "inveigle" "lure" "seduce" "soothe" "talk"
                 "sweet-talk" "win_over")
                (:S AGENT :O PATIENT :INTO PREDICATE :TO PREDICATE)
                (:S AGENT :O PATIENT :INTO PREDICATE) (:S AGENT :O PATIENT)))

(define-mixin-category manner_speaking-37.3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.RECIPIENT NP-V-PP.TOPIC NP-V-NP NP-V-S-QUOTE
           NP-V-NP-PP.RECIPIENT NP-V-THAT-S NP-V-HOW-S_INF NP-V-S_INF
           NP-V-PP.RECIPIENT-THAT-S NP-V-PP.RECIPIENT-HOW-S_INF
           NP-V-PP.RECIPIENT-S_INF NP-V-PP.RECIPIENT-S-QUOTE WITH-AGENT
           WITH-TOPIC WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("babble" "bark" "bawl" "bellow" "bleat" "blubber" "boom"
                 "bray" "burble" "bluster" "cackle" "call" "carol" "chant"
                 "chatter" "chirp" "chortle" "chuckle" "cluck" "coo" "croak"
                 "croon" "crow" "cry" "drawl" "drone" "gabble" "gasp" "gibber"
                 "groan" "growl" "grumble" "grunt" "hiss" "holler" "hoot"
                 "howl" "jabber" "keen" "lilt" "lisp" "mewl" "moan" "mumble"
                 "murmur" "mutter" "nasal" "natter" "pant" "prattle" "purr"
                 "quaver" "rage" "rant" "rasp" "roar" "rumble" "scream"
                 "screech" "shout" "shriek" "sibilate" "simper" "sigh" "sing"
                 "smatter" "smile" "snap" "snarl" "snivel" "snuffle" "splutter"
                 "squall" "squawk" "squeak" "squeal" "stammer" "stemmer"
                 "stutter" "thunder" "tisk" "trill" "trumpet" "twang" "twitter"
                 "vociferate" "wail" "warble" "wheeze" "whimper" "whine"
                 "whisper" "whistle" "witter" "whoop" "yammer" "yap" "yell"
                 "yelp" "yodel" "blare" "gurgle" "hum")
                (:S AGENT :DEST_DIR RECIPIENT :O TOPIC)
                (:S AGENT :FOR RECIPIENT :O TOPIC) (:S AGENT :O TOPIC)
                (:S AGENT :O TOPIC :DEST_DIR RECIPIENT) (:S AGENT :ABOUT TOPIC)
                (:S AGENT :DEST_DIR RECIPIENT) (:S AGENT)))

(define-mixin-category marry-36.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP WITH-AGENT WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("court" "cuddle" "date" "divorce" "embrace" "hug" "kiss"
                 "marry" "neck" "nuzzle" "pet")
                (:S AGENT :O AGENT) (:S AGENT)))

(define-mixin-category marvel-31.3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.STIMULUS WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                ("die" "cheer" "cringe" "enthuse" "fume" "gladden" "madden"
                 "marvel" "rage" "sadden" "sicken" "start" "swoon" "thrill"
                 "wonder" "chafe" "bother" "fret" "mind" "moon" "stew" "stress"
                 "sulk" "worry" "flip_out" "freak_out" "go_apeshit"
                 "go_ballistic" "lose_it" "bleed" "care" "cry" "fear" "feel"
                 "grieve" "mourn" "weep" "ache" "hurt" "suffer" "bask" "exult"
                 "glory" "luxuriate" "rejoice" "revel" "wallow" "approve"
                 "beware" "despair" "disapprove" "tire" "weary" "groove"
                 "agonize" "anger" "anguish" "delight" "gloat" "hallucinate"
                 "hunger" "mope" "muse" "obsess" "puzzle" "reflect" "ruminate"
                 "salivate" "seethe" "triumph" "sorrow" "react")
                (:S EXPERIENCER :NIL STIMULUS) (:S EXPERIENCER)))

(define-mixin-category masquerade-29.6
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.ATTRIBUTE WITH-AGENT WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("behave" "count" "function" "masquerade" "officiate" "qualify"
                 "rank")
                (:S AGENT :O ATTRIBUTE)))

(define-mixin-category masquerade-29.6-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.ATTRIBUTE MASQUERADE-29.6)
  :realization (:VERB ("act" "behave") (:S AGENT :O ATTRIBUTE)))

(define-mixin-category masquerade-29.6-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-PP.ATTRIBUTE MASQUERADE-29.6)
  :realization (:VERB ("serve" "pose") (:S AGENT :IN ATTRIBUTE)
                (:S AGENT :O ATTRIBUTE)))

(define-mixin-category matter-91
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.EXPERIENCER IT-V-PP.EXPERIENCER-THAT-S IT-V-THAT-S
           THAT-S.STIMULUS-V WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER (:AND/OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("matter" "count") (:S STIMULUS) (:O STIMULUS)
                (:TO EXPERIENCER :O STIMULUS) (:S STIMULUS :TO EXPERIENCER)))

(define-mixin-category meander-47.7
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION PP.LOCATION-V-NP THERE-V-PP-NP THERE-V-NP-PP
           HAS-LOCATION WITH-THEME)
  :binds ((SPARSER::LOCATION PHYSICAL))
  :realization (:VERB
                ("angle" "cascade" "crawl" "crest" "cross" "cut" "dive" "edge"
                 "emerge" "fall" "go" "lance" "mount" "pass" "round" "skirt"
                 "straggle" "stretch" "sweep" "tumble" "wander" "weave" "wind"
                 "range" "veer" "zag" "zig")
                (:O THEME :PATH LOCATION) (:PATH LOCATION :O THEME)
                (:S THEME :PATH LOCATION)))

(define-mixin-category meander-47.7-1
  :specializes subcategorization-pattern
  :mixins (NP-V MEANDER-47.7)
  :realization (:VERB
                ("ascend" "bend" "climb" "converge" "crisscross" "descend"
                 "dip" "drop" "meander" "plummit" "plunge" "rise" "run" "slant"
                 "snake" "turn" "twist" "undulate" "swerve" "zigzag")
                (:S THEME)))

(define-mixin-category meet-36.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB NIL))

(define-mixin-category meet-36.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V-NP NP-V MEET-36.3)
  :realization (:VERB
                ("consult" "deliberate" "meet" "play" "remonstrate" "reunite"
                 "visit")
                (:S AGENT) (:S AGENT :O AGENT) (:S AGENT :WITH AGENT)))

(define-mixin-category meet-36.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V-NP NP-V MEET-36.3)
  :realization (:VERB ("battle" "box" "debate" "fight") (:S AGENT)
                (:S AGENT :O AGENT) (:S AGENT :WITH AGENT)))

(define-mixin-category mine-10.9
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INITIAL_LOCATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION LOCATION) (SPARSER::SOURCE LOCATION)
          (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("mine" "quarry") (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :O THEME)))

(define-mixin-category mix-22.1
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-PATIENT WITH-CO-PATIENT)
  :binds ((SPARSER::CO-PATIENT PHYSICAL) (SPARSER::PATIENT PHYSICAL))
  :realization (:VERB NIL))

(define-mixin-category mix-22.1-1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP-PP.CO-PATIENT NP-V-NP NP-V-NP-NP-TOGETHER
           NP-V-PP.CO-PATIENT NP-V-ADVP-MIDDLE-PP NP-V-ADVP-MIDDLE
           NP-NP-V-ADVP-MIDDLE-TOGETHER MIX-22.1)
  :realization (:VERB
                ("admix" "consolidate" "intermix" "scramble" "tumble" "cream")
                (:S PATIENT (:M ADVERB))
                (:S PATIENT (:M ADVERB) :WITH CO-PATIENT :INTO CO-PATIENT :TO
                 CO-PATIENT)
                (:S PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO CO-PATIENT)
                (:S AGENT :O PATIENT)
                (:S AGENT :O PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO
                 CO-PATIENT)))

(define-mixin-category mix-22.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-NP-V-TOGETHER MIX-22.1-1)
  :realization (:VERB
                ("amalgamate" "blend" "coalesce" "combine" "compound"
                 "commingle" "decoct" "fuse" "meld" "merge" "mingle" "mix"
                 "recombine")
                (:S PATIENT)))

(define-mixin-category mix-22.1-2
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP-PP.CO-PATIENT NP-V-NP NP-V-NP-TOGETHER
           NP-V-ADVP-MIDDLE-PP NP-V-ADVP-MIDDLE MIX-22.1)
  :realization (:VERB ("add" "tie") (:S PATIENT (:M ADVERB))
                (:S PATIENT (:M ADVERB) :WITH CO-PATIENT :INTO CO-PATIENT :TO
                 CO-PATIENT)
                (:S AGENT :O PATIENT)
                (:S AGENT :O PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO
                 CO-PATIENT)))

(define-mixin-category mix-22.1-2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.PATIENT NP-V NP-V-TOGETHER MIX-22.1-2)
  :realization (:VERB
                ("connect" "join" "link" "pair" "pool" "network" "rejoin"
                 "unite")
                (:S PATIENT)
                (:S PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO CO-PATIENT)))

(define-mixin-category modes_of_being_with_motion-47.3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION THERE-V-NP PP.LOCATION-V-NP NP-V-NP.THEME
           WITH-AGENT WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION))
          (SPARSER::THEME PHYSICAL))
  :realization (:VERB
                ("bob" "bow" "circulate" "creep" "dance" "drift" "eddy"
                 "falter" "flap" "float" "flutter" "hover" "jiggle" "joggle"
                 "oscillate" "pulsate" "pulse" "quake" "quiver" "recirculate"
                 "revolve" "rock" "rotate" "shake" "stir" "swag" "sway" "swirl"
                 "teeter" "throb" "totter" "tremble" "undulate" "vacillate"
                 "vibrate" "waft" "wave" "waver" "wiggle" "wobble" "worm"
                 "writhe" "roil")
                (:S AGENT :O THEME) (:LOC LOCATION :O THEME) (:O THEME)
                (:S THEME :LOC LOCATION) (:S THEME)))

(define-mixin-category multiply-108
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("sum" "add" "tally" "count") (:S AGENT :O THEME)))

(define-mixin-category multiply-108-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-THEME MULTIPLY-108)
  :realization (:VERB ("multiply" "divide") (:S AGENT :O THEME :BY THEME)))

(define-mixin-category multiply-108-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-THEME MULTIPLY-108)
  :realization (:VERB
                ("deduct" "factor_out" "interpolate" "extrapolate" "subtract")
                (:S AGENT :O THEME :FROM THEME)))

(define-mixin-category multiply-108-3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-THEME MULTIPLY-108)
  :realization (:VERB ("average") (:S AGENT :O THEME :OVER THEME)))

(define-mixin-category murder-42.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT) (SPARSER::PATIENT PHYSICAL-AGENT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("annihilate" "assassinate" "bushwhack" "butcher" "dispatch"
                 "eliminate" "euthanize" "execute" "exterminate" "immolate"
                 "liquidate" "lynch" "massacre" "murder" "off" "slaughter"
                 "slay")
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)))

(define-mixin-category murder-42.1-1
  :specializes subcategorization-pattern
  :mixins (NP.INSTRUMENT-V-NP WITH-INSTRUMENT MURDER-42.1)
  :binds ((SPARSER::INSTRUMENT PHYSICAL))
  :realization (:VERB ("kill" "kill-off") (:S INSTRUMENT :O PATIENT)))

(define-mixin-category neglect-75.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("disregard" "forgo" "forego" "ignore" "leave_out" "overleap"
                 "overlook")
                (:S AGENT :O THEME)))

(define-mixin-category neglect-75.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF NEGLECT-75.1)
  :realization (:VERB ("fail" "neglect" "omit") (:S AGENT :O THEME)))

(define-mixin-category nonvehicle-51.4.2
  :specializes subcategorization-pattern
  :mixins (NP.AGENT-V NP-V-PP.LOCATION NP-V-NP-PP.LOCATION NP-V-NP
           NP-V-NP.LOCATION WITH-AGENT WITH-THEME WITH-PATH)
  :binds ((SPARSER::PATH PHYSICAL) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("oar" "paddle" "pedal" "ride" "row") (:S AGENT :O PATH)
                (:S AGENT :O THEME) (:S AGENT :O THEME :PATH PATH)
                (:S AGENT :PATH PATH) (:S AGENT)))

(define-mixin-category nonvehicle-51.4.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP NONVEHICLE-51.4.2)
  :realization (:VERB
                ("cruise" "drive" "fly" "navigate" "sail" "tack" "voyage"
                 "wing")
                (:S THEME :O PATH)))

(define-mixin-category nonverbal_expression-40.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP NP-V-PP.THEME NP-V-PP.RECIPIENT WITH-AGENT WITH-THEME
           WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("beam" "blubber" "cackle" "chortle" "chuckle" "cough" "cry"
                 "frown" "gape" "gasp" "gawk" "giggle" "glare" "glower"
                 "goggle" "grimace" "grin" "groan" "growl" "guffaw" "howl"
                 "jeer" "laugh" "lour" "moan" "pout" "scoff" "scowl" "sigh"
                 "simper" "smile" "smirk" "sneer" "sneeze" "snicker" "sniff"
                 "snigger" "snivel" "snore" "snort" "sob" "titter" "weep"
                 "whistle" "yawn" "hem")
                (:S AGENT :DEST_DIR RECIPIENT) (:S AGENT :IN THEME)
                (:S AGENT :O THEME) (:S AGENT)))

(define-mixin-category obtain-13.5.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE WITH-AGENT WITH-THEME WITH-SOURCE)
  :binds ((SPARSER::SOURCE PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("accept" "accrue" "accumulate" "appropriate" "borrow" "cadge"
                 "commandeer" "collect" "exact" "grab" "inherit" "make"
                 "receive" "recoup" "recover" "regain" "retrieve" "seize"
                 "select" "snatch" "source" "subselect" "arrogate" "hijack")
                (:S AGENT :O THEME :FROM SOURCE) (:S AGENT :O THEME)))

(define-mixin-category obtain-13.5.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.ASSET NP.ASSET-V-NP WITH-EXTENT OBTAIN-13.5.2)
  :binds ((SPARSER::EXTENT CURRENCY))
  :realization (:VERB ("acquire" "obtain" "purchase") (:S EXTENT :O THEME)
                (:S AGENT :O THEME :FOR EXTENT)))

(define-mixin-category occur-48.3
  :specializes subcategorization-pattern
  :mixins (NP-V THERE-V-NP NP-V-PP WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION))
  :realization (:VERB ("go_on" "fall" "recur" "take_place")
                (:S THEME :|| LOCATION) (:O THEME) (:S THEME)))

(define-mixin-category occur-48.3-1
  :specializes subcategorization-pattern
  :mixins (IT-V-THAT-S OCCUR-48.3)
  :realization (:VERB
                ("befall" "chance" "develop" "ensue" "eventuate" "follow"
                 "happen" "occur" "pass" "result" "transpire")
                (:O THEME)))

(define-mixin-category occur-48.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V-ADV OCCUR-48.3)
  :realization (:VERB ("go" "go_over" "go_off" "go_down" "come_off") (:S THEME)))

(define-mixin-category orbit-51.9.2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION WITH-THEME WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization (:VERB ("orbit" "revolve" "rotate" "twirl")
                (:S THEME :PATH INSTRUMENT)))

(define-mixin-category order-58.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-S WITH-AGENT WITH-PATIENT WITH-RESULT)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("announce" "declare" "demand" "mandate")
                (:S AGENT :O RESULT)))

(define-mixin-category order-58.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING ORDER-58.3)
  :realization (:VERB ("authorize" "command" "commission" "order" "require")
                (:S AGENT :IO PATIENT :OC RESULT)))

(define-mixin-category orphan-29.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB
                ("apprentice" "beggar" "cripple" "cuckold" "knight" "martyr"
                 "orphan" "outlaw" "pauper" "recruit" "whore" "widow")
                (:S AGENT :O THEME)))

(define-mixin-category other_cos-45.4
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP.PATIENT NP-V-NP-PP.INSTRUMENT NP.PATIENT-V
           NP-V-ADV-MIDDLE NP.INSTRUMENT-V-NP WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization (:VERB
                ("abate" "abbreviate" "abrade" "abridge" "accelerate" "acetify"
                 "acidify" "activate" "advance" "age" "agglomerate" "air"
                 "alkalify" "alkalize" "alter" "ameliorate" "americanize"
                 "amplify" "anglicize" "atomize" "attenuate" "augment"
                 "balance" "blacken" "beautify" "bifurcate" "bisect" "bleach"
                 "blunt" "blur" "bolshevize" "brighten" "broaden" "burn"
                 "burst" "calcify" "capsize" "caramelize" "carbonize"
                 "centralize" "change" "char" "cheapen" "cheer_up" "chill"
                 "civilize" "clarify" "clean" "clear" "clog" "close" "cloud"
                 "coagulate" "coarsen" "collapse" "collect" "combust"
                 "compress" "compact" "condense" "congeal" "contract"
                 "constrict" "cool" "corrode" "corrugate" "corrupt" "crimson"
                 "crisp" "crumble" "crystallize" "curdle" "dampen" "darken"
                 "de-escalate" "decelerate" "decentralize" "decompress"
                 "decrease" "deepen" "deflate" "deflect" "defrost" "degenerate"
                 "degrade" "dehydrate" "demagnetize" "democratize"
                 "depressurize" "derail" "desiccate" "destabilize"
                 "deteriorate" "detonate" "devalue" "diffuse" "dilate" "dilute"
                 "dim" "diminish" "dirty" "disband" "discolor" "disintegrate"
                 "disperse" "dissipate" "dissolve" "diversify" "divide"
                 "double" "downshift" "drain" "dull" "ease" "effeminate"
                 "emaciate" "empty" "emulsify" "energize" "enlarge" "equalize"
                 "equilibrate" "escalate" "evaporate" "even" "exfoliate"
                 "expand" "explode" "fade" "fatten" "federate" "feminize"
                 "fill" "firm" "flatten" "flood" "fluff" "fossilize" "fray"
                 "freckle" "freshen" "frost" "fructify" "fuse" "gasify"
                 "gelatinize" "gentrify" "germanize" "gladden" "globalize"
                 "glutenize" "granulate" "gray" "grow" "halt" "harden"
                 "harmonize" "hasten" "heal" "heat" "heighten" "hellenize"
                 "hush" "hybridize" "hydrolize" "hydrate" "ignite" "improve"
                 "increase" "incubate" "indurate" "industrialize" "inflate"
                 "intensify" "internationalize" "ionize" "kindle" "laminate"
                 "lengthen" "lessen" "level" "levitate" "liberalize" "lignify"
                 "liquefy" "liquify" "liven" "loop" "loose" "loosen" "macerate"
                 "mature" "mellow" "metabolize" "mitigate" "mobilize"
                 "moderate" "modernize" "modify" "modulate" "moisten"
                 "multiply" "mummify" "narrow" "nationalize" "naturalize"
                 "neutralize" "normalize" "occlude" "open" "operate" "ossify"
                 "overturn" "oxidize" "pale" "petrify" "plump" "polarize"
                 "polymerize" "pop" "privatize" "proliferate" "propagate"
                 "pulverize" "puncture" "purify" "purple" "putrefy" "quadruple"
                 "quicken" "quiet" "quieten" "rarefy" "redden" "redouble"
                 "refine" "reform" "rekindle" "renew" "reopen" "replicate"
                 "reproduce" "resuscitate" "reverse" "revive" "ripen" "root"
                 "roughen" "rupture" "saponify" "scorch" "sear" "section"
                 "sensitize" "sharpen" "short" "short-circuit" "shorten"
                 "shrink" "shrivel" "shush" "shut" "sicken" "silicify" "silver"
                 "sink" "slack" "slacken" "slim" "slow" "smarten" "smooth"
                 "smoothen" "soak" "sober" "soften" "solidify" "sour" "souse"
                 "sprout" "stabilize" "standardize" "steady" "steep" "steepen"
                 "stiffen" "stratify" "strangulate" "strengthen" "submerge"
                 "sunburn" "sweeten" "tame" "tan" "taper" "tatter" "tauten"
                 "tenderize" "tense" "thicken" "thin" "tighten" "tilt" "tire"
                 "tone" "topple" "toughen" "tranquilize" "treble" "trip"
                 "triple" "turn-on" "turn-off" "ulcerate" "unionize" "upload"
                 "vaporize" "vary" "vibrate" "vitrify" "volatilize" "vulcanize"
                 "wake" "waken" "warm" "weaken" "westernize" "wet" "whiten"
                 "wizen" "widen" "worsen" "yellow")
                (:S INSTRUMENT :O PATIENT) (:S PATIENT (:M ADVERB))
                (:S PATIENT) (:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT)))

(define-mixin-category other_cos-45.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJ OTHER_COS-45.4)
  :realization (:VERB ("awake" "awaken" "dry" "freeze" "melt" "set" "thaw")
                (:S PATIENT :O RESULT)))

(define-mixin-category overstate-37.12
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("overstate" "overdraw" "hyperbolize" "magnify" "amplify"
                 "overemphasize" "overrate" "overstress" "tout" "glorify")
                (:S AGENT :O THEME)))

(define-mixin-category own-100.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-INSTRUMENT WITH-THEME)
  :binds ((SPARSER::INSTRUMENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("have" "hold" "own" "possess") (:S INSTRUMENT :O THEME)))

(define-mixin-category pain-40.8.1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP.EXPERIENCER NP-V-PP.STIMULUS WITH-EXPERIENCER
           WITH-PATIENT WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                ("ail" "bother" "burn" "hurt" "itch" "kill" "pain" "wrench")
                (:S PATIENT :FROM STIMULUS) (:S PATIENT :O EXPERIENCER)
                (:S PATIENT)))

(define-mixin-category patent-101
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("copyright" "patent" "trademark" "license" "register"
                 "certify" "credential" "accredit" "verify" "evidence"
                 "imitate" "impersonate")
                (:S AGENT :O THEME)))

(define-mixin-category pay-68
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V-NP WITH-AGENT WITH-EXTENT WITH-THEME)
  :binds ((SPARSER::EXTENT CURRENCY)
          (SPARSER::AGENT (:AND/OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("spend" "squander" "waste" "serve") (:S AGENT :O EXTENT)
                (:S AGENT :O EXTENT :FOR THEME)))

(define-mixin-category pay-68-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP-PP.THEME NP-V-NP-NP WITH-RECIPIENT PAY-68)
  :realization (:VERB ("pay" "repay" "tithe")
                (:S AGENT :IO RECIPIENT :OC EXTENT)
                (:S AGENT :IO RECIPIENT :OC EXTENT :FOR THEME)))

(define-mixin-category peer-30.3
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("attend" "check" "eavesdrop" "gape" "gawk" "gaze" "glance"
                 "glare" "goggle" "leer" "listen" "look" "ogle" "peek" "peep"
                 "peer" "sniff" "snoop" "squint" "stare")
                (:S AGENT :SPATIAL THEME)))

(define-mixin-category pelt-17.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V-NP WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL) (SPARSER::SOURCE PHYSICAL)
          (SPARSER::THEME PHYSICAL))
  :realization (:VERB
                ("bombard" "buffet" "pelt" "pepperspray" "shell" "shower"
                 "stone")
                (:S AGENT :O DESTINATION) (:S AGENT :O DESTINATION :WITH THEME)))

(define-mixin-category performance-26.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V NP-V-NP-PP.BENEFICIARY WITH-AGENT WITH-THEME
           WITH-BENEFICIARY)
  :binds ((SPARSER::BENEFICIARY PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("belt" "chant" "direct" "enact" "heel" "improvise" "intone"
                 "model" "perform" "rap" "vocalize")
                (:S AGENT :O THEME :FOR BENEFICIARY) (:S AGENT)
                (:S AGENT :O THEME)))

(define-mixin-category performance-26.7-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.BENEFICIARY-NP PERFORMANCE-26.7)
  :realization (:VERB
                ("dance" "hum" "play" "recite" "replay" "stage" "sing"
                 "whistle")
                (:S AGENT :IO BENEFICIARY :OC THEME)))

(define-mixin-category pit-10.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL) (SPARSER::SOURCE PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("bark" "beard" "bone" "burl" "core" "gill" "gut" "head" "hull"
                 "husk" "lint" "louse" "milk" "peel" "pinion" "pip" "pit"
                 "pith" "pod" "poll" "pulp" "rind" "scale" "scalp" "seed"
                 "shell" "shuck" "skin" "snail" "stalk" "stem" "stone" "string"
                 "tail" "tassel" "vein" "weed" "wind" "worm" "zest")
                (:S AGENT :O SOURCE)))

(define-mixin-category play-114.2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V WITH-AGENT WITH-AGENT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("frolic" "recreate") (:S AGENT) (:S AGENT :WITH AGENT)))

(define-mixin-category play-114.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME NP-V-NP-PP.CO-AGENT NP-V-NP WITH-THEME PLAY-114.2)
  :realization (:VERB ("play") (:S AGENT :O THEME)
                (:S AGENT :O THEME :WITH AGENT) (:S AGENT :O AGENT)
                (:S AGENT :WITH THEME)))

(define-mixin-category pocket-9.10
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME NP-V-NP-PP.DESTINATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL) (SPARSER::SOURCE PHYSICAL)
          (SPARSER::THEME PHYSICAL) (SPARSER::AGENT (:OR NIL COMPANY)))
  :realization (:VERB
                ("archive" "bag" "bank" "barrack" "beach" "bed" "bench"
                 "billet" "bin" "bottle" "box" "cage" "can" "case" "cellar"
                 "cloister" "coop" "corral" "crate" "cup" "file" "fork"
                 "garage" "hangar" "house" "imprison" "jail" "jar" "jug"
                 "kennel" "pasture" "pen" "pillory" "pocket" "pot" "sheathe"
                 "shelve" "shoulder" "skewer" "snare" "spindle" "spit" "spool"
                 "string" "tassel" "tin" "trap" "tree" "warehouse" "wharf")
                (:S AGENT :O THEME :IN DESTINATION :ON DESTINATION :UNDER
                 DESTINATION)
                (:S AGENT :O THEME)))

(define-mixin-category pocket-9.10-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.DESTINATION NP-V NP-V-ADVP POCKET-9.10)
  :realization (:VERB
                ("berth" "dock" "drydock" "land" "moor" "ground" "lodge"
                 "stable")
                (:S THEME :O DESTINATION) (:S THEME)
                (:S THEME :IN DESTINATION :ON DESTINATION :UNDER DESTINATION)))

(define-mixin-category poison-42.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-ADJ NP-V-NP-PP.RESULT NP-V-NP-PP.INSTRUMENT
           WITH-AGENT WITH-PATIENT WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT OBJECT) (SPARSER::PATIENT PHYSICAL-AGENT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("asphyxiate" "behead" "bullet" "crucify" "dart" "decapitate"
                 "disembowel" "drown" "electrocute" "evicerate" "fry" "gas"
                 "garrotte" "hang" "impale" "knife" "pip" "poison" "shoot"
                 "smother" "stab" "stone" "strangle" "strangulate" "suffocate"
                 "throttle")
                (:S AGENT :O PATIENT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S AGENT :IO PATIENT :OC RESULT) (:S AGENT :O PATIENT)))

(define-mixin-category poke-19
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.PATIENT NP-V-NP-PP.INSTRUMENT NP-V-PP NP-V-PP-PP
           NP.INSTRUMENT-V-NP WITH-AGENT WITH-PATIENT WITH-INSTRUMENT)
  :binds ((SPARSER::PATIENT PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB ("dig" "jab" "pierce" "poke" "prick" "stab" "stick")
                (:S INSTRUMENT :O PATIENT)
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)
                (:S AGENT :O INSTRUMENT :THROUGH PATIENT :INTO PATIENT)))

(define-mixin-category pour-9.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION NP-V-NP-ADVP NP-V-PP.DESTINATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION
           NP-V-PP.INITIAL_LOCATION-PP.DESTINATION WITH-AGENT WITH-THEME
           WITH-DESTINATION WITH-SOURCE)
  :binds ((SPARSER::SOURCE (:AND/OR LOCATION REGION))
          (SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::THEME (:OR NIL PHYSICAL COLLECTION))
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("dribble" "drip" "pour" "slop" "slosh" "spew" "spill"
                 "trickle")
                (:S THEME :SRC SOURCE :DEST_CONF DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE :DEST_CONF DESTINATION)
                (:S THEME :PATH DESTINATION)
                (:S AGENT :IO THEME :OC DESTINATION)
                (:S AGENT :O THEME :PATH DESTINATION)))

(define-mixin-category preparing-26.3
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-BENEFICIARY)
  :binds ((SPARSER::BENEFICIARY PHYSICAL-AGENT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB NIL))

(define-mixin-category preparing-26.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP.BENEFICIARY-NP NP-V-NP-PP.BENEFICIARY WITH-PRODUCT
           PREPARING-26.3)
  :binds ((SPARSER::PRODUCT PHYSICAL))
  :realization (:VERB
                ("bake" "blend" "brew" "clear" "cook" "cook_up" "fix" "invent"
                 "kindle" "light" "mix" "prepare" "ready" "roll" "run" "toss"
                 "cultivate")
                (:S AGENT :O PRODUCT :FOR BENEFICIARY)
                (:S AGENT :IO BENEFICIARY :OC PRODUCT) (:S AGENT :O PRODUCT)))

(define-mixin-category preparing-26.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP.BENEFICIARY-NP NP-V-NP-PP.BENEFICIARY WITH-PATIENT
           PREPARING-26.3)
  :binds ((SPARSER::PATIENT PHYSICAL))
  :realization (:VERB
                ("barbeque" "barbecue" "boil" "broil" "clean" "fry" "grill"
                 "hardboil" "iron" "microwave" "overbake" "poach" "pour"
                 "roast" "scramble" "set" "softboil" "toast" "wash" "weld")
                (:S AGENT :O PATIENT :FOR BENEFICIARY)
                (:S AGENT :IO BENEFICIARY :OC PATIENT) (:S AGENT :O PATIENT)))

(define-mixin-category price-54.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.VALUE WITH-AGENT WITH-THEME WITH-PATH)
  :binds ((SPARSER::PATH CURRENCY) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("appraise" "approximate" "assess" "auction" "calibrate"
                 "estimate" "fix" "gauge" "meter" "overestimate" "peg" "price"
                 "rate" "reappraise" "value")
                (:S AGENT :O THEME :AT PATH) (:S AGENT :O THEME)))

(define-mixin-category promise-37.13
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP-THAT-S NP-V-S_ING NP-V-PP.RECIPIENT-THAT-S
           NP-V-THAT-S WITH-AGENT WITH-RECIPIENT WITH-TOPIC)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("assure" "guarantee" "promise" "ascertain")
                (:S AGENT :O TOPIC) (:S AGENT :TO RECIPIENT :O TOPIC)
                (:S AGENT :IO RECIPIENT :OC TOPIC)))

(define-mixin-category promote-102
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-S_ING WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("promote" "advance" "boost" "further" "encourage" "invite"
                 "emphasize" "underscore")
                (:S AGENT :O THEME)))

(define-mixin-category pronounce-29.3.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP NP-V-NP-PP.ATTRIBUTE NP-V-NP-ADVP WITH-AGENT WITH-THEME
           WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB ("pronounce" "say" "spell")
                (:S AGENT :IO THEME :OC ATTRIBUTE)
                (:S AGENT :O THEME :WITH ATTRIBUTE :IN ATTRIBUTE)))

(define-mixin-category prosecute-33.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.THEME WITH-AGENT WITH-PATIENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR NIL COMPANY)))
  :realization (:VERB
                ("book" "bust" "collar" "impeach" "nab" "penalize" "report"
                 "sanction")
                (:S AGENT :O PATIENT :FOR THEME) (:S AGENT :O PATIENT)))

(define-mixin-category prosecute-33.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.ATTRIBUTE NP-V-NP-PP.THEME-PP.ATTRIBUTE
           NP-V-NP-PP.ATTRIBUTE-PP.THEME WITH-ATTRIBUTE PROSECUTE-33.2)
  :realization (:VERB
                ("arrest" "indict" "persecute" "prosecute" "punish" "try")
                (:S AGENT :O PATIENT :AS ATTRIBUTE :FOR PATIENT)
                (:S AGENT :O PATIENT :AS ATTRIBUTE)))

(define-mixin-category push-12
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME WITH-PATH WITH-RESULT)
  :binds ((SPARSER::THEME PHYSICAL) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("heave") (:S AGENT :O THEME)))

(define-mixin-category push-12-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJP-RESULT NP-V-PP-CONATIVE PUSH-12)
  :realization (:VERB ("jerk" "pull" "tug" "yank")
                (:S AGENT :AT THEME :AGAINST THEME :ON THEME)
                (:S AGENT :IO THEME :OC RESULT)))

(define-mixin-category push-12-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP NP-V-PP.TRAJECTORY PUSH-12-1)
  :realization (:VERB
                ("jostle" "nudge" "press" "push" "shove" "squeeze" "thrust")
                (:S AGENT :DIR PATH) (:S AGENT)))

(define-mixin-category put-9.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION NP-V-NP-ADVP WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("arrange" "emplace" "immerse" "implant" "lodge" "mount"
                 "position" "situate" "sling" "station" "superimpose" "tack_on"
                 "wharf")
                (:S AGENT :IO THEME :OC DESTINATION)
                (:S AGENT :O THEME :LOC DESTINATION)))

(define-mixin-category put-9.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP PUT-9.1)
  :realization (:VERB
                ("apply" "bury" "build-in" "deposit" "embed" "insert" "install"
                 "park" "plant" "reinstall" "stash" "stow")
                (:S AGENT :O THEME)))

(define-mixin-category put-9.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.DESTINATION-NP WITH-THEME PUT-9.1)
  :binds ((SPARSER::THEME ABSTRACT))
  :realization (:VERB ("place" "put" "set" "stick")
                (:S AGENT :ON DESTINATION :UPON DESTINATION :O THEME)))

(define-mixin-category put_direction-9.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION NP-V-NP-ADVP WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("drop" "drive" "elevate" "heel" "hoist" "lift" "lower" "raise"
                 "back")
                (:S AGENT :IO THEME :OC DESTINATION)
                (:S AGENT :O THEME :SPATIAL DESTINATION) (:S AGENT :O THEME)))

(define-mixin-category put_spatial-9.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION NP-V-NP-ADVP WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("lay" "prop" "underlay")
                (:S AGENT :IO THEME :OC DESTINATION)
                (:S AGENT :O THEME :LOC DESTINATION)))

(define-mixin-category put_spatial-9.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.DESTINATION NP-V-ADVP PUT_SPATIAL-9.2)
  :realization (:VERB
                ("dangle" "hang" "lean" "perch" "rest" "sit" "stand" "suspend")
                (:S THEME :O DESTINATION) (:S THEME :LOC DESTINATION)))

(define-mixin-category reach-51.8
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-THEME WITH-GOAL)
  :binds ((SPARSER::THEME (:AND/OR PHYSICAL COMPANY)))
  :realization (:VERB ("reach" "hit" "make" "breast") (:S THEME :O GOAL)))

(define-mixin-category rear-26.2.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PRODUCT)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB ("grow" "nurture" "raise" "rear") (:S AGENT :O PATIENT)))

(define-mixin-category rear-26.2.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.MATERIAL-PP.PRODUCT WITH-MATERIAL REAR-26.2.2)
  :binds ((SPARSER::MATERIAL PHYSICAL))
  :realization (:VERB ("cultivate" "farm") (:S AGENT :IO MATERIAL :OC PRODUCT)))

(define-mixin-category reciprocate-112
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP WITH-AGENT WITH-THEME PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB ("return") (:S AGENT :IO THEME :OC PREDICATE)
                (:S AGENT :O THEME)))

(define-mixin-category reciprocate-112-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP RECIPROCATE-112)
  :realization (:VERB ("answer" "reciprocate") (:S AGENT :O PREDICATE)
                (:S AGENT)))

(define-mixin-category reflexive_appearance-48.1.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RECIPIENT NP-V-NP WITH-THEME WITH-AGENT WITH-RECIPIENT
           REFLEXIVE)
  :binds ((SPARSER::PRONOUN PRONOUN) (SPARSER::RECIPIENT PHYSICAL-AGENT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("announce" "assert" "declare" "define" "display" "exhibit"
                 "expose" "express" "flaunt" "form" "intrude" "manifest"
                 "offer" "pose" "present" "proffer" "propose" "reassert"
                 "recommend" "reveal" "shape" "show" "suggest")
                (:S THEME :O PRONOUN) (:S AGENT :O THEME :TO RECIPIENT)
                (:S AGENT :O THEME)))

(define-mixin-category refrain-69
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.THEME-S_ING NP-V-PP.THEME-S WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("refrain" "abstain" "desist" "forbear")
                (:S AGENT :FROM THEME) (:S AGENT)))

(define-mixin-category register-54.1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.VALUE WITH-THEME WITH-PATH)
  :realization (:VERB ("come" "amount") (:S THEME :AT PATH :|\|| PATH :TO PATH)))

(define-mixin-category register-54.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.VALUE WITH-AGENT WITH-ATTRIBUTE REGISTER-54.1)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB ("time" "mistime") (:S AGENT :O ATTRIBUTE :AT PATH)
                (:S AGENT :O THEME :AT PATH) (:S AGENT :O THEME)))

(define-mixin-category register-54.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.VALUE REGISTER-54.1-1)
  :realization (:VERB ("clock" "measure" "read" "register" "total" "weigh")
                (:S THEME :O PATH)))

(define-mixin-category rehearse-26.8
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-S_ING WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("walk_through" "repeat") (:S AGENT :O THEME)))

(define-mixin-category rehearse-26.8-1
  :specializes subcategorization-pattern
  :mixins (NP-V REHEARSE-26.8)
  :realization (:VERB ("exercise" "practice" "rehearse") (:S AGENT)))

(define-mixin-category reject-77.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-S_ING WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("decline" "rebuff" "refuse" "turn-down")
                (:S AGENT :O THEME)))

(define-mixin-category reject-77.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-WHAT-S REJECT-77.2)
  :realization (:VERB
                ("discourage" "dismiss" "disparage" "disprefer" "pooh_pooh"
                 "reject")
                (:S AGENT :O THEME)))

(define-mixin-category relate-86.2
  :specializes subcategorization-pattern
  :mixins (WITH-THEME WITH-THEME)
  :realization (:VERB NIL))

(define-mixin-category relate-86.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP RELATE-86.2)
  :realization (:VERB ("involve" "concern" "touch" "bear_on" "touch_on")
                (:S THEME :O THEME)))

(define-mixin-category relate-86.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-THEME RELATE-86.2)
  :realization (:VERB ("refer" "pertain" "relate") (:S THEME :TO THEME)))

(define-mixin-category rely-70
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME-NP-S_ING NP-V-PP.THEME-S_INF NP-V-PP.THEME-S_ING
           NP-V-PP.THEME WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("rely" "depend" "bank" "bargain" "count" "figure" "reckon"
                 "bet" "gamble" "take_a_chance" "wager")
                (:S AGENT :ON THEME)))

(define-mixin-category remedy-45.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.PATIENT NP-V-NP-PP.INSTRUMENT WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization (:VERB
                ("abase" "africanize" "alcoholize" "alleviate" "anesthetize"
                 "animate" "backfill" "bastardize" "bedew" "blast" "blemish"
                 "bloody" "botch" "bowdlerize" "bring-out" "bring-up" "bungle"
                 "capacitate" "carbonify" "castrate" "catholicize" "cauterize"
                 "chamfer" "chlorinate" "christianize" "circumcise"
                 "circumscribe" "coif" "commercialize" "configure" "constipate"
                 "constringe" "construct" "contextualize" "correct"
                 "counteract" "cremate" "deafen" "debase" "deconstruct"
                 "dehumidify" "delineate" "demean" "dement" "demobilize"
                 "desalinate" "desensitize" "diffract" "disable" "dishevel"
                 "disinfect" "disinter" "dispel" "dislocate" "disorganize"
                 "edify" "emasculate" "embitter" "embrocate" "enhance"
                 "enunciate" "eternalize" "eternize" "europeanize" "exacerbate"
                 "exhume" "expropriate" "fanaticize" "federalize" "fertilize"
                 "flouridate" "fortify" "grade" "humanize" "humidify"
                 "hydrogenate" "ice" "immortalize" "inactivate" "incinerate"
                 "inseminate" "inspissate" "invert" "iodize" "light" "manure"
                 "marginalize" "mechanize" "medicate" "militarize" "mineralize"
                 "miniaturize" "minimize" "mishandle" "mismanage" "motorize"
                 "muddy" "mummify" "mute" "nasalize" "nitrify" "objectify"
                 "obscure" "obviate" "overshadow" "oxygenate" "paralyze"
                 "pasteurize" "perfect" "perpetuate" "pink" "pollard"
                 "popularize" "prejudge" "prettify" "publicize" "raise"
                 "reanimate" "rectify" "redact" "refract" "regularize"
                 "remaster" "remedy" "repair" "revise" "secularize"
                 "sensationalize" "shortchange" "silence" "singe" "sinter"
                 "sovietize" "sterilize" "streamline" "subvert" "sulfurize"
                 "tabulate" "taiwanize" "tart up" "tousle" "traumatize"
                 "truncate" "trivialize" "turn-up" "turn-down" "underfeed"
                 "urbanize" "ventilate" "vulgarize")
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)))

(define-mixin-category remedy-45.7-1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-ADV-MIDDLE REMEDY-45.7)
  :realization (:VERB
                ("categorize" "conflate" "domesticate" "extinguish" "halve"
                 "homogenize" "lighten" "magnetize" "magnify" "transplant"
                 "upload")
                (:S PATIENT (:M ADVERB))))

(define-mixin-category remove-10.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-GOAL)
  :binds ((SPARSER::GOAL LOCATION) (SPARSER::SOURCE LOCATION)
          (SPARSER::AGENT (:OR NIL COMPANY)))
  :realization (:VERB
                ("abolish" "abstract" "cull" "cut-off" "deburr" "deduct"
                 "delete" "depose" "disgorge" "dislodge" "disengage" "draw"
                 "eject" "eliminate" "eradicate" "excise" "excommunicate"
                 "expel" "extirpate" "extract" "extrude" "kill" "lop" "lose"
                 "omit" "ostracize" "partition" "pry" "pull" "reap" "ream"
                 "render" "retract" "roust" "separate" "shoo" "strip"
                 "subtract" "take" "take_away" "take_out" "take_off" "uproot"
                 "winkle" "wrench" "withdraw" "oust" "discharge" "dismiss"
                 "evict" "remove" "sever" "extinguish" "prise")
                (:S AGENT :O THEME :SRC SOURCE) (:S AGENT :O THEME)))

(define-mixin-category render-29.90
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJP NP-V-ADJP-NP WITH-CAUSE WITH-PATIENT WITH-RESULT)
  :realization (:VERB ("drive" "render" "take" "leave")
                (:S CAUSE :IO RESULT :OC PATIENT)
                (:S AGENT :IO PATIENT :OC RESULT)))

(define-mixin-category render-29.90-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S RENDER-29.90)
  :realization (:VERB ("make") (:S AGENT :IO PATIENT :OC RESULT)))

(define-mixin-category render-29.90-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S-INF RENDER-29.90)
  :realization (:VERB ("get") (:S AGENT :IO PATIENT :OC RESULT)))

(define-mixin-category representation-110.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.MANNER WITH-THEME WITH-THEME PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE))
  :realization (:VERB ("be" "denote" "mean" "represent" "signify" "symbolize")
                (:S THEME :O THEME :IN PREDICATE :|\|| PREDICATE :FOR PREDICATE
                 :|\|| PREDICATE :TO PREDICATE)
                (:S THEME :O THEME)))

(define-mixin-category require-103
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-FOR-NP-S_INF NP-V-THAT-S WITH-INSTRUMENT WITH-THEME)
  :binds ((SPARSER::INSTRUMENT OBJECT))
  :realization (:VERB ("take") (:S INSTRUMENT :O THEME)))

(define-mixin-category require-103-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE NP-V-NP-S_INF NP-V-S_ING WITH-SOURCE REQUIRE-103)
  :realization (:VERB ("necessitate" "require" "involve" "demand")
                (:S INSTRUMENT :O THEME) (:S INSTRUMENT :O THEME :FROM SOURCE)))

(define-mixin-category require-103-2
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING REQUIRE-103)
  :realization (:VERB ("need") (:S INSTRUMENT :O THEME)))

(define-mixin-category resign-10.11
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT WITH-SOURCE WITH-GOAL)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("leave_office" "step_down" "walk_out") (:S AGENT)))

(define-mixin-category resign-10.11-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.SOURCE RESIGN-10.11)
  :realization (:VERB
                ("resign" "retire" "walk" "walk_away" "walk_out" "withdraw")
                (:S AGENT :FROM SOURCE)))

(define-mixin-category resign-10.11-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP RESIGN-10.11-1)
  :realization (:VERB
                ("abdicate" "depart" "give_up" "leave" "renounce" "resign"
                 "quit" "vacate" "walk_off")
                (:S AGENT :O SOURCE)))

(define-mixin-category respond-113
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.THEME NP-V-PP.PREDICATE NP-V-PP.THEME-PP.PREDICATE
           WITH-AGENT WITH-THEME PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB ("react" "rebel" "reply" "respond" "retaliate")
                (:S AGENT :|TO\|AGAINST| THEME :WITH PREDICATE)
                (:S AGENT :WITH PREDICATE) (:S AGENT :|TO\|AGAINST| THEME)
                (:S AGENT)))

(define-mixin-category result-27.2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP WITH-CAUSE WITH-THEME)
  :binds ((SPARSER::CAUSE PHYSICAL-AGENT))
  :realization (:VERB ("cause" "lead" "lead_up" "result")
                (:S CAUSE :IN THEME :|\|| THEME :TO THEME)))

(define-mixin-category risk-94
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-THAT-S WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("bet" "gamble" "punt" "venture" "wager")
                (:S AGENT :O THEME)))

(define-mixin-category risk-94-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING RISK-94)
  :realization (:VERB ("chance" "risk" "hazard") (:S AGENT :O THEME)))

(define-mixin-category rob-10.6.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE NP-V-NP-PP.BENEFICIARY
           NP-V-NP-PP.SOURCE-PP.BENEFICIARY WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-BENEFICIARY)
  :binds ((SPARSER::BENEFICIARY PHYSICAL-AGENT)
          (SPARSER::SOURCE (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("rob" "bleed" "strip" "milk" "cull")
                (:S AGENT :O THEME :SRC SOURCE :FOR BENEFICIARY)
                (:S AGENT :O THEME :FOR BENEFICIARY)
                (:S AGENT :O THEME :SRC SOURCE) (:S AGENT :O THEME)))

(define-mixin-category roll-51.3.1
  :specializes subcategorization-pattern
  :mixins (NP.THEME-V NP-V-PP.LOCATION NP-V-NP.THEME NP-V-NP-PP.LOCATION
           NP-V-ADJ NP-V-PP.RESULT NP-V-NP-ADJ NP-V-NP-PP.RESULT WITH-AGENT
           WITH-THEME WITH-PATH WITH-RESULT)
  :binds ((SPARSER::PATH PHYSICAL) (SPARSER::THEME PHYSICAL))
  :realization (:VERB
                ("bounce" "drift" "drop" "float" "glide" "move" "nose" "roll"
                 "slide" "swing" "coil" "revolve" "rotate" "spin" "turn"
                 "twirl" "twist" "whirl" "wind" "snake" "soar" "spiral"
                 "undulate")
                (:S AGENT :O THEME :TO RESULT :INTO RESULT)
                (:S AGENT :IO THEME :OC RESULT)
                (:S THEME :TO RESULT :INTO RESULT) (:S THEME :O RESULT)
                (:S AGENT :O THEME :PATH PATH) (:S AGENT :O THEME)
                (:S THEME :SPATIAL PATH) (:S THEME)))

(define-mixin-category rotate-51.9.1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP.EXTENT NP-V-ADV-MIDDLE WITH-THEME WITH-EXTENT
           WITH-PATH)
  :realization (:VERB NIL (:S THEME (:M ADVERB)) (:S THEME :O EXTENT)))

(define-mixin-category rotate-51.9.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP WITH-AGENT ROTATE-51.9.1)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB
                ("curl" "coil" "hook" "rotate" "spin" "swing" "turn" "twirl"
                 "twist" "wind")
                (:S AGENT :IO THEME :OC EXTENT)))

(define-mixin-category rummage-35.5
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION NP-V-PP.LOCATION-PP.THEME WITH-AGENT HAS-LOCATION
           WITH-THEME)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("bore" "burrow" "fumble" "go" "leaf" "listen" "look" "page"
                 "poke" "scrabble" "scratch")
                (:S AGENT :LOC LOCATION :FOR THEME)
                (:S AGENT :OVER LOCATION :THROUGH LOCATION :INTO LOCATION)))

(define-mixin-category rummage-35.5-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME RUMMAGE-35.5)
  :realization (:VERB
                ("forage" "grope" "rifle" "rummage" "paw" "delve" "root"
                 "thumb" "snoop" "tunnel")
                (:S AGENT :O LOCATION :FOR THEME)))

(define-mixin-category run-51.3.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION THERE-V-PP-NP THERE-V-NP-PP PP.LOCATION-V-NP
           WITH-THEME WITH-SOURCE WITH-PATH WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL) (SPARSER::PATH PHYSICAL)
          (SPARSER::SOURCE PHYSICAL)
          (SPARSER::THEME (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("amble" "ambulate" "backpack" "bolt" "bound" "breeze" "bustle"
                 "caper" "carom" "cavort" "charge" "chunter" "clamber" "climb"
                 "clump" "crawl" "creep" "dodder" "flit" "flounce" "frolic"
                 "gallivant" "gambol" "ghost" "globetrot" "goose_step" "hike"
                 "hitchhike" "hopscotch" "jounce" "limp" "lollop" "lumber"
                 "lurch" "meander" "mince" "mosey" "nip" "pace" "pootle"
                 "pounce" "pussyfoot" "roar" "romp" "sashay" "saunter"
                 "scamper" "scram" "scramble" "scud" "scurry" "scutter"
                 "scuttle" "seesaw" "shamble" "shuffle" "sidle" "skedaddle"
                 "skid" "skulk" "sleepwalk" "slink" "slither" "slog" "slouch"
                 "somersault" "sprint" "spring" "stagger" "step" "stomp"
                 "stray" "streak" "stumble" "stump" "swag" "swagger" "swan"
                 "swerve" "tear" "tiptoe" "toddle" "toil" "tootle" "totter"
                 "tread" "troop" "trundle" "waddle" "weave" "wend" "whiz"
                 "worm" "yaw" "zigzag" "zoom")
                (:PATH SOURCE :O THEME) (:O THEME :PATH SOURCE)
                (:S THEME :SPATIAL PATH) (:S THEME)))

(define-mixin-category run-51.3.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP RUN-51.3.2)
  :realization (:VERB
                ("hop" "journey" "leap" "pad" "perambulate" "plod" "prowl"
                 "ramble" "roam" "rove" "stride" "stroll" "sweep" "swim"
                 "traipse" "tramp" "travel" "trek" "trudge" "vault" "wade"
                 "wander" "wing")
                (:S THEME :O PATH)))

(define-mixin-category run-51.3.2-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.LOCATION NP-V-NP NP-V-NP-PP.RESULT WITH-AGENT WITH-RESULT
           WITH-SOURCE RUN-51.3.2)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("back" "bounce" "bowl" "canter" "coast" "dart" "dash" "drift"
                 "float" "gallop" "glide" "hasten" "hobble" "hurry" "hurtle"
                 "inch" "lope" "prance" "race" "roll" "scoot" "skip" "skitter"
                 "slide" "sneak" "speed" "strut" "tack" "trip" "trot")
                (:S AGENT :O THEME :TO RESULT :INTO RESULT) (:S AGENT :O THEME)
                (:S AGENT :O THEME :SPATIAL PATH)))

(define-mixin-category run-51.3.2-2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP RUN-51.3.2-2)
  :realization (:VERB
                ("fly" "jog" "jump" "march" "parade" "promenade" "run" "rush"
                 "walk")
                (:S THEME :O PATH)))

(define-mixin-category rush-53.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME NP-V-PP.THEME WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("hasten" "hurry" "rush") (:S AGENT :THROUGH THEME)
                (:S AGENT :O THEME) (:S AGENT :WITH THEME)))

(define-mixin-category satisfy-55.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP WITH-AGENT WITH-THEME WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("exceed" "fulfill" "meet" "sate" "satiate" "satisfy")
                (:S AGENT :O THEME :WITH INSTRUMENT) (:S INSTRUMENT :O THEME)))

(define-mixin-category say-37.7
  :specializes subcategorization-pattern
  :mixins (NP-V-S-QUOTE WITH-AGENT WITH-TOPIC WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("be_like" "continue" "go" "go_like" "go_on")
                (:S AGENT :O TOPIC)))

(define-mixin-category say-37.7-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.TOPIC NP-V-NP-PP.RECIPIENT NP-V-PP.RECIPIENT-S-QUOTE
           NP-V-HOW-S NP-V-HOW-S_INF NP-V-WHAT-S_INF NP-V-WHAT-S SAY-37.7)
  :realization (:VERB
                ("add" "allege" "blabber" "disclose" "divulge" "exclaim"
                 "insinuate" "insist" "intimate" "leak" "reply" "respond"
                 "retort" "promulgate" "utter" "venture" "vocalize" "voice"
                 "write")
                (:S AGENT :O TOPIC) (:S AGENT :TO RECIPIENT :O TOPIC)
                (:S AGENT :O TOPIC :TO RECIPIENT)))

(define-mixin-category say-37.7-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-THAT-S SAY-37.7-1)
  :realization (:VERB
                ("advise" "announce" "articulate" "blab" "blurt" "claim"
                 "confess" "confide" "convey" "declare" "interject" "interpose"
                 "mention" "observe" "proclaim" "propose" "recount" "reiterate"
                 "relate" "reveal" "say" "state" "volunteer" "repeat" "remark"
                 "note" "report")
                (:S AGENT :O TOPIC)))

(define-mixin-category say-37.7-1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RECIPIENT NP-V-PP.RECIPIENT-HOW-S
           NP-V-PP.RECIPIENT-HOW-S_INF NP-V-PP.RECIPIENT-THAT-S
           NP-V-PP.RECIPIENT-WHAT-S NP-V-PP.RECIPIENT-WHAT-S_INF SAY-37.7-1-1)
  :realization (:VERB ("purpose" "suggest" "recommend")
                (:S AGENT :TO RECIPIENT :O TOPIC)
                (:S AGENT :O TOPIC :TO RECIPIENT)))

(define-mixin-category say-37.7-1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RECIPIENT NP-V-PP.RECIPIENT-HOW-S
           NP-V-PP.RECIPIENT-HOW-S_INF NP-V-PP.RECIPIENT-THAT-S
           NP-V-PP.RECIPIENT-WHAT-S NP-V-PP.RECIPIENT-WHAT-S_INF SAY-37.7-1)
  :realization (:VERB ("hint") (:S AGENT :TO RECIPIENT :O TOPIC)
                (:S AGENT :O TOPIC :TO RECIPIENT)))

(define-mixin-category scribble-25.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION WITH-AGENT WITH-THEME
           WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("copy" "forge" "jot" "jot_down" "misspell" "spell" "take"
                 "take_down" "trace" "underscore" "underline")
                (:S AGENT :O THEME :ON DESTINATION :|\|| DESTINATION :IN
                 DESTINATION)
                (:S AGENT :O THEME)))

(define-mixin-category scribble-25.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V SCRIBBLE-25.2)
  :realization (:VERB
                ("carve" "chalk" "charcoal" "crayon" "doodle" "draw" "ink"
                 "pencil" "plot" "print" "record" "scratch" "scrawl" "scribble"
                 "sketch" "spraypaint" "stencil" "type" "write" "print_out"
                 "print_up")
                (:S AGENT)))

(define-mixin-category search-35.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V-PP.THEME-NP.LOCATION NP-V-PP.LOCATION-PP.THEME
           NP-V-PP.LOCATION WITH-AGENT HAS-LOCATION WITH-THEME)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("advertise" "check" "comb" "dive" "drag" "dredge" "excavate"
                 "nose" "patrol" "plumb" "probe" "prospect" "prowl" "quarry"
                 "rake" "rifle" "scavenge" "scour" "scout" "search" "shop"
                 "sift" "sweep" "trawl" "troll" "watch" "quest")
                (:S AGENT :LOC LOCATION) (:S AGENT :LOC LOCATION :FOR THEME)
                (:S AGENT :FOR THEME :LOC LOCATION)
                (:S AGENT :O LOCATION :FOR THEME)))

(define-mixin-category see-30.1
  :specializes subcategorization-pattern
  :mixins (NP-V-THAT-S WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB ("tell") (:S EXPERIENCER :O STIMULUS)))

(define-mixin-category see-30.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-ATTR-POS NP-V-HOW-S NP-V-WHAT-S SEE-30.1)
  :realization (:VERB ("smell" "taste") (:S EXPERIENCER :O STIMULUS)))

(define-mixin-category see-30.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S NP-V-S_ING SEE-30.1-1)
  :realization (:VERB
                ("detect" "discern" "feel" "sense" "perceive" "notice" "see")
                (:S EXPERIENCER :O STIMULUS)))

(define-mixin-category see-30.1-1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.STIMULUS SEE-30.1-1-1)
  :realization (:VERB ("hear") (:S EXPERIENCER :ABOUT STIMULUS :OF STIMULUS)))

(define-mixin-category seem-109
  :specializes subcategorization-pattern
  :mixins (NP-V-ADJ WITH-THEME WITH-ATTRIBUTE)
  :realization (:VERB ("smell" "sound" "taste" "keep") (:S THEME :O ATTRIBUTE)))

(define-mixin-category seem-109-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP SEEM-109)
  :realization (:VERB ("act") (:S THEME :O ATTRIBUTE)))

(define-mixin-category seem-109-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.ATTRIBUTE SEEM-109-1)
  :realization (:VERB ("be" "feel" "look" "remain" "stay")
                (:S THEME :IN ATTRIBUTE)))

(define-mixin-category seem-109-1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF SEEM-109-1-1)
  :realization (:VERB ("seem" "appear") (:S THEME :O ATTRIBUTE)))

(define-mixin-category send-11.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INITIAL_LOCATION NP-V-NP-PP.DESTINATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION
           NP-V-NP-PP.DESTINATION-PP.INITIAL_LOCATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("convey" "deliver" "dispatch" "drive" "handdeliver" "pass_on"
                 "port" "post" "return" "shift" "shunt" "transfer" "transport"
                 "export" "import" "transship")
                (:S AGENT :O THEME :TO DESTINATION :SRC SOURCE)
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION)
                (:S AGENT :O THEME :TO DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE) (:S AGENT :O THEME)))

(define-mixin-category send-11.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-DATIVE-NP WITH-DESTINATION SEND-11.1)
  :binds ((SPARSER::DESTINATION PHYSICAL-AGENT))
  :realization (:VERB
                ("airmail" "express" "FedEx" "forward" "hand" "mail" "pass"
                 "send" "ship" "slip" "smuggle" "sneak" "transmit" "UPS"
                 "wire")
                (:S AGENT :IO DESTINATION :OC THEME)))

(define-mixin-category separate-23.1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP-PP.CO-PATIENT NP-V-NP NP-V NP-V-ADVP-MIDDLE-PP
           NP-V-ADVP-MIDDLE WITH-AGENT WITH-PATIENT WITH-CO-PATIENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("disassociate" "sever" "uncoil")
                (:S PATIENT (:M ADVERB))
                (:S PATIENT (:M ADVERB) :FROM CO-PATIENT) (:S PATIENT)
                (:S AGENT :O PATIENT) (:S AGENT :O PATIENT :FROM CO-PATIENT)))

(define-mixin-category separate-23.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-PATIENT SEPARATE-23.1)
  :realization (:VERB
                ("decouple" "differentiate" "disentangle" "dissimilate"
                 "divide" "divorce" "segregate")
                (:S PATIENT :FROM CO-PATIENT)))

(define-mixin-category separate-23.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-PATIENT SEPARATE-23.1)
  :realization (:VERB ("disconnect" "dissociate" "part" "separate")
                (:S PATIENT :WITH CO-PATIENT)))

(define-mixin-category settle-36.1.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.GOAL-WHAT-S_INF NP-V-PP.CO-AGENT-PP.GOAL WITH-AGENT
           WITH-AGENT WITH-TOPIC)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("settle" "collaborate" "commiserate" "communicate"
                 "compromise" "concur" "cooperate" "correspond" "differ"
                 "deliberate" "disagree" "haggle" "interact" "bargain" "square"
                 "renegotiate")
                (:S AGENT :WITH AGENT :ON GOAL) (:S AGENT :ON GOAL) (:S AGENT)))

(define-mixin-category settle-36.1.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-THAT-S NP-V-PP-THAT-S NP-V-S SETTLE-36.1.2)
  :realization (:VERB ("resolve" "agree" "argue" "debate" "decide")
                (:S AGENT :O GOAL) (:S AGENT :IO AGENT :OC GOAL)))

(define-mixin-category shake-22.3
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-ADV-MIDDLE NP-V-TOGETHER-ADV-MIDDLE WITH-AGENT
           WITH-PATIENT WITH-CO-PATIENT)
  :binds ((SPARSER::CO-PATIENT PHYSICAL) (SPARSER::PATIENT PHYSICAL)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB NIL (:S PATIENT (:M ADVERB))))

(define-mixin-category shake-22.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.CO-PATIENT NP-V-NP-TOGETHER SHAKE-22.3)
  :realization (:VERB ("lump" "mass") (:S AGENT :O PATIENT)
                (:S AGENT :O PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO
                 CO-PATIENT)))

(define-mixin-category shake-22.3-1-1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-PP-ADV-MIDDLE NP-V-NP SHAKE-22.3-1)
  :realization (:VERB ("beat" "fuse" "scramble" "stir" "swirl" "whip" "whisk")
                (:S AGENT :O PATIENT)
                (:S PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO CO-PATIENT
                 (:M ADVERB))))

(define-mixin-category shake-22.3-2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP NP-V-NP-TOGETHER SHAKE-22.3)
  :realization (:VERB
                ("band" "baste" "cluster" "collate" "collect" "fix" "gather"
                 "glom" "group" "herd" "pair" "roll" "sew" "shake" "shuffle"
                 "stick")
                (:S AGENT :O PATIENT)
                (:S AGENT :O PATIENT :WITH CO-PATIENT :INTO CO-PATIENT :TO
                 CO-PATIENT)))

(define-mixin-category shake-22.3-2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP SHAKE-22.3-2)
  :realization (:VERB
                ("attach" "bind" "bond" "bundle" "concatenate" "fasten" "graft"
                 "jumble" "ligate" "moor" "package" "secure" "splice" "toggle"
                 "weld" "fixate" "affix" "agglutinate")
                (:S AGENT :O PATIENT)))

(define-mixin-category sight-30.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                ("behold" "descry" "discover" "espy" "experience" "eye"
                 "glimpse" "make_out" "note" "observe" "overhear" "perceive"
                 "recognize" "savor" "scent" "scent_out" "sight" "spot" "spy"
                 "view" "witness" "sniff")
                (:S EXPERIENCER :O STIMULUS)))

(define-mixin-category simple_dressing-41.3.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("don" "doff" "wear") (:S AGENT :O THEME)))

(define-mixin-category slide-11.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.INITIAL_LOCATION NP-V-PP.DESTINATION
           NP-V-PP.INITIAL_LOCATION-PP.DESTINATION NP.AGENT-V-NP
           NP-V-NP-PP.INITIAL_LOCATION NP-V-NP-PP.DESTINATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION WITH-PATH)
  :binds ((SPARSER::DESTINATION (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL))
  :realization (:VERB ("move" "scoot" "pull")
                (:S AGENT :O THEME :SRC SOURCE :TO DESTINATION)
                (:S AGENT :O THEME :TO DESTINATION)
                (:S AGENT :O THEME :PATH PATH) (:S AGENT :O THEME)
                (:S THEME :SRC SOURCE :TO DESTINATION)
                (:S THEME :TO DESTINATION) (:S THEME :PATH SOURCE) (:S THEME)))

(define-mixin-category slide-11.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-DATIVE-NP WITH-DESTINATION SLIDE-11.2)
  :binds ((SPARSER::DESTINATION PHYSICAL-AGENT))
  :realization (:VERB ("bounce" "dart" "float" "roll" "slide")
                (:S AGENT :IO DESTINATION :OC THEME)))

(define-mixin-category smell_emission-43.3
  :specializes subcategorization-pattern
  :mixins (NP-V NP.LOCATION-V NP-V-PP.THEME WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::THEME PHYSICAL-AGENT))
  :realization (:VERB ("reek" "smell" "stink") (:S LOCATION :OF THEME)
                (:S LOCATION) (:S THEME)))

(define-mixin-category snooze-40.4
  :specializes subcategorization-pattern
  :mixins (NP-V WITH-AGENT)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("catnap" "doze" "drowse" "slumber" "snooze") (:S AGENT)))

(define-mixin-category snooze-40.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-THEME SNOOZE-40.4)
  :realization (:VERB ("nap" "sleep") (:S AGENT :O THEME)))

(define-mixin-category sound_emission-43.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION NP.LOCATION-V-PP.THEME PP.LOCATION-V-NP
           THERE-V-NP-PP NP-V-NP.THEME NP-V-NP WITH-THEME HAS-LOCATION
           WITH-AGENT TEMPORALLY-LOCALIZED)
  :binds ((SPARSER::CERTAINTY CERTAINTY)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT)))
          (SPARSER::LOCATION LOCATION) (SPARSER::THEME PHYSICAL-AGENT))
  :realization (:VERB
                ("babble" "bang" "beat" "beep" "bellow" "blare" "blast" "blat"
                 "boom" "bubble" "burble" "burr" "buzz" "caterwaul" "chatter"
                 "chime" "chink" "chir" "chitter" "chug" "clack" "clang"
                 "clank" "clap" "clash" "clatter" "click" "cling" "clink"
                 "clomp" "clump" "clunk" "crack" "crackle" "crash" "creak"
                 "crepitate" "crunch" "cry" "ding" "dong" "drone" "explode"
                 "fizz" "fizzle" "groan" "growl" "gurgle" "hiss" "hoot" "honk"
                 "howl" "hum" "jangle" "jingle" "keen" "knell" "knock" "lilt"
                 "mewl" "moan" "murmur" "patter" "peal" "ping" "pink" "pipe"
                 "plash" "plink" "plonk" "plop" "plunk" "pop" "purr" "putter"
                 "rap" "rasp" "rattle" "ring" "roar" "roll" "rumble" "rustle"
                 "scream" "screech" "shriek" "shrill" "sing" "sizzle" "snap"
                 "sound" "sough" "sploosh" "splash" "splutter" "sputter"
                 "squawk" "squeak" "squeal" "squelch" "strike" "swish" "swoosh"
                 "thrum" "thud" "thump" "thunder" "thunk" "tick" "ting"
                 "tinkle" "toll" "toot" "tootle" "trill" "trumpet" "twang"
                 "ululate" "vroom" "wail" "wheeze" "whine" "whir" "whish"
                 "whisper" "whistle" "whoosh" "whump" "zing")
                (:S THEME :O RESULT) (:S AGENT :O THEME)
                (:O THEME :LOC LOCATION) (:LOC LOCATION :O THEME)
                (:S LOCATION :WITH THEME) (:S THEME :LOC LOCATION) (:S THEME)))

(define-mixin-category sound_existence-47.4
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION THERE-V-NP PP.LOCATION-V-NP
           NP.LOCATION-V-NP.THEME WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION)))
  :realization (:VERB
                ("echo" "resonate" "resound" "reverberate" "roll" "sound")
                (:S LOCATION :WITH THEME) (:LOC LOCATION :O THEME) (:O THEME)
                (:S THEME :LOC LOCATION) (:S THEME)))

(define-mixin-category spank-18.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.INSTRUMENT NP-V-NP-ADJP NP-V-NP-PP.RESULT
           NP-V-NP-PP.RESULT-PP.INSTRUMENT NP-V-NP-PP.LOCATION
           NP-V-NP-PP-PP.INSTRUMENT NP-V-NP WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT HAS-LOCATION WITH-RESULT)
  :binds ((SPARSER::LOCATION PHYSICAL) (SPARSER::INSTRUMENT PHYSICAL)
          (SPARSER::PATIENT PHYSICAL))
  :realization (:VERB
                ("belt" "biff" "birch" "bludgeon" "bonk" "brain" "cane"
                 "clobber" "clout" "club" "conk" "cosh" "cudgel" "cuff" "elbow"
                 "flagellate" "flail" "flog" "fustigate" "knee" "knife" "k.o."
                 "lam" "larrup" "lather" "paddle" "pommel" "pummel" "slam"
                 "sock" "spank" "strap" "thrash" "thump" "truncheon" "wallop"
                 "wham" "whap" "whip" "whisk" "whomp" "whop" "horsewhip")
                (:S AGENT :O PATIENT)
                (:S AGENT :O PATIENT :LOC LOCATION :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :LOC LOCATION)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S AGENT :IO PATIENT :OC RESULT)
                (:S AGENT :O PATIENT :WITH INSTRUMENT)))

(define-mixin-category spatial_configuration-47.6
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.LOCATION THERE-V-PP-NP PP.LOCATION-V-NP WITH-THEME
           HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION))
          (SPARSER::THEME PHYSICAL))
  :realization (:VERB
                ("bow" "crouch" "hover" "huddle" "hunch" "jut" "kneel" "lean"
                 "lie" "loll" "loom" "lounge" "protrude" "repose" "rise"
                 "roost" "sag" "slouch" "slump" "squat" "stoop" "swag" "tower"
                 "yaw")
                (:LOC LOCATION :O THEME) (:S THEME :LOC LOCATION) (:S THEME)))

(define-mixin-category spatial_configuration-47.6-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME-PP WITH-AGENT SPATIAL_CONFIGURATION-47.6)
  :binds ((SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("balance" "bend" "dangle" "droop" "flop" "fly" "hang" "nestle"
                 "perch" "plop" "project" "recline" "rest" "sit" "slope"
                 "sprawl" "stand" "straddle" "swing" "tilt")
                (:S AGENT :O THEME :LOC LOCATION)))

(define-mixin-category spend_time-104
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.ATTRIBUTE WITH-AGENT WITH-EXTENT WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("kill" "lead" "pass" "serve" "misspend" "spend" "use" "waste")
                (:S AGENT :IO EXTENT :OC ATTRIBUTE) (:S AGENT :O EXTENT)))

(define-mixin-category split-23.2
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP-PP.CO-PATIENT NP-V-NP-APART NP-V-PP.CO-PATIENT
           NP-V-APART NP-V-PP-ADV-MIDDLE NP-V-ADV-MIDDLE WITH-AGENT
           WITH-PATIENT WITH-CO-PATIENT)
  :binds ((SPARSER::CO-PATIENT SOLID) (SPARSER::PATIENT SOLID))
  :realization (:VERB
                ("blow" "break" "cut" "draw" "hack" "hew" "kick" "knock" "pry"
                 "pull" "push" "rip" "roll" "saw" "shove" "slip" "sliver"
                 "snap" "split" "tear" "tug" "yank")
                (:S PATIENT (:M ADVERB))
                (:S PATIENT :OFF CO-PATIENT :OFF CO-PATIENT :OF CO-PATIENT
                 :FROM CO-PATIENT (:M ADVERB))
                (:S PATIENT)
                (:S PATIENT :OFF CO-PATIENT :OFF CO-PATIENT :OF CO-PATIENT
                 :FROM CO-PATIENT)
                (:S AGENT :O PATIENT)
                (:S AGENT :O PATIENT :OFF CO-PATIENT :OFF CO-PATIENT :OF
                 CO-PATIENT :FROM CO-PATIENT)))

(define-mixin-category spray-9.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION NP-V-NP.DESTINATION-PP.THEME NP-V-NP.THEME
           NP-V-NP.DESTINATION WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION (:AND/OR LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("overload") (:S AGENT :O DESTINATION)
                (:S AGENT :O THEME) (:S AGENT :O DESTINATION :WITH THEME)
                (:S AGENT :O THEME :LOC DESTINATION :DEST_CONF DESTINATION)))

(define-mixin-category spray-9.7-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.DESTINATION NP-V-NP-PP.DESTINATION-CONATIVE WITH-THEME
           SPRAY-9.7)
  :binds ((SPARSER::THEME (:OR NIL PHYSICAL COLLECTION)))
  :realization (:VERB
                ("baste" "brush" "drizzle" "hang" "plaster" "pump" "rub"
                 "scatter" "seed" "sew" "shower" "smear" "smudge" "sow"
                 "spatter" "splash" "splatter" "spray" "spread" "sprinkle"
                 "spritz" "squirt" "stick" "strew" "string" "swab" "swash"
                 "spurt" "wrap")
                (:S AGENT :IO THEME :OC DESTINATION)
                (:S THEME :LOC DESTINATION :DIR DESTINATION)))

(define-mixin-category spray-9.7-1-1
  :specializes subcategorization-pattern
  :mixins (NP.THEME-V-NP SPRAY-9.7-1)
  :realization (:VERB ("cram" "crowd" "jam" "pack" "pile")
                (:S THEME :O DESTINATION)))

(define-mixin-category spray-9.7-2
  :specializes subcategorization-pattern
  :mixins (WITH-THEME SPRAY-9.7)
  :binds ((SPARSER::THEME PHYSICAL))
  :realization (:VERB
                ("drape" "load" "dab" "daub" "mound" "dust" "heap" "plant"
                 "seed" "slather" "stack" "stock" "stuff")))

(define-mixin-category stalk-35.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V-NP-PP.LOCATION NP-V-NP WITH-AGENT WITH-THEME
           HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("scent" "smell" "stalk" "taste" "track" "whiff")
                (:S AGENT :O THEME) (:S AGENT :O THEME :LOC LOCATION)
                (:S AGENT :O LOCATION :FOR THEME)))

(define-mixin-category steal-10.5
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.SOURCE NP-V-NP-PP.BENEFICIARY
           NP-V-NP-PP.SOURCE-PP.BENEFICIARY WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-BENEFICIARY)
  :binds ((SPARSER::BENEFICIARY PHYSICAL-AGENT)
          (SPARSER::SOURCE (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("abduct" "annex" "bleed" "cabbage" "carjack" "commandeer"
                 "confiscate" "cull" "emancipate" "embezzle" "extort" "filch"
                 "highjack" "kidnap" "knock_off" "liberate" "lift" "milk"
                 "misappropriate" "nobble" "pickpocket" "pinch" "plagiarize"
                 "plunder" "purloin" "recapture" "reclaim" "recoup" "redeem"
                 "repossess" "rescue" "rob" "rustle" "seize" "snatch_away"
                 "sequester" "take" "thieve" "wrest")
                (:S AGENT :O THEME :SRC SOURCE :FOR BENEFICIARY)
                (:S AGENT :O THEME :FOR BENEFICIARY)
                (:S AGENT :O THEME :SRC SOURCE) (:S AGENT :O THEME)))

(define-mixin-category steal-10.5-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-NP STEAL-10.5)
  :realization (:VERB
                ("cadge" "capture" "cop" "flog" "grab" "hook" "nab" "nick"
                 "pilfer" "pirate" "salvage" "shoplift" "smuggle" "snatch"
                 "sneak" "steal" "swipe" "wangle")
                (:S AGENT :IO BENEFICIARY :OC THEME)))

(define-mixin-category stimulate-59.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.RESULT WITH-AGENT WITH-PATIENT
           PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("incite" "jolt" "prompt" "rouse" "spur" "stimulate")
                (:S AGENT :O PATIENT :INTO PREDICATE) (:S AGENT :O PATIENT)))

(define-mixin-category stimulus_subject-30.4
  :specializes subcategorization-pattern
  :mixins (NP-V-ADJ NP-V-ADJ-PP.EXPERIENCER NP-V-PP.ATTRIBUTE WITH-EXPERIENCER
           WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB ("feel" "look" "smell" "sound" "taste") (:S STIMULUS)
                (:S STIMULUS :TO EXPERIENCER)))

(define-mixin-category stop-55.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("cut" "raise" "kill") (:S AGENT :O THEME)))

(define-mixin-category stop-55.4-1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP.THEME-V NP-V-ADJ-MIDDLE STOP-55.4)
  :realization (:VERB
                ("close" "cut_off" "cut_out" "deactivate" "halt" "lift"
                 "repeat" "terminate")
                (:S THEME (:M ADVERB)) (:S THEME)))

(define-mixin-category stop-55.4-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING STOP-55.4-1)
  :realization (:VERB
                ("cease" "conclude" "discontinue" "end" "finish" "stop" "quit")
                (:S AGENT :O THEME)))

(define-mixin-category subjugate-42.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT WITH-AGENT WITH-PATIENT
           WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("disenfranchise" "enslave" "mob" "nourish" "suppress"
                 "stamp_down" "subdue" "conquer" "curb" "crush" "stifle"
                 "dampen" "suffocate" "choke" "hush" "silence" "still"
                 "shut_up" "hush_up" "lull" "calm_down" "gag" "muzzle"
                 "squelch" "quell" "quench" "smother" "muffle" "repress"
                 "quash" "keep_down" "subjugate" "reduce" "slake" "strangle"
                 "kill" "walk_over")
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)))

(define-mixin-category subordinate-95.2.1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT WITH-AGENT WITH-AGENT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("answer" "report") (:S AGENT :TO AGENT)))

(define-mixin-category substance_emission-43.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-THEME WITH-SOURCE)
  :realization (:VERB ("give" "give_off" "give_out" "give_forth" "emit")
                (:S SOURCE :O THEME)))

(define-mixin-category substance_emission-43.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP.THEME-V-PP.SOURCE NP-V-PP.LOCATION NP.LOCATION-V-PP.THEME
           PP.LOCATION-V-NP THERE-V-NP-PP NP-V-OUT NP-V-NP HAS-LOCATION
           SUBSTANCE_EMISSION-43.4)
  :binds ((SPARSER::LOCATION LOCATION))
  :realization (:VERB
                ("bead" "belch" "bubble" "dribble" "drip" "drool" "emanate"
                 "exrete" "exude" "foam" "gush" "jet" "leak" "ooze" "percolate"
                 "pour" "puff" "radiate" "seep" "shed" "slop" "spew" "spill"
                 "spout" "sprout" "spurt" "squirt" "steam" "stream" "sweat"
                 "trickle")
                (:S SOURCE :O THEME) (:S THEME) (:O THEME :LOC LOCATION)
                (:LOC LOCATION :O THEME) (:S LOCATION :WITH THEME)
                (:S THEME :PATH LOCATION)
                (:S THEME :FROM SOURCE :OUT_OF SOURCE) (:S SOURCE)))

(define-mixin-category substance_emission-43.4-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.SOURCE WITH-AGENT SUBSTANCE_EMISSION-43.4-1)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB ("bleed") (:S AGENT :O SOURCE)))

(define-mixin-category substitute-13.6.2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-THEME NP-V-NP.LOCATION NP-V-NP-PP.CO-THEME WITH-THEME
           WITH-THEME WITH-SOURCE WITH-GOAL HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION)))
  :realization (:VERB ("substitute" "swap" "swap_out" "switch")
                (:S THEME :O LOCATION :WITH THEME) (:S THEME :O LOCATION)
                (:S THEME :FOR THEME :INTO THEME)))

(define-mixin-category substitute-13.6.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP SUBSTITUTE-13.6.2)
  :realization (:VERB ("replace" "supplant") (:S THEME :O THEME)))

(define-mixin-category succeed-74
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB NIL))

(define-mixin-category succeed-74-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.THEME-S_ING NP-V-PP.THEME SUCCEED-74)
  :realization (:VERB ("succeed" "excel") (:S AGENT :IN THEME) (:S AGENT)))

(define-mixin-category succeed-74-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF SUCCEED-74-1)
  :realization (:VERB ("manage") (:S AGENT :O THEME)))

(define-mixin-category succeed-74-2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-NP NP-V-PP.THEME-S_ING SUCCEED-74)
  :realization (:VERB ("win") (:S AGENT :IN THEME :AT THEME)
                (:S AGENT :O THEME) (:S AGENT)))

(define-mixin-category succeed-74-3
  :specializes subcategorization-pattern
  :mixins (NP-V SUCCEED-74)
  :realization (:VERB ("fall" "fall_off" "fall_by_the_wayside") (:S AGENT)))

(define-mixin-category succeed-74-3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-PP.THEME-S_ING SUCCEED-74-3)
  :realization (:VERB ("lose" "flub") (:S AGENT :IN THEME :AT THEME)
                (:S AGENT :O THEME)))

(define-mixin-category succeed-74-3-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME-S_ING NP-V-S_INF SUCCEED-74-3-1)
  :realization (:VERB ("fail") (:S AGENT :O THEME) (:S AGENT :IN THEME)))

(define-mixin-category suffocate-40.7
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.THEME NP.THEME-V NP-V-PP.RESULT NP-V-NP-PP.RESULT WITH-AGENT
           WITH-PATIENT WITH-RESULT)
  :binds ((SPARSER::PATIENT PHYSICAL-AGENT) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB ("asphyxiate" "choke" "stifle" "suffocate")
                (:S AGENT :O PATIENT :TO RESULT) (:S PATIENT :TO RESULT)
                (:S PATIENT) (:S AGENT :O PATIENT)))

(define-mixin-category supervision-95.2.2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.AGENT WITH-AGENT WITH-AGENT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("boss" "direct" "lead" "manage" "superintend" "supervise")
                (:S AGENT :O AGENT)))

(define-mixin-category support-15.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-THEME WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB ("hold" "bear") (:S INSTRUMENT :O THEME)))

(define-mixin-category support-15.3-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.INSTRUMENT SUPPORT-15.3)
  :realization (:VERB
                ("bolster" "boost" "buttress" "buoy" "hold-up" "reinforce"
                 "strengthen" "support")
                (:S AGENT :O THEME :WITH INSTRUMENT :|\|| INSTRUMENT :THROUGH
                 INSTRUMENT)))

(define-mixin-category suspect-81
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.ATTRIBUTE NP-V-PP.ATTRIBUTE-S_ING NP-V-PP.THEME-S_ING
           WITH-AGENT WITH-THEME WITH-ATTRIBUTE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("suspect" "accuse" "condemn") (:S AGENT :O THEME)
                (:S AGENT :O THEME :OF ATTRIBUTE)))

(define-mixin-category sustain-55.6
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.INSTRUMENT WITH-AGENT WITH-THEME WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("hold" "maintain" "sustain" "prolong" "protract" "keep_up"
                 "continue" "carry_on")
                (:S AGENT :O THEME :THROUGH INSTRUMENT)))

(define-mixin-category sustain-55.6-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJ WITH-ATTRIBUTE SUSTAIN-55.6)
  :realization (:VERB ("keep" "leave") (:S AGENT :IO THEME :OC ATTRIBUTE)))

(define-mixin-category swarm-47.5.1
  :specializes subcategorization-pattern
  :mixins (WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION (:AND/OR LOCATION REGION))
          (SPARSER::THEME (:AND/OR PHYSICAL COLLECTION)))
  :realization (:VERB NIL))

(define-mixin-category swarm-47.5.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION THERE-V-NP-PP PP.LOCATION-V-NP
           PP.LOCATION-V-PP.THEME SWARM-47.5.1)
  :realization (:VERB
                ("bustle" "crawl" "creep" "hop" "swarm" "swim" "teem"
                 "pullulate")
                (:S LOCATION :WITH THEME) (:LOC LOCATION :O THEME)
                (:O THEME :LOC LOCATION) (:S THEME :LOC LOCATION)))

(define-mixin-category swarm-47.5.1-2
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION THERE-V-NP-PP SWARM-47.5.1)
  :realization (:VERB ("throng") (:O THEME :LOC LOCATION)
                (:S THEME :LOC LOCATION)))

(define-mixin-category swarm-47.5.1-2-1
  :specializes subcategorization-pattern
  :mixins (NP.LOCATION-V-PP.THEME SWARM-47.5.1-2)
  :realization (:VERB ("abound") (:S LOCATION :WITH THEME)))

(define-mixin-category swat-18.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT NP-V-PP NP-V-PP-PP NP-V-NP-ADJP
           NP-V-NP-ADJP-PP.INSTRUMENT NP-V-NP-PP.RESULT
           NP-V-NP-PP.RESULT-PP.INSTRUMENT NP-V-NP-PP.LOCATION WITH-AGENT
           WITH-PATIENT WITH-INSTRUMENT HAS-LOCATION WITH-RESULT)
  :binds ((SPARSER::LOCATION PHYSICAL) (SPARSER::INSTRUMENT SOLID)
          (SPARSER::PATIENT PHYSICAL) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("bite" "chop" "claw" "kick" "paw" "peck" "punch" "scratch"
                 "slice" "slug" "stab" "swat" "swipe")
                (:S AGENT :O PATIENT :LOC LOCATION)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT :WITH INSTRUMENT)
                (:S AGENT :O PATIENT :TO RESULT :INTO RESULT)
                (:S AGENT :IO PATIENT :OC RESULT :WITH INSTRUMENT)
                (:S AGENT :IO PATIENT :OC RESULT)
                (:S AGENT :O PATIENT :WITH INSTRUMENT) (:S AGENT :O PATIENT)))

(define-mixin-category talk-37.5
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-AGENT NP-V-PP.CO-AGENT-PP.TOPIC NP-V NP-V-TOGETHER
           NP-V-PP.TOPIC-PP.CO-AGENT NP-V-PP.TOPIC WITH-AGENT WITH-AGENT
           WITH-TOPIC)
  :binds ((SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("speak" "talk") (:S AGENT :ABOUT TOPIC)
                (:S AGENT :ABOUT TOPIC :WITH AGENT)
                (:S AGENT :ABOUT TOPIC :TO AGENT) (:S AGENT)
                (:S AGENT :WITH AGENT :ABOUT TOPIC)
                (:S AGENT :TO AGENT :ABOUT TOPIC) (:S AGENT :WITH AGENT)
                (:S AGENT :TO AGENT)))

(define-mixin-category tape-22.4
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.CO-PATIENT NP-V-NP-TOGETHER
           NP-V-ADV-MIDDLE-PP NP-V-ADV-MIDDLE NP-V-ADV-MIDDLE-TOGETHER
           NP-V-TOGETHER-ADV-MIDDLE NP-V-NP-ADJP WITH-AGENT WITH-PATIENT
           WITH-CO-PATIENT WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT (:AND/OR PHYSICAL PHYSICAL-AGENT))
          (SPARSER::CO-PATIENT SOLID) (SPARSER::PATIENT SOLID)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("affix" "anchor" "band" "belt" "bond" "bolt" "bracket"
                 "buckle" "button" "cable" "cement" "chain" "cinch" "connect"
                 "epoxy" "fasten" "fetter" "glue" "gum" "handcuff" "harness"
                 "hinge" "hitch" "hook" "knot" "lace" "lash" "lasso" "latch"
                 "leash" "link" "lock" "loop" "manacle" "moor" "muzzle" "nail"
                 "padlock" "paste" "peg" "pin" "plaster" "rivet" "rope" "screw"
                 "seal" "shackle" "skewer" "solder" "staple" "stitch" "strap"
                 "string" "suture" "tack" "tape" "tether" "thread" "thumbtack"
                 "tie" "trammel" "truss" "weld" "wire" "yoke" "zip")
                (:S AGENT :IO PATIENT :OC RESULT) (:S PATIENT (:M ADVERB))
                (:S PATIENT (:M ADVERB) :TO CO-PATIENT :ON CO-PATIENT :ONTO
                 CO-PATIENT)
                (:S AGENT :O PATIENT)
                (:S AGENT :O PATIENT :TO CO-PATIENT :ON CO-PATIENT :ONTO
                 CO-PATIENT)))

(define-mixin-category tape-22.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.CO-PATIENT TAPE-22.4)
  :realization (:VERB ("clamp" "clip" "clasp" "gum" "paste" "reeve")
                (:S PATIENT :TO CO-PATIENT :ON CO-PATIENT :ONTO CO-PATIENT)))

(define-mixin-category tell-37.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.RECIPIENT NP-V-NP.RECIPIENT-PP.TOPIC NP-V-NP.RECIPIENT-S
           WITH-AGENT WITH-RECIPIENT WITH-TOPIC)
  :binds ((SPARSER::TOPIC SPEECH-ACT)
          (SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("acquaint" "inform" "apprise" "notify" "update" "remind")
                (:S AGENT :IO RECIPIENT :OC TOPIC)
                (:S AGENT :O RECIPIENT :OF TOPIC) (:S AGENT :O RECIPIENT)))

(define-mixin-category terminus-47.9
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-ADJ WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION))
  :realization (:VERB ("begin" "end" "lead" "start" "stop" "terminate")
                (:S THEME :|| LOCATION)))

(define-mixin-category throw-17.1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-PP.DESTINATIONS
           NP-V-NP-PP.INITIAL_LOCATION
           NP-V-NP-PP.INITIAL_LOCATION-PP.DESTINATION NP-V-NP-ADVP WITH-AGENT
           WITH-THEME WITH-SOURCE WITH-DESTINATION WITH-RESULT)
  :binds ((SPARSER::DESTINATION (:OR PHYSICAL-AGENT LOCATION REGION))
          (SPARSER::SOURCE LOCATION) (SPARSER::THEME PHYSICAL))
  :realization (:VERB ("cast" "discard" "drive")
                (:S AGENT :O THEME (:M ADVERB))
                (:S AGENT :O THEME :SRC SOURCE :DEST_DIR DESTINATION)
                (:S AGENT :O THEME :SRC SOURCE)
                (:S AGENT :O THEME :DEST DESTINATION :LOC DESTINATION)
                (:S AGENT :O THEME)))

(define-mixin-category throw-17.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-DATIVE-NP WITH-DESTINATION THROW-17.1)
  :binds ((SPARSER::DESTINATION PHYSICAL-AGENT))
  :realization (:VERB
                ("bash" "bat" "bunt" "chuck" "fire" "flick" "fling" "flip"
                 "hit" "hurl" "knock" "lob" "loft" "nudge" "pass" "pitch"
                 "punt" "shoot" "shove" "slam" "slap" "sling" "smash" "tap"
                 "boot")
                (:S AGENT :IO DESTINATION :OC THEME)))

(define-mixin-category throw-17.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.RESULT NP-V-PP.RESULT-NP WITH-CAUSE THROW-17.1-1)
  :realization (:VERB ("catapult" "kick" "launch" "throw" "tip" "toss")
                (:S CAUSE :INTO RESULT :O THEME)
                (:S CAUSE :O THEME :INTO RESULT)))

(define-mixin-category tingle-40.8.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.STIMULUS WITH-EXPERIENCER WITH-PATIENT WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER PHYSICAL-AGENT))
  :realization (:VERB
                ("ache" "burn" "hum" "palpitate" "pound" "prickle" "pucker"
                 "reel" "smart" "spin" "split" "sting" "swim" "throb" "tickle"
                 "tingle" "twinge")
                (:S PATIENT :FROM STIMULUS :AT STIMULUS) (:S PATIENT)))

(define-mixin-category touch-20
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT WITH-AGENT WITH-EXPERIENCER
           WITH-INSTRUMENT)
  :binds ((SPARSER::INSTRUMENT SOLID) (SPARSER::EXPERIENCER PHYSICAL))
  :realization (:VERB NIL (:S AGENT :O EXPERIENCER :WITH INSTRUMENT)
                (:S AGENT :O EXPERIENCER)))

(define-mixin-category touch-20-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.INSTRUMENT WITH-EXPERIENCER TOUCH-20)
  :binds ((SPARSER::EXPERIENCER (:OR NIL PRONOUN)))
  :realization (:VERB
                ("caress" "fondle" "grasp" "graze" "grip" "grope" "kiss"
                 "knead" "lick" "massage" "nudge" "osculate" "pat" "paw" "peck"
                 "pet" "pinch" "prod" "rub" "squeeze" "sting" "stroke" "tickle"
                 "touch" "tug" "tweak" "twinge" "wring" "chafe")
                (:S AGENT :O EXPERIENCER :WITH INSTRUMENT)
                (:S AGENT :O EXPERIENCER)))

(define-mixin-category transcribe-25.4
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION WITH-AGENT WITH-THEME
           WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION PHYSICAL) (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("chart" "chronicle" "copy" "document" "duplicate" "film"
                 "forge" "microfilm" "photocopy" "photograph" "record" "tally"
                 "tally_up" "tape" "televise" "transcribe" "type" "videotape"
                 "write_up" "write_out")
                (:S AGENT :O THEME :LOC DESTINATION :DEST_CONF DESTINATION)
                (:S AGENT :O THEME)))

(define-mixin-category transfer_mesg-37.1.1
  :specializes subcategorization-pattern
  :mixins (NP-V-HOW-S NP-V-HOW-S_INF NP-V-PP.RECIPIENT-HOW-S
           NP-V-PP.RECIPIENT-HOW-S_INF NP-V-WHAT-S NP-V-WHAT-S_INF NP-V-NP
           NP-V-NP-PP.RECIPIENT NP-V-PP.SOURCE NP-V WITH-AGENT WITH-TOPIC
           WITH-RECIPIENT WITH-SOURCE)
  :binds ((SPARSER::RECIPIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("demonstrate" "elucidate" "explain" "explicate" "expound"
                 "justify" "narrate" "pose" "preach" "recap" "recite" "relay"
                 "sniff" "illustrate" "verify" "corroborate" "communicate"
                 "outline" "summarize" "sum_up" "boil_down" "snitch"
                 "write_in")
                (:S AGENT) (:S AGENT :FROM SOURCE)
                (:S AGENT :O TOPIC :TO RECIPIENT) (:S AGENT :O TOPIC)
                (:S AGENT :TO RECIPIENT :O TOPIC)))

(define-mixin-category transfer_mesg-37.1.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-DATIVE-NP TRANSFER_MESG-37.1.1)
  :realization (:VERB ("dictate" "quote" "read")
                (:S AGENT :IO RECIPIENT :OC TOPIC)))

(define-mixin-category transfer_mesg-37.1.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.RECIPIENT NP-V-NP-S_INF NP-V-NP-S_ING NP-V-NP-S
           NP-V-NP-WHAT-S NP-V-NP-WHAT-S_INF NP-V-NP-HOW-S
           TRANSFER_MESG-37.1.1-1)
  :realization (:VERB ("show" "teach" "tell" "write")
                (:S AGENT :IO RECIPIENT :OC TOPIC)
                (:S AGENT :O RECIPIENT :ABOUT TOPIC) (:S AGENT :O RECIPIENT)))

(define-mixin-category trick-59.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-S_ING NP-V-NP-PP.RESULT WITH-AGENT WITH-PATIENT
           PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("bamboozle" "cozen" "fox" "bullshit" "bluff" "blackmail"
                 "cheat" "con" "deceive" "delude" "dupe" "ensnare" "entrap"
                 "extort" "fool" "hoodwink" "manipulate" "mislead" "trick"
                 "trap")
                (:S AGENT :O PATIENT :INTO RESULT)
                (:S AGENT :O PATIENT :INTO PREDICATE) (:S AGENT :O PATIENT)))

(define-mixin-category trifle-105.3
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.THEME WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("dally" "diddle" "fiddle" "play" "toy" "trifle")
                (:S AGENT :WITH THEME)))

(define-mixin-category try-61.1
  :specializes subcategorization-pattern
  :mixins (NP-V-S_ING NP-V-NP NP-V-S_INF WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("try" "attempt" "intend") (:S AGENT :O THEME)))

(define-mixin-category turn-26.6.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP.PATIENT-PP.MATERIAL-PP.RESULT
           NP.PATIENT-V-PP.MATERIAL-PP.RESULT NP-V-NP.PATIENT-PP.RESULT
           NP.PATIENT-V-PP.RESULT NP-V NP-V-NP WITH-AGENT WITH-PATIENT
           WITH-RESULT WITH-SOURCE)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("alter" "deform" "metamorphose" "morph" "mutate" "transform"
                 "translate" "transmute")
                (:S AGENT :O PATIENT) (:S PATIENT) (:S PATIENT :INTO RESULT)
                (:S AGENT :O PATIENT :INTO RESULT)
                (:S PATIENT :FROM SOURCE :INTO RESULT)
                (:S AGENT :O PATIENT :FROM SOURCE :INTO RESULT)))

(define-mixin-category turn-26.6.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.RESULT NP-V-PP.MATERIAL-PP.RESULT
           NP-V-PP.RESULT--PP.MATERIAL TURN-26.6.1)
  :realization (:VERB ("change" "convert" "turn")
                (:S AGENT :TO RESULT :FROM SOURCE)
                (:S AGENT :FROM SOURCE :TO RESULT) (:S AGENT :TO RESULT)))

(define-mixin-category urge-58.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PATIENT WITH-RESULT)
  :binds ((SPARSER::PATIENT (:OR PHYSICAL-AGENT COMPANY))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("bring") (:S AGENT :O PATIENT)))

(define-mixin-category urge-58.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_ING URGE-58.1)
  :realization (:VERB
                ("call_on" "dare" "egg_on" "force" "invite" "lean_on" "push"
                 "summon" "tempt")
                (:S AGENT :IO PATIENT :OC RESULT)))

(define-mixin-category urge-58.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-THAT-S URGE-58.1-1)
  :realization (:VERB
                ("admonish" "ask" "encourage" "exhort" "entreat" "implore"
                 "lobby" "press" "pressure" "prod" "urge")
                (:S AGENT :IO PATIENT :OC TOPIC)))

(define-mixin-category use-105.1
  :specializes subcategorization-pattern
  :mixins (TAKES-ADVERB NP-V-NP NP-V-NP-ADV NP-V-NP-PP.PREDICATE NP-V-NP-S_INF
           WITH-AGENT WITH-THEME PREDICATION)
  :binds ((SPARSER::PREDICATE PREDICATE)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("use" "utilize" "apply" "employ" "exert" "exploit" "play"
                 "reuse" "run" "work")
                (:S AGENT :IO THEME :OC PREDICATE)
                (:S AGENT :O THEME :FOR PREDICATE)
                (:S AGENT :O THEME (:M ADVERB)) (:S AGENT :O THEME)))

(define-mixin-category vehicle-51.4.1
  :specializes subcategorization-pattern
  :mixins (NP.THEME-V NP.THEME-V-PP.LOCATION NP-V-NP-PP.LOCATION NP-V-NP
           NP-V-NP-ADJ NP-V-NP-PP.RESULT WITH-AGENT WITH-THEME WITH-PATH
           WITH-RESULT)
  :binds ((SPARSER::PATH PHYSICAL) (SPARSER::THEME PHYSICAL-AGENT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("balloon" "boat" "bobsled" "bus" "cab" "caravan" "chariot"
                 "coach" "dogsled" "ferry" "gondola" "helicopter" "jeep" "jet"
                 "moped" "motor" "parachute" "punt" "rickshaw" "rocket"
                 "sledge" "sleigh" "taxi" "tram" "trolley" "yacht")
                (:S AGENT :O THEME :TO RESULT :INTO RESULT)
                (:S AGENT :IO THEME :OC RESULT) (:S AGENT :O THEME)
                (:S AGENT :O THEME :PATH PATH) (:S THEME :PATH PATH) (:S THEME)))

(define-mixin-category vehicle-51.4.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP HAS-LOCATION VEHICLE-51.4.1)
  :binds ((SPARSER::LOCATION PHYSICAL))
  :realization (:VERB
                ("bicycle" "bike" "canoe" "cycle" "kayak" "motorbike"
                 "motorcycle" "raft" "skate" "skateboard" "ski" "sled"
                 "toboggan")
                (:S THEME :O LOCATION)))

(define-mixin-category vehicle_path-51.4.3
  :specializes subcategorization-pattern
  :mixins (NP-V-NP NP-V-NP-PP.DESTINATION NP-V-NP-PP.INITIAL_LOCATION
           WITH-AGENT WITH-THEME WITH-PATH WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION LOCATION) (SPARSER::SOURCE LOCATION)
          (SPARSER::THEME MOTOR-VEHICLE)
          (SPARSER::AGENT (:OR PHYSICAL-AGENT MOTOR-VEHICLE)))
  :realization (:VERB ("take" "sail" "coast") (:S AGENT :O PATH :FROM SOURCE)
                (:S AGENT :O PATH :TO DESTINATION) (:S AGENT :O PATH)
                (:S AGENT :O THEME :FROM SOURCE)
                (:S AGENT :O THEME :TO DESTINATION) (:S AGENT :O THEME)))

(define-mixin-category void-106
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-AGENT WITH-PATIENT)
  :binds ((SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB ("annul" "quash" "void" "avoid" "invalidate" "nullify")
                (:S AGENT :O PATIENT)))

(define-mixin-category volunteer-95.4
  :specializes subcategorization-pattern
  :mixins (NP-V-S_INF NP-V-PP NP-V-NP-PP WITH-AGENT WITH-INSTRUMENT WITH-THEME
           WITH-ATTRIBUTE)
  :binds ((SPARSER::INSTRUMENT OBJECT)
          (SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT))))
  :realization (:VERB ("offer" "proffer") (:S AGENT :IO INSTRUMENT :OC THEME)
                (:S AGENT :O THEME)))

(define-mixin-category volunteer-95.4-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP VOLUNTEER-95.4)
  :realization (:VERB ("volunteer" "enlist" "sign_up") (:S AGENT :O ATTRIBUTE)))

(define-mixin-category waltz-51.5
  :specializes subcategorization-pattern
  :mixins (NP.THEME-V NP-V-PP.TRAJECTORY-PP.GOAL NP-V-NP-PP.TRAJECTORY
           NP-V-NP-ADJP NP-V-NP-PP.GOAL WITH-AGENT WITH-THEME WITH-PATH
           WITH-GOAL)
  :binds ((SPARSER::PATH PHYSICAL) (SPARSER::THEME PHYSICAL-AGENT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("boogie" "bop" "cancan" "clog" "conga" "dance" "foxtrot" "jig"
                 "jitterbug" "jive" "pirouette" "polka" "quickstep" "rumba"
                 "samba" "shuffle" "squaredance" "tango" "tapdance" "waltz")
                (:S AGENT :O THEME :TO GOAL :INTO GOAL)
                (:S AGENT :IO THEME :OC GOAL) (:S AGENT :O THEME :PATH PATH)
                (:S THEME :PATH PATH :O GOAL) (:S THEME)))

(define-mixin-category want-32.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP WITH-INSTRUMENT WITH-THEME)
  :binds ((SPARSER::INSTRUMENT PHYSICAL-AGENT))
  :realization (:VERB ("covet" "crave" "desire" "fancy" "love")
                (:S INSTRUMENT :O THEME)))

(define-mixin-category want-32.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-FOR-NP-S_INF NP-V-NP-ADV NP-V-S_ING NP-V-NP-ADJ NP-V-NP-S_ING
           NP-V-S_INF WANT-32.1)
  :realization (:VERB ("enjoy") (:S INSTRUMENT :O THEME)))

(define-mixin-category want-32.1-1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-S_INF NP-V-NP-TO-BE-ADJ WANT-32.1-1)
  :realization (:VERB ("want" "need" "like" "prefer" "desire")
                (:S INSTRUMENT :O THEME)))

(define-mixin-category weather-57
  :specializes subcategorization-pattern
  :mixins (IT-V IT-V-NP.THEME IT-V-PP.THEME WITH-THEME)
  :binds ((SPARSER::THEME (:OR PHYSICAL NIL)))
  :realization (:VERB
                ("blow" "bucket" "clear" "drizzle" "fog" "frost" "freeze"
                 "gust" "hail" "howl" "lightning" "mist" "mizzle" "pelt" "pour"
                 "precipitate" "rain" "roar" "shower" "sleet" "snow" "spit"
                 "spot" "sprinkle" "storm" "swelter" "teem" "thaw" "thunder")
                (:WITH THEME) (:O THEME) NIL))

(define-mixin-category weekend-56
  :specializes subcategorization-pattern
  :mixins (NP-V-PP.LOCATION WITH-THEME HAS-LOCATION)
  :binds ((SPARSER::LOCATION LOCATION) (SPARSER::THEME PHYSICAL-AGENT))
  :realization (:VERB
                ("December" "holiday" "honeymoon" "junket" "overnight"
                 "sojourn" "summer" "vacation" "weekend" "winter")
                (:S THEME :LOC LOCATION)))

(define-mixin-category wink-40.3.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.THEME NP-V NP-V-PP.RECIPIENT NP-V-PP.THEME NP-V-NP
           WITH-AGENT WITH-PATIENT WITH-THEME WITH-RECIPIENT)
  :binds ((SPARSER::RECIPIENT PHYSICAL-AGENT) (SPARSER::THEME SPEECH-ACT)
          (SPARSER::AGENT PHYSICAL-AGENT))
  :realization (:VERB
                ("beckon" "blink" "clap" "gesture" "nod" "point" "shrug"
                 "squint" "wave" "wink")
                (:S AGENT :O THEME) (:S AGENT :IN THEME)
                (:S AGENT :DEST_DIR RECIPIENT) (:S AGENT)
                (:S AGENT :O PATIENT :IN THEME) (:S AGENT :O PATIENT)))

(define-mixin-category wipe_instr-10.4.2
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.INITIAL_LOCATION NP-V-NP.INITIAL_LOCATION NP-V
           NP-V-NP-ADJP-RESULT WITH-AGENT WITH-THEME WITH-SOURCE
           WITH-DESTINATION WITH-INSTRUMENT WITH-RESULT)
  :binds ((SPARSER::INSTRUMENT (:AND/OR PHYSICAL PHYSICAL-AGENT))
          (SPARSER::DESTINATION LOCATION) (SPARSER::SOURCE LOCATION)
          (SPARSER::THEME (:AND/OR PHYSICAL PHYSICAL-AGENT))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT PHYSICAL-OBJECT)))
  :realization (:VERB
                ("file" "filter" "hoover" "iron" "plough" "sandpaper" "sponge"
                 "squeegee" "towel")
                (:S AGENT :IO SOURCE :OC RESULT) (:S AGENT)
                (:S AGENT :O SOURCE) (:S AGENT :O THEME :SRC SOURCE)))

(define-mixin-category wipe_instr-10.4.2-1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.DESTINATION WITH-DESTINATION WIPE_INSTR-10.4.2)
  :realization (:VERB
                ("brush" "comb" "hose" "mop" "plow" "rake" "shear" "shovel"
                 "siphon" "vacuum")
                (:S AGENT :O THEME :DEST_CONF DESTINATION)))

(define-mixin-category wipe_manner-10.4.1
  :specializes subcategorization-pattern
  :mixins (NP-V-NP-PP.SOURCE NP-V-NP.SOURCE NP-V-NP.THEME WITH-AGENT WITH-THEME
           WITH-SOURCE WITH-DESTINATION)
  :binds ((SPARSER::DESTINATION LOCATION) (SPARSER::SOURCE LOCATION)
          (SPARSER::THEME (:AND/OR PHYSICAL PHYSICAL-AGENT)))
  :realization (:VERB
                ("buff" "distill" "distil" "exorcise" "expunge" "expurgate"
                 "flush" "leach" "offload" "polish" "purge" "shave" "smooth"
                 "skim" "soak" "strain" "trim" "unload" "weed" "whisk" "winnow"
                 "wring")
                (:S AGENT :O THEME) (:S AGENT :O SOURCE)
                (:S AGENT :O THEME :SRC SOURCE)))

(define-mixin-category wipe_manner-10.4.1-1
  :specializes subcategorization-pattern
  :mixins (NP-V-PP-CONATIVE WITH-SOURCE WIPE_MANNER-10.4.1)
  :binds ((SPARSER::SOURCE REGION))
  :realization (:VERB
                ("bail" "dab" "dust" "erase" "lick" "pluck" "prune" "rinse"
                 "rub" "scour" "scrape" "scratch" "scrub" "squeeze" "strip"
                 "suck" "suction" "swab" "sweep" "wash" "wear" "wipe")
                (:S AGENT :O SOURCE)))

(define-mixin-category wish-62
  :specializes subcategorization-pattern
  :mixins (NP-V-FOR-NP-S_INF NP-V-NP NP-V-NP-TO-BE-ADJ NP-V-NP-ADJ NP-V-THAT-S
           NP-V-S_INF WITH-EXPERIENCER WITH-STIMULUS)
  :binds ((SPARSER::EXPERIENCER (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("expect" "wish" "intend" "plan" "propose" "think" "aim"
                 "dream" "imagine" "yen")
                (:S EXPERIENCER :O STIMULUS)))

(define-mixin-category withdraw-82
  :specializes subcategorization-pattern
  :mixins (WITH-AGENT WITH-SOURCE)
  :binds ((SPARSER::AGENT (:AND/OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB NIL))

(define-mixin-category withdraw-82-1
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.SOURCE NP-V-PP.SOURCE-S_ING WITHDRAW-82)
  :realization (:VERB
                ("back_out" "chicken_out" "get_out" "wriggle_out" "bow_out"
                 "pull_out")
                (:S AGENT :OF SOURCE) (:S AGENT)))

(define-mixin-category withdraw-82-2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.SOURCE NP-V-PP.SOURCE-S_ING WITHDRAW-82)
  :realization (:VERB ("get_away" "back_off" "back_down")
                (:S AGENT :FROM SOURCE) (:S AGENT)))

(define-mixin-category withdraw-82-3
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.SOURCE WITHDRAW-82)
  :realization (:VERB ("withdraw" "retreat" "pull_away" "retire")
                (:S AGENT :FROM SOURCE) (:S AGENT)))

(define-mixin-category work-73.2
  :specializes subcategorization-pattern
  :mixins (NP-V NP-V-PP.THEME NP-V-PP.CO-AGENT-PP.THEME NP-V-PP.THEME-S_ING
           NP-V-PP.CO-AGENT-PP.THEME-S_ING WITH-AGENT WITH-AGENT WITH-THEME)
  :binds ((SPARSER::AGENT (:OR (PRONOUN PHYSICAL-AGENT)))
          (SPARSER::AGENT (:OR PHYSICAL-AGENT COMPANY)))
  :realization (:VERB
                ("bang_away" "labor" "labour" "plug_away" "slog_away" "work")
                (:S AGENT :WITH AGENT :AT THEME) (:S AGENT :AT THEME)
                (:S AGENT :WITH AGENT :ON THEME) (:S AGENT :ON THEME)
                (:S AGENT)))
