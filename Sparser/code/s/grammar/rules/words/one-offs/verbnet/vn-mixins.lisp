;; written 16:31:24 8/15/2019

(in-package :sparser)


(define-mixin-category absorb-39.8
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.source with-goal with-theme with-source)
  :realization (:verb ("take" "ingest" "absorb")
                (:s goal :o theme :from source) (:s goal :o theme)))

(define-mixin-category accept-77.1
  :specializes subcategorization-pattern
  :mixins (np-v-how-s np-v-np np-v-s_ing np-v-that-s np-v-what-s with-agent
           with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("encourage" "understand" "buy" "accept")
                (:s agent :what_extract theme) (:s agent :thatcomp theme)
                (:s agent :poss_ing theme) (:s agent :c theme)
                (:s agent :how_extract theme)))

(define-mixin-category accompany-51.7
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.destination with-agent with-theme
           with-destination)
  :binds ((sparser::theme physical-agent) (sparser::agent physical-agent))
  :realization (:verb
                ("steer" "shepherd" "misdirect" "lead" "guide" "escort"
                 "conduct" "accompany")
                (:s agent :o theme :spatial destination) (:s agent :o theme)))

(define-mixin-category acquiesce-95.1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.co-agent np-v-pp.theme with-agent with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("yield" "succumb" ("give" :prep "in") ("give" :prep "way")
                 "fall" "defer" "capitulate" "bow" "accede")
                (:s agent :to theme) (:s agent :to agent)))

(define-mixin-category acquiesce-95.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-s_inf acquiesce-95.1)
  :realization (:verb ("submit" "consent" "acquiesce")
                (:s agent :to-comp theme)))

(define-mixin-category act-114
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent predication)
  :binds ((sparser::predicate predicate)
          (sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb
                (("engage" :prep "in") "cause" "make" "fulfill" "execute"
                 "conduct" ("carry" :prep "through") ("carry" :prep "out")
                 "action")
                (:s agent :o predicate)))

(define-mixin-category act-114-1
  :specializes subcategorization-pattern
  :mixins (np-v act-114)
  :realization (:verb ("perform" "do") (:s agent)))

(define-mixin-category act-114-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.theme np-v-pp.predicate act-114-1)
  :realization (:verb ("move" "act") (:s agent :o predicate)
                (:s agent :on predicate)))

(define-mixin-category addict-96
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.stimulus np-v-np-s_ing with-agent with-patient
           with-stimulus)
  :binds ((sparser::patient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("slant" "woo" "predispose" "incline" "dispose" "bias"
                 "addict")
                (:s agent :o patient :to stimulus)))

(define-mixin-category adjust-26.9
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp np-v-np-s_ing np-v-s_ing np-v-pp with-agent
           with-patient with-goal with-source)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("assimilate" "readapt" "readjust" "fit" "gear" "adjust"
                 "conform" "accommodate" "adapt")
                (:s agent :to goal) (:s agent :o patient :to goal)
                (:s agent :o patient)))

(define-mixin-category admire-31.2
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.attribute np-v-np.stimulus np-v-that-s np-v-s_ing
           np-v-np-s_ing with-stimulus with-experiencer with-attribute)
  :binds ((sparser::experiencer physical-agent))
  :realization (:verb
                ("suffer" "believe" "rue" "resent" "pity" "mourn" "loathe"
                 "lament" "execrate" "envy" "dread" "distrust" "deplore"
                 "abhor" "worship" "venerate" "value" "trust" "treasure"
                 "tolerate" "support" "stand" "savor" "revere" "relish"
                 "respect" "prize" "reaffirm" "affirm" "prefer" "mistrust"
                 "miss" "idolize" "grudge" "favor" "fancy" "exalt" "esteem"
                 "detest" "deify" "cherish" "bewail" "bear" "applaud"
                 "appreciate" "adore" "admire")
                (:s experiencer :poss_ing stimulus)
                (:s experiencer :be_sc_ing stimulus)
                (:s experiencer :thatcomp stimulus)
                (:s experiencer :o stimulus)
                (:s experiencer :o stimulus :for attribute)))

(define-mixin-category admire-31.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-s_inf admire-31.2)
  :realization (:verb
                ("hate" "fear" "enjoy" "love" "like" "regret" "dislike"
                 "disdain" "despise")
                (:s experiencer :to-comp stimulus)))

(define-mixin-category admit-64.3
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.location with-agent with-theme has-location)
  :binds ((sparser::location location)
          (sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb ("hail" "let" "allow") (:s agent :io theme :l location)))

(define-mixin-category admit-64.3-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-adv np-v-np-pp.location admit-64.3)
  :realization (:verb ("welcome" "receive" "permit" "include" "admit")
                (:s agent :o theme :loc location)
                (:s agent :io theme :l location)))

(define-mixin-category adopt-93
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("take" ("take" :prep "on") ("take" :prep "over") "follow"
                 "adopt" "assume" "abide-by")
                (:s agent :o theme)))

(define-mixin-category advise-37.9
  :specializes subcategorization-pattern
  :mixins (np-v-np.recipient np-v-np.recipient-that-s np-v-np-how-s_inf
           np-v-np-s-quote np-v-np-pp.topic with-agent with-topic
           with-recipient)
  :binds ((sparser::recipient (:or physical-agent company))
          (sparser::topic speech-act)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("notify" "encourage" "educate" "brief" "assure" "alert")
                (:s agent :o recipient :of topic)
                (:s agent :io recipient :quotation topic)
                (:s agent :io recipient :wh_inf topic)
                (:s agent :io recipient :thatcomp topic)
                (:s agent :o recipient :against topic :about topic :concerning
                 topic :on topic :regarding topic :respecting topic)
                (:s agent :o recipient)))

(define-mixin-category advise-37.9-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.topic np-v-that-s np-v-how-s_inf np-v-s-quote advise-37.9)
  :realization (:verb
                ("warn" "instruct" "counsel" "caution" "advise" "admonish")
                (:s agent :quotation topic) (:s agent :wh_inf topic)
                (:s agent :thatcomp topic)
                (:s agent :against topic :about topic :concerning topic :on
                 topic :regarding topic :respecting topic)))

(define-mixin-category allow-64.1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-s_ing with-agent with-beneficiary with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("tolerate" "sanction" "okay" "endorse" "authorize" "approve")
                (:s agent :poss_ing theme) (:s agent :ac_ing theme)
                (:s agent :o theme)))

(define-mixin-category allow-64.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-s allow-64.1)
  :realization (:verb ("permit" "allow")
                (:s agent :io beneficiary :oc_to_inf theme)))

(define-mixin-category amalgamate-22.2
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-advp-middle-pp np-v-advp-middle with-agent
           with-patient with-co-patient)
  :binds ((sparser::agent (:or physical-agent physical-object)))
  :realization (:verb ("intermarry") (:s patient :m adverb)
                (:s patient :m adverb :with co-patient)))

(define-mixin-category amalgamate-22.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.co-patient np-v-np np-v-pp.co-patient with-patient
           with-co-patient amalgamate-22.2)
  :binds ((sparser::co-patient physical) (sparser::patient physical))
  :realization (:verb ("overlap" "match" "integrate" "incorporate" "couple")
                (:s patient :with co-patient) (:s agent :plural patient)
                (:s agent :o patient :into co-patient :to co-patient :with
                 co-patient)))

(define-mixin-category amalgamate-22.2-1-1
  :specializes subcategorization-pattern
  :mixins (np-v amalgamate-22.2-1)
  :realization (:verb ("intermingle" "consolidate" "coalesce" "amalgamate")
                (:s patient)))

(define-mixin-category amalgamate-22.2-2
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.co-patient np-v-np np-v-pp with-patient with-co-patient
           with-agent amalgamate-22.2)
  :binds ((sparser::agent (:or physical-agent abstract))
          (sparser::co-patient (:or physical-agent abstract))
          (sparser::patient physical))
  :realization (:verb
                ("identity" "total" "integrate" "incorporate" "confuse"
                 "confederate" "compare" "associate" "affiliate" "team" "pair"
                 "muddle" "entangle" "conjoin")
                (:s patient :with co-patient) (:s agent :plural patient)
                (:s agent :o patient :with co-patient)))

(define-mixin-category amalgamate-22.2-2-1
  :specializes subcategorization-pattern
  :mixins (np-v amalgamate-22.2-2)
  :realization (:verb
                ("unify" "rhyme" "repackage" "interrelate" "intermingle"
                 "harmonize" "correlate" "contrast" "consolidate" "conflate"
                 "coincide" "coalesce" "unite" "mate" "interweave" "intertwine"
                 "intersperse" "interlock" "interlink" "interlace"
                 "interconnect" "interchange" "entwine" "crisscross"
                 "alternate")
                (:s patient)))

(define-mixin-category amalgamate-22.2-3
  :specializes subcategorization-pattern
  :mixins (np-v-np amalgamate-22.2)
  :realization (:verb ("oppose") (:s agent :plural patient)))

(define-mixin-category amalgamate-22.2-3-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.co-patient amalgamate-22.2-3)
  :realization (:verb ("figure" "introduce")
                (:s agent :o patient :to co-patient)))

(define-mixin-category amalgamate-22.2-3-1-1
  :specializes subcategorization-pattern
  :mixins (np-v with-agent with-patient with-co-patient amalgamate-22.2-3-1)
  :binds ((sparser::co-patient physical-agent)
          (sparser::patient physical-agent) (sparser::agent physical-agent))
  :realization (:verb ("wed" "remarry" "marry") (:s patient)))

(define-mixin-category amalgamate-22.2-3-2
  :specializes subcategorization-pattern
  :mixins (np-v with-agent with-patient with-co-patient amalgamate-22.2-3)
  :binds ((sparser::co-patient physical) (sparser::patient physical)
          (sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb ("engage") (:s patient)))

(define-mixin-category amuse-31.1
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np np-v-adv-middle np-v-np-pro-arb np.cause-v-np
           np-v-np-adj with-experiencer with-stimulus with-result)
  :binds ((sparser::experiencer physical-agent))
  :realization (:verb
                ("smite" "roil" "wow" "wound" "worry" "weary" "vex" "upset"
                 "uplift" "unsettle" "unnerve" "try" "trouble" "transport"
                 "transfix" "touch" "torture" "torment" "titillate" "tire"
                 "tickle" "throw" "thrill" "threaten" "terrorize" "terrify"
                 "tempt" "tantalize" "surprise" "stupefy" "stun" "stump"
                 "strike" "stir" "sting" "stimulate" "startle" "stagger"
                 "spook" "spellbind" "soothe" "solace" "sober" "sicken" "shock"
                 "shame" "shake" "scare" "scandalize" "satisfy" "sadden"
                 "ruffle" "rile" "revolt" "revitalize" "repulse" "repel"
                 "relieve" "relax" "rejuvenate" "refresh" "recharge" "reassure"
                 "ravish" "rankle" "rag" "quench" "puzzle" "provoke"
                 "preoccupy" "please" "plague" "placate" "pique" "pester"
                 "perturb" "perplex" "peeve" "pain" "pacify" "overwhelm"
                 "overawe" "outrage" "offend" "occupy" "obsess" "numb"
                 "nonplus" "nettle" "nauseate" "mystify" "muddle" "move"
                 "mortify" "mollify" "molest" "misguide" "miff" "mesmerize"
                 "menace" "madden" "lull" "kill" "jolt" "jollify" "jar" "jade"
                 "irritate" "irk" "invigorate" "intrigue" "intoxicate"
                 "intimidate" "interest" "insult" "inspire" "infuriate"
                 "inflame" "incense" "impress" "impair" "hypnotize" "hurt"
                 "humiliate" "humble" "horrify" "hearten" "haunt" "harm"
                 "harass" "grieve" "gratify" "gladden" "galvanize" "gall"
                 "fuddle" "frustrate" "frighten" "fox" "fluster" "flummox"
                 "floor" "flatter" "flabbergast" "faze" "fatigue" "fascinate"
                 "exhilarate" "exhaust" "excite" "exasperate" "entrance"
                 "entice" "enthuse" "enthrall" "entertain" "enrapture" "enrage"
                 "enliven" "enlighten" "engross" "engage" "enflame" "enervate"
                 "encourage" "enchant" "embolden" "embarrass" "electrify"
                 "elate" "dumbfound" "divert" "disturb" "distress" "distract"
                 "dissatisfy" "disquiet" "displease" "dispirit" "dismay"
                 "disillusion" "dishonour" "dishearten" "disgust" "disgruntle"
                 "disgrace" "discourage" "discompose" "disconcert" "discomfit"
                 "discombobulate" "disarm" "disappoint" "devastate" "depress"
                 "demoralize" "demolish" "delight" "deject" "dazzle" "daze"
                 "daunt" "cut" "crush" "cow" "convince" "content" "console"
                 "confuse" "confound" "concern" "comfort" "cloy" "chill"
                 "cheer" "charm" "chagrin" "captivate" "calm" "bug" "browbeat"
                 "bother" "bore" "boggle" "bewitch" "bewilder" "beguile"
                 "befuddle" "baffle" "awe" "astound" "astonish" "assuage"
                 "arouse" "appease" "appall" "antagonize" "annoy" "anger"
                 "amuse" "amaze" "alienate" "alarm" "agonize" "agitate"
                 "aggrieve" "aggravate" "affront" "afflict" "affect" "abash")
                (:s stimulus :io experiencer :o result)
                (:s stimulus :o experiencer) (:s stimulus)
                (:s experiencer :m adverb)))

(define-mixin-category animal_sounds-38
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.recipient np-v-np.theme np-v-pp.stimulus with-agent
           with-theme with-recipient)
  :binds ((sparser::theme speech-act) (sparser::agent physical-agent))
  :realization (:verb
                ("whine" "wheeze" "trumpet" "thunder" "snarl" "screech"
                 "rumble" "moan" "ululate" "groan" "rattle" "boom" "yowl" "yip"
                 "yelp" "yell" "yap" "woof" "whistle" "whinny" "whimper"
                 "warble" "wail" "twitter" "tweet" "trill" "stridulate"
                 "squeal" "squeak" "squawk" "scrawk" "rooroo" "roar" "quack"
                 "purr" "pipe" "peep" "oink" "neigh" "moo" "mew" "meow" "low"
                 "ki-yi" "howl" "hoot" "honk" "hiss" "hee-haw" "grunt" "growl"
                 "gobble" "drone" "cuckoo" "crow" "croak" "coo" "cluck"
                 "chitter" "chirrup" "chirp" "cheep" "chatter" "caw" "call"
                 "cackle" "buzz" "bray" "bleat" "blat" "bellow" "bay" "bark"
                 "baa")
                (:s agent :at stimulus) (:s agent :o theme)
                (:s agent :dest_dir recipient) (:s agent)))

(define-mixin-category appeal-31.4
  :specializes subcategorization-pattern
  :mixins (np-v-pp.experiencer with-stimulus with-experiencer)
  :binds ((sparser::experiencer physical-agent))
  :realization (:verb nil (:s stimulus :to experiencer)))

(define-mixin-category appeal-31.4-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.experiencer appeal-31.4)
  :realization (:verb ("niggle") (:s stimulus :at experiencer)))

(define-mixin-category appeal-31.4-2
  :specializes subcategorization-pattern
  :mixins (np-v-pp.experiencer appeal-31.4)
  :realization (:verb ("jar" "grate") (:s stimulus :on experiencer)))

(define-mixin-category appeal-31.4-3
  :specializes subcategorization-pattern
  :mixins (np-v appeal-31.4)
  :realization (:verb ("appeal") (:s stimulus)))

(define-mixin-category appoint-29.1
  :specializes subcategorization-pattern
  :mixins (np-v-np-np np-v-np-pp.result np-v-np-to-be-np np-v-np with-agent
           with-theme with-result)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("nominate" "name" "want" "reelect" "upgrade" "adopt" "ordain"
                 "mark" "proclaim" "install" "elect" "designate" "crown"
                 "coronate" "appoint")
                (:s agent :o theme) (:s agent :io theme :c result)
                (:s agent :io theme :o result)))

(define-mixin-category assessment-34.1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.attribute np-v-np.attribute with-agent with-theme
           with-attribute)
  :binds ((sparser::agent physical-agent))
  :realization (:verb
                ("watch" ("try" :prep "out") ("try" :prep "on") "try" "test"
                 "taste" "survey" "surveil" "study" "scrutinize" "scan"
                 "sample" "review" "research" "regard" "proofread" "peruse"
                 "monitor" "investigate" "inspect" ("go" :prep "over") "follow"
                 ("feel" :prep "out") "evaluate" "examine" "consult" "check"
                 "audit" "assess" "assay" "appraise" "analyze" "analyse")
                (:s agent :genitive theme :io attribute)
                (:s agent :o theme :for attribute) (:s agent :o theme)))

(define-mixin-category assuming_position-50
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.location with-agent has-location)
  :binds ((sparser::location (:and/or location region))
          (sparser::agent physical-agent))
  :realization (:verb
                ("straddle" "stoop" ("stand" :prep "up") "stand"
                 ("squat" :prep "down") "squat" "sprawl" "slump" "slouch"
                 ("sit" :prep "down") "sit" "rise" "plop" "perch"
                 ("lie" :prep "down") "lie" "lean" "kneel" ("hunch" :prep "up")
                 "hunch" "hang" "flop" "crouch" "bow" "bend")
                (:s agent :loc location) (:s agent)))

(define-mixin-category attack-60.1
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-patient)
  :binds ((sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb
                (("set" :prep "upon") ("round" :prep "on") ("lay" :prep "into")
                 "jump" ("fall" :prep "upon") "charge" "bombard" "bomb"
                 "assault" "assail" "ambush")
                (:s agent :o patient)))

(define-mixin-category attack-60.1-1
  :specializes subcategorization-pattern
  :mixins (np-v with-agent with-patient attack-60.1)
  :binds ((sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb ("strike" "raid" "charge" "attack") (:s agent)))

(define-mixin-category attend-107.4
  :specializes subcategorization-pattern
  :mixins (with-theme with-goal)
  :realization (:verb nil))

(define-mixin-category attend-107.4-1
  :specializes subcategorization-pattern
  :mixins (np-v-np attend-107.4)
  :realization (:verb ("patronize" "attend") (:s theme :o goal)))

(define-mixin-category attend-107.4-2
  :specializes subcategorization-pattern
  :mixins (np-v-pp attend-107.4)
  :realization (:verb ("belong" "go") (:s theme :nil goal)))

(define-mixin-category avoid-52
  :specializes subcategorization-pattern
  :mixins (np-v-np.location np-v-np.theme np-v-s_ing with-agent has-location
           with-theme)
  :binds ((sparser::location location) (sparser::agent physical-agent))
  :realization (:verb
                ("sidestep" "shun" "forgo" "evade" "eschew" "elude" "duck"
                 "dodge" "circumvent" "boycott" "avoid")
                (:s agent :poss_ing theme) (:s agent :be_sc_ing theme)
                (:s agent :o theme) (:s agent :l location)))

(define-mixin-category banish-10.2
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.source np-v-np-pp.destination with-agent
           with-theme with-source with-destination)
  :binds ((sparser::destination (:and/or location region))
          (sparser::source location) (sparser::theme physical-agent)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("boot" "turn-out" "turn-back" "turn-away" "shanghai" "remove"
                 "recuse" "recall" "extradite" "expel" "exile" "evacuate"
                 "dismiss" "discharge" "deport" "banish")
                (:s agent :o theme :to destination)
                (:s agent :o theme :src source) (:s agent :o theme)))

(define-mixin-category base-97.1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.source np-v-np-pp.source-whether-s
           np-v-np-pp.source-s_ing np-v-np-pp.source-s with-agent with-theme
           with-source)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("construe" "build" "found" "ground" "establish" "base")
                (:s agent :o theme :on source)))

(define-mixin-category battle-36.4
  :specializes subcategorization-pattern
  :mixins (np-v-pp.co-agent np-v np-v-pp.co-agent-pp.theme-whether-s
           np-v-pp.co-agent-pp.theme-what-s
           np-v-pp.co-agent-pp.theme-what-s_inf
           np-v-pp.co-agent-pp.theme-whether-s_inf np-v-pp.co-agent-pp.theme
           np-v-pp.topic-np-s_ing np-v-pp.theme-whether-s np-v-pp.theme-what-s
           np-v-pp.theme-whether-s_inf np-v-pp.theme-what-s_inf np-v-pp.theme
           with-agent with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("wrangle" "war" "vie" "tussle" "tilt" "struggle" "squabble"
                 "spat" "spar" "skirmish" "scuffle" "scrap" "quibble" "quarrel"
                 "joust" "feud" "fence" "dispute" "dicker" "contend" "compete"
                 "collide" "clash" "brawl" "bicker" "bargain" "argue")
                (:s agent :c theme) (:s agent :what_inf theme)
                (:s agent :wheth_inf theme) (:s agent :what_extract theme)
                (:s agent :wh_comp theme) (:s agent :poss_ing topic)
                (:s agent :with agent :c theme)
                (:s agent :with agent :wheth_inf theme)
                (:s agent :with agent :what_inf theme)
                (:s agent :with agent :what_extract theme)
                (:s agent :with agent :wh_comp theme) (:s agent)
                (:s agent :with agent)))

(define-mixin-category battle-36.4-1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.theme np-v-np-pp.theme-whether-s
           np-v-np-pp.theme-what-s np-v-np-pp.theme-whether-s_inf
           np-v-np-pp.theme-what-s_inf battle-36.4)
  :realization (:verb
                ("wrestle" "refight" "fight" "duel" "debate" "combat" "box"
                 "battle")
                (:s agent :o agent :about theme :|\|| theme :over theme)
                (:s agent :o agent)))

(define-mixin-category become-109.1
  :specializes subcategorization-pattern
  :mixins (np-v-adj with-patient with-result)
  :realization (:verb (("turn" :prep "up") "turn" "get" ("come" :prep "out"))
                (:s patient :o result)))

(define-mixin-category become-109.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.attribute become-109.1)
  :realization (:verb ("grow" "go" "fall" "come")
                (:s patient :c result)))

(define-mixin-category become-109.1-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np become-109.1-1)
  :realization (:verb ("leave" ("end" :prep "up") "become")
                (:s patient :c result)))

(define-mixin-category beg-58.2
  :specializes subcategorization-pattern
  :mixins (np-v-np-s_inf np-v-s_inf with-agent with-patient with-result)
  :binds ((sparser::patient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("importune" "request") (:s agent :to-comp result)))

(define-mixin-category beg-58.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.result beg-58.2)
  :realization (:verb ("supplicate") (:s agent :for result)))

(define-mixin-category beg-58.2-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.result beg-58.2-1)
  :realization (:verb ("beg") (:s agent :o patient :for result)))

(define-mixin-category begin-55.1
  :specializes subcategorization-pattern
  :mixins (np-v-s_inf with-agent with-theme with-instrument)
  :binds ((sparser::instrument object)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                (("set" :prep "out") "proceed" "pledge" ("go" :prep "on"))
                (:s agent :to-comp theme)))

(define-mixin-category begin-55.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-s_ing begin-55.1)
  :realization (:verb (("set" :prep "about")) (:s agent :be_sc_ing theme)))

(define-mixin-category begin-55.1-1-1
  :specializes subcategorization-pattern
  :mixins (np.theme-v np-v-np np-v-pp.instrument np-v-np-pp.instrument
           np.instrument-v-np begin-55.1-1)
  :realization (:verb
                ("undertake" "resume" "recommence" "commence"
                 ("start" :prep "off") "start" "begin")
                (:s instrument :o theme) (:s agent :o theme :with instrument)
                (:s theme :with instrument) (:s agent :o theme) (:s theme)))

(define-mixin-category being_dressed-41.3.3
  :specializes subcategorization-pattern
  :mixins (passive with-agent with-theme)
  :binds ((sparser::agent physical-agent))
  :realization (:verb ("robe" "outfit" "garb" "clothe" "attire")
                (:s agent :in theme)))

(define-mixin-category bend-45.2
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np.patient np-v-np-pp.instrument np.patient-v
           np-v-adv-middle np.instrument-v-np np-v-np-adj np-v-np-pp.result
           np-v-np-pp.result-pp.instrument with-agent with-patient
           with-instrument with-result)
  :binds ((sparser::instrument solid) (sparser::patient solid))
  :realization (:verb
                ("unbend" "wrinkle" "warp" "unwind" "unroll" "unfurl" "unfold"
                 "tauten" "stretch" "straighten" "splay" "slacken" "slack"
                 "shrivel" "shrink" "scrunch" "rumple" "round" "roll" "inflate"
                 "hyperextend" "furrow" "fold" "flex" "distend" "deflate"
                 "decompress" "crumple" "contract" "constrict" "compress"
                 "compact" "crinkle" "crease" "bend")
                (:s agent :o patient :to result :into result :with instrument)
                (:s agent :o patient :to result :into result)
                (:s agent :io patient :o result) (:s instrument :o patient)
                (:s patient :m adverb) (:s patient)
                (:s agent :o patient :with instrument) (:s agent :o patient)))

(define-mixin-category benefit-72.2
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v np-v-pp with-cause with-beneficiary)
  :realization (:verb ("profit" "benefit")
                (:s beneficiary :from cause :by cause) (:s beneficiary)
                (:s cause :o beneficiary)))

(define-mixin-category berry-13.7
  :specializes subcategorization-pattern
  :mixins (np-v with-agent)
  :binds ((sparser::agent physical-agent))
  :realization (:verb
                ("hawk" "whore" "whelk" "whale" "sponge" "snipe" "snail"
                 "shrimp" "shark" "seal" "scollop" "rabbit" "prawn" "pearl"
                 "oyster" "nut" "nest" "mushroom" "log" "hay" "hog" "grouse"
                 "fowl" "fish" "crab" "clam" "blackberry" "birdnest" "berry"
                 "antique")
                (:s agent)))

(define-mixin-category bill-54.5
  :specializes subcategorization-pattern
  :mixins (np-v-np.recipient np-v-np-np.asset with-agent with-extent
           with-recipient)
  :binds ((sparser::recipient (:or physical-agent company))
          (sparser::extent currency)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("wager" "undercharge" "tip" "tax" "spare" "scrimp" "save"
                 "overcharge" "mulct" "invoice" "fine" "charge" "bill" "bet"
                 "amerce")
                (:s agent :io recipient :o extent) (:s agent :o recipient)))

(define-mixin-category birth-28.2
  :specializes subcategorization-pattern
  :mixins (np-v with-agent with-patient)
  :binds ((sparser::patient physical-agent) (sparser::agent physical-agent))
  :realization (:verb ("procreate" "multiply" "reproduce") (:s agent)))

(define-mixin-category birth-28.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np birth-28.2)
  :realization (:verb
                ("spawn" "sire" "mother" "have" "get" "generate" "father"
                 "deliver" ("bring" :prep "forth") "birth" "beget" "bear")
                (:s agent :o patient)))

(define-mixin-category body_internal_motion-49.1
  :specializes subcategorization-pattern
  :mixins (np-v with-agent)
  :binds ((sparser::agent physical-agent))
  :realization (:verb
                ("wriggle" "wobble" "wiggle" "waggle" "twitch" "totter"
                 "teeter" "sway" "squirm" "rock" "kick" "jiggle" "gyrate"
                 "flap" "fidget" "buck")
                (:s agent)))

(define-mixin-category body_internal_states-40.6
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.stimulus with-experiencer with-stimulus)
  :binds ((sparser::experiencer physical-agent))
  :realization (:verb
                ("writhe" "tremble" "shudder" "shiver" "shake" "quiver" "quake"
                 "cower" "convulse")
                (:s experiencer :from stimulus :at stimulus) (:s experiencer)))

(define-mixin-category body_motion-49.2
  :specializes subcategorization-pattern
  :mixins (np-v-np-adv np-v-adv-np with-agent with-theme with-goal with-path)
  :binds ((sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb ("hold") (:s agent :io path :o theme)
                (:s agent :io theme :o path)))

(define-mixin-category body_motion-49.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp np-v-pp np-v-pp-pp body_motion-49.2)
  :realization (:verb ("extend") (:s agent :io path :o theme)
                (:s agent :dir path) (:s agent :o goal)
                (:s agent :io theme :o goal)))

(define-mixin-category body_motion-49.2-1-1
  :specializes subcategorization-pattern
  :mixins (np-v body_motion-49.2-1)
  :realization (:verb ("stretch" "reach") (:s agent)))

(define-mixin-category braid-41.2.2
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-patient)
  :binds ((sparser::agent physical-agent))
  :realization (:verb
                ("wax" "wave" "tweeze" "trim" "towel" "tease" "talc" "style"
                 "soap" "shampoo" "set" "rouge" "rinse" "powder" "pluck"
                 "plait" "paint" "perm" "part" "manicure" "lather" "highlight"
                 "henna" "gel" "file" "dye" "cut" "curl" "crop" "crimp"
                 "condition" "comb" "coldcream" "clip" "brush" "braid" "bob")
                (:s agent :o patient)))

(define-mixin-category break-45.1
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np np-v-np-pp.instrument np.patient-v
           np-v-adv-middle np.instrument-v-np np-v-np-adj
           np-v-np-adj-pp.instrument np-v-np-pp.result
           np-v-np-pp.result-pp.instrument np-v-pp.result with-agent
           with-patient with-instrument with-result)
  :binds ((sparser::instrument solid) (sparser::patient solid))
  :realization (:verb
                ("tear" "tatter" "split" "splinter" "snap" "smash" "sliver"
                 "shred" "shatter" "rupture" "rip" "rive" "rend" "pop"
                 "granulate" "fragment" "fracture" "fissure" "dissolve" "crush"
                 "crumble" "crash" "crack" "cleave" "chip" ("break" :prep "up")
                 ("break" :prep "down") ("break" :prep "apart") "break"
                 "atomize")
                (:s patient :to result :into result)
                (:s agent :o patient :to result :into result :with instrument)
                (:s agent :o patient :to result :into result)
                (:s agent :io patient :o result :with instrument)
                (:s agent :io patient :o result) (:s instrument :o patient)
                (:s patient :m adverb) (:s patient)
                (:s agent :o patient :with instrument) (:s agent :o patient)))

(define-mixin-category break_down-45.8
  :specializes subcategorization-pattern
  :mixins (np-v with-patient)
  :realization (:verb
                (("fizzle" :prep "out") ("poop" :prep "out") "perish"
                 ("pass" :prep "away") ("kick" :prep "the_bucket") "give"
                 ("give" :prep "way") ("give" :prep "out") ("go" :prep "off")
                 ("go" :prep "down") ("go" :prep "out") ("fall" :prep "apart")
                 "expire" "die" "croak" ("break" :prep "down"))
                (:s patient)))

(define-mixin-category breathe-40.1.2
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.destination np-v-np.theme np-v-np.theme-pp.destination
           with-agent with-theme with-destination)
  :binds ((sparser::agent physical-agent))
  :realization (:verb
                ("weep" "vomit" ("throw" :prep "up") "sweat" "spit" "shit"
                 "puke" "piss" "pee" "drool" "dribble" "bleed" "barf")
                (:s agent :o theme :on destination :onto destination)
                (:s agent :o theme)
                (:s agent :on destination :onto destination) (:s agent)))

(define-mixin-category breathe-40.1.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np breathe-40.1.2)
  :realization (:verb
                ("hawk" "urinate" "slobber" "retch" "expectorate" "defecate"
                 "cry" "cough" "breathe")
                (:s agent :o theme)))

(define-mixin-category bring-11.3
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.destination np-v-pp.destination-np
           np-v-np-pp.initial_location
           np-v-np-pp.initial_location-pp.destination np-v-np-advp with-agent
           with-theme with-source with-destination with-instrument)
  :binds ((sparser::instrument object)
          (sparser::destination (:or physical-agent location region))
          (sparser::source location) (sparser::theme physical))
  :realization (:verb ("take") (:s instrument :io theme :adv_loc destination)
                (:s agent :o theme :src source :to destination)
                (:s agent :o theme :src source)
                (:s agent :against destination :before destination :into
                 destination :on destination :to destination :onto destination
                 :o theme)
                (:s agent :o theme :against destination :before destination
                 :into destination :on destination :to destination :onto
                 destination)
                (:s agent :o theme)))

(define-mixin-category bring-11.3-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-np np-v-np-together with-destination bring-11.3)
  :binds ((sparser::destination physical-agent))
  :realization (:verb ("bring") (:s agent :plural theme)
                (:s agent :io destination :o theme)))

(define-mixin-category build-26.1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np.product-pp.material np-v-np.material-pp.product
           np-v-np.beneficiary-np-pp np-v-np-pp.material-pp.beneficiary
           np-v-np-pp.beneficiary np-v-np-pp.product-pp.beneficiary
           np.material-v-np np-v-np-np-pp.asset np-v-np-pp.material-pp.asset
           with-agent with-material with-product with-beneficiary with-extent)
  :binds ((sparser::extent currency)
          (sparser::beneficiary (:or physical-agent company))
          (sparser::material physical)
          (sparser::agent (:or physical-agent physical-object)))
  :realization (:verb
                ("whittle" "weave" "stitch" "spin" "sew" "sculpture" "roll"
                 "refashion" "reassemble" "pound" "mold" "knit" "hammer" "hack"
                 "grow" "grind" "formulate" "forge" "fold" "fashion" "erect"
                 "embroider" "develop" "crochet" "cook" "compile" "churn"
                 "chisel" "cast" "blow" "bead" "bake" "assemble" "arrange")
                (:s agent :o product :from material :out_of material :for
                 extent)
                (:s agent :io beneficiary :o product :for extent)
                (:s material :o product)
                (:s agent :o material :into product :for beneficiary)
                (:s agent :o material :for beneficiary)
                (:s agent :o product :from material :out_of material :for
                 beneficiary)
                (:s agent :io beneficiary :o product :from material :out_of
                 material)
                (:s agent :o product :for beneficiary)
                (:s agent :o material :into product)
                (:s agent :o product :from material :out_of material)
                (:s agent :o product)))

(define-mixin-category build-26.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-p.asset np.asset-v-np np.asset-v-np-np np.asset-v-pp
           np.asset-v-np-pp build-26.1)
  :realization (:verb ("shape" "sculpt" "remake" "make" "cut" "carve" "build")
                (:s extent :io beneficiary :o product :from material :out_of
                 material)
                (:s extent :o product :from material :out_of material)
                (:s extent :io beneficiary :o product) (:s extent :o product)
                (:s agent :o product :for extent)))

(define-mixin-category bulge-47.5.3
  :specializes subcategorization-pattern
  :mixins (np-v-pp.theme np-v has-location with-theme)
  :binds ((sparser::location physical))
  :realization (:verb
                ("seethe" "hyperventilate" "hum" "buzz" "bulge" "bristle")
                (:s location) (:s location :with theme)))

(define-mixin-category bully-59.5
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-s_ing np-v-np-pp.result with-agent with-patient
           with-result)
  :binds ((sparser::patient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("terrify" "tease" "taunt" "shock" "shame" "panic" "nag"
                 "hustle" "harry" "harass" "frighten" "bully" "bullock"
                 "badger" "annoy")
                (:s agent :o patient :into result) (:s agent :o patient)))

(define-mixin-category bump-18.4
  :specializes subcategorization-pattern
  :mixins (np-v-pp.location has-location with-theme)
  :binds ((sparser::theme physical) (sparser::location physical))
  :realization (:verb ("run" "hit") (:s theme :l location)))

(define-mixin-category bump-18.4-1
  :specializes subcategorization-pattern
  :mixins (np-v-together bump-18.4)
  :realization (:verb
                ("thump" "thud" "strike" "squash" "smash" "smack" "slap" "slam"
                 "rap" "ram" "knock" "hammer" "crunch" "crash" "crack"
                 "collide" "clatter" "clash" "clang" "butt" "bump" "brush"
                 "bash" "bang")
                (:s theme)))

(define-mixin-category butter-9.9
  :specializes subcategorization-pattern
  :mixins (np-v-np.destination np-v-np-pp.theme with-agent with-theme
           with-destination)
  :binds ((sparser::destination (:and/or location region))
          (sparser::theme physical) (sparser::agent physical-agent))
  :realization (:verb
                ("sauce" "insulate" "zipcode" "yoke" "wreathe" "whitewash"
                 "wharf" "wax" "water" "wallpaper" "veneer" "veil" "varnish"
                 "turf" "top" "tinsel" "tile" "ticket" "thatch" "tassel"
                 "tarmac" "tar" "tag" "sulphur" "sugar" "stucco" "string"
                 "stress" "stopper" "starch" "stain" "spice" "sole" "soil"
                 "sod" "slipcover" "slime" "slate" "silver" "side" "shutter"
                 "shoe" "shingle" "shawl" "sequin" "seed" "scent" "sand"
                 "salve" "salt" "saddle" "rut" "rouge" "rosin" "roof" "robe"
                 "putty" "punctuate" "powder" "postmark" "poster" "pomade"
                 "polish" "poison" "plaster" "plank" "perfume" "pepper" "patch"
                 "parquet" "paper" "panel" "ornament" "oil" "nickel" "muzzle"
                 "mulch" "mantle" "lubricate" "lipstick" "leaven" "leash"
                 "label" "ink" "ice" "heel" "hat" "harness" "halter" "groove"
                 "grease" "gravel" "grass" "graffiti" "glove" "glass" "gild"
                 "gas" "garland" "gag" "glaze" "fuel" "frost" "frame" "forest"
                 "flour" "fence" "feather" "drug" "dope" "diaper" "crumb"
                 "crown" "cork" "coal" "cloak" "clay" "chrome" "caulk" "carpet"
                 "cap" "camouflage" "calk" "buttonhole" "butter" "bronze"
                 "bridle" "brick" "bread" "board" "blindfold" "blanket" "black"
                 "bait" "asphalt" "aromatize")
                (:s agent :o destination :with theme) (:s agent :o destination)))

(define-mixin-category calibratable_cos-45.6.1
  :specializes subcategorization-pattern
  :mixins (np.attribute-v np.patient-v-pp.attribute np-v with-patient
           with-attribute)
  :realization (:verb ("die" "build") (:s patient) (:s patient :in attribute)
                (:s attribute :s patient)))

(define-mixin-category calibratable_cos-45.6.1-1
  :specializes subcategorization-pattern
  :mixins (np.patient-v-np.extent-pp.source-pp.goal
           np.patient-v-pp.extent-pp.source-pp.goal
           np.attribute-v-np.extent-pp.source-pp.goal
           np.attribute-v-pp.extent-pp.source-pp.goal
           np.patient-v-pp.attribute-np.extent-pp.source-pp.goal
           np.patient-v-pp.attribute-pp.extent-pp.source-pp.goal with-extent
           with-source with-result calibratable_cos-45.6.1)
  :realization (:verb
                ("swell" "tumble" "swing" "surge" "soar" "slip" "slide"
                 "skyrocket" "seesaw" "rise" "rocket" "retreat" "plunge"
                 "plump" "plummet" "multiply" "mushroom" "jump" "grow"
                 ("go" :prep "up") ("go" :prep "down") "gain" "fluctuate"
                 "fall-off" ("fall" :prep "away") "fall" "explode" "dwindle"
                 "drop" "depreciate" "dive" "dip" "decline" "climb"
                 "appreciate")
                (:s patient :in attribute :by extent :from source :to result)
                (:s patient :in attribute :o extent :from source :to result)
                (:s attribute :of patient :by extent :from source :to result)
                (:s attribute :of patient :o extent :from source :to result)
                (:s patient :by extent :from source :to result)
                (:s patient :o extent :from source :to result)))

(define-mixin-category calve-28.1
  :specializes subcategorization-pattern
  :mixins (np-v with-agent with-patient)
  :binds ((sparser::patient physical-agent) (sparser::agent physical-agent))
  :realization (:verb
                ("whelp" "spawn" "pup" "litter" "lamb" "kitten" "foal" "fawn"
                 "cub" "calve")
                (:s agent)))

(define-mixin-category captain-29.8
  :specializes subcategorization-pattern
  :mixins (np-v-pp.beneficiary with-agent with-beneficiary)
  :binds ((sparser::beneficiary physical) (sparser::agent physical-agent))
  :realization (:verb
                ("whore" "volunteer" "soldier" "prostitute" "model" "midwife"
                 "lawyer" "judge" "butcher")
                (:s agent :for beneficiary)))

(define-mixin-category captain-29.8-1
  :specializes subcategorization-pattern
  :mixins (np-v-np captain-29.8)
  :realization (:verb
                ("witness" "valet" "usher" "understudy" "umpire" "tutor"
                 "tailor" "sponsor" "skipper" "shepherd" "referee" "police"
                 "pioneer" "pilot" "partner" "nurse" "mother" "host" "guard"
                 "escort" "emcee" "doctor" "crew" "cox" "coach" "clerk"
                 "chauffeur" "chaperone" "champion" "captain" "caddy" "butler"
                 "bully" "boss" "babysit")
                (:s agent :o beneficiary)))

(define-mixin-category captain-29.8-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np captain-29.8-1)
  :realization (:verb ("star") (:s beneficiary :o agent)))

(define-mixin-category care-88.1
  :specializes subcategorization-pattern
  :mixins (np-v np-v-that-s np-v-whether/if-s with-experiencer with-stimulus)
  :binds ((sparser::experiencer (:or physical-agent company)))
  :realization (:verb ("mind") (:s experiencer :wh_comp stimulus)
                (:s experiencer :thatcomp stimulus) (:s experiencer)))

(define-mixin-category care-88.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.stimulus-what-s np-v-what-s np-v-pp.stimulus-how/whether-s
           care-88.1)
  :realization (:verb ("wonder" "worry" "care")
                (:s experiencer :about stimulus)
                (:s experiencer :what_extract stimulus)))

(define-mixin-category caring-75.2
  :specializes subcategorization-pattern
  :mixins (with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb nil))

(define-mixin-category caring-75.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np caring-75.2)
  :realization (:verb
                (("wait" :prep "on") "mind" "manage" ("look" :prep "after")
                 "babysit")
                (:s agent :o theme)))

(define-mixin-category caring-75.2-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp caring-75.2-1)
  :realization (:verb ("tend" "attend") (:s agent :to theme)))

(define-mixin-category caring-75.2-2
  :specializes subcategorization-pattern
  :mixins (np-v-pp caring-75.2)
  :realization (:verb (("look" :prep "out") "care") (:s agent :for theme)))

(define-mixin-category carry-11.4
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.destination np-v-np-pp.initial_location
           np-v-np-pp.initial_location-pp.destination
           np-v-np-pp.destination-pp.initial_location with-agent with-theme
           with-source with-destination)
  :binds ((sparser::source location) (sparser::theme physical))
  :realization (:verb
                ("yank" "tug" "tow" "tote" "schlep" "run" "pull" "nudge" "lug"
                 "hoist" "heft" "haul" "draw" "drag" "carry")
                (:s agent :o theme :to destination :towards destination :src
                 source)
                (:s agent :o theme :src source :to destination :towards
                 destination)
                (:s agent :o theme :src source)
                (:s agent :o theme :to destination :towards destination)
                (:s agent :o theme)))

(define-mixin-category carry-11.4-1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.initial_location np-v-np-pp.destination
           np-v-np-pp.initial_location-pp.destination
           np-v-np-pp.destination-pp.initial_location carry-11.4)
  :realization (:verb nil
                (:s agent :o theme :to destination :towards destination :src
                 source)
                (:s agent :o theme :src source :to destination :towards
                 destination)
                (:s agent :o theme :to destination :towards destination)
                (:s agent :o theme :src source) (:s agent :o theme)))

(define-mixin-category carry-11.4-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-dative-np with-destination carry-11.4-1)
  :binds ((sparser::destination physical-agent))
  :realization (:verb ("thrust" "shove" "push" "kick" "heave")
                (:s agent :io destination :o theme)))

(define-mixin-category carve-21.2
  :specializes subcategorization-pattern
  :mixins (with-agent with-patient with-instrument)
  :binds ((sparser::instrument physical) (sparser::patient physical))
  :realization (:verb nil))

(define-mixin-category carve-21.2-1
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np np-v-np-pp.instrument np-v-advp-middle
           np.instrument-v-np np.instrument-v-advp carve-21.2)
  :realization (:verb
                ("trench" "squish" "squash" "smash" "slit" "slice" "shred"
                 "scrunch" "scollop" "quarter" "pulverize" "perforate" "notch"
                 "nick" "mince" "mash" "grind" "grate" "gouge" "gash" "flatten"
                 "flake" "fillet" "dice" "dent" "cube" "crush" "crunch"
                 "crumple" "crumble" "crumb" "cleave" "chip" "bruise" "bore")
                (:s instrument :m adverb) (:s instrument :o patient)
                (:s patient :m adverb) (:s agent :o patient :with instrument)
                (:s agent :o patient)))

(define-mixin-category carve-21.2-2
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np np-v-np-pp.instrument np-v-advp-middle
           np.instrument-v-np np.instrument-v-advp carve-21.2)
  :realization (:verb
                ("tread" "prune" "punch" "pink" "mow" "crop" "chop" "carve")
                (:s instrument :m adverb) (:s instrument :o patient)
                (:s patient :m adverb) (:s agent :o patient :with instrument)
                (:s agent :o patient)))

(define-mixin-category carve-21.2-3
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np np-v-np-pp.instrument np-v-advp-middle
           np.instrument-v-np np.instrument-v-advp carve-21.2)
  :realization (:verb
                ("tool" "spear" "sand" "mill" "mangle" "lance" "file" "drill")
                (:s instrument :m adverb) (:s instrument :o patient)
                (:s patient :m adverb) (:s agent :o patient :with instrument)
                (:s agent :o patient)))

(define-mixin-category caused_calibratable_cos-45.6.2
  :specializes subcategorization-pattern
  :mixins (np-v-np.patient-pp.extent-pp.initial_state-pp.result
           np-v-np.patient-np.extent-pp.initial_state-pp.result with-cause
           with-patient with-extent with-source with-result with-attribute)
  :realization (:verb ("reduce" "raise" "cut") (:s cause)))

(define-mixin-category caused_calibratable_cos-45.6.2-1
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np.patient np-v-adv-middle np.patient-v
           np.patient-v-np.extent-pp.initial_state-pp.result
           np.patient-v-pp.extent-pp.initial_state-pp.result
           np.attribute-v-np.extent-pp.initial_state-pp.result
           np.attribute-v-pp.extent-pp.initial_state-pp.result
           np.patient-v-pp.attribute-np.extent-pp.initial_state-pp.result
           np.patient-v-pp.attribute-pp.extent-pp.initial_state-pp.result
           caused_calibratable_cos-45.6.2)
  :realization (:verb
                ("lower" "vary" "shift" "move" "increase" "diminish" "decrease"
                 "build-up" "balloon" "advance")
                (:s patient :in attribute :by extent :from intial_state :to
                 result)
                (:s patient :in attribute :o extent :from source :to result)
                (:s attribute :of patient :by extent :from source :to result)
                (:s attribute :of patient :o extent :from source :to result)
                (:s patient :by extent :from source :to result)
                (:s patient :o extent :from source :to result) (:s patient)
                (:s patient :m adverb) (:s cause :o patient)))

(define-mixin-category change_bodily_state-40.8.4
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.stimulus with-experiencer with-stimulus)
  :binds ((sparser::experiencer physical-agent))
  :realization (:verb
                (("zonk" :prep "out") ("pass" :prep "out") ("nod" :prep "off")
                 ("konk" :prep "out") ("drift" :prep "off")
                 ("drowse" :prep "off") ("doze" :prep "off") "swoon"
                 ("black" :prep "out") "sicken" "pale" "faint" "blench"
                 "blanch")
                (:s experiencer :from stimulus :at stimulus) (:s experiencer)))

(define-mixin-category characterize-29.2
  :specializes subcategorization-pattern
  :mixins (np-v-np-s_ing np-v-np-to-be-adj np-v-np-pp.attribute with-agent
           with-theme with-attribute)
  :binds ((sparser::theme (:or physical company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("stamp" "pidgeonhole" "subselect" "select" "classify" "class"
                 "adopt" "perceive" "take" "rank" "treat" "regard" "hail"
                 "praise" "certify" "diagnose" "cast" "bill" "typecast"
                 "stereotype" "specify" "redraw" "recast" "paint" "pigeonhole"
                 "picture" "peg" "moot" "interpret" "fancy" "envision" "detail"
                 "depict" "count")
                (:s agent :o theme :as attribute)
                (:s agent :io theme :small_clause attribute)
                (:s agent :io theme :oc_ing attribute)))

(define-mixin-category characterize-29.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-how-s np-v-how-s_inf characterize-29.2)
  :realization (:verb ("underestimate" "view" "conceive" "characterize")
                (:s agent :wh_inf theme) (:s agent :how_extract theme)))

(define-mixin-category characterize-29.2-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-s_ing np-v-what-s np-v-what-s_inf characterize-29.2-1)
  :realization (:verb
                ("recollect" "remember" "visualize" "imagine" "identify"
                 "envisage" "accept" "represent" "describe" "define" "portray")
                (:s agent :what_inf theme) (:s agent :what_extract theme)
                (:s agent :ac_ing theme)))

(define-mixin-category characterize-29.2-1-2
  :specializes subcategorization-pattern
  :mixins (np-v-np-adj np-v-whether/if-s np-v-what-s np-v-what-s_inf
           characterize-29.2-1)
  :realization (:verb ("reveal" "report") (:s agent :what_inf theme)
                (:s agent :what_extract theme) (:s agent :wh_comp theme)
                (:s agent :np_ppart theme)))

(define-mixin-category chase-51.6
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.location np-v-pp.theme with-agent with-theme
           with-path)
  :binds ((sparser::theme physical) (sparser::agent physical-agent))
  :realization (:verb
                ("trail" "track" "tail" "shadow" "pursue" "follow" "chase")
                (:s agent :after theme) (:s agent :o theme :spatial path)
                (:s agent :o theme)))

(define-mixin-category cheat-10.6.1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.theme with-agent with-theme with-source)
  :binds ((sparser::source (:or physical-agent location region))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("gull" "cheat") (:s agent :o source :out_of theme)
                (:s agent :o source)))

(define-mixin-category cheat-10.6.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.theme cheat-10.6.1)
  :realization (:verb ("swindle" "defraud" "fleece" "cozen" "con")
                (:s agent :o source :for theme)))

(define-mixin-category cheat-10.6.1-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.source cheat-10.6.1-1)
  :realization (:verb ("cull" "milk" "strip" "bleed" "rob")
                (:s agent :o theme :from source)))

(define-mixin-category chew-39.2
  :specializes subcategorization-pattern
  :mixins (with-agent with-patient)
  :binds ((sparser::agent physical-agent))
  :realization (:verb nil))

(define-mixin-category chew-39.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v np-v-pp-conative np-v-pp.patient with-patient chew-39.2)
  :binds ((sparser::patient (:and/or nil solid)))
  :realization (:verb
                ("teethe" "lick" "peck" "pick" "nibble" "munch" "masticate"
                 "gum" "gnaw" "crunch" "chomp" "chew")
                (:s agent :on patient) (:s agent :at patient) (:s agent)
                (:s agent :o patient)))

(define-mixin-category chew-39.2-2
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v np-v-pp.patient with-patient chew-39.2)
  :binds ((sparser::patient (:and/or nil solid)))
  :realization (:verb ("suck" "slurp" "sip" "lap") (:s agent :from patient)
                (:s agent) (:s agent :o patient)))

(define-mixin-category chit_chat-37.6
  :specializes subcategorization-pattern
  :mixins (np-v-pp.co-agent np-v-pp.co-agent-pp.topic np-v
           np-v-pp.topic-pp.co-agent np-v-pp.topic with-agent with-agent
           with-topic)
  :binds ((sparser::topic speech-act)
          (sparser::agent (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("yak" "schmooze" "rap" "palaver" "joke" "jest" "gossip" "gab"
                 "flirt" "converse" "confer" "chitchat" "chatter" "chat")
                (:s agent :about topic) (:s agent :about topic :with agent)
                (:s agent) (:s agent :with agent :about topic)
                (:s agent :with agent)))

(define-mixin-category chit_chat-37.6-1
  :specializes subcategorization-pattern
  :mixins (np-v-how-s np-v-how-s_inf np-v-np np-v-np-pp.co-agent chit_chat-37.6)
  :realization (:verb ("discuss" "debate" "argue")
                (:s agent :o topic :with agent) (:s agent :o topic)
                (:s agent :wh_ing topic) (:s agent :wh_extract topic)))

(define-mixin-category classify-29.10
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.goal np-v-np-pp.location with-agent with-theme
           with-goal)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("recode" "code" "categorize" "seed" "separate"
                 ("sort" :prep "out") "catalogue" "number" "grade" "chunk"
                 "lump" "bracket" "regroup" "group" "reclassify" "isolate"
                 "sort" "constellate" "class" "classify")
                (:s agent :o theme :in goal) (:s agent :o theme :as goal)
                (:s agent :o theme)))

(define-mixin-category clear-10.3
  :specializes subcategorization-pattern
  :mixins (np-v-np.location np-v-np-pp.location np-v-np.location-pp.theme
           with-agent with-theme with-source with-destination)
  :binds ((sparser::destination location) (sparser::source location)
          (sparser::theme physical))
  :realization (:verb ("hollow" "clean") (:s agent :o source :of theme)
                (:s agent :o theme :src source) (:s agent :o source)))

(define-mixin-category clear-10.3-1
  :specializes subcategorization-pattern
  :mixins (np.location-v np-v-pp.location clear-10.3)
  :realization (:verb ("empty" "drain" "clear") (:s theme :src source)
                (:s source)))

(define-mixin-category cling-22.5
  :specializes subcategorization-pattern
  :mixins (np-v-pp.co-theme np-v-together with-theme with-theme)
  :binds ((sparser::theme physical) (sparser::theme physical))
  :realization (:verb ("cling" "cleave" "adhere") (:s theme)
                (:s theme :to theme :with theme)))

(define-mixin-category cognize-85
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-pp.stimulus np-v-pp.stimulus-how/whether-s np-v-that-s
           with-experiencer with-stimulus)
  :binds ((sparser::experiencer physical-agent))
  :realization (:verb ("cognize" "cognise")
                (:s experiencer :thatcomp stimulus)
                (:s experiencer :about stimulus) (:s experiencer :of stimulus)
                (:s experiencer :c stimulus)))

(define-mixin-category coil-9.6
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np-pp.location np-v-pp.location
           np-v-adv-middle-pp.location with-agent with-theme with-source
           with-destination with-instrument)
  :binds ((sparser::instrument object) (sparser::destination location)
          (sparser::source location) (sparser::theme (:and/or nil nil)))
  :realization (:verb
                ("wind" "whirl" "twine" "swirl" "spin" "rotate" "roll" "loop")
                (:s theme :m adverb :path destination)
                (:s theme :path destination)
                (:s agent :o theme :path destination)))

(define-mixin-category coil-9.6-1
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-adv-middle coil-9.6)
  :realization (:verb ("twist" "twirl" "swing" "hook" "coil" "curl")
                (:s theme :m adverb)))

(define-mixin-category coloring-24
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-adjp np-v-np-pp.result with-agent with-patient
           with-result)
  :binds ((sparser::patient physical))
  :realization (:verb
                ("varnish" "tint" "starch" "stain" "spraypaint" "shellac"
                 "repaint" "paint" "lacquer" "japan" "glaze" "enamel" "dye"
                 "distemper" "color")
                (:s agent :o patient :to result :into result)
                (:s agent :io patient :o result) (:s agent :o patient)))

(define-mixin-category compel-59.1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-s_ing np-v-np-pp.result np-v-np-s_inf with-agent
           with-patient predication)
  :binds ((sparser::predicate predicate)
          (sparser::patient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("wheedle" "sway" "suborn" "steamroller" "sandbag" "rush"
                 "railroad" "persuade" "palaver" "oblige" "obligate" "motivate"
                 "lead" "influence" "induce" "impel" "hound" "goad" "drive"
                 "dragoon" "commandeer" "convince" "compel" "bribe" "bait"
                 "arm-twist")
                (:s agent :io patient :oc_to_inf predicate)
                (:s agent :o patient :into predicate) (:s agent :o patient)))

(define-mixin-category complain-37.8
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.recipient np-v-that-s np-v-pp.recipient-that-s
           np-v-pp.topic np-v-pp.topic-pp.recipient np-v-s-quote
           np-v-pp.recipient-s-quote np-v-pp.recipient-pp.topic with-agent
           with-topic with-recipient)
  :binds ((sparser::recipient (:or physical-agent company))
          (sparser::topic speech-act)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("whine" "object" "moan" "kvetch" "grumble" "grouse" "grouch"
                 "gripe" "crab" "complain" "caterwaul" "brag" "boast" "bitch"
                 "bellyache")
                (:s agent :to recipient :about topic)
                (:s agent :to recipient :quotation topic)
                (:s agent :quotation topic)
                (:s agent :about topic :to recipient) (:s agent :about topic)
                (:s agent :to recipient :thatcomp topic)
                (:s agent :thatcomp topic) (:s agent :to recipient) (:s agent)))

(define-mixin-category complete-55.2
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("pull-off" "bring-off" "achieve" "accomplish")
                (:s agent :o theme)))

(define-mixin-category complete-55.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-s_ing complete-55.2)
  :realization (:verb ("quit" "discontinue" "complete")
                (:s agent :be_sc_ing theme)))

(define-mixin-category comprehend-87.2
  :specializes subcategorization-pattern
  :mixins (np-v-how-s np-v-np np-v-np-pp.attribute np-v-s_ing np-v-why-s
           np-v-what-s np-v-that-s with-experiencer with-attribute
           with-stimulus)
  :binds ((sparser::experiencer (:or physical-agent company)))
  :realization (:verb
                ("misapprehend" "misunderstand" "misinterpret" "misconstrue"
                 "appreciate")
                (:s experiencer :thatcomp stimulus)
                (:s experiencer :what_extract stimulus)
                (:s experiencer :wh_comp stimulus)
                (:s experiencer :poss_ing stimulus)
                (:s experiencer :o stimulus :as attribute)
                (:s experiencer :o stimulus)
                (:s experiencer :how_extract stimulus)))

(define-mixin-category comprehend-87.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-s_ing np-v-how-s_inf np-v-np-to-be-np comprehend-87.2)
  :realization (:verb
                ("recognize" "recognise" "realize" "read" "get" "fathom"
                 "follow" "apprehend" "comprehend" "grasp")
                (:s experiencer :to_be stimulus)
                (:s experiencer :wh_inf stimulus)
                (:s experiencer :ac_ing stimulus)))

(define-mixin-category comprehend-87.2-1-1
  :specializes subcategorization-pattern
  :mixins (np-v comprehend-87.2-1)
  :realization (:verb ("see") (:s experiencer)))

(define-mixin-category comprehend-87.2-1-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.stimulus np-v-pp.stimulus-s_ing np-v-pp.stimulus-what-s
           np-v-np-pp.attribute comprehend-87.2-1-1)
  :realization (:verb ("understand" "know") (:s experiencer)
                (:s experiencer :wh_extract stimulus)
                (:s experiencer :wh_inf stimulus)
                (:s experiencer :poss_ing stimulus)
                (:s experiencer :about stimulus :|\|| stimulus :of stimulus)))

(define-mixin-category comprise-107.2
  :specializes subcategorization-pattern
  :mixins (with-instrument with-theme)
  :binds ((sparser::instrument object))
  :realization (:verb nil))

(define-mixin-category comprise-107.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np comprise-107.2)
  :realization (:verb
                ("form" "constitute" ("make" :prep "up") "make" "compose"
                 "comprise")
                (:s theme :o instrument)))

(define-mixin-category comprise-107.2-2
  :specializes subcategorization-pattern
  :mixins (np-v-np comprise-107.2)
  :realization (:verb ("contain" "encompass" ("consist" :prep "of") "comprise")
                (:s instrument :o theme)))

(define-mixin-category concealment-16
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.beneficiary np-v-np-pp.location np-v-np with-agent
           with-beneficiary with-patient has-location)
  :binds ((sparser::location location) (sparser::beneficiary physical-agent)
          (sparser::agent physical-agent))
  :realization (:verb
                ("suppress" "shelter" "sequester" "seclude" "screen" "repress"
                 "quarantine" "isolate" "impound" "curtain" "conceal"
                 "cloister" "block")
                (:s agent :o patient) (:s agent :o patient :loc location)
                (:s agent :o patient :from beneficiary)))

(define-mixin-category concealment-16-1
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.beneficiary np-v-pp.location concealment-16)
  :realization (:verb ("hide") (:s agent :loc location)
                (:s agent :from beneficiary) (:s agent)))

(define-mixin-category conduct-111.1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp with-agent with-theme with-beneficiary)
  :binds ((sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb
                ("throw" "spearhead" "run" "host" "hold" "head" "give"
                 "conduct")
                (:s agent :io theme :o beneficiary) (:s agent :o theme)))

(define-mixin-category confess-37.10
  :specializes subcategorization-pattern
  :mixins (np-v-how-s np-v-np-to-be-np np-v-np-adj np-v-np np-v-np-pp.recipient
           np-v-s_ing np-v-pp.recipient np-v-pp.recipient-how-s np-v-that-s
           with-agent with-recipient with-topic)
  :binds ((sparser::recipient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("reveal" "proclaim" ("fess" :prep "up") "acknowledge" "admit"
                 "confess")
                (:s agent :thatcomp topic)
                (:s agent :to recipient :how_extract topic)
                (:s agent :to recipient) (:s agent :poss_ing topic)
                (:s agent :c topic :to recipient)
                (:s agent :c topic) (:s agent :be_sc_ing topic)
                (:s agent :np_ppart topic) (:s agent :to_be topic)
                (:s agent :how_extract topic)))

(define-mixin-category confine-92
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-theme with-destination)
  :binds ((sparser::destination location)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("immure" "jug" "imprison" "jail" "detain" "hospitalize"
                 "incarcerate" "institutionalize" "charge")
                (:s agent :o theme)))

(define-mixin-category confine-92-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.destination confine-92)
  :realization (:verb ("confine" "send" "recommit" "commit")
                (:s agent :o theme :to destination)))

(define-mixin-category confront-98
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.instrument with-agent with-theme with-instrument)
  :binds ((sparser::instrument object)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                (("move" :prep "in_on") "breast" "combat" "pre-empt" "counter"
                 "rival" "target" "intercept" "handle" "brave" "approach"
                 ("go" :prep "about") ("take" :prep "on") "tackle" "undertake"
                 ("head" :prep "on") "confront" "face")
                (:s agent :o theme :with instrument) (:s agent :o theme)))

(define-mixin-category conjecture-29.5
  :specializes subcategorization-pattern
  :mixins (np-v-np-to-be-np np-v-that-s with-agent with-theme predication)
  :binds ((sparser::predicate predicate)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("swear" "surmise" "spectulate" "repute" "prognosticate" "hold"
                 "doubt" "determine" "deny" "conjecture" "assert" "affirm"
                 "admit")
                (:s agent :thatcomp theme) (:s agent :io theme :o predicate)))

(define-mixin-category conjecture-29.5-1
  :specializes subcategorization-pattern
  :mixins (np-v-np conjecture-29.5)
  :realization (:verb
                ("vaticinate" "trust" "prophesy" "presume" "infer" "guess"
                 "foretell" "foresee" "foreknow" "expect" "believe"
                 "anticipate")
                (:s agent :c theme)))

(define-mixin-category conjecture-29.5-2
  :specializes subcategorization-pattern
  :mixins (np-v-s conjecture-29.5)
  :realization (:verb ("feel") (:s agent :c theme)))

(define-mixin-category consider-29.9
  :specializes subcategorization-pattern
  :mixins (np-v-how-s np-v-how-s_inf with-agent with-theme with-attribute)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb nil (:s agent :wh_inf theme)
                (:s agent :how_extract theme)))

(define-mixin-category consider-29.9-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.attribute np-v-np-to-be-np np-v-that-s consider-29.9)
  :realization (:verb ("reckon" "rate" "esteem" "deem" "acknowledge")
                (:s agent :thatcomp theme) (:s agent :to_be theme)
                (:s agent :io theme :np_p_ing attribute)))

(define-mixin-category consider-29.9-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-adj np-v-whether/if-s np-v-what-s np-v-what-s_inf
           consider-29.9-1)
  :realization (:verb ("report") (:s agent :what_inf theme)
                (:s agent :what_extract theme) (:s agent :wh_comp theme)
                (:s agent :np_ppart theme :c attribute)))

(define-mixin-category consider-29.9-1-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-s_ing np-v-np-adj np-v-np-np np-v-np-pp.attribute
           np-v-whether-s_inf consider-29.9-1-1)
  :realization (:verb ("consider") (:s agent :wheth_inf theme)
                (:s agent :o theme :for attribute)
                (:s agent :io theme :c attribute)
                (:s agent :be_sc_ing theme)))

(define-mixin-category consider-29.9-2
  :specializes subcategorization-pattern
  :mixins (np-v-np-np np-v-np-to-be-np np-v-np-adj np-v-that-s consider-29.9)
  :realization (:verb ("posit" "suppose" "think" "suspect")
                (:s agent :thatcomp theme)
                (:s agent :np_ppart theme :c attribute)
                (:s agent :to_be theme)
                (:s agent :io theme :c attribute)))

(define-mixin-category conspire-71
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.co-agent np-v-pp.beneficiary np-v-s_inf with-agent
           with-agent with-theme with-beneficiary)
  :binds ((sparser::agent (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("befriend" ("team" :prep "up") "sin" "scheme" "retaliate"
                 "rebel" "protest" "partner" "legislate" "discriminate"
                 "conspire" "collude" "collaborate" "ally")
                (:s agent :to-comp theme) (:s agent :against beneficiary)
                (:s agent :with agent) (:s agent)))

(define-mixin-category consume-66
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-s_ing with-agent with-extent with-goal)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("consume" "use") (:s agent :io extent :sc_ing goal)
                (:s agent :o extent)))

(define-mixin-category consume-66-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-s_ing np-v-np-pp.goal consume-66)
  :realization (:verb ("waste" "squander" "spend" "misspend" "reuse")
                (:s agent :o extent :on goal)))

(define-mixin-category contain-15.4
  :specializes subcategorization-pattern
  :mixins (np-v-np with-instrument with-theme)
  :binds ((sparser::instrument object))
  :realization (:verb ("hold" "contain") (:s instrument :o theme)))

(define-mixin-category contiguous_location-47.8
  :specializes subcategorization-pattern
  :mixins (np-v-np with-theme with-theme)
  :binds ((sparser::theme physical) (sparser::theme physical))
  :realization (:verb
                ("veil" "enshroud" "wreathe" "underlie" "traverse" "top"
                 "surround" "surmount" "support" "straddle" "span" "skirt"
                 "ring" "rim" "predate" "precede" "overhang" "overcast"
                 "neighbor" "line" "hug" "head" "frame" "forgo" "follow"
                 "flank" "fill" "fence" "envelop" "engulf" "encompass"
                 "enclose" "encircle" "edge" "cover" "cloak" "circle" "cap"
                 "bridge" "bracket" "bound" "border" "blanket" "bestride")
                (:s theme :o theme)))

(define-mixin-category contiguous_location-47.8-1
  :specializes subcategorization-pattern
  :mixins (np-v contiguous_location-47.8)
  :realization (:verb
                ("touch" "meet" "intersect" "hit" "cross" "adjoin" "abut")
                (:s theme :s theme)))

(define-mixin-category contiguous_location-47.8-2
  :specializes subcategorization-pattern
  :mixins (np-v contiguous_location-47.8)
  :realization (:verb ("dominate") (:s theme)))

(define-mixin-category continue-55.3
  :specializes subcategorization-pattern
  :mixins (np-v-s_inf np.theme-v np-v np-v-pp.time with-agent with-theme
           temporally-localized)
  :binds ((sparser::certainty time)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("continue") (:s agent :until time)
                (:s theme :until time) (:s agent) (:s theme)
                (:s agent :rs_to_inf theme)))

(define-mixin-category contribute-13.2
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.recipient np-v-np.theme- np-v-pp.recipient-np with-agent
           with-theme with-recipient)
  :binds ((sparser::recipient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("turn-over" "turn-in" "abnegate" ("shell" :prep "out")
                 ("pass" :prep "out") ("hand" :prep "out") "give-up" "give-out"
                 "give-away" "gift" "restore" "resign" "remit" "relinquish"
                 "refer" "forgo" "betroth")
                (:s agent :to recipient :o theme) (:s agent :o theme)
                (:s agent :o theme :to recipient)))

(define-mixin-category contribute-13.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.recipient np-v-np-pp.recipient contribute-13.2)
  :realization (:verb ("distribute" "disseminate")
                (:s agent :o theme :among recipient) (:s agent :to recipient)))

(define-mixin-category contribute-13.2-1-1
  :specializes subcategorization-pattern
  :mixins (np-v contribute-13.2-1)
  :realization (:verb
                ("surrender" "submit" "sacrifice" "resubmit" "forfeit" "donate"
                 "contribute" "circularize" "administer")
                (:s agent)))

(define-mixin-category contribute-13.2-2
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.theme contribute-13.2)
  :realization (:verb ("transfer" "proffer" "extend" "disburse")
                (:s agent :io recipient :o theme)))

(define-mixin-category contribute-13.2-2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np contribute-13.2-2)
  :realization (:verb ("reimburse") (:s agent :o recipient)))

(define-mixin-category convert-26.6.2
  :specializes subcategorization-pattern
  :mixins (np-v-s_ing np-v-pp.goal with-patient with-source with-result)
  :realization (:verb
                ("turn" "take" ("settle" :prep "down") "revert" "return"
                 "resort" ("go" :prep "back") ("get" :prep "down")
                 ("get" :prep "around") "get" "fall" ("come" :prep "around")
                 "advert")
                (:s patient :to result)))

(define-mixin-category convert-26.6.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.source-pp.goal convert-26.6.2)
  :realization (:verb ("turn" "shift" "revert" "return")
                (:s patient :from source :to result)))

(define-mixin-category convert-26.6.2-1-1
  :specializes subcategorization-pattern
  :mixins (np-v np-v-np np-v-np-s_ing np-v-np-pp.goal with-agent
           convert-26.6.2-1)
  :binds ((sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb
                (("switch" :prep "over") "switch" ("move" :prep "over")
                 "convert" ("change" :prep "over"))
                (:s agent :o patient :to result) (:s agent :o patient)
                (:s patient)))

(define-mixin-category cooking-45.3
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np.patient np-v-np-pp.instrument np.patient-v
           np-v-adv-middle np.instrument-v-np np-v-np-pp.result
           np-v-np-pp.result-pp.instrument np-v-pp.result
           np-v-pp.result-pp.instrument with-agent with-patient with-instrument
           with-result)
  :binds ((sparser::instrument solid) (sparser::patient physical)
          (sparser::agent physical-agent))
  :realization (:verb
                (("warm" :prep "up") "toast" "stir-fry" "stew" "steep"
                 "steam-bake" "steam" "softboil" "simmer" "shirr" "sear"
                 "scallop" "scald" "saute" "roast" "rissole" "reheat"
                 "pot-roast" "poach" "plank" "pickle" "perk" "percolate"
                 "parch" "parboil" "pan-fry" "pan-broil" "overheat" "overcook"
                 "overbake" "oven-poach" "oven-fry" "microwave" "heat"
                 "hardboil" "grill" "fry" "french-fry" "deep-fry" "crisp"
                 "cook" "coddle" "charcoal-broil" "charbroil" "char"
                 "caramelize" "brown" "broil" "braise" "boil" "blanch"
                 "barbeque" "barbecue" "bake")
                (:s patient :to result :into result :in instrument :on
                 instrument :with instrument)
                (:s patient :to result :into result)
                (:s agent :o patient :to result :into result :in instrument :on
                 instrument :with instrument)
                (:s agent :o patient :to result :into result)
                (:s instrument :o patient) (:s patient :m adverb) (:s patient)
                (:s agent :o patient :in instrument :on instrument :with
                 instrument)
                (:s agent :o patient)))

(define-mixin-category cooperate-73.1
  :specializes subcategorization-pattern
  :mixins (with-agent with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb nil))

(define-mixin-category cooperate-73.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.theme np-v-pp.co-agent-pp.theme np-v-pp.theme-s_ing
           cooperate-73.1)
  :realization (:verb ("join" "cooperate" "collaborate") (:s agent :in theme)
                (:s agent :with agent :in theme)
                (:s agent :with agent :on theme) (:s agent :on theme)))

(define-mixin-category cooperate-73.1-2
  :specializes subcategorization-pattern
  :mixins (np-v-pp.theme np-v-pp.theme-s_ing cooperate-73.1)
  :realization (:verb ("participate") (:s agent :in theme)))

(define-mixin-category cooperate-73.1-3
  :specializes subcategorization-pattern
  :mixins (np-v-pp.theme np-v-pp.co-agent-pp.theme np-v-pp.theme-s_ing
           np-v-pp.co-agent-pp.theme-s_ing cooperate-73.1)
  :realization (:verb ("work" "labour") (:s agent :with agent :at theme)
                (:s agent :at theme) (:s agent :with agent :on theme)
                (:s agent :on theme)))

(define-mixin-category cope-83
  :specializes subcategorization-pattern
  :mixins (np-v-pp.theme with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("deal") (:s agent :with theme)))

(define-mixin-category cope-83-1
  :specializes subcategorization-pattern
  :mixins (np-v cope-83)
  :realization (:verb ("cope") (:s agent)))

(define-mixin-category cope-83-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np cope-83-1)
  :realization (:verb
                (("get" :prep "through") ("get" :prep "by") "grapple" "manage")
                (:s agent :o theme)))

(define-mixin-category correlate-86.1
  :specializes subcategorization-pattern
  :mixins (np-v-s_ing np-v-np-s_ing with-agent with-theme with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("co-occur" "flip-flop" "alternate" "correlate" "coincide")
                (:s agent :o theme :with theme) (:s theme :with theme)))

(define-mixin-category correspond-36.1.1
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.theme-s np-v-pp.theme-whether/if-s np-v-pp.theme-what-s
           np-v-pp.theme-whether-s_inf np-v-pp.theme-what-s_inf np-v-pp.theme
           np-v-pp.co-agent-pp.theme-whether-s np-v-pp.co-agent-pp.theme-what-s
           np-v-pp.co-agent-pp.theme-what-s_inf
           np-v-pp.co-agent-pp.theme-whether-s_inf np-v-pp.co-agent-pp.theme
           np-v-what-s with-agent with-agent with-topic)
  :binds ((sparser::agent (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("plot" "negotiate" "interact" "disagree" "differ" "deliberate"
                 "correspond" "cooperate" "confer" "concur" "compromise"
                 "communicate" "commiserate" "collide" "collaborate" "bargain"
                 "banter")
                (:s agent :what_extract topic)
                (:s agent :with agent :about topic) (:s agent :about topic)
                (:s agent)))

(define-mixin-category correspond-36.1.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.co-agent-how-s np-v-pp.co-agent-how-s_inf np-v-what-s_inf
           correspond-36.1.1)
  :realization (:verb ("agree") (:s agent :what_inf topic)
                (:s agent :with agent :wh_inf topic)
                (:s agent :with agent :how_extract topic)))

(define-mixin-category correspond-36.1.1-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-whether/if-s np-v-whether-s_inf correspond-36.1.1-1)
  :realization (:verb ("argue" "debate") (:s agent :wheth_inf topic)
                (:s agent :wh_comp topic)))

(define-mixin-category cost-54.2
  :specializes subcategorization-pattern
  :mixins (np-v-np.value np-v-np-np with-theme with-path with-beneficiary)
  :binds ((sparser::beneficiary (:or physical-agent company))
          (sparser::theme physical))
  :realization (:verb ("take" "net" "last" "cost" "carry")
                (:s theme :io beneficiary :o path) (:s theme :o path)))

(define-mixin-category crane-40.3.2
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.recipient np-v-np-pp.recipient-pp.theme
           with-agent with-patient with-topic with-recipient)
  :binds ((sparser::recipient physical-agent) (sparser::agent physical-agent))
  :realization (:verb
                ("wrinkle" "wring" "wiggle" "waggle" "wag" "twitch" "twiddle"
                 "turn" "toss" "stretch" "stamp" "snap" "smack" "shuffle"
                 "show" "shake" "rub" "roll" "raise" "purse" "pucker" "open"
                 "knit" "kick" "hunch" "hang" "grind" "gnash" "fold" "flutter"
                 "flick" "flex" "flash" "flap" "drum" "cross" "crook" "crane"
                 "cock" "close" "click" "clench" "blow" "beat" "bat" "bare"
                 "arch")
                (:s agent :o patient :dest_dir recipient :in topic)
                (:s agent :o patient :dest_dir recipient) (:s agent :o patient)))

(define-mixin-category create-26.4
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.material np-v-np-pp.beneficiary
           np-v-np-pp.attribute with-agent with-result with-material
           with-beneficiary with-attribute)
  :binds ((sparser::beneficiary physical-agent) (sparser::material physical)
          (sparser::agent (:or physical-agent physical-object)))
  :realization (:verb
                ("turn-out" "synthesize" "style" "reorganize" "reconstitute"
                 "rebuild" "rearrange" "publish" "produce" "organize" "model"
                 "mass-produce" "manufacture" "lay" "formulate" "form"
                 "fabricate" "derive" "create" "cowrite" "contrive" "construct"
                 "concoct" "compute" "coin" "author")
                (:s agent :io result :o attribute)
                (:s agent :o result :for beneficiary)
                (:s agent :o result :from material :out_of material)
                (:s agent :o result)))

(define-mixin-category create-26.4-1
  :specializes subcategorization-pattern
  :mixins (np-v create-26.4)
  :realization (:verb
                ("write" "silkscreen" "scriptwrite" "invent" "improvise"
                 "draft" "compose" "choreograph")
                (:s agent)))

(define-mixin-category create-26.4-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np.beneficiary-np create-26.4-1)
  :realization (:verb ("spin" "paint" "draw" "dig" "design" "craft" "conjure")
                (:s agent :io beneficiary :o result)))

(define-mixin-category curtsey-40.3.3
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.recipient np-v-np np-v-np-pp.recipient with-agent
           with-recipient with-topic)
  :binds ((sparser::recipient physical-agent) (sparser::agent physical-agent))
  :realization (:verb
                ("salute" "salaam" "kneel" "genuflect" "curtsey" "bow" "bob")
                (:s agent :o topic :to recipient) (:s agent :o topic)
                (:s agent :dest_dir recipient) (:s agent)))

(define-mixin-category cut-21.1
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np np-v-np-pp.instrument np-v-pp np-v-pp-pp
           np-v-advp-middle np.instrument-v-np np.instrument-v-advp
           np-v-np-adjp-pp.instrument np-v-np-pp.result-pp.instrument
           np-v-np-adjp np-v-np-pp.result np-v-np-pp.source
           np-v-np-pp.source-pp.instrument with-agent with-patient
           with-instrument with-source with-result)
  :binds ((sparser::instrument physical) (sparser::patient physical))
  :realization (:verb nil (:s agent :o patient :from source :with instrument)
                (:s agent :o patient :from source)
                (:s instrument :o patient :to result :into result)
                (:s instrument :io patient :o result)
                (:s agent :o patient :to result :into result :with instrument)
                (:s agent :o patient :to result :into result)
                (:s agent :io patient :o result :with instrument)
                (:s agent :io patient :o result) (:s instrument :m adverb)
                (:s instrument :o patient) (:s patient :m adverb)
                (:s agent :o patient :with instrument)
                (:s agent :|through\|into| patient) (:s agent :o patient)))

(define-mixin-category cut-21.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np with-patient cut-21.1)
  :binds ((sparser::patient (:or nil pronoun)))
  :realization (:verb
                ("ream" "snip" "slice" "slash" "scratch" "scrape" "scarify"
                 "saw" "rip" "hew" "hack" "cut" "clip" "chop" "chip")
                (:s agent :o patient)))

(define-mixin-category debone-10.8
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-source)
  :binds ((sparser::source physical)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("eviscerate" "disembowel" "deworm" "dewax" "dewater" "devein"
                 "detusk" "detassel" "destress" "destarch" "desprout" "desex"
                 "descale" "desalt" "derind" "derib" "derat" "demast"
                 "deluster" "delouse" "delint" "deink" "deice" "dehusk"
                 "dehull" "dehorn" "dehead" "dehair" "degut" "degum" "degrit"
                 "degrease" "deglaze" "degerm" "degas" "defuzz" "defrost"
                 "deforest" "defog" "defoam" "deflower" "deflesh" "deflea"
                 "defeather" "defat" "defang" "decontaminate" "declaw" "debur"
                 "debug" "debowel" "debone" "debark" "deaccent")
                (:s agent :o source)))

(define-mixin-category declare-29.4
  :specializes subcategorization-pattern
  :mixins (np-v-np-np np-v-np-to-be-np np-v-np-adj np-v-that-s with-agent
           with-theme with-result)
  :binds ((sparser::agent physical-agent))
  :realization (:verb ("confess" "avow") (:s agent :thatcomp theme)
                (:s agent :np_ppart theme :c result)
                (:s agent :to_be theme) (:s agent :io theme :c result)))

(define-mixin-category declare-29.4-1
  :specializes subcategorization-pattern
  :mixins (np-v-what-s np-v-np-adj declare-29.4)
  :realization (:verb ("maintain" "assume" "adjudge")
                (:s agent :o theme :as result) (:s agent :what_extract theme)))

(define-mixin-category declare-29.4-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-what-s_inf np-v-how-s declare-29.4-1)
  :realization (:verb ("prove") (:s agent :how_extract theme)
                (:s agent :what_inf theme)))

(define-mixin-category declare-29.4-1-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-how-s_inf declare-29.4-1-1)
  :realization (:verb ("declare") (:s agent :wh_inf theme)))

(define-mixin-category declare-29.4-1-1-2
  :specializes subcategorization-pattern
  :mixins (np-v-whether/if-s np-v-whether/if-s_inf declare-29.4-1-1)
  :realization (:verb ("judge" "find") (:s agent :wheth_inf theme)
                (:s agent :wh_comp theme)))

(define-mixin-category declare-29.4-1-1-3
  :specializes subcategorization-pattern
  :mixins (np-v-s_ing declare-29.4-1-1)
  :realization (:verb ("profess") (:s agent :be_sc_ing theme)))

(define-mixin-category declare-29.4-2
  :specializes subcategorization-pattern
  :mixins (np-v-how-s np-v-how-s_inf declare-29.4)
  :realization (:verb ("proclaim") (:s agent :wh_inf theme)
                (:s agent :how_extract theme)))

(define-mixin-category dedicate-79
  :specializes subcategorization-pattern
  :mixins (np-v-np-s_ing np-v-np-pp.goal with-agent with-theme with-goal)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("commit" "devote" "dedicate")
                (:s agent :o theme :to goal)))

(define-mixin-category deduce-97.2
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.source np-v-that-s-pp.theme np-v-that-s
           with-agent with-theme with-source)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("rationalize" "prove" "conceive" "gather" "deduce" "deduct"
                 "infer" "disprove" "derive" "conclude" ("reason" :prep "out")
                 "reason")
                (:s agent :thatcomp theme) (:s agent :from theme :o source)
                (:s agent :o theme :from source) (:s agent :o theme)))

(define-mixin-category defend-72.3
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.theme np-v-s_ing with-agent with-beneficiary
           with-theme)
  :binds ((sparser::beneficiary (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                (("speak" :prep "for") "safeguard" "guard" "preserve" "shade"
                 "protect" "insure" "defend")
                (:s agent :poss_ing beneficiary) (:s agent :ac_ing beneficiary)
                (:s agent :o beneficiary :against theme)
                (:s agent :o beneficiary)))

(define-mixin-category deprive-10.6.2
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.theme with-agent with-theme with-source)
  :binds ((sparser::source (:or physical-agent location region))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("sap" "deprive" "divest" "deplete" "dispossess" "drain"
                 "disarm" "denude" "bereave" "depopulate" "rid" "plunder"
                 "disabuse" "despoil" "burgle")
                (:s agent :o source :of theme) (:s agent :o source)))

(define-mixin-category destroy-44
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.instrument np.instrument-v-np with-agent
           with-patient with-instrument)
  :binds ((sparser::instrument physical) (sparser::patient physical))
  :realization (:verb
                ("shatter" "wreck" "wrack" "waste" "vaporize" "unmake" "undo"
                 "smoke" "shipwreck" "ruin" "raze" "ravage" "rack" "obliterate"
                 "mutilate" "maim" ("louse" :prep "up") "level" "extirpate"
                 "exterminate" "efface" "disfigure" "devastate" "destroy"
                 "desecrate" "demolish" "decimate" "damage" "blitz" "blight"
                 "annihilate")
                (:s instrument :o patient)
                (:s agent :o patient :with instrument) (:s agent :o patient)))

(define-mixin-category devour-39.4
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-patient)
  :binds ((sparser::patient pathogen)
          (sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb
                ("take" "swill" "ingest" "imbibe" "have" "down" "devour"
                 "consume")
                (:s agent :o patient)))

(define-mixin-category die-42.4
  :specializes subcategorization-pattern
  :mixins (np-v with-patient)
  :binds ((sparser::patient physical-agent))
  :realization (:verb
                (("snuff" :prep "it") ("pop" :prep "off") "pass"
                 ("kick" :prep "the_bucket") ("give" :prep "up_the_ghost")
                 "fall" "decease" ("buy" :prep "the_farm"))
                (:s patient)))

(define-mixin-category die-42.4-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.cause with-cause die-42.4)
  :realization (:verb
                ("perish" ("pass" :prep "away") "expire" ("drop" :prep "dead")
                 "die" "croak" "conk" "choke")
                (:s patient :of cause :|\|| cause :from cause)))

(define-mixin-category differ-23.4
  :specializes subcategorization-pattern
  :mixins (np-v-pp.co-theme np-v with-theme with-theme)
  :realization (:verb ("vary" "diverge" "differ" "deviate" "branch") (:s theme)
                (:s theme :from theme :with theme)))

(define-mixin-category dine-39.5
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.patient with-agent with-patient)
  :binds ((sparser::agent physical-agent))
  :realization (:verb
                ("sup" "snack" "picnic" "nosh" "luncheon" "lunch" "junket"
                 "graze" "feast" "dine" "brunch" "breakfast" "banquet")
                (:s agent :on patient) (:s agent)))

(define-mixin-category disappearance-48.2
  :specializes subcategorization-pattern
  :mixins (np-v with-theme with-source)
  :realization (:verb
                (("go" :prep "off") ("go" :prep "down") ("go" :prep "out")
                 "die")
                (:s theme)))

(define-mixin-category disappearance-48.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp disappearance-48.2)
  :realization (:verb ("vanish" "perish" "lapse" "go" "expire" "disappear")
                (:s theme :from source)))

(define-mixin-category disassemble-23.3
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np np-v-np-pp.co-patient np-v-adv-middle
           with-agent with-patient with-co-patient)
  :binds ((sparser::co-patient physical) (sparser::patient physical)
          (sparser::agent (:or physical-agent physical-object)))
  :realization (:verb
                ("sieve" "unzip" "untie" "unstitch" "unstaple" "unshackle"
                 "unseal" "unscrew" "unpin" "unpeg" "unleash" "unlock"
                 "unlatch" "unlace" "unhook" "unhitch" "unhinge" "unglue"
                 "unfix" "unfasten" "unclip" "unclasp" "unclamp" "unchain"
                 "unbutton" "unbuckle" "unbolt" "sunder" "slice" "sift"
                 "segregate" "partition" "pare" "dismount" "dismantle"
                 "disconnect" "disassemble" "detach" "carve")
                (:s patient :m adverb) (:s agent :o patient :from co-patient)
                (:s agent :o patient)))

(define-mixin-category discover-84
  :specializes subcategorization-pattern
  :mixins (np-v-how-s np-v-how-s_inf np-v-np np-v-that-s np-v-what-s
           np-v-what-s_inf with-agent with-theme with-source)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb
                (("work" :prep "out") ("chance" :prep "upon")
                 ("chance" :prep "on") ("chance" :prep "across") "solve"
                 ("scent" :prep "out") "see" "relearn" "rationalize"
                 "ascertain" "realize" "guess" "find" "discover" "determine"
                 "deduce")
                (:s agent :what_inf theme) (:s agent :what_extract theme)
                (:s agent :thatcomp theme) (:s agent :c theme)
                (:s agent :wh_inf theme) (:s agent :how_extract theme)))

(define-mixin-category discover-84-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.theme-s_ing np-v-pp.source-how-s np-v-pp.source-how-s_inf
           np-v-pp.source-pp.theme-whether/if-s np-v-pp.source-pp.theme-what-s
           np-v-pp.source-pp.theme-what-s_inf
           np-v-pp.source-pp.theme-whether-s_inf np-v-what-s_inf discover-84)
  :realization (:verb (("pick" :prep "up")) (:s agent :what_inf theme)
                (:s agent :from source :about theme)
                (:s agent :from source :wh_inf theme)
                (:s agent :from source :how_extract theme)
                (:s agent :about theme)))

(define-mixin-category discover-84-1-1
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.theme-s_ing np-v-pp.theme-what-s np-v-pp.theme
           np-v-pp.theme-pp.source discover-84-1)
  :realization (:verb
                (("figure" :prep "out") ("find" :prep "out") "study" "learn"
                 "hear")
                (:s agent :about theme :from source) (:s agent :about theme)
                (:s agent)))

(define-mixin-category disfunction-105.2.2
  :specializes subcategorization-pattern
  :mixins (np-v with-theme)
  :realization (:verb
                (("poop" :prep "out") ("go" :prep "out") ("go" :prep "off")
                 ("go" :prep "down") ("give" :prep "out")
                 ("fizzle" :prep "out") "die" "croak")
                (:s theme)))

(define-mixin-category distinguish-23.5
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-instrument with-theme with-theme)
  :binds ((sparser::instrument object)
          (sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb (("tell" :prep "apart")) (:s agent :o theme)))

(define-mixin-category distinguish-23.5-1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp np-v-pp distinguish-23.5)
  :realization (:verb ("differentiate" "distinguish")
                (:s agent :between theme :o theme)
                (:s instrument :o theme :from theme) (:s agent :o theme)))

(define-mixin-category dress-41.1.1
  :specializes subcategorization-pattern
  :mixins (np-v np-v-np with-agent with-patient)
  :binds ((sparser::patient (:or physical-agent pronoun))
          (sparser::agent physical-agent))
  :realization (:verb
                ("wash" "undress" "unclothe" "tan" "sunbathe" "strip" "shower"
                 "shave" "primp" "preen" "moisturize" "lave" "frock" "exercise"
                 "dress" "disrobe" "clothe" "change" "bathe")
                (:s agent :refl patient) (:s agent :o patient) (:s agent)))

(define-mixin-category dressing_well-41.3.2
  :specializes subcategorization-pattern
  :mixins (np-v-np-up np-v-up-np with-agent with-patient)
  :binds ((sparser::patient pronoun)
          (sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb ("trick" "tog" "spruce" "gussy" "dress" "doll")
                (:s agent :o patient)))

(define-mixin-category drive-11.5
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.destination np-v-np-pp.initial_location
           np-v-np-pp.initial_location-pp.destination
           np-v-np-pp.destination-pp.initial_location with-agent with-theme
           with-source with-destination)
  :binds ((sparser::destination (:or physical-agent location region))
          (sparser::source location) (sparser::theme physical)
          (sparser::agent (:or physical-agent motor-vehicle)))
  :realization (:verb
                ("wheel" "trundle" ("tool" :prep "around") "tool" "paddle"
                 "motor" "row" "drive" "bike")
                (:s agent :o theme :to destination :src source)
                (:s agent :o theme :src source :to destination :towards
                 destination)
                (:s agent :o theme :src source)
                (:s agent :o theme :to destination :towards destination)
                (:s agent :o theme)))

(define-mixin-category drive-11.5-1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.initial_location np-v-np-pp.destination
           np-v-np-pp.initial_location-pp.destination
           np-v-np-pp.destination-pp.initial_location drive-11.5)
  :realization (:verb ("truck" "shuttle" "fly" "ferry" "cart" "bus" "barge")
                (:s agent :o theme :to destination :src source)
                (:s agent :o theme :src source :to destination)
                (:s agent :o theme :to destination)
                (:s agent :o theme :src source) (:s agent :o theme)))

(define-mixin-category dub-29.3.2
  :specializes subcategorization-pattern
  :mixins (np-v-np-np np-v-np with-agent with-theme with-result)
  :binds ((sparser::theme (:or physical company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("style" "nickname" "name" "label" "crown" "consecrate"
                 "christen" "brand" "baptize" "anoint" "vote" "term" "stamp"
                 "rule" "rename" "pronounce" "dub" "decree" "call")
                (:s agent :o theme) (:s agent :io theme :o result)))

(define-mixin-category earn-54.6
  :specializes subcategorization-pattern
  :mixins (np-v-np with-theme with-extent)
  :realization (:verb
                ("raise" "fetch" "earn" ("bring" :prep "in") "bring" "attract")
                (:s theme :o extent)))

(define-mixin-category eat-39.1
  :specializes subcategorization-pattern
  :mixins (with-agent has-location)
  :binds ((sparser::location location) (sparser::agent physical-agent))
  :realization (:verb nil))

(define-mixin-category eat-39.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v np-v-pp.source with-patient eat-39.1)
  :binds ((sparser::patient (:and/or pathogen solid)))
  :realization (:verb ("eat") (:s agent :src source) (:s agent)
                (:s agent :o patient)))

(define-mixin-category eat-39.1-2
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v np-v-pp.source with-patient eat-39.1)
  :binds ((sparser::patient (:and/or pathogen solid)))
  :realization (:verb ("drink") (:s agent :src source) (:s agent)
                (:s agent :o patient)))

(define-mixin-category eat-39.1-3
  :specializes subcategorization-pattern
  :mixins (np-v np-v-np with-patient eat-39.1)
  :binds ((sparser::patient pathogen))
  :realization (:verb
                ("use" "smoke" ("shoot" :prep "up") "snort" "mainline" "inject"
                 "huff")
                (:s agent :o patient) (:s agent)))

(define-mixin-category empathize-88.2
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.stimulus np-v-pp.stimulus-s_ing np-v-pp.stimulus-what-s
           with-experiencer with-stimulus)
  :binds ((sparser::experiencer (:or physical-agent company)))
  :realization (:verb ("commiserate" "identify" "sympathize" "empathize")
                (:s experiencer :with stimulus) (:s experiencer)))

(define-mixin-category employment-95.3
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp np-v-pp-pp with-agent with-theme with-beneficiary
           with-attribute)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("work" "temp" "subcontract" "freelance" "clerk")
                (:s agent :io attribute :o agent) (:s agent :on theme :o agent)
                (:s agent :on theme :|\|| theme :in theme :|\|| theme :at
                 theme)
                (:s agent :o agent) (:s agent)))

(define-mixin-category encounter-30.5
  :specializes subcategorization-pattern
  :mixins (np-v-np with-experiencer with-stimulus)
  :binds ((sparser::experiencer physical-agent))
  :realization (:verb
                (("stumble" :prep "upon") ("stumble" :prep "on")
                 ("meet" :prep "with") "meet" ("happen" :prep "upon")
                 ("happen" :prep "on") "encounter" ("come" :prep "across")
                 ("chance" :prep "upon") ("chance" :prep "across"))
                (:s experiencer :o stimulus)))

(define-mixin-category enforce-63
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-that-s with-agent with-theme)
  :binds ((sparser::agent (:and/or physical-agent company)))
  :realization (:verb ("impose" "enforce" "control")
                (:s agent :thatcomp theme) (:s agent :o theme)))

(define-mixin-category engender-27.1
  :specializes subcategorization-pattern
  :mixins (np-v-np with-cause with-theme)
  :binds ((sparser::theme abstract))
  :realization (:verb
                ("spawn" "sire" "shape" ("set" :prep "off")
                 ("set" :prep "in_motion") "return" "raise" "produce" "kindle"
                 "generate" "engender" "create" ("bring" :prep "about") "bring"
                 "beget")
                (:s predicate :o patient)))

(define-mixin-category engender-27.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-s engender-27.1)
  :realization (:verb
                ("trigger" ("stir" :prep "up") "stimulate" "spark" "provoke"
                 "prompt" "instigate" "inspire" "incite" "elicit" "cause"
                 ("call" :prep "forth") "arouse" "actuate")
                (:s cause :io theme :o predicate)))

(define-mixin-category ensure-99
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-np np-v-np-pp.beneficiary np-v-that-s predication
           with-theme with-beneficiary)
  :binds ((sparser::predicate predicate))
  :realization (:verb
                ("provide" "reinsure" "ascertain" "secure" "insure" "guarantee"
                 "assure" "ensure")
                (:s predicate :oc_to_inf theme)
                (:s predicate :o theme :for beneficiary)
                (:s predicate :io beneficiary :c theme)
                (:s predicate :o theme)))

(define-mixin-category entity_specific_cos-45.5
  :specializes subcategorization-pattern
  :mixins (np.patient-v with-patient)
  :binds ((sparser::patient physical))
  :realization (:verb
                ("pullulate" "wither" "wilt" "wane" "tarnish" "swell"
                 "suppurate" "subside" "stagnate" "sprout" "spoil" "rust" "rot"
                 "putrefy" "progress" "phosphoresce" "oxidize" "moult" "molt"
                 "molder" "green" "germinate" "foliate" "flower" "fester"
                 "ferment" "erode" "ebb" "deteriorate" "decompose" "decay"
                 "crust" "corrode" "burn" "burgeon" "bud" "blossom" "bloom"
                 "blister" "atrophy" "apostatize")
                (:s patient)))

(define-mixin-category entity_specific_modes_being-47.2
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.location there-v-np np.location-v-np
           np.location-v-pp.theme with-theme has-location)
  :binds ((sparser::location (:and/or location region)))
  :realization (:verb
                ("sprout" "smolder" "seethe" "roil" "ripple" "rage" "propagate"
                 "moil" "froth" "foam" "flux" "flower" "flow" "fizz" "fester"
                 "effervesce" "burn" "bulge" "bristle" "blossom" "bloom"
                 "billow")
                (:s location :with theme) (:loc location :o theme)
                (:definite theme) (:s theme :loc location) (:s theme)))

(define-mixin-category equip-13.4.2
  :specializes subcategorization-pattern
  :mixins (np-v-np-fulfilling-pp with-agent with-theme with-recipient)
  :binds ((sparser::recipient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("ply" "invest" "charge")
                (:s agent :o recipient :with theme)))

(define-mixin-category equip-13.4.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np.recipient equip-13.4.2)
  :realization (:verb
                ("treat" "saddle" "reward" "repay" "remunerate" "regale"
                 "redress" "recompense" "rearm" "outfit" "equip" "arm")
                (:s agent :o recipient)))

(define-mixin-category equip-13.4.2-1-1
  :specializes subcategorization-pattern
  :mixins (np.theme-v-np equip-13.4.2-1)
  :realization (:verb
                ("compensate" "burden" "weight" "overburden" "fortify"
                 "encumber" "armor")
                (:s theme :o recipient)))

(define-mixin-category escape-51.1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.destination np-v-pp.trajectory
           np-v-pp.initial_location-pp.destination with-theme with-source
           with-destination with-path)
  :binds ((sparser::path physical) (sparser::destination physical)
          (sparser::source physical) (sparser::theme physical))
  :realization (:verb (("make" :prep "it") "get" "cut")
                (:s theme :path source :path destination) (:s theme :path path)
                (:s theme :path destination)))

(define-mixin-category escape-51.1-1
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.initial_location escape-51.1)
  :realization (:verb
                ("withdraw" "vamoose" "skedaddle" "retreat" "emigrate" "emerge"
                 "bolt" ("set" :prep "out") ("set" :prep "off") "arrive"
                 "tumble" "rise" "return" "recede" "plunge" "go" "file" "fall"
                 "decamp" "continue" "come" "approach" "advance")
                (:s theme :path source) (:s theme)))

(define-mixin-category escape-51.1-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np escape-51.1-1)
  :realization (:verb
                ("vacate" "leave" "flee" "exit" "escape" "disembark" "depart")
                (:s theme :o source)))

(define-mixin-category escape-51.1-1-2
  :specializes subcategorization-pattern
  :mixins (np-v-np escape-51.1-1)
  :realization (:verb ("approach" "enter") (:s theme :o destination)))

(define-mixin-category escape-51.1-1-3
  :specializes subcategorization-pattern
  :mixins (np-v-np escape-51.1-1)
  :realization (:verb ("pass" "descend" "cross" "climb" "ascend")
                (:s theme :o path)))

(define-mixin-category establish-55.5
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-patient)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("stage" "pioneer" "machinate" "innovate" "constitutionalize"
                 "constitute" "bring")
                (:s agent :o patient)))

(define-mixin-category establish-55.5-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.instrument with-instrument establish-55.5)
  :binds ((sparser::instrument object))
  :realization (:verb
                (("open" :prep "up") "open" "launch" "synthesise"
                 ("strike" :prep "up") "simulate" "set" "introduce" "arrange"
                 ("bring" :prep "about") "mount" "devise" "premise" "prepare"
                 "originate" "organize" "institute" "instigate" "implement"
                 "plant" "found" "format" "feign" "fake" "establish"
                 "initiate")
                (:s agent :o patient :with instrument)))

(define-mixin-category estimate-34.2
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.value with-agent with-theme with-path)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("put") (:s agent :o theme :at path)))

(define-mixin-category estimate-34.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-how-s np-v-np-to-be-adj np-v-that-s np-v-what-s
           estimate-34.2)
  :realization (:verb
                ("project" "guesstimate" "assess" "quantize" "count" "judge"
                 "guess" "approximate" "gauge" "estimate")
                (:s agent :what_extract theme) (:s agent :thatcomp theme)
                (:s agent :to_be theme) (:s agent :how_extract path)
                (:s agent :o theme)))

(define-mixin-category exceed-90
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.attribute with-theme with-theme with-attribute)
  :realization (:verb
                ("top" "surpass" "overstep" "overreach" "outwit" "outweigh"
                 "outstrip" "outsmart" "outshine" "outrace" "outnumber"
                 "outmatch" "outdo" "outbid" "lap" "exceed" "better"
                 "transcend" "overleap" "overcome")
                (:s theme :o theme :in attribute) (:s theme :o theme)))

(define-mixin-category exchange-13.6.1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.co-theme np-v-np-pp.co-agent np-v-np with-agent
           with-theme with-theme with-agent)
  :binds ((sparser::agent (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("trade" "swap" "exchange" "change" "barter")
                (:s agent :o theme) (:s agent :plural theme :with agent)
                (:s agent :plural theme) (:s agent :o theme :for theme)))

(define-mixin-category exclude-107.3
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.goal np-v-np with-agent with-theme with-goal)
  :binds ((sparser::theme (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("omit") (:s agent :o theme)
                (:s agent :o theme :from goal)))

(define-mixin-category exclude-107.3-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.goal-s_ing exclude-107.3)
  :realization (:verb ("preclude" "exclude") (:s agent :o theme :from goal)))

(define-mixin-category exhale-40.1.3
  :specializes subcategorization-pattern
  :mixins (with-agent with-theme)
  :binds ((sparser::agent physical-agent))
  :realization (:verb nil))

(define-mixin-category exhale-40.1.3-1
  :specializes subcategorization-pattern
  :mixins (np-v np-v-np exhale-40.1.3)
  :realization (:verb
                ("whiff" "urinate" "regurgitate" "expectorate" "perspire"
                 "hemorrhage" "exhale" "defecate")
                (:s agent :o theme) (:s agent)))

(define-mixin-category exhale-40.1.3-2
  :specializes subcategorization-pattern
  :mixins (np-v np-v-np exhale-40.1.3)
  :realization (:verb ("inhale") (:s agent :o theme) (:s agent)))

(define-mixin-category exist-47.1
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.location with-theme has-location)
  :binds ((sparser::location location))
  :realization (:verb
                ("persevere" "wait" "vegetate" "tower" "thrive" "stay" "stand"
                 "shelter" "reside" "remain" "prosper" "prevail" "predominate"
                 "persist" "lurk" "loom" "live" "linger" "languish" "hold"
                 "flourish" "extend" "exist" "dwell" "coexist")
                (:s theme :loc location) (:s theme)))

(define-mixin-category exist-47.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-pp with-cause with-manner exist-47.1)
  :binds ((sparser::manner adverb))
  :realization (:verb ("survive" "live" "endure") (:s theme :nil manner)
                (:s theme :nil instrument) (:s theme :o cause)))

(define-mixin-category feeding-39.7
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.recipient np-v-np-dative-np with-agent with-theme
           with-recipient)
  :binds ((sparser::recipient physical-agent) (sparser::agent physical-agent))
  :realization (:verb
                ("suckle" "spoonfeed" "nurse" "handfeed" "force-feed" "feed"
                 "breastfeed" "bottlefeed")
                (:s agent :io recipient :o theme)
                (:s agent :o theme :to recipient) (:s agent :o recipient)))

(define-mixin-category ferret-35.6
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.source with-agent with-source with-theme)
  :binds ((sparser::agent physical-agent))
  :realization (:verb ("tease" "nose" "ferret") (:s agent :o theme :dir source)))

(define-mixin-category fill-9.8
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.theme np-v-np.destination with-agent with-theme
           with-source with-destination)
  :binds ((sparser::destination (:and/or location region))
          (sparser::source location) (sparser::theme physical)
          (sparser::agent physical-agent))
  :realization (:verb
                ("inject" "tinge" "taint" "sully" "suffuse" "stud"
                 ("stop" :prep "up") "stipple" "staff" "splotch" "soil" "smut"
                 "season" "sauce" "ripple" "ring" "riddle" "resupply"
                 "repopulate" "replenish" "prefill" "plug" "plate" "pad"
                 "ornament" "mottle" "mask" "litter" "lash" "lard" "inundate"
                 "interweave" "intersperse" "interleave" "interlard"
                 "interlace" "inlay" "infest" "infect" "impregnate" "imbue"
                 "honeycomb" ("gum" :prep "up") "grace" "garnish" "garland"
                 "flood" "fleck" "fill" "enrich" "endow" "encircle" "emblazon"
                 "embellish" "dot" "dope" "dirty" "deluge" "dam" "contaminate"
                 "clutter" "close" "clog" "choke" "bombard" "blot" "blockade"
                 "blacktop" "bestrew" "bandage" "anoint")
                (:s agent :o destination) (:s agent :o destination :with theme)
                (:s theme :o destination)))

(define-mixin-category fill-9.8-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.theme fill-9.8)
  :realization (:verb
                ("stain" "vein" "veil" "trim" "tool" "tile" "swathe" "swaddle"
                 "surround" "spot" "speckle" "soak" "smother" "shroud"
                 "saturate" "robe" "redecorate" "pave" "panel" "marinate"
                 "line" "frame" "festoon" "face" "entangle" "encrust" "edge"
                 "drench" "douse" "disguise" "decorate" "deck" "dapple" "cover"
                 "coat" "cloak" "carpet" "block" "blanket" "bind" "bathe"
                 "adorn")
                (:s agent :o destination :in theme)))

(define-mixin-category fire-10.10
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.source np-v-np-pp.attribute with-agent with-theme
           with-source with-attribute)
  :binds ((sparser::source company)
          (sparser::theme (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("shitcan" ("let" :prep "go") ("lay" :prep "off")
                 ("give" :prep "the_boot") "terminate" ("force" :prep "out")
                 "suspend" ("send" :prep "away") "can" "remove" "expel" "oust"
                 "unseat" "drop" "sack" "dismiss" "fire")
                (:s agent :o theme :as attribute)
                (:s agent :o theme :from source) (:s agent :o theme)))

(define-mixin-category fit-54.3
  :specializes subcategorization-pattern
  :mixins (np.location-v-np np-v-np-pp.location with-agent with-path
           has-location)
  :binds ((sparser::location location) (sparser::agent physical-agent))
  :realization (:verb
                ("take" "store" "sleep" "serve" "seat" "reseat" "house" "hold"
                 "hibernate" "feed" "fit" "contain" "carry")
                (:s agent :o path :in location) (:s location :o path)))

(define-mixin-category flinch-40.5
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.stimulus with-experiencer with-stimulus)
  :binds ((sparser::experiencer physical-agent))
  :realization (:verb
                ("wince" "shrink" "recoil" "quail" "flinch" "cringe" "cower"
                 "balk")
                (:s experiencer :at stimulus :from stimulus) (:s experiencer)))

(define-mixin-category floss-41.2.1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v np-v-np-pp.instrument np-v-pp.instrument with-agent
           with-patient with-instrument)
  :binds ((sparser::instrument object) (sparser::agent physical-agent))
  :realization (:verb ("wash" "shave" "floss" "brush")
                (:s agent :with instrument)
                (:s agent :o patient :with instrument) (:s agent)
                (:s agent :o patient)))

(define-mixin-category focus-87.1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.topic np-v-pp.theme-s_ing np-v-pp.topic-what-s
           np-v-pp.topic-what-s_inf with-agent with-topic)
  :binds ((sparser::agent (:or physical-agent)))
  :realization (:verb
                ("fixate" "dwell" "converge" "contemplate" "concentrate"
                 "center" "focalize" "focus")
                (:s agent :on topic)))

(define-mixin-category focus-87.1-1
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.topic np-v-pp.theme-s_ing np-v-pp.topic-what-s
           np-v-pp.topic-what-s_inf focus-87.1)
  :realization (:verb
                ("wonder" "think" "ruminate" "reflect" "ponder" "muse"
                 "meditate" "deliberate" "brood")
                (:s agent :about topic) (:s agent)))

(define-mixin-category forbid-64.4
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.theme with-agent with-theme with-beneficiary)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("keep" "dissuade") (:s agent :o beneficiary :from theme)))

(define-mixin-category forbid-64.4-1
  :specializes subcategorization-pattern
  :mixins (np-v-s_ing np-v-np forbid-64.4)
  :realization (:verb
                ("stop" "restrain" "prohibit" "prevent" "preclude" "obstruct"
                 "inhibit" "impede" "hinder" "hamper" "forbid" "exclude"
                 "discourage" "deter" "block" "bar" "ban")
                (:s agent :c theme) (:s agent :ac_ing theme)
                (:s agent :poss_ing theme)))

(define-mixin-category free-10.6.3
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.theme with-cause with-source with-theme)
  :binds ((sparser::source (:or physical-agent company)))
  :realization (:verb
                ("break" "ease" "wean" "disencumber" "cleanse" "unburden"
                 "exonerate" "discharge" "liberate" "alleviate")
                (:s cause :o source :of theme)))

(define-mixin-category free-10.6.3-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-s_ing free-10.6.3)
  :realization (:verb
                ("rerelease" "release" "emancipate" "free" "clear" "acquit"
                 "absolve")
                (:s cause :o source :of theme)))

(define-mixin-category free-10.6.3-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.theme free-10.6.3-1)
  :realization (:verb ("purify" "purge" "relieve" "cure")
                (:s cause :o source :from theme)))

(define-mixin-category fulfilling-13.4.1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.recipient np-v-np-fulfilling-pp.theme np-v-np with-agent
           with-theme with-recipient)
  :binds ((sparser::recipient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("trust" "present" "leave" "issue") (:s agent :o theme)
                (:s agent :o recipient :with theme)
                (:s agent :o theme :to recipient :|\|| recipient :for
                 recipient)))

(define-mixin-category fulfilling-13.4.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np fulfilling-13.4.1)
  :realization (:verb
                ("supply" "serve" "resupply" "furnish" "entrust" "credit")
                (:s agent :o recipient)))

(define-mixin-category fulfilling-13.4.1-2
  :specializes subcategorization-pattern
  :mixins (np-v-pp.recipient with-recipient with-agent fulfilling-13.4.1)
  :binds ((sparser::agent (:or abstract physical-agent))
          (sparser::recipient (:or abstract physical-agent)))
  :realization (:verb ("provide") (:s agent :for recipient)))

(define-mixin-category function-105.2.1
  :specializes subcategorization-pattern
  :mixins (np-v with-theme)
  :realization (:verb ("run" ("go" :prep "on") "go") (:s theme)))

(define-mixin-category function-105.2.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp predication function-105.2.1)
  :binds ((sparser::predicate predicate))
  :realization (:verb ("work" "operate" "function" "perform")
                (:s theme :o predicate)))

(define-mixin-category funnel-9.3
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.destination np-v-np-advp np-v-np-pp with-agent with-theme
           with-source with-destination with-path)
  :binds ((sparser::path location)
          (sparser::destination (:and/or location region))
          (sparser::source location) (sparser::theme physical)
          (sparser::agent physical-agent))
  :realization (:verb
                ("channelize" "sop" "siphon" "scoop" "hoe" "ladle" "dunk"
                 "dip")
                (:s agent :o theme :spatial path)
                (:s agent :io theme :adv_loc destination)
                (:s agent :o theme :dest_conf destination)))

(define-mixin-category funnel-9.3-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.destination funnel-9.3)
  :realization (:verb
                ("wring" "wipe" "tuck" "squish" "squash" "spoon" "shovel"
                 "scrape" "rake" "fit" "channel")
                (:s agent :o theme :plural destination)))

(define-mixin-category funnel-9.3-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.destination funnel-9.3-1)
  :realization (:verb
                ("wedge" "sweep" "squeeze" "shake" "ram" "push" "pound"
                 "hammer" "funnel" "dump" "bang")
                (:s theme :into destination)))

(define-mixin-category future_having-13.3
  :specializes subcategorization-pattern
  :mixins (np-v-np.theme- np-v-np-dative-np np-v-np-pp.goal with-agent
           with-theme with-goal)
  :binds ((sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb
                ("yield" "will" "vote" "reassign" "reallocate" "ration"
                 "promise" "portion-out" "owe" "offer" "leave" "issue"
                 "guarantee" "grant" "extend" "devolve" "concede" "cede"
                 "bequeath" "award" "assign" "apportion" "allow" "allot"
                 "allocate" "advance" "accord")
                (:s agent :o theme :to goal :for goal)
                (:s agent :io goal :o theme) (:s agent :o theme)
                (:s agent :o theme :to goal)))

(define-mixin-category get-13.5.1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.source np-v-np-pp.beneficiary
           np-v-np.beneficiary-np np-v-np-pp.asset np.asset-v-np
           np-v-np-pp.source-np.asset with-agent with-theme with-source
           with-beneficiary with-extent)
  :binds ((sparser::extent (:and/or location region))
          (sparser::beneficiary (:or physical-agent company))
          (sparser::source physical)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("win" "take" "reserve" "rent" "reach" "pull" "procure" "pluck"
                 "pick" "phone" "order" "lease" "hire" "gather" "find" "choose"
                 "charter" "catch" "call" "buy" "book" "attain")
                (:s agent :o theme :from source :at extent :for extent)
                (:s extent :o theme) (:s agent :o theme :for extent)
                (:s agent :io beneficiary :o theme)
                (:s agent :o theme :for beneficiary)
                (:s agent :o theme :from source) (:s agent :o theme)))

(define-mixin-category get-13.5.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.source with-source get-13.5.1)
  :binds ((sparser::source abstract))
  :realization (:verb
                ("secure" "score" "save" "get" "gain" "cash" "fetch" "earn")
                (:s agent :o theme :from source :for source :on source)))

(define-mixin-category give-13.1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.recipient np-v-np-dative-np np-v-np np-v-pp.recipient
           with-agent with-theme with-recipient)
  :binds ((sparser::recipient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("render" "refund" "peddle" "pass" "loan" "lend" "give-back"
                 "deal")
                (:s agent :to recipient) (:s agent :o theme)
                (:s agent :io recipient :o theme)
                (:s agent :o theme :to recipient)))

(define-mixin-category give-13.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.asset np-v-np-pp.recipient-pp.asset np-v-np-np-pp.asset
           with-extent give-13.1)
  :realization (:verb ("pawn" "lease" "sell" "rent" "let" "hawk" "hock" "give")
                (:s agent :io recipient :o theme :at extent :for extent :on
                 extent)
                (:s agent :o theme :to recipient :at extent :for extent :on
                 extent)
                (:s agent :o theme :for extent :at extent)))

(define-mixin-category gobble-39.3
  :specializes subcategorization-pattern
  :mixins (with-agent)
  :binds ((sparser::agent physical-agent))
  :realization (:verb nil))

(define-mixin-category gobble-39.3-1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-up np-v-np-down with-patient gobble-39.3)
  :binds ((sparser::patient (:and/or nil solid)))
  :realization (:verb ("wolf" "gobble" "bolt") (:s agent :o patient)))

(define-mixin-category gobble-39.3-2
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-down-np with-patient gobble-39.3)
  :binds ((sparser::patient (:and/or nil solid)))
  :realization (:verb ("swig" "swallow" "slug" "quaff" "guzzle" "gulp")
                (:s agent :o patient)))

(define-mixin-category gorge-39.6
  :specializes subcategorization-pattern
  :mixins (np-v-pp.patient with-agent with-patient)
  :binds ((sparser::agent physical-agent))
  :realization (:verb
                ("thrive" "survive" "subsist" "prosper" "gorge" "flourish"
                 "feed" "exist")
                (:s agent :on patient)))

(define-mixin-category groom-41.1.2
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-patient)
  :binds ((sparser::patient physical-agent) (sparser::agent physical-agent))
  :realization (:verb ("neaten" "groom" "curry" "cleanse")
                (:s agent :o patient)))

(define-mixin-category grow-26.2.1
  :specializes subcategorization-pattern
  :mixins (np.material-v-pp.product np.product-v-pp.material
           np-v-np.product-pp.material np-v-np.material-pp.product with-agent
           with-patient with-product)
  :binds ((sparser::product physical) (sparser::patient physical)
          (sparser::agent physical-agent))
  :realization (:verb
                ("redevelop" "mature" "maturate" "hatch" "grow" "generate"
                 "evolve" "develop")
                (:s agent :o patient :into product)
                (:s agent :o product :from patient :out_of patient)
                (:s product :from patient :out_of patient)
                (:s patient :into product)))

(define-mixin-category harmonize-22.6
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-adv np-v-pp np-v-adv-pp np-v with-theme with-theme)
  :realization (:verb
                ("square" "rhyme" "match" "jibe" "harmonize" "pair" "go"
                 "dovetail" "couple" "cohere" "alternate")
                (:s theme) (:s theme :m adverb :o theme) (:s theme :o theme)
                (:s theme :m adverb)))

(define-mixin-category help-72.1
  :specializes subcategorization-pattern
  :mixins (with-agent with-beneficiary with-theme)
  :binds ((sparser::beneficiary (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb nil))

(define-mixin-category help-72.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.theme np-v-np-s_ing np-v-np-s_inf np-v-s_ing
           help-72.1)
  :realization (:verb ("succor" "support") (:s agent :with theme)
                (:s agent :io beneficiary :oc_to_inf theme)
                (:s agent :o beneficiary :with theme) (:s agent :o beneficiary)))

(define-mixin-category help-72.1-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.theme help-72.1-1)
  :realization (:verb ("help" "assist" "abet" "aid") (:s agent :with theme)))

(define-mixin-category help-72.1-2
  :specializes subcategorization-pattern
  :mixins (np-v-pp.beneficiary np-v-pp.beneficiary-pp.theme help-72.1)
  :realization (:verb ("pull" "go")
                (:s agent :with beneficiary :|\|| beneficiary :for beneficiary)))

(define-mixin-category herd-47.5.2
  :specializes subcategorization-pattern
  :mixins (np-v np-v-np.theme np-v-np-together with-agent with-theme)
  :binds ((sparser::theme (:and/or physical collection))
          (sparser::agent physical-agent))
  :realization (:verb
                ("reconvene" "mass" "huddle" "herd" "group" "gather" "flock"
                 "convene" "congregate" "collect" "cluster" "assemble" "amass"
                 "aggregate" "accumulate")
                (:s agent :o theme) (:s theme)))

(define-mixin-category hiccup-40.1.1
  :specializes subcategorization-pattern
  :mixins (np-v with-agent)
  :binds ((sparser::agent physical-agent))
  :realization (:verb
                ("yawn" "wheeze" "swallow" "snuffle" "snuff" "snore" "sniffle"
                 "sneeze" "shiver" "salivate" "pant" "hiccup" "flush" "fart"
                 "eruct" "burp" "blush" "blink" "belch")
                (:s agent)))

(define-mixin-category hire-13.5.3
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.attribute np-v-np-to-be-np with-agent with-theme
           with-attribute)
  :binds ((sparser::theme (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("train" ("take" :prep "on") "subcontract" ("sign" :prep "up")
                 ("sign" :prep "on") "sign" "reinstate" "recruit" "prepare"
                 "hire" "groom" "enlist" "engage" "employ" "draft" "contract"
                 "commission")
                (:s agent :to_be theme :io attribute)
                (:s agent :o theme :as attribute) (:s agent :o theme)))

(define-mixin-category hit-18.1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.instrument np-v-np-together
           np-v-np-adjp-pp.instrument np-v-np-pp.result
           np-v-np-pp.result-pp.instrument np-v-np-pp np.instrument-v-np
           np-v-np-adjp np-v-np-adjp-pp.result with-agent with-patient
           with-instrument with-result)
  :binds ((sparser::instrument physical) (sparser::patient physical))
  :realization (:verb
                ("smite" "whop" "whap" "whang" "wham" "whack" "trounce"
                 "thwack" "thump" "tamp" "squelch" "squash" "pink" "knap"
                 "dash" "click" "bop" "blast" "bash" "bang")
                (:s instrument :o patient :to result :into result)
                (:s instrument :io patient :o result)
                (:s instrument :o patient)
                (:s agent :o instrument :against patient :on patient)
                (:s agent :o patient :to result :into result :with instrument)
                (:s agent :o patient :to result :into result)
                (:s agent :io patient :o result :with instrument)
                (:s agent :io patient :o result) (:s agent :plural patient)
                (:s agent :o patient :with instrument) (:s agent :o patient)))

(define-mixin-category hit-18.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp np-v-pp-pp with-instrument hit-18.1)
  :binds ((sparser::instrument (:or nil pronoun)))
  :realization (:verb
                ("tap" "whang" "stomp" "strike" "smash" "smack" "slap" "rap"
                 "pound" "lash" "knock" "kick" "jab" "hit" "hammer" "drum"
                 "butt" "bump" "beat" "batter")
                (:s agent :o patient :with instrument) (:s agent :o patient)))

(define-mixin-category hold-15.1
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-theme)
  :binds ((sparser::theme (:or nil physical)) (sparser::agent physical-agent))
  :realization (:verb
                ("wield" "seize" "hold" "handle" "grip" "grasp" "grab" "clutch"
                 "clasp")
                (:s agent :o theme)))

(define-mixin-category hunt-35.1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.theme np-v-pp.theme-pp.location np-v-pp.location-pp.theme
           np-v-np-pp.location np-v-np np-v with-agent has-location with-theme)
  :binds ((sparser::location location) (sparser::agent physical-agent))
  :realization (:verb
                ("seek" "scrounge" "poach" "pan" "mine" "hunt" "fish" "feel"
                 "dig")
                (:s agent) (:s agent :o theme)
                (:s agent :o theme :loc location)
                (:s agent :loc location :for theme)
                (:s agent :for theme :loc location)
                (:s agent :l location :for theme)))

(define-mixin-category hurt-40.8.3
  :specializes subcategorization-pattern
  :mixins (with-experiencer)
  :binds ((sparser::experiencer physical-agent))
  :realization (:verb nil))

(define-mixin-category hurt-40.8.3-1
  :specializes subcategorization-pattern
  :mixins (np-v-np with-patient hurt-40.8.3)
  :realization (:verb
                ("stub" "sting" "rick" "overstretch" "chafe" "graze" "jam"
                 "hit")
                (:s experiencer :o patient)))

(define-mixin-category hurt-40.8.3-1-1
  :specializes subcategorization-pattern
  :mixins (np-v hurt-40.8.3-1)
  :realization (:verb
                ("twist" "turn" "tear" "sprain" "splinter" "split" "rupture"
                 "pull" "fracture" "chip" "break")
                (:s patient)))

(define-mixin-category hurt-40.8.3-2
  :specializes subcategorization-pattern
  :mixins (np-v-np hurt-40.8.3)
  :realization (:verb
                ("wrench" "sunburn" "strain" "skin" "scratch" "scald" "prick"
                 "nick" "injure" "hurt" "cut" "contuse" "burn" "bump" "bruise"
                 "bite" "bark")
                (:s experiencer :o patient) (:s experiencer :refl patient)))

(define-mixin-category illustrate-25.3
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.theme with-agent with-theme with-destination)
  :binds ((sparser::destination physical)
          (sparser::agent (:or physical-agent physical-object)))
  :realization (:verb
                ("tag" "redecorate" "ornament" "monogram" "letter" "label"
                 "initial" "illustrate" "illuminate" "ice" "gild" "endorse"
                 "embellish" "decorate" "date" "brand" "bead" "autograph"
                 "adorn" "address")
                (:s agent :o destination :with theme) (:s agent :o destination)))

(define-mixin-category image_impression-25.1
  :specializes subcategorization-pattern
  :mixins (np-v-np.theme-pp.destination np-v-np.destination-pp.theme
           np-v-np.destination np-v-np.theme np-v with-agent with-theme
           with-destination)
  :binds ((sparser::destination physical))
  :realization (:verb
                ("tool" "tattoo" "stipple" "stamp" "sign" "scar" "reinscribe"
                 "paint" "mark" "inscribe" "ingrain" "incise" "imprint"
                 "handpaint" "etch" "engrave" "embroider" "emboss" "applique"
                 "annotate")
                (:s agent) (:s agent :o theme) (:s agent :o destination)
                (:s agent :o destination :with theme)
                (:s agent :o theme :loc destination :dest_conf destination)))

(define-mixin-category indicate-78
  :specializes subcategorization-pattern
  :mixins (np-v-how-s np-v-how-s_inf np-v-np np-v-whether/if-s np-v-what-s
           with-experiencer with-instrument with-topic)
  :binds ((sparser::instrument object)
          (sparser::experiencer (:or physical-agent company)))
  :realization (:verb
                ("anticipate" "forebode" "prognosticate" "expose" "corroborate"
                 "denote" "predict" "imply")
                (:s instrument :what_extract topic)
                (:s instrument :wh_comp topic)
                (:s instrument :c topic) (:s instrument :wh_inf topic)
                (:s instrument :how_extract topic)))

(define-mixin-category indicate-78-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.recipient-that-s np-v-pp.recipient-whether/if-s
           np-v-pp.recipient-what-s np-v-pp.recipient-how-s indicate-78)
  :realization (:verb ("say" "indicate" "explain")
                (:s instrument :to experiencer :how_extract topic)
                (:s instrument :to experiencer :what_extract topic)
                (:s instrument :to experiencer :wh_comp topic)
                (:s instrument :to experiencer :thatcomp topic)))

(define-mixin-category indicate-78-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-to-be-np indicate-78-1)
  :realization (:verb
                ("suggest" "show" "reveal" "prove" "establish" "demonstrate"
                 "confirm" "verify" "disclose" "reaffirm" "affirm")
                (:s instrument :to_be topic)))

(define-mixin-category initiate_communication-37.4.2
  :specializes subcategorization-pattern
  :mixins (np-v-np.recipient with-agent with-recipient)
  :binds ((sparser::recipient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("reach" "ping" ("get" :prep "hold_of")
                 ("get" :prep "ahold_of") "get" "buzz")
                (:s agent :o recipient)))

(define-mixin-category initiate_communication-37.4.2-1
  :specializes subcategorization-pattern
  :mixins (np-v initiate_communication-37.4.2)
  :realization (:verb ("telephone" "ring" "phone" "call") (:s agent)))

(define-mixin-category inquire-37.1.2
  :specializes subcategorization-pattern
  :mixins (np-v-how-s np-v-how-s_inf np-v np-v-np.recipient np-v-np.topic
           np-v-np-pp.topic np-v-np-whether-s np-v-np-what-s
           np-v-np-whether-s_inf np-v-np-what-s_inf np-v-pp.topic-whether-s
           np-v-np-pp.topic-what-s np-v-pp.topic-whether-s_inf
           np-v-pp.topic-what-s_inf np-v-pp.topic np-v-pp.recipient-how-s
           np-v-pp.recipient-how-s_inf np-v-pp.recipient-whether-s
           np-v-pp.recipient-pp.topic-what-s
           np-v-pp.recipient-pp.topic-what-s_inf
           np-v-pp.recipient-pp.topic-whether-s_inf np-v-whether-s np-v-what-s
           np-v-whether-s_inf np-v-what-s_inf np-v-np-how-s with-agent
           with-recipient with-topic)
  :binds ((sparser::topic question)
          (sparser::recipient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("pry" "consult" "inquire" "enquire" "ask")
                (:s agent :io recipient :how_extract topic)
                (:s agent :what_inf topic) (:s agent :wheth_inf topic)
                (:s agent :what_extract topic) (:s agent :wh_comp topic)
                (:s agent :of recipient :about topic)
                (:s agent :of recipient :wh_inf topic)
                (:s agent :of recipient :how_extract topic)
                (:s agent :about topic) (:s agent :o recipient :about topic)
                (:s agent :io recipient :what_inf topic)
                (:s agent :io recipient :wheth_inf topic)
                (:s agent :io recipient :what_extract topic)
                (:s agent :io recipient :wh_comp topic)
                (:s agent :c topic) (:s agent :o recipient) (:s agent)
                (:s agent :wh_inf topic) (:s agent :how_extract topic)))

(define-mixin-category instr_communication-37.4.1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np.recipient np-v-np-pp.recipient np-v-np-dative-np
           np-v-np.recipient-s-quote np-v-pp.recipient-s-quote np-v-np-pp.topic
           np-v-that-s np-v-when-s_inf np-v-s_inf np-v-np.recipient-that-s
           np-v-np.recipient-when-s_inf np-v-np.recipient-s_inf
           np-v-pp.recipient-that-s np-v-pp.recipient-when-s_inf
           np-v-pp.recipient-s_inf np-v-for-np-s_inf with-agent with-topic
           with-recipient)
  :binds ((sparser::recipient (:or physical-agent company))
          (sparser::topic speech-act)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("wireless" "wire" "telex" "telephone" "telegraph" "telecast"
                 "signal" "sign" "semaphore" "satellite" "relay" "radio"
                 "phone" "netmail" "modem" "fax" "e-mail" "cable" "broadcast")
                (:s agent :for topic) (:s agent :to recipient :ac_to_inf topic)
                (:s agent :to recipient :wh_inf topic)
                (:s agent :to recipient :thatcomp topic)
                (:s agent :io recipient :ac_to_inf topic)
                (:s agent :io recipient :wh_inf topic)
                (:s agent :io recipient :thatcomp topic)
                (:s agent :ac_to_inf topic) (:s agent :wh_inf topic)
                (:s agent :thatcomp topic)
                (:s agent :o recipient :about topic)
                (:s agent :to recipient :o topic)
                (:s agent :io recipient :o topic)
                (:s agent :o topic :to recipient) (:s agent :o recipient)
                (:s agent :o topic)))

(define-mixin-category intend-61.2
  :specializes subcategorization-pattern
  :mixins (np-v-s_inf np-v-np-pp.attribute with-agent with-topic with-attribute)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("aim") (:s agent :c topic :as attribute)
                (:s agent :to-comp topic)))

(define-mixin-category intend-61.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-s intend-61.2)
  :realization (:verb ("mean") (:s agent :small_clause topic)
                (:s agent :c topic)))

(define-mixin-category intend-61.2-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-s_ing intend-61.2-1)
  :realization (:verb ("plan" "intend") (:s agent :np_omit_ing topic)))

(define-mixin-category interact-36.6
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.co-agent with-agent with-agent)
  :binds ((sparser::agent physical-agent) (sparser::agent physical-agent))
  :realization (:verb
                ("split-up" "hook-up" "interact" "go-out" "go-steady"
                 "follow-through" "follow-up")
                (:s agent :with agent) (:s agent)))

(define-mixin-category interrogate-37.1.3
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.attribute np-v-np-pp.topic with-agent
           with-recipient with-topic with-attribute)
  :binds ((sparser::recipient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("interrogate" "interview" "question" "cross-examine")
                (:s agent :o recipient :about topic)
                (:s agent :o recipient :as attribute) (:s agent :o recipient)))

(define-mixin-category invest-13.5.4
  :specializes subcategorization-pattern
  :mixins (np-v-pp with-agent with-theme with-extent with-goal)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("speculate" "buy") (:s agent :o goal)))

(define-mixin-category invest-13.5.4-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.goal np-v-np-pp.theme invest-13.5.4)
  :realization (:verb ("allocate" "commit" "put" "invest")
                (:s agent :io extent :o theme) (:s agent :io extent :o goal)))

(define-mixin-category investigate-35.4
  :specializes subcategorization-pattern
  :mixins (np-v-np.location-pp.theme np-v-np.location with-agent has-location
           with-theme)
  :binds ((sparser::location location) (sparser::agent physical-agent))
  :realization (:verb
                ("tour" "test" "tap" "survey" "surveil" "scrutinize" "scan"
                 "riffle" "ransack" "raid" "quiz" "picket" "observe" "monitor"
                 "investigate" "inspect" "frisk" "examine" "explore" "canvass")
                (:s agent :l location) (:s agent :l location :for theme)))

(define-mixin-category involve-107.1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.goal with-agent with-theme with-goal)
  :binds ((sparser::theme (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("enroll" "include" "relate" "engage" "involve")
                (:s agent :o theme :in goal) (:s agent :o theme)))

(define-mixin-category judgment-33.1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.attribute np-v-np.attribute with-agent with-theme
           with-attribute)
  :realization (:verb
                ("slang" "imprecate" "gibe" ("find" :prep "fault_with")
                 "condone" "blaspheme" "blame" "badmouth" "backbite" "assault"
                 "abuse")
                (:s agent :o attribute) (:s agent :o theme :for attribute)
                (:s agent :o theme)))

(define-mixin-category judgment-33.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.attribute judgment-33.1)
  :realization (:verb
                (("write" :prep "up") "welcome" "vilify" "upbraid" "toast"
                 "thank" "stigmatize" "snub" "slander" "shame" "scorn" "scold"
                 "satirize" "salute" "ridicule" "reward" "revile" "repudiate"
                 "reprove" "reproach" "recommend" "rebuke" "pardon" "mock"
                 "malign" "lampoon" "lambaste" "insult" "incriminate" "honor"
                 "greet" "glorify" "forgive" "felicitate" "fault" "extol"
                 "excuse" "eulogize" "disparage" "deride" "deprecate"
                 "denounce" "denigrate" "defame" "decry" "damn" "curse"
                 "criticize" "congratulate" "condemn" "compliment" "commend"
                 "commemorate" "cite" "chide" "chastise" "chasten" "censure"
                 "celebrate" "castigate" "calumniate" "bless" "berate"
                 "belittle" "attack" "assail" "approve" "applaud")
                (:s agent :o theme :as attribute)))

(define-mixin-category judgment-33.1-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-to-be-np judgment-33.1-1)
  :realization (:verb
                ("praise" "laud" "judge" "herald" "hail" "doubt" "acclaim")
                (:s agent :io theme :small_clause attribute)))

(define-mixin-category keep-15.2
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.location np-v-np with-agent with-theme has-location)
  :binds ((sparser::location (:and/or location region))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("stockpile" "stock" "store" "leave" "keep" "hold" "hoard")
                (:s agent :o theme) (:s agent :o theme :loc location)))

(define-mixin-category knead-26.5
  :specializes subcategorization-pattern
  :mixins (np.material-v-pp.product np-v-np.material-pp.product
           np-v-np.material with-agent with-product with-material)
  :binds ((sparser::material physical)
          (sparser::agent (:or physical-agent physical-object)))
  :realization (:verb
                ("work" "wind" "whip" "wad" "twist" "twirl" "squish" "squeeze"
                 "squash" "shake" "melt" "knead" "flux" "flex" "fold" "distort"
                 "curve" "contort" "compress" "collect" "coil" "bend" "beat"
                 "ball")
                (:s agent :o material) (:s agent :o material :into product)
                (:s material :into product)))

(define-mixin-category learn-14
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.source np-v-pp.source np-v-np with-agent with-topic
           with-source)
  :binds ((sparser::agent physical-agent))
  :realization (:verb nil (:s agent :o topic) (:s agent :from source)
                (:s agent :o topic :from source)))

(define-mixin-category learn-14-1
  :specializes subcategorization-pattern
  :mixins (np-v learn-14)
  :realization (:verb ("learn" "study" "relearn" "read" "cram") (:s agent)))

(define-mixin-category learn-14-2
  :specializes subcategorization-pattern
  :mixins (np-v-that-s np-v-what-s np-v-pp.source-how-s np-v-pp.source-wh-s_inf
           learn-14)
  :realization (:verb ("memorize" "glean" "assimilate" "absorb")
                (:s agent :from source :wh_inf topic)
                (:s agent :from source :wh_extract topic)
                (:s agent :wh_comp topic) (:s agent :thatcomp topic)))

(define-mixin-category learn-14-2-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.topic learn-14-2)
  :realization (:verb ("read" "learn") (:s agent :of topic :about topic)))

(define-mixin-category leave-51.2
  :specializes subcategorization-pattern
  :mixins (np-v-np.initial_location np-v-np.initial_location-pp.destination
           with-theme with-source with-goal)
  :binds ((sparser::source (:or location physical-agent))
          (sparser::theme physical-agent))
  :realization (:verb ("abandon") (:s theme :o source :path destination)
                (:s theme :o source)))

(define-mixin-category leave-51.2-1
  :specializes subcategorization-pattern
  :mixins (np-v leave-51.2)
  :realization (:verb ("leave" "desert") (:s theme)))

(define-mixin-category lecture-37.11
  :specializes subcategorization-pattern
  :mixins (np-v-s_ing with-agent with-topic with-recipient)
  :binds ((sparser::recipient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb nil (:s agent :about topic)))

(define-mixin-category lecture-37.11-1
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.topic np-v-pp.recipient-pp.topic lecture-37.11)
  :realization (:verb
                ("pontificate" "write" "theorize" "testify" "talk"
                 ("speak" :prep "up") ("speak" :prep "out") "speak"
                 "rhapsodize" "remark" "rave" "rant" "preach" "moralize"
                 "lecture" "gush")
                (:s agent :to recipient :about topic) (:s agent :about topic)
                (:s agent)))

(define-mixin-category lecture-37.11-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.topic-s_ing lecture-37.11-1)
  :realization (:verb ("comment" "elaborate") (:s agent :about topic)))

(define-mixin-category lecture-37.11-2
  :specializes subcategorization-pattern
  :mixins (np-v-pp.topic np-v-pp.topic-s_ing lecture-37.11)
  :realization (:verb ("dwell") (:s agent :on topic) (:s agent :about topic)))

(define-mixin-category let-64.2
  :specializes subcategorization-pattern
  :mixins (np-v-np-s with-agent with-beneficiary with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("let") (:s agent :io beneficiary :o theme)))

(define-mixin-category light_emission-43.1
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.location np.location-v-pp.theme there-v-np-pp.location
           pp.location-there-v-np np-v-np.theme with-theme has-location
           with-agent)
  :binds ((sparser::agent (:or (pronoun physical-agent)))
          (sparser::location location) (sparser::theme physical-agent))
  :realization (:verb
                ("twinkle" "sparkle" "shine" "shimmer" "scintillate"
                 "incandesce" "glow" "glitter" "glisten" "glint" "glimmer"
                 "gleam" "glare" "fluoresce" "flicker" "flash" "flare" "flame"
                 "burn" "blink" "blaze" "beam")
                (:s agent :o theme) (:loc location :o theme)
                (:o theme :loc location) (:s location :with theme)
                (:s theme :loc location) (:s theme)))

(define-mixin-category limit-76
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-s_ing np-v-np-pp.goal np-v-np-s_inf with-cause
           with-patient with-goal)
  :binds ((sparser::patient (:or physical-agent company)))
  :realization (:verb
                ("constrain" "restrain" "restrict" "reduce" "limit" "confine")
                (:s cause :io patient :oc_to_inf goal)
                (:s cause :o patient :to goal) (:s cause :o patient)))

(define-mixin-category linger-53.1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.location np-v-pp.theme with-agent has-location with-theme)
  :binds ((sparser::location location) (sparser::agent physical-agent))
  :realization (:verb
                ("tarry" "putter" "procrastinate" "potter" "pause" "loiter"
                 "loaf" "linger" "hesitate" "equivocate" "dither" "dawdle"
                 "dally")
                (:s agent :over theme) (:s agent :loc location)))

(define-mixin-category linger-53.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np linger-53.1)
  :realization (:verb ("stall" "scruple" "delay") (:s agent :o theme)))

(define-mixin-category lodge-46
  :specializes subcategorization-pattern
  :mixins (np-v-pp.location np-v-adv with-theme has-location)
  :binds ((sparser::location location) (sparser::theme physical-agent))
  :realization (:verb
                ("stay" "stop" ("stay" :prep "over") "squat"
                 ("sleep" :prep "over") "shelter" ("shack" :prep "up") "settle"
                 "room" "reside" "quarter" "overnight" "lodge" "live" "guest"
                 "dwell" "camp" "bunk" "board" "bivouac" "barrack")
                (:s theme :l location)))

(define-mixin-category long-32.2
  :specializes subcategorization-pattern
  :mixins (np-v-s_inf with-instrument with-theme)
  :binds ((sparser::instrument object))
  :realization (:verb nil (:s instrument :to-comp theme)))

(define-mixin-category long-32.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.theme long-32.2)
  :realization (:verb
                ("yearn" "wish" "thirst" "pray" "pine" "lust" "long" "itch"
                 "hunger" "hope" "hanker" "fall" "die" "crave" "ache")
                (:s instrument :for theme)))

(define-mixin-category long-32.2-2
  :specializes subcategorization-pattern
  :mixins (np-v-pp.theme long-32.2)
  :realization (:verb ("yearn" "thirst" "lust" "hanker")
                (:s instrument :after theme)))

(define-mixin-category lure-59.3
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-s_ing np-v-np-pp.result with-agent with-patient
           predication)
  :binds ((sparser::predicate predicate)
          (sparser::patient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                (("win" :prep "over") "sweet-talk" "talk" "soothe" "seduce"
                 "lure" "inveigle" "flatter" "entice" "draw" "coerce" "coax"
                 "cajole" "bewitch" "attract" "allure")
                (:s agent :o patient :c predicate)
                (:s agent :o patient :into predicate) (:s agent :o patient)))

(define-mixin-category manner_speaking-37.3
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.recipient np-v-pp.topic np-v-np np-v-s-quote
           np-v-np-pp.recipient np-v-that-s np-v-how-s_inf np-v-s_inf
           np-v-pp.recipient-that-s np-v-pp.recipient-how-s_inf
           np-v-pp.recipient-s_inf np-v-pp.recipient-s-quote with-agent
           with-topic with-recipient)
  :binds ((sparser::recipient (:or physical-agent company))
          (sparser::topic speech-act)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("hum" "gurgle" "blare" "yodel" "yelp" "yell" "yap" "yammer"
                 "whoop" "witter" "whistle" "whisper" "whine" "whimper"
                 "wheeze" "warble" "wail" "vociferate" "twitter" "twang"
                 "trumpet" "trill" "tisk" "thunder" "stutter" "stemmer"
                 "stammer" "squeal" "squeak" "squawk" "squall" "splutter"
                 "snuffle" "snivel" "snarl" "snap" "smile" "smatter" "sing"
                 "sigh" "simper" "sibilate" "shriek" "shout" "screech" "scream"
                 "rumble" "roar" "rasp" "rant" "rage" "quaver" "purr" "prattle"
                 "pant" "natter" "nasal" "mutter" "murmur" "mumble" "moan"
                 "mewl" "lisp" "lilt" "keen" "jabber" "howl" "hoot" "holler"
                 "hiss" "grunt" "grumble" "growl" "groan" "gibber" "gasp"
                 "gabble" "drone" "drawl" "cry" "crow" "croon" "croak" "coo"
                 "cluck" "chuckle" "chortle" "chirp" "chatter" "chant" "carol"
                 "call" "cackle" "bluster" "burble" "bray" "boom" "blubber"
                 "bleat" "bellow" "bawl" "bark" "babble")
                (:s agent :dest_dir recipient :o topic)
                (:s agent :for recipient :oc_to_inf topic)
                (:s agent :dest_dir recipient :oc_to_inf topic)
                (:s agent :dest_dir recipient :wh_inf topic)
                (:s agent :dest_dir recipient :thatcomp topic)
                (:s agent :ac_to_inf topic) (:s agent :wh_inf topic)
                (:s agent :thatcomp topic)
                (:s agent :o topic :dest_dir recipient) (:s agent :o topic)
                (:s agent :about topic) (:s agent :dest_dir recipient)
                (:s agent)))

(define-mixin-category marry-36.2
  :specializes subcategorization-pattern
  :mixins (np-v np-v-np with-agent with-agent)
  :binds ((sparser::agent physical-agent) (sparser::agent physical-agent))
  :realization (:verb
                ("pet" "nuzzle" "neck" "marry" "kiss" "hug" "embrace" "divorce"
                 "date" "cuddle" "court")
                (:s agent :o agent) (:s agent)))

(define-mixin-category marvel-31.3
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.stimulus with-experiencer with-stimulus)
  :binds ((sparser::experiencer physical-agent))
  :realization (:verb
                ("react" "sorrow" "triumph" "seethe" "salivate" "ruminate"
                 "reflect" "puzzle" "obsess" "muse" "mope" "hunger"
                 "hallucinate" "gloat" "delight" "anguish" "anger" "agonize"
                 "groove" "weary" "tire" "disapprove" "despair" "beware"
                 "approve" "wallow" "revel" "rejoice" "luxuriate" "glory"
                 "exult" "bask" "suffer" "hurt" "ache" "weep" "mourn" "grieve"
                 "feel" "fear" "cry" "care" "bleed" ("lose" :prep "it")
                 ("go" :prep "ballistic") ("go" :prep "apeshit")
                 ("freak" :prep "out") ("flip" :prep "out") "worry" "sulk"
                 "stress" "stew" "moon" "mind" "fret" "bother" "chafe" "wonder"
                 "thrill" "swoon" "start" "sicken" "sadden" "rage" "marvel"
                 "madden" "gladden" "fume" "enthuse" "cringe" "cheer" "die")
                (:s experiencer :nil stimulus) (:s experiencer)))

(define-mixin-category masquerade-29.6
  :specializes subcategorization-pattern
  :mixins (np-v-pp.attribute with-agent with-attribute)
  :binds ((sparser::agent physical-agent))
  :realization (:verb
                ("rank" "qualify" "officiate" "masquerade" "function" "count"
                 "behave")
                (:s agent :o attribute)))

(define-mixin-category masquerade-29.6-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.attribute masquerade-29.6)
  :realization (:verb ("behave" "act") (:s agent :o attribute)))

(define-mixin-category masquerade-29.6-2
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-pp.attribute masquerade-29.6)
  :realization (:verb ("pose" "serve") (:s agent :in attribute)
                (:s agent :o attribute)))

(define-mixin-category matter-91
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.experiencer it-v-pp.experiencer-that-s it-v-that-s
           that-s.stimulus-v with-experiencer with-stimulus)
  :binds ((sparser::experiencer (:and/or physical-agent company)))
  :realization (:verb ("count" "matter") (:s stimulus) (:thatcomp stimulus)
                (:to experiencer :thatcomp stimulus)
                (:s stimulus :to experiencer)))

(define-mixin-category meander-47.7
  :specializes subcategorization-pattern
  :mixins (np-v-pp.location pp.location-v-np there-v-pp-np there-v-np-pp
           has-location with-theme)
  :binds ((sparser::location physical))
  :realization (:verb
                ("zig" "zag" "veer" "range" "wind" "weave" "wander" "tumble"
                 "sweep" "stretch" "straggle" "skirt" "round" "pass" "mount"
                 "lance" "go" "fall" "emerge" "edge" "dive" "cut" "cross"
                 "crest" "crawl" "cascade" "angle")
                (:o theme :path location) (:path location :o theme)
                (:s theme :path location)))

(define-mixin-category meander-47.7-1
  :specializes subcategorization-pattern
  :mixins (np-v meander-47.7)
  :realization (:verb
                ("zigzag" "swerve" "undulate" "twist" "turn" "snake" "slant"
                 "run" "rise" "plunge" "plummit" "meander" "drop" "dip"
                 "descend" "crisscross" "converge" "climb" "bend" "ascend")
                (:s theme)))

(define-mixin-category meet-36.3
  :specializes subcategorization-pattern
  :mixins (with-agent with-agent)
  :binds ((sparser::agent physical-agent) (sparser::agent physical-agent))
  :realization (:verb nil))

(define-mixin-category meet-36.3-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.co-agent np-v-np np-v meet-36.3)
  :realization (:verb
                ("visit" "reunite" "remonstrate" "play" "meet" "deliberate"
                 "consult")
                (:s agent) (:s agent :o agent) (:s agent :with agent)))

(define-mixin-category meet-36.3-2
  :specializes subcategorization-pattern
  :mixins (np-v-pp.co-agent np-v-np np-v meet-36.3)
  :realization (:verb ("fight" "debate" "box" "battle") (:s agent)
                (:s agent :o agent) (:s agent :with agent)))

(define-mixin-category mine-10.9
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.initial_location with-agent with-theme
           with-source with-destination)
  :binds ((sparser::destination location) (sparser::source location)
          (sparser::theme physical)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("quarry" "mine") (:s agent :o theme :src source)
                (:s agent :o theme)))

(define-mixin-category mix-22.1
  :specializes subcategorization-pattern
  :mixins (with-agent with-patient with-co-patient)
  :binds ((sparser::co-patient physical) (sparser::patient physical))
  :realization (:verb nil))

(define-mixin-category mix-22.1-1
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np-pp.co-patient np-v-np np-v-np-np-together
           np-v-pp.co-patient np-v-advp-middle-pp np-v-advp-middle
           np-np-v-advp-middle-together mix-22.1)
  :realization (:verb
                ("cream" "tumble" "scramble" "intermix" "consolidate" "admix")
                (:s patient :m adverb)
                (:s patient :m adverb :with co-patient :into co-patient :to
                 co-patient)
                (:s patient :with co-patient :into co-patient :to co-patient)
                (:s agent :plural patient)
                (:s agent :o patient :with co-patient :into co-patient :to
                 co-patient)))

(define-mixin-category mix-22.1-1-1
  :specializes subcategorization-pattern
  :mixins (np-v np-np-v-together mix-22.1-1)
  :realization (:verb
                ("recombine" "mix" "mingle" "merge" "meld" "fuse" "decoct"
                 "commingle" "compound" "combine" "blend")
                (:s patient)))

(define-mixin-category mix-22.1-2
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np-pp.co-patient np-v-np np-v-np-together
           np-v-advp-middle-pp np-v-advp-middle mix-22.1)
  :realization (:verb ("tie" "add") (:s patient :m adverb)
                (:s patient :m adverb :with co-patient :into co-patient :to
                 co-patient)
                (:s agent :plural patient)
                (:s agent :o patient :with co-patient :into co-patient :to
                 co-patient)))

(define-mixin-category mix-22.1-2-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.patient np-v np-v-together mix-22.1-2)
  :realization (:verb
                ("unite" "rejoin" "network" "pool" "pair" "link" "join"
                 "connect")
                (:s patient)
                (:s patient :with co-patient :into co-patient :to co-patient)))

(define-mixin-category modes_of_being_with_motion-47.3
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.location there-v-np pp.location-v-np np-v-np.theme
           with-agent with-theme has-location)
  :binds ((sparser::location (:and/or location region))
          (sparser::theme physical))
  :realization (:verb
                ("roil" "writhe" "worm" "wobble" "wiggle" "waver" "wave" "waft"
                 "vibrate" "vacillate" "undulate" "tremble" "totter" "throb"
                 "teeter" "swirl" "sway" "swag" "stir" "shake" "rotate" "rock"
                 "revolve" "recirculate" "quiver" "quake" "pulse" "pulsate"
                 "oscillate" "joggle" "jiggle" "hover" "flutter" "float" "flap"
                 "falter" "eddy" "drift" "dance" "creep" "circulate" "bow"
                 "bob")
                (:s agent :o theme) (:loc location :o theme) (:definite theme)
                (:s theme :loc location) (:s theme)))

(define-mixin-category multiply-108
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-theme with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("count" "tally" "add" "sum") (:s agent :plural theme)))

(define-mixin-category multiply-108-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.co-theme multiply-108)
  :realization (:verb ("divide" "multiply") (:s agent :o theme :by theme)))

(define-mixin-category multiply-108-2
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.co-theme multiply-108)
  :realization (:verb
                ("subtract" "extrapolate" "interpolate" ("factor" :prep "out")
                 "deduct")
                (:s agent :o theme :from theme)))

(define-mixin-category multiply-108-3
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.co-theme multiply-108)
  :realization (:verb ("average") (:s agent :o theme :over theme)))

(define-mixin-category murder-42.1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.instrument with-agent with-patient
           with-instrument)
  :binds ((sparser::instrument object) (sparser::patient physical-agent)
          (sparser::agent physical-agent))
  :realization (:verb
                ("slay" "slaughter" "off" "murder" "massacre" "lynch"
                 "liquidate" "immolate" "exterminate" "execute" "euthanize"
                 "eliminate" "dispatch" "butcher" "bushwhack" "assassinate"
                 "annihilate")
                (:s agent :o patient :with instrument) (:s agent :o patient)))

(define-mixin-category murder-42.1-1
  :specializes subcategorization-pattern
  :mixins (np.instrument-v-np with-instrument murder-42.1)
  :binds ((sparser::instrument physical))
  :realization (:verb ("kill-off" "kill") (:s instrument :o patient)))

(define-mixin-category neglect-75.1
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("overlook" "overleap" ("leave" :prep "out") "ignore" "forego"
                 "forgo" "disregard")
                (:s agent :o theme)))

(define-mixin-category neglect-75.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-s_inf neglect-75.1)
  :realization (:verb ("omit" "neglect" "fail") (:s agent :to-comp theme)))

(define-mixin-category nonvehicle-51.4.2
  :specializes subcategorization-pattern
  :mixins (np.agent-v np-v-pp.location np-v-np-pp.location np-v-np
           np-v-np.location with-agent with-theme with-path has-location)
  :binds ((sparser::location physical) (sparser::path physical)
          (sparser::theme motor-vehicle) (sparser::agent physical-agent))
  :realization (:verb ("row" "ride" "pedal" "paddle" "oar")
                (:s agent :l location) (:s agent :o theme)
                (:s agent :o theme :path path) (:s agent :path path) (:s agent)))

(define-mixin-category nonvehicle-51.4.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp nonvehicle-51.4.2)
  :realization (:verb ("wing" "tack" "sail" "navigate" "fly" "drive" "cruise")
                (:s theme :o path)))

(define-mixin-category nonverbal_expression-40.2
  :specializes subcategorization-pattern
  :mixins (np-v np-v-np np-v-pp.theme np-v-pp.recipient np-v-pp.stimulus
           with-agent with-theme with-recipient with-stimulus)
  :binds ((sparser::recipient physical-agent) (sparser::agent physical-agent))
  :realization (:verb
                ("hem" "yawn" "whistle" "weep" "titter" "sob" "snort" "snore"
                 "snivel" "snigger" "sniff" "snicker" "sneer" "smirk" "smile"
                 "simper" "sigh" "scowl" "scoff" "pout" "moan" "lour" "laugh"
                 "jeer" "howl" "guffaw" "growl" "groan" "grin" "grimace"
                 "goggle" "glower" "glare" "giggle" "gawk" "gasp" "gape"
                 "frown" "cry" "cough" "chuckle" "chortle" "cackle" "blubber"
                 "beam")
                (:s agent :dest_dir stimulus) (:s agent :dest_dir recipient)
                (:s agent :in theme) (:s agent :o theme) (:s agent)))

(define-mixin-category obtain-13.5.2
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.source with-agent with-theme with-source)
  :binds ((sparser::source physical)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("hijack" "arrogate" "subselect" "source" "snatch" "select"
                 "seize" "retrieve" "regain" "recover" "recoup" "receive"
                 "make" "inherit" "grab" "exact" "collect" "commandeer" "cadge"
                 "borrow" "appropriate" "accumulate" "accrue" "accept")
                (:s agent :o theme :from source) (:s agent :o theme)))

(define-mixin-category obtain-13.5.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.asset np.asset-v-np with-extent obtain-13.5.2)
  :binds ((sparser::extent currency))
  :realization (:verb ("purchase" "obtain" "acquire") (:s extent :o theme)
                (:s agent :o theme :for extent)))

(define-mixin-category occur-48.3
  :specializes subcategorization-pattern
  :mixins (np-v there-v-np np-v-pp with-theme has-location)
  :binds ((sparser::location location))
  :realization (:verb (("take" :prep "place") "recur" "fall" ("go" :prep "on"))
                (:s theme :|| location) (:o theme) (:s theme)))

(define-mixin-category occur-48.3-1
  :specializes subcategorization-pattern
  :mixins (it-v-that-s occur-48.3)
  :realization (:verb
                ("transpire" "result" "pass" "occur" "happen" "follow"
                 "eventuate" "ensue" "develop" "chance" "befall")
                (:thatcomp theme)))

(define-mixin-category occur-48.3-2
  :specializes subcategorization-pattern
  :mixins (np-v-adv occur-48.3)
  :realization (:verb
                (("come" :prep "off") ("go" :prep "down") ("go" :prep "off")
                 ("go" :prep "over") "go")
                (:s theme)))

(define-mixin-category orbit-51.9.2
  :specializes subcategorization-pattern
  :mixins (np-v-pp.location with-theme with-instrument)
  :binds ((sparser::instrument object))
  :realization (:verb ("twirl" "rotate" "revolve" "orbit")
                (:s theme :path instrument)))

(define-mixin-category order-58.3
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-s with-agent with-patient with-result)
  :binds ((sparser::patient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("mandate" "demand" "declare" "announce")
                (:s agent :thatcomp result) (:s agent :o result)))

(define-mixin-category order-58.3-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-s_ing order-58.3)
  :realization (:verb ("require" "order" "commission" "command" "authorize")
                (:s agent :io patient :oc_to_inf result)))

(define-mixin-category orphan-29.7
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-theme)
  :binds ((sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb
                ("widow" "whore" "recruit" "pauper" "outlaw" "orphan" "martyr"
                 "knight" "cuckold" "cripple" "beggar" "apprentice")
                (:s agent :o theme)))

(define-mixin-category other_cos-45.4
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np.patient np-v-np-pp.instrument np.patient-v
           np-v-adv-middle np.instrument-v-np with-agent with-patient
           with-instrument with-result)
  :binds ((sparser::instrument object))
  :realization (:verb
                ("yellow" "worsen" "widen" "wizen" "whiten" "wet" "westernize"
                 "weaken" "warm" "waken" "wake" "vulcanize" "volatilize"
                 "vitrify" "vibrate" "vaporize" "upload" "unionize" "ulcerate"
                 "turn-off" "turn-on" "triple" "trip" "treble" "tranquilize"
                 "toughen" "topple" "tone" "tire" "tighten" "thin" "thicken"
                 "tense" "tenderize" "taper" "tan" "tame" "sweeten" "sunburn"
                 "submerge" "strengthen" "strangulate" "stratify" "stiffen"
                 "steepen" "steady" "standardize" "stabilize" "sprout" "souse"
                 "sour" "solidify" "soften" "sober" "soak" "smoothen" "smooth"
                 "smarten" "slow" "slim" "sink" "silver" "silicify" "sicken"
                 "shut" "shush" "shorten" "short-circuit" "short" "sharpen"
                 "sensitize" "section" "sear" "scorch" "saponify" "roughen"
                 "root" "ripen" "revive" "reverse" "resuscitate" "reproduce"
                 "replicate" "reopen" "renew" "rekindle" "reform" "refine"
                 "redouble" "redden" "rarefy" "quieten" "quiet" "quicken"
                 "quadruple" "purple" "purify" "puncture" "propagate"
                 "proliferate" "privatize" "polymerize" "polarize" "plump"
                 "petrify" "pale" "ossify" "open" "occlude" "normalize"
                 "neutralize" "naturalize" "nationalize" "narrow" "mummify"
                 "multiply" "moisten" "modulate" "modify" "modernize"
                 "moderate" "mobilize" "mitigate" "metabolize" "mellow"
                 "mature" "macerate" "loosen" "loose" "liven" "liquify"
                 "liquefy" "lignify" "liberalize" "levitate" "level" "lessen"
                 "lengthen" "laminate" "kindle" "ionize" "internationalize"
                 "intensify" "industrialize" "indurate" "improve" "ignite"
                 "hydrate" "hydrolize" "hybridize" "hush" "hellenize"
                 "heighten" "heat" "heal" "hasten" "harmonize" "harden" "grow"
                 "gray" "glutenize" "globalize" "gladden" "germanize"
                 "gentrify" "gelatinize" "gasify" "fuse" "fructify" "frost"
                 "freshen" "freckle" "fray" "fossilize" "fluff" "flood"
                 "flatten" "firm" "fill" "feminize" "federate" "fatten" "fade"
                 "explode" "expand" "exfoliate" "even" "evaporate" "escalate"
                 "equilibrate" "equalize" "enlarge" "energize" "emulsify"
                 "empty" "emaciate" "effeminate" "ease" "dull" "drain"
                 "downshift" "double" "divide" "diversify" "dissipate"
                 "disperse" "disintegrate" "discolor" "disband" "dirty" "dim"
                 "dilute" "dilate" "diffuse" "devalue" "detonate" "destabilize"
                 "desiccate" "derail" "depressurize" "democratize"
                 "demagnetize" "dehydrate" "degrade" "degenerate" "defrost"
                 "deflect" "deepen" "decentralize" "decelerate" "de-escalate"
                 "darken" "dampen" "curdle" "crystallize" "crisp" "crimson"
                 "corrupt" "corrugate" "cool" "congeal" "condense" "combust"
                 "collect" "collapse" "coarsen" "coagulate" "cloud" "close"
                 "clog" "clear" "clean" "clarify" "civilize" "chill"
                 ("cheer" :prep "up") "cheapen" "char" "change" "centralize"
                 "carbonize" "capsize" "calcify" "burst" "burn" "broaden"
                 "brighten" "bolshevize" "blur" "blunt" "bleach" "bisect"
                 "bifurcate" "beautify" "blacken" "balance" "augment"
                 "attenuate" "anglicize" "amplify" "americanize" "ameliorate"
                 "alter" "alkalize" "alkalify" "air" "agglomerate" "age"
                 "activate" "acidify" "acetify" "accelerate" "abridge" "abrade"
                 "abbreviate" "abate")
                (:s instrument :o patient) (:s patient :m adverb) (:s patient)
                (:s agent :o patient :with instrument) (:s agent :o patient)))

(define-mixin-category other_cos-45.4-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-adj other_cos-45.4)
  :realization (:verb ("thaw" "set" "melt" "freeze" "dry" "awaken" "awake")
                (:s patient :o result)))

(define-mixin-category overstate-37.12
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("glorify" "tout" "overstress" "overrate" "overemphasize"
                 "amplify" "magnify" "hyperbolize" "overdraw" "overstate")
                (:s agent :o theme)))

(define-mixin-category own-100.1
  :specializes subcategorization-pattern
  :mixins (np-v-np with-instrument with-theme)
  :binds ((sparser::instrument (:or physical-agent company)))
  :realization (:verb ("possess" "own" "hold" "have") (:s instrument :o theme)))

(define-mixin-category pain-40.8.1
  :specializes subcategorization-pattern
  :mixins (np-v np-v-np.experiencer np-v-pp.stimulus with-experiencer
           with-patient with-stimulus)
  :binds ((sparser::experiencer physical-agent))
  :realization (:verb ("pain" "kill" "itch" "hurt" "burn" "bother" "ail")
                (:s patient :from stimulus) (:s patient :o experiencer)
                (:s patient)))

(define-mixin-category patent-101
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("impersonate" "imitate" "evidence" "verify" "accredit"
                 "credential" "certify" "register" "license" "trademark"
                 "patent" "copyright")
                (:s agent :o theme)))

(define-mixin-category pay-68
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.theme np-v-np with-agent with-extent with-theme)
  :binds ((sparser::extent currency)
          (sparser::agent (:and/or physical-agent company)))
  :realization (:verb ("serve" "waste" "squander" "spend") (:s agent :o extent)
                (:s agent :o extent :for theme)))

(define-mixin-category pay-68-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-np-pp.theme np-v-np-np with-recipient pay-68)
  :realization (:verb ("tithe" "repay" "pay")
                (:s agent :io recipient :o extent)
                (:s agent :io recipient :o extent :for theme)))

(define-mixin-category peer-30.3
  :specializes subcategorization-pattern
  :mixins (np-v-pp.theme with-agent with-theme)
  :binds ((sparser::agent physical-agent))
  :realization (:verb
                ("stare" "squint" "snoop" "sniff" "peer" "peep" "peek" "ogle"
                 "look" "listen" "leer" "goggle" "glare" "glance" "gaze" "gawk"
                 "gape" "eavesdrop" "check" "attend")
                (:s agent :spatial theme)))

(define-mixin-category pelt-17.2
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.theme np-v-np with-agent with-theme with-source
           with-destination)
  :binds ((sparser::destination physical) (sparser::source physical)
          (sparser::theme physical))
  :realization (:verb
                ("stone" "shower" "shell" "pepperspray" "pelt" "buffet"
                 "bombard")
                (:s agent :o destination) (:s agent :o destination :with theme)))

(define-mixin-category performance-26.7
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v np-v-np-pp.beneficiary with-agent with-theme
           with-beneficiary)
  :binds ((sparser::beneficiary physical-agent) (sparser::agent physical-agent))
  :realization (:verb
                ("vocalize" "rap" "perform" "model" "intone" "improvise" "heel"
                 "enact" "direct" "chant" "belt")
                (:s agent :o theme :for beneficiary) (:s agent)
                (:s agent :o theme)))

(define-mixin-category performance-26.7-1
  :specializes subcategorization-pattern
  :mixins (np-v-np.beneficiary-np performance-26.7)
  :realization (:verb
                ("whistle" "sing" "stage" "replay" "recite" "play" "hum"
                 "dance")
                (:s agent :io beneficiary :o theme)))

(define-mixin-category pit-10.7
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-source)
  :binds ((sparser::source physical) (sparser::agent physical-agent))
  :realization (:verb
                ("zest" "worm" "wind" "weed" "vein" "tassel" "tail" "string"
                 "stone" "stem" "stalk" "snail" "skin" "shuck" "shell" "seed"
                 "scalp" "scale" "rind" "pulp" "poll" "pod" "pith" "pit" "pip"
                 "pinion" "peel" "milk" "louse" "lint" "husk" "hull" "head"
                 "gut" "gill" "core" "burl" "bone" "beard" "bark")
                (:s agent :o source)))

(define-mixin-category play-114.2
  :specializes subcategorization-pattern
  :mixins (np-v-pp.co-agent np-v with-agent with-agent)
  :binds ((sparser::agent (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("recreate" "frolic") (:s agent) (:s agent :with agent)))

(define-mixin-category play-114.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.theme np-v-np-pp.co-agent np-v-np with-theme play-114.2)
  :realization (:verb ("play") (:s agent :o theme)
                (:s agent :o theme :with agent) (:s agent :o agent)
                (:s agent :with theme)))

(define-mixin-category pocket-9.10
  :specializes subcategorization-pattern
  :mixins (np-v-np.theme np-v-np-pp.destination with-agent with-theme
           with-source with-destination)
  :binds ((sparser::destination physical) (sparser::source physical)
          (sparser::theme physical) (sparser::agent (:or nil company)))
  :realization (:verb
                ("wharf" "warehouse" "tree" "trap" "tin" "tassel" "string"
                 "spool" "spit" "spindle" "snare" "skewer" "shoulder" "shelve"
                 "sheathe" "pot" "pocket" "pillory" "pen" "pasture" "kennel"
                 "jug" "jar" "jail" "imprison" "house" "hangar" "garage" "fork"
                 "file" "cup" "crate" "corral" "coop" "cloister" "cellar"
                 "case" "can" "cage" "box" "bottle" "bin" "billet" "bench"
                 "bed" "beach" "barrack" "bank" "bag" "archive")
                (:s agent :o theme :in destination :on destination :under
                 destination)
                (:s agent :o theme)))

(define-mixin-category pocket-9.10-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.destination np-v np-v-advp pocket-9.10)
  :realization (:verb
                ("stable" "lodge" "ground" "moor" "land" "drydock" "dock"
                 "berth")
                (:s theme :o destination) (:s theme)
                (:s theme :in destination :on destination :under destination)))

(define-mixin-category poison-42.2
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-adj np-v-np-pp.result np-v-np-pp.instrument
           with-agent with-patient with-instrument with-result)
  :binds ((sparser::instrument object) (sparser::patient physical-agent)
          (sparser::agent physical-agent))
  :realization (:verb
                ("throttle" "suffocate" "strangulate" "strangle" "stone" "stab"
                 "smother" "shoot" "poison" "pip" "knife" "impale" "hang"
                 "garrotte" "gas" "fry" "evicerate" "electrocute" "drown"
                 "disembowel" "decapitate" "dart" "crucify" "bullet" "behead"
                 "asphyxiate")
                (:s agent :o patient :with instrument)
                (:s agent :o patient :to result :into result)
                (:s agent :io patient :o result) (:s agent :o patient)))

(define-mixin-category poke-19
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.instrument np-v-np-pp.patient np.instrument-v-np
           with-agent with-patient with-instrument)
  :binds ((sparser::patient physical)
          (sparser::agent (:or physical-agent physical-object)))
  :realization (:verb ("prick" "pierce") (:s instrument :o patient)
                (:s agent :o instrument :into patient)
                (:s agent :o instrument :through patient)
                (:s agent :o patient :with instrument) (:s agent :o patient)))

(define-mixin-category poke-19-1
  :specializes subcategorization-pattern
  :mixins (np-v-np.instrument-pp.theme np-v-pp.theme
           np-v-pp.theme-pp.instrument np-v-pp.patient
           np-v-pp.patient-pp.instrument with-theme poke-19)
  :binds ((sparser::theme physical))
  :realization (:verb ("stab") (:s agent :o patient :with instrument)
                (:s agent :o patient) (:s agent :o theme :with instrument)
                (:s agent :o theme) (:s agent :io instrument :o theme)))

(define-mixin-category poke-19-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np.theme np-v-np.theme-pp.instsrument np.instrument-v-np.theme
           poke-19-1)
  :realization (:verb ("stick" "poke" "jab" "dig") (:s instrument :o theme)
                (:s agent :o theme :with instrument) (:s agent :o theme)))

(define-mixin-category pour-9.5
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.destination np-v-np-advp np-v-pp.destination
           np-v-np-pp.initial_location-pp.destination
           np-v-pp.initial_location-pp.destination with-agent with-theme
           with-source with-destination)
  :binds ((sparser::destination (:and/or location region))
          (sparser::source (:and/or location region))
          (sparser::theme (:or nil physical collection))
          (sparser::agent physical-agent))
  :realization (:verb
                ("trickle" "spill" "spew" "slosh" "slop" "pour" "drip"
                 "dribble")
                (:s theme :src source :dest_conf destination)
                (:s agent :o theme :src source :dest_conf destination)
                (:s theme :path destination)
                (:s agent :io theme :adv_loc destination)
                (:s agent :o theme :path destination)))

(define-mixin-category preparing-26.3
  :specializes subcategorization-pattern
  :mixins (with-agent with-beneficiary)
  :binds ((sparser::beneficiary physical-agent)
          (sparser::agent (:or physical-agent physical-object)))
  :realization (:verb nil))

(define-mixin-category preparing-26.3-1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np.beneficiary-np np-v-np-pp.beneficiary with-product
           with-material preparing-26.3)
  :binds ((sparser::material physical) (sparser::product physical))
  :realization (:verb
                ("cultivate" "toss" "run" "roll" "ready" "prepare" "mix"
                 "light" "kindle" "fix" ("cook" :prep "up") "cook" "clear"
                 "brew" "blend" "bake")
                (:s agent :o product :for beneficiary)
                (:s agent :io beneficiary :o product)
                (:s agent :o product :from material :out_of material :with
                 material)
                (:s agent :o product)))

(define-mixin-category preparing-26.3-2
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np.beneficiary-np np-v-np-pp.beneficiary with-patient
           preparing-26.3)
  :binds ((sparser::patient physical))
  :realization (:verb
                ("weld" "wash" "toast" "softboil" "set" "scramble" "roast"
                 "pour" "poach" "overbake" "microwave" "iron" "hardboil"
                 "grill" "fry" "clean" "broil" "boil" "barbecue" "barbeque")
                (:s agent :o patient :for beneficiary)
                (:s agent :io beneficiary :o patient) (:s agent :o patient)))

(define-mixin-category price-54.4
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.value with-agent with-theme with-path)
  :binds ((sparser::path currency) (sparser::theme physical)
          (sparser::agent physical-agent))
  :realization (:verb
                ("value" "reappraise" "rate" "price" "peg" "overestimate"
                 "meter" "gauge" "fix" "estimate" "calibrate" "auction"
                 "assess" "approximate" "appraise")
                (:s agent :o theme :at path) (:s agent :o theme)))

(define-mixin-category promise-37.13
  :specializes subcategorization-pattern
  :mixins (np-v-np-np np-v-np-that-s np-v-s_ing np-v-pp.recipient-that-s
           np-v-that-s with-agent with-recipient with-topic)
  :binds ((sparser::recipient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("ascertain" "promise" "guarantee" "assure")
                (:s agent :thatcomp topic)
                (:s agent :to recipient :thatcomp topic)
                (:s agent :poss_ing topic)
                (:s agent :io recipient :thatcomp topic)
                (:s agent :io recipient :o topic)))

(define-mixin-category promote-102
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-s_ing with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("underscore" "emphasize" "invite" "encourage" "further"
                 "boost" "advance" "promote")
                (:s agent :poss_ing theme) (:s agent :ac_ing theme)
                (:s agent :o theme)))

(define-mixin-category pronounce-29.3.1
  :specializes subcategorization-pattern
  :mixins (np-v-np-np np-v-np-pp.attribute np-v-np-advp with-agent with-theme
           with-attribute)
  :binds ((sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb ("spell" "say" "pronounce")
                (:s agent :io theme :o attribute)
                (:s agent :o theme :with attribute :in attribute)))

(define-mixin-category prosecute-33.2
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.theme with-agent with-patient with-theme)
  :binds ((sparser::agent (:or nil company)))
  :realization (:verb
                ("sanction" "report" "penalize" "nab" "impeach" "collar" "bust"
                 "book")
                (:s agent :o patient :for theme) (:s agent :o patient)))

(define-mixin-category prosecute-33.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.attribute np-v-np-pp.theme-pp.attribute
           np-v-np-pp.attribute-pp.theme with-attribute prosecute-33.2)
  :realization (:verb
                ("try" "punish" "prosecute" "persecute" "indict" "arrest")
                (:s agent :as attribute :o patient)
                (:s agent :o patient :as attribute)))

(define-mixin-category push-12
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-theme with-path with-result)
  :binds ((sparser::theme physical) (sparser::agent physical-agent))
  :realization (:verb ("heave") (:s agent :o theme)))

(define-mixin-category push-12-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-adjp-result np-v-pp-conative push-12)
  :realization (:verb ("yank" "tug" "pull" "jerk")
                (:s agent :at theme :against theme :on theme)
                (:s agent :io theme :o result)))

(define-mixin-category push-12-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp np-v-pp.trajectory push-12-1)
  :realization (:verb
                ("thrust" "squeeze" "shove" "push" "press" "nudge" "jostle")
                (:s agent :dir path) (:s agent)))

(define-mixin-category put-9.1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.destination np-v-np-advp with-agent with-theme
           with-source with-destination)
  :binds ((sparser::destination (:and/or location region))
          (sparser::source location) (sparser::theme physical)
          (sparser::agent physical-agent))
  :realization (:verb
                ("wharf" ("tack" :prep "on") "superimpose" "station" "sling"
                 "situate" "position" "mount" "lodge" "implant" "immerse"
                 "emplace" "arrange")
                (:s agent :io theme :adv_loc destination)
                (:s agent :o theme :loc destination)))

(define-mixin-category put-9.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np put-9.1)
  :realization (:verb
                ("stow" "stash" "reinstall" "plant" "park" "install" "insert"
                 "embed" "deposit" "build-in" "bury" "apply")
                (:s agent :o theme)))

(define-mixin-category put-9.1-2
  :specializes subcategorization-pattern
  :mixins (np-v-pp.destination-np with-theme put-9.1)
  :realization (:verb ("stick" "set" "put" "place")
                (:s agent :on destination :upon destination :o theme)))

(define-mixin-category put_direction-9.4
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.destination np-v-np-advp with-agent with-theme
           with-source with-destination)
  :binds ((sparser::destination (:and/or location region))
          (sparser::source location) (sparser::theme physical)
          (sparser::agent physical-agent))
  :realization (:verb
                ("back" "raise" "lower" "lift" "hoist" "heel" "elevate" "drive"
                 "drop")
                (:s agent :io theme :adv_loc destination)
                (:s agent :o theme :spatial destination) (:s agent :o theme)))

(define-mixin-category put_spatial-9.2
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.destination np-v-np-advp with-agent with-theme
           with-source with-destination)
  :binds ((sparser::destination (:and/or location region))
          (sparser::source location) (sparser::theme physical)
          (sparser::agent physical-agent))
  :realization (:verb
                ("underlay" "tilt" "swing" "suspend" "straddle" "stand"
                 "sprawl" "slope" "sit" "rest" "recline" "project" "prop"
                 "plop" "perch" "open" "nestle" "lean" "lay" "hang" "fly"
                 "flop" "droop" "dangle" "bend" "balance")
                (:s agent :io theme :adv_loc destination)
                (:s agent :o theme :loc destination)))

(define-mixin-category reach-51.8
  :specializes subcategorization-pattern
  :mixins (np-v-np with-theme with-goal)
  :binds ((sparser::theme (:and/or physical company)))
  :realization (:verb ("breast" "make" "hit" "reach") (:s theme :o goal)))

(define-mixin-category rear-26.2.2
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-product)
  :binds ((sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb ("rear" "raise" "nurture" "grow") (:s agent :o patient)))

(define-mixin-category rear-26.2.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np.material-pp.product with-material rear-26.2.2)
  :binds ((sparser::material physical))
  :realization (:verb ("farm" "cultivate") (:s agent :io material :o product)))

(define-mixin-category reciprocate-112
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp with-agent with-theme predication)
  :binds ((sparser::predicate predicate)
          (sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb ("return") (:s agent :io theme :o predicate)
                (:s agent :o theme)))

(define-mixin-category reciprocate-112-1
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp reciprocate-112)
  :realization (:verb ("reciprocate" "answer") (:s agent :o predicate)
                (:s agent)))

(define-mixin-category reflexive_appearance-48.1.2
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.recipient np-v-np with-theme with-agent with-recipient
           reflexive)
  :binds ((sparser::pronoun pronoun) (sparser::recipient physical-agent)
          (sparser::agent physical-agent))
  :realization (:verb
                ("suggest" "show" "shape" "reveal" "recommend" "reassert"
                 "propose" "proffer" "present" "pose" "offer" "manifest"
                 "intrude" "form" "flaunt" "express" "expose" "exhibit"
                 "display" "define" "declare" "assert" "announce")
                (:s theme :o pronoun) (:s agent :o theme :to recipient)
                (:s agent :o theme)))

(define-mixin-category refrain-69
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.theme-s_ing np-v-pp.theme-s with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("forbear" "desist" "abstain" "refrain")
                (:s agent :from theme) (:s agent)))

(define-mixin-category register-54.1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.value with-theme with-path)
  :realization (:verb ("amount" "come") (:s theme :at path :|\|| path :to path)))

(define-mixin-category register-54.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.value with-agent with-attribute register-54.1)
  :binds ((sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb ("mistime" "time") (:s agent :o attribute :at path)
                (:s agent :o theme :at path) (:s agent :o theme)))

(define-mixin-category register-54.1-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np.value register-54.1-1)
  :realization (:verb ("weigh" "total" "register" "read" "measure" "clock")
                (:s theme :o path)))

(define-mixin-category rehearse-26.8
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-s_ing with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("repeat" ("walk" :prep "through"))
                (:s agent :sc_ing theme) (:s agent :o theme)))

(define-mixin-category rehearse-26.8-1
  :specializes subcategorization-pattern
  :mixins (np-v rehearse-26.8)
  :realization (:verb ("rehearse" "practice" "exercise") (:s agent)))

(define-mixin-category reject-77.2
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-s_ing with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("turn-down" "refuse" "rebuff" "decline")
                (:s agent :poss_ing theme) (:s agent :c theme)))

(define-mixin-category reject-77.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-how-s np-v-what-s reject-77.2)
  :realization (:verb
                ("reject" ("pooh" :prep "pooh") "disprefer" "disparage"
                 "dismiss" "discourage")
                (:s agent :what_extract theme) (:s agent :how_extract theme)))

(define-mixin-category relate-86.2
  :specializes subcategorization-pattern
  :mixins (with-theme with-theme)
  :realization (:verb nil))

(define-mixin-category relate-86.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np relate-86.2)
  :realization (:verb
                (("touch" :prep "on") ("bear" :prep "on") "touch" "concern"
                 "involve")
                (:s theme :o theme)))

(define-mixin-category relate-86.2-2
  :specializes subcategorization-pattern
  :mixins (np-v-pp.co-theme relate-86.2)
  :realization (:verb ("relate" "pertain" "refer") (:s theme :to theme)))

(define-mixin-category rely-70
  :specializes subcategorization-pattern
  :mixins (np-v-pp.theme-np-s_ing np-v-pp.theme-s_inf np-v-pp.theme-s_ing
           np-v-pp.theme with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("wager" ("take" :prep "a_chance") "gamble" "bet" "reckon"
                 "figure" "count" "bargain" "bank" "depend" "rely")
                (:s agent :on theme)))

(define-mixin-category remedy-45.7
  :specializes subcategorization-pattern
  :mixins (np-v-np.patient np-v-np-pp.instrument with-agent with-patient
           with-instrument)
  :binds ((sparser::instrument object))
  :realization (:verb
                ("vulgarize" "ventilate" "urbanize" "underfeed" "turn-down"
                 "turn-up" "trivialize" "truncate" "traumatize" "tousle"
                 "tart up" "taiwanize" "tabulate" "sulfurize" "subvert"
                 "streamline" "sterilize" "sovietize" "sinter" "singe"
                 "silence" "shortchange" "sensationalize" "secularize" "revise"
                 "repair" "remedy" "remaster" "regularize" "refract" "redact"
                 "rectify" "reanimate" "raise" "publicize" "prettify"
                 "prejudge" "popularize" "pollard" "pink" "perpetuate"
                 "perfect" "pasteurize" "paralyze" "oxygenate" "overshadow"
                 "obviate" "obscure" "objectify" "nitrify" "nasalize" "mute"
                 "mummify" "muddy" "motorize" "mismanage" "mishandle"
                 "minimize" "miniaturize" "mineralize" "militarize" "medicate"
                 "mechanize" "marginalize" "manure" "light" "iodize" "invert"
                 "inspissate" "inseminate" "incinerate" "inactivate"
                 "immortalize" "ice" "hydrogenate" "humidify" "humanize"
                 "grade" "fortify" "flouridate" "fertilize" "federalize"
                 "fanaticize" "expropriate" "exhume" "exacerbate" "europeanize"
                 "eternize" "eternalize" "enunciate" "enhance" "embrocate"
                 "embitter" "emasculate" "edify" "disorganize" "dislocate"
                 "dispel" "disinter" "disinfect" "dishevel" "disable"
                 "diffract" "desensitize" "desalinate" "demobilize" "dement"
                 "demean" "delineate" "dehumidify" "deconstruct" "debase"
                 "deafen" "cremate" "counteract" "correct" "contextualize"
                 "construct" "constringe" "constipate" "configure"
                 "commercialize" "coif" "circumscribe" "circumcise"
                 "christianize" "chlorinate" "chamfer" "cauterize"
                 "catholicize" "castrate" "carbonify" "capacitate" "bungle"
                 "bring-up" "bring-out" "bowdlerize" "botch" "bloody" "blemish"
                 "blast" "bedew" "bastardize" "backfill" "animate"
                 "anesthetize" "alleviate" "alcoholize" "africanize" "abase")
                (:s agent :o patient :with instrument) (:s agent :o patient)))

(define-mixin-category remedy-45.7-1
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-adv-middle remedy-45.7)
  :realization (:verb
                ("upload" "transplant" "magnify" "magnetize" "lighten"
                 "homogenize" "halve" "extinguish" "domesticate" "conflate"
                 "categorize")
                (:s patient :m adverb)))

(define-mixin-category remove-10.1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.source with-agent with-theme with-source)
  :binds ((sparser::agent (:or nil company)))
  :realization (:verb
                ("prise" "extinguish" "sever" "remove" "evict" "dismiss"
                 "discharge" "oust" "withdraw" "wrench" "winkle" "uproot"
                 ("take" :prep "off") ("take" :prep "out")
                 ("take" :prep "away") "take" "subtract" "strip" "shoo"
                 "separate" "roust" "retract" "render" "ream" "reap" "pull"
                 "pry" "partition" "ostracize" "omit" "lose" "lop" "kill"
                 "extrude" "extract" "extirpate" "expel" "excommunicate"
                 "excise" "eradicate" "eliminate" "eject" "draw" "disengage"
                 "dislodge" "disgorge" "depose" "delete" "deduct" "deburr"
                 "cut-off" "cull" "abstract" "abolish")
                (:s agent :o theme :src source) (:s agent :o theme)))

(define-mixin-category render-29.90
  :specializes subcategorization-pattern
  :mixins (np-v-np-adjp np-v-adjp-np with-cause with-patient with-result)
  :realization (:verb ("leave" "take" "render" "drive")
                (:s cause :io result :o patient)
                (:s cause :io patient :o result)))

(define-mixin-category render-29.90-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-s render-29.90)
  :realization (:verb ("make") (:s cause :io patient :o result)))

(define-mixin-category render-29.90-2
  :specializes subcategorization-pattern
  :mixins (np-v-np-s-inf render-29.90)
  :realization (:verb ("get") (:s cause :io patient :o result)))

(define-mixin-category representation-110.1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.manner with-theme with-theme predication)
  :binds ((sparser::predicate predicate))
  :realization (:verb ("symbolize" "signify" "represent" "mean" "denote" "be")
                (:s theme :o theme :in predicate :|\|| predicate :for predicate
                 :|\|| predicate :to predicate)
                (:s theme :o theme)))

(define-mixin-category require-103
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-for-np-s_inf np-v-that-s predication with-theme)
  :binds ((sparser::predicate predicate))
  :realization (:verb ("take") (:s theme :thatcomp predicate)
                (:s theme :for_comp predicate) (:s theme :o predicate)))

(define-mixin-category require-103-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.source np-v-np-s_inf np-v-s_ing with-source require-103)
  :realization (:verb ("demand" "involve" "require" "necessitate")
                (:s theme :ac_ing predicate) (:s theme :np_to_inf predicate)
                (:s theme :o predicate :from source)))

(define-mixin-category require-103-2
  :specializes subcategorization-pattern
  :mixins (np-v-s_ing require-103)
  :realization (:verb ("need") (:s theme :to-comp predicate)))

(define-mixin-category resign-10.11
  :specializes subcategorization-pattern
  :mixins (np-v with-agent with-source)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb
                (("walk" :prep "out") ("step" :prep "down")
                 ("leave" :prep "office"))
                (:s agent)))

(define-mixin-category resign-10.11-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.source np-v-np with-attribute resign-10.11)
  :realization (:verb
                ("withdraw" ("walk" :prep "out") ("walk" :prep "away") "walk"
                 "retire" "resign")
                (:s agent :o attribute) (:s agent :from source)))

(define-mixin-category resign-10.11-2
  :specializes subcategorization-pattern
  :mixins (np-v-np resign-10.11)
  :realization (:verb
                (("walk" :prep "off") "vacate" "quit" "resign" "renounce"
                 "leave" ("give" :prep "up") "depart" "abdicate")
                (:s agent :o source)))

(define-mixin-category respond-113
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.theme np-v-pp.predicate np-v-pp.theme-pp.predicate
           with-agent with-theme predication)
  :binds ((sparser::predicate predicate)
          (sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb ("retaliate" "respond" "reply" "rebel" "react")
                (:s agent :|to\|against| theme :with predicate)
                (:s agent :with predicate) (:s agent :|to\|against| theme)
                (:s agent)))

(define-mixin-category result-27.2
  :specializes subcategorization-pattern
  :mixins (np-v-pp with-cause with-theme)
  :binds ((sparser::cause physical-agent))
  :realization (:verb ("result" ("lead" :prep "up") "lead" "cause")
                (:s predicate :in patient :|\|| patient :to patient)))

(define-mixin-category risk-94
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-that-s with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("wager" "venture" "punt" "gamble" "bet")
                (:s agent :thatcomp theme) (:s agent :o theme)))

(define-mixin-category risk-94-1
  :specializes subcategorization-pattern
  :mixins (np-v-s_ing risk-94)
  :realization (:verb ("hazard" "risk" "chance") (:s agent :be_sc_ing theme)))

(define-mixin-category rob-10.6.4
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.source np-v-np-pp.beneficiary
           np-v-np-pp.source-pp.beneficiary with-agent with-theme with-source
           with-beneficiary)
  :binds ((sparser::beneficiary physical-agent)
          (sparser::source (:or physical-agent location region))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("cull" "milk" "strip" "bleed" "rob")
                (:s agent :o theme :src source :for beneficiary)
                (:s agent :o theme :for beneficiary)
                (:s agent :o theme :src source) (:s agent :o theme)))

(define-mixin-category roll-51.3.1
  :specializes subcategorization-pattern
  :mixins (np.theme-v np-v-pp.location np-v-np.theme np-v-np-pp.location
           np-v-adj np-v-pp.result np-v-np-adj np-v-np-pp.result with-agent
           with-theme with-source with-source with-path with-destination
           with-result)
  :binds ((sparser::path physical) (sparser::theme physical))
  :realization (:verb
                ("undulate" "spiral" "soar" "snake" "wind" "whirl" "twist"
                 "twirl" "turn" "spin" "rotate" "revolve" "coil" "swing"
                 "slide" "roll" "nose" "move" "glide" "float" "drop" "drift"
                 "bounce")
                (:s agent :o theme :to result :into result)
                (:s agent :io theme :o result)
                (:s theme :to result :into result) (:s theme :o result)
                (:s agent :o theme :path path) (:s agent :o theme)
                (:s theme :spatial path) (:s theme)))

(define-mixin-category rotate-51.9.1
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np.extent np-v-adv-middle with-theme with-extent
           with-path)
  :realization (:verb nil (:s theme :m adverb) (:s theme :o extent)))

(define-mixin-category rotate-51.9.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-np with-agent rotate-51.9.1)
  :binds ((sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb
                ("wind" "twist" "twirl" "turn" "swing" "spin" "rotate" "hook"
                 "coil" "curl")
                (:s agent :io theme :o extent)))

(define-mixin-category rummage-35.5
  :specializes subcategorization-pattern
  :mixins (np-v-pp.location np-v-pp.location-pp.theme with-agent has-location
           with-theme)
  :binds ((sparser::location location) (sparser::agent physical-agent))
  :realization (:verb
                ("scratch" "scrabble" "poke" "page" "look" "listen" "leaf" "go"
                 "fumble" "burrow" "bore")
                (:s agent :loc location :for theme) (:s agent :l location)))

(define-mixin-category rummage-35.5-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.theme rummage-35.5)
  :realization (:verb
                ("tunnel" "snoop" "thumb" "root" "delve" "paw" "rummage"
                 "rifle" "grope" "forage")
                (:s agent :l location :for theme)))

(define-mixin-category run-51.3.2
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.location there-v-pp-np there-v-np-pp pp.location-v-np
           with-theme with-path with-source with-destination)
  :binds ((sparser::destination physical) (sparser::source physical)
          (sparser::path physical)
          (sparser::theme (:or physical-agent physical-object)))
  :realization (:verb
                ("zoom" "zigzag" "yaw" "worm" "whiz" "wend" "weave" "waddle"
                 "trundle" "troop" "tread" "totter" "tootle" "toil" "toddle"
                 "tiptoe" "tear" "swerve" "swan" "swagger" "swag" "stump"
                 "stumble" "streak" "stray" "stomp" "step" "stagger" "spring"
                 "sprint" "somersault" "slouch" "slog" "slither" "slink"
                 "sleepwalk" "skulk" "skid" "skedaddle" "sidle" "shuffle"
                 "shamble" "seesaw" "scuttle" "scutter" "scurry" "scud"
                 "scramble" "scram" "scamper" "saunter" "sashay" "romp" "roar"
                 "pussyfoot" "pounce" "pootle" "pace" "nip" "mosey" "mince"
                 "meander" "lurch" "lumber" "lollop" "limp" "jounce"
                 "hopscotch" "hitchhike" "hike" ("goose" :prep "step")
                 "globetrot" "ghost" "gambol" "gallivant" "frolic" "flounce"
                 "flit" "falter" "dodder" "creep" "crawl" "clump" "climb"
                 "clamber" "chunter" "charge" "cavort" "carom" "caper" "bustle"
                 "breeze" "bound" "bolt" "backpack" "ambulate" "amble")
                (:path source :o theme) (:definite theme :path source)
                (:path source :definite theme) (:s theme :spatial path)
                (:s theme :to destination :towards destination) (:s theme)))

(define-mixin-category run-51.3.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np run-51.3.2)
  :realization (:verb
                ("wing" "wander" "wade" "vault" "trudge" "trek" "travel"
                 "tramp" "traipse" "swim" "sweep" "stroll" "stride" "rove"
                 "roam" "ramble" "prowl" "plod" "perambulate" "pad" "leap"
                 "journey" "hop")
                (:s theme :o path)))

(define-mixin-category run-51.3.2-2
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.location np-v-np np-v-np-pp.result with-agent with-result
           run-51.3.2)
  :binds ((sparser::agent physical-agent))
  :realization (:verb
                ("trot" "trip" "tack" "strut" "speed" "sneak" "slide" "skitter"
                 "skip" "scoot" "roll" "race" "prance" "lope" "inch" "hurtle"
                 "hurry" "hobble" "hasten" "glide" "gallop" "float" "drift"
                 "dash" "dart" "coast" "canter" "bowl" "bounce" "back")
                (:s agent :o theme :to result :into result) (:s agent :o theme)
                (:s agent :o agent) (:s agent :o theme :spatial path)))

(define-mixin-category run-51.3.2-2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-pp.result run-51.3.2-2)
  :realization (:verb
                ("walk" "rush" "run" "promenade" "parade" "march" "jump" "jog"
                 "fly")
                (:s theme :to result :into result) (:s theme :o path)))

(define-mixin-category rush-53.2
  :specializes subcategorization-pattern
  :mixins (np-v-np.theme np-v-pp.theme with-agent with-theme)
  :binds ((sparser::agent physical-agent))
  :realization (:verb ("rush" "hurry" "hasten") (:s agent :through theme)
                (:s agent :o theme) (:s agent :with theme)))

(define-mixin-category satisfy-55.7
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp with-agent with-theme with-instrument)
  :binds ((sparser::instrument object)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("satisfy" "satiate" "sate" "meet" "fulfill" "exceed")
                (:s agent :o theme :with instrument) (:s instrument :o theme)))

(define-mixin-category say-37.7
  :specializes subcategorization-pattern
  :mixins (np-v-s-quote with-agent with-topic with-recipient)
  :binds ((sparser::recipient (:or physical-agent company))
          (sparser::topic speech-act)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                (("go" :prep "on") ("go" :prep "like") "go" "continue"
                 ("be" :prep "like"))
                (:s agent :quotation topic)))

(define-mixin-category say-37.7-1
  :specializes subcategorization-pattern
  :mixins (np-v-np.topic np-v-np-pp.recipient np-v-pp.recipient-s-quote
           np-v-how-s np-v-how-s_inf np-v-what-s_inf np-v-what-s say-37.7)
  :realization (:verb
                ("write" "voice" "vocalize" "venture" "utter" "promulgate"
                 "retort" "respond" "reply" "leak" "intimate" "insist"
                 "insinuate" "exclaim" "divulge" "disclose" "blabber" "allege"
                 "add")
                (:s agent :what_extract topic) (:s agent :what_inf topic)
                (:s agent :wh_inf topic) (:s agent :how_extract topic)
                (:s agent :to recipient :quotation topic)
                (:s agent :o topic :to recipient) (:s agent :o topic)))

(define-mixin-category say-37.7-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-that-s say-37.7-1)
  :realization (:verb
                ("report" "note" "remark" "repeat" "volunteer" "state" "say"
                 "reveal" "relate" "reiterate" "recount" "propose" "proclaim"
                 "observe" "mention" "interpose" "interject" "declare" "convey"
                 "confide" "confess" "claim" "blurt" "blab" "articulate"
                 "announce" "advise")
                (:s agent :thatcomp topic)))

(define-mixin-category say-37.7-1-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.recipient np-v-pp.recipient-how-s
           np-v-pp.recipient-how-s_inf np-v-pp.recipient-that-s
           np-v-pp.recipient-what-s np-v-pp.recipient-what-s_inf say-37.7-1-1)
  :realization (:verb ("recommend" "suggest" "purpose")
                (:s agent :to recipient :what_inf topic)
                (:s agent :to recipient :what_extract topic)
                (:s agent :to recipient :thatcomp topic)
                (:s agent :to recipient :wh_inf topic)
                (:s agent :to recipient :how_extract topic)
                (:s agent :c topic :to recipient)))

(define-mixin-category say-37.7-1-2
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.recipient np-v-pp.recipient-how-s
           np-v-pp.recipient-how-s_inf np-v-pp.recipient-that-s
           np-v-pp.recipient-what-s np-v-pp.recipient-what-s_inf say-37.7-1)
  :realization (:verb ("hint") (:s agent :to recipient :what_inf topic)
                (:s agent :to recipient :what_extract topic)
                (:s agent :to recipient :thatcomp topic)
                (:s agent :to recipient :wh_inf topic)
                (:s agent :to recipient :how_extract topic)
                (:s agent :c topic :to recipient)))

(define-mixin-category scribble-25.2
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.destination with-agent with-theme
           with-destination)
  :binds ((sparser::destination physical)
          (sparser::agent (:or physical-agent physical-object)))
  :realization (:verb
                ("underline" "underscore" "trace" ("take" :prep "down") "take"
                 "spell" "misspell" ("jot" :prep "down") "jot" "forge" "copy")
                (:s agent :o theme :on destination :|\|| destination :in
                 destination)
                (:s agent :o theme)))

(define-mixin-category scribble-25.2-1
  :specializes subcategorization-pattern
  :mixins (np-v scribble-25.2)
  :realization (:verb
                (("print" :prep "up") ("print" :prep "out") "write" "type"
                 "stencil" "spraypaint" "sketch" "scribble" "scrawl" "scratch"
                 "record" "print" "plot" "pencil" "ink" "draw" "doodle"
                 "crayon" "charcoal" "chalk" "carve")
                (:s agent)))

(define-mixin-category search-35.2
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.theme np-v-pp.theme-np.location np-v-pp.location-pp.theme
           np-v-pp.location with-agent has-location with-theme)
  :binds ((sparser::location location) (sparser::agent physical-agent))
  :realization (:verb
                ("quest" "watch" "troll" "trawl" "sweep" "sift" "shop" "search"
                 "scout" "scour" "scavenge" "rifle" "rake" "quarry" "prowl"
                 "prospect" "probe" "plumb" "patrol" "nose" "excavate" "dredge"
                 "drag" "dive" "comb" "check" "advertise")
                (:s agent :loc location) (:s agent :loc location :for theme)
                (:s agent :for theme :loc location)
                (:s agent :l location :for theme)))

(define-mixin-category see-30.1
  :specializes subcategorization-pattern
  :mixins (np-v-that-s with-experiencer with-stimulus)
  :binds ((sparser::experiencer physical-agent))
  :realization (:verb ("tell") (:s experiencer :thatcomp stimulus)))

(define-mixin-category see-30.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-attr-pos np-v-how-s np-v-what-s see-30.1)
  :realization (:verb ("taste" "smell") (:s experiencer :what_extract stimulus)
                (:s experiencer :how_extract stimulus)
                (:s experiencer :o stimulus)))

(define-mixin-category see-30.1-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-s np-v-s_ing see-30.1-1)
  :realization (:verb
                ("see" "notice" "perceive" "sense" "feel" "discern" "detect")
                (:s experiencer :poss_ing stimulus)
                (:s experiencer :oc_ing stimulus)
                (:s experiencer :oc_bare_inf stimulus)))

(define-mixin-category see-30.1-1-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.stimulus see-30.1-1-1)
  :realization (:verb ("hear") (:s experiencer :about stimulus :of stimulus)))

(define-mixin-category seem-109
  :specializes subcategorization-pattern
  :mixins (np-v-adj with-theme with-attribute)
  :realization (:verb ("keep" "taste" "sound" "smell")
                (:s theme :c attribute)))

(define-mixin-category seem-109-1
  :specializes subcategorization-pattern
  :mixins (np-v-np seem-109)
  :realization (:verb ("act") (:s theme :c attribute)))

(define-mixin-category seem-109-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.attribute seem-109-1)
  :realization (:verb ("stay" "remain" "look" "feel" "be")
                (:s theme :in attribute)))

(define-mixin-category seem-109-1-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-s_inf seem-109-1-1)
  :realization (:verb ("appear" "seem") (:s theme :rs_to_inf attribute)))

(define-mixin-category send-11.1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.initial_location np-v-np-pp.destination
           np-v-np-pp.initial_location-pp.destination
           np-v-np-pp.destination-pp.initial_location with-agent with-theme
           with-source with-destination)
  :binds ((sparser::destination (:or physical-agent location region))
          (sparser::source location) (sparser::theme physical)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("transship" "import" "export" "transport" "transfer" "shunt"
                 "shift" "return" "post" "port" ("pass" :prep "on")
                 "handdeliver" "drive" "dispatch" "deliver" "convey")
                (:s agent :o theme :to destination :src source)
                (:s agent :o theme :src source :to destination)
                (:s agent :o theme :to destination)
                (:s agent :o theme :src source) (:s agent :o theme)))

(define-mixin-category send-11.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-dative-np with-destination send-11.1)
  :binds ((sparser::destination physical-agent))
  :realization (:verb
                ("wire" "ups" "transmit" "sneak" "smuggle" "slip" "ship" "send"
                 "pass" "mail" "hand" "forward" "fedex" "express" "airmail")
                (:s agent :io destination :o theme)))

(define-mixin-category separate-23.1
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np-pp.co-patient np-v-np np-v np-v-advp-middle-pp
           np-v-advp-middle with-agent with-patient with-co-patient)
  :binds ((sparser::agent physical-agent))
  :realization (:verb ("uncoil" "sever" "disassociate") (:s patient :m adverb)
                (:s patient :m adverb :from co-patient) (:s patient)
                (:s agent :plural patient)
                (:s agent :o patient :from co-patient)))

(define-mixin-category separate-23.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.co-patient separate-23.1)
  :realization (:verb
                ("segregate" "divorce" "divide" "dissimilate" "disentangle"
                 "differentiate" "decouple")
                (:s patient :from co-patient)))

(define-mixin-category separate-23.1-2
  :specializes subcategorization-pattern
  :mixins (np-v-pp.co-patient separate-23.1)
  :realization (:verb ("separate" "part" "dissociate" "disconnect")
                (:s patient :with co-patient)))

(define-mixin-category settle-36.1.2
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.goal-what-s_inf np-v-pp.co-agent-pp.goal with-agent
           with-agent with-topic)
  :binds ((sparser::agent (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("renegotiate" "square" "bargain" "interact" "haggle"
                 "disagree" "deliberate" "differ" "correspond" "cooperate"
                 "concur" "compromise" "communicate" "commiserate"
                 "collaborate" "settle")
                (:s agent :with agent :on goal) (:s agent :on goal) (:s agent)))

(define-mixin-category settle-36.1.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-that-s np-v-pp-that-s np-v-s settle-36.1.2)
  :realization (:verb ("decide" "debate" "argue" "agree" "resolve")
                (:s agent :o goal) (:s agent :io agent :o goal)))

(define-mixin-category shake-22.3
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-adv-middle np-v-together-adv-middle with-agent
           with-patient with-co-patient)
  :binds ((sparser::co-patient physical) (sparser::patient physical)
          (sparser::agent (:or physical-agent physical-object)))
  :realization (:verb nil (:s patient :m adverb)))

(define-mixin-category shake-22.3-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.co-patient np-v-np-together shake-22.3)
  :realization (:verb ("mass" "lump") (:s agent :plural patient)
                (:s agent :o patient :with co-patient :into co-patient :to
                 co-patient)))

(define-mixin-category shake-22.3-1-1
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-pp-adv-middle np-v-np shake-22.3-1)
  :realization (:verb ("whisk" "whip" "swirl" "stir" "scramble" "fuse" "beat")
                (:s agent :o patient)
                (:s patient :with co-patient :into co-patient :to co-patient :m
                 adverb)))

(define-mixin-category shake-22.3-2
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp np-v-np-together shake-22.3)
  :realization (:verb
                ("stick" "shuffle" "shake" "sew" "roll" "pair" "herd" "group"
                 "glom" "gather" "fix" "collect" "collate" "cluster" "baste"
                 "band")
                (:s agent :plural patient)
                (:s agent :o patient :with co-patient :into co-patient :to
                 co-patient)))

(define-mixin-category shake-22.3-2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np shake-22.3-2)
  :realization (:verb
                ("agglutinate" "affix" "fixate" "weld" "toggle" "splice"
                 "secure" "package" "moor" "ligate" "jumble" "graft" "fasten"
                 "concatenate" "bundle" "bond" "bind" "attach")
                (:s agent :plural patient)))

(define-mixin-category sight-30.2
  :specializes subcategorization-pattern
  :mixins (np-v-np with-experiencer with-stimulus)
  :binds ((sparser::experiencer physical-agent))
  :realization (:verb
                ("sniff" "witness" "view" "spy" "spot" "sight"
                 ("scent" :prep "out") "scent" "savor" "recognize" "perceive"
                 "overhear" "observe" "note" ("make" :prep "out") "glimpse"
                 "eye" "experience" "espy" "discover" "descry" "behold")
                (:s experiencer :o stimulus)))

(define-mixin-category simple_dressing-41.3.1
  :specializes subcategorization-pattern
  :mixins (with-agent with-theme)
  :binds ((sparser::agent physical-agent))
  :realization (:verb nil))

(define-mixin-category simple_dressing-41.3.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np simple_dressing-41.3.1)
  :realization (:verb ("wear") (:s agent :o theme)))

(define-mixin-category simple_dressing-41.3.1-2
  :specializes subcategorization-pattern
  :mixins (np-v-np simple_dressing-41.3.1)
  :realization (:verb ("doff" "don") (:s agent :o theme)))

(define-mixin-category slide-11.2
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.initial_location np-v-pp.destination
           np-v-pp.initial_location-pp.destination np.agent-v-np
           np-v-np-pp.initial_location np-v-np-pp.destination
           np-v-np-pp.initial_location-pp.destination with-agent with-theme
           with-source with-destination with-path)
  :binds ((sparser::destination (:or physical-agent location region))
          (sparser::source location) (sparser::theme physical))
  :realization (:verb ("pull" "scoot" "move")
                (:s agent :o theme :src source :to destination)
                (:s agent :o theme :to destination)
                (:s agent :o theme :path path) (:s agent :o theme)
                (:s theme :src source :to destination)
                (:s theme :to destination) (:s theme :path source) (:s theme)))

(define-mixin-category slide-11.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-dative-np with-destination slide-11.2)
  :binds ((sparser::destination physical-agent))
  :realization (:verb ("slide" "roll" "float" "dart" "bounce")
                (:s agent :io destination :o theme)))

(define-mixin-category smell_emission-43.3
  :specializes subcategorization-pattern
  :mixins (np-v np.location-v np-v-pp.theme with-theme has-location)
  :binds ((sparser::location location) (sparser::theme physical-agent))
  :realization (:verb ("stink" "smell" "reek") (:s location :of theme)
                (:s location) (:s theme)))

(define-mixin-category snooze-40.4
  :specializes subcategorization-pattern
  :mixins (np-v with-agent)
  :binds ((sparser::agent physical-agent))
  :realization (:verb ("snooze" "slumber" "drowse" "doze" "catnap") (:s agent)))

(define-mixin-category snooze-40.4-1
  :specializes subcategorization-pattern
  :mixins (np-v-np with-theme snooze-40.4)
  :realization (:verb ("sleep" "nap") (:s agent :o theme)))

(define-mixin-category sound_emission-43.2
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.location np.location-v-pp.theme pp.location-v-np
           there-v-np-pp np-v-np.theme with-theme has-location with-agent)
  :binds ((sparser::agent (:or (pronoun physical-agent)))
          (sparser::location location) (sparser::theme physical-agent))
  :realization (:verb
                ("zing" "whump" "whoosh" "whistle" "whisper" "whish" "whir"
                 "whine" "wheeze" "wail" "vroom" "ululate" "twang" "trumpet"
                 "trill" "tootle" "toot" "toll" "tinkle" "ting" "tick" "thunk"
                 "thunder" "thump" "thud" "thrum" "swoosh" "swish" "strike"
                 "squelch" "squeal" "squeak" "squawk" "sputter" "splutter"
                 "splash" "sploosh" "sough" "sound" "snap" "sizzle" "sing"
                 "shrill" "shriek" "screech" "scream" "rustle" "rumble" "roll"
                 "roar" "ring" "rattle" "rasp" "rap" "putter" "purr" "pop"
                 "plunk" "plop" "plonk" "plink" "plash" "pipe" "pink" "ping"
                 "peal" "patter" "murmur" "moan" "mewl" "lilt" "knock" "knell"
                 "keen" "jingle" "jangle" "hum" "howl" "honk" "hoot" "hiss"
                 "gurgle" "growl" "groan" "fizzle" "fizz" "explode" "drone"
                 "dong" "ding" "cry" "crunch" "crepitate" "creak" "crash"
                 "crackle" "crack" "clunk" "clump" "clomp" "clink" "cling"
                 "click" "clatter" "clash" "clap" "clank" "clang" "clack"
                 "chug" "chitter" "chir" "chink" "chime" "chatter" "caterwaul"
                 "buzz" "burr" "burble" "bubble" "boom" "blat" "blast" "blare"
                 "bellow" "beep" "beat" "bang" "babble")
                (:s agent :o theme) (:o theme :loc location)
                (:loc location :o theme) (:s location :with theme)
                (:s theme :loc location) (:s theme)))

(define-mixin-category sound_existence-47.4
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.location there-v-np pp.location-v-np
           np.location-v-np.theme with-theme has-location)
  :binds ((sparser::location (:and/or location region)))
  :realization (:verb
                ("sound" "roll" "reverberate" "resound" "resonate" "echo")
                (:s location :with theme) (:loc location :o theme)
                (:definite theme) (:s theme :loc location) (:s theme)))

(define-mixin-category spank-18.3
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.instrument np-v-np-adjp np-v-np-pp.result
           np-v-np-pp.result-pp.instrument np-v-np-pp.location
           np-v-np-pp-pp.instrument np-v-np with-agent with-patient
           with-instrument has-location with-result)
  :binds ((sparser::location physical) (sparser::instrument physical)
          (sparser::patient physical))
  :realization (:verb
                ("horsewhip" "whop" "whomp" "whisk" "whip" "whap" "wham"
                 "wallop" "truncheon" "thump" "thrash" "strap" "spank" "sock"
                 "slam" "pummel" "pommel" "paddle" "lather" "larrup" "lam"
                 "k.o." "knife" "knee" "fustigate" "flog" "flail" "flagellate"
                 "elbow" "cuff" "cudgel" "cosh" "conk" "club" "clout" "clobber"
                 "cane" "brain" "bonk" "bludgeon" "birch" "biff" "belt")
                (:s agent :o patient)
                (:s agent :o patient :loc location :with instrument)
                (:s agent :o patient :loc location)
                (:s agent :o patient :to result :into result :with instrument)
                (:s agent :o patient :to result :into result)
                (:s agent :io patient :o result)
                (:s agent :o patient :with instrument)))

(define-mixin-category spatial_configuration-47.6
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.location there-v-pp-np pp.location-v-np with-theme
           has-location)
  :binds ((sparser::location (:and/or location region))
          (sparser::theme physical))
  :realization (:verb
                ("yaw" "tower" "swag" "stoop" "squat" "suspend" "slump"
                 "slouch" "sag" "roost" "rise" "repose" "protrude" "lounge"
                 "loom" "loll" "lie" "lean" "kneel" "jut" "hunch" "huddle"
                 "hover" "crouch" "bow")
                (:loc location :o theme) (:loc location :definite theme)
                (:s theme :loc location) (:s theme)))

(define-mixin-category spatial_configuration-47.6-1
  :specializes subcategorization-pattern
  :mixins (np-v-np.theme-pp with-agent spatial_configuration-47.6)
  :binds ((sparser::agent physical-agent))
  :realization (:verb
                ("tilt" "swing" "straddle" "stand" "sprawl" "slope" "sit"
                 "rest" "recline" "project" "plop" "perch" "open" "nestle"
                 "hang" "fly" "flop" "droop" "dangle" "bend" "balance")
                (:s agent :o theme :loc location)))

(define-mixin-category spend_time-104
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.attribute with-agent with-extent with-attribute)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("waste" "use" "spend" "misspend" "serve" "pass" "lead" "kill")
                (:s agent :io extent :o attribute) (:s agent :o extent)))

(define-mixin-category split-23.2
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np-pp.co-patient np-v-np-apart np-v-pp.co-patient
           np-v-apart np-v-pp-adv-middle np-v-apart-adv-middle with-agent
           with-patient with-co-patient)
  :binds ((sparser::co-patient solid) (sparser::patient solid))
  :realization (:verb
                ("yank" "tug" "tear" "split" "snap" "sliver" "slip" "shove"
                 "saw" "roll" "rip" "push" "pull" "pry" "knock" "kick" "hew"
                 "hack" "draw" "cut" "break" "blow")
                (:s patient :m adverb)
                (:s patient :off co-patient :off co-patient :of co-patient
                 :from co-patient :m adverb)
                (:s patient)
                (:s patient :off co-patient :off co-patient :of co-patient
                 :from co-patient)
                (:s agent :plural patient)
                (:s agent :o patient :off co-patient :off co-patient :of
                 co-patient :from co-patient)))

(define-mixin-category spray-9.7
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.destination np-v-np.destination-pp.theme np-v-np.theme
           np-v-np.destination with-agent with-theme with-source
           with-destination)
  :binds ((sparser::destination (:and/or location region))
          (sparser::source location) (sparser::agent physical-agent))
  :realization (:verb ("overload") (:s agent :o destination)
                (:s agent :o theme) (:s agent :o destination :with theme)
                (:s agent :o theme :loc destination :dest_conf destination)))

(define-mixin-category spray-9.7-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.destination np-v-np-pp.destination-conative with-theme
           spray-9.7)
  :binds ((sparser::theme (:or nil physical collection)))
  :realization (:verb
                ("wrap" "spurt" "swash" "swab" "string" "strew" "stick"
                 "squirt" "spritz" "sprinkle" "spread" "spray" "splatter"
                 "splash" "spatter" "sow" "smudge" "smear" "shower" "sew"
                 "seed" "scatter" "rub" "pump" "plaster" "hang" "drizzle"
                 "brush" "baste")
                (:s agent :io theme :o destination)
                (:s theme :loc destination :dir destination)))

(define-mixin-category spray-9.7-1-1
  :specializes subcategorization-pattern
  :mixins (np.theme-v-np spray-9.7-1)
  :realization (:verb ("pile" "pack" "jam" "crowd" "cram")
                (:s theme :o destination)))

(define-mixin-category spray-9.7-2
  :specializes subcategorization-pattern
  :mixins (with-theme spray-9.7)
  :binds ((sparser::theme physical))
  :realization (:verb
                ("stuff" "stock" "stack" "slather" "seed" "plant" "heap" "dust"
                 "mound" "daub" "dab" "load" "drape")))

(define-mixin-category stalk-35.3
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.theme np-v-np-pp.location np-v-np with-agent with-theme
           has-location)
  :binds ((sparser::location location) (sparser::agent physical-agent))
  :realization (:verb ("whiff" "track" "taste" "stalk" "smell" "scent")
                (:s agent :o theme) (:s agent :o theme :loc location)
                (:s agent :l location :for theme)))

(define-mixin-category steal-10.5
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.source np-v-np-pp.beneficiary
           np-v-np-pp.source-pp.beneficiary with-agent with-theme with-source
           with-beneficiary)
  :binds ((sparser::beneficiary physical-agent)
          (sparser::source (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("wrest" "thieve" "take" "sequester" ("snatch" :prep "away")
                 "seize" "rustle" "rob" "rescue" "repossess" "redeem" "recoup"
                 "reclaim" "recapture" "purloin" "plunder" "plagiarize" "pinch"
                 "pickpocket" "nobble" "misappropriate" "milk" "lift"
                 "liberate" ("knock" :prep "off") "kidnap" "highjack" "filch"
                 "extort" "embezzle" "emancipate" "cull" "confiscate"
                 "commandeer" "carjack" "cabbage" "bleed" "annex" "abduct")
                (:s agent :o theme :src source :for beneficiary)
                (:s agent :o theme :for beneficiary)
                (:s agent :o theme :src source) (:s agent :o theme)))

(define-mixin-category steal-10.5-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-np steal-10.5)
  :realization (:verb
                ("wangle" "swipe" "steal" "sneak" "snatch" "smuggle" "shoplift"
                 "salvage" "pirate" "pilfer" "nick" "nab" "hook" "grab" "flog"
                 "cop" "capture" "cadge")
                (:s agent :io beneficiary :o theme)))

(define-mixin-category stimulate-59.4
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-s_ing np-v-np-pp.result with-agent with-patient
           predication)
  :binds ((sparser::predicate predicate)
          (sparser::patient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("stimulate" "spur" "rouse" "prompt" "jolt" "incite")
                (:s agent :o patient :into predicate) (:s agent :o patient)))

(define-mixin-category stimulus_subject-30.4
  :specializes subcategorization-pattern
  :mixins (np-v-adj np-v-adj-pp.experiencer np-v-pp.attribute with-experiencer
           with-stimulus)
  :binds ((sparser::experiencer physical-agent))
  :realization (:verb ("taste" "sound" "smell" "look" "feel") (:s stimulus)
                (:s stimulus :to experiencer)))

(define-mixin-category stop-55.4
  :specializes subcategorization-pattern
  :mixins (np-v-np.theme with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("kill" "raise" "cut") (:s agent :o theme)))

(define-mixin-category stop-55.4-1
  :specializes subcategorization-pattern
  :mixins (takes-adverb np.theme-v np-v-adj-middle stop-55.4)
  :realization (:verb
                ("terminate" "repeat" "lift" "halt" "deactivate"
                 ("cut" :prep "out") ("cut" :prep "off") "close")
                (:s theme :m adverb) (:s theme)))

(define-mixin-category stop-55.4-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-s_ing stop-55.4-1)
  :realization (:verb
                ("quit" "stop" "finish" "end" "discontinue" "conclude" "cease")
                (:s agent :be_sc_ing theme)))

(define-mixin-category subjugate-42.3
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.instrument with-agent with-patient
           with-instrument)
  :binds ((sparser::instrument object)
          (sparser::patient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                (("walk" :prep "over") "kill" "strangle" "slake" "reduce"
                 "subjugate" ("keep" :prep "down") "quash" "repress" "muffle"
                 "smother" "quench" "quell" "squelch" "muzzle" "gag"
                 ("calm" :prep "down") "lull" ("hush" :prep "up")
                 ("shut" :prep "up") "still" "silence" "hush" "choke"
                 "suffocate" "dampen" "stifle" "crush" "curb" "conquer"
                 "subdue" ("stamp" :prep "down") "suppress" "nourish" "mob"
                 "enslave" "disenfranchise")
                (:s agent :o patient :with instrument) (:s agent :o patient)))

(define-mixin-category subordinate-95.2.1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.co-agent with-agent with-agent)
  :binds ((sparser::agent (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("report" "answer") (:s agent :to agent)))

(define-mixin-category substance_emission-43.4
  :specializes subcategorization-pattern
  :mixins (np-v-np with-theme with-source)
  :realization (:verb
                ("emit" ("give" :prep "forth") ("give" :prep "out")
                 ("give" :prep "off") "give")
                (:s source :o theme)))

(define-mixin-category substance_emission-43.4-1
  :specializes subcategorization-pattern
  :mixins (np-v np.theme-v-pp.source np-v-pp.location np.location-v-pp.theme
           pp.location-v-np there-v-np-pp np-v-out has-location
           substance_emission-43.4)
  :binds ((sparser::location location))
  :realization (:verb
                ("trickle" "sweat" "stream" "steam" "squirt" "spurt" "sprout"
                 "spout" "spill" "spew" "slop" "shed" "seep" "radiate" "puff"
                 "pour" "percolate" "ooze" "leak" "jet" "gush" "foam" "exude"
                 "exrete" "emanate" "drool" "drip" "dribble" "bubble" "belch"
                 "bead")
                (:s theme) (:o source :loc location) (:loc location :o source)
                (:s location :with theme) (:s theme :path location)
                (:s theme :from source :out_of source) (:s source)))

(define-mixin-category substance_emission-43.4-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np.source with-agent substance_emission-43.4-1)
  :binds ((sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb ("bleed") (:s agent :o source)))

(define-mixin-category substitute-13.6.2
  :specializes subcategorization-pattern
  :mixins (np-v-pp.co-theme np-v-np.location np-v-np-pp.co-theme with-theme
           with-theme has-location)
  :binds ((sparser::location (:and/or location region)))
  :realization (:verb ("switch" ("swap" :prep "out") "swap" "substitute")
                (:s theme :l location :with theme) (:s theme :l location)
                (:s theme :for theme :into theme)))

(define-mixin-category substitute-13.6.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np substitute-13.6.2)
  :realization (:verb ("supplant" "replace") (:s theme :o theme)))

(define-mixin-category succeed-74
  :specializes subcategorization-pattern
  :mixins (with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb nil))

(define-mixin-category succeed-74-1
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.theme-s_ing np-v-pp.theme succeed-74)
  :realization (:verb ("excel" "succeed") (:s agent :in theme) (:s agent)))

(define-mixin-category succeed-74-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-s_inf succeed-74-1)
  :realization (:verb ("manage") (:s agent :to-comp theme)))

(define-mixin-category succeed-74-2
  :specializes subcategorization-pattern
  :mixins (np-v np-v-np np-v-pp.theme-s_ing succeed-74)
  :realization (:verb ("win") (:s agent :sc_ing theme)
                (:s agent :c theme) (:s agent)))

(define-mixin-category succeed-74-3
  :specializes subcategorization-pattern
  :mixins (np-v succeed-74)
  :realization (:verb
                (("fall" :prep "by_the_wayside") ("fall" :prep "off") "fall")
                (:s agent)))

(define-mixin-category succeed-74-3-1
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-pp.theme-s_ing succeed-74-3)
  :realization (:verb ("flub" "lose") (:s agent :c theme)
                (:s agent :c theme)))

(define-mixin-category succeed-74-3-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.theme-s_ing np-v-s_inf succeed-74-3-1)
  :realization (:verb ("fail") (:s agent :to-comp theme) (:s agent :in theme)))

(define-mixin-category suffocate-40.7
  :specializes subcategorization-pattern
  :mixins (np-v-np.theme np.theme-v np-v-pp.result np-v-np-pp.result with-agent
           with-patient with-result)
  :binds ((sparser::patient physical-agent) (sparser::agent physical-agent))
  :realization (:verb ("suffocate" "stifle" "choke" "asphyxiate")
                (:s agent :o patient :to result) (:s patient :to result)
                (:s patient) (:s agent :o patient)))

(define-mixin-category supervision-95.2.2
  :specializes subcategorization-pattern
  :mixins (np-v-pp.agent with-agent with-agent)
  :binds ((sparser::agent (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("supervise" "superintend" "manage" "lead" "direct" "boss")
                (:s agent :o agent)))

(define-mixin-category support-15.3
  :specializes subcategorization-pattern
  :mixins (np-v-np with-instrument with-theme)
  :binds ((sparser::instrument object))
  :realization (:verb ("bear" "hold") (:s instrument :o theme)))

(define-mixin-category support-15.3-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.instrument with-agent with-instrument support-15.3)
  :binds ((sparser::instrument object)
          (sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb
                ("support" "strengthen" "reinforce" ("hold" :prep "up") "buoy"
                 "buttress" "boost" "bolster")
                (:s agent :o theme :with instrument :|\|| instrument :through
                 instrument)))

(define-mixin-category suspect-81
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.attribute np-v-pp.attribute-s_ing np-v-pp.theme-s_ing
           with-agent with-theme with-attribute)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("condemn" "accuse" "suspect") (:s agent :poss_ing theme)
                (:s agent :o theme :of attribute)))

(define-mixin-category sustain-55.6
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.instrument with-agent with-theme with-instrument)
  :binds ((sparser::instrument object)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                (("carry" :prep "on") "continue" ("keep" :prep "up") "protract"
                 "prolong" "sustain" "maintain" "hold")
                (:s agent :o theme :through instrument)))

(define-mixin-category sustain-55.6-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-adj with-attribute sustain-55.6)
  :realization (:verb ("leave" "keep") (:s agent :io theme :o attribute)))

(define-mixin-category swarm-47.5.1
  :specializes subcategorization-pattern
  :mixins (with-theme has-location)
  :binds ((sparser::location (:and/or location region))
          (sparser::theme (:and/or physical collection)))
  :realization (:verb nil))

(define-mixin-category swarm-47.5.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.location there-v-np-pp pp.location-v-np
           pp.location-v-pp.theme swarm-47.5.1)
  :realization (:verb
                ("pullulate" "teem" "swim" "swarm" "hop" "creep" "crawl"
                 "bustle")
                (:s location :with theme) (:loc location :o theme)
                (:definite theme :loc location) (:s theme :loc location)))

(define-mixin-category swarm-47.5.1-2
  :specializes subcategorization-pattern
  :mixins (np-v-pp.location there-v-np-pp swarm-47.5.1)
  :realization (:verb ("throng") (:definite theme :loc location)
                (:s theme :loc location)))

(define-mixin-category swarm-47.5.1-2-1
  :specializes subcategorization-pattern
  :mixins (np.location-v-pp.theme swarm-47.5.1-2)
  :realization (:verb ("abound") (:s location :with theme)))

(define-mixin-category swat-18.2
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.instrument np-v-pp np-v-pp-pp np-v-np-adjp
           np-v-np-adjp-pp.instrument np-v-np-pp.result
           np-v-np-pp.result-pp.instrument np-v-np-pp.location with-agent
           with-patient with-instrument has-location with-result)
  :binds ((sparser::location physical) (sparser::instrument solid)
          (sparser::patient physical) (sparser::agent physical-agent))
  :realization (:verb
                ("swipe" "swat" "stab" "slug" "slice" "scratch" "punch" "peck"
                 "paw" "kick" "claw" "chop" "bite")
                (:s agent :o patient :loc location)
                (:s agent :o patient :to result :into result :with instrument)
                (:s agent :o patient :to result :into result)
                (:s agent :io patient :o result :with instrument)
                (:s agent :io patient :o result)
                (:s agent :o patient :with instrument) (:s agent :o patient)))

(define-mixin-category talk-37.5
  :specializes subcategorization-pattern
  :mixins (np-v-pp.co-agent np-v-pp.co-agent-pp.topic np-v np-v-together
           np-v-pp.topic-pp.co-agent np-v-pp.topic with-agent with-agent
           with-topic)
  :binds ((sparser::topic speech-act)
          (sparser::agent (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("talk" "speak") (:s agent :about topic)
                (:s agent :about topic :with agent)
                (:s agent :about topic :to agent) (:s agent)
                (:s agent :with agent :about topic)
                (:s agent :to agent :about topic) (:s agent :with agent)
                (:s agent :to agent)))

(define-mixin-category tape-22.4
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np np-v-np-pp.co-patient
           np-v-np-pp.co-patient-pp.instrument np-v-np-together
           np-v-adv-middle-pp np-v-adv-middle np-v-together-adv-middle
           np-v-np-adjp with-agent with-patient with-co-patient with-instrument
           with-result)
  :binds ((sparser::instrument (:and/or physical physical-agent))
          (sparser::co-patient solid) (sparser::patient solid)
          (sparser::agent (:or physical-agent physical-object)))
  :realization (:verb
                ("zip" "yoke" "wire" "weld" "truss" "trammel" "tie" "thumbtack"
                 "thread" "tether" "tape" "tack" "suture" "string" "strap"
                 "stitch" "staple" "solder" "skewer" "shackle" "seal" "screw"
                 "rope" "rivet" "reeve" "plaster" "pin" "peg" "paste" "paste"
                 "padlock" "nail" "muzzle" "moor" "manacle" "loop" "lock"
                 "link" "leash" "latch" "lasso" "lash" "lace" "knot" "hook"
                 "hitch" "hinge" "harness" "handcuff" "gum" "glue" "fetter"
                 "fasten" "epoxy" "connect" "clip" "clasp" "clamp" "cinch"
                 "chain" "cement" "cable" "button" "buckle" "bracket" "bolt"
                 "bond" "belt" "band" "anchor" "affix")
                (:s agent :io patient :o result) (:s patient :m adverb)
                (:s patient :m adverb :to co-patient :on co-patient :onto
                 co-patient)
                (:s agent :plural patient)
                (:s agent :o patient :to co-patient :on co-patient :onto
                 co-patient :with instrument)
                (:s agent :o patient :to co-patient :on co-patient :onto
                 co-patient)
                (:s agent :o patient)))

(define-mixin-category tell-37.2
  :specializes subcategorization-pattern
  :mixins (np-v-np.recipient np-v-np.recipient-pp.topic np-v-np.recipient-s
           with-agent with-recipient with-topic)
  :binds ((sparser::topic speech-act)
          (sparser::recipient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("remind" "update" "notify" "apprise" "inform" "acquaint")
                (:s agent :io recipient :thatcomp topic)
                (:s agent :o recipient :of topic) (:s agent :o recipient)))

(define-mixin-category terminus-47.9
  :specializes subcategorization-pattern
  :mixins (np-v-np-adj with-theme has-location)
  :binds ((sparser::location location))
  :realization (:verb ("terminate" "stop" "start" "lead" "end" "begin")
                (:s theme :|| location)))

(define-mixin-category throw-17.1
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np np-v-np-pp.destinations
           np-v-np-pp.initial_location
           np-v-np-pp.initial_location-pp.destination np-v-np-advp with-agent
           with-theme with-source with-destination with-result)
  :binds ((sparser::destination (:or physical-agent location region))
          (sparser::source location) (sparser::theme physical))
  :realization (:verb ("drive" "discard" "cast") (:s agent :o theme :m adverb)
                (:s agent :o theme :src source :dest_dir destination)
                (:s agent :o theme :src source)
                (:s agent :o theme :dest destination :loc destination)
                (:s agent :o theme)))

(define-mixin-category throw-17.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-dative-np with-destination throw-17.1)
  :binds ((sparser::destination physical-agent))
  :realization (:verb
                ("boot" "tap" "smash" "sling" "slap" "slam" "shove" "shoot"
                 "punt" "pitch" "pass" "nudge" "loft" "lob" "knock" "hurl"
                 "hit" "flip" "fling" "flick" "fire" "chuck" "bunt" "bat"
                 "bash")
                (:s agent :io destination :o theme)))

(define-mixin-category throw-17.1-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.result np-v-pp.result-np with-cause throw-17.1-1)
  :realization (:verb ("toss" "tip" "throw" "launch" "kick" "catapult")
                (:s cause :into result :o theme)
                (:s cause :o theme :into result)))

(define-mixin-category tingle-40.8.2
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.stimulus with-experiencer with-patient with-stimulus)
  :binds ((sparser::experiencer physical-agent))
  :realization (:verb
                ("twinge" "tingle" "tickle" "throb" "swim" "sting" "split"
                 "spin" "smart" "reel" "pucker" "prickle" "pound" "palpitate"
                 "hum" "burn" "ache")
                (:s patient :from stimulus :at stimulus) (:s patient)))

(define-mixin-category touch-20
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.instrument with-agent with-experiencer with-theme
           with-instrument)
  :binds ((sparser::instrument solid) (sparser::experiencer physical-agent))
  :realization (:verb
                ("wring" "twinge" "tweak" "tug" "squeeze" "osculate" "knead"
                 "grope" "chafe")
                (:s agent :o theme :with instrument) (:s agent :o theme)
                (:s agent :o experiencer :with instrument)
                (:s agent :o experiencer)))

(define-mixin-category touch-20-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.theme-pp.instrument touch-20)
  :realization (:verb
                ("touch" "tickle" "stroke" "sting" "rub" "prod" "pinch" "pet"
                 "peck" "paw" "pat" "nudge" "massage" "lick" "kiss" "grip"
                 "graze" "grasp" "fondle" "caress")
                (:s agent :o experiencer :on theme :|\|| theme :by theme :with
                 instrument)))

(define-mixin-category transcribe-25.4
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.destination with-agent with-theme
           with-destination)
  :binds ((sparser::destination physical) (sparser::agent physical-agent))
  :realization (:verb
                (("write" :prep "out") ("write" :prep "up") "videotape" "type"
                 "transcribe" "televise" "tape" ("tally" :prep "up") "tally"
                 "record" "photograph" "photocopy" "microfilm" "forge" "film"
                 "duplicate" "document" "copy" "chronicle" "chart")
                (:s agent :o theme :loc destination :dest_conf destination)
                (:s agent :o theme)))

(define-mixin-category transfer_mesg-37.1.1
  :specializes subcategorization-pattern
  :mixins (np-v-how-s np-v-how-s_inf np-v-pp.recipient-how-s
           np-v-pp.recipient-how-s_inf np-v-what-s np-v-what-s_inf np-v-np
           np-v-np-pp.recipient np-v with-agent with-topic with-recipient)
  :binds ((sparser::recipient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                (("write" :prep "in") "snitch" ("boil" :prep "down")
                 ("sum" :prep "up") "summarize" "outline" "communicate"
                 "corroborate" "verify" "illustrate" "sniff" "relay" "recite"
                 "recap" "preach" "pose" "narrate" "justify" "expound"
                 "explicate" "explain" "elucidate" "demonstrate")
                (:s agent) (:s agent :c topic :to recipient)
                (:s agent :c topic) (:s agent :what_inf topic)
                (:s agent :what_extract topic)
                (:s agent :to recipient :wh_inf topic)
                (:s agent :to recipient :how_extract topic)
                (:s agent :wh_inf topic) (:s agent :how_extract topic)))

(define-mixin-category transfer_mesg-37.1.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-dative-np transfer_mesg-37.1.1)
  :realization (:verb ("read" "quote" "dictate")
                (:s agent :io recipient :c topic)))

(define-mixin-category transfer_mesg-37.1.1-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np.recipient np-v-np-s_inf np-v-np-s_ing np-v-np-s
           np-v-np-what-s np-v-np-what-s_inf np-v-np-how-s
           transfer_mesg-37.1.1-1)
  :realization (:verb ("write" "tell" "teach" "show")
                (:s agent :io recipient :how_extract topic)
                (:s agent :io recipient :what_inf topic)
                (:s agent :io recipient :what_extract topic)
                (:s agent :io recipient :thatcomp topic)
                (:s agent :o recipient :about topic)
                (:s agent :io recipient :oc_to_inf topic)
                (:s agent :o recipient)))

(define-mixin-category trick-59.2
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-s_ing np-v-np-pp.result with-agent with-patient
           predication)
  :binds ((sparser::predicate predicate)
          (sparser::patient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("trap" "trick" "mislead" "manipulate" "hoodwink" "fool"
                 "extort" "entrap" "ensnare" "dupe" "delude" "deceive" "con"
                 "cheat" "blackmail" "bluff" "bullshit" "fox" "cozen"
                 "bamboozle")
                (:s agent :o patient :into result)
                (:s agent :o patient :into predicate) (:s agent :o patient)))

(define-mixin-category trifle-105.3
  :specializes subcategorization-pattern
  :mixins (np-v-pp.theme with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("trifle" "toy" "play" "fiddle" "diddle" "dally")
                (:s agent :with theme)))

(define-mixin-category try-61.1
  :specializes subcategorization-pattern
  :mixins (np-v-s_ing np-v-np np-v-s_inf with-agent with-theme)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("intend" "attempt" "try") (:s agent :to-comp theme)
                (:s agent :c theme) (:s agent :np_omit_ing theme)))

(define-mixin-category turn-26.6.1
  :specializes subcategorization-pattern
  :mixins (np-v-np.patient-pp.material-pp.result
           np.patient-v-pp.material-pp.result np-v-np.patient-pp.result
           np.patient-v-pp.result np-v np-v-np with-agent with-patient
           with-source with-result)
  :binds ((sparser::agent (:or physical-agent physical-object)))
  :realization (:verb
                ("transmute" "translate" "transform" "mutate" "morph"
                 "metamorphose" "deform" "alter")
                (:s agent :o patient) (:s patient) (:s patient :into result)
                (:s agent :o patient :into result)
                (:s patient :from source :into result)
                (:s agent :o patient :from source :into result)))

(define-mixin-category turn-26.6.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp.result np-v-pp.material-pp.result
           np-v-pp.result--pp.material turn-26.6.1)
  :realization (:verb ("turn" "convert" "change")
                (:s agent :to result :from source)
                (:s agent :from source :to result) (:s agent :to result)))

(define-mixin-category urge-58.1
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-patient with-result)
  :binds ((sparser::patient (:or physical-agent company))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb ("bring") (:s agent :o patient)))

(define-mixin-category urge-58.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-s_ing urge-58.1)
  :realization (:verb
                ("tempt" "summon" "push" ("lean" :prep "on") "invite" "force"
                 ("egg" :prep "on") "dare" ("call" :prep "on"))
                (:s agent :o patient :c result-role)))

(define-mixin-category urge-58.1-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-that-s urge-58.1-1)
  :realization (:verb
                ("urge" "prod" "pressure" "press" "lobby" "implore" "entreat"
                 "exhort" "encourage" "ask" "admonish")
                (:s agent :io patient :thatcomp topic)))

(define-mixin-category use-105.1
  :specializes subcategorization-pattern
  :mixins (takes-adverb np-v-np np-v-np-adv np-v-np-pp.predicate np-v-np-s_inf
           with-agent with-theme predication)
  :binds ((sparser::predicate predicate)
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("work" "run" "reuse" "play" "exploit" "exert" "employ" "apply"
                 "utilize" "use")
                (:s agent :o theme :c predicate) 
                (:s agent :o theme :for predicate)
                (:s agent :o theme :m adverb) (:s agent :o theme)))

(define-mixin-category vehicle-51.4.1
  :specializes subcategorization-pattern
  :mixins (np.theme-v np.theme-v-pp.location np-v-np-pp.location np-v-np
           np-v-np-adj np-v-np-pp.result with-agent with-theme with-source
           with-path with-destination with-result)
  :binds ((sparser::path physical) (sparser::theme (:or physical-agent nil))
          (sparser::agent physical-agent))
  :realization (:verb
                ("yacht" "trolley" "tram" "taxi" "sleigh" "sledge" "rocket"
                 "rickshaw" "punt" "parachute" "motor" "moped" "jet" "jeep"
                 "helicopter" "gondola" "ferry" "dogsled" "coach" "chariot"
                 "caravan" "cab" "bus" "bobsled" "boat" "balloon")
                (:s agent :o theme :to result :into result)
                (:s agent :io theme :o result) (:s agent :o theme)
                (:s agent :o theme :path path) (:s theme :path path) (:s theme)))

(define-mixin-category vehicle-51.4.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np has-location vehicle-51.4.1)
  :binds ((sparser::location physical))
  :realization (:verb
                ("toboggan" "sled" "ski" "skateboard" "skate" "raft"
                 "motorcycle" "motorbike" "kayak" "cycle" "canoe" "bike"
                 "bicycle")
                (:s theme :l location)))

(define-mixin-category vehicle_path-51.4.3
  :specializes subcategorization-pattern
  :mixins (np-v-np np-v-np-pp.destination np-v-np-pp.initial_location
           with-agent with-theme with-path with-source with-destination)
  :binds ((sparser::destination location) (sparser::source location)
          (sparser::theme motor-vehicle)
          (sparser::agent (:or physical-agent motor-vehicle)))
  :realization (:verb ("coast" "sail" "take") (:s agent :o path :from source)
                (:s agent :o path :to destination) (:s agent :o path)
                (:s agent :o theme :from source)
                (:s agent :o theme :to destination) (:s agent :o theme)))

(define-mixin-category void-106
  :specializes subcategorization-pattern
  :mixins (np-v-np with-agent with-patient)
  :binds ((sparser::agent (:or physical-agent company)))
  :realization (:verb ("nullify" "invalidate" "avoid" "void" "quash" "annul")
                (:s agent :o patient)))

(define-mixin-category volunteer-95.4
  :specializes subcategorization-pattern
  :mixins (np-v-s_inf np-v-pp np-v-np-pp with-agent with-instrument with-theme
           with-attribute)
  :binds ((sparser::instrument object)
          (sparser::agent (:or (pronoun physical-agent))))
  :realization (:verb ("proffer" "offer") (:s agent :io instrument :o theme)
                (:s agent :o theme)))

(define-mixin-category volunteer-95.4-1
  :specializes subcategorization-pattern
  :mixins (np-v-np volunteer-95.4)
  :realization (:verb (("sign" :prep "up") "enlist" "volunteer")
                (:s agent :o attribute)))

(define-mixin-category waltz-51.5
  :specializes subcategorization-pattern
  :mixins (np.theme-v np-v-pp.trajectory-pp.goal np-v-np-pp.trajectory
           np-v-np-adjp np-v-np-pp.goal with-agent with-theme with-path
           with-destination with-result)
  :binds ((sparser::path physical) (sparser::theme physical-agent)
          (sparser::agent physical-agent))
  :realization (:verb
                ("waltz" "tapdance" "tango" "squaredance" "shuffle" "samba"
                 "rumba" "quickstep" "polka" "pirouette" "jive" "jitterbug"
                 "jig" "foxtrot" "dance" "conga" "clog" "cancan" "bop"
                 "boogie")
                (:s agent :io theme :o result) (:s agent :o theme :path path)
                (:s theme :path path :o destination) (:s theme)))

(define-mixin-category want-32.1
  :specializes subcategorization-pattern
  :mixins (np-v-np with-instrument with-theme)
  :binds ((sparser::instrument physical-agent))
  :realization (:verb ("love" "fancy" "desire" "crave" "covet")
                (:s instrument :o theme)))

(define-mixin-category want-32.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-for-np-s_inf np-v-np-adv np-v-s_ing np-v-np-adj np-v-np-s_ing
           np-v-s_inf want-32.1)
  :realization (:verb ("enjoy") (:s instrument :to-comp theme)
                (:s instrument :poss_ing theme) (:s instrument :np_ppart theme)
                (:s instrument :ac_ing theme) (:s instrument :o theme)
                (:s instrument :np_omit_ing theme)
                (:s instrument :for_comp theme)))

(define-mixin-category want-32.1-1-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-s_inf np-v-np-to-be-adj want-32.1-1)
  :realization (:verb ("desire" "prefer" "like" "need" "want")
                (:s instrument :to_be theme) (:s instrument :np_to_inf theme)))

(define-mixin-category weather-57
  :specializes subcategorization-pattern
  :mixins (it-v it-v-np.theme it-v-pp.theme with-theme)
  :binds ((sparser::theme (:or physical nil)))
  :realization (:verb
                ("thunder" "thaw" "teem" "swelter" "storm" "sprinkle" "spot"
                 "spit" "snow" "sleet" "shower" "roar" "rain" "precipitate"
                 "pour" "pelt" "mizzle" "mist" "lightning" "howl" "hail" "gust"
                 "freeze" "frost" "fog" "drizzle" "clear" "bucket" "blow")
                (:with theme) (:o theme) nil))

(define-mixin-category weekend-56
  :specializes subcategorization-pattern
  :mixins (np-v-pp.location with-theme has-location)
  :binds ((sparser::location location) (sparser::theme physical-agent))
  :realization (:verb
                ("winter" "weekend" "vacation" "summer" "sojourn" "overnight"
                 "junket" "honeymoon" "holiday" "december")
                (:s theme :loc location)))

(define-mixin-category wink-40.3.1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.theme np-v np-v-pp.recipient np-v-pp.theme np-v-np
           with-agent with-patient with-theme with-recipient)
  :binds ((sparser::recipient physical-agent) (sparser::theme speech-act)
          (sparser::agent physical-agent))
  :realization (:verb
                ("wink" "wave" "squint" "shrug" "point" "nod" "gesture" "clap"
                 "blink" "beckon")
                (:s agent :o theme) (:s agent :in theme)
                (:s agent :dest_dir recipient) (:s agent)
                (:s agent :o patient :in theme) (:s agent :o patient)))

(define-mixin-category wipe_instr-10.4.2
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.initial_location np-v-np.initial_location np-v
           np-v-np-adjp-result with-agent with-theme with-source
           with-destination with-instrument with-result)
  :binds ((sparser::instrument (:and/or physical physical-agent))
          (sparser::destination location) (sparser::source location)
          (sparser::theme (:and/or physical physical-agent))
          (sparser::agent (:or physical-agent physical-object)))
  :realization (:verb
                ("towel" "squeegee" "sponge" "sandpaper" "plough" "iron"
                 "hoover" "filter" "file")
                (:s agent :io source :o result) (:s agent) (:s agent :o source)
                (:s agent :o theme :src source)))

(define-mixin-category wipe_instr-10.4.2-1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.destination wipe_instr-10.4.2)
  :realization (:verb
                ("vacuum" "siphon" "shovel" "shear" "rake" "plow" "mop" "hose"
                 "comb" "brush")
                (:s agent :o theme :dest_conf destination)))

(define-mixin-category wipe_manner-10.4.1
  :specializes subcategorization-pattern
  :mixins (np-v-np-pp.source np-v-np.source np-v-np.theme with-agent with-theme
           with-source with-destination)
  :binds ((sparser::destination location) (sparser::source location)
          (sparser::theme (:and/or physical physical-agent)))
  :realization (:verb
                ("wring" "winnow" "whisk" "weed" "unload" "trim" "strain"
                 "soak" "skim" "smooth" "shave" "purge" "polish" "offload"
                 "leach" "flush" "expurgate" "expunge" "exorcise" "distil"
                 "distill" "buff")
                (:s agent :o theme) (:s agent :o source)
                (:s agent :o theme :src source)))

(define-mixin-category wipe_manner-10.4.1-1
  :specializes subcategorization-pattern
  :mixins (np-v-pp-conative with-source wipe_manner-10.4.1)
  :binds ((sparser::source region))
  :realization (:verb
                ("wipe" "wear" "wash" "sweep" "swab" "suction" "suck" "strip"
                 "squeeze" "scrub" "scratch" "scrape" "scour" "rub" "rinse"
                 "prune" "pluck" "lick" "erase" "dust" "dab" "bail")
                (:s agent :o source)))

(define-mixin-category wish-62
  :specializes subcategorization-pattern
  :mixins (np-v-for-np-s_inf np-v-np np-v-np-to-be-adj np-v-np-adj np-v-that-s
           np-v-s_inf with-experiencer with-stimulus)
  :binds ((sparser::experiencer (:or physical-agent company)))
  :realization (:verb
                ("yen" "imagine" "dream" "aim" "think" "propose" "plan"
                 "intend" "wish" "expect")
                (:s experiencer :to-comp stimulus)
                (:s experiencer :thatcomp stimulus)
                (:s experiencer :np_ppart stimulus)
                (:s experiencer :to_be stimulus)
                (:s experiencer :c stimulus)
                (:s experiencer :for_comp stimulus)))

(define-mixin-category withdraw-82
  :specializes subcategorization-pattern
  :mixins (with-agent with-source)
  :binds ((sparser::agent (:and/or physical-agent company)))
  :realization (:verb nil))

(define-mixin-category withdraw-82-1
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.source np-v-pp.source-s_ing withdraw-82)
  :realization (:verb
                (("pull" :prep "out") ("bow" :prep "out")
                 ("wriggle" :prep "out") ("get" :prep "out")
                 ("chicken" :prep "out") ("back" :prep "out"))
                (:s agent :of source) (:s agent)))

(define-mixin-category withdraw-82-2
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.source np-v-pp.source-s_ing withdraw-82)
  :realization (:verb
                (("back" :prep "down") ("back" :prep "off")
                 ("get" :prep "away"))
                (:s agent :from source) (:s agent)))

(define-mixin-category withdraw-82-3
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.source withdraw-82)
  :realization (:verb ("retire" ("pull" :prep "away") "retreat" "withdraw")
                (:s agent :from source) (:s agent)))

(define-mixin-category work-73.2
  :specializes subcategorization-pattern
  :mixins (np-v np-v-pp.theme np-v-pp.co-agent-pp.theme np-v-pp.theme-s_ing
           np-v-pp.co-agent-pp.theme-s_ing with-agent with-agent with-theme)
  :binds ((sparser::agent (:or (pronoun physical-agent)))
          (sparser::agent (:or physical-agent company)))
  :realization (:verb
                ("work" ("slog" :prep "away") ("plug" :prep "away") "labour"
                 "labor" ("bang" :prep "away"))
                (:s agent :with agent :at theme) (:s agent :at theme)
                (:s agent :with agent :on theme) (:s agent :on theme)
                (:s agent)))
