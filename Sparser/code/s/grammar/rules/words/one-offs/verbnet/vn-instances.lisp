;; Written 18:31:48 9/10/2019

(in-package :sparser)

(define-category take.ABSORB-39.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("take" "take_in" "take" "ingest" "have" "consume")
      :etf SVO))

(define-category ingest.ABSORB-39.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ingest" "take_in" "take" "ingest" "have" "consume")
      :etf SVO))

(define-category absorb.ABSORB-39.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("absorb" "take_in" "absorb" "take_up" "take_in" "suck_up" "suck"
             "sop_up" "soak_up" "imbibe" "draw" "absorb")
      :etf SVO))

(define-category encourage.ACCEPT-77.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("encourage" "encourage" "promote" "further" "encourage" "boost"
             "advance")
      :etf SVO))

(define-category understand.ACCEPT-77.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("understand" "understand" "sympathize" "sympathise" "empathize"
             "empathise")
      :etf SVO))

(define-category buy.ACCEPT-77.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("buy" "buy")
      :etf SVO))

(define-category accept.ACCEPT-77.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("accept" "swallow" "live_with" "accept" "accept")
      :etf SVO))

(define-category steer.ACCOMPANY-51.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("steer" "steer" "guide" "steer" "point" "manoeuvre" "manoeuver"
             "maneuver" "head" "guide" "direct" "channelize" "channelise")
      :etf SVO))

(define-category shepherd.ACCOMPANY-51.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shepherd" "shepherd")
      :etf SVO))

(define-category misdirect.ACCOMPANY-51.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("misdirect" "misdirect" "misaddress" "mislead" "misguide"
             "misdirect" "lead_astray")
      :etf SVO))

(define-category lead.ACCOMPANY-51.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lead" "take" "lead" "guide" "direct" "conduct")
      :etf SVO))

(define-category guide.ACCOMPANY-51.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("guide" "run" "pass" "guide" "draw" "take" "lead" "guide" "direct"
             "conduct" "steer" "point" "manoeuvre" "manoeuver" "maneuver"
             "head" "guide" "direct" "channelize" "channelise")
      :etf SVO))

(define-category escort.ACCOMPANY-51.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("escort" "see" "escort" "escort")
      :etf SVO))

(define-category conduct.ACCOMPANY-51.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("conduct" "take" "lead" "guide" "direct" "conduct")
      :etf SVO))

(define-category accompany.ACCOMPANY-51.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("accompany" "keep_company" "company" "companion" "accompany"
             "accompany")
      :etf SVO))

(define-category engage_in.ACT-114
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category cause.ACT-114
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cause" "make" "do" "cause")
      :etf SVO))

(define-category fulfill.ACT-114
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fulfill" "fulfill" "fulfil" "execute" "carry_through" "carry_out"
             "action" "accomplish")
      :etf SVO))

(define-category execute.ACT-114
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("execute" "fulfill" "fulfil" "execute" "carry_through" "carry_out"
             "action" "accomplish")
      :etf SVO))

(define-category conduct.ACT-114
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("conduct" "deal" "conduct" "carry_on" "lead" "direct" "conduct")
      :etf SVO))

(define-category carry_through.ACT-114
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "fulfill" "fulfil" "execute" "carry_through" "carry_out"
             "action" "accomplish")
      :etf SVO))

(define-category carry_out.ACT-114
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "fulfill" "fulfil" "execute" "carry_through" "carry_out"
             "action" "accomplish")
      :etf SVO))

(define-category action.ACT-114
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("action" "fulfill" "fulfil" "execute" "carry_through" "carry_out"
             "action" "accomplish")
      :etf SVO))

(define-category assimilate.ADJUST-26.9
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("assimilate" "assimilate")
      :etf SVO))

(define-category readapt.ADJUST-26.9
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("readapt" "readjust" "readapt")
      :etf SVO))

(define-category readjust.ADJUST-26.9
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("readjust" "readjust" "readapt")
      :etf SVO))

(define-category fit.ADJUST-26.9
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fit" "fit")
      :etf SVO))

(define-category gear.ADJUST-26.9
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gear" "pitch" "gear")
      :etf SVO))

(define-category adjust.ADJUST-26.9
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("adjust" "conform" "adjust" "adapt")
      :etf SVO))

(define-category conform.ADJUST-26.9
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("conform" "conform" "adjust" "adapt")
      :etf SVO))

(define-category accommodate.ADJUST-26.9
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("accommodate" "reconcile" "conciliate" "accommodate" "adapt"
             "accommodate")
      :etf SVO))

(define-category adapt.ADJUST-26.9
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("adapt" "conform" "adjust" "adapt")
      :etf SVO))

(define-category suffer.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("suffer" "suffer" "suffer" "hurt" "suffer")
      :etf SVO))

(define-category rue.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rue" "rue" "repent" "regret")
      :etf SVO))

(define-category resent.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("resent" "resent" "begrudge")
      :etf SVO))

(define-category pity.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pity" "sympathize_with" "pity" "feel_for" "condole_with"
             "compassionate")
      :etf SVO))

(define-category mourn.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mourn" "mourn")
      :etf SVO))

(define-category loathe.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("loathe" "loathe" "execrate" "abominate" "abhor")
      :etf SVO))

(define-category lament.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lament" "lament" "deplore" "bewail" "bemoan")
      :etf SVO))

(define-category execrate.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("execrate" "loathe" "execrate" "abominate" "abhor")
      :etf SVO))

(define-category envy.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("envy" "envy" "begrudge" "envy")
      :etf SVO))

(define-category dread.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dread" "fear" "dread")
      :etf SVO))

(define-category distrust.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("distrust" "suspect" "mistrust" "distrust")
      :etf SVO))

(define-category deplore.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deplore" "lament" "deplore" "bewail" "bemoan" "deplore")
      :etf SVO))

(define-category abhor.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("abhor" "loathe" "execrate" "abominate" "abhor")
      :etf SVO))

(define-category worship.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("worship" "worship" "worship" "revere" "idolize" "idolise"
             "hero-worship")
      :etf SVO))

(define-category venerate.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("venerate" "venerate" "reverence" "revere" "fear")
      :etf SVO))

(define-category value.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("value" "value" "respect" "prize" "prise" "esteem" "value"
             "treasure" "prize" "appreciate")
      :etf SVO))

(define-category trust.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trust" "trust" "swear" "rely" "bank")
      :etf SVO))

(define-category treasure.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("treasure" "treasure" "hold_dear" "cherish" "care_for" "value"
             "treasure" "prize" "appreciate")
      :etf SVO))

(define-category tolerate.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tolerate" "tolerate" "support" "suffer" "stomach" "stick_out"
             "stand" "put_up" "endure" "digest" "brook" "bear" "abide")
      :etf SVO))

(define-category support.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("support" "tolerate" "support" "suffer" "stomach" "stick_out"
             "stand" "put_up" "endure" "digest" "brook" "bear" "abide"
             "support" "plunk_for" "plump_for" "indorse" "endorse" "back"
             "support" "back_up")
      :etf SVO))

(define-category stand.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stand" "tolerate" "support" "suffer" "stomach" "stick_out"
             "stand" "put_up" "endure" "digest" "brook" "bear" "abide")
      :etf SVO))

(define-category savor.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("savor" "savour" "savor" "relish" "enjoy" "bask")
      :etf SVO))

(define-category revere.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("revere" "venerate" "reverence" "revere" "fear" "worship" "revere"
             "idolize" "idolise" "hero-worship")
      :etf SVO))

(define-category relish.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("relish" "savour" "savor" "relish" "enjoy" "bask")
      :etf SVO))

(define-category prize.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("prize" "value" "respect" "prize" "prise" "esteem" "value"
             "treasure" "prize" "appreciate")
      :etf SVO))

(define-category reaffirm.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reaffirm")
      :etf SVO))

(define-category affirm.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("affirm")
      :etf SVO))

(define-category prefer.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("prefer")
      :etf SVO))

(define-category mistrust.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mistrust" "suspect" "mistrust" "distrust")
      :etf SVO))

(define-category idolize.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("idolize" "worship" "revere" "idolize" "idolise" "hero-worship")
      :etf SVO))

(define-category grudge.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grudge")
      :etf SVO))

(define-category fancy.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fancy" "take_to" "go_for" "fancy")
      :etf SVO))

(define-category exalt.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("exalt" "proclaim" "laud" "glorify" "extol" "exalt")
      :etf SVO))

(define-category esteem.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("esteem" "value" "respect" "prize" "prise" "esteem")
      :etf SVO))

(define-category detest.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("detest" "hate" "detest")
      :etf SVO))

(define-category deify.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deify")
      :etf SVO))

(define-category cherish.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cherish" "treasure" "hold_dear" "cherish" "care_for")
      :etf SVO))

(define-category bewail.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bewail")
      :etf SVO))

(define-category bear.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bear")
      :etf SVO))

(define-category applaud.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("applaud")
      :etf SVO))

(define-category appreciate.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("appreciate" "value" "treasure" "prize" "appreciate" "appreciate")
      :etf SVO))

(define-category adore.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("adore" "adore")
      :etf SVO))

(define-category admire.ADMIRE-31.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("admire" "look_up_to" "admire")
      :etf SVO))

(define-category take.ADOPT-93
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("take" "take" "have" "accept")
      :etf SVO))

(define-category take_on.ADOPT-93
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "take_over" "take_on" "assume" "adopt" "take_on" "take"
             "assume" "adopt" "acquire")
      :etf SVO))

(define-category take_over.ADOPT-93
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "take_over" "take_on" "assume" "adopt" "usurp" "take_over"
             "seize" "assume" "arrogate")
      :etf SVO))

(define-category adopt.ADOPT-93
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("adopt" "follow" "espouse" "adopt")
      :etf SVO))

(define-category assume.ADOPT-93
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("assume" "take_up" "take" "strike" "assume" "take_on" "take"
             "assume" "adopt" "acquire" "take_over" "take_on" "assume" "adopt")
      :etf SVO))

(define-category abide-by.ADOPT-93
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("abide-by" "follow" "comply" "abide_by")
      :etf SVO))

(define-category tolerate.ALLOW-64.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tolerate" "tolerate" "permit" "allow")
      :etf SVO))

(define-category sanction.ALLOW-64.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sanction" "sanction" "sanction" "okay" "o.k." "approve")
      :etf SVO))

(define-category endorse.ALLOW-64.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("endorse")
      :etf SVO))

(define-category authorize.ALLOW-64.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("authorize")
      :etf SVO))

(define-category approve.ALLOW-64.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("approve" "approve" "sanction" "okay" "o.k." "approve")
      :etf SVO))

(define-category overlap.AMALGAMATE-22.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overlap")
      :etf SVO))

(define-category match.AMALGAMATE-22.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("match" "twin" "pair" "mate" "match" "couple")
      :etf SVO))

(define-category integrate.AMALGAMATE-22.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("integrate" "integrate" "integrate" "incorporate")
      :etf SVO))

(define-category incorporate.AMALGAMATE-22.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("incorporate" "incorporate" "integrate" "incorporate")
      :etf SVO))

(define-category couple.AMALGAMATE-22.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("couple" "couple_up" "couple_on" "couple" "twin" "pair" "mate"
             "match" "couple")
      :etf SVO))

(define-category identity.AMALGAMATE-22.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("identity")
      :etf SVO))

(define-category integrate.AMALGAMATE-22.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("integrate" "integrate" "integrate" "incorporate")
      :etf SVO))

(define-category incorporate.AMALGAMATE-22.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("incorporate" "incorporate" "integrate" "incorporate")
      :etf SVO))

(define-category confuse.AMALGAMATE-22.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("confuse" "mix_up" "jumble" "confuse" "confuse" "confound")
      :etf SVO))

(define-category confederate.AMALGAMATE-22.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("confederate" "confederate" "confederate" "band_together")
      :etf SVO))

(define-category compare.AMALGAMATE-22.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("compare" "liken" "equate" "compare" "compare" "compare")
      :etf SVO))

(define-category affiliate.AMALGAMATE-22.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("affiliate" "consort" "assort" "associate" "affiliate" "affiliate")
      :etf SVO))

(define-category pair.AMALGAMATE-22.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pair" "pair" "mate" "couple" "copulate" "twin" "pair" "mate"
             "match" "couple" "partner_off" "pair_off" "pair" "couple")
      :etf SVO))

(define-category muddle.AMALGAMATE-22.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("muddle" "puddle" "muddle" "addle")
      :etf SVO))

(define-category entangle.AMALGAMATE-22.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("entangle" "mire" "entangle")
      :etf SVO))

(define-category conjoin.AMALGAMATE-22.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("conjoin" "join" "conjoin")
      :etf SVO))

(define-category oppose.AMALGAMATE-22.2-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("oppose" "play_off" "pit" "oppose" "match")
      :etf SVO))

(define-category smite.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("smite" "smite")
      :etf SVO))

(define-category roil.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("roil")
      :etf SVO))

(define-category wow.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wow" "wow")
      :etf SVO))

(define-category wound.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wound" "wound" "spite" "offend" "injure" "hurt" "bruise")
      :etf SVO))

(define-category worry.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("worry" "worry" "occupy" "interest" "concern" "worry" "vex")
      :etf SVO))

(define-category weary.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("weary" "weary" "wear_upon" "wear_out" "wear_down" "wear"
             "tire_out" "tire" "outwear" "jade" "fatigue" "fag_out" "fag")
      :etf SVO))

(define-category vex.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("vex" "vex" "rile" "rag" "nettle" "nark" "irritate" "gravel"
             "get_to" "get_at" "devil" "chafe" "bother" "annoy")
      :etf SVO))

(define-category upset.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("upset" "upset" "trouble" "disturb" "upset" "untune" "disconcert"
             "discompose" "discomfit")
      :etf SVO))

(define-category uplift.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("uplift" "uplift" "pick_up" "lift_up" "intoxicate" "elate")
      :etf SVO))

(define-category unsettle.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unsettle" "unsettle" "unnerve" "faze" "enervate")
      :etf SVO))

(define-category unnerve.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unnerve" "unsettle" "unnerve" "faze" "enervate")
      :etf SVO))

(define-category try.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("try" "try")
      :etf SVO))

(define-category trouble.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trouble" "unhinge" "trouble" "perturb" "distract" "disquiet"
             "disorder" "cark" "upset" "trouble" "disturb")
      :etf SVO))

(define-category transport.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("transport" "transport" "ravish" "enthrall" "enthral" "enrapture"
             "enchant" "delight")
      :etf SVO))

(define-category transfix.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("transfix")
      :etf SVO))

(define-category touch.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("touch" "touch" "stir")
      :etf SVO))

(define-category torture.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("torture")
      :etf SVO))

(define-category torment.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("torment" "torment" "rag" "frustrate" "dun" "crucify" "bedevil"
             "torture" "torment" "rack" "excruciate")
      :etf SVO))

(define-category titillate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("titillate" "titillate")
      :etf SVO))

(define-category tire.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tire" "tire" "bore")
      :etf SVO))

(define-category tickle.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tickle" "vibrate" "tickle" "thrill")
      :etf SVO))

(define-category throw.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("throw" "throw" "fuddle" "fox" "discombobulate" "confuse"
             "confound" "befuddle" "bedevil" "throw" "discombobulate"
             "bewilder" "bemuse")
      :etf SVO))

(define-category thrill.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("thrill" "tickle_pink" "thrill" "inebriate" "exhilarate" "exalt"
             "beatify" "vibrate" "tickle" "thrill" "thrill")
      :etf SVO))

(define-category threaten.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("threaten" "threaten" "peril" "menace" "jeopardize" "jeopardise"
             "imperil" "endanger")
      :etf SVO))

(define-category terrorize.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("terrorize" "terrorize" "terrorise" "terrify")
      :etf SVO))

(define-category terrify.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("terrify" "terrorize" "terrorise" "terrify")
      :etf SVO))

(define-category tempt.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tempt" "tempt" "tempt" "invite")
      :etf SVO))

(define-category tantalize.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tantalize" "twit" "tease" "taunt" "tantalize" "tantalise" "ride"
             "razz" "rally" "rag" "cod" "bait")
      :etf SVO))

(define-category surprise.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("surprise" "surprise")
      :etf SVO))

(define-category stupefy.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stupefy" "vex" "stupefy" "stick" "puzzle" "pose" "perplex"
             "nonplus" "mystify" "gravel" "get" "flummox" "dumbfound"
             "bewilder" "beat" "baffle" "amaze" "stupefy" "besot")
      :etf SVO))

(define-category stun.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stun" "stun" "daze" "bedaze")
      :etf SVO))

(define-category stump.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stump" "stump" "mix_up")
      :etf SVO))

(define-category strike.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("strike" "strike" "move" "impress" "affect")
      :etf SVO))

(define-category stir.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stir" "stir" "raise" "put_forward" "invoke" "evoke" "conjure_up"
             "conjure" "call_forth" "call_down" "bring_up" "arouse" "stir"
             "stimulate" "shake_up" "shake" "excite")
      :etf SVO))

(define-category sting.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sting" "sting")
      :etf SVO))

(define-category stimulate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stimulate" "stir" "stimulate" "excite" "stimulate" "perk_up"
             "energize" "energise" "brace" "arouse" "stir" "stimulate"
             "shake_up" "shake" "excite")
      :etf SVO))

(define-category startle.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("startle" "startle" "galvanize" "galvanise")
      :etf SVO))

(define-category stagger.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stagger" "stagger")
      :etf SVO))

(define-category spook.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("spook" "spook")
      :etf SVO))

(define-category spellbind.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("spellbind" "spellbind" "mesmerize" "mesmerise" "magnetize"
             "magnetise" "bewitch")
      :etf SVO))

(define-category soothe.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("soothe" "soothe" "solace" "console" "comfort")
      :etf SVO))

(define-category solace.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("solace" "soothe" "solace" "console" "comfort")
      :etf SVO))

(define-category sober.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sober" "sober")
      :etf SVO))

(define-category sicken.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sicken" "sicken" "revolt" "nauseate" "disgust" "churn_up")
      :etf SVO))

(define-category shock.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shock" "shock" "shock" "scandalize" "scandalise" "outrage"
             "offend" "appall" "appal" "take_aback" "shock" "floor"
             "blow_out_of_the_water" "ball_over")
      :etf SVO))

(define-category shame.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shame" "shame" "shame" "dishonour" "dishonor" "disgrace"
             "attaint")
      :etf SVO))

(define-category shake.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shake" "stir" "stimulate" "shake_up" "shake" "excite")
      :etf SVO))

(define-category scare.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scare" "scare_off" "scare_away" "scare" "pall" "frighten_off"
             "frighten_away" "daunt" "dash" "scare" "frighten" "fright"
             "affright")
      :etf SVO))

(define-category scandalize.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scandalize" "shock" "scandalize" "scandalise" "outrage" "offend"
             "appall" "appal")
      :etf SVO))

(define-category satisfy.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("satisfy" "satisfy" "gratify")
      :etf SVO))

(define-category sadden.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sadden" "sadden")
      :etf SVO))

(define-category ruffle.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ruffle" "ruffle" "ruffle")
      :etf SVO))

(define-category rile.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rile" "vex" "rile" "rag" "nettle" "nark" "irritate" "gravel"
             "get_to" "get_at" "devil" "chafe" "bother" "annoy")
      :etf SVO))

(define-category revolt.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("revolt" "sicken" "revolt" "nauseate" "disgust" "churn_up"
             "revolt" "repel" "gross_out" "disgust")
      :etf SVO))

(define-category revitalize.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("revitalize" "revitalize" "regenerate")
      :etf SVO))

(define-category repulse.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("repulse" "repulse" "repel")
      :etf SVO))

(define-category repel.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("repel" "revolt" "repel" "gross_out" "disgust" "repulse" "repel")
      :etf SVO))

(define-category relieve.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("relieve" "relieve" "still" "relieve" "ease" "allay")
      :etf SVO))

(define-category relax.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("relax" "unwind" "unstrain" "unlax" "relax" "make_relaxed"
             "loosen_up")
      :etf SVO))

(define-category rejuvenate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rejuvenate")
      :etf SVO))

(define-category refresh.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("refresh" "refresh" "freshen")
      :etf SVO))

(define-category recharge.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("recharge")
      :etf SVO))

(define-category reassure.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reassure" "reassure" "reassure" "assure")
      :etf SVO))

(define-category ravish.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ravish")
      :etf SVO))

(define-category rankle.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rankle" "rankle" "grate" "fret" "eat_into")
      :etf SVO))

(define-category rag.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rag" "trounce" "take_to_task" "scold" "reproof" "reprimand"
             "remonstrate" "rebuke" "rag" "lecture" "lambaste" "lambast" "jaw"
             "have_words" "dress_down" "chide" "chew_up" "chew_out"
             "call_on_the_carpet" "call_down" "berate" "bawl_out" "twit"
             "tease" "taunt" "tantalize" "tantalise" "ride" "razz" "rally"
             "rag" "cod" "bait" "vex" "rile" "rag" "nettle" "nark" "irritate"
             "gravel" "get_to" "get_at" "devil" "chafe" "bother" "annoy"
             "torment" "rag" "frustrate" "dun" "crucify" "bedevil")
      :etf SVO))

(define-category quench.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("quench")
      :etf SVO))

(define-category puzzle.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("puzzle" "vex" "stupefy" "stick" "puzzle" "pose" "perplex"
             "nonplus" "mystify" "gravel" "get" "flummox" "dumbfound"
             "bewilder" "beat" "baffle" "amaze")
      :etf SVO))

(define-category provoke.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("provoke" "provoke" "plague" "molest" "hassle" "harry" "harass"
             "chivy" "chivvy" "chevy" "chevvy" "beset" "raise" "provoke"
             "kindle" "fire" "evoke" "enkindle" "elicit" "arouse")
      :etf SVO))

(define-category preoccupy.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("preoccupy" "preoccupy")
      :etf SVO))

(define-category plague.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("plague" "provoke" "plague" "molest" "hassle" "harry" "harass"
             "chivy" "chivvy" "chevy" "chevvy" "beset")
      :etf SVO))

(define-category placate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("placate" "placate" "pacify" "mollify" "lenify" "gruntle" "gentle"
             "conciliate" "assuage" "appease")
      :etf SVO))

(define-category pique.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pique" "pique" "offend")
      :etf SVO))

(define-category pester.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pester")
      :etf SVO))

(define-category perturb.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("perturb" "unhinge" "trouble" "perturb" "distract" "disquiet"
             "disorder" "cark")
      :etf SVO))

(define-category perplex.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("perplex" "vex" "stupefy" "stick" "puzzle" "pose" "perplex"
             "nonplus" "mystify" "gravel" "get" "flummox" "dumbfound"
             "bewilder" "beat" "baffle" "amaze")
      :etf SVO))

(define-category peeve.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("peeve" "peeve")
      :etf SVO))

(define-category pacify.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pacify" "placate" "pacify" "mollify" "lenify" "gruntle" "gentle"
             "conciliate" "assuage" "appease")
      :etf SVO))

(define-category overwhelm.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overwhelm" "whelm" "sweep_over" "overwhelm" "overtake"
             "overpower" "overcome")
      :etf SVO))

(define-category overawe.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overawe" "overawe" "cow")
      :etf SVO))

(define-category outrage.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("outrage" "shock" "scandalize" "scandalise" "outrage" "offend"
             "appall" "appal")
      :etf SVO))

(define-category offend.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("offend" "wound" "spite" "offend" "injure" "hurt" "bruise" "shock"
             "scandalize" "scandalise" "outrage" "offend" "appall" "appal"
             "pique" "offend")
      :etf SVO))

(define-category occupy.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("occupy")
      :etf SVO))

(define-category obsess.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("obsess" "obsess" "haunt" "ghost")
      :etf SVO))

(define-category numb.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("numb" "numb" "dull" "blunt" "benumb")
      :etf SVO))

(define-category nonplus.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nonplus" "vex" "stupefy" "stick" "puzzle" "pose" "perplex"
             "nonplus" "mystify" "gravel" "get" "flummox" "dumbfound"
             "bewilder" "beat" "baffle" "amaze")
      :etf SVO))

(define-category nettle.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nettle" "vex" "rile" "rag" "nettle" "nark" "irritate" "gravel"
             "get_to" "get_at" "devil" "chafe" "bother" "annoy")
      :etf SVO))

(define-category nauseate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nauseate" "sicken" "revolt" "nauseate" "disgust" "churn_up")
      :etf SVO))

(define-category mystify.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mystify" "vex" "stupefy" "stick" "puzzle" "pose" "perplex"
             "nonplus" "mystify" "gravel" "get" "flummox" "dumbfound"
             "bewilder" "beat" "baffle" "amaze")
      :etf SVO))

(define-category muddle.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("muddle" "puddle" "muddle" "addle")
      :etf SVO))

(define-category mortify.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mortify" "subdue" "mortify" "crucify")
      :etf SVO))

(define-category mollify.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mollify" "placate" "pacify" "mollify" "lenify" "gruntle" "gentle"
             "conciliate" "assuage" "appease")
      :etf SVO))

(define-category molest.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("molest")
      :etf SVO))

(define-category misguide.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("misguide" "misguide" "misadvise" "mislead" "misguide" "misdirect"
             "lead_astray")
      :etf SVO))

(define-category miff.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("miff" "miff")
      :etf SVO))

(define-category mesmerize.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mesmerize" "spellbind" "mesmerize" "mesmerise" "magnetize"
             "magnetise" "bewitch")
      :etf SVO))

(define-category menace.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("menace")
      :etf SVO))

(define-category madden.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("madden" "madden" "madden")
      :etf SVO))

(define-category lull.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lull" "lull")
      :etf SVO))

(define-category jolt.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("jolt" "jolt")
      :etf SVO))

(define-category jollify.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("jollify")
      :etf SVO))

(define-category jar.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("jar" "jar")
      :etf SVO))

(define-category jade.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("jade")
      :etf SVO))

(define-category irritate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("irritate" "vex" "rile" "rag" "nettle" "nark" "irritate" "gravel"
             "get_to" "get_at" "devil" "chafe" "bother" "annoy")
      :etf SVO))

(define-category irk.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("irk" "irk" "gall")
      :etf SVO))

(define-category invigorate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("invigorate" "reinvigorate" "invigorate" "quicken" "invigorate")
      :etf SVO))

(define-category intrigue.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("intrigue" "intrigue" "fascinate")
      :etf SVO))

(define-category intoxicate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("intoxicate" "uplift" "pick_up" "lift_up" "intoxicate" "elate")
      :etf SVO))

(define-category intimidate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("intimidate" "intimidate")
      :etf SVO))

(define-category interest.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("interest" "interest")
      :etf SVO))

(define-category insult.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("insult" "insult" "diss" "affront")
      :etf SVO))

(define-category inspire.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("inspire" "prompt" "instigate" "inspire")
      :etf SVO))

(define-category infuriate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("infuriate" "infuriate" "incense" "exasperate")
      :etf SVO))

(define-category inflame.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("inflame")
      :etf SVO))

(define-category incense.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("incense" "infuriate" "incense" "exasperate")
      :etf SVO))

(define-category impress.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("impress" "instill" "ingrain" "impress" "impress" "strike" "move"
             "impress" "affect")
      :etf SVO))

(define-category impair.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("impair")
      :etf SVO))

(define-category hypnotize.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hypnotize")
      :etf SVO))

(define-category hurt.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hurt" "injure" "hurt")
      :etf SVO))

(define-category humiliate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("humiliate" "mortify" "humiliate" "humble" "chagrin" "abase")
      :etf SVO))

(define-category humble.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("humble" "mortify" "humiliate" "humble" "chagrin" "abase" "humble")
      :etf SVO))

(define-category horrify.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("horrify" "horrify" "dismay" "appall" "appal" "alarm")
      :etf SVO))

(define-category hearten.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hearten" "recreate" "hearten" "embolden" "cheer")
      :etf SVO))

(define-category haunt.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("haunt" "obsess" "haunt" "ghost")
      :etf SVO))

(define-category harm.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("harm")
      :etf SVO))

(define-category harass.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("harass" "provoke" "plague" "molest" "hassle" "harry" "harass"
             "chivy" "chivvy" "chevy" "chevvy" "beset")
      :etf SVO))

(define-category grieve.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grieve" "grieve" "aggrieve")
      :etf SVO))

(define-category gratify.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gratify" "pander" "indulge" "gratify" "satisfy" "gratify")
      :etf SVO))

(define-category gladden.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gladden" "gladden" "joy" "gladden")
      :etf SVO))

(define-category galvanize.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("galvanize" "startle" "galvanize" "galvanise")
      :etf SVO))

(define-category gall.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gall" "irk" "gall")
      :etf SVO))

(define-category fuddle.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fuddle" "throw" "fuddle" "fox" "discombobulate" "confuse"
             "confound" "befuddle" "bedevil")
      :etf SVO))

(define-category frustrate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("frustrate" "torment" "rag" "frustrate" "dun" "crucify" "bedevil")
      :etf SVO))

(define-category frighten.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("frighten" "scare" "frighten" "fright" "affright")
      :etf SVO))

(define-category fox.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fox" "throw" "fuddle" "fox" "discombobulate" "confuse" "confound"
             "befuddle" "bedevil")
      :etf SVO))

(define-category fluster.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fluster" "fluster" "fluster")
      :etf SVO))

(define-category flummox.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("flummox" "vex" "stupefy" "stick" "puzzle" "pose" "perplex"
             "nonplus" "mystify" "gravel" "get" "flummox" "dumbfound"
             "bewilder" "beat" "baffle" "amaze")
      :etf SVO))

(define-category floor.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("floor" "take_aback" "shock" "floor" "blow_out_of_the_water"
             "ball_over")
      :etf SVO))

(define-category flatter.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("flatter" "flatter" "blandish")
      :etf SVO))

(define-category flabbergast.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("flabbergast" "flabbergast" "bowl_over" "boggle")
      :etf SVO))

(define-category faze.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("faze" "unsettle" "unnerve" "faze" "enervate")
      :etf SVO))

(define-category fatigue.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fatigue")
      :etf SVO))

(define-category fascinate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fascinate" "trance" "fascinate" "entrance" "enchant" "enamour"
             "enamor" "charm" "catch" "capture" "captivate" "bewitch" "beguile"
             "becharm" "intrigue" "fascinate")
      :etf SVO))

(define-category exhilarate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("exhilarate" "tickle_pink" "thrill" "inebriate" "exhilarate"
             "exalt" "beatify")
      :etf SVO))

(define-category exhaust.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("exhaust" "wash_up" "tucker_out" "tucker" "exhaust" "beat")
      :etf SVO))

(define-category excite.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("excite" "stir" "stimulate" "shake_up" "shake" "excite" "wind_up"
             "turn_on" "sex" "excite" "arouse" "turn_on" "rouse" "excite"
             "commove" "charge_up" "charge" "agitate" "excite")
      :etf SVO))

(define-category exasperate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("exasperate" "infuriate" "incense" "exasperate" "exasperate"
             "exacerbate" "aggravate")
      :etf SVO))

(define-category entrance.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("entrance" "trance" "fascinate" "entrance" "enchant" "enamour"
             "enamor" "charm" "catch" "capture" "captivate" "bewitch" "beguile"
             "becharm")
      :etf SVO))

(define-category entice.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("entice" "tempt" "lure" "entice")
      :etf SVO))

(define-category enthuse.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("enthuse" "enthuse")
      :etf SVO))

(define-category enthrall.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("enthrall" "transport" "ravish" "enthrall" "enthral" "enrapture"
             "enchant" "delight")
      :etf SVO))

(define-category entertain.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("entertain" "entertain")
      :etf SVO))

(define-category enrapture.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("enrapture" "transport" "ravish" "enthrall" "enthral" "enrapture"
             "enchant" "delight")
      :etf SVO))

(define-category enrage.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("enrage" "enrage")
      :etf SVO))

(define-category enliven.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("enliven")
      :etf SVO))

(define-category enlighten.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("enlighten" "irradiate" "enlighten")
      :etf SVO))

(define-category engross.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("engross" "occupy" "engross" "engage" "absorb" "steep" "soak_up"
             "plunge" "immerse" "engulf" "engross" "absorb")
      :etf SVO))

(define-category engage.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("engage" "occupy" "engross" "engage" "absorb")
      :etf SVO))

(define-category enflame.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("enflame")
      :etf SVO))

(define-category enervate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("enervate")
      :etf SVO))

(define-category encourage.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("encourage" "encourage")
      :etf SVO))

(define-category enchant.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("enchant" "trance" "fascinate" "entrance" "enchant" "enamour"
             "enamor" "charm" "catch" "capture" "captivate" "bewitch" "beguile"
             "becharm")
      :etf SVO))

(define-category embolden.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("embolden" "recreate" "hearten" "embolden" "cheer")
      :etf SVO))

(define-category embarrass.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("embarrass" "embarrass" "abash")
      :etf SVO))

(define-category electrify.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("electrify" "electrify")
      :etf SVO))

(define-category elate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("elate" "uplift" "pick_up" "lift_up" "intoxicate" "elate")
      :etf SVO))

(define-category dumbfound.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dumbfound" "vex" "stupefy" "stick" "puzzle" "pose" "perplex"
             "nonplus" "mystify" "gravel" "get" "flummox" "dumbfound"
             "bewilder" "beat" "baffle" "amaze")
      :etf SVO))

(define-category divert.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("divert")
      :etf SVO))

(define-category disturb.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disturb" "upset" "trouble" "disturb")
      :etf SVO))

(define-category distress.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("distress" "distress")
      :etf SVO))

(define-category distract.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("distract" "unhinge" "trouble" "perturb" "distract" "disquiet"
             "disorder" "cark")
      :etf SVO))

(define-category dissatisfy.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dissatisfy" "dissatisfy")
      :etf SVO))

(define-category disquiet.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disquiet" "unhinge" "trouble" "perturb" "distract" "disquiet"
             "disorder" "cark")
      :etf SVO))

(define-category displease.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("displease" "displease")
      :etf SVO))

(define-category dispirit.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dispirit" "get_down" "dispirit" "dismay" "depress" "demoralize"
             "demoralise" "deject" "cast_down")
      :etf SVO))

(define-category dismay.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dismay" "horrify" "dismay" "appall" "appal" "alarm" "get_down"
             "dispirit" "dismay" "depress" "demoralize" "demoralise" "deject"
             "cast_down")
      :etf SVO))

(define-category disillusion.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disillusion" "disillusion" "disenchant")
      :etf SVO))

(define-category dishonour.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dishonour" "shame" "dishonour" "dishonor" "disgrace" "attaint")
      :etf SVO))

(define-category dishearten.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dishearten" "put_off" "dishearten")
      :etf SVO))

(define-category disgust.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disgust" "sicken" "revolt" "nauseate" "disgust" "churn_up"
             "revolt" "repel" "gross_out" "disgust")
      :etf SVO))

(define-category disgruntle.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disgruntle" "disgruntle")
      :etf SVO))

(define-category disgrace.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disgrace" "take_down" "put_down" "disgrace" "demean" "degrade"
             "shame" "dishonour" "dishonor" "disgrace" "attaint")
      :etf SVO))

(define-category discourage.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("discourage" "discourage")
      :etf SVO))

(define-category discompose.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("discompose" "upset" "untune" "disconcert" "discompose"
             "discomfit")
      :etf SVO))

(define-category disconcert.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disconcert" "upset" "untune" "disconcert" "discompose"
             "discomfit" "put_off" "flurry" "disconcert" "confuse")
      :etf SVO))

(define-category discomfit.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("discomfit" "upset" "untune" "disconcert" "discompose" "discomfit")
      :etf SVO))

(define-category discombobulate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("discombobulate" "throw" "fuddle" "fox" "discombobulate" "confuse"
             "confound" "befuddle" "bedevil" "throw" "discombobulate"
             "bewilder" "bemuse")
      :etf SVO))

(define-category disarm.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disarm" "disarm")
      :etf SVO))

(define-category disappoint.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disappoint" "let_down" "disappoint")
      :etf SVO))

(define-category devastate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("devastate" "devastate")
      :etf SVO))

(define-category depress.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("depress" "get_down" "dispirit" "dismay" "depress" "demoralize"
             "demoralise" "deject" "cast_down")
      :etf SVO))

(define-category demoralize.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("demoralize" "get_down" "dispirit" "dismay" "depress" "demoralize"
             "demoralise" "deject" "cast_down")
      :etf SVO))

(define-category demolish.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("demolish" "smash" "demolish" "crush")
      :etf SVO))

(define-category delight.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("delight" "transport" "ravish" "enthrall" "enthral" "enrapture"
             "enchant" "delight" "please" "delight")
      :etf SVO))

(define-category deject.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deject" "get_down" "dispirit" "dismay" "depress" "demoralize"
             "demoralise" "deject" "cast_down")
      :etf SVO))

(define-category dazzle.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dazzle" "dazzle")
      :etf SVO))

(define-category daze.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("daze" "stun" "daze" "bedaze")
      :etf SVO))

(define-category daunt.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("daunt" "scare_off" "scare_away" "scare" "pall" "frighten_off"
             "frighten_away" "daunt" "dash")
      :etf SVO))

(define-category cut.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cut")
      :etf SVO))

(define-category crush.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crush" "smash" "demolish" "crush")
      :etf SVO))

(define-category cow.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cow" "overawe" "cow")
      :etf SVO))

(define-category convince.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("convince" "win_over" "convince" "convert")
      :etf SVO))

(define-category content.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("content" "content")
      :etf SVO))

(define-category console.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("console" "soothe" "solace" "console" "comfort")
      :etf SVO))

(define-category confuse.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("confuse" "put_off" "flurry" "disconcert" "confuse" "throw"
             "fuddle" "fox" "discombobulate" "confuse" "confound" "befuddle"
             "bedevil")
      :etf SVO))

(define-category confound.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("confound" "throw" "fuddle" "fox" "discombobulate" "confuse"
             "confound" "befuddle" "bedevil")
      :etf SVO))

(define-category comfort.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("comfort" "soothe" "solace" "console" "comfort")
      :etf SVO))

(define-category cloy.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cloy" "surfeit" "cloy")
      :etf SVO))

(define-category chill.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chill" "chill")
      :etf SVO))

(define-category cheer.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cheer" "chirk_up" "cheer_up" "cheer" "jolly_up" "jolly_along"
             "cheer_up" "cheer")
      :etf SVO))

(define-category charm.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("charm" "trance" "fascinate" "entrance" "enchant" "enamour"
             "enamor" "charm" "catch" "capture" "captivate" "bewitch" "beguile"
             "becharm")
      :etf SVO))

(define-category chagrin.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chagrin" "mortify" "humiliate" "humble" "chagrin" "abase")
      :etf SVO))

(define-category captivate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("captivate" "trance" "fascinate" "entrance" "enchant" "enamour"
             "enamor" "charm" "catch" "capture" "captivate" "bewitch" "beguile"
             "becharm")
      :etf SVO))

(define-category calm.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("calm" "tranquillize" "tranquillise" "tranquilize" "still"
             "quieten" "quiet" "lull" "calm_down" "calm")
      :etf SVO))

(define-category bug.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bug" "tease" "pester" "bug" "beleaguer" "badger")
      :etf SVO))

(define-category browbeat.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("browbeat" "swagger" "bully" "browbeat" "strong-arm" "push_around"
             "hector" "bullyrag" "bully" "browbeat" "boss_around" "ballyrag")
      :etf SVO))

(define-category bother.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bother" "bother" "bother" "vex" "rile" "rag" "nettle" "nark"
             "irritate" "gravel" "get_to" "get_at" "devil" "chafe" "bother"
             "annoy")
      :etf SVO))

(define-category bore.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bore" "tire" "bore")
      :etf SVO))

(define-category boggle.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("boggle" "flabbergast" "bowl_over" "boggle" "boggle")
      :etf SVO))

(define-category bewitch.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bewitch" "spellbind" "mesmerize" "mesmerise" "magnetize"
             "magnetise" "bewitch" "trance" "fascinate" "entrance" "enchant"
             "enamour" "enamor" "charm" "catch" "capture" "captivate" "bewitch"
             "beguile" "becharm")
      :etf SVO))

(define-category bewilder.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bewilder" "throw" "discombobulate" "bewilder" "bemuse" "vex"
             "stupefy" "stick" "puzzle" "pose" "perplex" "nonplus" "mystify"
             "gravel" "get" "flummox" "dumbfound" "bewilder" "beat" "baffle"
             "amaze")
      :etf SVO))

(define-category beguile.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("beguile" "trance" "fascinate" "entrance" "enchant" "enamour"
             "enamor" "charm" "catch" "capture" "captivate" "bewitch" "beguile"
             "becharm" "juggle" "hoodwink" "beguile")
      :etf SVO))

(define-category befuddle.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("befuddle")
      :etf SVO))

(define-category baffle.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("baffle" "vex" "stupefy" "stick" "puzzle" "pose" "perplex"
             "nonplus" "mystify" "gravel" "get" "flummox" "dumbfound"
             "bewilder" "beat" "baffle" "amaze")
      :etf SVO))

(define-category awe.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("awe" "awe")
      :etf SVO))

(define-category astound.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("astound" "astound" "astonish" "amaze")
      :etf SVO))

(define-category astonish.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("astonish" "astound" "astonish" "amaze")
      :etf SVO))

(define-category assuage.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("assuage" "placate" "pacify" "mollify" "lenify" "gruntle" "gentle"
             "conciliate" "assuage" "appease")
      :etf SVO))

(define-category arouse.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("arouse" "wind_up" "turn_on" "sex" "excite" "arouse" "stimulate"
             "perk_up" "energize" "energise" "brace" "arouse")
      :etf SVO))

(define-category appease.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("appease" "placate" "pacify" "mollify" "lenify" "gruntle" "gentle"
             "conciliate" "assuage" "appease")
      :etf SVO))

(define-category appall.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("appall" "horrify" "dismay" "appall" "appal" "alarm" "shock"
             "scandalize" "scandalise" "outrage" "offend" "appall" "appal")
      :etf SVO))

(define-category antagonize.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("antagonize" "counteract" "antagonize" "antagonise")
      :etf SVO))

(define-category annoy.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("annoy" "vex" "rile" "rag" "nettle" "nark" "irritate" "gravel"
             "get_to" "get_at" "devil" "chafe" "bother" "annoy")
      :etf SVO))

(define-category anger.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("anger" "see_red" "anger" "anger")
      :etf SVO))

(define-category amuse.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("amuse" "amuse" "divert" "disport" "amuse")
      :etf SVO))

(define-category amaze.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("amaze" "vex" "stupefy" "stick" "puzzle" "pose" "perplex"
             "nonplus" "mystify" "gravel" "get" "flummox" "dumbfound"
             "bewilder" "beat" "baffle" "amaze" "astound" "astonish" "amaze")
      :etf SVO))

(define-category alienate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("alienate" "estrange" "disaffect" "alienate" "alien")
      :etf SVO))

(define-category alarm.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("alarm" "horrify" "dismay" "appall" "appal" "alarm")
      :etf SVO))

(define-category agonize.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("agonize" "agonize" "agonise" "agonize" "agonise")
      :etf SVO))

(define-category agitate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("agitate" "turn_on" "rouse" "excite" "commove" "charge_up"
             "charge" "agitate")
      :etf SVO))

(define-category aggrieve.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("aggrieve")
      :etf SVO))

(define-category aggravate.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("aggravate" "exasperate" "exacerbate" "aggravate")
      :etf SVO))

(define-category affront.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("affront" "insult" "diss" "affront")
      :etf SVO))

(define-category afflict.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("afflict" "afflict")
      :etf SVO))

(define-category affect.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("affect" "strike" "move" "impress" "affect")
      :etf SVO))

(define-category abash.AMUSE-31.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("abash" "embarrass" "abash")
      :etf SVO))

(define-category nominate.APPOINT-29.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nominate" "nominate" "name" "constitute" "appoint" "nominate"
             "name" "make" "propose" "nominate" "put_up" "put_forward"
             "nominate")
      :etf SVO))

(define-category reelect.APPOINT-29.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reelect" "return" "reelect")
      :etf SVO))

(define-category upgrade.APPOINT-29.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("upgrade")
      :etf SVO))

(define-category adopt.APPOINT-29.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("adopt" "sweep_up" "espouse" "embrace" "adopt" "take_over"
             "take_on" "assume" "adopt" "take_up" "take_over" "borrow" "adopt"
             "follow" "espouse" "adopt")
      :etf SVO))

(define-category ordain.APPOINT-29.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ordain" "ordain" "ordinate" "order" "ordain" "consecrate")
      :etf SVO))

(define-category mark.APPOINT-29.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mark" "mark" "distinguish" "differentiate")
      :etf SVO))

(define-category proclaim.APPOINT-29.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("proclaim" "proclaim")
      :etf SVO))

(define-category install.APPOINT-29.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("install" "install" "instal")
      :etf SVO))

(define-category elect.APPOINT-29.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("elect" "elect")
      :etf SVO))

(define-category designate.APPOINT-29.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("designate" "designate" "denominate")
      :etf SVO))

(define-category crown.APPOINT-29.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crown" "crown" "coronate")
      :etf SVO))

(define-category coronate.APPOINT-29.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("coronate" "crown" "coronate")
      :etf SVO))

(define-category watch.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("watch" "watch" "watch_out" "watch" "look_out" "watch" "look_on"
             "watch" "view" "take_in" "see" "catch" "watch_over" "watch"
             "observe" "keep_an_eye_on" "follow" "watch")
      :etf SVO))

(define-category try_out.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "try_out" "try" "taste" "sample" "try_out" "experiment"
             "try_out" "try" "test" "prove" "examine" "essay")
      :etf SVO))

(define-category try_on.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "try_on" "try")
      :etf SVO))

(define-category try.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("try")
      :etf SVO))

(define-category test.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("test" "test" "quiz" "test" "screen" "try_out" "try" "test"
             "prove" "examine" "essay")
      :etf SVO))

(define-category taste.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("taste" "taste" "try_out" "try" "taste" "sample")
      :etf SVO))

(define-category survey.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("survey" "survey" "surveil" "follow" "survey")
      :etf SVO))

(define-category surveil.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("surveil" "survey" "surveil" "follow")
      :etf SVO))

(define-category study.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("study" "study" "examine" "canvass" "canvas" "analyze" "analyse")
      :etf SVO))

(define-category scrutinize.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scrutinize" "scrutinize" "scrutinise" "inspect" "audit"
             "take_stock" "size_up" "scrutinize" "scrutinise")
      :etf SVO))

(define-category scan.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scan" "skim" "scan" "run_down" "rake" "glance_over" "scan")
      :etf SVO))

(define-category sample.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sample" "try_out" "try" "taste" "sample")
      :etf SVO))

(define-category review.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("review" "review" "critique")
      :etf SVO))

(define-category research.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("research" "search" "research" "explore" "research")
      :etf SVO))

(define-category proofread.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("proofread" "proofread" "proof")
      :etf SVO))

(define-category peruse.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("peruse" "peruse")
      :etf SVO))

(define-category monitor.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("monitor" "supervise" "monitor")
      :etf SVO))

(define-category investigate.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("investigate" "investigate" "inquire" "enquire" "look_into"
             "investigate")
      :etf SVO))

(define-category inspect.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("inspect" "scrutinize" "scrutinise" "inspect" "audit" "visit"
             "inspect" "inspect")
      :etf SVO))

(define-category go_over.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "suss_out" "look_into" "go_over" "check_up_on" "check_over"
             "check_out" "check_into" "check")
      :etf SVO))

(define-category feel_out.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "sound_out" "feel_out" "check_out")
      :etf SVO))

(define-category evaluate.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("evaluate" "value" "valuate" "measure" "evaluate" "assess"
             "appraise")
      :etf SVO))

(define-category examine.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("examine" "see" "examine" "study" "examine" "canvass" "canvas"
             "analyze" "analyse")
      :etf SVO))

(define-category consult.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("consult" "refer" "look_up" "consult" "consult" "confer_with")
      :etf SVO))

(define-category check.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("check" "suss_out" "look_into" "go_over" "check_up_on"
             "check_over" "check_out" "check_into" "check")
      :etf SVO))

(define-category audit.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("audit" "scrutinize" "scrutinise" "inspect" "audit")
      :etf SVO))

(define-category assess.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("assess" "value" "valuate" "measure" "evaluate" "assess"
             "appraise")
      :etf SVO))

(define-category assay.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("assay" "assay")
      :etf SVO))

(define-category appraise.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("appraise" "value" "valuate" "measure" "evaluate" "assess"
             "appraise")
      :etf SVO))

(define-category analyze.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("analyze" "study" "examine" "canvass" "canvas" "analyze" "analyse")
      :etf SVO))

(define-category analyse.ASSESSMENT-34.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("analyse" "psychoanalyze" "psychoanalyse" "analyze" "analyse"
             "take_apart" "dissect" "break_down" "analyze" "analyse" "analyze"
             "analyse" "study" "examine" "canvass" "canvas" "analyze" "analyse")
      :etf SVO))

(define-category set_upon.ATTACK-60.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "set_upon" "beset")
      :etf SVO))

(define-category round_on.ATTACK-60.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category lay_into.ATTACK-60.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "tear_into" "pitch_into" "lay_into" "lam_into" "lace_into")
      :etf SVO))

(define-category jump.ATTACK-60.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("jump" "jump")
      :etf SVO))

(define-category fall_upon.ATTACK-60.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category bombard.ATTACK-60.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bombard" "bombard" "bomb")
      :etf SVO))

(define-category bomb.ATTACK-60.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bomb" "bombard" "bomb")
      :etf SVO))

(define-category assault.ATTACK-60.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("assault" "set_on" "attack" "assault" "assail")
      :etf SVO))

(define-category assail.ATTACK-60.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("assail" "set_on" "attack" "assault" "assail")
      :etf SVO))

(define-category ambush.ATTACK-60.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ambush" "waylay" "scupper" "lurk" "lie_in_wait" "bushwhack"
             "ambush" "ambuscade")
      :etf SVO))

(define-category patronize.ATTEND-107.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("patronize" "support" "patronize" "patronise" "patronage"
             "keep_going")
      :etf SVO))

(define-category attend.ATTEND-107.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("attend" "go_to" "attend")
      :etf SVO))

(define-category boot.BANISH-10.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("boot" "boot")
      :etf SVO))

(define-category turn-out.BANISH-10.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("turn-out")
      :etf SVO))

(define-category turn-back.BANISH-10.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("turn-back")
      :etf SVO))

(define-category turn-away.BANISH-10.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("turn-away")
      :etf SVO))

(define-category remove.BANISH-10.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("remove" "transfer" "remove" "take_out" "remove" "move_out"
             "remove" "get_rid_of" "remove" "withdraw" "take_away" "take"
             "remove")
      :etf SVO))

(define-category recuse.BANISH-10.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("recuse" "recuse")
      :etf SVO))

(define-category recall.BANISH-10.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("recall" "withdraw" "recall" "call_in" "call_back" "recall"
             "recall" "call_back")
      :etf SVO))

(define-category extradite.BANISH-10.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("extradite" "extradite" "deport" "deliver")
      :etf SVO))

(define-category expel.BANISH-10.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("expel" "throw_out" "oust" "kick_out" "expel" "drum_out"
             "boot_out" "throw_out" "kick_out" "expel")
      :etf SVO))

(define-category exile.BANISH-10.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("exile" "expatriate" "exile" "deport")
      :etf SVO))

(define-category evacuate.BANISH-10.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("evacuate" "evacuate" "evacuate")
      :etf SVO))

(define-category dismiss.BANISH-10.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dismiss" "terminate" "send_away" "sack" "give_the_sack"
             "give_the_axe" "give_notice" "force_out" "fire" "displace"
             "dismiss" "can")
      :etf SVO))

(define-category discharge.BANISH-10.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("discharge" "muster_out" "discharge" "free" "discharge")
      :etf SVO))

(define-category deport.BANISH-10.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deport" "expatriate" "exile" "deport" "extradite" "deport"
             "deliver")
      :etf SVO))

(define-category banish.BANISH-10.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("banish" "banish" "relegate" "bar" "banish" "banish" "ban" "shun"
             "ostracize" "ostracise" "cast_out" "blackball" "banish" "ban")
      :etf SVO))

(define-category wrestle.BATTLE-36.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wrestle" "wrestle")
      :etf SVO))

(define-category refight.BATTLE-36.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("refight")
      :etf SVO))

(define-category fight.BATTLE-36.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fight" "struggle" "fight")
      :etf SVO))

(define-category duel.BATTLE-36.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("duel" "duel")
      :etf SVO))

(define-category debate.BATTLE-36.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("debate" "debate")
      :etf SVO))

(define-category battle.BATTLE-36.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("battle" "combat" "battle")
      :etf SVO))

(define-category leave.BECOME-109.1-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("leave")
      :etf SVO))

(define-category end_up.BECOME-109.1-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "wind_up" "land_up" "finish_up" "finish" "fetch_up" "end_up")
      :etf SVO))

(define-category undertake.BEGIN-55.1-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("undertake" "undertake" "set_about" "attempt")
      :etf SVO))

(define-category resume.BEGIN-55.1-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("resume" "take_up" "resume" "resume" "restart" "re-start")
      :etf SVO))

(define-category recommence.BEGIN-55.1-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("recommence" "recommence" "recommence")
      :etf SVO))

(define-category commence.BEGIN-55.1-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("commence" "start" "lead_off" "commence" "begin" "start_out"
             "start" "set_out" "set_about" "get_down" "get" "commence" "begin")
      :etf SVO))

(define-category start_off.BEGIN-55.1-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category start.BEGIN-55.1-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("start" "start" "begin" "take_up" "start" "start" "go" "get_going"
             "start_up" "start" "take_off" "start_out" "start" "set_out"
             "set_off" "set_forth" "part" "depart" "start" "lead_off"
             "commence" "begin" "start_out" "start" "set_out" "set_about"
             "get_down" "get" "commence" "begin")
      :etf SVO))

(define-category begin.BEGIN-55.1-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("begin" "begin" "start" "begin" "begin" "start" "lead_off"
             "commence" "begin" "start" "begin" "start_out" "start" "set_out"
             "set_about" "get_down" "get" "commence" "begin")
      :etf SVO))

(define-category benefit.BENEFIT-72.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("benefit" "do_good" "benefit" "profit" "gain" "benefit")
      :etf SVO))

(define-category spawn.BIRTH-28.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("spawn" "spawn")
      :etf SVO))

(define-category sire.BIRTH-28.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sire" "sire" "mother" "get" "generate" "father" "engender"
             "bring_forth" "beget")
      :etf SVO))

(define-category generate.BIRTH-28.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("generate" "sire" "mother" "get" "generate" "father" "engender"
             "bring_forth" "beget")
      :etf SVO))

(define-category deliver.BIRTH-28.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deliver" "have" "give_birth" "deliver" "birth" "bear")
      :etf SVO))

(define-category bring_forth.BIRTH-28.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "generate" "bring_forth")
      :etf SVO))

(define-category birth.BIRTH-28.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("birth" "have" "give_birth" "deliver" "birth" "bear")
      :etf SVO))

(define-category beget.BIRTH-28.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("beget" "sire" "mother" "get" "generate" "father" "engender"
             "bring_forth" "beget")
      :etf SVO))

(define-category bear.BIRTH-28.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bear" "hold" "contain" "carry" "bear" "have" "give_birth"
             "deliver" "birth" "bear")
      :etf SVO))

(define-category wax.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wax")
      :etf SVO))

(define-category wave.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wave" "wave" "wave" "curl")
      :etf SVO))

(define-category tweeze.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tweeze" "tweeze")
      :etf SVO))

(define-category trim.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trim" "trim" "garnish" "dress" "trim" "trim" "pare")
      :etf SVO))

(define-category towel.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("towel" "towel")
      :etf SVO))

(define-category tease.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tease" "tease" "fluff")
      :etf SVO))

(define-category talc.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("talc" "talc")
      :etf SVO))

(define-category style.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("style")
      :etf SVO))

(define-category soap.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("soap" "soap" "lather")
      :etf SVO))

(define-category shampoo.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shampoo" "shampoo")
      :etf SVO))

(define-category set.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("set" "set" "dress" "do" "coiffure" "coiffe" "coif" "arrange")
      :etf SVO))

(define-category rouge.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rouge" "rouge")
      :etf SVO))

(define-category rinse.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rinse" "rinse" "gargle" "wash" "rinse" "rinse_off" "rinse")
      :etf SVO))

(define-category powder.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("powder" "powder")
      :etf SVO))

(define-category pluck.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pluck" "tweak" "pull_off" "pluck" "pick_off")
      :etf SVO))

(define-category plait.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("plait" "plait")
      :etf SVO))

(define-category paint.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("paint")
      :etf SVO))

(define-category perm.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("perm" "perm")
      :etf SVO))

(define-category manicure.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("manicure" "manicure" "manicure")
      :etf SVO))

(define-category lather.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lather" "soap" "lather" "lather")
      :etf SVO))

(define-category highlight.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("highlight")
      :etf SVO))

(define-category henna.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("henna" "henna")
      :etf SVO))

(define-category gel.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gel")
      :etf SVO))

(define-category file.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("file" "file")
      :etf SVO))

(define-category dye.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dye" "dye")
      :etf SVO))

(define-category cut.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cut" "cut")
      :etf SVO))

(define-category curl.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("curl" "wave" "curl")
      :etf SVO))

(define-category crop.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crop" "crop")
      :etf SVO))

(define-category crimp.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crimp" "kink_up" "kink" "frizzle" "frizz" "crimp" "crape")
      :etf SVO))

(define-category condition.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("condition" "condition")
      :etf SVO))

(define-category comb.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("comb" "disentangle" "comb_out" "comb" "comb")
      :etf SVO))

(define-category coldcream.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("coldcream")
      :etf SVO))

(define-category clip.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("clip" "snip_off" "snip" "nip_off" "nip" "clip")
      :etf SVO))

(define-category brush.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("brush" "brush")
      :etf SVO))

(define-category braid.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("braid" "pleach" "braid")
      :etf SVO))

(define-category bob.BRAID-41.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bob" "bob")
      :etf SVO))

(define-category tear.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tear" "tear" "tear" "snap" "rupture" "bust")
      :etf SVO))

(define-category tatter.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tatter")
      :etf SVO))

(define-category split.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("split" "split" "burst" "break_open" "split" "rive" "cleave")
      :etf SVO))

(define-category splinter.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("splinter" "splinter" "sliver" "splinter" "sliver")
      :etf SVO))

(define-category snap.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("snap" "snap" "crack" "tear" "snap" "rupture" "bust")
      :etf SVO))

(define-category smash.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("smash" "smash_up" "smash" "bang_up" "smash" "dash")
      :etf SVO))

(define-category sliver.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sliver")
      :etf SVO))

(define-category shred.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shred")
      :etf SVO))

(define-category shatter.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shatter" "shatter" "shatter")
      :etf SVO))

(define-category rupture.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rupture" "tear" "snap" "rupture" "bust")
      :etf SVO))

(define-category rip.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rip" "rive" "rip" "rend" "pull")
      :etf SVO))

(define-category rive.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rive")
      :etf SVO))

(define-category rend.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rend")
      :etf SVO))

(define-category pop.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pop")
      :etf SVO))

(define-category granulate.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("granulate" "granulate" "grain" "granulate" "grain")
      :etf SVO))

(define-category fragment.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fragment")
      :etf SVO))

(define-category fracture.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fracture" "fracture" "break" "fracture" "fracture" "fracture")
      :etf SVO))

(define-category fissure.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fissure" "fissure")
      :etf SVO))

(define-category dissolve.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dissolve")
      :etf SVO))

(define-category crush.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crush" "crush" "jam" "crush" "crush" "squelch" "squeeze" "squash"
             "mash" "crush")
      :etf SVO))

(define-category crumble.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crumble" "tumble" "crumple" "crumble" "collapse" "break_down"
             "fall_apart" "crumble")
      :etf SVO))

(define-category crash.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crash" "crash" "crash" "break_up" "break_apart" "ram" "crash"
             "crash")
      :etf SVO))

(define-category crack.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crack" "crack" "snap" "crack" "crack" "crack" "check" "break")
      :etf SVO))

(define-category cleave.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cleave")
      :etf SVO))

(define-category chip.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chip" "knap" "cut_off" "chip" "break_off" "nick" "chip"
             "come_off" "chip_off" "chip" "break_off" "break_away")
      :etf SVO))

(define-category break_up.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category break_down.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category break_apart.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category break.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("break" "fracture" "break" "crack" "check" "break" "snap_off"
             "break_off" "break" "give_way" "give" "founder" "fall_in"
             "collapse" "cave_in" "break" "go_bad" "go" "give_way" "give_out"
             "fail" "die" "conk_out" "break_down" "break" "break" "split_up"
             "separate" "fall_apart" "come_apart" "break")
      :etf SVO))

(define-category atomize.BREAK-45.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("atomize")
      :etf SVO))

(define-category hawk.BREATHE-40.1.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hawk" "hawk" "clear_the_throat")
      :etf SVO))

(define-category urinate.BREATHE-40.1.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("urinate" "urinate")
      :etf SVO))

(define-category slobber.BREATHE-40.1.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("slobber")
      :etf SVO))

(define-category retch.BREATHE-40.1.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("retch" "vomit_up" "vomit" "upchuck" "throw_up" "spue" "spew"
             "sick" "retch" "regurgitate" "regorge" "purge" "puke" "honk"
             "disgorge" "chuck" "cat" "cast" "be_sick" "barf")
      :etf SVO))

(define-category expectorate.BREATHE-40.1.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("expectorate" "spit_up" "spit_out" "expectorate" "cough_up"
             "cough_out")
      :etf SVO))

(define-category defecate.BREATHE-40.1.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("defecate")
      :etf SVO))

(define-category cry.BREATHE-40.1.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cry" "cry" "yell" "squall" "shout_out" "shout" "scream" "hollo"
             "holler" "cry" "call")
      :etf SVO))

(define-category cough.BREATHE-40.1.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cough" "cough")
      :etf SVO))

(define-category breathe.BREATHE-40.1.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("breathe" "take_a_breather" "rest" "catch_one's_breath" "breathe"
             "take_a_breath" "suspire" "respire" "breathe")
      :etf SVO))

(define-category take.BRING-11.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("take" "take" "pack" "carry" "take" "convey" "bring" "take" "lead"
             "guide" "direct" "conduct")
      :etf SVO))

(define-category whittle.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whittle" "whittle" "pare")
      :etf SVO))

(define-category weave.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("weave" "weave" "tissue")
      :etf SVO))

(define-category stitch.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stitch" "stitch" "sew_together" "sew" "run_up")
      :etf SVO))

(define-category spin.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("spin" "spin" "spin")
      :etf SVO))

(define-category sew.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sew" "tailor-make" "tailor" "sew")
      :etf SVO))

(define-category sculpture.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sculpture")
      :etf SVO))

(define-category refashion.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("refashion" "remake" "refashion" "redo" "make_over")
      :etf SVO))

(define-category reassemble.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reassemble" "reassemble")
      :etf SVO))

(define-category mold.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mold" "work" "shape" "mould" "mold" "form" "forge" "mould" "mold"
             "cast" "mould" "mold" "model")
      :etf SVO))

(define-category knit.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("knit" "knit")
      :etf SVO))

(define-category hammer.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hammer" "hammer" "forge")
      :etf SVO))

(define-category hack.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hack" "hack" "chop")
      :etf SVO))

(define-category grow.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grow" "raise" "produce" "grow" "farm" "grow")
      :etf SVO))

(define-category grind.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grind")
      :etf SVO))

(define-category formulate.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("formulate")
      :etf SVO))

(define-category forge.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("forge" "forge" "fashion" "work" "shape" "mould" "mold" "form"
             "forge" "hammer" "forge")
      :etf SVO))

(define-category fashion.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fashion" "forge" "fashion")
      :etf SVO))

(define-category erect.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("erect")
      :etf SVO))

(define-category embroider.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("embroider" "embroider" "broider")
      :etf SVO))

(define-category develop.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("develop" "develop" "make_grow" "develop" "develop")
      :etf SVO))

(define-category crochet.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crochet" "crochet")
      :etf SVO))

(define-category cook.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cook" "cook" "cook" "ready" "prepare" "make" "fix" "cook" "cook")
      :etf SVO))

(define-category compile.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("compile" "compose" "compile")
      :etf SVO))

(define-category churn.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("churn" "churn")
      :etf SVO))

(define-category chisel.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chisel" "chisel")
      :etf SVO))

(define-category cast.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cast" "mould" "mold" "cast")
      :etf SVO))

(define-category blow.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("blow" "blow")
      :etf SVO))

(define-category bead.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bead" "bead" "bead")
      :etf SVO))

(define-category bake.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bake" "bake")
      :etf SVO))

(define-category assemble.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("assemble" "tack_together" "tack" "set_up" "put_together" "piece"
             "assemble")
      :etf SVO))

(define-category arrange.BUILD-26.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("arrange" "set" "arrange" "set" "dress" "do" "coiffure" "coiffe"
             "coif" "arrange" "set_up" "arrange")
      :etf SVO))

(define-category terrify.BULLY-59.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("terrify" "terrorize" "terrorise" "terrify")
      :etf SVO))

(define-category tease.BULLY-59.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tease" "twit" "tease" "taunt" "tantalize" "tantalise" "ride"
             "razz" "rally" "rag" "cod" "bait" "tease" "pester" "bug"
             "beleaguer" "badger")
      :etf SVO))

(define-category taunt.BULLY-59.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("taunt")
      :etf SVO))

(define-category shock.BULLY-59.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shock" "take_aback" "shock" "floor" "blow_out_of_the_water"
             "ball_over")
      :etf SVO))

(define-category shame.BULLY-59.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shame" "shame")
      :etf SVO))

(define-category panic.BULLY-59.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("panic" "panic")
      :etf SVO))

(define-category nag.BULLY-59.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nag")
      :etf SVO))

(define-category hustle.BULLY-59.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hustle" "hustle")
      :etf SVO))

(define-category harry.BULLY-59.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("harry" "provoke" "plague" "molest" "hassle" "harry" "harass"
             "chivy" "chivvy" "chevy" "chevvy" "beset")
      :etf SVO))

(define-category harass.BULLY-59.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("harass" "harass" "provoke" "plague" "molest" "hassle" "harry"
             "harass" "chivy" "chivvy" "chevy" "chevvy" "beset")
      :etf SVO))

(define-category frighten.BULLY-59.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("frighten" "scare" "frighten" "fright" "affright")
      :etf SVO))

(define-category bully.BULLY-59.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bully" "swagger" "bully" "browbeat")
      :etf SVO))

(define-category bullock.BULLY-59.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bullock")
      :etf SVO))

(define-category badger.BULLY-59.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("badger" "badger")
      :etf SVO))

(define-category annoy.BULLY-59.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("annoy" "vex" "rile" "rag" "nettle" "nark" "irritate" "gravel"
             "get_to" "get_at" "devil" "chafe" "bother" "annoy")
      :etf SVO))

(define-category witness.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("witness" "witness")
      :etf SVO))

(define-category valet.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("valet" "valet")
      :etf SVO))

(define-category usher.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("usher" "usher" "show")
      :etf SVO))

(define-category understudy.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("understudy" "understudy" "alternate")
      :etf SVO))

(define-category umpire.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("umpire" "umpire" "referee")
      :etf SVO))

(define-category tutor.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tutor" "tutor" "tutor")
      :etf SVO))

(define-category tailor.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tailor" "tailor-make" "tailor" "sew" "tailor" "cut" "tailor"
             "orient")
      :etf SVO))

(define-category sponsor.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sponsor" "sponsor" "shop_at" "shop" "patronize" "patronise"
             "frequent" "buy_at" "sponsor" "sponsor" "patronize" "patronise")
      :etf SVO))

(define-category skipper.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("skipper" "skipper")
      :etf SVO))

(define-category shepherd.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shepherd" "shepherd" "shepherd")
      :etf SVO))

(define-category referee.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("referee" "umpire" "referee")
      :etf SVO))

(define-category police.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("police" "police" "patrol")
      :etf SVO))

(define-category pioneer.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pioneer" "pioneer" "initiate" "pioneer" "open_up")
      :etf SVO))

(define-category pilot.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pilot" "pilot" "navigate" "pilot" "fly" "aviate")
      :etf SVO))

(define-category nurse.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nurse" "wet-nurse" "suckle" "suck" "nurse" "lactate" "give_suck"
             "breastfeed" "nurse")
      :etf SVO))

(define-category host.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("host" "host")
      :etf SVO))

(define-category guard.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("guard" "hold" "guard" "defend" "ward" "guard" "guard")
      :etf SVO))

(define-category escort.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("escort" "escort")
      :etf SVO))

(define-category emcee.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("emcee" "emcee" "compere")
      :etf SVO))

(define-category doctor.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("doctor" "doctor")
      :etf SVO))

(define-category crew.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crew" "crew")
      :etf SVO))

(define-category cox.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cox" "cox")
      :etf SVO))

(define-category coach.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("coach" "train" "coach")
      :etf SVO))

(define-category clerk.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("clerk" "clerk")
      :etf SVO))

(define-category chauffeur.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chauffeur" "drive_around" "chauffeur")
      :etf SVO))

(define-category chaperone.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chaperone" "chaperone" "chaperon")
      :etf SVO))

(define-category champion.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("champion" "defend" "champion")
      :etf SVO))

(define-category caddy.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("caddy" "caddy" "caddie")
      :etf SVO))

(define-category butler.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("butler")
      :etf SVO))

(define-category bully.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bully" "swagger" "bully" "browbeat" "strong-arm" "push_around"
             "hector" "bullyrag" "bully" "browbeat" "boss_around" "ballyrag")
      :etf SVO))

(define-category boss.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("boss")
      :etf SVO))

(define-category babysit.CAPTAIN-29.8-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("babysit")
      :etf SVO))

(define-category star.CAPTAIN-29.8-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("star" "star")
      :etf SVO))

(define-category wait_on.CARING-75.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "wait_on" "serve" "attend_to" "attend" "assist")
      :etf SVO))

(define-category mind.CARING-75.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mind" "mind" "listen" "heed" "mind")
      :etf SVO))

(define-category manage.CARING-75.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("manage" "supervise" "superintend" "oversee" "manage")
      :etf SVO))

(define-category look_after.CARING-75.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "look_after")
      :etf SVO))

(define-category babysit.CARING-75.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("babysit")
      :etf SVO))

(define-category yank.CARRY-11.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("yank" "yank" "jerk")
      :etf SVO))

(define-category tug.CARRY-11.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tug" "tug" "tug" "tug" "tote" "lug" "tug" "tug")
      :etf SVO))

(define-category tow.CARRY-11.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tow" "tow")
      :etf SVO))

(define-category tote.CARRY-11.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tote" "tug" "tote" "lug")
      :etf SVO))

(define-category schlep.CARRY-11.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("schlep" "shlep" "schlep" "pull_along")
      :etf SVO))

(define-category run.CARRY-11.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("run" "run" "run" "lead" "run")
      :etf SVO))

(define-category nudge.CARRY-11.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nudge" "prod" "poke_at" "nudge")
      :etf SVO))

(define-category lug.CARRY-11.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lug" "tug" "tote" "lug")
      :etf SVO))

(define-category hoist.CARRY-11.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hoist" "hoist" "wind" "lift" "hoist")
      :etf SVO))

(define-category heft.CARRY-11.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("heft" "heft_up" "heft" "heave_up" "heave")
      :etf SVO))

(define-category haul.CARRY-11.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("haul" "haul" "haul" "hale" "drag" "cart")
      :etf SVO))

(define-category draw.CARRY-11.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("draw" "pull" "force" "draw")
      :etf SVO))

(define-category drag.CARRY-11.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("drag" "haul" "hale" "drag" "cart" "drag")
      :etf SVO))

(define-category carry.CARRY-11.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("carry" "dribble" "carry" "transport" "carry")
      :etf SVO))

(define-category trench.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trench" "trench" "trench" "ditch")
      :etf SVO))

(define-category squish.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("squish" "squish")
      :etf SVO))

(define-category squash.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("squash" "squelch" "squeeze" "squash" "mash" "crush")
      :etf SVO))

(define-category smash.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("smash" "smash" "smash" "smash_up" "smash" "bang_up" "smash"
             "smash" "dash" "smash" "nail" "boom" "blast")
      :etf SVO))

(define-category slit.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("slit" "slit" "slit" "slice")
      :etf SVO))

(define-category slice.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("slice" "slice_up" "slice" "slit" "slice")
      :etf SVO))

(define-category shred.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shred" "tear_up" "shred" "rip_up")
      :etf SVO))

(define-category scrunch.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scrunch" "wrinkle" "scrunch_up" "scrunch" "ruckle" "crisp"
             "crinkle" "crease")
      :etf SVO))

(define-category scollop.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scollop" "scollop" "scallop" "scollop" "scallop")
      :etf SVO))

(define-category pulverize.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pulverize" "pulverize" "pulverise" "powderize" "powderise"
             "powder")
      :etf SVO))

(define-category perforate.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("perforate" "punch" "perforate")
      :etf SVO))

(define-category notch.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("notch" "notch")
      :etf SVO))

(define-category nick.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nick" "nick" "chip" "snick" "nick")
      :etf SVO))

(define-category mince.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mince" "mince")
      :etf SVO))

(define-category mash.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mash" "mash" "grind" "crunch" "comminute" "bray" "squelch"
             "squeeze" "squash" "mash" "crush")
      :etf SVO))

(define-category grind.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grind" "mash" "grind" "crunch" "comminute" "bray" "grind"
             "crunch" "craunch" "cranch")
      :etf SVO))

(define-category grate.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grate" "grate")
      :etf SVO))

(define-category gouge.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gouge" "rout" "gouge" "gouge" "force_out")
      :etf SVO))

(define-category gash.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gash" "slash" "gash")
      :etf SVO))

(define-category flatten.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("flatten" "flatten")
      :etf SVO))

(define-category flake.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("flake" "flake")
      :etf SVO))

(define-category fillet.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fillet" "fillet" "filet")
      :etf SVO))

(define-category dice.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dice" "dice" "cube")
      :etf SVO))

(define-category dent.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dent" "indent" "dent")
      :etf SVO))

(define-category cube.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cube" "dice" "cube")
      :etf SVO))

(define-category crush.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crush" "crush" "jam" "crush" "crush" "squelch" "squeeze" "squash"
             "mash" "crush")
      :etf SVO))

(define-category crunch.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crunch" "mash" "grind" "crunch" "comminute" "bray" "munch"
             "crunch")
      :etf SVO))

(define-category crumple.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crumple" "rumple" "pucker" "knit" "crumple" "cockle")
      :etf SVO))

(define-category crumble.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crumble" "fall_apart" "crumble")
      :etf SVO))

(define-category crumb.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crumb" "crumb")
      :etf SVO))

(define-category cleave.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cleave" "cleave" "split" "rive" "cleave")
      :etf SVO))

(define-category chip.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chip" "knap" "cut_off" "chip" "break_off" "nick" "chip"
             "come_off" "chip_off" "chip" "break_off" "break_away")
      :etf SVO))

(define-category bruise.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bruise" "bruise" "contuse" "bruise")
      :etf SVO))

(define-category bore.CARVE-21.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bore" "drill" "bore")
      :etf SVO))

(define-category tread.CARVE-21.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tread" "tread")
      :etf SVO))

(define-category prune.CARVE-21.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("prune" "trim" "snip" "prune" "lop" "dress" "cut_back" "crop"
             "clip")
      :etf SVO))

(define-category punch.CARVE-21.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("punch" "punch" "perforate")
      :etf SVO))

(define-category pink.CARVE-21.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pink")
      :etf SVO))

(define-category mow.CARVE-21.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mow" "mow" "cut_down")
      :etf SVO))

(define-category crop.CARVE-21.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crop" "crop")
      :etf SVO))

(define-category chop.CARVE-21.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chop" "hack" "chop" "chop_up" "chop")
      :etf SVO))

(define-category carve.CARVE-21.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("carve" "cut_up" "carve" "chip_at" "carve" "carve")
      :etf SVO))

(define-category tool.CARVE-21.2-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tool" "tool")
      :etf SVO))

(define-category spear.CARVE-21.2-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("spear" "spear")
      :etf SVO))

(define-category sand.CARVE-21.2-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sand" "sandpaper" "sand")
      :etf SVO))

(define-category mill.CARVE-21.2-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mill" "mill")
      :etf SVO))

(define-category mangle.CARVE-21.2-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mangle" "mangle")
      :etf SVO))

(define-category lance.CARVE-21.2-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lance" "lance" "lance")
      :etf SVO))

(define-category file.CARVE-21.2-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("file" "file")
      :etf SVO))

(define-category drill.CARVE-21.2-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("drill" "drill" "bore")
      :etf SVO))

(define-category track.CHASE-51.6
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("track" "trail" "track" "tail" "tag" "go_after" "give_chase" "dog"
             "chase_after" "chase")
      :etf SVO))

(define-category tail.CHASE-51.6
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tail" "trail" "track" "tail" "tag" "go_after" "give_chase" "dog"
             "chase_after" "chase")
      :etf SVO))

(define-category shadow.CHASE-51.6
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shadow" "shadow")
      :etf SVO))

(define-category pursue.CHASE-51.6
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pursue" "pursue" "follow")
      :etf SVO))

(define-category chase.CHASE-51.6
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chase" "chase_after" "chase" "trail" "track" "tail" "tag"
             "go_after" "give_chase" "dog" "chase_after" "chase")
      :etf SVO))

(define-category gull.CHEAT-10.6.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gull")
      :etf SVO))

(define-category cheat.CHEAT-10.6.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cheat" "rip_off" "chisel" "cheat")
      :etf SVO))

(define-category teethe.CHEW-39.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("teethe")
      :etf SVO))

(define-category lick.CHEW-39.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lick" "lick" "lap")
      :etf SVO))

(define-category peck.CHEW-39.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("peck" "pick_at" "peck_at" "peck")
      :etf SVO))

(define-category pick.CHEW-39.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pick" "piece" "pick" "nibble")
      :etf SVO))

(define-category nibble.CHEW-39.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nibble" "nibble" "nibble")
      :etf SVO))

(define-category munch.CHEW-39.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("munch" "munch" "crunch")
      :etf SVO))

(define-category masticate.CHEW-39.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("masticate")
      :etf SVO))

(define-category gum.CHEW-39.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gum" "mumble" "gum")
      :etf SVO))

(define-category gnaw.CHEW-39.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gnaw" "gnaw")
      :etf SVO))

(define-category crunch.CHEW-39.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crunch" "munch" "crunch")
      :etf SVO))

(define-category chomp.CHEW-39.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chomp" "chomp" "champ")
      :etf SVO))

(define-category chew.CHEW-39.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chew" "masticate" "manducate" "jaw" "chew")
      :etf SVO))

(define-category suck.CHEW-39.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("suck" "suck")
      :etf SVO))

(define-category slurp.CHEW-39.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("slurp" "slurp")
      :etf SVO))

(define-category sip.CHEW-39.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sip" "sip")
      :etf SVO))

(define-category lap.CHEW-39.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lap")
      :etf SVO))

(define-category discuss.CHIT_CHAT-37.6-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("discuss")
      :etf SVO))

(define-category debate.CHIT_CHAT-37.6-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("debate")
      :etf SVO))

(define-category argue.CHIT_CHAT-37.6-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("argue" "fence" "debate" "contend" "argue")
      :etf SVO))

(define-category recode.CLASSIFY-29.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("recode")
      :etf SVO))

(define-category code.CLASSIFY-29.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("code")
      :etf SVO))

(define-category categorize.CLASSIFY-29.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("categorize" "categorize" "categorise")
      :etf SVO))

(define-category seed.CLASSIFY-29.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("seed" "seed")
      :etf SVO))

(define-category separate.CLASSIFY-29.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("separate" "sort_out" "sort" "separate" "classify" "class"
             "assort")
      :etf SVO))

(define-category sort_out.CLASSIFY-29.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "sort_out" "sort" "separate" "classify" "class" "assort")
      :etf SVO))

(define-category catalogue.CLASSIFY-29.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("catalogue" "catalogue" "catalog")
      :etf SVO))

(define-category grade.CLASSIFY-29.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grade" "rate" "rank" "range" "place" "order" "grade")
      :etf SVO))

(define-category chunk.CLASSIFY-29.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chunk" "lump" "collocate" "chunk")
      :etf SVO))

(define-category lump.CLASSIFY-29.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lump" "lump" "collocate" "chunk")
      :etf SVO))

(define-category bracket.CLASSIFY-29.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bracket" "bracket")
      :etf SVO))

(define-category regroup.CLASSIFY-29.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("regroup" "regroup")
      :etf SVO))

(define-category reclassify.CLASSIFY-29.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reclassify" "reclassify")
      :etf SVO))

(define-category isolate.CLASSIFY-29.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("isolate" "set_apart" "sequestrate" "sequester" "keep_apart"
             "isolate")
      :etf SVO))

(define-category sort.CLASSIFY-29.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sort" "sort_out" "sort" "separate" "classify" "class" "assort")
      :etf SVO))

(define-category constellate.CLASSIFY-29.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("constellate" "constellate" "flock" "constellate" "cluster"
             "clump")
      :etf SVO))

(define-category class.CLASSIFY-29.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("class" "sort_out" "sort" "separate" "classify" "class" "assort")
      :etf SVO))

(define-category classify.CLASSIFY-29.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("classify" "sort_out" "sort" "separate" "classify" "class"
             "assort")
      :etf SVO))

(define-category cognize.COGNIZE-85
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cognize" "know" "cognize" "cognise")
      :etf SVO))

(define-category cognise.COGNIZE-85
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cognise" "know" "cognize" "cognise")
      :etf SVO))

(define-category varnish.COLORING-24
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("varnish" "varnish" "seal")
      :etf SVO))

(define-category tint.COLORING-24
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tint" "touch" "tint" "tinge" "tinct")
      :etf SVO))

(define-category starch.COLORING-24
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("starch" "starch")
      :etf SVO))

(define-category stain.COLORING-24
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stain" "stain" "stain" "stain")
      :etf SVO))

(define-category spraypaint.COLORING-24
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("spraypaint")
      :etf SVO))

(define-category shellac.COLORING-24
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shellac" "shellack" "shellac")
      :etf SVO))

(define-category repaint.COLORING-24
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("repaint")
      :etf SVO))

(define-category paint.COLORING-24
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("paint" "paint")
      :etf SVO))

(define-category lacquer.COLORING-24
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lacquer" "lacquer")
      :etf SVO))

(define-category glaze.COLORING-24
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("glaze" "glaze")
      :etf SVO))

(define-category enamel.COLORING-24
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("enamel" "enamel")
      :etf SVO))

(define-category dye.COLORING-24
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dye" "dye")
      :etf SVO))

(define-category distemper.COLORING-24
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("distemper" "distemper")
      :etf SVO))

(define-category wheedle.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wheedle" "wheedle" "sweet-talk" "palaver" "inveigle" "coax"
             "cajole" "blarney")
      :etf SVO))

(define-category sway.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sway" "sway" "persuade" "carry")
      :etf SVO))

(define-category suborn.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("suborn" "suborn" "suborn")
      :etf SVO))

(define-category steamroller.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("steamroller" "steamroller" "steamroll" "steamroller" "steamroll")
      :etf SVO))

(define-category sandbag.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sandbag" "sandbag" "railroad" "dragoon")
      :etf SVO))

(define-category rush.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rush" "rush" "hurry")
      :etf SVO))

(define-category railroad.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("railroad" "sandbag" "railroad" "dragoon")
      :etf SVO))

(define-category persuade.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("persuade" "persuade")
      :etf SVO))

(define-category palaver.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("palaver" "wheedle" "sweet-talk" "palaver" "inveigle" "coax"
             "cajole" "blarney")
      :etf SVO))

(define-category oblige.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("oblige" "oblige" "obligate" "compel")
      :etf SVO))

(define-category obligate.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("obligate" "oblige" "obligate" "compel")
      :etf SVO))

(define-category motivate.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("motivate" "propel" "prompt" "move" "motivate" "incite" "actuate")
      :etf SVO))

(define-category lead.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lead" "lead")
      :etf SVO))

(define-category influence.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("influence")
      :etf SVO))

(define-category induce.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("induce" "stimulate" "make" "induce" "have" "get" "cause")
      :etf SVO))

(define-category impel.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("impel" "impel" "force")
      :etf SVO))

(define-category hound.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hound" "trace" "hunt" "hound")
      :etf SVO))

(define-category goad.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("goad" "needle" "goad" "prick" "goad" "goad" "spur" "goad")
      :etf SVO))

(define-category dragoon.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dragoon" "sandbag" "railroad" "dragoon")
      :etf SVO))

(define-category commandeer.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("commandeer" "pirate" "hijack" "highjack" "commandeer")
      :etf SVO))

(define-category convince.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("convince" "win_over" "convince" "convert")
      :etf SVO))

(define-category compel.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("compel" "oblige" "obligate" "compel")
      :etf SVO))

(define-category bribe.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bribe" "grease_one's_palms" "corrupt" "buy" "bribe")
      :etf SVO))

(define-category bait.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bait" "bait")
      :etf SVO))

(define-category arm-twist.COMPEL-59.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("arm-twist")
      :etf SVO))

(define-category pull-off.COMPLETE-55.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pull-off")
      :etf SVO))

(define-category bring-off.COMPLETE-55.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bring-off")
      :etf SVO))

(define-category achieve.COMPLETE-55.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("achieve" "reach" "attain" "achieve" "accomplish")
      :etf SVO))

(define-category accomplish.COMPLETE-55.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("accomplish" "reach" "attain" "achieve" "accomplish" "fulfill"
             "fulfil" "execute" "carry_through" "carry_out" "action"
             "accomplish")
      :etf SVO))

(define-category misapprehend.COMPREHEND-87.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("misapprehend" "misunderstand" "misinterpret" "misconstrue"
             "misconceive" "misapprehend" "be_amiss")
      :etf SVO))

(define-category misunderstand.COMPREHEND-87.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("misunderstand" "misunderstand" "misinterpret" "misconstrue"
             "misconceive" "misapprehend" "be_amiss")
      :etf SVO))

(define-category misinterpret.COMPREHEND-87.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("misinterpret" "misunderstand" "misinterpret" "misconstrue"
             "misconceive" "misapprehend" "be_amiss")
      :etf SVO))

(define-category misconstrue.COMPREHEND-87.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("misconstrue" "misunderstand" "misinterpret" "misconstrue"
             "misconceive" "misapprehend" "be_amiss")
      :etf SVO))

(define-category appreciate.COMPREHEND-87.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("appreciate" "take_account" "appreciate")
      :etf SVO))

(define-category form.COMPRISE-107.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("form" "make" "form" "constitute")
      :etf SVO))

(define-category constitute.COMPRISE-107.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("constitute" "represent" "make_up" "constitute" "comprise" "be")
      :etf SVO))

(define-category make_up.COMPRISE-107.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "represent" "make_up" "constitute" "comprise" "be")
      :etf SVO))

(define-category compose.COMPRISE-107.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("compose" "compose")
      :etf SVO))

(define-category comprise.COMPRISE-107.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("comprise" "represent" "make_up" "constitute" "comprise" "be")
      :etf SVO))

(define-category contain.COMPRISE-107.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("contain" "incorporate" "contain" "comprise")
      :etf SVO))

(define-category encompass.COMPRISE-107.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("encompass" "encompass" "embrace" "cover" "comprehend")
      :etf SVO))

(define-category consist_of.COMPRISE-107.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "consist" "comprise")
      :etf SVO))

(define-category comprise.COMPRISE-107.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("comprise" "consist" "comprise")
      :etf SVO))

(define-category suppress.CONCEALMENT-16
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("suppress" "suppress" "repress")
      :etf SVO))

(define-category shelter.CONCEALMENT-16
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shelter" "shelter")
      :etf SVO))

(define-category sequester.CONCEALMENT-16
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sequester" "withdraw" "sequestrate" "sequester" "seclude")
      :etf SVO))

(define-category seclude.CONCEALMENT-16
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("seclude" "withdraw" "sequestrate" "sequester" "seclude")
      :etf SVO))

(define-category screen.CONCEALMENT-16
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("screen" "shield" "screen" "screen" "block_out")
      :etf SVO))

(define-category repress.CONCEALMENT-16
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("repress" "suppress" "repress")
      :etf SVO))

(define-category quarantine.CONCEALMENT-16
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("quarantine" "quarantine")
      :etf SVO))

(define-category isolate.CONCEALMENT-16
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("isolate" "isolate" "insulate")
      :etf SVO))

(define-category impound.CONCEALMENT-16
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("impound" "pound" "impound")
      :etf SVO))

(define-category curtain.CONCEALMENT-16
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("curtain")
      :etf SVO))

(define-category conceal.CONCEALMENT-16
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("conceal" "hold_in" "hold_back" "conceal" "hide" "conceal")
      :etf SVO))

(define-category cloister.CONCEALMENT-16
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cloister" "cloister" "cloister")
      :etf SVO))

(define-category throw.CONDUCT-111.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("throw" "throw" "make" "hold" "have" "give")
      :etf SVO))

(define-category spearhead.CONDUCT-111.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("spearhead" "spearhead")
      :etf SVO))

(define-category run.CONDUCT-111.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("run" "run" "run" "run" "operate")
      :etf SVO))

(define-category host.CONDUCT-111.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("host" "host")
      :etf SVO))

(define-category conduct.CONDUCT-111.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("conduct" "deal" "conduct" "carry_on")
      :etf SVO))

(define-category reveal.CONFESS-37.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reveal" "unwrap" "reveal" "let_out" "let_on" "give_away" "expose"
             "divulge" "discover" "disclose" "bring_out" "break")
      :etf SVO))

(define-category proclaim.CONFESS-37.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("proclaim" "promulgate" "proclaim" "exclaim")
      :etf SVO))

(define-category fess_up.CONFESS-37.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category acknowledge.CONFESS-37.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("acknowledge" "admit" "acknowledge")
      :etf SVO))

(define-category admit.CONFESS-37.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("admit" "admit" "acknowledge")
      :etf SVO))

(define-category confess.CONFESS-37.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("confess" "profess" "confess" "concede" "squeal" "fink" "confess")
      :etf SVO))

(define-category immure.CONFINE-92
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("immure" "remand" "put_behind_bars" "put_away" "lag" "jug" "jail"
             "incarcerate" "imprison" "immure" "gaol")
      :etf SVO))

(define-category jug.CONFINE-92
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("jug" "remand" "put_behind_bars" "put_away" "lag" "jug" "jail"
             "incarcerate" "imprison" "immure" "gaol")
      :etf SVO))

(define-category imprison.CONFINE-92
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("imprison" "imprison" "remand" "put_behind_bars" "put_away" "lag"
             "jug" "jail" "incarcerate" "imprison" "immure" "gaol")
      :etf SVO))

(define-category jail.CONFINE-92
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("jail" "remand" "put_behind_bars" "put_away" "lag" "jug" "jail"
             "incarcerate" "imprison" "immure" "gaol")
      :etf SVO))

(define-category detain.CONFINE-92
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("detain" "detain" "confine")
      :etf SVO))

(define-category hospitalize.CONFINE-92
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hospitalize" "hospitalize" "hospitalise")
      :etf SVO))

(define-category incarcerate.CONFINE-92
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("incarcerate" "remand" "put_behind_bars" "put_away" "lag" "jug"
             "jail" "incarcerate" "imprison" "immure" "gaol")
      :etf SVO))

(define-category institutionalize.CONFINE-92
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("institutionalize" "send" "institutionalize" "institutionalise"
             "commit" "charge")
      :etf SVO))

(define-category move_in_on.CONFRONT-98
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "move_in_on" "move_in_on")
      :etf SVO))

(define-category breast.CONFRONT-98
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("breast" "front" "breast")
      :etf SVO))

(define-category pre-empt.CONFRONT-98
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pre-empt")
      :etf SVO))

(define-category counter.CONFRONT-98
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("counter" "forestall" "foresee" "counter" "anticipate")
      :etf SVO))

(define-category rival.CONFRONT-98
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rival" "rival")
      :etf SVO))

(define-category intercept.CONFRONT-98
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("intercept" "stop" "intercept")
      :etf SVO))

(define-category handle.CONFRONT-98
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("handle" "manage" "handle" "deal" "care")
      :etf SVO))

(define-category brave.CONFRONT-98
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("brave" "weather" "endure" "brave_out" "brave")
      :etf SVO))

(define-category approach.CONFRONT-98
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("approach" "set_about" "go_about" "approach")
      :etf SVO))

(define-category go_about.CONFRONT-98
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "set_about" "go_about" "approach")
      :etf SVO))

(define-category take_on.CONFRONT-98
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "undertake" "take_on" "tackle")
      :etf SVO))

(define-category tackle.CONFRONT-98
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tackle" "undertake" "take_on" "tackle")
      :etf SVO))

(define-category undertake.CONFRONT-98
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("undertake" "undertake" "take_on" "tackle")
      :etf SVO))

(define-category head_on.CONFRONT-98
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category confront.CONFRONT-98
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("confront" "present" "face" "confront" "face_up" "face" "confront"
             "face" "confront")
      :etf SVO))

(define-category vaticinate.CONJECTURE-29.5-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("vaticinate")
      :etf SVO))

(define-category trust.CONJECTURE-29.5-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trust" "trust" "believe")
      :etf SVO))

(define-category prophesy.CONJECTURE-29.5-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("prophesy")
      :etf SVO))

(define-category presume.CONJECTURE-29.5-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("presume" "take_for_granted" "presume" "assume")
      :etf SVO))

(define-category infer.CONJECTURE-29.5-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("infer" "infer" "deduce" "infer" "derive" "deduct" "deduce")
      :etf SVO))

(define-category guess.CONJECTURE-29.5-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("guess" "judge" "guess" "gauge" "estimate" "approximate")
      :etf SVO))

(define-category foretell.CONJECTURE-29.5-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("foretell" "promise" "prognosticate" "predict" "foretell"
             "forebode" "call" "anticipate")
      :etf SVO))

(define-category foresee.CONJECTURE-29.5-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("foresee" "previse" "foresee" "foreknow" "anticipate")
      :etf SVO))

(define-category foreknow.CONJECTURE-29.5-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("foreknow")
      :etf SVO))

(define-category anticipate.CONJECTURE-29.5-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("anticipate" "expect" "anticipate")
      :etf SVO))

(define-category consume.CONSUME-66
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("consume" "wipe_out" "use_up" "run_through" "exhaust" "eat_up"
             "eat" "deplete" "consume")
      :etf SVO))

(define-category use.CONSUME-66
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("use" "use" "expend")
      :etf SVO))

(define-category contain.CONTAIN-15.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("contain" "take" "hold" "contain" "hold" "contain" "carry" "bear"
             "incorporate" "contain" "comprise")
      :etf SVO))

(define-category veil.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("veil" "veil")
      :etf SVO))

(define-category enshroud.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("enshroud" "shroud" "hide" "enshroud" "cover")
      :etf SVO))

(define-category wreathe.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wreathe")
      :etf SVO))

(define-category underlie.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("underlie" "underlay" "underlay" "underlie" "underlie")
      :etf SVO))

(define-category traverse.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("traverse")
      :etf SVO))

(define-category surround.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("surround" "surround" "skirt" "ring" "environ" "border")
      :etf SVO))

(define-category surmount.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("surmount" "surmount")
      :etf SVO))

(define-category support.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("support" "sustain" "support" "hold_up" "hold")
      :etf SVO))

(define-category straddle.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("straddle" "straddle" "range" "straddle")
      :etf SVO))

(define-category span.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("span" "traverse" "sweep" "span" "cross")
      :etf SVO))

(define-category skirt.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("skirt" "surround" "skirt" "ring" "environ" "border")
      :etf SVO))

(define-category ring.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ring" "surround" "skirt" "ring" "environ" "border")
      :etf SVO))

(define-category rim.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rim" "rim")
      :etf SVO))

(define-category predate.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("predate" "predate" "precede" "predate" "precede" "forgo" "forego"
             "antedate" "antecede")
      :etf SVO))

(define-category precede.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("precede" "precede" "lead" "predate" "precede")
      :etf SVO))

(define-category overhang.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overhang" "overhang" "beetle" "overhang")
      :etf SVO))

(define-category overcast.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overcast")
      :etf SVO))

(define-category neighbor.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("neighbor")
      :etf SVO))

(define-category hug.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hug" "hug")
      :etf SVO))

(define-category frame.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("frame" "frame" "frame_in" "frame" "border")
      :etf SVO))

(define-category forgo.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("forgo" "predate" "precede" "forgo" "forego" "antedate" "antecede")
      :etf SVO))

(define-category flank.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("flank" "flank")
      :etf SVO))

(define-category fill.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fill" "occupy" "fill")
      :etf SVO))

(define-category fence.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fence" "fence_in" "fence")
      :etf SVO))

(define-category envelop.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("envelop")
      :etf SVO))

(define-category engulf.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("engulf")
      :etf SVO))

(define-category encompass.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("encompass")
      :etf SVO))

(define-category enclose.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("enclose" "shut_in" "inclose" "enclose" "close_in" "wrap" "enwrap"
             "envelop" "enfold" "enclose")
      :etf SVO))

(define-category encircle.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("encircle" "encircle" "circle")
      :etf SVO))

(define-category cover.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cover" "spread_over" "cover")
      :etf SVO))

(define-category cloak.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cloak")
      :etf SVO))

(define-category circle.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("circle")
      :etf SVO))

(define-category cap.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cap" "crest" "cap")
      :etf SVO))

(define-category bridge.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bridge" "bridge_over" "bridge")
      :etf SVO))

(define-category bracket.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bracket")
      :etf SVO))

(define-category bound.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bound" "bound" "border")
      :etf SVO))

(define-category blanket.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("blanket" "blanket" "blanket")
      :etf SVO))

(define-category bestride.CONTIGUOUS_LOCATION-47.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bestride")
      :etf SVO))

(define-category reimburse.CONTRIBUTE-13.2-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reimburse" "reimburse" "recoup" "reimburse")
      :etf SVO))

(define-category switch_over.CONVERT-26.6.2-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "switch_over" "switch" "exchange")
      :etf SVO))

(define-category switch.CONVERT-26.6.2-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("switch" "tack" "switch" "interchange" "flip-flop" "flip"
             "alternate" "switch" "shift" "change")
      :etf SVO))

(define-category move_over.CONVERT-26.6.2-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category convert.CONVERT-26.6.2-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("convert" "convert")
      :etf SVO))

(define-category change_over.CONVERT-26.6.2-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "convert" "change_over")
      :etf SVO))

(define-category get_through.COPE-83-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "get_through" "come_through" "while_away" "get_through"
             "wrap_up" "polish_off" "mop_up" "get_through" "finish_up"
             "finish_off" "clear_up")
      :etf SVO))

(define-category get_by.COPE-83-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "manage" "make_out" "make_do" "grapple" "get_by" "deal" "cope"
             "contend")
      :etf SVO))

(define-category grapple.COPE-83-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grapple" "manage" "make_out" "make_do" "grapple" "get_by" "deal"
             "cope" "contend")
      :etf SVO))

(define-category manage.COPE-83-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("manage" "manage" "make_out" "make_do" "grapple" "get_by" "deal"
             "cope" "contend")
      :etf SVO))

(define-category wrinkle.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wrinkle" "wrinkle" "furrow" "crease" "wrinkle" "purse")
      :etf SVO))

(define-category wring.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wring" "wring" "wrench")
      :etf SVO))

(define-category wiggle.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wiggle" "wiggle" "joggle" "jiggle")
      :etf SVO))

(define-category waggle.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("waggle" "waggle" "wag")
      :etf SVO))

(define-category wag.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wag" "waggle" "wag")
      :etf SVO))

(define-category twitch.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("twitch" "twitch" "jerk")
      :etf SVO))

(define-category twiddle.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("twiddle" "twiddle" "fiddle_with")
      :etf SVO))

(define-category toss.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("toss")
      :etf SVO))

(define-category stretch.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stretch" "stretch" "extend")
      :etf SVO))

(define-category stamp.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stamp" "stump" "stomp" "stamp")
      :etf SVO))

(define-category snap.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("snap" "snap" "flick" "click")
      :etf SVO))

(define-category smack.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("smack" "smack")
      :etf SVO))

(define-category shuffle.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shuffle" "shuffle" "shamble" "scuffle")
      :etf SVO))

(define-category show.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("show" "show" "present" "exhibit" "demonstrate" "demo")
      :etf SVO))

(define-category shake.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shake" "shake" "shake" "agitate")
      :etf SVO))

(define-category rub.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rub")
      :etf SVO))

(define-category purse.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("purse" "wrinkle" "purse" "purse")
      :etf SVO))

(define-category pucker.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pucker" "rumple" "pucker" "knit" "crumple" "cockle")
      :etf SVO))

(define-category open.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("open" "open_up" "open")
      :etf SVO))

(define-category knit.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("knit" "rumple" "pucker" "knit" "crumple" "cockle")
      :etf SVO))

(define-category kick.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("kick" "kick" "kick")
      :etf SVO))

(define-category hunch.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hunch" "hunch_over" "hunch_forward" "hunch" "hump")
      :etf SVO))

(define-category hang.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hang" "hang")
      :etf SVO))

(define-category grind.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grind" "grind" "grate")
      :etf SVO))

(define-category gnash.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gnash" "gnash")
      :etf SVO))

(define-category flutter.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("flutter" "flutter" "bat")
      :etf SVO))

(define-category flick.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("flick" "snap" "flick" "click")
      :etf SVO))

(define-category flex.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("flex" "flex")
      :etf SVO))

(define-category flash.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("flash" "flash")
      :etf SVO))

(define-category flap.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("flap" "flap" "beat")
      :etf SVO))

(define-category drum.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("drum")
      :etf SVO))

(define-category crook.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crook" "curve" "crook")
      :etf SVO))

(define-category crane.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crane" "stretch_out" "crane")
      :etf SVO))

(define-category cock.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cock" "cock")
      :etf SVO))

(define-category click.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("click" "snap" "flick" "click")
      :etf SVO))

(define-category clench.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("clench" "clench")
      :etf SVO))

(define-category blow.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("blow" "blow")
      :etf SVO))

(define-category bat.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bat" "flutter" "bat")
      :etf SVO))

(define-category bare.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bare" "bare")
      :etf SVO))

(define-category arch.CRANE-40.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("arch" "curve" "arch" "arc")
      :etf SVO))

(define-category turn-out.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("turn-out")
      :etf SVO))

(define-category synthesize.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("synthesize" "synthesize" "synthesise")
      :etf SVO))

(define-category style.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("style" "style")
      :etf SVO))

(define-category reorganize.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reorganize" "reorganize" "reorganise" "regroup" "shake_up"
             "reorganize" "reorganise")
      :etf SVO))

(define-category reconstitute.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reconstitute" "restructure" "reconstitute")
      :etf SVO))

(define-category rebuild.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rebuild" "reconstruct" "rebuild")
      :etf SVO))

(define-category rearrange.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rearrange" "rearrange")
      :etf SVO))

(define-category publish.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("publish" "write" "publish" "release" "put_out" "publish" "issue"
             "bring_out" "publish" "print")
      :etf SVO))

(define-category organize.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("organize" "organize" "organise" "orchestrate" "mastermind"
             "engineer" "direct")
      :etf SVO))

(define-category mass-produce.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mass-produce" "mass-produce")
      :etf SVO))

(define-category manufacture.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("manufacture" "manufacture" "fabricate" "construct")
      :etf SVO))

(define-category lay.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lay" "lay")
      :etf SVO))

(define-category formulate.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("formulate" "invent" "formulate" "forge" "excogitate" "devise"
             "contrive" "formulate" "explicate" "develop")
      :etf SVO))

(define-category form.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("form" "work" "shape" "mould" "mold" "form" "forge" "shape" "form")
      :etf SVO))

(define-category fabricate.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fabricate" "manufacture" "fabricate" "construct")
      :etf SVO))

(define-category derive.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("derive" "infer" "derive" "deduct" "deduce")
      :etf SVO))

(define-category create.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("create" "produce" "make" "create" "make" "create")
      :etf SVO))

(define-category cowrite.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cowrite")
      :etf SVO))

(define-category contrive.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("contrive")
      :etf SVO))

(define-category construct.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("construct" "construct" "make" "construct" "build")
      :etf SVO))

(define-category concoct.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("concoct" "think_up" "think_of" "hatch" "dream_up" "concoct"
             "cook_up" "concoct" "concoct")
      :etf SVO))

(define-category compute.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("compute" "work_out" "reckon" "figure" "cypher" "compute" "cipher"
             "calculate")
      :etf SVO))

(define-category coin.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("coin" "strike" "mint" "coin" "coin")
      :etf SVO))

(define-category author.CREATE-26.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("author" "author")
      :etf SVO))

(define-category salute.CURTSEY-40.3.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("salute" "salute" "present")
      :etf SVO))

(define-category salaam.CURTSEY-40.3.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("salaam" "salaam")
      :etf SVO))

(define-category kneel.CURTSEY-40.3.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("kneel" "kneel")
      :etf SVO))

(define-category genuflect.CURTSEY-40.3.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("genuflect" "scrape" "kowtow" "genuflect" "genuflect")
      :etf SVO))

(define-category curtsey.CURTSEY-40.3.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("curtsey" "curtsy" "curtsey")
      :etf SVO))

(define-category bow.CURTSEY-40.3.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bow" "stoop" "crouch" "bow" "bend" "bow" "bow_down" "bow")
      :etf SVO))

(define-category bob.CURTSEY-40.3.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bob" "curtsy" "bob")
      :etf SVO))

(define-category ream.CUT-21.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ream" "ream" "ream")
      :etf SVO))

(define-category snip.CUT-21.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("snip" "trim" "snip" "prune" "lop" "dress" "cut_back" "crop"
             "clip" "snip_off" "snip" "nip_off" "nip" "clip")
      :etf SVO))

(define-category slice.CUT-21.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("slice" "slit" "slice")
      :etf SVO))

(define-category slash.CUT-21.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("slash" "slash" "gash" "slash" "cut_down")
      :etf SVO))

(define-category scratch.CUT-21.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scratch" "scratch_up" "scratch" "scrape")
      :etf SVO))

(define-category scrape.CUT-21.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scrape" "skin" "scrape" "scratch_up" "scratch" "scrape" "scrape"
             "grate")
      :etf SVO))

(define-category scarify.CUT-21.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scarify" "scarify" "scarify" "scarify")
      :etf SVO))

(define-category saw.CUT-21.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("saw" "saw")
      :etf SVO))

(define-category rip.CUT-21.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rip" "rive" "rip" "rend" "pull")
      :etf SVO))

(define-category hew.CUT-21.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hew" "hew")
      :etf SVO))

(define-category hack.CUT-21.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hack" "hack" "hack" "chop")
      :etf SVO))

(define-category cut.CUT-21.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cut" "cut" "cut" "cut" "cut" "cut")
      :etf SVO))

(define-category clip.CUT-21.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("clip" "trim" "snip" "prune" "lop" "dress" "cut_back" "crop"
             "clip" "snip_off" "snip" "nip_off" "nip" "clip")
      :etf SVO))

(define-category chop.CUT-21.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chop" "chop_up" "chop")
      :etf SVO))

(define-category chip.CUT-21.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chip" "knap" "cut_off" "chip" "break_off" "nick" "chip"
             "come_off" "chip_off" "chip" "break_off" "break_away")
      :etf SVO))

(define-category eviscerate.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("eviscerate" "eviscerate" "draw" "disembowel" "eviscerate"
             "resect" "eviscerate")
      :etf SVO))

(define-category disembowel.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disembowel" "eviscerate" "draw" "disembowel")
      :etf SVO))

(define-category deworm.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deworm")
      :etf SVO))

(define-category dewax.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dewax")
      :etf SVO))

(define-category dewater.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dewater")
      :etf SVO))

(define-category devein.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("devein" "devein")
      :etf SVO))

(define-category detusk.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("detusk" "tusk" "detusk")
      :etf SVO))

(define-category detassel.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("detassel")
      :etf SVO))

(define-category destress.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("destress" "destress" "de-emphasize" "de-emphasise")
      :etf SVO))

(define-category destarch.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("destarch")
      :etf SVO))

(define-category desprout.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("desprout")
      :etf SVO))

(define-category desex.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("desex" "unsex" "sterilize" "sterilise" "fix" "desexualize"
             "desexualise" "desex")
      :etf SVO))

(define-category descale.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("descale" "scale" "descale")
      :etf SVO))

(define-category desalt.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("desalt" "desalt" "desalinize" "desalinise" "desalinate")
      :etf SVO))

(define-category derind.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("derind")
      :etf SVO))

(define-category derib.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("derib")
      :etf SVO))

(define-category derat.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("derat")
      :etf SVO))

(define-category demast.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("demast")
      :etf SVO))

(define-category deluster.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deluster")
      :etf SVO))

(define-category delouse.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("delouse" "delouse")
      :etf SVO))

(define-category delint.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("delint")
      :etf SVO))

(define-category deink.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deink")
      :etf SVO))

(define-category deice.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deice" "deice" "defrost" "de-ice")
      :etf SVO))

(define-category dehusk.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dehusk")
      :etf SVO))

(define-category dehull.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dehull")
      :etf SVO))

(define-category dehorn.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dehorn" "dehorn")
      :etf SVO))

(define-category dehead.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dehead")
      :etf SVO))

(define-category dehair.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dehair")
      :etf SVO))

(define-category degut.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("degut")
      :etf SVO))

(define-category degum.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("degum")
      :etf SVO))

(define-category degrit.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("degrit")
      :etf SVO))

(define-category degrease.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("degrease")
      :etf SVO))

(define-category deglaze.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deglaze")
      :etf SVO))

(define-category degerm.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("degerm")
      :etf SVO))

(define-category degas.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("degas" "degas")
      :etf SVO))

(define-category defuzz.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("defuzz")
      :etf SVO))

(define-category defrost.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("defrost" "deice" "defrost" "de-ice")
      :etf SVO))

(define-category deforest.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deforest" "disforest" "disafforest" "deforest")
      :etf SVO))

(define-category defog.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("defog" "demist" "defog")
      :etf SVO))

(define-category defoam.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("defoam")
      :etf SVO))

(define-category deflower.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deflower")
      :etf SVO))

(define-category deflesh.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deflesh")
      :etf SVO))

(define-category deflea.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deflea")
      :etf SVO))

(define-category defeather.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("defeather")
      :etf SVO))

(define-category defat.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("defat" "defat")
      :etf SVO))

(define-category defang.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("defang" "defang")
      :etf SVO))

(define-category decontaminate.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("decontaminate" "decontaminate")
      :etf SVO))

(define-category declaw.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("declaw" "declaw")
      :etf SVO))

(define-category debur.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("debur")
      :etf SVO))

(define-category debug.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("debug" "debug")
      :etf SVO))

(define-category debowel.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("debowel")
      :etf SVO))

(define-category debone.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("debone" "debone" "bone")
      :etf SVO))

(define-category debark.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("debark")
      :etf SVO))

(define-category deaccent.DEBONE-10.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deaccent")
      :etf SVO))

(define-category rationalize.DEDUCE-97.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rationalize" "rationalize" "rationalise")
      :etf SVO))

(define-category prove.DEDUCE-97.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("prove" "show" "shew" "prove" "establish" "demonstrate")
      :etf SVO))

(define-category conceive.DEDUCE-97.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("conceive" "think" "consider" "conceive" "believe")
      :etf SVO))

(define-category gather.DEDUCE-97.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gather" "gather")
      :etf SVO))

(define-category deduce.DEDUCE-97.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deduce" "infer" "deduce" "infer" "derive" "deduct" "deduce")
      :etf SVO))

(define-category deduct.DEDUCE-97.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deduct" "infer" "derive" "deduct" "deduce")
      :etf SVO))

(define-category infer.DEDUCE-97.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("infer" "infer" "derive" "deduct" "deduce")
      :etf SVO))

(define-category disprove.DEDUCE-97.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disprove" "disprove" "confute")
      :etf SVO))

(define-category derive.DEDUCE-97.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("derive" "infer" "derive" "deduct" "deduce")
      :etf SVO))

(define-category conclude.DEDUCE-97.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("conclude" "reason_out" "reason" "conclude")
      :etf SVO))

(define-category reason_out.DEDUCE-97.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "reason_out" "reason" "conclude")
      :etf SVO))

(define-category reason.DEDUCE-97.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reason" "reason_out" "reason" "conclude")
      :etf SVO))

(define-category speak_for.DEFEND-72.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "speak_for")
      :etf SVO))

(define-category safeguard.DEFEND-72.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("safeguard" "safeguard")
      :etf SVO))

(define-category guard.DEFEND-72.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("guard" "ward" "guard" "guard")
      :etf SVO))

(define-category preserve.DEFEND-72.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("preserve" "preserve" "maintain" "keep_up" "conserve")
      :etf SVO))

(define-category shade.DEFEND-72.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shade" "shade")
      :etf SVO))

(define-category protect.DEFEND-72.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("protect" "protect")
      :etf SVO))

(define-category insure.DEFEND-72.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("insure" "underwrite" "insure" "cover")
      :etf SVO))

(define-category defend.DEFEND-72.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("defend" "maintain" "defend" "represent" "defend" "support"
             "fend_for" "defend")
      :etf SVO))

(define-category sap.DEPRIVE-10.6.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sap")
      :etf SVO))

(define-category deprive.DEPRIVE-10.6.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deprive" "impoverish" "deprive" "deprive" "strip" "divest"
             "deprive")
      :etf SVO))

(define-category divest.DEPRIVE-10.6.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("divest" "divest" "disinvest" "divest" "disinvest" "strip"
             "divest" "deprive")
      :etf SVO))

(define-category deplete.DEPRIVE-10.6.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deplete" "wipe_out" "use_up" "run_through" "exhaust" "eat_up"
             "eat" "deplete" "consume")
      :etf SVO))

(define-category dispossess.DEPRIVE-10.6.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dispossess" "dispossess")
      :etf SVO))

(define-category drain.DEPRIVE-10.6.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("drain" "drain" "drain")
      :etf SVO))

(define-category disarm.DEPRIVE-10.6.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disarm" "unarm" "disarm")
      :etf SVO))

(define-category denude.DEPRIVE-10.6.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("denude" "strip" "denude" "denudate" "bare")
      :etf SVO))

(define-category bereave.DEPRIVE-10.6.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bereave" "bereave")
      :etf SVO))

(define-category depopulate.DEPRIVE-10.6.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("depopulate" "desolate" "depopulate")
      :etf SVO))

(define-category rid.DEPRIVE-10.6.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rid" "rid" "free" "disembarrass")
      :etf SVO))

(define-category plunder.DEPRIVE-10.6.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("plunder" "violate" "spoil" "rape" "plunder" "despoil" "strip"
             "rifle" "reave" "ransack" "plunder" "pillage" "loot" "foray"
             "despoil")
      :etf SVO))

(define-category disabuse.DEPRIVE-10.6.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disabuse" "disabuse")
      :etf SVO))

(define-category despoil.DEPRIVE-10.6.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("despoil" "violate" "spoil" "rape" "plunder" "despoil" "strip"
             "rifle" "reave" "ransack" "plunder" "pillage" "loot" "foray"
             "despoil")
      :etf SVO))

(define-category burgle.DEPRIVE-10.6.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("burgle")
      :etf SVO))

(define-category shatter.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shatter" "shatter" "shatter")
      :etf SVO))

(define-category wreck.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wreck" "wreck" "wrack" "bust_up")
      :etf SVO))

(define-category wrack.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wrack" "wreck" "wrack" "bust_up")
      :etf SVO))

(define-category waste.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("waste" "waste" "scourge" "ravage" "lay_waste_to" "devastate"
             "desolate" "waste" "neutralize" "neutralise" "liquidate"
             "knock_off" "do_in")
      :etf SVO))

(define-category vaporize.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("vaporize")
      :etf SVO))

(define-category unmake.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unmake")
      :etf SVO))

(define-category undo.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("undo")
      :etf SVO))

(define-category smoke.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("smoke")
      :etf SVO))

(define-category shipwreck.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shipwreck" "shipwreck")
      :etf SVO))

(define-category ruin.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ruin" "ruin" "destroy")
      :etf SVO))

(define-category raze.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("raze" "tear_down" "take_down" "raze" "rase" "pull_down" "level"
             "dismantle")
      :etf SVO))

(define-category ravage.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ravage" "waste" "scourge" "ravage" "lay_waste_to" "devastate"
             "desolate")
      :etf SVO))

(define-category rack.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rack" "torture" "torment" "rack" "excruciate")
      :etf SVO))

(define-category obliterate.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("obliterate" "obliterate")
      :etf SVO))

(define-category mutilate.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mutilate" "mutilate" "mar" "mutilate" "murder" "mangle"
             "mutilate" "mangle" "cut_up")
      :etf SVO))

(define-category maim.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("maim" "maim")
      :etf SVO))

(define-category louse_up.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category extirpate.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("extirpate" "uproot" "root_out" "extirpate" "exterminate"
             "eradicate")
      :etf SVO))

(define-category exterminate.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("exterminate" "kill_off" "exterminate")
      :etf SVO))

(define-category efface.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("efface" "wipe_off" "score_out" "rub_out" "erase" "efface")
      :etf SVO))

(define-category disfigure.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disfigure" "disfigure" "deface" "blemish")
      :etf SVO))

(define-category devastate.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("devastate" "waste" "scourge" "ravage" "lay_waste_to" "devastate"
             "desolate")
      :etf SVO))

(define-category destroy.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("destroy" "ruin" "destroy" "destruct" "destroy")
      :etf SVO))

(define-category desecrate.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("desecrate" "unhallow" "desecrate" "deconsecrate" "violate"
             "profane" "outrage" "desecrate")
      :etf SVO))

(define-category demolish.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("demolish" "pulverize" "pulverise" "demolish")
      :etf SVO))

(define-category decimate.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("decimate" "wipe_out" "extinguish" "eradicate" "eliminate"
             "decimate" "carry_off" "annihilate")
      :etf SVO))

(define-category damage.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("damage" "damage")
      :etf SVO))

(define-category blitz.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("blitz" "blitz")
      :etf SVO))

(define-category blight.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("blight" "plague" "blight")
      :etf SVO))

(define-category annihilate.DESTROY-44
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("annihilate" "wipe_out" "extinguish" "eradicate" "eliminate"
             "decimate" "carry_off" "annihilate")
      :etf SVO))

(define-category take.DEVOUR-39.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("take")
      :etf SVO))

(define-category swill.DEVOUR-39.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("swill" "swill_down" "swill")
      :etf SVO))

(define-category ingest.DEVOUR-39.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ingest" "take_in" "take" "ingest" "have" "consume")
      :etf SVO))

(define-category imbibe.DEVOUR-39.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("imbibe" "imbibe" "drink")
      :etf SVO))

(define-category devour.DEVOUR-39.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("devour" "raven" "pig" "guttle" "devour" "go_through" "down"
             "devour" "consume")
      :etf SVO))

(define-category consume.DEVOUR-39.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("consume" "go_through" "down" "devour" "consume")
      :etf SVO))

(define-category sieve.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sieve" "strain" "sift" "sieve")
      :etf SVO))

(define-category unzip.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unzip" "unzip")
      :etf SVO))

(define-category untie.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("untie" "untie" "unlace" "unbrace")
      :etf SVO))

(define-category unstitch.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unstitch")
      :etf SVO))

(define-category unstaple.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unstaple" "unstaple")
      :etf SVO))

(define-category unshackle.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unshackle")
      :etf SVO))

(define-category unseal.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unseal" "unseal")
      :etf SVO))

(define-category unscrew.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unscrew" "unscrew" "unscrew")
      :etf SVO))

(define-category unpin.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unpin" "unpin")
      :etf SVO))

(define-category unpeg.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unpeg")
      :etf SVO))

(define-category unleash.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unleash" "unleash")
      :etf SVO))

(define-category unlock.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unlock" "unlock" "unlock")
      :etf SVO))

(define-category unlatch.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unlatch")
      :etf SVO))

(define-category unlace.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unlace")
      :etf SVO))

(define-category unhook.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unhook" "unhook")
      :etf SVO))

(define-category unhitch.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unhitch" "unhitch")
      :etf SVO))

(define-category unhinge.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unhinge" "unhinge")
      :etf SVO))

(define-category unglue.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unglue")
      :etf SVO))

(define-category unfix.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unfix")
      :etf SVO))

(define-category unfasten.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unfasten" "unfasten" "unfasten")
      :etf SVO))

(define-category unclip.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unclip" "unclip")
      :etf SVO))

(define-category unclasp.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unclasp")
      :etf SVO))

(define-category unclamp.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unclamp")
      :etf SVO))

(define-category unchain.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unchain" "unchain")
      :etf SVO))

(define-category unbutton.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unbutton" "unbutton")
      :etf SVO))

(define-category unbuckle.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unbuckle" "unbuckle")
      :etf SVO))

(define-category unbolt.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unbolt" "unbolt")
      :etf SVO))

(define-category sunder.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sunder" "sunder")
      :etf SVO))

(define-category slice.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("slice" "slice_up" "slice")
      :etf SVO))

(define-category sift.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sift" "strain" "sift" "sieve")
      :etf SVO))

(define-category segregate.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("segregate" "segregate" "segregate")
      :etf SVO))

(define-category partition.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("partition" "zone" "partition")
      :etf SVO))

(define-category pare.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pare" "trim" "pare" "skin" "peel" "pare" "whittle" "pare")
      :etf SVO))

(define-category dismantle.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dismantle")
      :etf SVO))

(define-category disconnect.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disconnect" "disconnect" "unplug" "disconnect")
      :etf SVO))

(define-category disassemble.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disassemble" "take_apart" "dismantle" "disassemble" "break_up"
             "break_apart")
      :etf SVO))

(define-category detach.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("detach" "detach")
      :etf SVO))

(define-category carve.DISASSEMBLE-23.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("carve" "chip_at" "carve" "carve")
      :etf SVO))

(define-category work_out.DISCOVER-84
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "work_out" "work" "solve" "puzzle_out" "lick" "figure_out")
      :etf SVO))

(define-category chance_upon.DISCOVER-84
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category chance_on.DISCOVER-84
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "strike" "light_upon" "happen_upon" "fall_upon" "discover"
             "come_upon" "come_across" "chance_upon" "chance_on" "attain")
      :etf SVO))

(define-category chance_across.DISCOVER-84
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category solve.DISCOVER-84
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("solve" "solve" "resolve" "work_out" "work" "solve" "puzzle_out"
             "lick" "figure_out")
      :etf SVO))

(define-category scent_out.DISCOVER-84
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "sniff_out" "smell_out" "scent_out" "nose_out")
      :etf SVO))

(define-category relearn.DISCOVER-84
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("relearn" "relearn")
      :etf SVO))

(define-category rationalize.DISCOVER-84
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rationalize" "rationalize" "rationalise" "justify" "excuse"
             "apologize" "apologise")
      :etf SVO))

(define-category ascertain.DISCOVER-84
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ascertain" "ascertain")
      :etf SVO))

(define-category realize.DISCOVER-84
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("realize" "recognize" "recognise" "realize" "realise" "agnize"
             "agnise")
      :etf SVO))

(define-category guess.DISCOVER-84
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("guess" "infer" "guess")
      :etf SVO))

(define-category discover.DISCOVER-84
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("discover" "name" "key_out" "key" "identify" "distinguish"
             "discover" "describe" "discover" "strike" "light_upon"
             "happen_upon" "fall_upon" "discover" "come_upon" "come_across"
             "chance_upon" "chance_on" "attain" "find" "discover" "find"
             "discover" "see" "pick_up" "learn" "hear" "get_word" "get_wind"
             "get_a_line" "find_out" "discover" "observe" "notice" "find"
             "discover" "detect")
      :etf SVO))

(define-category determine.DISCOVER-84
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("determine" "watch" "see" "learn" "find_out" "determine" "check"
             "ascertain" "find_out" "find" "determine" "ascertain")
      :etf SVO))

(define-category deduce.DISCOVER-84
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deduce" "infer" "deduce" "infer" "derive" "deduct" "deduce")
      :etf SVO))

(define-category tell_apart.DISTINGUISH-23.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "tell_apart" "spot" "recognize" "recognise" "pick_out"
             "make_out" "distinguish" "discern")
      :etf SVO))

(define-category differentiate.DISTINGUISH-23.5-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("differentiate" "tell_apart" "tell" "severalize" "severalise"
             "separate" "secernate" "secern" "distinguish" "differentiate")
      :etf SVO))

(define-category distinguish.DISTINGUISH-23.5-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("distinguish")
      :etf SVO))

(define-category undress.DRESS-41.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("undress" "undress" "strip" "divest" "disinvest" "undress"
             "unclothe" "uncase" "strip_down" "strip" "peel" "disrobe"
             "discase")
      :etf SVO))

(define-category unclothe.DRESS-41.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unclothe" "undress" "unclothe" "uncase" "strip_down" "strip"
             "peel" "disrobe" "discase")
      :etf SVO))

(define-category tan.DRESS-41.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tan")
      :etf SVO))

(define-category sunbathe.DRESS-41.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sunbathe")
      :etf SVO))

(define-category shower.DRESS-41.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shower" "shower")
      :etf SVO))

(define-category shave.DRESS-41.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shave" "trim" "shave" "shave")
      :etf SVO))

(define-category primp.DRESS-41.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("primp" "primp" "preen" "plume" "dress")
      :etf SVO))

(define-category preen.DRESS-41.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("preen" "primp" "preen" "plume" "dress")
      :etf SVO))

(define-category moisturize.DRESS-41.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("moisturize")
      :etf SVO))

(define-category lave.DRESS-41.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lave" "wash_up" "lave" "wash" "lave")
      :etf SVO))

(define-category frock.DRESS-41.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("frock" "frock")
      :etf SVO))

(define-category exercise.DRESS-41.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("exercise" "work_out" "exercise" "work_out" "work" "exercise")
      :etf SVO))

(define-category dress.DRESS-41.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dress" "dress_up" "dress" "tog" "raiment" "habilitate" "garment"
             "garb" "fit_out" "enclothe" "dress" "clothe" "apparel"
             "get_dressed" "dress")
      :etf SVO))

(define-category disrobe.DRESS-41.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disrobe" "undress" "unclothe" "uncase" "strip_down" "strip"
             "peel" "disrobe" "discase")
      :etf SVO))

(define-category clothe.DRESS-41.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("clothe")
      :etf SVO))

(define-category bathe.DRESS-41.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bathe" "bathe" "bath" "bathe")
      :etf SVO))

(define-category wheel.DRIVE-11.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wheel" "wheel_around" "wheel")
      :etf SVO))

(define-category trundle.DRIVE-11.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trundle" "trundle")
      :etf SVO))

(define-category tool_around.DRIVE-11.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "tool_around" "tool" "joyride")
      :etf SVO))

(define-category tool.DRIVE-11.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tool" "tool_around" "tool" "joyride" "tool")
      :etf SVO))

(define-category paddle.DRIVE-11.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("paddle" "paddle")
      :etf SVO))

(define-category motor.DRIVE-11.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("motor" "motor" "drive")
      :etf SVO))

(define-category bike.DRIVE-11.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bike" "wheel" "pedal" "cycle" "bike" "bicycle")
      :etf SVO))

(define-category shuttle.DRIVE-11.5-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shuttle" "shuttle")
      :etf SVO))

(define-category fly.DRIVE-11.5-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fly" "fly")
      :etf SVO))

(define-category ferry.DRIVE-11.5-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ferry" "ferry" "ferry")
      :etf SVO))

(define-category cart.DRIVE-11.5-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cart" "cart")
      :etf SVO))

(define-category barge.DRIVE-11.5-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("barge" "barge")
      :etf SVO))

(define-category style.DUB-29.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("style" "title" "style")
      :etf SVO))

(define-category nickname.DUB-29.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nickname" "nickname" "dub")
      :etf SVO))

(define-category label.DUB-29.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("label" "pronounce" "label" "judge")
      :etf SVO))

(define-category crown.DUB-29.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crown" "crown" "coronate")
      :etf SVO))

(define-category consecrate.DUB-29.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("consecrate" "sanctify" "hallow" "consecrate" "bless" "vow"
             "consecrate" "ordinate" "order" "ordain" "consecrate")
      :etf SVO))

(define-category christen.DUB-29.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("christen" "christen" "baptize" "baptise")
      :etf SVO))

(define-category brand.DUB-29.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("brand" "post" "brand")
      :etf SVO))

(define-category baptize.DUB-29.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("baptize" "christen" "baptize" "baptise")
      :etf SVO))

(define-category anoint.DUB-29.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("anoint" "oil" "inunct" "embrocate" "anoint" "anele")
      :etf SVO))

(define-category vote.DUB-29.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("vote" "vote")
      :etf SVO))

(define-category term.DUB-29.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("term" "term")
      :etf SVO))

(define-category stamp.DUB-29.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stamp" "stamp")
      :etf SVO))

(define-category rule.DUB-29.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rule" "rule" "decree")
      :etf SVO))

(define-category rename.DUB-29.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rename" "rename")
      :etf SVO))

(define-category pronounce.DUB-29.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pronounce" "pronounce" "label" "judge" "sound_out" "say"
             "pronounce" "enunciate" "enounce" "articulate")
      :etf SVO))

(define-category dub.DUB-29.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dub" "nickname" "dub")
      :etf SVO))

(define-category decree.DUB-29.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("decree" "rule" "decree")
      :etf SVO))

(define-category call.DUB-29.3.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("call" "call" "address" "call" "name" "call")
      :etf SVO))

(define-category fetch.EARN-54.6
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fetch")
      :etf SVO))

(define-category earn.EARN-54.6
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("earn")
      :etf SVO))

(define-category bring_in.EARN-54.6
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category bring.EARN-54.6
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bring")
      :etf SVO))

(define-category attract.EARN-54.6
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("attract")
      :etf SVO))

(define-category drink.EAT-39.1-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("drink" "wassail" "toast" "salute" "pledge" "drink" "fuddle"
             "drink" "booze" "imbibe" "drink")
      :etf SVO))

(define-category use.EAT-39.1-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("use" "use" "habituate")
      :etf SVO))

(define-category smoke.EAT-39.1-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("smoke" "smoke")
      :etf SVO))

(define-category shoot_up.EAT-39.1-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category snort.EAT-39.1-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("snort" "take_a_hit" "snort" "snort" "huff")
      :etf SVO))

(define-category mainline.EAT-39.1-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mainline" "mainline")
      :etf SVO))

(define-category inject.EAT-39.1-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("inject" "inject")
      :etf SVO))

(define-category huff.EAT-39.1-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("huff" "snort" "huff")
      :etf SVO))

(define-category stumble_upon.ENCOUNTER-30.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category stumble_on.ENCOUNTER-30.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category meet_with.ENCOUNTER-30.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category meet.ENCOUNTER-30.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("meet")
      :etf SVO))

(define-category happen_upon.ENCOUNTER-30.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category happen_on.ENCOUNTER-30.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category encounter.ENCOUNTER-30.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("encounter")
      :etf SVO))

(define-category come_across.ENCOUNTER-30.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category chance_upon.ENCOUNTER-30.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category chance_across.ENCOUNTER-30.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category impose.ENFORCE-63
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("impose" "impose" "enforce")
      :etf SVO))

(define-category enforce.ENFORCE-63
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("enforce" "impose" "enforce")
      :etf SVO))

(define-category spawn.ENGENDER-27.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("spawn" "spawn" "engender" "breed")
      :etf SVO))

(define-category sire.ENGENDER-27.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sire")
      :etf SVO))

(define-category shape.ENGENDER-27.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shape" "shape" "regulate" "mold" "influence" "determine")
      :etf SVO))

(define-category set_off.ENGENDER-27.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "trip" "trigger_off" "trigger" "touch_off" "spark_off" "spark"
             "set_off" "actuate" "activate" "stir_up" "set_off" "instigate"
             "incite")
      :etf SVO))

(define-category set_in_motion.ENGENDER-27.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "set_in_motion" "launch")
      :etf SVO))

(define-category kindle.ENGENDER-27.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("kindle" "raise" "provoke" "kindle" "fire" "evoke" "enkindle"
             "elicit" "arouse")
      :etf SVO))

(define-category generate.ENGENDER-27.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("generate" "generate" "bring_forth")
      :etf SVO))

(define-category engender.ENGENDER-27.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("engender" "spawn" "engender" "breed")
      :etf SVO))

(define-category create.ENGENDER-27.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("create" "create" "make" "create")
      :etf SVO))

(define-category bring_about.ENGENDER-27.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category bring.ENGENDER-27.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bring")
      :etf SVO))

(define-category beget.ENGENDER-27.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("beget")
      :etf SVO))

(define-category provide.ENSURE-99
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("provide" "provide")
      :etf SVO))

(define-category reinsure.ENSURE-99
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reinsure" "reinsure" "reinsure" "reinsure")
      :etf SVO))

(define-category ascertain.ENSURE-99
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ascertain" "see_to_it" "see" "insure" "ensure" "control" "check"
             "assure" "ascertain")
      :etf SVO))

(define-category secure.ENSURE-99
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("secure" "secure" "insure" "guarantee" "ensure" "assure")
      :etf SVO))

(define-category insure.ENSURE-99
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("insure" "secure" "insure" "guarantee" "ensure" "assure")
      :etf SVO))

(define-category guarantee.ENSURE-99
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("guarantee" "secure" "insure" "guarantee" "ensure" "assure")
      :etf SVO))

(define-category assure.ENSURE-99
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("assure" "secure" "insure" "guarantee" "ensure" "assure")
      :etf SVO))

(define-category ensure.ENSURE-99
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ensure" "secure" "insure" "guarantee" "ensure" "assure")
      :etf SVO))

(define-category vacate.ESCAPE-51.1-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("vacate" "vacate" "empty" "abandon")
      :etf SVO))

(define-category leave.ESCAPE-51.1-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("leave" "leave" "go_out" "get_out" "exit" "leave" "go_forth"
             "go_away")
      :etf SVO))

(define-category flee.ESCAPE-51.1-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("flee" "take_flight" "fly" "flee")
      :etf SVO))

(define-category escape.ESCAPE-51.1-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("escape" "get_away" "escape" "break_loose")
      :etf SVO))

(define-category disembark.ESCAPE-51.1-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disembark" "set_down" "disembark" "debark")
      :etf SVO))

(define-category depart.ESCAPE-51.1-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("depart" "take_off" "start_out" "start" "set_out" "set_off"
             "set_forth" "part" "depart" "go_away" "go" "depart")
      :etf SVO))

(define-category approach.ESCAPE-51.1-1-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("approach" "near" "go_up" "draw_near" "draw_close" "come_on"
             "come_near" "approach")
      :etf SVO))

(define-category pass.ESCAPE-51.1-1-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pass" "run" "pass" "guide" "draw" "pass" "overtake" "overhaul"
             "travel_by" "surpass" "pass_by" "pass" "go_past" "go_by" "pass"
             "go_through" "go_across")
      :etf SVO))

(define-category descend.ESCAPE-51.1-1-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("descend" "go_down" "fall" "descend" "come_down")
      :etf SVO))

(define-category climb.ESCAPE-51.1-1-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("climb" "mount" "go_up" "climb_up" "climb")
      :etf SVO))

(define-category ascend.ESCAPE-51.1-1-3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ascend" "uprise" "rise" "come_up" "ascend" "ascend" "ascend"
             "go_up" "ascend")
      :etf SVO))

(define-category stage.ESTABLISH-55.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stage" "stage" "arrange")
      :etf SVO))

(define-category pioneer.ESTABLISH-55.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pioneer")
      :etf SVO))

(define-category machinate.ESTABLISH-55.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("machinate" "prepare" "organize" "organise" "machinate" "get_up"
             "devise")
      :etf SVO))

(define-category innovate.ESTABLISH-55.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("innovate" "introduce" "innovate")
      :etf SVO))

(define-category constitutionalize.ESTABLISH-55.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("constitutionalize" "constitutionalize")
      :etf SVO))

(define-category constitute.ESTABLISH-55.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("constitute" "plant" "institute" "found" "establish" "constitute")
      :etf SVO))

(define-category bring.ESTABLISH-55.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bring")
      :etf SVO))

(define-category project.ESTIMATE-34.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("project")
      :etf SVO))

(define-category guesstimate.ESTIMATE-34.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("guesstimate" "guesstimate")
      :etf SVO))

(define-category assess.ESTIMATE-34.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("assess" "value" "valuate" "measure" "evaluate" "assess"
             "appraise")
      :etf SVO))

(define-category quantize.ESTIMATE-34.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("quantize")
      :etf SVO))

(define-category count.ESTIMATE-34.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("count")
      :etf SVO))

(define-category judge.ESTIMATE-34.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("judge" "judge" "guess" "gauge" "estimate" "approximate")
      :etf SVO))

(define-category guess.ESTIMATE-34.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("guess" "judge" "guess" "gauge" "estimate" "approximate")
      :etf SVO))

(define-category approximate.ESTIMATE-34.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("approximate" "judge" "guess" "gauge" "estimate" "approximate")
      :etf SVO))

(define-category gauge.ESTIMATE-34.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gauge" "judge" "guess" "gauge" "estimate" "approximate")
      :etf SVO))

(define-category estimate.ESTIMATE-34.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("estimate" "judge" "guess" "gauge" "estimate" "approximate")
      :etf SVO))

(define-category surpass.EXCEED-90
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("surpass" "transcend" "surpass" "exceed" "surpass" "surmount"
             "outstrip" "outperform" "outmatch" "outgo" "outdo" "exceed")
      :etf SVO))

(define-category overstep.EXCEED-90
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overstep" "transcend" "top" "pass" "overstep" "go_past" "exceed")
      :etf SVO))

(define-category overreach.EXCEED-90
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overreach" "overreach" "outwit" "outsmart" "outfox" "circumvent"
             "beat")
      :etf SVO))

(define-category outwit.EXCEED-90
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("outwit" "overreach" "outwit" "outsmart" "outfox" "circumvent"
             "beat")
      :etf SVO))

(define-category outweigh.EXCEED-90
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("outweigh" "preponderate" "overbalance" "outweigh" "outbalance"
             "outweigh")
      :etf SVO))

(define-category outstrip.EXCEED-90
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("outstrip" "outstrip" "outdistance" "distance" "surpass"
             "surmount" "outstrip" "outperform" "outmatch" "outgo" "outdo"
             "exceed")
      :etf SVO))

(define-category outsmart.EXCEED-90
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("outsmart" "outsmart" "outmanoeuvre" "outmaneuver" "overreach"
             "outwit" "outsmart" "outfox" "circumvent" "beat")
      :etf SVO))

(define-category outshine.EXCEED-90
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("outshine" "outshine")
      :etf SVO))

(define-category outrace.EXCEED-90
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("outrace")
      :etf SVO))

(define-category outnumber.EXCEED-90
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("outnumber" "outnumber")
      :etf SVO))

(define-category outmatch.EXCEED-90
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("outmatch" "surpass" "surmount" "outstrip" "outperform" "outmatch"
             "outgo" "outdo" "exceed")
      :etf SVO))

(define-category outdo.EXCEED-90
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("outdo" "surpass" "surmount" "outstrip" "outperform" "outmatch"
             "outgo" "outdo" "exceed")
      :etf SVO))

(define-category outbid.EXCEED-90
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("outbid" "outbid" "outbid")
      :etf SVO))

(define-category lap.EXCEED-90
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lap")
      :etf SVO))

(define-category exceed.EXCEED-90
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("exceed" "surpass" "surmount" "outstrip" "outperform" "outmatch"
             "outgo" "outdo" "exceed" "transcend" "top" "pass" "overstep"
             "go_past" "exceed" "transcend" "surpass" "exceed")
      :etf SVO))

(define-category better.EXCEED-90
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("better" "break" "better")
      :etf SVO))

(define-category transcend.EXCEED-90
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("transcend" "transcend" "top" "pass" "overstep" "go_past" "exceed"
             "transcend" "surpass" "exceed")
      :etf SVO))

(define-category overleap.EXCEED-90
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overleap" "vault" "overleap")
      :etf SVO))

(define-category overcome.EXCEED-90
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overcome" "surmount" "subdue" "overcome" "master" "get_over")
      :etf SVO))

(define-category trade.EXCHANGE-13.6.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trade" "trade" "swop" "switch" "swap" "trade_in" "trade")
      :etf SVO))

(define-category swap.EXCHANGE-13.6.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("swap" "trade" "swop" "switch" "swap")
      :etf SVO))

(define-category barter.EXCHANGE-13.6.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("barter" "barter")
      :etf SVO))

(define-category omit.EXCLUDE-107.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("omit" "take_out" "omit" "leave_out" "leave_off" "exclude"
             "except")
      :etf SVO))

(define-category whiff.EXHALE-40.1.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whiff" "whiff" "puff")
      :etf SVO))

(define-category urinate.EXHALE-40.1.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("urinate" "urinate")
      :etf SVO))

(define-category regurgitate.EXHALE-40.1.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("regurgitate")
      :etf SVO))

(define-category expectorate.EXHALE-40.1.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("expectorate" "spit_up" "spit_out" "expectorate" "cough_up"
             "cough_out")
      :etf SVO))

(define-category perspire.EXHALE-40.1.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("perspire" "sweat" "sudate" "perspire")
      :etf SVO))

(define-category hemorrhage.EXHALE-40.1.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hemorrhage")
      :etf SVO))

(define-category exhale.EXHALE-40.1.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("exhale" "expire" "exhale" "breathe_out")
      :etf SVO))

(define-category defecate.EXHALE-40.1.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("defecate")
      :etf SVO))

(define-category inhale.EXHALE-40.1.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("inhale" "inspire" "inhale" "breathe_in")
      :etf SVO))

(define-category survive.EXIST-47.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("survive" "survive" "subsist" "live" "exist" "survive"
             "pull_through" "pull_round" "make_it" "come_through" "survive"
             "live_on" "live" "last" "hold_up" "hold_out" "go" "endure")
      :etf SVO))

(define-category live.EXIST-47.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("live" "survive" "live_on" "live" "last" "hold_up" "hold_out" "go"
             "endure")
      :etf SVO))

(define-category endure.EXIST-47.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("endure" "run" "prevail" "persist" "endure" "die_hard" "survive"
             "live_on" "live" "last" "hold_up" "hold_out" "go" "endure")
      :etf SVO))

(define-category suckle.FEEDING-39.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("suckle")
      :etf SVO))

(define-category spoonfeed.FEEDING-39.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("spoonfeed" "spoonfeed")
      :etf SVO))

(define-category nurse.FEEDING-39.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nurse")
      :etf SVO))

(define-category handfeed.FEEDING-39.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("handfeed")
      :etf SVO))

(define-category force-feed.FEEDING-39.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("force-feed" "force-feed")
      :etf SVO))

(define-category feed.FEEDING-39.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("feed" "give" "feed" "feed")
      :etf SVO))

(define-category breastfeed.FEEDING-39.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("breastfeed" "wet-nurse" "suckle" "suck" "nurse" "lactate"
             "give_suck" "breastfeed")
      :etf SVO))

(define-category bottlefeed.FEEDING-39.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bottlefeed" "bottlefeed")
      :etf SVO))

(define-category inject.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("inject" "inject" "inject" "shoot" "inject" "shoot" "inject")
      :etf SVO))

(define-category tinge.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tinge" "tinge" "distort" "colour" "color" "touch" "tint" "tinge"
             "tinct")
      :etf SVO))

(define-category taint.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("taint" "taint" "infect")
      :etf SVO))

(define-category sully.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sully")
      :etf SVO))

(define-category suffuse.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("suffuse" "suffuse" "perfuse")
      :etf SVO))

(define-category stud.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stud" "stud")
      :etf SVO))

(define-category stop_up.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "stop_up" "secure" "plug")
      :etf SVO))

(define-category stipple.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stipple" "stipple" "speckle" "stipple" "stipple" "stipple")
      :etf SVO))

(define-category splotch.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("splotch" "splotch")
      :etf SVO))

(define-category soil.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("soil" "soil" "grime" "dirty" "colly" "bemire" "begrime")
      :etf SVO))

(define-category smut.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("smut" "smut")
      :etf SVO))

(define-category sauce.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sauce" "sauce" "sauce")
      :etf SVO))

(define-category ripple.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ripple" "undulate" "ruffle" "ripple" "riffle" "cockle")
      :etf SVO))

(define-category ring.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ring" "surround" "skirt" "ring" "environ" "border")
      :etf SVO))

(define-category riddle.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("riddle" "riddle")
      :etf SVO))

(define-category resupply.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("resupply")
      :etf SVO))

(define-category repopulate.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("repopulate")
      :etf SVO))

(define-category replenish.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("replenish" "replenish" "refill" "fill_again")
      :etf SVO))

(define-category prefill.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("prefill")
      :etf SVO))

(define-category plug.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("plug" "stop_up" "secure" "plug")
      :etf SVO))

(define-category plate.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("plate" "plate")
      :etf SVO))

(define-category pad.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pad" "pad" "bolster" "pad" "fill_out" "pad" "lard" "embroider"
             "embellish" "dramatize" "dramatise" "blow_up" "aggrandize"
             "aggrandise")
      :etf SVO))

(define-category ornament.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ornament" "ornament" "grace" "embellish" "decorate" "beautify"
             "adorn")
      :etf SVO))

(define-category mottle.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mottle" "mottle" "dapple" "cloud" "streak" "mottle" "blotch")
      :etf SVO))

(define-category mask.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mask" "mask" "mask")
      :etf SVO))

(define-category litter.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("litter" "litter" "litter")
      :etf SVO))

(define-category lash.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lash" "lash")
      :etf SVO))

(define-category lard.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lard" "pad" "lard" "embroider" "embellish" "dramatize"
             "dramatise" "blow_up" "aggrandize" "aggrandise" "lard")
      :etf SVO))

(define-category inundate.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("inundate" "submerge" "inundate" "deluge" "swamp" "inundate"
             "flood" "deluge")
      :etf SVO))

(define-category interweave.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("interweave" "weave" "interweave")
      :etf SVO))

(define-category intersperse.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("intersperse" "intersperse" "interlard" "intersperse")
      :etf SVO))

(define-category interleave.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("interleave" "interleave")
      :etf SVO))

(define-category interlard.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("interlard" "intersperse" "interlard")
      :etf SVO))

(define-category interlace.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("interlace" "twine" "lace" "intertwine" "interlace" "entwine"
             "enlace")
      :etf SVO))

(define-category inlay.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("inlay" "inlay")
      :etf SVO))

(define-category infest.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("infest" "infest" "overrun" "invade" "infest" "overrun" "infest")
      :etf SVO))

(define-category infect.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("infect" "taint" "infect")
      :etf SVO))

(define-category impregnate.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("impregnate" "prang_up" "knock_up" "impregnate" "bang_up"
             "saturate" "impregnate")
      :etf SVO))

(define-category imbue.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("imbue" "soak" "imbue")
      :etf SVO))

(define-category honeycomb.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("honeycomb" "honeycomb")
      :etf SVO))

(define-category gum_up.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "gum_up")
      :etf SVO))

(define-category grace.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grace")
      :etf SVO))

(define-category garnish.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("garnish" "trim" "garnish" "dress")
      :etf SVO))

(define-category garland.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("garland" "garland")
      :etf SVO))

(define-category flood.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("flood" "oversupply" "glut" "flood" "flood" "swamp" "inundate"
             "flood" "deluge")
      :etf SVO))

(define-category fleck.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fleck" "spot" "fleck" "blot" "blob")
      :etf SVO))

(define-category fill.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fill" "fill_up" "fill" "fill" "occupy" "fill" "make_full"
             "fill_up" "fill")
      :etf SVO))

(define-category enrich.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("enrich" "enrich" "enrich")
      :etf SVO))

(define-category endow.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("endow" "invest" "indue" "gift" "endue" "endow" "empower")
      :etf SVO))

(define-category encircle.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("encircle" "gird" "encircle" "encircle" "circle")
      :etf SVO))

(define-category emblazon.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("emblazon" "emblazon" "blazon" "emblazon" "colour" "color")
      :etf SVO))

(define-category embellish.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("embellish" "prettify" "fancify" "embellish" "beautify" "ornament"
             "grace" "embellish" "decorate" "beautify" "adorn" "grace"
             "embellish" "decorate" "deck" "beautify" "adorn" "pad" "lard"
             "embroider" "embellish" "dramatize" "dramatise" "blow_up"
             "aggrandize" "aggrandise")
      :etf SVO))

(define-category dot.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dot" "sprinkle" "scatter" "dust" "dot" "disperse" "stud" "dot"
             "constellate")
      :etf SVO))

(define-category dope.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dope" "dope" "dope")
      :etf SVO))

(define-category dirty.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dirty" "soil" "grime" "dirty" "colly" "bemire" "begrime")
      :etf SVO))

(define-category deluge.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deluge" "submerge" "inundate" "deluge" "swamp" "inundate" "flood"
             "deluge")
      :etf SVO))

(define-category dam.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dam" "dam_up" "dam")
      :etf SVO))

(define-category contaminate.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("contaminate" "pollute" "foul" "contaminate")
      :etf SVO))

(define-category clutter.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("clutter" "clutter_up" "clutter")
      :etf SVO))

(define-category clog.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("clog" "constipate" "clog" "foul" "congest" "clog_up" "clog"
             "choke_off" "choke" "back_up")
      :etf SVO))

(define-category choke.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("choke" "suffocate" "stifle" "choke" "asphyxiate" "foul" "congest"
             "clog_up" "clog" "choke_off" "choke" "back_up" "strangle" "choke"
             "scrag" "choke" "gag" "fret" "choke")
      :etf SVO))

(define-category bombard.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bombard" "bombard" "bomb" "pelt" "bombard")
      :etf SVO))

(define-category blot.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("blot" "blot")
      :etf SVO))

(define-category blockade.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("blockade" "stop" "blockade" "block_up" "block_off" "block"
             "barricade" "bar")
      :etf SVO))

(define-category blacktop.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("blacktop" "blacktop")
      :etf SVO))

(define-category bestrew.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bestrew" "bestrew")
      :etf SVO))

(define-category bandage.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bandage" "bandage" "bind" "bandage")
      :etf SVO))

(define-category anoint.FILL-9.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("anoint" "oil" "inunct" "embrocate" "anoint" "anele")
      :etf SVO))

(define-category shitcan.FIRE-10.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shitcan")
      :etf SVO))

(define-category let_go.FIRE-10.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category lay_off.FIRE-10.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "lay_off" "furlough")
      :etf SVO))

(define-category give_the_boot.FIRE-10.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category terminate.FIRE-10.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("terminate" "terminate" "send_away" "sack" "give_the_sack"
             "give_the_axe" "give_notice" "force_out" "fire" "displace"
             "dismiss" "can")
      :etf SVO))

(define-category force_out.FIRE-10.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "terminate" "send_away" "sack" "give_the_sack" "give_the_axe"
             "give_notice" "force_out" "fire" "displace" "dismiss" "can")
      :etf SVO))

(define-category suspend.FIRE-10.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("suspend" "suspend" "debar")
      :etf SVO))

(define-category send_away.FIRE-10.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "terminate" "send_away" "sack" "give_the_sack" "give_the_axe"
             "give_notice" "force_out" "fire" "displace" "dismiss" "can")
      :etf SVO))

(define-category remove.FIRE-10.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("remove" "remove")
      :etf SVO))

(define-category expel.FIRE-10.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("expel" "throw_out" "oust" "kick_out" "expel" "drum_out"
             "boot_out")
      :etf SVO))

(define-category oust.FIRE-10.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("oust" "throw_out" "oust" "kick_out" "expel" "drum_out" "boot_out")
      :etf SVO))

(define-category unseat.FIRE-10.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("unseat" "unseat")
      :etf SVO))

(define-category drop.FIRE-10.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("drop" "drop" "send_packing" "send_away" "drop" "dismiss")
      :etf SVO))

(define-category sack.FIRE-10.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sack" "terminate" "send_away" "sack" "give_the_sack"
             "give_the_axe" "give_notice" "force_out" "fire" "displace"
             "dismiss" "can")
      :etf SVO))

(define-category dismiss.FIRE-10.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dismiss" "terminate" "send_away" "sack" "give_the_sack"
             "give_the_axe" "give_notice" "force_out" "fire" "displace"
             "dismiss" "can")
      :etf SVO))

(define-category fire.FIRE-10.10
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fire" "terminate" "send_away" "sack" "give_the_sack"
             "give_the_axe" "give_notice" "force_out" "fire" "displace"
             "dismiss" "can")
      :etf SVO))

(define-category shave.FLOSS-41.2.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shave" "trim" "shave")
      :etf SVO))

(define-category floss.FLOSS-41.2.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("floss" "floss")
      :etf SVO))

(define-category brush.FLOSS-41.2.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("brush" "brush")
      :etf SVO))

(define-category stop.FORBID-64.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stop" "stop" "kibosh" "halt" "block")
      :etf SVO))

(define-category restrain.FORBID-64.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("restrain" "restrain" "intimidate")
      :etf SVO))

(define-category prohibit.FORBID-64.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("prohibit" "veto" "proscribe" "prohibit" "nix" "interdict"
             "forbid" "disallow")
      :etf SVO))

(define-category prevent.FORBID-64.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("prevent" "prevent" "keep" "prevent" "preclude" "forestall"
             "foreclose" "forbid")
      :etf SVO))

(define-category preclude.FORBID-64.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("preclude" "prevent" "preclude" "forestall" "foreclose" "forbid")
      :etf SVO))

(define-category obstruct.FORBID-64.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("obstruct" "stymy" "stymie" "obstruct" "hinder" "embarrass"
             "blockade" "block")
      :etf SVO))

(define-category inhibit.FORBID-64.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("inhibit" "suppress" "subdue" "stamp_down" "inhibit" "curb"
             "conquer")
      :etf SVO))

(define-category impede.FORBID-64.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("impede" "impede" "hinder")
      :etf SVO))

(define-category hinder.FORBID-64.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hinder" "stymy" "stymie" "obstruct" "hinder" "embarrass"
             "blockade" "block" "impede" "hinder")
      :etf SVO))

(define-category hamper.FORBID-64.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hamper" "strangle" "hamper" "halter" "cramp")
      :etf SVO))

(define-category forbid.FORBID-64.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("forbid" "prevent" "preclude" "forestall" "foreclose" "forbid"
             "veto" "proscribe" "prohibit" "nix" "interdict" "forbid"
             "disallow")
      :etf SVO))

(define-category exclude.FORBID-64.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("exclude" "shut_out" "shut" "keep_out" "exclude" "take_out" "omit"
             "leave_out" "leave_off" "exclude" "except")
      :etf SVO))

(define-category discourage.FORBID-64.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("discourage" "discourage" "deter")
      :etf SVO))

(define-category deter.FORBID-64.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deter" "dissuade" "deter" "discourage" "deter")
      :etf SVO))

(define-category ban.FORBID-64.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ban" "ban")
      :etf SVO))

(define-category trust.FULFILLING-13.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trust" "trust" "intrust" "entrust" "confide" "commit")
      :etf SVO))

(define-category present.FULFILLING-13.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("present" "present" "face" "confront" "represent" "present"
             "lay_out" "show" "present" "exhibit" "demonstrate" "demo")
      :etf SVO))

(define-category leave.FULFILLING-13.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("leave" "pass_on" "leave" "impart" "give" "will" "leave"
             "bequeath" "leave")
      :etf SVO))

(define-category issue.FULFILLING-13.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("issue" "supply" "issue")
      :etf SVO))

(define-category supply.FULFILLING-13.4.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("supply" "supply" "provide" "ply" "cater" "supply" "issue"
             "supply" "render" "provide" "furnish")
      :etf SVO))

(define-category serve.FULFILLING-13.4.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("serve" "swear_out" "serve" "process" "serve_up" "serve" "dish_up"
             "dish_out" "dish" "serve" "help")
      :etf SVO))

(define-category resupply.FULFILLING-13.4.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("resupply")
      :etf SVO))

(define-category furnish.FULFILLING-13.4.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("furnish" "supply" "render" "provide" "furnish")
      :etf SVO))

(define-category entrust.FULFILLING-13.4.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("entrust" "leave" "entrust" "trust" "intrust" "entrust" "confide"
             "commit")
      :etf SVO))

(define-category win.GET-13.5.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("win" "win" "gain" "acquire")
      :etf SVO))

(define-category take.GET-13.5.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("take" "take")
      :etf SVO))

(define-category reserve.GET-13.5.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reserve" "reserve" "hold" "book" "reserve")
      :etf SVO))

(define-category rent.GET-13.5.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rent" "rent" "lease" "hire" "charter" "take" "rent" "lease"
             "hire" "engage" "charter")
      :etf SVO))

(define-category reach.GET-13.5.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reach" "turn_over" "reach" "pass_on" "pass" "hand" "give")
      :etf SVO))

(define-category procure.GET-13.5.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("procure" "procure" "pimp" "pander" "secure" "procure")
      :etf SVO))

(define-category pluck.GET-13.5.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pluck" "pluck" "pick" "cull" "tweak" "pull_off" "pluck"
             "pick_off")
      :etf SVO))

(define-category pick.GET-13.5.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pick" "pluck" "pick" "cull")
      :etf SVO))

(define-category phone.GET-13.5.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("phone" "telephone" "ring" "phone" "call_up" "call")
      :etf SVO))

(define-category lease.GET-13.5.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lease" "take" "rent" "lease" "hire" "engage" "charter" "rent"
             "lease" "hire" "charter")
      :etf SVO))

(define-category hire.GET-13.5.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hire" "take" "rent" "lease" "hire" "engage" "charter" "rent"
             "lease" "hire" "charter" "hire" "engage" "employ")
      :etf SVO))

(define-category gather.GET-13.5.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gather" "get_together" "gather" "assemble" "pull_together"
             "gather" "garner" "collect")
      :etf SVO))

(define-category choose.GET-13.5.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("choose" "prefer" "opt" "choose" "take" "select" "pick_out"
             "choose")
      :etf SVO))

(define-category charter.GET-13.5.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("charter" "take" "rent" "lease" "hire" "engage" "charter")
      :etf SVO))

(define-category call.GET-13.5.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("call" "call" "send_for" "call")
      :etf SVO))

(define-category buy.GET-13.5.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("buy" "buy" "purchase" "buy")
      :etf SVO))

(define-category book.GET-13.5.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("book" "reserve" "hold" "book")
      :etf SVO))

(define-category attain.GET-13.5.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("attain")
      :etf SVO))

(define-category render.GIVE-13.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("render" "turn_in" "render" "hand_over" "fork_up" "fork_over"
             "fork_out" "deliver" "return" "render" "submit" "render" "supply"
             "render" "provide" "furnish")
      :etf SVO))

(define-category refund.GIVE-13.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("refund" "return" "repay" "refund" "give_back")
      :etf SVO))

(define-category peddle.GIVE-13.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("peddle" "vend" "pitch" "peddle" "monger" "huckster" "hawk")
      :etf SVO))

(define-category pass.GIVE-13.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pass" "pass" "make_pass" "return" "pass" "fall" "devolve" "pass"
             "turn_over" "reach" "pass_on" "pass" "hand" "give")
      :etf SVO))

(define-category loan.GIVE-13.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("loan" "loan" "lend")
      :etf SVO))

(define-category lend.GIVE-13.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lend" "loan" "lend")
      :etf SVO))

(define-category give-back.GIVE-13.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("give-back")
      :etf SVO))

(define-category deal.GIVE-13.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deal" "deal" "share" "portion_out" "divvy_up" "deal" "apportion"
             "deal" "shell_out" "parcel_out" "mete_out" "lot" "dole_out"
             "distribute" "dispense" "dish_out" "deal_out" "deal" "allot"
             "administer")
      :etf SVO))

(define-category wolf.GOBBLE-39.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wolf" "wolf_down" "wolf")
      :etf SVO))

(define-category gobble.GOBBLE-39.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gobble" "gobble" "bolt")
      :etf SVO))

(define-category bolt.GOBBLE-39.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bolt" "gobble" "bolt" "bolt")
      :etf SVO))

(define-category swig.GOBBLE-39.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("swig" "swig" "quaff" "gulp")
      :etf SVO))

(define-category swallow.GOBBLE-39.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("swallow" "swallow" "get_down")
      :etf SVO))

(define-category slug.GOBBLE-39.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("slug")
      :etf SVO))

(define-category quaff.GOBBLE-39.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("quaff" "swig" "quaff" "gulp")
      :etf SVO))

(define-category guzzle.GOBBLE-39.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("guzzle" "guzzle")
      :etf SVO))

(define-category gulp.GOBBLE-39.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gulp" "swig" "quaff" "gulp")
      :etf SVO))

(define-category neaten.GROOM-41.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("neaten")
      :etf SVO))

(define-category groom.GROOM-41.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("groom" "neaten" "groom" "groom" "dress" "curry")
      :etf SVO))

(define-category curry.GROOM-41.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("curry" "groom" "dress" "curry")
      :etf SVO))

(define-category cleanse.GROOM-41.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cleanse")
      :etf SVO))

(define-category succor.HELP-72.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("succor" "succour" "succor")
      :etf SVO))

(define-category support.HELP-72.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("support" "support" "back_up")
      :etf SVO))

(define-category train.HIRE-13.5.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("train" "train" "prepare" "groom")
      :etf SVO))

(define-category take_on.HIRE-13.5.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "take_on" "take" "admit" "accept")
      :etf SVO))

(define-category subcontract.HIRE-13.5.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("subcontract" "subcontract")
      :etf SVO))

(define-category sign_up.HIRE-13.5.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "sign_up" "sign_on" "sign" "contract")
      :etf SVO))

(define-category sign_on.HIRE-13.5.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "sign_up" "sign_on" "sign" "contract")
      :etf SVO))

(define-category reinstate.HIRE-13.5.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reinstate" "reinstate")
      :etf SVO))

(define-category recruit.HIRE-13.5.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("recruit")
      :etf SVO))

(define-category prepare.HIRE-13.5.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("prepare" "train" "prepare" "educate" "develop")
      :etf SVO))

(define-category hire.HIRE-13.5.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hire" "hire" "engage" "employ")
      :etf SVO))

(define-category groom.HIRE-13.5.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("groom" "train" "prepare" "groom")
      :etf SVO))

(define-category enlist.HIRE-13.5.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("enlist" "muster_in" "enlist" "draft" "enlist" "engage")
      :etf SVO))

(define-category engage.HIRE-13.5.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("engage" "hire" "engage" "employ")
      :etf SVO))

(define-category employ.HIRE-13.5.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("employ" "hire" "engage" "employ")
      :etf SVO))

(define-category draft.HIRE-13.5.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("draft" "muster_in" "enlist" "draft")
      :etf SVO))

(define-category smite.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("smite" "smite" "afflict" "smite")
      :etf SVO))

(define-category whop.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whop")
      :etf SVO))

(define-category whap.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whap")
      :etf SVO))

(define-category whang.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whang")
      :etf SVO))

(define-category wham.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wham")
      :etf SVO))

(define-category whack.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whack" "whop" "wham" "whack" "wallop")
      :etf SVO))

(define-category trounce.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trounce")
      :etf SVO))

(define-category thwack.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("thwack" "thwack" "smack")
      :etf SVO))

(define-category thump.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("thump" "thump" "pound" "poke")
      :etf SVO))

(define-category tamp.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tamp" "tamp_down" "tamp" "pack")
      :etf SVO))

(define-category squelch.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("squelch")
      :etf SVO))

(define-category squash.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("squash" "squelch" "squeeze" "squash" "mash" "crush")
      :etf SVO))

(define-category pink.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pink")
      :etf SVO))

(define-category knap.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("knap")
      :etf SVO))

(define-category dash.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dash" "dash" "crash")
      :etf SVO))

(define-category click.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("click" "snap" "flick" "click")
      :etf SVO))

(define-category bop.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bop")
      :etf SVO))

(define-category blast.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("blast")
      :etf SVO))

(define-category bash.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bash" "whop" "whap" "sock" "bop" "bonk" "bash")
      :etf SVO))

(define-category bang.HIT-18.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bang" "slam" "bang" "slam" "bang")
      :etf SVO))

(define-category wield.HOLD-15.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wield" "wield" "manage" "handle")
      :etf SVO))

(define-category seize.HOLD-15.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("seize" "seize" "seize" "prehend" "clutch")
      :etf SVO))

(define-category handle.HOLD-15.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("handle" "palm" "handle")
      :etf SVO))

(define-category grip.HOLD-15.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grip" "grip")
      :etf SVO))

(define-category grasp.HOLD-15.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grasp" "hold_on" "grasp")
      :etf SVO))

(define-category grab.HOLD-15.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grab" "grab" "grab" "grab" "snap_up" "snaffle" "grab"
             "take_hold_of" "grab" "catch")
      :etf SVO))

(define-category clutch.HOLD-15.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("clutch" "hold_tight" "hold_close" "clutch" "cling_to")
      :etf SVO))

(define-category clasp.HOLD-15.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("clasp" "clasp")
      :etf SVO))

(define-category seek.HUNT-35.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("seek" "seek" "seek")
      :etf SVO))

(define-category scrounge.HUNT-35.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scrounge" "scrounge" "forage")
      :etf SVO))

(define-category hunt.HUNT-35.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hunt" "hunt" "hunt" "trace" "hunt" "hound" "track_down" "run"
             "hunt_down" "hunt")
      :etf SVO))

(define-category fish.HUNT-35.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fish" "fish")
      :etf SVO))

(define-category feel.HUNT-35.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("feel" "feel" "feel")
      :etf SVO))

(define-category dig.HUNT-35.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dig" "hollow" "excavate" "dig" "turn_over" "dig" "delve"
             "cut_into")
      :etf SVO))

(define-category stub.HURT-40.8.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stub" "stub")
      :etf SVO))

(define-category sting.HURT-40.8.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sting")
      :etf SVO))

(define-category rick.HURT-40.8.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rick")
      :etf SVO))

(define-category overstretch.HURT-40.8.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overstretch")
      :etf SVO))

(define-category chafe.HURT-40.8.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chafe" "excoriate" "chafe")
      :etf SVO))

(define-category graze.HURT-40.8.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("graze")
      :etf SVO))

(define-category jam.HURT-40.8.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("jam")
      :etf SVO))

(define-category hit.HURT-40.8.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hit")
      :etf SVO))

(define-category wrench.HURT-40.8.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wrench" "wrick" "wrench" "twist" "turn" "sprain" "rick")
      :etf SVO))

(define-category sunburn.HURT-40.8.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sunburn")
      :etf SVO))

(define-category skin.HURT-40.8.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("skin" "skin" "scrape")
      :etf SVO))

(define-category scratch.HURT-40.8.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scratch" "scratch" "rub" "itch" "scratch_up" "scratch" "scrape")
      :etf SVO))

(define-category scald.HURT-40.8.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scald" "scald")
      :etf SVO))

(define-category prick.HURT-40.8.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("prick" "sting" "prick" "bite" "prickle" "prick")
      :etf SVO))

(define-category nick.HURT-40.8.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nick" "snick" "nick")
      :etf SVO))

(define-category injure.HURT-40.8.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("injure" "wound" "injure")
      :etf SVO))

(define-category hurt.HURT-40.8.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hurt" "hurt")
      :etf SVO))

(define-category cut.HURT-40.8.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cut" "cut")
      :etf SVO))

(define-category contuse.HURT-40.8.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("contuse")
      :etf SVO))

(define-category burn.HURT-40.8.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("burn" "sting" "burn" "bite" "fire" "burn_down" "burn")
      :etf SVO))

(define-category bump.HURT-40.8.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bump" "knock" "bump")
      :etf SVO))

(define-category bruise.HURT-40.8.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bruise" "contuse" "bruise")
      :etf SVO))

(define-category bite.HURT-40.8.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bite" "seize_with_teeth" "bite")
      :etf SVO))

(define-category bark.HURT-40.8.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bark")
      :etf SVO))

(define-category tag.ILLUSTRATE-25.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tag" "tag" "mark" "label")
      :etf SVO))

(define-category redecorate.ILLUSTRATE-25.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("redecorate" "redecorate")
      :etf SVO))

(define-category ornament.ILLUSTRATE-25.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ornament" "ornament" "grace" "embellish" "decorate" "beautify"
             "adorn")
      :etf SVO))

(define-category monogram.ILLUSTRATE-25.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("monogram")
      :etf SVO))

(define-category letter.ILLUSTRATE-25.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("letter" "letter")
      :etf SVO))

(define-category label.ILLUSTRATE-25.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("label" "tag" "mark" "label")
      :etf SVO))

(define-category initial.ILLUSTRATE-25.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("initial" "initial")
      :etf SVO))

(define-category illustrate.ILLUSTRATE-25.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("illustrate" "illustrate")
      :etf SVO))

(define-category illuminate.ILLUSTRATE-25.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("illuminate" "illuminate")
      :etf SVO))

(define-category ice.ILLUSTRATE-25.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ice" "ice" "frost")
      :etf SVO))

(define-category gild.ILLUSTRATE-25.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gild")
      :etf SVO))

(define-category endorse.ILLUSTRATE-25.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("endorse" "indorse" "endorse")
      :etf SVO))

(define-category embellish.ILLUSTRATE-25.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("embellish" "ornament" "grace" "embellish" "decorate" "beautify"
             "adorn" "pad" "lard" "embroider" "embellish" "dramatize"
             "dramatise" "blow_up" "aggrandize" "aggrandise")
      :etf SVO))

(define-category decorate.ILLUSTRATE-25.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("decorate" "dress" "decorate")
      :etf SVO))

(define-category brand.ILLUSTRATE-25.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("brand" "brand")
      :etf SVO))

(define-category bead.ILLUSTRATE-25.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bead" "bead" "bead")
      :etf SVO))

(define-category autograph.ILLUSTRATE-25.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("autograph" "inscribe" "autograph")
      :etf SVO))

(define-category adorn.ILLUSTRATE-25.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("adorn" "ornament" "grace" "embellish" "decorate" "beautify"
             "adorn")
      :etf SVO))

(define-category address.ILLUSTRATE-25.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("address" "direct" "address")
      :etf SVO))

(define-category anticipate.INDICATE-78
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("anticipate" "promise" "prognosticate" "predict" "foretell"
             "forebode" "call" "anticipate")
      :etf SVO))

(define-category forebode.INDICATE-78
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("forebode" "promise" "prognosticate" "predict" "foretell"
             "forebode" "call" "anticipate")
      :etf SVO))

(define-category prognosticate.INDICATE-78
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("prognosticate" "prognosticate" "presage" "prefigure" "predict"
             "portend" "omen" "foretell" "foreshadow" "forecast" "bode"
             "betoken" "auspicate" "augur")
      :etf SVO))

(define-category expose.INDICATE-78
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("expose")
      :etf SVO))

(define-category corroborate.INDICATE-78
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("corroborate")
      :etf SVO))

(define-category denote.INDICATE-78
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("denote")
      :etf SVO))

(define-category predict.INDICATE-78
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("predict" "prognosticate" "presage" "prefigure" "predict"
             "portend" "omen" "foretell" "foreshadow" "forecast" "bode"
             "betoken" "auspicate" "augur")
      :etf SVO))

(define-category imply.INDICATE-78
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("imply" "inculpate" "incriminate" "imply" "imply" "imply"
             "connote")
      :etf SVO))

(define-category wireless.INSTR_COMMUNICATION-37.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wireless")
      :etf SVO))

(define-category wire.INSTR_COMMUNICATION-37.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wire" "wire" "telegraph" "cable")
      :etf SVO))

(define-category telex.INSTR_COMMUNICATION-37.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("telex" "telex")
      :etf SVO))

(define-category telephone.INSTR_COMMUNICATION-37.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("telephone" "telephone" "ring" "phone" "call_up" "call")
      :etf SVO))

(define-category telegraph.INSTR_COMMUNICATION-37.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("telegraph" "wire" "telegraph" "cable")
      :etf SVO))

(define-category telecast.INSTR_COMMUNICATION-37.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("telecast" "televise" "telecast")
      :etf SVO))

(define-category signal.INSTR_COMMUNICATION-37.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("signal" "signalize" "signalise" "signal" "sign")
      :etf SVO))

(define-category semaphore.INSTR_COMMUNICATION-37.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("semaphore" "semaphore" "semaphore")
      :etf SVO))

(define-category satellite.INSTR_COMMUNICATION-37.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("satellite" "satellite")
      :etf SVO))

(define-category relay.INSTR_COMMUNICATION-37.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("relay" "relay")
      :etf SVO))

(define-category radio.INSTR_COMMUNICATION-37.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("radio" "radio")
      :etf SVO))

(define-category phone.INSTR_COMMUNICATION-37.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("phone" "telephone" "ring" "phone" "call_up" "call")
      :etf SVO))

(define-category netmail.INSTR_COMMUNICATION-37.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("netmail" "netmail" "email" "e-mail")
      :etf SVO))

(define-category modem.INSTR_COMMUNICATION-37.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("modem")
      :etf SVO))

(define-category fax.INSTR_COMMUNICATION-37.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fax" "telefax" "fax" "facsimile")
      :etf SVO))

(define-category e-mail.INSTR_COMMUNICATION-37.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("e-mail" "netmail" "email" "e-mail")
      :etf SVO))

(define-category cable.INSTR_COMMUNICATION-37.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cable" "wire" "telegraph" "cable")
      :etf SVO))

(define-category broadcast.INSTR_COMMUNICATION-37.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("broadcast")
      :etf SVO))

(define-category mean.INTEND-61.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mean")
      :etf SVO))

(define-category interrogate.INTERROGATE-37.1.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("interrogate" "question" "interrogate")
      :etf SVO))

(define-category interview.INTERROGATE-37.1.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("interview" "question" "interview")
      :etf SVO))

(define-category question.INTERROGATE-37.1.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("question" "question" "query" "question" "interrogate")
      :etf SVO))

(define-category cross-examine.INTERROGATE-37.1.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cross-examine" "cross_question" "cross_examine")
      :etf SVO))

(define-category enroll.INVOLVE-107.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("enroll" "recruit" "inscribe" "enter" "enroll" "enrol")
      :etf SVO))

(define-category include.INVOLVE-107.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("include" "include" "let_in" "include" "admit")
      :etf SVO))

(define-category relate.INVOLVE-107.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("relate")
      :etf SVO))

(define-category engage.INVOLVE-107.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("engage" "enlist" "engage")
      :etf SVO))

(define-category involve.INVOLVE-107.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("involve" "involve")
      :etf SVO))

(define-category slang.JUDGMENT-33.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("slang" "slang")
      :etf SVO))

(define-category imprecate.JUDGMENT-33.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("imprecate")
      :etf SVO))

(define-category gibe.JUDGMENT-33.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gibe")
      :etf SVO))

(define-category find_fault_with.JUDGMENT-33.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category condone.JUDGMENT-33.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("condone")
      :etf SVO))

(define-category blaspheme.JUDGMENT-33.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("blaspheme")
      :etf SVO))

(define-category blame.JUDGMENT-33.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("blame")
      :etf SVO))

(define-category badmouth.JUDGMENT-33.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("badmouth")
      :etf SVO))

(define-category backbite.JUDGMENT-33.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("backbite" "bitch" "backbite")
      :etf SVO))

(define-category assault.JUDGMENT-33.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("assault")
      :etf SVO))

(define-category abuse.JUDGMENT-33.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("abuse" "shout" "clapperclaw" "blackguard" "abuse" "pervert"
             "misuse" "abuse" "step" "mistreat" "maltreat" "ill-use"
             "ill-treat" "abuse")
      :etf SVO))

(define-category stockpile.KEEP-15.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stockpile" "stockpile" "stock" "carry")
      :etf SVO))

(define-category leave.KEEP-15.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("leave" "leave" "forget" "leave" "entrust")
      :etf SVO))

(define-category keep.KEEP-15.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("keep" "maintain" "keep" "keep" "keep")
      :etf SVO))

(define-category hoard.KEEP-15.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hoard" "stash" "squirrel_away" "lay_away" "hoard" "hive_up"
             "cache")
      :etf SVO))

(define-category constrain.LIMIT-76
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("constrain")
      :etf SVO))

(define-category restrain.LIMIT-76
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("restrain" "trammel" "throttle" "restrict" "restrain" "limit"
             "confine" "bound")
      :etf SVO))

(define-category restrict.LIMIT-76
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("restrict" "trammel" "throttle" "restrict" "restrain" "limit"
             "confine" "bound")
      :etf SVO))

(define-category reduce.LIMIT-76
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reduce" "trim_down" "trim_back" "trim" "reduce" "cut_down"
             "cut_back" "cut" "bring_down")
      :etf SVO))

(define-category limit.LIMIT-76
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("limit" "trammel" "throttle" "restrict" "restrain" "limit"
             "confine" "bound")
      :etf SVO))

(define-category confine.LIMIT-76
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("confine" "trammel" "throttle" "restrict" "restrain" "limit"
             "confine" "bound")
      :etf SVO))

(define-category stall.LINGER-53.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stall" "stall" "stall" "shillyshally" "procrastinate"
             "drag_one's_heels" "drag_one's_feet" "dillydally" "dilly-dally")
      :etf SVO))

(define-category scruple.LINGER-53.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scruple" "scruple" "scruple")
      :etf SVO))

(define-category delay.LINGER-53.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("delay" "delay")
      :etf SVO))

(define-category win_over.LURE-59.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "win_over" "convince" "convert")
      :etf SVO))

(define-category sweet-talk.LURE-59.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sweet-talk" "wheedle" "sweet-talk" "palaver" "inveigle" "coax"
             "cajole" "blarney")
      :etf SVO))

(define-category talk.LURE-59.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("talk")
      :etf SVO))

(define-category soothe.LURE-59.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("soothe" "soothe" "solace" "console" "comfort")
      :etf SVO))

(define-category seduce.LURE-59.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("seduce" "seduce")
      :etf SVO))

(define-category lure.LURE-59.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lure" "tempt" "lure" "entice")
      :etf SVO))

(define-category inveigle.LURE-59.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("inveigle" "wheedle" "sweet-talk" "palaver" "inveigle" "coax"
             "cajole" "blarney")
      :etf SVO))

(define-category flatter.LURE-59.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("flatter" "flatter" "blandish")
      :etf SVO))

(define-category entice.LURE-59.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("entice" "tempt" "lure" "entice")
      :etf SVO))

(define-category draw.LURE-59.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("draw" "pull" "force" "draw")
      :etf SVO))

(define-category coerce.LURE-59.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("coerce" "squeeze" "pressure" "hale" "force" "coerce")
      :etf SVO))

(define-category coax.LURE-59.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("coax" "wheedle" "sweet-talk" "palaver" "inveigle" "coax" "cajole"
             "blarney")
      :etf SVO))

(define-category cajole.LURE-59.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cajole" "wheedle" "sweet-talk" "palaver" "inveigle" "coax"
             "cajole" "blarney")
      :etf SVO))

(define-category bewitch.LURE-59.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bewitch")
      :etf SVO))

(define-category attract.LURE-59.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("attract")
      :etf SVO))

(define-category allure.LURE-59.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("allure" "tempt" "allure")
      :etf SVO))

(define-category hum.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hum")
      :etf SVO))

(define-category gurgle.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gurgle")
      :etf SVO))

(define-category blare.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("blare")
      :etf SVO))

(define-category yodel.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("yodel" "yodel" "warble" "descant")
      :etf SVO))

(define-category yelp.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("yelp")
      :etf SVO))

(define-category yell.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("yell" "yell" "scream")
      :etf SVO))

(define-category yap.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("yap")
      :etf SVO))

(define-category yammer.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("yammer" "yawp" "yammer" "whine" "grizzle")
      :etf SVO))

(define-category whoop.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whoop" "whoop")
      :etf SVO))

(define-category witter.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("witter")
      :etf SVO))

(define-category whistle.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whistle" "whistle")
      :etf SVO))

(define-category whisper.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whisper" "whisper")
      :etf SVO))

(define-category whine.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whine" "yawp" "yammer" "whine" "grizzle" "whine" "snivel")
      :etf SVO))

(define-category whimper.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whimper" "whimper" "wail" "pule" "mewl")
      :etf SVO))

(define-category wheeze.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wheeze")
      :etf SVO))

(define-category warble.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("warble" "yodel" "warble" "descant" "warble" "trill" "quaver")
      :etf SVO))

(define-category wail.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wail" "yawl" "yaup" "wail" "ululate" "roar" "howl")
      :etf SVO))

(define-category vociferate.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("vociferate")
      :etf SVO))

(define-category twang.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("twang" "twang")
      :etf SVO))

(define-category trumpet.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trumpet" "trumpet")
      :etf SVO))

(define-category trill.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trill" "warble" "trill" "quaver" "trill")
      :etf SVO))

(define-category tisk.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tisk")
      :etf SVO))

(define-category thunder.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("thunder" "thunder" "roar")
      :etf SVO))

(define-category stutter.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stutter" "stutter" "stammer" "falter" "bumble")
      :etf SVO))

(define-category stemmer.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stemmer")
      :etf SVO))

(define-category stammer.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stammer" "stutter" "stammer" "falter" "bumble")
      :etf SVO))

(define-category squeal.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("squeal" "squeal" "oink")
      :etf SVO))

(define-category squeak.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("squeak" "whine" "squeak" "skreak" "screech" "screak" "creak")
      :etf SVO))

(define-category squawk.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("squawk" "squawk" "holler" "grouse" "gripe" "crab" "bitch"
             "bellyache" "beef")
      :etf SVO))

(define-category squall.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("squall" "wawl" "waul" "squall")
      :etf SVO))

(define-category splutter.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("splutter" "sputter" "splutter")
      :etf SVO))

(define-category snuffle.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("snuffle" "snuffle" "snivel" "sniffle" "blubber" "blub")
      :etf SVO))

(define-category snivel.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("snivel" "whine" "snivel")
      :etf SVO))

(define-category snarl.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("snarl" "snarl" "snap")
      :etf SVO))

(define-category snap.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("snap" "snarl" "snap")
      :etf SVO))

(define-category smile.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("smile" "smile")
      :etf SVO))

(define-category smatter.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("smatter" "smatter" "blither" "blether" "blather" "babble")
      :etf SVO))

(define-category sing.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sing" "sing")
      :etf SVO))

(define-category sigh.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sigh" "sigh")
      :etf SVO))

(define-category simper.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("simper")
      :etf SVO))

(define-category sibilate.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sibilate" "sizz" "siss" "sibilate" "hiss" "sizz" "siss"
             "sibilate" "hiss" "sibilate" "sibilate")
      :etf SVO))

(define-category shriek.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shriek" "shrill" "shriek" "pipe_up" "pipe")
      :etf SVO))

(define-category shout.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shout" "shout" "outcry" "exclaim" "cry_out" "cry" "call_out")
      :etf SVO))

(define-category screech.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("screech" "squawk" "skreigh" "skreak" "screech" "screak" "whine"
             "squeak" "skreak" "screech" "screak" "creak")
      :etf SVO))

(define-category scream.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scream" "yell" "scream")
      :etf SVO))

(define-category rumble.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rumble" "rumble" "grumble" "growl")
      :etf SVO))

(define-category roar.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("roar" "thunder" "roar")
      :etf SVO))

(define-category rasp.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rasp" "rasp")
      :etf SVO))

(define-category rant.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rant")
      :etf SVO))

(define-category rage.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rage")
      :etf SVO))

(define-category quaver.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("quaver")
      :etf SVO))

(define-category purr.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("purr" "purr" "make_vibrant_sounds")
      :etf SVO))

(define-category prattle.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("prattle")
      :etf SVO))

(define-category pant.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pant" "pant")
      :etf SVO))

(define-category natter.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("natter")
      :etf SVO))

(define-category nasal.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nasal")
      :etf SVO))

(define-category mutter.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mutter" "mutter" "murmur" "grumble" "gnarl" "croak" "mutter"
             "mussitate" "mumble" "maunder")
      :etf SVO))

(define-category murmur.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("murmur" "mutter" "murmur" "grumble" "gnarl" "croak" "murmur")
      :etf SVO))

(define-category mumble.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mumble" "mutter" "mussitate" "mumble" "maunder")
      :etf SVO))

(define-category moan.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("moan" "moan" "groan")
      :etf SVO))

(define-category mewl.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mewl" "whimper" "wail" "pule" "mewl")
      :etf SVO))

(define-category lisp.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lisp" "lisp")
      :etf SVO))

(define-category lilt.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lilt" "lilt")
      :etf SVO))

(define-category keen.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("keen" "lament" "keen")
      :etf SVO))

(define-category jabber.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("jabber" "spout" "rave" "rant" "rabbit_on" "mouth_off" "jabber")
      :etf SVO))

(define-category howl.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("howl" "yawl" "yaup" "wail" "ululate" "roar" "howl")
      :etf SVO))

(define-category hoot.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hoot" "hoot")
      :etf SVO))

(define-category holler.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("holler" "squawk" "holler" "grouse" "gripe" "crab" "bitch"
             "bellyache" "beef" "holler_out" "holler")
      :etf SVO))

(define-category hiss.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hiss" "sizz" "siss" "sibilate" "hiss")
      :etf SVO))

(define-category grunt.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grunt" "grunt")
      :etf SVO))

(define-category grumble.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grumble" "rumble" "grumble" "growl" "mutter" "murmur" "grumble"
             "gnarl" "croak")
      :etf SVO))

(define-category growl.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("growl" "rumble" "grumble" "growl")
      :etf SVO))

(define-category groan.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("groan")
      :etf SVO))

(define-category gibber.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gibber" "twaddle" "tittle-tattle" "tattle" "prattle" "prate"
             "piffle" "palaver" "maunder" "gibber" "gabble" "clack" "chatter"
             "blabber" "blab")
      :etf SVO))

(define-category gasp.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gasp")
      :etf SVO))

(define-category gabble.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gabble" "twaddle" "tittle-tattle" "tattle" "prattle" "prate"
             "piffle" "palaver" "maunder" "gibber" "gabble" "clack" "chatter"
             "blabber" "blab")
      :etf SVO))

(define-category drone.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("drone" "drone_on" "drone")
      :etf SVO))

(define-category drawl.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("drawl" "drawl")
      :etf SVO))

(define-category cry.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cry" "shout" "outcry" "exclaim" "cry_out" "cry" "call_out")
      :etf SVO))

(define-category crow.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crow" "crow")
      :etf SVO))

(define-category croon.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("croon" "croon")
      :etf SVO))

(define-category croak.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("croak" "mutter" "murmur" "grumble" "gnarl" "croak")
      :etf SVO))

(define-category cluck.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cluck")
      :etf SVO))

(define-category chuckle.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chuckle")
      :etf SVO))

(define-category chortle.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chortle" "laugh_softly" "chuckle" "chortle")
      :etf SVO))

(define-category chirp.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chirp")
      :etf SVO))

(define-category chatter.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chatter" "twaddle" "tittle-tattle" "tattle" "prattle" "prate"
             "piffle" "palaver" "maunder" "gibber" "gabble" "clack" "chatter"
             "blabber" "blab" "visit" "shoot_the_breeze" "natter" "jaw"
             "gossip" "confabulate" "confab" "claver" "chitchat" "chit-chat"
             "chew_the_fat" "chatter" "chat" "chaffer")
      :etf SVO))

(define-category chant.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chant" "tone" "intone" "chant" "intone" "intonate" "chant"
             "cantillate")
      :etf SVO))

(define-category carol.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("carol" "carol")
      :etf SVO))

(define-category call.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("call" "call")
      :etf SVO))

(define-category cackle.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cackle" "cackle")
      :etf SVO))

(define-category bluster.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bluster")
      :etf SVO))

(define-category burble.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("burble")
      :etf SVO))

(define-category bray.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bray" "bray")
      :etf SVO))

(define-category boom.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("boom" "boom_out" "boom" "din" "boom")
      :etf SVO))

(define-category blubber.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("blubber" "blubber_out" "blubber")
      :etf SVO))

(define-category bleat.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bleat" "bleat")
      :etf SVO))

(define-category bellow.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bellow" "bellow" "bawl")
      :etf SVO))

(define-category bawl.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bawl" "bellow" "bawl")
      :etf SVO))

(define-category bark.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bark" "bark")
      :etf SVO))

(define-category babble.MANNER_SPEAKING-37.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("babble" "smatter" "blither" "blether" "blather" "babble" "babble")
      :etf SVO))

(define-category pet.MARRY-36.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pet" "pet" "pet")
      :etf SVO))

(define-category nuzzle.MARRY-36.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nuzzle" "nuzzle" "nose" "snuggle" "nuzzle" "nestle" "nest"
             "draw_close" "cuddle")
      :etf SVO))

(define-category neck.MARRY-36.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("neck" "neck" "make_out")
      :etf SVO))

(define-category marry.MARRY-36.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("marry" "wed" "marry" "hook_up_with" "get_married"
             "get_hitched_with" "espouse" "conjoin")
      :etf SVO))

(define-category kiss.MARRY-36.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("kiss" "snog" "osculate" "kiss" "buss")
      :etf SVO))

(define-category hug.MARRY-36.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hug" "squeeze" "hug" "embrace" "bosom")
      :etf SVO))

(define-category embrace.MARRY-36.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("embrace" "squeeze" "hug" "embrace" "bosom")
      :etf SVO))

(define-category divorce.MARRY-36.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("divorce" "split_up" "divorce" "divorce" "disunite" "dissociate"
             "disjoint" "disassociate")
      :etf SVO))

(define-category cuddle.MARRY-36.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cuddle" "cuddle" "snuggle" "nuzzle" "nestle" "nest" "draw_close"
             "cuddle")
      :etf SVO))

(define-category court.MARRY-36.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("court" "court" "woo" "solicit" "romance" "court")
      :etf SVO))

(define-category pose.MASQUERADE-29.6-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pose" "pose" "personate" "impersonate")
      :etf SVO))

(define-category serve.MASQUERADE-29.6-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("serve" "serve" "serve" "function")
      :etf SVO))

(define-category visit.MEET-36.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("visit" "visit" "shoot_the_breeze" "natter" "jaw" "gossip"
             "confabulate" "confab" "claver" "chitchat" "chit-chat"
             "chew_the_fat" "chatter" "chat" "chaffer" "visit" "inspect"
             "visit" "call_in" "call")
      :etf SVO))

(define-category reunite.MEET-36.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reunite")
      :etf SVO))

(define-category remonstrate.MEET-36.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("remonstrate")
      :etf SVO))

(define-category play.MEET-36.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("play" "take_on" "play" "meet" "encounter" "play")
      :etf SVO))

(define-category meet.MEET-36.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("meet" "meet" "gather" "forgather" "foregather" "assemble" "meet"
             "meet" "get_together" "see" "run_into" "run_across" "meet"
             "encounter" "come_across")
      :etf SVO))

(define-category deliberate.MEET-36.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deliberate")
      :etf SVO))

(define-category consult.MEET-36.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("consult" "consult" "confer" "confabulate" "confab" "consult"
             "confer_with" "refer" "look_up" "consult")
      :etf SVO))

(define-category fight.MEET-36.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fight" "struggle" "fight" "contend")
      :etf SVO))

(define-category debate.MEET-36.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("debate" "fence" "debate" "contend" "argue" "debate")
      :etf SVO))

(define-category battle.MEET-36.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("battle" "combat" "battle")
      :etf SVO))

(define-category quarry.MINE-10.9
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("quarry" "quarry")
      :etf SVO))

(define-category cream.MIX-22.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cream" "cream")
      :etf SVO))

(define-category tumble.MIX-22.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tumble" "tumble")
      :etf SVO))

(define-category scramble.MIX-22.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scramble" "scramble" "beat" "throw_together" "scramble" "jumble")
      :etf SVO))

(define-category intermix.MIX-22.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("intermix" "intermix" "intermingle" "immingle" "blend")
      :etf SVO))

(define-category consolidate.MIX-22.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("consolidate" "consolidate" "consolidate" "consolidate"
             "consolidate")
      :etf SVO))

(define-category admix.MIX-22.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("admix" "admix")
      :etf SVO))

(define-category tie.MIX-22.1-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tie" "tie" "tie" "link_up" "link" "connect")
      :etf SVO))

(define-category count.MULTIPLY-108
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("count" "count" "numerate" "number" "enumerate" "count")
      :etf SVO))

(define-category tally.MULTIPLY-108
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tally" "tote_up" "total" "tot_up" "tot" "tally" "summate"
             "sum_up" "sum" "add_up" "add_together" "add")
      :etf SVO))

(define-category sum.MULTIPLY-108
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sum" "tote_up" "total" "tot_up" "tot" "tally" "summate" "sum_up"
             "sum" "add_up" "add_together" "add")
      :etf SVO))

(define-category slay.MURDER-42.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("slay" "slay" "remove" "polish_off" "off" "murder" "hit"
             "dispatch" "bump_off")
      :etf SVO))

(define-category slaughter.MURDER-42.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("slaughter" "slaughter" "mow_down" "massacre" "slaughter"
             "butcher")
      :etf SVO))

(define-category murder.MURDER-42.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("murder" "slay" "remove" "polish_off" "off" "murder" "hit"
             "dispatch" "bump_off")
      :etf SVO))

(define-category massacre.MURDER-42.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("massacre" "slaughter" "mow_down" "massacre")
      :etf SVO))

(define-category lynch.MURDER-42.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lynch")
      :etf SVO))

(define-category liquidate.MURDER-42.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("liquidate" "waste" "neutralize" "neutralise" "liquidate"
             "knock_off" "do_in")
      :etf SVO))

(define-category immolate.MURDER-42.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("immolate" "immolate")
      :etf SVO))

(define-category exterminate.MURDER-42.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("exterminate")
      :etf SVO))

(define-category execute.MURDER-42.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("execute" "execute" "put_to_death" "execute")
      :etf SVO))

(define-category euthanize.MURDER-42.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("euthanize")
      :etf SVO))

(define-category eliminate.MURDER-42.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("eliminate" "wipe_out" "extinguish" "eradicate" "eliminate"
             "decimate" "carry_off" "annihilate")
      :etf SVO))

(define-category dispatch.MURDER-42.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dispatch" "slay" "remove" "polish_off" "off" "murder" "hit"
             "dispatch" "bump_off")
      :etf SVO))

(define-category butcher.MURDER-42.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("butcher" "slaughter" "butcher")
      :etf SVO))

(define-category bushwhack.MURDER-42.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bushwhack" "waylay" "scupper" "lurk" "lie_in_wait" "bushwhack"
             "ambush" "ambuscade")
      :etf SVO))

(define-category annihilate.MURDER-42.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("annihilate")
      :etf SVO))

(define-category overlook.NEGLECT-75.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overlook" "pretermit" "overlook" "overleap" "omit" "neglect"
             "miss" "leave_out" "drop")
      :etf SVO))

(define-category overleap.NEGLECT-75.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overleap" "pretermit" "overlook" "overleap" "omit" "neglect"
             "miss" "leave_out" "drop")
      :etf SVO))

(define-category leave_out.NEGLECT-75.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "pretermit" "overlook" "overleap" "omit" "neglect" "miss"
             "leave_out" "drop")
      :etf SVO))

(define-category ignore.NEGLECT-75.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ignore" "neglect" "ignore" "disregard")
      :etf SVO))

(define-category forego.NEGLECT-75.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("forego" "waive" "relinquish" "forgo" "foreswear" "forego"
             "dispense_with")
      :etf SVO))

(define-category forgo.NEGLECT-75.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("forgo" "waive" "relinquish" "forgo" "foreswear" "forego"
             "dispense_with")
      :etf SVO))

(define-category disregard.NEGLECT-75.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disregard" "neglect" "ignore" "disregard")
      :etf SVO))

(define-category ride.NONVEHICLE-51.4.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ride" "ride" "ride" "ride" "sit" "ride")
      :etf SVO))

(define-category pedal.NONVEHICLE-51.4.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pedal" "wheel" "pedal" "cycle" "bike" "bicycle")
      :etf SVO))

(define-category paddle.NONVEHICLE-51.4.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("paddle" "paddle")
      :etf SVO))

(define-category oar.NONVEHICLE-51.4.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("oar")
      :etf SVO))

(define-category hem.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hem" "hem")
      :etf SVO))

(define-category yawn.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("yawn" "yawn")
      :etf SVO))

(define-category whistle.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whistle" "whistle")
      :etf SVO))

(define-category weep.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("weep" "weep" "cry")
      :etf SVO))

(define-category titter.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("titter" "titter" "giggle")
      :etf SVO))

(define-category sob.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sob" "sob")
      :etf SVO))

(define-category snort.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("snort" "snort")
      :etf SVO))

(define-category snore.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("snore" "snore" "saw_wood" "saw_logs")
      :etf SVO))

(define-category snivel.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("snivel" "snuffle" "snivel" "sniffle" "blubber" "blub")
      :etf SVO))

(define-category snigger.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("snigger" "snigger" "snicker")
      :etf SVO))

(define-category sniff.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sniff" "sniffle" "sniff")
      :etf SVO))

(define-category snicker.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("snicker" "snigger" "snicker")
      :etf SVO))

(define-category sneer.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sneer")
      :etf SVO))

(define-category smirk.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("smirk" "smirk" "simper")
      :etf SVO))

(define-category smile.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("smile" "smile")
      :etf SVO))

(define-category simper.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("simper" "smirk" "simper")
      :etf SVO))

(define-category sigh.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sigh" "suspire" "sigh")
      :etf SVO))

(define-category scowl.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scowl" "scowl")
      :etf SVO))

(define-category scoff.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scoff")
      :etf SVO))

(define-category pout.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pout" "pout" "mow" "mop" "sulk" "pout" "brood")
      :etf SVO))

(define-category moan.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("moan" "moan" "groan")
      :etf SVO))

(define-category lour.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lour" "lower" "lour" "glower" "frown")
      :etf SVO))

(define-category laugh.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("laugh" "laugh" "express_mirth" "express_joy")
      :etf SVO))

(define-category jeer.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("jeer" "scoff" "jeer" "gibe" "flout" "barrack")
      :etf SVO))

(define-category howl.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("howl" "roar" "howl" "yawl" "yaup" "wail" "ululate" "roar" "howl")
      :etf SVO))

(define-category guffaw.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("guffaw" "laugh_loudly" "guffaw")
      :etf SVO))

(define-category growl.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("growl" "rumble" "grumble" "growl")
      :etf SVO))

(define-category groan.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("groan" "moan" "groan")
      :etf SVO))

(define-category grin.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grin" "grin")
      :etf SVO))

(define-category grimace.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grimace" "pull_a_face" "make_a_face" "grimace")
      :etf SVO))

(define-category goggle.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("goggle" "goggle" "gawp" "gawk" "gape")
      :etf SVO))

(define-category glower.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("glower" "lower" "lour" "glower" "frown" "glower" "glare")
      :etf SVO))

(define-category glare.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("glare" "glower" "glare")
      :etf SVO))

(define-category giggle.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("giggle" "titter" "giggle")
      :etf SVO))

(define-category gawk.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gawk" "goggle" "gawp" "gawk" "gape")
      :etf SVO))

(define-category gasp.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gasp" "puff" "pant" "heave" "gasp")
      :etf SVO))

(define-category gape.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gape" "goggle" "gawp" "gawk" "gape")
      :etf SVO))

(define-category frown.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("frown" "lower" "lour" "glower" "frown")
      :etf SVO))

(define-category cry.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cry" "cry" "weep" "cry" "yell" "squall" "shout_out" "shout"
             "scream" "hollo" "holler" "cry" "call")
      :etf SVO))

(define-category cough.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cough" "cough")
      :etf SVO))

(define-category chuckle.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chuckle" "laugh_softly" "chuckle" "chortle")
      :etf SVO))

(define-category chortle.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chortle" "laugh_softly" "chuckle" "chortle")
      :etf SVO))

(define-category cackle.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cackle" "cackle")
      :etf SVO))

(define-category blubber.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("blubber" "snuffle" "snivel" "sniffle" "blubber" "blub")
      :etf SVO))

(define-category beam.NONVERBAL_EXPRESSION-40.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("beam" "beam" "beam")
      :etf SVO))

(define-category hijack.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hijack" "hijack" "pirate" "hijack" "highjack" "commandeer")
      :etf SVO))

(define-category arrogate.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("arrogate" "usurp" "take_over" "seize" "assume" "arrogate")
      :etf SVO))

(define-category subselect.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("subselect")
      :etf SVO))

(define-category source.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("source" "source")
      :etf SVO))

(define-category snatch.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("snatch" "snatch_up" "snatch" "snap")
      :etf SVO))

(define-category select.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("select" "take" "select" "pick_out" "choose")
      :etf SVO))

(define-category seize.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("seize" "sequester" "seize" "impound" "confiscate" "attach"
             "seize" "conquer" "capture" "appropriate" "seize" "seize"
             "prehend" "clutch")
      :etf SVO))

(define-category retrieve.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("retrieve" "retrieve" "retrieve" "regain" "recover" "find")
      :etf SVO))

(define-category regain.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("regain" "regain" "find" "retrieve" "regain" "recover" "find")
      :etf SVO))

(define-category recover.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("recover" "retrieve" "regain" "recover" "find")
      :etf SVO))

(define-category recoup.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("recoup" "recuperate" "recover" "recoup" "reimburse" "recoup")
      :etf SVO))

(define-category receive.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("receive" "receive" "have")
      :etf SVO))

(define-category inherit.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("inherit" "inherit")
      :etf SVO))

(define-category grab.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grab" "snap_up" "snaffle" "grab" "take_hold_of" "grab" "catch")
      :etf SVO))

(define-category exact.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("exact" "exact" "demand")
      :etf SVO))

(define-category collect.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("collect" "pick_up" "gather_up" "collect" "call_for" "pull_in"
             "collect" "pull_together" "gather" "garner" "collect" "take_in"
             "collect" "roll_up" "pile_up" "hoard" "compile" "collect" "amass"
             "accumulate")
      :etf SVO))

(define-category commandeer.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("commandeer" "pirate" "hijack" "highjack" "commandeer")
      :etf SVO))

(define-category cadge.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cadge" "shnorr" "scrounge" "schnorr" "cadge" "sponge" "mooch"
             "grub" "cadge" "bum")
      :etf SVO))

(define-category borrow.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("borrow" "borrow")
      :etf SVO))

(define-category accumulate.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("accumulate" "roll_up" "pile_up" "hoard" "compile" "collect"
             "amass" "accumulate")
      :etf SVO))

(define-category accrue.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("accrue" "fall" "accrue" "accrue")
      :etf SVO))

(define-category accept.OBTAIN-13.5.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("accept" "take" "have" "accept")
      :etf SVO))

(define-category mandate.ORDER-58.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mandate" "mandate")
      :etf SVO))

(define-category demand.ORDER-58.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("demand" "demand" "exact" "demand")
      :etf SVO))

(define-category declare.ORDER-58.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("declare" "declare" "announce")
      :etf SVO))

(define-category widow.ORPHAN-29.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("widow" "widow")
      :etf SVO))

(define-category whore.ORPHAN-29.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whore" "whore")
      :etf SVO))

(define-category recruit.ORPHAN-29.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("recruit" "recruit" "raise" "levy" "recruit")
      :etf SVO))

(define-category pauper.ORPHAN-29.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pauper")
      :etf SVO))

(define-category outlaw.ORPHAN-29.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("outlaw" "outlaw" "illegalize" "illegalise" "criminalize"
             "criminalise")
      :etf SVO))

(define-category orphan.ORPHAN-29.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("orphan" "orphan")
      :etf SVO))

(define-category knight.ORPHAN-29.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("knight" "knight" "dub")
      :etf SVO))

(define-category cuckold.ORPHAN-29.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cuckold" "wander" "cuckold" "cheat_on" "cheat" "betray")
      :etf SVO))

(define-category cripple.ORPHAN-29.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cripple" "lame" "cripple")
      :etf SVO))

(define-category beggar.ORPHAN-29.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("beggar" "pauperize" "pauperise" "beggar")
      :etf SVO))

(define-category apprentice.ORPHAN-29.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("apprentice")
      :etf SVO))

(define-category glorify.OVERSTATE-37.12
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("glorify" "proclaim" "laud" "glorify" "extol" "exalt")
      :etf SVO))

(define-category tout.OVERSTATE-37.12
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tout" "vaunt" "tout" "swash" "shoot_a_line" "gasconade" "gas"
             "brag" "boast" "bluster" "blow")
      :etf SVO))

(define-category overstress.OVERSTATE-37.12
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overstress" "overstress" "overemphasize" "overemphasise")
      :etf SVO))

(define-category overrate.OVERSTATE-37.12
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overrate" "overrate" "overestimate")
      :etf SVO))

(define-category overemphasize.OVERSTATE-37.12
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overemphasize" "overstress" "overemphasize" "overemphasise")
      :etf SVO))

(define-category amplify.OVERSTATE-37.12
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("amplify" "overstate" "overdraw" "magnify" "hyperbolize"
             "hyperbolise" "exaggerate" "amplify")
      :etf SVO))

(define-category magnify.OVERSTATE-37.12
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("magnify" "overstate" "overdraw" "magnify" "hyperbolize"
             "hyperbolise" "exaggerate" "amplify")
      :etf SVO))

(define-category hyperbolize.OVERSTATE-37.12
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hyperbolize" "overstate" "overdraw" "magnify" "hyperbolize"
             "hyperbolise" "exaggerate" "amplify")
      :etf SVO))

(define-category overdraw.OVERSTATE-37.12
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overdraw" "overstate" "overdraw" "magnify" "hyperbolize"
             "hyperbolise" "exaggerate" "amplify")
      :etf SVO))

(define-category overstate.OVERSTATE-37.12
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overstate" "overstate" "overdraw" "magnify" "hyperbolize"
             "hyperbolise" "exaggerate" "amplify")
      :etf SVO))

(define-category possess.OWN-100.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("possess" "possess" "own" "have")
      :etf SVO))

(define-category impersonate.PATENT-101
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("impersonate" "pose" "personate" "impersonate" "impersonate"
             "portray" "impersonate")
      :etf SVO))

(define-category imitate.PATENT-101
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("imitate" "imitate")
      :etf SVO))

(define-category evidence.PATENT-101
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("evidence")
      :etf SVO))

(define-category verify.PATENT-101
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("verify" "verify")
      :etf SVO))

(define-category accredit.PATENT-101
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("accredit" "recognize" "recognise" "accredit")
      :etf SVO))

(define-category credential.PATENT-101
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("credential")
      :etf SVO))

(define-category certify.PATENT-101
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("certify" "license" "licence" "certify")
      :etf SVO))

(define-category register.PATENT-101
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("register" "register" "file")
      :etf SVO))

(define-category license.PATENT-101
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("license" "license" "licence" "certify")
      :etf SVO))

(define-category trademark.PATENT-101
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trademark" "trademark")
      :etf SVO))

(define-category patent.PATENT-101
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("patent" "patent")
      :etf SVO))

(define-category copyright.PATENT-101
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("copyright" "copyright")
      :etf SVO))

(define-category serve.PAY-68
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("serve")
      :etf SVO))

(define-category waste.PAY-68
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("waste" "waste" "squander" "blow")
      :etf SVO))

(define-category squander.PAY-68
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("squander" "waste" "squander" "blow")
      :etf SVO))

(define-category spend.PAY-68
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("spend" "spend" "spend" "expend" "drop")
      :etf SVO))

(define-category stone.PELT-17.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stone" "stone" "lapidate")
      :etf SVO))

(define-category shower.PELT-17.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shower" "shower")
      :etf SVO))

(define-category pepperspray.PELT-17.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pepperspray")
      :etf SVO))

(define-category pelt.PELT-17.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pelt" "pelt" "bombard")
      :etf SVO))

(define-category buffet.PELT-17.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("buffet" "buffet" "buff" "knock_about" "buffet" "batter")
      :etf SVO))

(define-category bombard.PELT-17.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bombard" "pelt" "bombard")
      :etf SVO))

(define-category vocalize.PERFORMANCE-26.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("vocalize" "vocalize" "vocalise")
      :etf SVO))

(define-category rap.PERFORMANCE-26.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rap" "rap")
      :etf SVO))

(define-category perform.PERFORMANCE-26.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("perform" "perform")
      :etf SVO))

(define-category intone.PERFORMANCE-26.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("intone" "intone" "intonate" "chant" "cantillate")
      :etf SVO))

(define-category improvise.PERFORMANCE-26.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("improvise")
      :etf SVO))

(define-category heel.PERFORMANCE-26.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("heel" "heel")
      :etf SVO))

(define-category enact.PERFORMANCE-26.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("enact")
      :etf SVO))

(define-category chant.PERFORMANCE-26.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chant" "intone" "intonate" "chant" "cantillate")
      :etf SVO))

(define-category belt.PERFORMANCE-26.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("belt" "belt_out" "belt")
      :etf SVO))

(define-category zest.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("zest")
      :etf SVO))

(define-category worm.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("worm" "writhe" "wriggle" "wrestle" "worm" "twist" "squirm")
      :etf SVO))

(define-category wind.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wind")
      :etf SVO))

(define-category weed.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("weed" "weed")
      :etf SVO))

(define-category vein.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("vein")
      :etf SVO))

(define-category tassel.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tassel")
      :etf SVO))

(define-category tail.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tail" "tail" "tail" "dock" "bob")
      :etf SVO))

(define-category string.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("string" "string")
      :etf SVO))

(define-category stone.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stone" "stone" "pit")
      :etf SVO))

(define-category stem.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stem" "stem")
      :etf SVO))

(define-category stalk.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stalk")
      :etf SVO))

(define-category snail.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("snail" "snail")
      :etf SVO))

(define-category skin.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("skin" "skin" "peel" "pare" "skin" "bark")
      :etf SVO))

(define-category shuck.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shuck" "shuck")
      :etf SVO))

(define-category seed.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("seed" "seed")
      :etf SVO))

(define-category scalp.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scalp" "scalp")
      :etf SVO))

(define-category scale.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scale" "scale" "descale")
      :etf SVO))

(define-category rind.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rind")
      :etf SVO))

(define-category pulp.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pulp" "pulp")
      :etf SVO))

(define-category poll.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("poll" "pollard" "poll")
      :etf SVO))

(define-category pod.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pod" "pod")
      :etf SVO))

(define-category pith.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pith" "pith")
      :etf SVO))

(define-category pit.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pit" "stone" "pit")
      :etf SVO))

(define-category pip.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pip")
      :etf SVO))

(define-category pinion.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pinion" "pinion")
      :etf SVO))

(define-category peel.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("peel" "skin" "peel" "pare")
      :etf SVO))

(define-category milk.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("milk" "milk")
      :etf SVO))

(define-category louse.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("louse")
      :etf SVO))

(define-category lint.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lint")
      :etf SVO))

(define-category husk.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("husk" "shell" "husk")
      :etf SVO))

(define-category hull.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hull" "hull")
      :etf SVO))

(define-category gut.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gut" "gut")
      :etf SVO))

(define-category gill.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gill")
      :etf SVO))

(define-category core.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("core" "core")
      :etf SVO))

(define-category burl.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("burl" "burl")
      :etf SVO))

(define-category bone.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bone" "debone" "bone")
      :etf SVO))

(define-category beard.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("beard")
      :etf SVO))

(define-category bark.PIT-10.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bark" "skin" "bark")
      :etf SVO))

(define-category play.PLAY-114.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("play" "take_on" "play" "meet" "encounter" "play" "recreate"
             "play" "play" "play")
      :etf SVO))

(define-category throttle.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("throttle")
      :etf SVO))

(define-category suffocate.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("suffocate" "suffocate" "smother" "asphyxiate")
      :etf SVO))

(define-category strangulate.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("strangulate" "throttle" "strangulate" "strangle")
      :etf SVO))

(define-category strangle.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("strangle" "throttle" "strangulate" "strangle")
      :etf SVO))

(define-category stone.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stone")
      :etf SVO))

(define-category stab.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stab" "stab" "knife")
      :etf SVO))

(define-category smother.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("smother" "suffocate" "smother" "asphyxiate")
      :etf SVO))

(define-category shoot.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shoot" "shoot" "pip")
      :etf SVO))

(define-category poison.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("poison" "poison")
      :etf SVO))

(define-category pip.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pip" "shoot" "pip" "hit" "shoot" "pip")
      :etf SVO))

(define-category knife.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("knife" "stab" "knife")
      :etf SVO))

(define-category impale.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("impale")
      :etf SVO))

(define-category hang.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hang" "string_up" "hang")
      :etf SVO))

(define-category garrotte.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("garrotte" "scrag" "garrotte" "garrote" "garotte")
      :etf SVO))

(define-category gas.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gas" "gas")
      :etf SVO))

(define-category evicerate.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("evicerate")
      :etf SVO))

(define-category electrocute.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("electrocute" "fry" "electrocute")
      :etf SVO))

(define-category drown.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("drown" "drown")
      :etf SVO))

(define-category disembowel.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disembowel")
      :etf SVO))

(define-category decapitate.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("decapitate")
      :etf SVO))

(define-category dart.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dart")
      :etf SVO))

(define-category crucify.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crucify" "crucify")
      :etf SVO))

(define-category bullet.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bullet")
      :etf SVO))

(define-category behead.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("behead")
      :etf SVO))

(define-category asphyxiate.POISON-42.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("asphyxiate" "suffocate" "smother" "asphyxiate")
      :etf SVO))

(define-category prick.POKE-19
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("prick" "sting" "prick" "bite" "prick" "goad" "prickle" "prick")
      :etf SVO))

(define-category pierce.POKE-19
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pierce" "pierce" "thrust" "pierce" "pierce")
      :etf SVO))

(define-category cultivate.PREPARING-26.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cultivate" "work" "cultivate" "crop")
      :etf SVO))

(define-category toss.PREPARING-26.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("toss" "toss")
      :etf SVO))

(define-category run.PREPARING-26.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("run" "run")
      :etf SVO))

(define-category ready.PREPARING-26.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ready" "set_up" "set" "ready" "prepare" "gear_up" "fix" "ready"
             "prepare" "make" "fix" "cook")
      :etf SVO))

(define-category prepare.PREPARING-26.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("prepare" "ready" "prepare" "make" "fix" "cook")
      :etf SVO))

(define-category mix.PREPARING-26.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mix" "mix" "merge" "meld" "immix" "fuse" "flux" "conflate"
             "commingle" "combine" "coalesce" "blend")
      :etf SVO))

(define-category kindle.PREPARING-26.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("kindle" "kindle" "inflame" "enkindle" "conflagrate")
      :etf SVO))

(define-category fix.PREPARING-26.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fix" "ready" "prepare" "make" "fix" "cook")
      :etf SVO))

(define-category cook_up.PREPARING-26.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "cook_up" "concoct")
      :etf SVO))

(define-category cook.PREPARING-26.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cook" "ready" "prepare" "make" "fix" "cook")
      :etf SVO))

(define-category brew.PREPARING-26.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("brew" "brew")
      :etf SVO))

(define-category blend.PREPARING-26.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("blend" "intermix" "intermingle" "immingle" "blend")
      :etf SVO))

(define-category bake.PREPARING-26.3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bake" "bake" "bake")
      :etf SVO))

(define-category weld.PREPARING-26.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("weld")
      :etf SVO))

(define-category toast.PREPARING-26.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("toast" "toast" "crispen" "crisp")
      :etf SVO))

(define-category softboil.PREPARING-26.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("softboil")
      :etf SVO))

(define-category set.PREPARING-26.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("set" "set_up" "set" "lay_out")
      :etf SVO))

(define-category scramble.PREPARING-26.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scramble" "scramble" "beat")
      :etf SVO))

(define-category pour.PREPARING-26.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pour" "pour")
      :etf SVO))

(define-category overbake.PREPARING-26.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overbake")
      :etf SVO))

(define-category microwave.PREPARING-26.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("microwave" "zap" "nuke" "microwave" "micro-cook")
      :etf SVO))

(define-category iron.PREPARING-26.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("iron" "press" "iron_out" "iron")
      :etf SVO))

(define-category hardboil.PREPARING-26.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hardboil")
      :etf SVO))

(define-category grill.PREPARING-26.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grill" "grill")
      :etf SVO))

(define-category clean.PREPARING-26.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("clean" "pick" "clean")
      :etf SVO))

(define-category broil.PREPARING-26.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("broil" "oven_broil" "broil")
      :etf SVO))

(define-category boil.PREPARING-26.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("boil" "boil")
      :etf SVO))

(define-category barbecue.PREPARING-26.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("barbecue" "cook_out" "barbeque" "barbecue")
      :etf SVO))

(define-category barbeque.PREPARING-26.3-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("barbeque" "cook_out" "barbeque" "barbecue")
      :etf SVO))

(define-category value.PRICE-54.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("value" "value" "rate" "value" "valuate" "measure" "evaluate"
             "assess" "appraise" "value")
      :etf SVO))

(define-category reappraise.PRICE-54.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reappraise" "reappraise")
      :etf SVO))

(define-category price.PRICE-54.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("price" "price" "price")
      :etf SVO))

(define-category peg.PRICE-54.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("peg" "peg")
      :etf SVO))

(define-category overestimate.PRICE-54.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overestimate" "overvalue" "overestimate" "overrate"
             "overestimate")
      :etf SVO))

(define-category gauge.PRICE-54.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gauge" "judge" "guess" "gauge" "estimate" "approximate")
      :etf SVO))

(define-category fix.PRICE-54.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fix" "fix")
      :etf SVO))

(define-category estimate.PRICE-54.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("estimate" "judge" "guess" "gauge" "estimate" "approximate")
      :etf SVO))

(define-category calibrate.PRICE-54.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("calibrate")
      :etf SVO))

(define-category auction.PRICE-54.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("auction")
      :etf SVO))

(define-category assess.PRICE-54.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("assess" "tax" "assess" "value" "valuate" "measure" "evaluate"
             "assess" "appraise")
      :etf SVO))

(define-category approximate.PRICE-54.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("approximate" "judge" "guess" "gauge" "estimate" "approximate")
      :etf SVO))

(define-category appraise.PRICE-54.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("appraise" "value" "valuate" "measure" "evaluate" "assess"
             "appraise")
      :etf SVO))

(define-category underscore.PROMOTE-102
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("underscore" "underscore" "underline" "emphasize" "emphasise")
      :etf SVO))

(define-category emphasize.PROMOTE-102
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("emphasize" "stress" "punctuate" "emphasize" "emphasise"
             "accentuate" "accent")
      :etf SVO))

(define-category invite.PROMOTE-102
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("invite" "invite" "call_for")
      :etf SVO))

(define-category encourage.PROMOTE-102
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("encourage" "promote" "further" "encourage" "boost" "advance")
      :etf SVO))

(define-category further.PROMOTE-102
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("further" "further" "foster" "promote" "further" "encourage"
             "boost" "advance")
      :etf SVO))

(define-category boost.PROMOTE-102
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("boost" "promote" "further" "encourage" "boost" "advance")
      :etf SVO))

(define-category advance.PROMOTE-102
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("advance" "upgrade" "raise" "promote" "kick_upstairs" "elevate"
             "advance" "promote" "further" "encourage" "boost" "advance")
      :etf SVO))

(define-category promote.PROMOTE-102
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("promote" "push" "promote" "advertize" "advertise" "promote"
             "further" "encourage" "boost" "advance")
      :etf SVO))

(define-category sanction.PROSECUTE-33.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sanction")
      :etf SVO))

(define-category penalize.PROSECUTE-33.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("penalize" "punish" "penalize" "penalise")
      :etf SVO))

(define-category nab.PROSECUTE-33.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nab")
      :etf SVO))

(define-category impeach.PROSECUTE-33.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("impeach" "impeach")
      :etf SVO))

(define-category collar.PROSECUTE-33.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("collar")
      :etf SVO))

(define-category bust.PROSECUTE-33.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bust")
      :etf SVO))

(define-category book.PROSECUTE-33.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("book")
      :etf SVO))

(define-category heave.PUSH-12
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("heave" "heave")
      :etf SVO))

(define-category stow.PUT-9.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stow")
      :etf SVO))

(define-category stash.PUT-9.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stash" "stash" "squirrel_away" "lay_away" "hoard" "hive_up"
             "cache")
      :etf SVO))

(define-category reinstall.PUT-9.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reinstall" "reinstall")
      :etf SVO))

(define-category plant.PUT-9.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("plant" "plant" "implant" "plant" "plant" "set" "plant")
      :etf SVO))

(define-category park.PUT-9.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("park" "park" "park")
      :etf SVO))

(define-category install.PUT-9.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("install" "set_up" "put_in" "install" "instal")
      :etf SVO))

(define-category embed.PUT-9.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("embed" "plant" "implant" "imbed" "engraft" "embed")
      :etf SVO))

(define-category deposit.PUT-9.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deposit" "deposit" "bank")
      :etf SVO))

(define-category build-in.PUT-9.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("build-in" "build_in")
      :etf SVO))

(define-category bury.PUT-9.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bury" "sink" "bury" "swallow_up" "swallow" "immerse" "eat_up"
             "bury" "bury" "lay_to_rest" "inter" "inhume" "entomb" "bury"
             "bury")
      :etf SVO))

(define-category apply.PUT-9.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("apply" "put_on" "apply")
      :etf SVO))

(define-category lift.PUT_DIRECTION-9.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lift" "wind" "lift" "hoist" "lift" "raise" "lift" "get_up"
             "elevate" "bring_up")
      :etf SVO))

(define-category hoist.PUT_DIRECTION-9.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hoist" "run_up" "hoist" "hoist" "wind" "lift" "hoist")
      :etf SVO))

(define-category heel.PUT_DIRECTION-9.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("heel" "list" "heel")
      :etf SVO))

(define-category elevate.PUT_DIRECTION-9.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("elevate" "raise" "lift" "get_up" "elevate" "bring_up")
      :etf SVO))

(define-category drop.PUT_DIRECTION-9.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("drop" "drop")
      :etf SVO))

(define-category breast.REACH-51.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("breast" "summit" "breast")
      :etf SVO))

(define-category hit.REACH-51.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hit" "reach" "hit" "attain" "reach" "make" "hit" "gain" "attain"
             "arrive_at")
      :etf SVO))

(define-category reach.REACH-51.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reach" "reach" "hit" "attain" "reach" "make" "hit" "gain"
             "attain" "arrive_at")
      :etf SVO))

(define-category nurture.REAR-26.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nurture" "rear" "raise" "parent" "nurture" "bring_up" "nurture"
             "foster")
      :etf SVO))

(define-category grow.REAR-26.2.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grow" "raise" "produce" "grow" "farm" "grow")
      :etf SVO))

(define-category suggest.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("suggest" "suggest" "paint_a_picture" "evoke" "suggest" "intimate"
             "suggest" "propose" "advise")
      :etf SVO))

(define-category show.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("show" "show_up" "show" "show" "testify" "show" "prove" "evidence"
             "bear_witness" "show" "shew" "prove" "establish" "demonstrate")
      :etf SVO))

(define-category shape.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shape" "shape" "regulate" "mold" "influence" "determine")
      :etf SVO))

(define-category reveal.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reveal")
      :etf SVO))

(define-category recommend.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("recommend" "recommend" "commend")
      :etf SVO))

(define-category reassert.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reassert" "reassert" "confirm")
      :etf SVO))

(define-category propose.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("propose")
      :etf SVO))

(define-category proffer.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("proffer" "proffer" "offer")
      :etf SVO))

(define-category present.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("present" "present" "pose" "represent" "present" "lay_out")
      :etf SVO))

(define-category pose.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pose" "present" "pose")
      :etf SVO))

(define-category offer.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("offer" "offer")
      :etf SVO))

(define-category manifest.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("manifest" "manifest" "evidence" "demonstrate" "certify" "attest")
      :etf SVO))

(define-category intrude.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("intrude" "obtrude" "intrude")
      :etf SVO))

(define-category form.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("form" "take_shape" "take_form" "spring" "form")
      :etf SVO))

(define-category flaunt.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("flaunt")
      :etf SVO))

(define-category express.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("express" "show" "express" "evince")
      :etf SVO))

(define-category expose.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("expose")
      :etf SVO))

(define-category exhibit.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("exhibit")
      :etf SVO))

(define-category display.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("display" "expose" "exhibit" "display")
      :etf SVO))

(define-category define.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("define" "specify" "delineate" "delimitate" "delimit" "define")
      :etf SVO))

(define-category declare.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("declare" "declare")
      :etf SVO))

(define-category assert.REFLEXIVE_APPEARANCE-48.1.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("assert" "maintain" "asseverate" "assert")
      :etf SVO))

(define-category mistime.REGISTER-54.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mistime")
      :etf SVO))

(define-category repeat.REHEARSE-26.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("repeat" "replicate" "repeat" "reduplicate" "duplicate" "double")
      :etf SVO))

(define-category walk_through.REHEARSE-26.8
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "walk_through")
      :etf SVO))

(define-category turn-down.REJECT-77.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("turn-down")
      :etf SVO))

(define-category refuse.REJECT-77.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("refuse")
      :etf SVO))

(define-category rebuff.REJECT-77.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rebuff")
      :etf SVO))

(define-category decline.REJECT-77.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("decline")
      :etf SVO))

(define-category touch_on.RELATE-86.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "touch_on" "touch" "relate" "refer" "pertain"
             "have-to_doe_with" "concern" "come_to" "bear_on")
      :etf SVO))

(define-category bear_on.RELATE-86.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "touch_on" "touch" "relate" "refer" "pertain"
             "have-to_doe_with" "concern" "come_to" "bear_on")
      :etf SVO))

(define-category touch.RELATE-86.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("touch" "touch_on" "touch" "relate" "refer" "pertain"
             "have-to_doe_with" "concern" "come_to" "bear_on")
      :etf SVO))

(define-category involve.RELATE-86.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("involve" "involve" "imply")
      :etf SVO))

(define-category prise.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("prise" "pry" "prize" "prise" "lever" "jimmy")
      :etf SVO))

(define-category extinguish.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("extinguish" "wipe_out" "extinguish" "eradicate" "eliminate"
             "decimate" "carry_off" "annihilate" "get_rid_of" "extinguish"
             "eliminate" "do_away_with" "stub_out" "press_out" "extinguish"
             "crush_out" "snuff_out" "quench" "extinguish" "blow_out"
             "snuff_out" "extinguish")
      :etf SVO))

(define-category sever.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sever" "sever" "lop" "discerp")
      :etf SVO))

(define-category remove.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("remove" "take_out" "remove" "move_out" "remove" "withdraw"
             "take_away" "take" "remove")
      :etf SVO))

(define-category evict.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("evict" "force_out" "evict")
      :etf SVO))

(define-category dismiss.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dismiss" "terminate" "send_away" "sack" "give_the_sack"
             "give_the_axe" "give_notice" "force_out" "fire" "displace"
             "dismiss" "can")
      :etf SVO))

(define-category discharge.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("discharge" "unload" "set_down" "put_down" "drop_off" "drop"
             "discharge" "release" "expel" "exhaust" "eject" "discharge"
             "discharge")
      :etf SVO))

(define-category oust.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("oust" "throw_out" "oust" "kick_out" "expel" "drum_out" "boot_out")
      :etf SVO))

(define-category withdraw.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("withdraw" "withdraw" "take_out" "draw_off" "draw" "withdraw"
             "take_away" "take" "remove" "withdraw" "recall" "call_in"
             "call_back")
      :etf SVO))

(define-category wrench.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wrench" "wrench" "twist")
      :etf SVO))

(define-category winkle.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("winkle" "winkle_out" "winkle")
      :etf SVO))

(define-category uproot.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("uproot" "uproot" "root_out" "extirpate" "deracinate")
      :etf SVO))

(define-category take_off.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "take_off" "take_time_off" "take_off" "take_off")
      :etf SVO))

(define-category take_out.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "take_out" "omit" "leave_out" "leave_off" "exclude" "except"
             "take_out" "extract" "excerpt" "take_out" "pull_up" "pull_out"
             "pull" "extract" "draw_out" "take_out" "draw" "take_out"
             "pull_out" "pull" "get_out" "draw" "withdraw" "take_out"
             "draw_off" "draw" "take_out" "take_out" "take_away" "unpack"
             "take_out" "take_out" "remove" "move_out")
      :etf SVO))

(define-category take_away.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "take_away" "remove" "take_away" "take_out" "take_away"
             "withdraw" "take_away" "take" "remove")
      :etf SVO))

(define-category take.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("take" "take_off" "subtract" "deduct")
      :etf SVO))

(define-category subtract.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("subtract" "take_off" "subtract" "deduct")
      :etf SVO))

(define-category shoo.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shoo" "shoo_off" "shoo_away" "shoo")
      :etf SVO))

(define-category separate.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("separate" "separate" "separate" "part" "divide" "disunite"
             "separate" "divide")
      :etf SVO))

(define-category roust.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("roust")
      :etf SVO))

(define-category retract.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("retract" "retract" "resile" "recant" "forswear" "abjure")
      :etf SVO))

(define-category render.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("render")
      :etf SVO))

(define-category ream.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ream" "ream")
      :etf SVO))

(define-category reap.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reap" "reap" "draw" "reap" "harvest" "glean")
      :etf SVO))

(define-category pry.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pry" "pry" "prize" "prise" "lever" "jimmy")
      :etf SVO))

(define-category partition.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("partition" "zone" "partition" "partition_off" "partition")
      :etf SVO))

(define-category ostracize.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ostracize" "shun" "ostracize" "ostracise" "cast_out" "blackball"
             "banish" "ban")
      :etf SVO))

(define-category omit.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("omit" "take_out" "omit" "leave_out" "leave_off" "exclude"
             "except")
      :etf SVO))

(define-category lose.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lose")
      :etf SVO))

(define-category lop.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lop" "trim" "snip" "prune" "lop" "dress" "cut_back" "crop" "clip"
             "sever" "lop" "discerp")
      :etf SVO))

(define-category extrude.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("extrude" "squeeze_out" "extrude")
      :etf SVO))

(define-category extract.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("extract" "take_out" "extract" "excerpt" "press_out" "extract"
             "express" "extract" "extract" "distill" "distil" "extract"
             "take_out" "pull_up" "pull_out" "pull" "extract" "draw_out")
      :etf SVO))

(define-category extirpate.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("extirpate" "uproot" "root_out" "extirpate" "deracinate")
      :etf SVO))

(define-category expel.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("expel" "throw_out" "oust" "kick_out" "expel" "drum_out"
             "boot_out" "throw_out" "kick_out" "expel")
      :etf SVO))

(define-category excommunicate.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("excommunicate" "unchurch" "excommunicate" "curse")
      :etf SVO))

(define-category excise.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("excise" "excise" "strike" "scratch" "expunge" "excise")
      :etf SVO))

(define-category eradicate.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("eradicate" "uproot" "root_out" "extirpate" "exterminate"
             "eradicate" "wipe_out" "extinguish" "eradicate" "eliminate"
             "decimate" "carry_off" "annihilate")
      :etf SVO))

(define-category eliminate.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("eliminate" "pass" "excrete" "eliminate" "egest" "winnow_out"
             "rule_out" "reject" "eliminate" "rid_of" "obviate" "eliminate"
             "get_rid_of" "extinguish" "eliminate" "do_away_with")
      :etf SVO))

(define-category eject.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("eject" "turn_out" "turf_out" "exclude" "eject" "chuck_out"
             "boot_out")
      :etf SVO))

(define-category draw.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("draw" "draw" "draw" "cast" "withdraw" "take_out" "draw_off"
             "draw" "draw" "take_out" "draw" "take_out" "pull_out" "pull"
             "get_out" "draw")
      :etf SVO))

(define-category disengage.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disengage" "withdraw" "disengage")
      :etf SVO))

(define-category dislodge.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dislodge" "dislodge" "bump" "free" "dislodge")
      :etf SVO))

(define-category disgorge.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disgorge" "spill" "shed" "disgorge")
      :etf SVO))

(define-category depose.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("depose" "force_out" "depose")
      :etf SVO))

(define-category deduct.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deduct" "withhold" "recoup" "deduct" "take_off" "subtract"
             "deduct")
      :etf SVO))

(define-category deburr.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deburr")
      :etf SVO))

(define-category cut-off.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cut-off")
      :etf SVO))

(define-category cull.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cull" "pluck" "pick" "cull" "cull")
      :etf SVO))

(define-category abolish.REMOVE-10.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("abolish" "get_rid_of" "abolish")
      :etf SVO))

(define-category symbolize.REPRESENTATION-110.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("symbolize" "typify" "symbolize" "symbolise" "stand_for"
             "represent")
      :etf SVO))

(define-category signify.REPRESENTATION-110.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("signify" "stand_for" "signify" "mean" "intend")
      :etf SVO))

(define-category represent.REPRESENTATION-110.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("represent" "typify" "symbolize" "symbolise" "stand_for"
             "represent" "stand_for" "represent" "correspond")
      :etf SVO))

(define-category mean.REPRESENTATION-110.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mean" "stand_for" "signify" "mean" "intend")
      :etf SVO))

(define-category denote.REPRESENTATION-110.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("denote" "refer" "denote")
      :etf SVO))

(define-category take.REQUIRE-103
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("take" "take" "require" "postulate" "need" "necessitate" "involve"
             "demand" "call_for" "ask")
      :etf SVO))

(define-category withdraw.RESIGN-10.11-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("withdraw" "withdraw" "retire")
      :etf SVO))

(define-category walk_out.RESIGN-10.11-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "walk_out")
      :etf SVO))

(define-category walk_away.RESIGN-10.11-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category walk.RESIGN-10.11-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("walk")
      :etf SVO))

(define-category walk_off.RESIGN-10.11-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category vacate.RESIGN-10.11-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("vacate" "step_down" "resign" "quit" "leave_office" "vacate"
             "resign" "renounce" "give_up")
      :etf SVO))

(define-category quit.RESIGN-10.11-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("quit" "step_down" "resign" "quit" "leave_office")
      :etf SVO))

(define-category renounce.RESIGN-10.11-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("renounce" "renounce" "abdicate" "vacate" "resign" "renounce"
             "give_up")
      :etf SVO))

(define-category leave.RESIGN-10.11-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("leave" "pull_up_stakes" "leave" "depart")
      :etf SVO))

(define-category give_up.RESIGN-10.11-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "vacate" "resign" "renounce" "give_up")
      :etf SVO))

(define-category depart.RESIGN-10.11-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("depart" "pull_up_stakes" "leave" "depart")
      :etf SVO))

(define-category abdicate.RESIGN-10.11-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("abdicate" "renounce" "abdicate")
      :etf SVO))

(define-category wager.RISK-94
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wager" "wager" "play" "bet")
      :etf SVO))

(define-category venture.RISK-94
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("venture" "venture" "stake" "jeopardize" "hazard" "adventure")
      :etf SVO))

(define-category punt.RISK-94
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("punt" "stake" "punt" "game" "gage" "bet_on" "back")
      :etf SVO))

(define-category gamble.RISK-94
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gamble" "take_chances" "take_a_chance" "run_a_risk" "risk"
             "hazard" "gamble" "chance" "adventure")
      :etf SVO))

(define-category cull.ROB-10.6.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cull" "cull")
      :etf SVO))

(define-category milk.ROB-10.6.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("milk" "milk")
      :etf SVO))

(define-category bleed.ROB-10.6.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bleed" "bleed" "bleed")
      :etf SVO))

(define-category rob.ROB-10.6.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rob" "rob")
      :etf SVO))

(define-category wing.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wing" "wing" "fly")
      :etf SVO))

(define-category wander.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wander" "wander" "wander" "vagabond" "tramp" "swan" "stray"
             "rove" "roll" "roam" "range" "ramble" "drift" "cast")
      :etf SVO))

(define-category wade.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wade" "wade")
      :etf SVO))

(define-category vault.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("vault" "vault" "vault" "overleap")
      :etf SVO))

(define-category trudge.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trudge" "trudge" "tramp" "slog" "plod" "pad" "footslog")
      :etf SVO))

(define-category trek.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trek" "trek")
      :etf SVO))

(define-category tramp.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tramp" "wander" "vagabond" "tramp" "swan" "stray" "rove" "roll"
             "roam" "range" "ramble" "drift" "cast" "tramp" "trudge" "tramp"
             "slog" "plod" "pad" "footslog" "tramp")
      :etf SVO))

(define-category traipse.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("traipse" "traipse" "shlep")
      :etf SVO))

(define-category swim.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("swim" "swim")
      :etf SVO))

(define-category sweep.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sweep" "swing_out" "swing" "sweep" "sweep" "sail")
      :etf SVO))

(define-category stroll.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stroll" "stroll" "saunter")
      :etf SVO))

(define-category stride.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stride" "stride" "stride")
      :etf SVO))

(define-category rove.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rove" "wander" "vagabond" "tramp" "swan" "stray" "rove" "roll"
             "roam" "range" "ramble" "drift" "cast")
      :etf SVO))

(define-category roam.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("roam" "wander" "vagabond" "tramp" "swan" "stray" "rove" "roll"
             "roam" "range" "ramble" "drift" "cast")
      :etf SVO))

(define-category ramble.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ramble" "wander" "vagabond" "tramp" "swan" "stray" "rove" "roll"
             "roam" "range" "ramble" "drift" "cast")
      :etf SVO))

(define-category prowl.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("prowl" "prowl")
      :etf SVO))

(define-category plod.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("plod" "trudge" "tramp" "slog" "plod" "pad" "footslog")
      :etf SVO))

(define-category perambulate.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("perambulate" "walk_around" "walk_about" "perambulate")
      :etf SVO))

(define-category pad.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pad" "trudge" "tramp" "slog" "plod" "pad" "footslog")
      :etf SVO))

(define-category leap.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("leap" "leap" "jump" "spring" "leap" "jump" "bound")
      :etf SVO))

(define-category journey.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("journey" "travel" "journey" "travel" "journey")
      :etf SVO))

(define-category hop.RUN-51.3.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hop" "hop" "hop" "hop" "skip" "hop-skip" "hop")
      :etf SVO))

(define-category trot.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trot" "trot" "trot" "trot" "jog" "clip")
      :etf SVO))

(define-category trip.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trip" "trip_up" "trip" "trip" "stumble")
      :etf SVO))

(define-category tack.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tack" "wear_round" "tack")
      :etf SVO))

(define-category strut.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("strut" "tittup" "swagger" "strut" "sashay" "ruffle" "prance"
             "cock")
      :etf SVO))

(define-category speed.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("speed" "speed_up" "speed" "accelerate" "speed_up" "speed"
             "quicken" "accelerate" "step_on_it" "speed" "rush_along" "rush"
             "race" "pelt_along" "hotfoot" "hie" "hasten" "cannonball_along"
             "bucket_along" "belt_along")
      :etf SVO))

(define-category sneak.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sneak" "sneak" "pussyfoot" "mouse" "creep")
      :etf SVO))

(define-category slide.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("slide" "slide" "slither" "slide" "slue" "slip" "slide" "slew"
             "skid")
      :etf SVO))

(define-category skitter.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("skitter" "skitter" "skip" "skim" "skitter" "skitter" "scuttle"
             "scurry" "scamper")
      :etf SVO))

(define-category skip.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("skip" "skitter" "skip" "skim" "skip" "hop-skip" "hop")
      :etf SVO))

(define-category scoot.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scoot" "shoot" "scud" "scoot" "flash" "dash" "dart")
      :etf SVO))

(define-category race.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("race" "rush" "race" "step_on_it" "speed" "rush_along" "rush"
             "race" "pelt_along" "hotfoot" "hie" "hasten" "cannonball_along"
             "bucket_along" "belt_along")
      :etf SVO))

(define-category prance.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("prance" "tittup" "swagger" "strut" "sashay" "ruffle" "prance"
             "cock")
      :etf SVO))

(define-category lope.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lope" "lope")
      :etf SVO))

(define-category hurtle.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hurtle" "hurtle" "hurl" "cast" "thrust" "lunge" "hurtle" "hurl"
             "hurtle")
      :etf SVO))

(define-category hurry.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hurry" "zip" "travel_rapidly" "speed" "hurry")
      :etf SVO))

(define-category hobble.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hobble" "limp" "hobble" "hitch" "gimp")
      :etf SVO))

(define-category hasten.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hasten" "step_on_it" "speed" "rush_along" "rush" "race"
             "pelt_along" "hotfoot" "hie" "hasten" "cannonball_along"
             "bucket_along" "belt_along" "rush" "look_sharp" "hurry" "hasten"
             "festinate")
      :etf SVO))

(define-category glide.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("glide" "glide" "glide")
      :etf SVO))

(define-category gallop.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gallop" "gallop" "extend" "gallop" "gallop")
      :etf SVO))

(define-category float.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("float" "swim" "float" "float" "drift" "blow" "be_adrift")
      :etf SVO))

(define-category drift.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("drift" "drift" "drift" "drift" "stray" "err" "drift" "float"
             "drift" "blow" "be_adrift")
      :etf SVO))

(define-category dash.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dash" "shoot" "scud" "scoot" "flash" "dash" "dart")
      :etf SVO))

(define-category dart.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dart" "shoot" "scud" "scoot" "flash" "dash" "dart" "flutter"
             "flit" "fleet" "dart")
      :etf SVO))

(define-category canter.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("canter" "canter" "canter" "canter")
      :etf SVO))

(define-category bowl.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bowl" "bowl")
      :etf SVO))

(define-category bounce.RUN-51.3.2-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bounce" "jounce" "bounce" "bounce" "take_a_hop" "spring"
             "ricochet" "reverberate" "resile" "recoil" "rebound" "bound"
             "bounce")
      :etf SVO))

(define-category walk.RUN-51.3.2-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("walk" "walk" "walk" "walk" "walk" "walk")
      :etf SVO))

(define-category rush.RUN-51.3.2-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rush" "rush" "race" "step_on_it" "speed" "rush_along" "rush"
             "race" "pelt_along" "hotfoot" "hie" "hasten" "cannonball_along"
             "bucket_along" "belt_along")
      :etf SVO))

(define-category run.RUN-51.3.2-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("run" "run" "run" "turn_tail" "take_to_the_woods" "scat" "scarper"
             "run_away" "run" "lam" "hightail_it" "head_for_the_hills"
             "fly_the_coop" "escape" "bunk" "break_away" "run")
      :etf SVO))

(define-category promenade.RUN-51.3.2-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("promenade" "promenade" "troop" "promenade" "parade")
      :etf SVO))

(define-category parade.RUN-51.3.2-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("parade" "troop" "promenade" "parade")
      :etf SVO))

(define-category jump.RUN-51.3.2-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("jump" "leap" "jump" "spring" "leap" "jump" "bound")
      :etf SVO))

(define-category jog.RUN-51.3.2-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("jog" "trot" "jog" "clip")
      :etf SVO))

(define-category fly.RUN-51.3.2-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fly" "take_flight" "fly" "flee" "fly" "fly" "wing" "fly")
      :etf SVO))

(define-category satisfy.SATISFY-55.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("satisfy")
      :etf SVO))

(define-category satiate.SATISFY-55.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("satiate")
      :etf SVO))

(define-category sate.SATISFY-55.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sate")
      :etf SVO))

(define-category meet.SATISFY-55.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("meet")
      :etf SVO))

(define-category fulfill.SATISFY-55.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fulfill")
      :etf SVO))

(define-category exceed.SATISFY-55.7
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("exceed")
      :etf SVO))

(define-category underline.SCRIBBLE-25.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("underline" "underscore" "underline")
      :etf SVO))

(define-category underscore.SCRIBBLE-25.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("underscore" "underscore" "underline")
      :etf SVO))

(define-category trace.SCRIBBLE-25.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trace" "trace" "trace" "line" "draw" "describe" "delineate")
      :etf SVO))

(define-category take_down.SCRIBBLE-25.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category take.SCRIBBLE-25.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("take")
      :etf SVO))

(define-category spell.SCRIBBLE-25.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("spell")
      :etf SVO))

(define-category misspell.SCRIBBLE-25.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("misspell")
      :etf SVO))

(define-category jot_down.SCRIBBLE-25.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "jot_down" "jot")
      :etf SVO))

(define-category jot.SCRIBBLE-25.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("jot" "jot_down" "jot")
      :etf SVO))

(define-category forge.SCRIBBLE-25.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("forge" "forge" "fake" "counterfeit")
      :etf SVO))

(define-category copy.SCRIBBLE-25.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("copy" "re-create" "copy" "copy")
      :etf SVO))

(define-category taste.SEE-30.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("taste" "taste" "taste" "try_out" "try" "taste" "sample")
      :etf SVO))

(define-category smell.SEE-30.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("smell" "smell")
      :etf SVO))

(define-category transship.SEND-11.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("transship" "transship")
      :etf SVO))

(define-category import.SEND-11.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("import" "import")
      :etf SVO))

(define-category export.SEND-11.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("export" "export")
      :etf SVO))

(define-category transport.SEND-11.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("transport" "transport" "transmit" "transfer" "channelize"
             "channelise" "channel" "transport" "ship" "send" "transport")
      :etf SVO))

(define-category transfer.SEND-11.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("transfer" "transport" "transmit" "transfer" "channelize"
             "channelise" "channel" "transfer")
      :etf SVO))

(define-category shunt.SEND-11.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shunt" "shunt")
      :etf SVO))

(define-category shift.SEND-11.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shift" "transfer" "shift")
      :etf SVO))

(define-category port.SEND-11.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("port" "port")
      :etf SVO))

(define-category pass_on.SEND-11.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "pass_on" "pass_around" "distribute" "circulate" "pass_on"
             "turn_over" "reach" "pass_on" "pass" "hand" "give")
      :etf SVO))

(define-category handdeliver.SEND-11.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("handdeliver")
      :etf SVO))

(define-category dispatch.SEND-11.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dispatch" "send_off" "dispatch" "despatch")
      :etf SVO))

(define-category deliver.SEND-11.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deliver" "deliver")
      :etf SVO))

(define-category convey.SEND-11.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("convey" "get" "fetch" "convey" "bring" "take" "convey" "bring"
             "transmit" "convey" "communicate")
      :etf SVO))

(define-category uncoil.SEPARATE-23.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("uncoil")
      :etf SVO))

(define-category sever.SEPARATE-23.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sever" "sever" "lop" "discerp" "sever" "break_up")
      :etf SVO))

(define-category disassociate.SEPARATE-23.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disassociate" "divorce" "disunite" "dissociate" "disjoint"
             "disassociate")
      :etf SVO))

(define-category whisk.SHAKE-22.3-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whisk" "whisk" "whip")
      :etf SVO))

(define-category whip.SHAKE-22.3-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whip" "whisk" "whip")
      :etf SVO))

(define-category swirl.SHAKE-22.3-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("swirl")
      :etf SVO))

(define-category stir.SHAKE-22.3-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stir" "stir" "stir")
      :etf SVO))

(define-category scramble.SHAKE-22.3-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scramble" "scramble" "beat" "throw_together" "scramble" "jumble")
      :etf SVO))

(define-category fuse.SHAKE-22.3-1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fuse" "mix" "merge" "meld" "immix" "fuse" "flux" "conflate"
             "commingle" "combine" "coalesce" "blend")
      :etf SVO))

(define-category agglutinate.SHAKE-22.3-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("agglutinate" "agglutinate")
      :etf SVO))

(define-category affix.SHAKE-22.3-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("affix" "stick_on" "affix")
      :etf SVO))

(define-category fixate.SHAKE-22.3-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fixate" "settle_on" "fixate" "fixate" "fix")
      :etf SVO))

(define-category weld.SHAKE-22.3-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("weld" "weld")
      :etf SVO))

(define-category toggle.SHAKE-22.3-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("toggle" "toggle")
      :etf SVO))

(define-category splice.SHAKE-22.3-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("splice" "splice" "splice" "splice")
      :etf SVO))

(define-category secure.SHAKE-22.3-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("secure" "secure" "fix" "fasten")
      :etf SVO))

(define-category package.SHAKE-22.3-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("package" "package" "box")
      :etf SVO))

(define-category moor.SHAKE-22.3-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("moor" "moor" "tie_up" "moor" "berth")
      :etf SVO))

(define-category ligate.SHAKE-22.3-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ligate" "ligate" "ligate")
      :etf SVO))

(define-category jumble.SHAKE-22.3-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("jumble" "throw_together" "scramble" "jumble")
      :etf SVO))

(define-category graft.SHAKE-22.3-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("graft" "transplant" "graft" "ingraft" "graft" "engraft")
      :etf SVO))

(define-category fasten.SHAKE-22.3-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fasten" "fasten" "secure" "fix" "fasten")
      :etf SVO))

(define-category concatenate.SHAKE-22.3-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("concatenate" "concatenate" "concatenate")
      :etf SVO))

(define-category bundle.SHAKE-22.3-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bundle" "roll_up" "bundle_up" "bundle")
      :etf SVO))

(define-category bond.SHAKE-22.3-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bond" "stick_to" "stick" "hold_fast" "bond" "bind" "adhere")
      :etf SVO))

(define-category bind.SHAKE-22.3-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bind" "tie" "bind" "bind" "truss" "tie_up" "tie_down" "bind"
             "bind" "stick_to" "stick" "hold_fast" "bond" "bind" "adhere")
      :etf SVO))

(define-category attach.SHAKE-22.3-2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("attach" "attach" "attach")
      :etf SVO))

(define-category sniff.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sniff" "whiff" "sniff")
      :etf SVO))

(define-category witness.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("witness" "witness" "see" "find" "witness")
      :etf SVO))

(define-category spy.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("spy" "stag" "spy" "snoop" "sleuth" "spy" "spot" "espy" "descry")
      :etf SVO))

(define-category spot.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("spot" "spot" "spy" "spot" "espy" "descry")
      :etf SVO))

(define-category sight.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sight" "spy" "sight")
      :etf SVO))

(define-category scent_out.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "sniff_out" "smell_out" "scent_out" "nose_out")
      :etf SVO))

(define-category scent.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scent" "wind" "scent" "nose")
      :etf SVO))

(define-category savor.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("savor" "savour" "savor" "savour" "savor" "relish" "enjoy" "bask")
      :etf SVO))

(define-category recognize.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("recognize" "recognize" "recognise" "greet" "tell_apart" "spot"
             "recognize" "recognise" "pick_out" "make_out" "distinguish"
             "discern")
      :etf SVO))

(define-category perceive.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("perceive" "perceive" "comprehend")
      :etf SVO))

(define-category overhear.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("overhear" "take_in" "overhear" "catch")
      :etf SVO))

(define-category observe.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("observe" "observe" "maintain" "keep" "watch_over" "watch"
             "observe" "keep_an_eye_on" "follow" "take_note" "observe" "note"
             "observe" "notice" "find" "discover" "detect")
      :etf SVO))

(define-category make_out.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "tell_apart" "spot" "recognize" "recognise" "pick_out"
             "make_out" "distinguish" "discern")
      :etf SVO))

(define-category glimpse.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("glimpse" "glimpse")
      :etf SVO))

(define-category eye.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("eye" "eyeball" "eye")
      :etf SVO))

(define-category experience.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("experience" "live" "know" "experience")
      :etf SVO))

(define-category espy.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("espy" "spy" "spot" "espy" "descry")
      :etf SVO))

(define-category discover.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("discover" "discover" "strike" "light_upon" "happen_upon"
             "fall_upon" "discover" "come_upon" "come_across" "chance_upon"
             "chance_on" "attain" "find" "discover")
      :etf SVO))

(define-category descry.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("descry" "spy" "spot" "espy" "descry")
      :etf SVO))

(define-category behold.SIGHT-30.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("behold" "lay_eyes_on" "behold")
      :etf SVO))

(define-category wear.SIMPLE_DRESSING-41.3.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wear" "wear" "put_on" "get_into" "don" "assume" "wear" "bear"
             "wear" "have_on")
      :etf SVO))

(define-category doff.SIMPLE_DRESSING-41.3.1-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("doff" "doff")
      :etf SVO))

(define-category sleep.SNOOZE-40.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sleep" "slumber" "sleep" "log_z's" "kip" "catch_some_z's")
      :etf SVO))

(define-category nap.SNOOZE-40.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nap" "nap" "catnap" "catch_a_wink")
      :etf SVO))

(define-category horsewhip.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("horsewhip" "horsewhip")
      :etf SVO))

(define-category whop.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whop")
      :etf SVO))

(define-category whomp.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whomp")
      :etf SVO))

(define-category whisk.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whisk" "whisk_off" "whisk")
      :etf SVO))

(define-category whip.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whip" "whip" "lash" "whip" "welt" "trounce" "strap" "slash"
             "lather" "lash" "flog")
      :etf SVO))

(define-category whap.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whap")
      :etf SVO))

(define-category wham.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wham")
      :etf SVO))

(define-category wallop.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wallop" "whop" "wham" "whack" "wallop")
      :etf SVO))

(define-category truncheon.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("truncheon")
      :etf SVO))

(define-category thump.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("thump" "thump" "pound" "poke" "thump" "thud")
      :etf SVO))

(define-category thrash.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("thrash" "thresh" "thrash" "thresh" "thrash" "lam" "flail")
      :etf SVO))

(define-category strap.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("strap" "whip" "welt" "trounce" "strap" "slash" "lather" "lash"
             "flog")
      :etf SVO))

(define-category spank.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("spank" "spank" "paddle" "larrup")
      :etf SVO))

(define-category sock.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sock" "whop" "whap" "sock" "bop" "bonk" "bash")
      :etf SVO))

(define-category slam.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("slam" "slam" "flap_down" "slam" "bang" "slam" "bang")
      :etf SVO))

(define-category pummel.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pummel" "pummel" "pommel" "biff")
      :etf SVO))

(define-category pommel.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pommel")
      :etf SVO))

(define-category paddle.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("paddle" "spank" "paddle" "larrup")
      :etf SVO))

(define-category lather.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lather")
      :etf SVO))

(define-category larrup.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("larrup")
      :etf SVO))

(define-category lam.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lam")
      :etf SVO))

(define-category k.o..SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("k.o.")
      :etf SVO))

(define-category knife.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("knife" "stab" "knife")
      :etf SVO))

(define-category knee.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("knee")
      :etf SVO))

(define-category fustigate.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fustigate")
      :etf SVO))

(define-category flog.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("flog" "lambaste" "lambast" "flog" "cane" "whip" "welt" "trounce"
             "strap" "slash" "lather" "lash" "flog")
      :etf SVO))

(define-category flail.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("flail")
      :etf SVO))

(define-category flagellate.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("flagellate" "scourge" "flagellate")
      :etf SVO))

(define-category elbow.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("elbow" "elbow")
      :etf SVO))

(define-category cuff.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cuff" "whomp" "cuff")
      :etf SVO))

(define-category cudgel.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cudgel" "fustigate" "cudgel")
      :etf SVO))

(define-category cosh.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cosh" "cosh")
      :etf SVO))

(define-category conk.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("conk" "conk")
      :etf SVO))

(define-category club.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("club" "club" "bludgeon")
      :etf SVO))

(define-category clout.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("clout" "clout")
      :etf SVO))

(define-category clobber.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("clobber" "clobber" "batter" "baste")
      :etf SVO))

(define-category cane.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cane" "lambaste" "lambast" "flog" "cane")
      :etf SVO))

(define-category brain.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("brain" "brain")
      :etf SVO))

(define-category bonk.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bonk" "whop" "whap" "sock" "bop" "bonk" "bash")
      :etf SVO))

(define-category bludgeon.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bludgeon" "club" "bludgeon")
      :etf SVO))

(define-category birch.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("birch" "birch")
      :etf SVO))

(define-category biff.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("biff" "pummel" "pommel" "biff")
      :etf SVO))

(define-category belt.SPANK-18.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("belt" "belt")
      :etf SVO))

(define-category waste.SPEND_TIME-104
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("waste" "waste" "waste" "squander" "blow")
      :etf SVO))

(define-category use.SPEND_TIME-104
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("use" "use" "expend")
      :etf SVO))

(define-category spend.SPEND_TIME-104
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("spend" "spend" "pass")
      :etf SVO))

(define-category misspend.SPEND_TIME-104
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("misspend" "misspend")
      :etf SVO))

(define-category serve.SPEND_TIME-104
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("serve" "serve" "do")
      :etf SVO))

(define-category pass.SPEND_TIME-104
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pass" "spend" "pass")
      :etf SVO))

(define-category lead.SPEND_TIME-104
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lead")
      :etf SVO))

(define-category whiff.STALK-35.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("whiff" "whiff" "sniff")
      :etf SVO))

(define-category track.STALK-35.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("track" "trail" "track" "tail" "tag" "go_after" "give_chase" "dog"
             "chase_after" "chase")
      :etf SVO))

(define-category taste.STALK-35.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("taste" "try_out" "try" "taste" "sample")
      :etf SVO))

(define-category stalk.STALK-35.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stalk" "stalk")
      :etf SVO))

(define-category smell.STALK-35.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("smell" "smell")
      :etf SVO))

(define-category scent.STALK-35.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scent" "wind" "scent" "nose")
      :etf SVO))

(define-category wrest.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wrest" "wrest")
      :etf SVO))

(define-category thieve.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("thieve" "thieve" "snitch" "knock_off" "hook" "glom" "cop")
      :etf SVO))

(define-category take.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("take" "take" "take" "lead" "guide" "direct" "conduct")
      :etf SVO))

(define-category sequester.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sequester" "sequester" "seize" "impound" "confiscate" "attach")
      :etf SVO))

(define-category snatch_away.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category seize.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("seize" "usurp" "take_over" "seize" "assume" "arrogate"
             "sequester" "seize" "impound" "confiscate" "attach" "seize"
             "conquer" "capture" "appropriate" "seize")
      :etf SVO))

(define-category rustle.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rustle" "rustle" "lift")
      :etf SVO))

(define-category rob.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rob" "rob")
      :etf SVO))

(define-category rescue.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rescue" "rescue")
      :etf SVO))

(define-category repossess.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("repossess" "take_back" "repossess" "repossess" "reclaim")
      :etf SVO))

(define-category redeem.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("redeem")
      :etf SVO))

(define-category recoup.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("recoup" "recuperate" "recover" "recoup")
      :etf SVO))

(define-category reclaim.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reclaim" "repossess" "reclaim")
      :etf SVO))

(define-category recapture.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("recapture" "retake" "recapture" "retake" "recapture" "recapture"
             "recapture")
      :etf SVO))

(define-category purloin.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("purloin" "swipe" "sneak" "snarf" "purloin" "pinch" "pilfer"
             "nobble" "lift" "hook" "filch" "cabbage" "abstract")
      :etf SVO))

(define-category plunder.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("plunder" "violate" "spoil" "rape" "plunder" "despoil" "strip"
             "rifle" "reave" "ransack" "plunder" "pillage" "loot" "foray"
             "despoil")
      :etf SVO))

(define-category plagiarize.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("plagiarize" "plagiarize" "plagiarise" "lift")
      :etf SVO))

(define-category pinch.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pinch" "swipe" "sneak" "snarf" "purloin" "pinch" "pilfer"
             "nobble" "lift" "hook" "filch" "cabbage" "abstract")
      :etf SVO))

(define-category pickpocket.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pickpocket")
      :etf SVO))

(define-category nobble.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nobble" "snatch" "nobble" "kidnap" "abduct" "swipe" "sneak"
             "snarf" "purloin" "pinch" "pilfer" "nobble" "lift" "hook" "filch"
             "cabbage" "abstract")
      :etf SVO))

(define-category misappropriate.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("misappropriate")
      :etf SVO))

(define-category milk.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("milk" "milk")
      :etf SVO))

(define-category lift.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lift" "rustle" "lift" "swipe" "sneak" "snarf" "purloin" "pinch"
             "pilfer" "nobble" "lift" "hook" "filch" "cabbage" "abstract")
      :etf SVO))

(define-category liberate.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("liberate" "set_free" "liberate" "unloosen" "unloose" "release"
             "loose" "liberate" "free")
      :etf SVO))

(define-category knock_off.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "thieve" "snitch" "knock_off" "hook" "glom" "cop")
      :etf SVO))

(define-category kidnap.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("kidnap" "snatch" "nobble" "kidnap" "abduct")
      :etf SVO))

(define-category highjack.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("highjack" "pirate" "hijack" "highjack" "commandeer")
      :etf SVO))

(define-category filch.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("filch" "swipe" "sneak" "snarf" "purloin" "pinch" "pilfer"
             "nobble" "lift" "hook" "filch" "cabbage" "abstract")
      :etf SVO))

(define-category extort.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("extort" "wring" "squeeze" "rack" "gouge" "extort" "extort")
      :etf SVO))

(define-category embezzle.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("embezzle" "peculate" "misappropriate" "malversate" "embezzle"
             "defalcate")
      :etf SVO))

(define-category emancipate.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("emancipate" "manumit" "emancipate")
      :etf SVO))

(define-category cull.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cull" "cull")
      :etf SVO))

(define-category confiscate.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("confiscate" "sequester" "seize" "impound" "confiscate" "attach")
      :etf SVO))

(define-category commandeer.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("commandeer" "pirate" "hijack" "highjack" "commandeer")
      :etf SVO))

(define-category carjack.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("carjack" "carjack")
      :etf SVO))

(define-category cabbage.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cabbage" "swipe" "sneak" "snarf" "purloin" "pinch" "pilfer"
             "nobble" "lift" "hook" "filch" "cabbage" "abstract")
      :etf SVO))

(define-category bleed.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bleed" "bleed" "bleed")
      :etf SVO))

(define-category annex.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("annex" "annex")
      :etf SVO))

(define-category abduct.STEAL-10.5
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("abduct" "snatch" "nobble" "kidnap" "abduct")
      :etf SVO))

(define-category stimulate.STIMULATE-59.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stimulate" "stimulate" "provoke" "stimulate" "make" "induce"
             "have" "get" "cause")
      :etf SVO))

(define-category spur.STIMULATE-59.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("spur" "spur")
      :etf SVO))

(define-category rouse.STIMULATE-59.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rouse")
      :etf SVO))

(define-category prompt.STIMULATE-59.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("prompt" "prompt" "instigate" "inspire" "propel" "prompt" "move"
             "motivate" "incite" "actuate")
      :etf SVO))

(define-category jolt.STIMULATE-59.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("jolt" "jolt" "jar")
      :etf SVO))

(define-category incite.STIMULATE-59.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("incite" "propel" "prompt" "move" "motivate" "incite" "actuate")
      :etf SVO))

(define-category walk_over.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "walk_over")
      :etf SVO))

(define-category strangle.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("strangle")
      :etf SVO))

(define-category slake.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("slake" "slake" "slack" "abate" "slake" "quench" "assuage" "allay")
      :etf SVO))

(define-category reduce.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reduce")
      :etf SVO))

(define-category subjugate.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("subjugate")
      :etf SVO))

(define-category keep_down.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category quash.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("quash")
      :etf SVO))

(define-category repress.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("repress")
      :etf SVO))

(define-category muffle.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("muffle")
      :etf SVO))

(define-category smother.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("smother")
      :etf SVO))

(define-category quench.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("quench")
      :etf SVO))

(define-category quell.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("quell")
      :etf SVO))

(define-category squelch.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("squelch")
      :etf SVO))

(define-category muzzle.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("muzzle")
      :etf SVO))

(define-category gag.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gag")
      :etf SVO))

(define-category calm_down.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category lull.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lull")
      :etf SVO))

(define-category hush_up.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category shut_up.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category silence.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("silence")
      :etf SVO))

(define-category hush.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hush")
      :etf SVO))

(define-category choke.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("choke")
      :etf SVO))

(define-category suffocate.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("suffocate")
      :etf SVO))

(define-category dampen.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dampen")
      :etf SVO))

(define-category stifle.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stifle")
      :etf SVO))

(define-category crush.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crush")
      :etf SVO))

(define-category curb.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("curb")
      :etf SVO))

(define-category conquer.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("conquer")
      :etf SVO))

(define-category subdue.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("subdue")
      :etf SVO))

(define-category stamp_down.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category suppress.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("suppress")
      :etf SVO))

(define-category nourish.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nourish" "sustain" "nurture" "nourish")
      :etf SVO))

(define-category mob.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mob" "throng" "pile" "pack" "mob" "jam")
      :etf SVO))

(define-category enslave.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("enslave" "enslave")
      :etf SVO))

(define-category disenfranchise.SUBJUGATE-42.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("disenfranchise" "disfranchise" "disenfranchise")
      :etf SVO))

(define-category emit.SUBSTANCE_EMISSION-43.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("emit")
      :etf SVO))

(define-category give_forth.SUBSTANCE_EMISSION-43.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category give_out.SUBSTANCE_EMISSION-43.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category give_off.SUBSTANCE_EMISSION-43.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category supplant.SUBSTITUTE-13.6.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("supplant" "supplant" "supervene_upon" "supersede" "supercede"
             "replace")
      :etf SVO))

(define-category replace.SUBSTITUTE-13.6.2-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("replace" "replace")
      :etf SVO))

(define-category win.SUCCEED-74-2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("win" "win" "succeed" "deliver_the_goods" "come_through"
             "bring_home_the_bacon" "win" "pull_ahead" "make_headway"
             "get_ahead" "gain_ground" "gain" "advance" "win")
      :etf SVO))

(define-category flub.SUCCEED-74-3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("flub" "spoil" "screw_up" "muff" "muck_up" "mishandle" "mess_up"
             "louse_up" "fumble" "fuck_up" "foul_up" "fluff" "flub" "bungle"
             "bumble" "botch_up" "botch" "bollocks_up" "bollocks" "bollix_up"
             "bollix" "bodge" "bobble" "blow" "ball_up")
      :etf SVO))

(define-category lose.SUCCEED-74-3-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lose" "lose")
      :etf SVO))

(define-category bear.SUPPORT-15.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bear")
      :etf SVO))

(define-category swipe.SWAT-18.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("swipe" "swipe")
      :etf SVO))

(define-category swat.SWAT-18.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("swat" "swat")
      :etf SVO))

(define-category stab.SWAT-18.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stab" "stab" "prod" "poke" "jab" "dig" "stab" "jab" "stab"
             "knife")
      :etf SVO))

(define-category slug.SWAT-18.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("slug" "swig" "slug" "slog")
      :etf SVO))

(define-category slice.SWAT-18.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("slice" "slice_up" "slice" "slit" "slice")
      :etf SVO))

(define-category scratch.SWAT-18.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("scratch" "scratch" "rub" "itch" "scratch_up" "scratch" "scrape")
      :etf SVO))

(define-category punch.SWAT-18.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("punch" "punch" "plug")
      :etf SVO))

(define-category peck.SWAT-18.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("peck" "smack" "peck" "pick" "peck" "beak")
      :etf SVO))

(define-category paw.SWAT-18.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("paw" "paw")
      :etf SVO))

(define-category kick.SWAT-18.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("kick" "kick" "kick" "kick")
      :etf SVO))

(define-category claw.SWAT-18.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("claw" "claw" "claw")
      :etf SVO))

(define-category chop.SWAT-18.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chop" "chop_up" "chop")
      :etf SVO))

(define-category bite.SWAT-18.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bite" "bite" "seize_with_teeth" "bite")
      :etf SVO))

(define-category zip.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("zip" "zipper" "zip_up" "zip")
      :etf SVO))

(define-category yoke.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("yoke" "yoke" "yoke" "link")
      :etf SVO))

(define-category wire.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wire" "wire")
      :etf SVO))

(define-category weld.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("weld" "weld")
      :etf SVO))

(define-category truss.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("truss" "truss" "tie_up" "tie_down" "bind")
      :etf SVO))

(define-category trammel.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trammel")
      :etf SVO))

(define-category tie.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tie" "tie" "link_up" "link" "connect" "tie" "bind")
      :etf SVO))

(define-category thumbtack.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("thumbtack" "thumbtack")
      :etf SVO))

(define-category thread.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("thread")
      :etf SVO))

(define-category tether.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tether" "tether")
      :etf SVO))

(define-category tape.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tape" "tape")
      :etf SVO))

(define-category tack.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tack" "tack")
      :etf SVO))

(define-category suture.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("suture" "suture")
      :etf SVO))

(define-category string.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("string" "string")
      :etf SVO))

(define-category strap.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("strap" "strap")
      :etf SVO))

(define-category stitch.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("stitch" "stitch" "sew_together" "sew" "run_up")
      :etf SVO))

(define-category staple.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("staple" "staple")
      :etf SVO))

(define-category solder.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("solder" "solder")
      :etf SVO))

(define-category skewer.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("skewer" "spit" "skewer")
      :etf SVO))

(define-category shackle.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shackle" "shackle" "fetter" "shackle" "pinion")
      :etf SVO))

(define-category seal.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("seal" "seal")
      :etf SVO))

(define-category screw.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("screw" "screw")
      :etf SVO))

(define-category rope.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rope" "rope" "leash")
      :etf SVO))

(define-category rivet.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rivet" "rivet")
      :etf SVO))

(define-category reeve.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reeve" "reeve" "reeve" "reeve")
      :etf SVO))

(define-category plaster.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("plaster" "plaster")
      :etf SVO))

(define-category pin.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pin" "pin")
      :etf SVO))

(define-category peg.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("peg" "peg_down" "peg")
      :etf SVO))

(define-category paste.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("paste" "paste" "glue")
      :etf SVO))

(define-category paste.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("paste" "paste")
      :etf SVO))

(define-category padlock.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("padlock" "padlock")
      :etf SVO))

(define-category nail.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nail" "nail")
      :etf SVO))

(define-category muzzle.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("muzzle" "muzzle" "gag" "muzzle")
      :etf SVO))

(define-category moor.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("moor" "moor" "tie_up" "moor" "berth")
      :etf SVO))

(define-category manacle.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("manacle" "manacle" "handcuff" "cuff")
      :etf SVO))

(define-category loop.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("loop" "loop")
      :etf SVO))

(define-category lock.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lock" "lock")
      :etf SVO))

(define-category link.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("link" "yoke" "link" "tie" "link_up" "link" "connect")
      :etf SVO))

(define-category leash.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("leash" "rope" "leash")
      :etf SVO))

(define-category latch.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("latch" "latch")
      :etf SVO))

(define-category lasso.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lasso" "rope" "lasso")
      :etf SVO))

(define-category lash.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lash" "lash")
      :etf SVO))

(define-category lace.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("lace" "twine" "lace" "intertwine" "interlace" "entwine" "enlace")
      :etf SVO))

(define-category hook.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hook" "hook")
      :etf SVO))

(define-category hitch.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hitch")
      :etf SVO))

(define-category hinge.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hinge" "hinge")
      :etf SVO))

(define-category harness.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("harness" "tackle" "harness")
      :etf SVO))

(define-category handcuff.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("handcuff" "manacle" "handcuff" "cuff")
      :etf SVO))

(define-category gum.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gum" "gum")
      :etf SVO))

(define-category glue.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("glue" "paste" "glue")
      :etf SVO))

(define-category fetter.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fetter" "shackle" "fetter")
      :etf SVO))

(define-category fasten.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fasten" "secure" "fix" "fasten" "fasten")
      :etf SVO))

(define-category epoxy.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("epoxy" "epoxy")
      :etf SVO))

(define-category connect.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("connect" "tie" "link_up" "link" "connect")
      :etf SVO))

(define-category clip.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("clip" "clip")
      :etf SVO))

(define-category clasp.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("clasp" "clasp" "buckle" "clasp" "brooch")
      :etf SVO))

(define-category clamp.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("clamp" "clamp")
      :etf SVO))

(define-category cinch.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cinch" "girth" "cinch")
      :etf SVO))

(define-category cement.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cement" "cement")
      :etf SVO))

(define-category cable.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cable" "cable")
      :etf SVO))

(define-category button.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("button" "button")
      :etf SVO))

(define-category buckle.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("buckle" "clasp" "buckle")
      :etf SVO))

(define-category bracket.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bracket" "bracket")
      :etf SVO))

(define-category bolt.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bolt" "bolt")
      :etf SVO))

(define-category bond.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bond" "stick_to" "stick" "hold_fast" "bond" "bind" "adhere")
      :etf SVO))

(define-category belt.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("belt" "belt")
      :etf SVO))

(define-category band.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("band" "band")
      :etf SVO))

(define-category affix.TAPE-22.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("affix" "affix" "supplement" "append" "affix" "add_on" "stick_on"
             "affix")
      :etf SVO))

(define-category discard.THROW-17.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("discard" "toss_out" "toss_away" "toss" "throw_out" "throw_away"
             "put_away" "fling" "dispose" "discard" "chuck_out" "cast_out"
             "cast_away" "cast_aside")
      :etf SVO))

(define-category cast.THROW-17.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cast" "hurtle" "hurl" "cast" "throw" "project" "contrive" "cast")
      :etf SVO))

(define-category wring.TOUCH-20
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wring" "wring" "wrench")
      :etf SVO))

(define-category twinge.TOUCH-20
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("twinge" "twitch" "twinge" "tweet" "squeeze" "pinch" "nip")
      :etf SVO))

(define-category tweak.TOUCH-20
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tweak" "tweak")
      :etf SVO))

(define-category tug.TOUCH-20
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tug" "tug" "tug" "tug")
      :etf SVO))

(define-category squeeze.TOUCH-20
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("squeeze" "squeeze" "hug" "embrace" "bosom" "twitch" "twinge"
             "tweet" "squeeze" "pinch" "nip" "squeeze" "squelch" "squeeze"
             "squash" "mash" "crush")
      :etf SVO))

(define-category osculate.TOUCH-20
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("osculate" "snog" "osculate" "kiss" "buss")
      :etf SVO))

(define-category knead.TOUCH-20
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("knead" "rub_down" "massage" "knead" "work" "knead")
      :etf SVO))

(define-category grope.TOUCH-20
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("grope" "grope" "grope" "fumble")
      :etf SVO))

(define-category chafe.TOUCH-20
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chafe" "chafe")
      :etf SVO))

(define-category write_out.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "write_up" "write_out")
      :etf SVO))

(define-category write_up.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "write_up" "write_out")
      :etf SVO))

(define-category videotape.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("videotape" "videotape" "tape")
      :etf SVO))

(define-category type.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("type" "typewrite" "type")
      :etf SVO))

(define-category transcribe.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("transcribe" "transcribe" "transcribe" "transliterate"
             "transcribe" "transcribe")
      :etf SVO))

(define-category televise.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("televise" "televise" "telecast")
      :etf SVO))

(define-category tape.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tape" "tape" "record" "videotape" "tape")
      :etf SVO))

(define-category tally_up.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("")
      :etf SVO))

(define-category tally.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tally")
      :etf SVO))

(define-category record.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("record" "tape" "record")
      :etf SVO))

(define-category photograph.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("photograph" "snap" "shoot" "photograph")
      :etf SVO))

(define-category photocopy.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("photocopy" "xerox" "run_off" "photocopy")
      :etf SVO))

(define-category microfilm.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("microfilm" "microfilm")
      :etf SVO))

(define-category forge.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("forge" "forge" "fake" "counterfeit")
      :etf SVO))

(define-category film.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("film" "film" "take" "shoot" "film")
      :etf SVO))

(define-category duplicate.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("duplicate" "duplicate")
      :etf SVO))

(define-category document.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("document" "document")
      :etf SVO))

(define-category copy.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("copy" "re-create" "copy" "copy")
      :etf SVO))

(define-category chronicle.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chronicle" "chronicle")
      :etf SVO))

(define-category chart.TRANSCRIBE-25.4
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chart" "graph" "chart" "chart")
      :etf SVO))

(define-category write_in.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "write_in")
      :etf SVO))

(define-category snitch.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("snitch" "tell_on" "stag" "snitch" "shop" "shit" "rat" "grass"
             "give_away" "denounce" "betray")
      :etf SVO))

(define-category boil_down.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "reduce" "come_down" "boil_down")
      :etf SVO))

(define-category sum_up.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "summarize" "summarise" "sum_up" "resume")
      :etf SVO))

(define-category summarize.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("summarize" "summarize" "summarise" "sum_up" "resume")
      :etf SVO))

(define-category outline.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("outline" "sketch" "outline" "adumbrate")
      :etf SVO))

(define-category communicate.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("communicate" "intercommunicate" "communicate" "put_across"
             "pass_on" "pass_along" "pass" "communicate")
      :etf SVO))

(define-category corroborate.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("corroborate" "validate" "corroborate")
      :etf SVO))

(define-category verify.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("verify" "verify" "swear" "swan" "avow" "aver" "assert" "affirm"
             "verify")
      :etf SVO))

(define-category illustrate.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("illustrate" "instance" "illustrate" "exemplify")
      :etf SVO))

(define-category sniff.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sniff")
      :etf SVO))

(define-category relay.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("relay" "relay")
      :etf SVO))

(define-category recite.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("recite" "tell" "recount" "recite" "narrate" "retell" "recite"
             "recite")
      :etf SVO))

(define-category recap.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("recap" "recapitulate" "recap")
      :etf SVO))

(define-category preach.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("preach" "prophesy" "preach")
      :etf SVO))

(define-category pose.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("pose" "present" "pose")
      :etf SVO))

(define-category narrate.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("narrate" "tell" "recount" "recite" "narrate")
      :etf SVO))

(define-category justify.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("justify" "rationalize" "rationalise" "justify" "excuse"
             "apologize" "apologise")
      :etf SVO))

(define-category expound.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("expound" "lucubrate" "flesh_out" "expound" "exposit" "expatiate"
             "expand" "enlarge" "elaborate" "dilate")
      :etf SVO))

(define-category explicate.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("explicate" "explicate" "explain")
      :etf SVO))

(define-category explain.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("explain" "explain" "explicate" "explain")
      :etf SVO))

(define-category elucidate.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("elucidate" "straighten_out" "sort_out" "shed_light_on"
             "illuminate" "enlighten" "elucidate" "crystallize" "crystallise"
             "crystalize" "crystalise" "clear_up" "clear" "elucidate"
             "clear_up" "clarify")
      :etf SVO))

(define-category demonstrate.TRANSFER_MESG-37.1.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("demonstrate" "show" "present" "exhibit" "demonstrate" "demo")
      :etf SVO))

(define-category trap.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trap" "trap" "pin_down")
      :etf SVO))

(define-category trick.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trick" "trick" "pull_a_fast_one_on" "play_tricks"
             "play_a_trick_on" "play_a_joke_on" "fox" "fob" "flim-flam")
      :etf SVO))

(define-category mislead.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mislead" "mislead" "misinform")
      :etf SVO))

(define-category manipulate.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("manipulate" "manipulate" "keep_in_line" "control" "pull_wires"
             "pull_strings" "manipulate")
      :etf SVO))

(define-category hoodwink.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("hoodwink" "juggle" "hoodwink" "beguile")
      :etf SVO))

(define-category fool.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fool" "take_in" "slang" "put_one_over" "put_one_across" "put_on"
             "gull" "fool" "dupe" "cod" "befool")
      :etf SVO))

(define-category extort.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("extort")
      :etf SVO))

(define-category entrap.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("entrap" "set_up" "frame" "entrap" "ensnare")
      :etf SVO))

(define-category ensnare.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ensnare" "set_up" "frame" "entrap" "ensnare")
      :etf SVO))

(define-category dupe.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dupe" "take_in" "slang" "put_one_over" "put_one_across" "put_on"
             "gull" "fool" "dupe" "cod" "befool")
      :etf SVO))

(define-category delude.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("delude" "lead_on" "delude" "deceive" "cozen")
      :etf SVO))

(define-category deceive.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deceive" "lead_astray" "deceive" "betray")
      :etf SVO))

(define-category con.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("con" "victimize" "swindle" "short-change" "scam" "rook" "nobble"
             "mulct" "hornswoggle" "gyp" "goldbrick" "gip" "diddle" "defraud"
             "con" "bunco")
      :etf SVO))

(define-category cheat.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cheat" "shaft" "screw" "jockey" "chouse" "chicane" "cheat")
      :etf SVO))

(define-category blackmail.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("blackmail" "blackmail" "pressure" "blackmail" "blackjack")
      :etf SVO))

(define-category bluff.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bluff" "bluff" "bluff_out" "bluff")
      :etf SVO))

(define-category bullshit.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bullshit" "talk_through_one's_hat" "fake" "bullshit" "bull")
      :etf SVO))

(define-category fox.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fox" "trick" "pull_a_fast_one_on" "play_tricks" "play_a_trick_on"
             "play_a_joke_on" "fox" "fob" "flim-flam")
      :etf SVO))

(define-category cozen.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cozen" "cozen" "lead_on" "delude" "deceive" "cozen")
      :etf SVO))

(define-category bamboozle.TRICK-59.2
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bamboozle" "snow" "pull_the_wool_over_someone's_eyes"
             "play_false" "lead_by_the_nose" "hoodwink" "bamboozle")
      :etf SVO))

(define-category attempt.TRY-61.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("attempt" "undertake" "set_about" "attempt" "try" "seek" "essay"
             "attempt" "assay")
      :etf SVO))

(define-category try.TRY-61.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("try" "try" "seek" "essay" "attempt" "assay")
      :etf SVO))

(define-category transmute.TURN-26.6.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("transmute" "transubstantiate" "transmute" "transform" "transmute"
             "transform" "metamorphose" "transmute")
      :etf SVO))

(define-category translate.TURN-26.6.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("translate")
      :etf SVO))

(define-category transform.TURN-26.6.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("transform" "transmute" "transform" "metamorphose"
             "transubstantiate" "transmute" "transform")
      :etf SVO))

(define-category mutate.TURN-26.6.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("mutate")
      :etf SVO))

(define-category morph.TURN-26.6.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("morph" "morph" "morph")
      :etf SVO))

(define-category metamorphose.TURN-26.6.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("metamorphose" "transmogrify" "transfigure" "metamorphose")
      :etf SVO))

(define-category deform.TURN-26.6.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("deform")
      :etf SVO))

(define-category alter.TURN-26.6.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("alter" "modify" "change" "alter")
      :etf SVO))

(define-category bring.URGE-58.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bring")
      :etf SVO))

(define-category run.USE-105.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("run" "work" "run" "operate" "go" "function" "run")
      :etf SVO))

(define-category reuse.USE-105.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("reuse" "reuse" "reprocess" "recycle")
      :etf SVO))

(define-category play.USE-105.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("play")
      :etf SVO))

(define-category exploit.USE-105.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("exploit" "tap" "exploit" "work" "exploit")
      :etf SVO))

(define-category exert.USE-105.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("exert" "wield" "maintain" "exert" "exert" "exercise")
      :etf SVO))

(define-category employ.USE-105.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("employ" "utilize" "utilise" "use" "employ" "apply")
      :etf SVO))

(define-category apply.USE-105.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("apply" "utilize" "utilise" "use" "employ" "apply")
      :etf SVO))

(define-category utilize.USE-105.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("utilize" "utilize" "utilise" "use" "employ" "apply")
      :etf SVO))

(define-category use.USE-105.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("use" "utilize" "utilise" "use" "employ" "apply")
      :etf SVO))

(define-category yacht.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("yacht" "yacht")
      :etf SVO))

(define-category trolley.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("trolley")
      :etf SVO))

(define-category tram.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("tram")
      :etf SVO))

(define-category taxi.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("taxi" "taxi" "cab")
      :etf SVO))

(define-category sleigh.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sleigh" "sleigh" "sled")
      :etf SVO))

(define-category sledge.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sledge" "sledge" "sledge")
      :etf SVO))

(define-category rocket.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rocket" "rocket")
      :etf SVO))

(define-category rickshaw.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("rickshaw")
      :etf SVO))

(define-category punt.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("punt" "punt" "pole")
      :etf SVO))

(define-category parachute.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("parachute" "parachute" "jump" "chute")
      :etf SVO))

(define-category motor.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("motor" "motor" "drive")
      :etf SVO))

(define-category moped.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("moped")
      :etf SVO))

(define-category jet.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("jet" "jet")
      :etf SVO))

(define-category helicopter.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("helicopter")
      :etf SVO))

(define-category gondola.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gondola")
      :etf SVO))

(define-category ferry.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ferry" "ferry" "ferry")
      :etf SVO))

(define-category dogsled.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dogsled")
      :etf SVO))

(define-category coach.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("coach" "coach")
      :etf SVO))

(define-category chariot.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("chariot" "chariot" "chariot")
      :etf SVO))

(define-category caravan.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("caravan")
      :etf SVO))

(define-category cab.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cab")
      :etf SVO))

(define-category bobsled.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bobsled" "bobsled" "bob")
      :etf SVO))

(define-category balloon.VEHICLE-51.4.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("balloon" "balloon")
      :etf SVO))

(define-category toboggan.VEHICLE-51.4.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("toboggan" "toboggan" "luge")
      :etf SVO))

(define-category sled.VEHICLE-51.4.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sled" "sleigh" "sled")
      :etf SVO))

(define-category ski.VEHICLE-51.4.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("ski" "ski")
      :etf SVO))

(define-category skateboard.VEHICLE-51.4.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("skateboard" "skateboard")
      :etf SVO))

(define-category skate.VEHICLE-51.4.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("skate" "skate")
      :etf SVO))

(define-category raft.VEHICLE-51.4.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("raft" "raft" "raft")
      :etf SVO))

(define-category motorbike.VEHICLE-51.4.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("motorbike" "motorcycle" "motorbike" "cycle")
      :etf SVO))

(define-category kayak.VEHICLE-51.4.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("kayak" "kayak")
      :etf SVO))

(define-category cycle.VEHICLE-51.4.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("cycle" "wheel" "pedal" "cycle" "bike" "bicycle" "motorcycle"
             "motorbike" "cycle")
      :etf SVO))

(define-category canoe.VEHICLE-51.4.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("canoe" "canoe")
      :etf SVO))

(define-category bike.VEHICLE-51.4.1-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("bike" "wheel" "pedal" "cycle" "bike" "bicycle")
      :etf SVO))

(define-category sail.VEHICLE_PATH-51.4.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("sail" "voyage" "sail" "navigate" "sail" "sail")
      :etf SVO))

(define-category take.VEHICLE_PATH-51.4.3
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("take" "take")
      :etf SVO))

(define-category nullify.VOID-106
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nullify" "void" "quash" "nullify" "invalidate" "avoid" "annul")
      :etf SVO))

(define-category invalidate.VOID-106
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("invalidate" "void" "vitiate" "invalidate" "void" "quash"
             "nullify" "invalidate" "avoid" "annul")
      :etf SVO))

(define-category avoid.VOID-106
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("avoid" "void" "quash" "nullify" "invalidate" "avoid" "annul")
      :etf SVO))

(define-category quash.VOID-106
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("quash" "void" "quash" "nullify" "invalidate" "avoid" "annul"
             "subjugate" "subdue" "repress" "reduce" "quash" "keep_down")
      :etf SVO))

(define-category annul.VOID-106
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("annul" "void" "quash" "nullify" "invalidate" "avoid" "annul")
      :etf SVO))

(define-category sign_up.VOLUNTEER-95.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("" "sign_up")
      :etf SVO))

(define-category enlist.VOLUNTEER-95.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("enlist" "enlist" "engage")
      :etf SVO))

(define-category volunteer.VOLUNTEER-95.4-1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("volunteer" "volunteer")
      :etf SVO))

(define-category love.WANT-32.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("love" "love" "enjoy")
      :etf SVO))

(define-category fancy.WANT-32.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("fancy" "take_to" "go_for" "fancy")
      :etf SVO))

(define-category desire.WANT-32.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("desire")
      :etf SVO))

(define-category crave.WANT-32.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("crave" "thirst" "starve" "lust" "hunger" "crave")
      :etf SVO))

(define-category covet.WANT-32.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("covet" "covet")
      :etf SVO))

(define-category wink.WINK-40.3.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wink" "wink" "blink_away" "blink" "wink" "nictitate" "nictate"
             "blink" "wink")
      :etf SVO))

(define-category wave.WINK-40.3.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wave" "wave" "beckon")
      :etf SVO))

(define-category squint.WINK-40.3.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("squint" "squint" "squinch")
      :etf SVO))

(define-category shrug.WINK-40.3.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("shrug" "shrug")
      :etf SVO))

(define-category nod.WINK-40.3.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("nod" "nod" "nod")
      :etf SVO))

(define-category gesture.WINK-40.3.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("gesture")
      :etf SVO))

(define-category clap.WINK-40.3.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("clap" "spat" "clap")
      :etf SVO))

(define-category blink.WINK-40.3.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("blink" "wink" "blink_away" "blink" "wink" "nictitate" "nictate"
             "blink")
      :etf SVO))

(define-category beckon.WINK-40.3.1
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("beckon")
      :etf SVO))

(define-category yen.WISH-62
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("yen" "yen" "yearn" "pine" "languish" "ache")
      :etf SVO))

(define-category imagine.WISH-62
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("imagine" "think" "suppose" "reckon" "opine" "imagine" "guess")
      :etf SVO))

(define-category dream.WISH-62
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("dream" "woolgather" "stargaze" "dream" "daydream")
      :etf SVO))

(define-category aim.WISH-62
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("aim" "purpose" "purport" "propose" "aim")
      :etf SVO))

(define-category think.WISH-62
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("think" "think" "suppose" "reckon" "opine" "imagine" "guess")
      :etf SVO))

(define-category propose.WISH-62
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("propose" "purpose" "purport" "propose" "aim")
      :etf SVO))

(define-category plan.WISH-62
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("plan" "plan" "be_after")
      :etf SVO))

(define-category wish.WISH-62
  :specializes process
  :mixins (SIMPLE-ACTION)
  :realization
     (:verb ("wish" "wish" "like" "care")
      :etf SVO))

