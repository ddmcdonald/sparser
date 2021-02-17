;;; copyright (c) 2017 sift llc. all rights reserved
;;;
;;;    file: "score-verbs"
;;;  module: "grammar/model/sl/biology/
;;; version: december 2020
;;; contains generated verb definitions from comlex for verbs not yet defined for score

(in-package :sparser)

(define-category with-p-dir :specializes comlex-verb
  :binds ((about top)
          (across top) (along top) (around top) (behind top) (below top) (beneath top)
          (between top) (beyond top) (by top) (down top) (from top) (in top) (inside top) (into top)
          (off top) (on top) (onto top) (out top) (out top) (of top) (outside top) (over top) (past top)
          (through top) (throughout top) (to top) (toward top) (towards top) (up top) (up top) (to top) (via top))
  :realization
  (:verb "dummy-verb"
   :about about :across across :along along :around around :behind behind :below below :beneath
 beneath :between between :beyond beyond :by by :down down :from from :in in :inside inside :into
 into :off off :on on :onto onto :out out :out out :of of :outside outside :over over :past past
 :through through :throughout throughout :to to :toward toward :towards towards :up up :up up :to to :via via))



(define-category abate :specializes comlex-verb
     :realization (:verb  "abate" :s SUBJECT :o OBJECT))

(define-category abide :specializes comlex-verb
     :binds
      ((AT top)
       (BY top)
       (IN top)
       (WITH top))
     :realization (:verb  "abide" :s SUBJECT :o OBJECT :at AT :by BY :in IN :with WITH))

(define-category abound :specializes comlex-verb
     :binds
      ((IN top)
       (WITH top))
     :realization (:verb  "abound" :s SUBJECT :in IN :with WITH))

(define-category absent :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "absent" :s SUBJECT :o OBJECT :from FROM))

(define-category absorb :specializes comlex-verb
     :binds
      ((FROM top)
       (IN top)
       (INTO top))
     :realization (:verb  "absorb" :s SUBJECT :o OBJECT :from FROM :in IN :into INTO))

(define-category abuse :specializes comlex-verb
     :realization (:verb  "abuse" :s SUBJECT :o OBJECT))

(define-category accentuate :specializes comlex-verb
     :realization (:verb  "accentuate" :s SUBJECT :o OBJECT))

(define-category accept :specializes comlex-verb
     :binds
      ((FROM top)
       (AT top)
       (FOR top))
     :realization (:verb  "accept" :s SUBJECT :o OBJECT :from FROM :at AT :for FOR))

(define-category access :specializes comlex-verb
     :realization (:verb  "access" :s SUBJECT :o OBJECT))

(define-category accommodate :specializes comlex-verb
     :binds
      ((WITH top)
       (TO top))
     :realization (:verb  "accommodate" :s SUBJECT :o OBJECT :with WITH :to TO))

(define-category accompany :specializes comlex-verb
     :binds
      ((IN top)
       (THROUGH top)
       (AT top)
       (ON top)
       (TO top)
       (WITH top))
     :realization (:verb  "accompany" :s SUBJECT :o OBJECT :in IN :through THROUGH :at AT :on ON :to TO :with WITH))

(define-category accomplish :specializes comlex-verb
     :realization (:verb  "accomplish" :s SUBJECT :o OBJECT))

(define-category accord :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "accord" :s SUBJECT :o OBJECT :with WITH))

(define-category account :specializes comlex-verb
     :binds
      ((FOR top)
       (TO top))
     :realization (:verb  "account" :s SUBJECT :o OBJECT :for FOR :to TO))

(define-category accuse :specializes comlex-verb
     :binds
      ((OF top))
     :realization (:verb  "accuse" :s SUBJECT :o OBJECT :of OF))

(define-category ache :specializes comlex-verb
     :realization (:verb  "ache" :s SUBJECT))

(define-category achieve :specializes comlex-verb
  :binds ((through top))
  :realization (:verb  "achieve" :s SUBJECT :o OBJECT :through through))

(define-category acknowledge :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "acknowledge" :s SUBJECT :o OBJECT :to TO))

;;; found existing category ACQUIRE in #P"SPARSER:BIO;VERBS.LISP"

(define-category acquire-cl-verb :specializes comlex-verb
     :binds
      ((FROM top)
       (FOR top))
     :realization (:verb  "acquire" :s SUBJECT :o OBJECT :from FROM :for FOR))

(define-category adapt :specializes comlex-verb
     :binds
      ((INTO top)
       (FROM top)
       (FOR top)
       (TO top))
     :realization (:verb  "adapt" :s SUBJECT :o OBJECT :into INTO :from FROM :for FOR :to TO))

(define-category addict :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "addict" :s SUBJECT :o OBJECT :to TO))

(define-category address :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "address" :etf (svo-passive) :s SUBJECT :o OBJECT :to TO))

(define-category adjust :specializes comlex-verb
     :binds
      ((FOR top)
       (TO top))
     :realization (:verb  "adjust" :s SUBJECT :o OBJECT :for FOR :to TO))

(define-category administer :specializes comlex-verb
  :binds ((to to))
  :realization (:verb  ("administer" :past-tense "administered" :past-participle "administered" :present-participle "administering")
                :s SUBJECT :o OBJECT :to to))

(define-category admire :specializes comlex-verb
     :realization (:verb  "admire" :s SUBJECT :o OBJECT))

(define-category admit :specializes comlex-verb
     :binds
      ((INTO top)
       (IN top)
       (TO top)
       (OF top))
     :realization (:verb ( "admit"  :TENSED/SINGULAR "admits" :PRESENT-PARTICIPLE "admitting" :PAST-TENSE "admitted" :PAST-PARTICIPLE "admitted")
 :s SUBJECT :o OBJECT :into INTO :in IN :to TO :of OF))

(define-category adopt :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "adopt" :s SUBJECT :o OBJECT :for FOR))

(define-category advertise :specializes comlex-verb
     :binds
      ((AT top)
       (FOR top))
     :realization (:verb  "advertise" :s SUBJECT :o OBJECT :at AT :for FOR))

(define-category advise :specializes comlex-verb
     :binds
      ((REGARDING top)
       (IN top)
       (ABOUT top)
       (OF top)
       (ON top)
       (AGAINST top))
     :realization (:verb  "advise" :etf (svo-passive) :s SUBJECT :o OBJECT :regarding REGARDING :in IN :about ABOUT :of OF :on ON :against AGAINST))

(define-category advocate :specializes comlex-verb
     :realization (:verb  "advocate" :s SUBJECT :o OBJECT))

(define-category affiliate :specializes comlex-verb
     :binds
      ((TO top)
       (WITH top))
     :realization (:verb  "affiliate" :s SUBJECT :o OBJECT :to TO :with WITH))

(define-category affirm :specializes comlex-verb
     :realization (:verb  "affirm" :s SUBJECT :o OBJECT))

(define-category afflict :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "afflict" :s SUBJECT :o OBJECT :with WITH))

(define-category afford :specializes comlex-verb
     :realization (:verb  "afford" :s SUBJECT :o OBJECT))

;;; found existing category AGE in #P"SPARSER:TIME;AGE.LISP"

(define-category age-cl-verb :specializes comlex-verb
     :realization (:verb  "age" :s SUBJECT :o OBJECT))

;;; found existing category AGGREGATE in #P"SPARSER:KINDS;THINGS.LISP"

(define-category aggregate-cl-verb :specializes comlex-verb
     :binds
      ((TO top)
       (WITH top))
     :realization (:verb  "aggregate" :s SUBJECT :o OBJECT :to TO :with WITH))

(define-category agree :specializes comlex-verb
     :binds
      ((AMONG top)
       (BETWEEN top)
       (OVER top)
       (WITH top)
       (ABOUT top)
       (TO top)
       (ON top)
       (UPON top))
  :realization (:verb
                ( "agree"  :TENSED/SINGULAR "agrees" :PRESENT-PARTICIPLE "agreeing" :PAST-PARTICIPLE "agreed" :PAST-TENSE "agreed")
                :noun "agreement"
                :s SUBJECT :o OBJECT :among AMONG
                :between BETWEEN :over OVER :with WITH :about ABOUT :to TO :on ON :upon UPON))

(define-category aid :specializes comlex-verb
     :binds
      ((IN top)
       (WITH top))
     :realization (:verb  "aid" :s SUBJECT :o OBJECT :in IN :with WITH))

#+ignore
(define-category aim :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((OVER top)
       (FOR top)
       (BEFORE top)
       (AT top)
       (ABOVE top)
       (NEAR top)
       (BESIDE top)
       (|NEXT TO| top)
       (UNDER top))
     :realization (:verb  "aim" :s SUBJECT :o OBJECT :over OVER :for FOR :before BEFORE :at AT :above ABOVE :near NEAR :beside BESIDE :|NEXT TO| |NEXT TO| :under UNDER))

(define-category alarm :specializes comlex-verb
     :realization (:verb  "alarm" :s SUBJECT :o OBJECT))

(define-category alert :specializes comlex-verb
     :binds
      ((OF top)
       (TO top))
     :realization (:verb  "alert" :s SUBJECT :o OBJECT :of OF :to TO))

(define-category align :specializes comlex-verb
     :binds
      ((AGAINST top)
       (|IN FAVOR OF| top)
       (WITH top))
     :realization (:verb  "align" :s SUBJECT :o OBJECT :against AGAINST :|IN FAVOR OF| |IN FAVOR OF| :with WITH))

(define-category allay :specializes comlex-verb
     :realization (:verb  "allay" :s SUBJECT :o OBJECT))

(define-category allege :specializes comlex-verb
     :realization (:verb  "allege" :s SUBJECT :o OBJECT))

(define-category alleviate :specializes comlex-verb
     :realization (:verb  "alleviate" :s SUBJECT :o OBJECT))

(define-category allocate :specializes comlex-verb
     :binds
      ((AMONGST top)
       (AMONG top)
       (FOR top)
       (TO top))
     :realization (:verb  "allocate" :s SUBJECT :o OBJECT :amongst AMONGST :among AMONG :for FOR :to TO))

(define-category alternate :specializes comlex-verb
     :binds
      ((BETWEEN top)
       (WITH top))
     :realization (:verb  "alternate" :s SUBJECT :o OBJECT :between BETWEEN :with WITH))

(define-category amaze :specializes comlex-verb
     :realization (:verb  "amaze" :s SUBJECT :o OBJECT))

(define-category ameliorate :specializes comlex-verb
     :realization (:verb  "ameliorate" :s SUBJECT :o OBJECT))

;;; found existing category AMOUNT in #P"SPARSER:AMOUNTS;OBJECT.LISP"

(define-category amount-cl-verb :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "amount" :s SUBJECT :to TO))

(define-category anger :specializes comlex-verb
     :realization (:verb  "anger" :s SUBJECT :o OBJECT))

(define-category angle :specializes comlex-verb
     :binds
      ((AT top)
       (FOR top)
       (TO top)
       (TOWARDS top)
       (TOWARD top))
     :realization (:verb  "angle" :s SUBJECT :o OBJECT :at AT :for FOR :to TO :towards TOWARDS :toward TOWARD))

(define-category annotate :specializes comlex-verb
     :realization (:verb  "annotate" :s SUBJECT :o OBJECT))

(define-category annoy :specializes comlex-verb
     :realization (:verb  "annoy" :s SUBJECT :o OBJECT))

(define-category anticipate :specializes comlex-verb
     :binds
      ((BY top)
       (IN top)
       (ON top))
     :realization (:verb  "anticipate" :s SUBJECT :o OBJECT :by BY :in IN :on ON))

(define-category ape :specializes comlex-verb
     :realization (:verb  "ape" :s SUBJECT :o OBJECT))

(define-category appall :specializes comlex-verb
     :realization (:verb ( "appall"  :TENSED/SINGULAR "appalls" :PRESENT-PARTICIPLE "appalling" :PAST-TENSE "appalled")
 :s SUBJECT :o OBJECT))

(define-category appraise :specializes comlex-verb
     :realization (:verb  "appraise" :s SUBJECT :o OBJECT))

(define-category appreciate :specializes comlex-verb
     :binds
      ((FOR top)
       (IN top))
     :realization (:verb  "appreciate" :s SUBJECT :o OBJECT :for FOR :in IN))

(define-category apprehend :specializes comlex-verb
     :realization (:verb  "apprehend" :s SUBJECT :o OBJECT))

;;; found existing category APPROACH in #P"SPARSER:BIO;BIO-STATS.LISP"

(define-category approach-cl-verb :specializes comlex-verb
     :binds
      ((|CLOSE TO| top)
       (FROM top)
       (WITH top)
       (THROUGH top)
       (ALONG top)
       (FOR top)
       (ABOUT top)
       (ON top))
     :realization (:verb  "approach" :s SUBJECT :o OBJECT :|CLOSE TO| |CLOSE TO| :from FROM :with WITH :through THROUGH :along ALONG :for FOR :about ABOUT :on ON))

(define-category approve :specializes comlex-verb
     :binds
      ((FOR top)
       (OF top))
     :realization (:verb  "approve" :s SUBJECT :o OBJECT :for FOR :of OF))

;;; found existing category APPROXIMATE in #P"SPARSER:APPROX;OBJECT.LISP"

(define-category approximate-cl-verb :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "approximate" :s SUBJECT :o OBJECT :to TO))

(define-category argue :specializes comlex-verb
     :binds
      ((INTO top)
       (|OUT OF| top)
       (AGAINST top)
       (ABOUT top)
       (FOR top)
       (OVER top)
       (WITH top))
     :realization (:verb  "argue" :s SUBJECT :o OBJECT :into INTO :|OUT OF| |OUT OF| :against AGAINST :about ABOUT :for FOR :over OVER :with WITH))

(define-category arise :specializes comlex-verb
     :binds
      ((IN top)
       (FROM top)
       (|OUT OF| top))
     :realization (:verb ( "arise"  :TENSED/SINGULAR "arises" :PAST-TENSE "arose")
 :s SUBJECT :in IN :from FROM :|OUT OF| |OUT OF|))

(define-category arm :specializes comlex-verb
     :realization (:verb  "arm" :s SUBJECT :o OBJECT))

(define-category arouse :specializes comlex-verb
     :realization (:verb  "arouse" :s SUBJECT :o OBJECT))

(define-category arrange :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "arrange" :s SUBJECT :o OBJECT :for FOR))

#+ignore ;; made a proper definition in the verbs dossier
(define-category arrive :specializes comlex-verb
     :binds
      ((ON top)
       (FROM top)
       (AT top)
       (IN top))
     :realization (:verb  "arrive" :s SUBJECT :on ON :from FROM :at AT :in IN))

(define-category ascend :specializes comlex-verb
     :binds
      ((OVER top)
       (TO top))
     :realization (:verb  "ascend" :s SUBJECT :o OBJECT :over OVER :to TO))

(define-category ascertain :specializes comlex-verb
     :realization (:verb  "ascertain" :s SUBJECT :o OBJECT))

(define-category ascribe :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "ascribe" :s SUBJECT :o OBJECT :to TO))

(define-category assault :specializes comlex-verb
     :realization (:verb  "assault" :s SUBJECT :o OBJECT))

(define-category assert :specializes comlex-verb
     :realization (:verb  "assert" :s SUBJECT :o OBJECT))

(define-category assign :specializes comlex-verb
     :binds
      ((TO top)
       (FOR top))
     :realization (:verb  "assign" :s SUBJECT :o OBJECT :to TO :for FOR))

(define-category assist :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((ON top)
       (IN top)
       (WITH top)
       (AT top))
     :realization (:verb  "assist" :s SUBJECT :o OBJECT :on ON :in IN :with WITH :at AT))

(define-category assure :specializes comlex-verb
     :binds
      ((ON top)
       (TO top)
       (ABOUT top)
       (OF top))
     :realization (:verb  "assure" :s SUBJECT :o OBJECT :on ON :to TO :about ABOUT :of OF))

(define-category attack :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "attack" :s SUBJECT :o OBJECT :for FOR))

(define-category attain :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "attain" :s SUBJECT :o OBJECT :to TO))

(define-category attempt :specializes comlex-verb
     :realization (:verb  "attempt" :s SUBJECT :o OBJECT))

(define-category attend :specializes comlex-verb
     :binds
      ((IN top)
       (ON top)
       (UPON top)
       (TO top))
     :realization (:verb  "attend" :s SUBJECT :o OBJECT :in IN :on ON :upon UPON :to TO))

(define-category attest :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "attest" :s SUBJECT :o OBJECT :to TO))

(define-category attract :specializes comlex-verb
     :binds
      ((FROM top)
       (TOWARDS top)
       (TOWARD top)
       (TO top))
     :realization (:verb  "attract" :s SUBJECT :o OBJECT :from FROM :towards TOWARDS :toward TOWARD :to TO))

(define-category author :specializes comlex-verb
     :realization (:verb  "author" :s SUBJECT :o OBJECT))

(define-category automate :specializes comlex-verb
     :realization (:verb  "automate" :s SUBJECT :o OBJECT))

(define-category aver :specializes comlex-verb
     :realization (:verb ( "aver"  :TENSED/SINGULAR "avers" :PRESENT-PARTICIPLE "averring" :PAST-TENSE "averred")
 :s SUBJECT :o OBJECT))

(define-category average :specializes comlex-verb
     :binds
      ((TO top)
       (AT top))
     :realization (:verb  "average" :s SUBJECT :o OBJECT :to TO :at AT))

(define-category avoid :specializes comlex-verb
     :realization (:verb  "avoid" :s SUBJECT :o OBJECT))

(define-category await :specializes comlex-verb
     :realization (:verb  "await" :s SUBJECT :o OBJECT))

(define-category award :specializes comlex-verb
     :realization (:verb  "award" :s SUBJECT :o OBJECT))

;;; found existing category BACK in #P"SPARSER:DOSSIERS;DIRECTIONS.LISP"

(define-category back-cl-verb :specializes comlex-verb
     :binds
      ((TOWARD top)
       (OF top)
       (FROM top)
       (AGAINST top)
       (TO top)
       (ON top)
       (OFF top)
       (INTO top)
       (ONTO top)
       (DOWN top)
       (UP top)
       (WITH top)
       (OVER top)
       (|UP TO| top)
       (|OFF OF| top)
       (|OUT OF| top))
     :realization (:verb  "back" :s SUBJECT :o OBJECT :toward TOWARD :of OF :from FROM :against AGAINST :to TO :on ON :off OFF :into INTO :onto ONTO :down DOWN :up UP :with WITH :over OVER :|UP TO| |UP TO| :|OFF OF| |OFF OF| :|OUT OF| |OUT OF|))

(define-category backfire :specializes comlex-verb
     :realization (:verb  "backfire" :s SUBJECT))

(define-category bag :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb ( "bag"  :TENSED/SINGULAR "bags" :PRESENT-PARTICIPLE "bagging" :PAST-TENSE "bagged")
 :s SUBJECT :o OBJECT :with WITH))

(define-category balance :specializes comlex-verb
     :binds
      ((AGAINST top)
       (WITH top)
       (ON top))
     :realization (:verb  "balance" :s SUBJECT :o OBJECT :against AGAINST :with WITH :on ON))

(define-category ball :specializes comlex-verb
     :binds
      ((INTO top))
     :realization (:verb  "ball" :s SUBJECT :o OBJECT :into INTO))

(define-category ban :specializes comlex-verb
     :binds
      ((TO top)
       (FROM top))
     :realization (:verb ( "ban"  :TENSED/SINGULAR "bans" :PRESENT-PARTICIPLE "banning" :PAST-TENSE "banned")
 :s SUBJECT :o OBJECT :to TO :from FROM))

(define-category battle :specializes comlex-verb
     :binds
      ((AGAINST top)
       (FOR top)
       (WITH top))
     :realization (:verb  "battle" :s SUBJECT :o OBJECT :against AGAINST :for FOR :with WITH))

(define-category bay :specializes comlex-verb
     :realization (:verb  "bay" :s SUBJECT))

(define-category beach :specializes comlex-verb
     :realization (:verb  "beach" :s SUBJECT :o OBJECT))

(define-category bear :specializes comlex-verb
     :binds
      ((TO top)
       (UPON top)
       (ON top))
     :realization (:verb ( "bear"  :TENSED/SINGULAR "bears" :PAST-TENSE "bore")
 :s SUBJECT :o OBJECT :to TO :upon UPON :on ON))

(define-category begin :specializes comlex-verb
     :binds
      ((BY top)
       (AFTER top)
       (BEFORE top)
       (AT top)
       (IN top)
       (ON top)
       (UPON top)
       (WITH top))
     :realization (:verb ( "begin"  :TENSED/SINGULAR "begins" :PRESENT-PARTICIPLE "beginning" :PAST-TENSE "began")
 :s SUBJECT :o OBJECT :by BY :after AFTER :before BEFORE :at AT :in IN :on ON :upon UPON :with WITH))

(define-category behave :specializes comlex-verb
     :binds
      ((LIKE top))
     :realization (:verb  "behave" :s SUBJECT :like LIKE))

(define-category behoove :specializes comlex-verb
     :realization (:verb  "behoove" :s SUBJECT :o OBJECT))

(define-category being :specializes comlex-verb
     :realization (:verb  "being" :s SUBJECT))

(define-category belittle :specializes comlex-verb
     :realization (:verb  "belittle" :s SUBJECT :o OBJECT))

(define-category bell :specializes comlex-verb
     :realization (:verb  "bell" :s SUBJECT :o OBJECT))

(define-category belong :specializes comlex-verb
     :binds
      ((IN top)
       (ON top)
       (TO top)
       (WITH top))
     :realization (:verb  "belong" :s SUBJECT :in IN :on ON :to TO :with WITH))

(define-category benefit :specializes comlex-verb
     :binds
      ((THROUGH top)
       (BY top)
       (FROM top))
     :realization (:verb  "benefit" :s SUBJECT :o OBJECT :through THROUGH :by BY :from FROM))

(define-category bereave :specializes comlex-verb
     :realization (:verb  "bereave" :s SUBJECT))

(define-category bespeak :specializes comlex-verb
     :realization (:verb ( "bespeak"  :TENSED/SINGULAR "bespeaks" :PAST-TENSE "bespoke")
 :s SUBJECT :o OBJECT))

(define-category beware :specializes comlex-verb
     :binds
      ((OF top))
     :realization (:verb ( "beware"  :TENSED/SINGULAR "bewares")
 :s SUBJECT :o OBJECT :of OF))

(define-category bias :specializes comlex-verb
     :realization (:verb  "bias" :s SUBJECT :o OBJECT))

(define-category bike :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((TO top)
       (FROM top)
       (FOR top))
     :realization (:verb  "bike" :s SUBJECT :o OBJECT :to TO :from FROM :for FOR))

(define-category bill :specializes comlex-verb
     :binds
      ((FOR top)
       (BY top))
     :realization (:verb  "bill" :s SUBJECT :o OBJECT :for FOR :by BY))

(define-category bin :specializes comlex-verb
     :realization (:verb  "bin" :s SUBJECT))

(define-category bind :specializes comlex-verb
     :binds
      ((TO top)
       (WITH top))
     :realization (:verb ( "bind"  :TENSED/SINGULAR "binds" :PAST-TENSE "bound")
 :s SUBJECT :o OBJECT :to TO :with WITH))

(define-category blame :specializes comlex-verb
     :binds
      ((FOR top)
       (ON top))
     :realization (:verb  "blame" :s SUBJECT :o OBJECT :for FOR :on ON))

(define-category bleach :specializes comlex-verb
     :realization (:verb  "bleach" :s SUBJECT :o OBJECT))

(define-category blend :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "blend" :s SUBJECT :o OBJECT :with WITH))

(define-category blind :specializes comlex-verb
     :binds
      ((BY top)
       (WITH top))
     :realization (:verb  "blind" :s SUBJECT :o OBJECT :by BY :with WITH))

(define-category blunt :specializes comlex-verb
     :realization (:verb  "blunt" :s SUBJECT :o OBJECT))

(define-category blur :specializes comlex-verb
     :realization (:verb ( "blur"  :TENSED/SINGULAR "blurs" :PRESENT-PARTICIPLE "blurring" :PAST-TENSE "blurred")
 :s SUBJECT :o OBJECT))

(define-category bolster :specializes comlex-verb
     :binds
      ((IN top))
     :realization (:verb  "bolster" :s SUBJECT :o OBJECT :in IN))

(define-category bomb :specializes comlex-verb
     :realization (:verb  "bomb" :s SUBJECT :o OBJECT))

(define-category bombard :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "bombard" :s SUBJECT :o OBJECT :with WITH))

(define-category boost :specializes comlex-verb
     :binds
      ((ABOVE top)
       (INTO top))
     :realization (:verb  "boost" :s SUBJECT :o OBJECT :above ABOVE :into INTO))

(define-category bottle :specializes comlex-verb
     :binds
      ((FOR top)
       (WITH top))
     :realization (:verb  "bottle" :s SUBJECT :o OBJECT :for FOR :with WITH))

(define-category bow :specializes comlex-verb
     :binds
      ((BEFORE top)
       (TO top)
       (IN top)
       (WITH top))
     :realization (:verb  "bow" :s SUBJECT :o OBJECT :before BEFORE :to TO :in IN :with WITH))

(define-category bowl :specializes comlex-verb
     :realization (:verb  "bowl" :s SUBJECT :o OBJECT))

(define-category box :specializes comlex-verb
     :realization (:verb  "box" :s SUBJECT :o OBJECT))

(define-category brace :specializes comlex-verb
     :binds
      ((AGAINST top)
       (WITH top)
       (FOR top))
     :realization (:verb  "brace" :s SUBJECT :o OBJECT :against AGAINST :with WITH :for FOR))

(define-category bracket :specializes comlex-verb
     :binds
      ((INTO top)
       (IN top)
       (WITH top))
     :realization (:verb  "bracket" :s SUBJECT :o OBJECT :into INTO :in IN :with WITH))

(define-category brake :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "brake" :s SUBJECT :o OBJECT :for FOR))

(define-category branch :specializes comlex-verb
     :binds
      ((INTO top))
     :realization (:verb  "branch" :s SUBJECT :into INTO))

(define-category break :specializes comlex-verb
     :binds
      ((FOR top)
       (FROM top)
       (|OUT OF| top)
       (OVER top)
       (IN top)
       (WITH top)
       (INTO top)
       (TO top))
     :realization (:verb ( "break"  :TENSED/SINGULAR "breaks" :PAST-TENSE "broke")
 :s SUBJECT :o OBJECT :for FOR :from FROM :|OUT OF| |OUT OF| :over OVER :in IN :with WITH :into INTO :to TO))

(define-category bridge :specializes comlex-verb
     :binds
      ((THROUGH top)
       (WITH top))
     :realization (:verb  "bridge" :s SUBJECT :o OBJECT :through THROUGH :with WITH))

(define-category brief :specializes comlex-verb
     :binds
      ((ABOUT top)
       (ON top))
     :realization (:verb  "brief" :s SUBJECT :o OBJECT :about ABOUT :on ON))

(define-category bring :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((ON top)
       (UPON top)
       (TO top)
       (FROM top)
       (|OUT OF| top)
       (WITH top)
       (AGAINST top)
       (WITHIN top))
     :realization (:verb ( "bring"  :TENSED/SINGULAR "brings" :PAST-TENSE "brought")
 :s SUBJECT :o OBJECT :on ON :upon UPON :to TO :from FROM :|OUT OF| |OUT OF| :with WITH :against AGAINST :within WITHIN))

(define-category broadcast :specializes comlex-verb
     :binds
      ((ACROSS top)
       (AMONG top)
       (THROUGHOUT top)
       (TO top))
     :realization (:verb  "broadcast" :s SUBJECT :o OBJECT :across ACROSS :among AMONG :throughout THROUGHOUT :to TO))

(define-category brook :specializes comlex-verb
     :realization (:verb  "brook" :s SUBJECT :o OBJECT))

(define-category browse :specializes comlex-verb
     :binds
      ((AROUND top)
       (THROUGH top))
     :realization (:verb  "browse" :s SUBJECT :o OBJECT :around AROUND :through THROUGH))

(define-category bubble :specializes comlex-verb
     :binds
      ((FROM top)
       (WITH top))
     :realization (:verb  "bubble" :s SUBJECT :from FROM :with WITH))

(define-category bud :specializes comlex-verb
     :realization (:verb ( "bud"  :TENSED/SINGULAR "buds" :PRESENT-PARTICIPLE "budding" :PAST-TENSE "budded")
 :s SUBJECT :o OBJECT))

;;; found existing category BUILD in #P"SPARSER:DOSSIERS;VERBS.LISP"

(define-category build-cl-verb :specializes comlex-verb
     :binds
      ((FOR top)
       (AROUND top)
       (FROM top)
       (OF top)
       (|OUT OF| top)
       (INTO top)
       (UP top)
       (ALONG top)
       (OVER top)
       (ONTO top)
       (TO top)
       (ON top)
       (UPON top))
     :realization (:verb ( "build"  :TENSED/SINGULAR "builds" :PAST-TENSE "built")
 :s SUBJECT :o OBJECT :for FOR :around AROUND :from FROM :of OF :|OUT OF| |OUT OF| :into INTO :up UP :along ALONG :over OVER :onto ONTO :to TO :on ON :upon UPON))

(define-category bullshit :specializes comlex-verb
     :binds
      ((ABOUT top)
       (ON top)
       (WITH top))
     :realization (:verb ( "bullshit"  :TENSED/SINGULAR "bullshits" :PRESENT-PARTICIPLE "bullshitting" :PAST-TENSE "bullshitted")
 :s SUBJECT :o OBJECT :about ABOUT :on ON :with WITH))

(define-category burden :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "burden" :s SUBJECT :o OBJECT :with WITH))

(define-category burgeon :specializes comlex-verb
     :binds
      ((IN top))
     :realization (:verb  "burgeon" :s SUBJECT :in IN))

(define-category burke :specializes comlex-verb
     :binds
      ((BY top)
       (WITH top))
     :realization (:verb  "burke" :s SUBJECT :o OBJECT :by BY :with WITH))

(define-category burn :specializes comlex-verb
     :binds
      ((INTO top)
       (TO top)
       (ABOUT top)
       (FROM top)
       (FOR top)
       (WITH top))
     :realization (:verb  "burn" :s SUBJECT :o OBJECT :into INTO :to TO :about ABOUT :from FROM :for FOR :with WITH))

(define-category bus :specializes comlex-verb
     :binds
      ((FROM top)
       (|OUT OF| top)
       (FOR top))
     :realization (:verb  "bus" :s SUBJECT :o OBJECT :from FROM :|OUT OF| |OUT OF| :for FOR))

(define-category butter :specializes comlex-verb
     :realization (:verb  "butter" :s SUBJECT :o OBJECT))

(define-category button :specializes comlex-verb
     :realization (:verb  "button" :s SUBJECT :o OBJECT))

(define-category buy :specializes comlex-verb
     :binds
      ((INTO top))
     :realization (:verb ( "buy"  :TENSED/SINGULAR "buys" :PAST-TENSE "bought")
 :s SUBJECT :o OBJECT :into INTO))

(define-category bypass :specializes comlex-verb
     :binds
      ((|IN FAVOR OF| top)
       (BY top)
       (THROUGH top)
       (VIA top))
     :realization (:verb  "bypass" :s SUBJECT :o OBJECT :|IN FAVOR OF| |IN FAVOR OF| :by BY :through THROUGH :via VIA))

(define-category cable :specializes comlex-verb
     :realization (:verb  "cable" :s SUBJECT :o OBJECT))

(define-category calibrate :specializes comlex-verb
     :binds
      ((TO top)
       (ON top))
     :realization (:verb  "calibrate" :s SUBJECT :o OBJECT :to TO :on ON))

;;; found existing category CALL in #P"SPARSER:BIO;GENERAL-VERBS.LISP"

(define-category call-cl-verb :specializes comlex-verb
     :binds
      ((AT top)
       (VIA top)
       (UPON top)
       (BY top)
       (INTO top)
       (FOR top)
       (|UP TO| top)
       (ON top)
       (FROM top)
       (TO top)
       (IN top)
       (ABOUT top))
     :realization (:verb  "call" :s SUBJECT :o OBJECT :at AT :via VIA :upon UPON :by BY :into INTO :for FOR :|UP TO| |UP TO| :on ON :from FROM :to TO :in IN :about ABOUT))

(define-category calm :specializes comlex-verb
     :realization (:verb  "calm" :s SUBJECT :o OBJECT))

(define-category campaign :specializes comlex-verb
     :binds
      ((AGAINST top)
       (FOR top))
     :realization (:verb  "campaign" :s SUBJECT :o OBJECT :against AGAINST :for FOR))

;;; found existing category CAN in #P"SPARSER:SYNTAX-VG;MODALS.LISP"


(define-category cancel :specializes comlex-verb
     :realization (:verb ( "cancel"  :TENSED/SINGULAR "cancels" :PRESENT-PARTICIPLE "cancelling" :PAST-TENSE ("cancelled"
                                                                                                              "canceled"))
 :s SUBJECT :o OBJECT))

(define-category cap :specializes comlex-verb
     :binds
      ((AT top)
       (WITH top))
     :realization (:verb ( "cap"  :TENSED/SINGULAR "caps" :PRESENT-PARTICIPLE "capping" :PAST-TENSE "capped")
 :s SUBJECT :o OBJECT :at AT :with WITH))

(define-category capitalize :specializes comlex-verb
     :binds
      ((ON top)
       (AT top))
     :realization (:verb  "capitalize" :s SUBJECT :o OBJECT :on ON :at AT))

(define-category capture :specializes comlex-verb
     :binds
      ((FROM top)
       (ON top))
     :realization (:verb  "capture" :s SUBJECT :o OBJECT :from FROM :on ON))

(define-category career :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((BESIDE top))
     :realization (:verb  "career" :s SUBJECT :beside BESIDE))

(define-category cartoon :specializes comlex-verb
     :realization (:verb  "cartoon" :s SUBJECT :o OBJECT))

(define-category cash :specializes comlex-verb
     :binds
      ((ON top))
     :realization (:verb  "cash" :s SUBJECT :o OBJECT :on ON))

(define-category cast :specializes comlex-verb
     :binds
      ((THROUGH top)
       (AT top)
       (FOR top)
       (IN top)
       (INTO top)
       (|OUT OF| top)
       (TO top)
       (TOWARD top)
       (UPON top)
       (WITH top)
       (FROM top)
       (OVER top)
       (ON top))
     :realization (:verb ( "cast"  :TENSED/SINGULAR "casts" :PAST-TENSE "cast")
 :s SUBJECT :o OBJECT :through THROUGH :at AT :for FOR :in IN :into INTO :|OUT OF| |OUT OF| :to TO :toward TOWARD :upon UPON :with WITH :from FROM :over OVER :on ON))

(define-category catch :specializes comlex-verb
     :binds
      ((BEHIND top)
       (IN top)
       (INTO top)
       (ON top)
       (WITH top)
       (TO top))
     :realization (:verb ( "catch"  :TENSED/SINGULAR "catches" :PAST-TENSE ("caught" "catched"))
 :s SUBJECT :o OBJECT :behind BEHIND :in IN :into INTO :on ON :with WITH :to TO))

(define-category categorize :specializes comlex-verb
     :binds
      ((BY top))
     :realization (:verb  "categorize" :s SUBJECT :o OBJECT :by BY))

(define-category caution :specializes comlex-verb
     :binds
      ((ABOUT top)
       (AGAINST top))
     :realization (:verb  "caution" :s SUBJECT :o OBJECT :about ABOUT :against AGAINST))

(define-category cease :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "cease" :s SUBJECT :o OBJECT :from FROM))

(define-category celebrate :specializes comlex-verb
     :realization (:verb  "celebrate" :s SUBJECT :o OBJECT))

(define-category censor :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "censor" :s SUBJECT :o OBJECT :for FOR))

(define-category center :specializes comlex-verb
     :binds
      ((TO top)
       (AROUND top)
       (ON top))
     :realization (:verb  "center" :s SUBJECT :o OBJECT :to TO :around AROUND :on ON))

(define-category centre :specializes comlex-verb
     :binds
      ((TO top)
       (AROUND top)
       (ON top))
     :realization (:verb  "centre" :s SUBJECT :o OBJECT :to TO :around AROUND :on ON))

(define-category certificate :specializes comlex-verb
     :realization (:verb  "certificate" :s SUBJECT :o OBJECT))

(define-category certify :specializes comlex-verb
     :binds
      ((ABOUT top)
       (FOR top)
       (OF top)
       (TO top))
     :realization (:verb  "certify" :s SUBJECT :o OBJECT :about ABOUT :for FOR :of OF :to TO))

(define-category chain :specializes comlex-verb
     :binds
      ((WITH top)
       (TO top))
     :realization (:verb  "chain" :s SUBJECT :o OBJECT :with WITH :to TO))

(define-category chair :specializes comlex-verb
     :binds
      ((THROUGH top))
     :realization (:verb  "chair" :s SUBJECT :o OBJECT :through THROUGH))

(define-category channel :specializes comlex-verb
     :binds
      ((INTO top)
       (THROUGH top))
     :realization (:verb ( "channel"  :TENSED/SINGULAR "channels" :PRESENT-PARTICIPLE ("channelling"
                                                                                       "channeling") :PAST-TENSE ("channelled"
                                                                                                                  "channeled"))
 :s SUBJECT :o OBJECT :into INTO :through THROUGH))

(define-category charge :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((TO top)
       (ALONG top)
       (UP top)
       (WITH top)
       (AGAINST top)
       (ON top)
       (FOR top)
       (AT top))
     :realization (:verb  "charge" :s SUBJECT :o OBJECT :to TO :along ALONG :up UP :with WITH :against AGAINST :on ON :for FOR :at AT))

(define-category chase :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((AFTER top)
       (FOR top)
       (UNDER top))
     :realization (:verb  "chase" :s SUBJECT :o OBJECT :after AFTER :for FOR :under UNDER))

(define-category chat :specializes comlex-verb
     :binds
      ((ABOUT top)
       (WITH top))
     :realization (:verb ( "chat"  :TENSED/SINGULAR "chats" :PRESENT-PARTICIPLE "chatting" :PAST-TENSE "chatted")
 :s SUBJECT :about ABOUT :with WITH))

(define-category check :specializes comlex-verb
     :binds
      ((AGAINST top)
       (FOR top)
       (THROUGH top)
       (WITH top)
       (INTO top)
       (|OUT OF| top)
       (ON top))
     :realization (:verb  "check" :s SUBJECT :o OBJECT :against AGAINST :for FOR :through THROUGH :with WITH :into INTO :|OUT OF| |OUT OF| :on ON))

(define-category checker :specializes comlex-verb
     :realization (:verb  "checker" :s SUBJECT :o OBJECT))

(define-category cheer :specializes comlex-verb
     :realization (:verb  "cheer" :s SUBJECT :o OBJECT))

(define-category cherish :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "cherish" :s SUBJECT :o OBJECT :for FOR))

(define-category chew :specializes comlex-verb
     :binds
      ((ON top))
     :realization (:verb  "chew" :s SUBJECT :o OBJECT :on ON))

(define-category choose :specializes comlex-verb
     :binds
      ((ABOVE top)
       (FOR top)
       (FROM top))
     :realization (:verb ( "choose"  :TENSED/SINGULAR "chooses" :PAST-TENSE "chose")
 :s SUBJECT :o OBJECT :above ABOVE :for FOR :from FROM))

(define-category circle :specializes comlex-verb
     :binds
      ((TO top)
       (OVER top))
     :realization (:verb  "circle" :s SUBJECT :o OBJECT :to TO :over OVER))

(define-category circulate :specializes comlex-verb
     :binds
      ((TO top)
       (FROM top)
       (AROUND top)
       (THROUGHOUT top)
       (THROUGH top))
     :realization (:verb  "circulate" :s SUBJECT :o OBJECT :to TO :from FROM :around AROUND :throughout THROUGHOUT :through THROUGH))

(define-category cite :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "cite" :s SUBJECT :o OBJECT :for FOR))

(define-category claim :specializes comlex-verb
     :realization (:verb  "claim" :s SUBJECT :o OBJECT))

(define-category clam :specializes comlex-verb
     :realization (:verb ( "clam"  :TENSED/SINGULAR "clams" :PRESENT-PARTICIPLE "clamming" :PAST-TENSE "clammed")
 :s SUBJECT :o OBJECT))

(define-category clarify :specializes comlex-verb
     :realization (:verb  "clarify" :s SUBJECT :o OBJECT))

(define-category class :specializes comlex-verb
     :binds
      ((BY top))
     :realization (:verb  "class" :s SUBJECT :o OBJECT :by BY))

(define-category classify :specializes comlex-verb
     :binds
      ((|ACCORDING TO| top)
       (BY top)
       (ON top))
     :realization (:verb  "classify" :s SUBJECT :o OBJECT :|ACCORDING TO| |ACCORDING TO| :by BY :on ON))

(define-category clean :specializes comlex-verb
     :binds
      ((OF top)
       (AFTER top))
     :realization (:verb  "clean" :s SUBJECT :o OBJECT :of OF :after AFTER))

(define-category cleanse :specializes comlex-verb
     :binds
      ((FROM top)
       (OF top))
     :realization (:verb  "cleanse" :s SUBJECT :o OBJECT :from FROM :of OF))

;;; found existing category CLEAR in #P"SPARSER:DOSSIERS;MODIFIERS.LISP"

(define-category clear-cl-verb :specializes comlex-verb
     :binds
      ((OFF top)
       (|OUT OF| top)
       (|OFF OF| top)
       (ABOUT top)
       (FOR top)
       (FROM top)
       (OF top))
     :realization (:verb  "clear" :s SUBJECT :o OBJECT :off OFF :|OUT OF| |OUT OF| :|OFF OF| |OFF OF| :about ABOUT :for FOR :from FROM :of OF))

(define-category click :specializes comlex-verb
     :realization (:verb  "click" :s SUBJECT :o OBJECT))

(define-category clip :specializes comlex-verb
     :binds
      ((IN top)
       (FROM top)
       (|OUT OF| top)
       (ON top)
       (TO top)
       (OFF top))
     :realization (:verb ( "clip"  :TENSED/SINGULAR "clips" :PRESENT-PARTICIPLE "clipping" :PAST-TENSE "clipped")
 :s SUBJECT :o OBJECT :in IN :from FROM :|OUT OF| |OUT OF| :on ON :to TO :off OFF))

;;; found existing category CLOSE in #P"SPARSER:BIO;TERMS-TO-MOVE.LISP"

(define-category close-cl-verb :specializes comlex-verb
     :binds
      ((BY top)
       (AGAINST top)
       (BEHIND top)
       (IN top)
       (TO top)
       (AT top)
       (OVER top)
       (WITH top)
       (ON top))
  :realization (:verb  "close" :s SUBJECT :o OBJECT :by BY :against AGAINST :behind BEHIND :in IN :to TO :at AT :over OVER :with WITH :on ON
                :noun "closure"
                :of object)
  )

(define-category clot :specializes comlex-verb
     :binds
      ((AROUND top))
     :realization (:verb ( "clot"  :TENSED/SINGULAR "clots" :PRESENT-PARTICIPLE "clotting" :PAST-TENSE "clotted")
 :s SUBJECT :o OBJECT :around AROUND))

(define-category cloud :specializes comlex-verb
     :binds
      ((IN top)
       (WITH top))
     :realization (:verb  "cloud" :s SUBJECT :o OBJECT :in IN :with WITH))

(define-category club :specializes comlex-verb
     :binds
      ((TO top)
       (ON top))
     :realization (:verb ( "club"  :TENSED/SINGULAR "clubs" :PRESENT-PARTICIPLE "clubbing" :PAST-TENSE "clubbed")
 :s SUBJECT :o OBJECT :to TO :on ON))

(define-category coach :specializes comlex-verb
     :binds
      ((TO top)
       (UNDER top))
     :realization (:verb  "coach" :s SUBJECT :o OBJECT :to TO :under UNDER))

(define-category coat :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "coat" :s SUBJECT :o OBJECT :with WITH))

(define-category codify :specializes comlex-verb
     :realization (:verb  "codify" :s SUBJECT :o OBJECT))

(define-category cohabit :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "cohabit" :s SUBJECT :o OBJECT :with WITH))

(define-category cohere :specializes comlex-verb
     :binds
      ((IN top)
       (WITH top))
     :realization (:verb  "cohere" :s SUBJECT :in IN :with WITH))

(define-category coin :specializes comlex-verb
     :binds
      ((INTO top))
     :realization (:verb  "coin" :s SUBJECT :o OBJECT :into INTO))

(define-category coincide :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "coincide" :s SUBJECT :with WITH))

(define-category coke :specializes comlex-verb
     :realization (:verb  "coke" :s SUBJECT :o OBJECT))

(define-category collaborate :specializes comlex-verb
     :binds
      ((IN top)
       (ON top)
       (WITH top))
     :realization (:verb  "collaborate" :s SUBJECT :in IN :on ON :with WITH))

(define-category collapse :specializes comlex-verb
     :binds
      ((TO top)
       (AGAINST top)
       (IN top)
       (INTO top))
     :realization (:verb  "collapse" :s SUBJECT :o OBJECT :to TO :against AGAINST :in IN :into INTO))

(define-category collar :specializes comlex-verb
     :realization (:verb  "collar" :s SUBJECT :o OBJECT))

(define-category collect :specializes comlex-verb
     :binds
      ((TOWARD top)
       (FOR top)
       (THROUGH top)
       (INTO top)
       (IN top)
       (AROUND top)
       (FROM top)
       (ON top))
     :realization (:verb  "collect" :s SUBJECT :o OBJECT :toward TOWARD :for FOR :through THROUGH :into INTO :in IN :around AROUND :from FROM :on ON))

(define-category comb :specializes comlex-verb
     :binds
      ((TO top)
       (THROUGH top))
     :realization (:verb  "comb" :s SUBJECT :o OBJECT :to TO :through THROUGH))

(define-category combat :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "combat" :s SUBJECT :o OBJECT :with WITH))

(define-category combine :specializes comlex-verb
     :binds
      ((IN top)
       (INTO top)
       (WITH top))
     :realization (:verb  "combine" :s SUBJECT :o OBJECT :in IN :into INTO :with WITH))

(define-category come :specializes comlex-verb
     :realization (:verb ( "come"  :TENSED/SINGULAR "comes" :PAST-TENSE "came")
 :s SUBJECT))

(define-category comfort :specializes comlex-verb
     :realization (:verb  "comfort" :s SUBJECT :o OBJECT))

(define-category commence :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "commence" :s SUBJECT :with WITH))

(define-category comment :specializes comlex-verb
     :binds
      ((TO top)
       (ABOUT top)
       (ON top)
       (UPON top))
     :realization (:verb  "comment" :s SUBJECT :o OBJECT :to TO :about ABOUT :on ON :upon UPON))

(define-category commission :specializes comlex-verb
     :realization (:verb  "commission" :s SUBJECT :o OBJECT))

(define-category commit :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb ( "commit"  :TENSED/SINGULAR "commits" :PRESENT-PARTICIPLE "committing" :PAST-TENSE "committed")
 :s SUBJECT :o OBJECT :to TO))

(define-category communicate :specializes comlex-verb
     :binds
      ((OVER top)
       (ON top)
       (ABOUT top)
       (WITH top)
       (TO top))
     :realization (:verb  "communicate" :s SUBJECT :o OBJECT :over OVER :on ON :about ABOUT :with WITH :to TO))

(define-category commute :specializes comlex-verb
     :binds
      ((BETWEEN top)
       (FROM top)
       (TO top)
       (INTO top))
     :realization (:verb  "commute" :s SUBJECT :o OBJECT :between BETWEEN :from FROM :to TO :into INTO))

(define-category compass :specializes comlex-verb
     :realization (:verb  "compass" :s SUBJECT :o OBJECT))

(define-category compel :specializes comlex-verb
     :realization (:verb ( "compel"  :TENSED/SINGULAR "compels" :PRESENT-PARTICIPLE "compelling" :PAST-TENSE "compelled")
 :s SUBJECT :o OBJECT))

(define-category compete :specializes comlex-verb
     :binds
      ((ON top)
       (IN top)
       (AGAINST top)
       (FOR top)
       (WITH top))
     :realization (:verb  "compete" :s SUBJECT :on ON :in IN :against AGAINST :for FOR :with WITH))

(define-category complement :specializes comlex-verb
     :realization (:verb  "complement" :s SUBJECT :o OBJECT))

;;; found existing category COMPLETE in #P"SPARSER:DOSSIERS;MODIFIERS.LISP"

(define-category complete-cl-verb :specializes comlex-verb
     :realization (:verb  "complete" :s SUBJECT :o OBJECT))

(define-category complicate :specializes comlex-verb
  :realization (:verb  "complicate" :s SUBJECT :o OBJECT))

(define-category comply :specializes comlex-verb
  :binds ((rule))
  :realization (:verb  "comply"
                :noun "compliance"
                :s SUBJECT :o OBJECT
                       :with rule))

(define-category comport :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "comport" :s SUBJECT :o OBJECT :with WITH))

(define-category compound :specializes comlex-verb
     :binds
      ((WITH top)
       (INTO top))
     :realization (:verb  "compound" :s SUBJECT :o OBJECT :with WITH :into INTO))

(define-category comprehend :specializes comlex-verb
     :realization (:verb  "comprehend" :s SUBJECT :o OBJECT))

(define-category comprise :specializes comlex-verb
     :binds
      ((OF top))
     :realization (:verb  "comprise" :s SUBJECT :o OBJECT :of OF))

(define-category compute :specializes comlex-verb
     :binds
      ((|ACCORDING TO| top)
       (FROM top)
       (ON top))
     :realization (:verb  "compute" :s SUBJECT :o OBJECT :|ACCORDING TO| |ACCORDING TO| :from FROM :on ON))

(define-category con :specializes comlex-verb
     :binds
      ((INTO top)
       (FROM top)
       (|OUT OF| top))
     :realization (:verb ( "con"  :TENSED/SINGULAR "cons" :PRESENT-PARTICIPLE "conning" :PAST-TENSE "conned")
 :s SUBJECT :o OBJECT :into INTO :from FROM :|OUT OF| |OUT OF|))

(define-category conceal :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "conceal" :s SUBJECT :o OBJECT :from FROM))

(define-category conceive :specializes comlex-verb
     :binds
      ((OF top))
     :realization (:verb  "conceive" :s SUBJECT :o OBJECT :of OF))

(define-category concentrate :specializes comlex-verb
     :binds
      ((FROM top)
       (TO top)
       (IN top)
       (ON top))
     :realization (:verb  "concentrate" :s SUBJECT :o OBJECT :from FROM :to TO :in IN :on ON))

(define-category concert :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "concert" :s SUBJECT :o OBJECT :with WITH))

(define-category conclude :specializes comlex-verb
     :binds
      ((BY top)
       (WITH top))
     :realization (:verb  "conclude" :s SUBJECT :o OBJECT :by BY :with WITH))

(define-category concur :specializes comlex-verb
     :binds
      ((IN top)
       (WITH top))
     :realization (:verb ( "concur"  :TENSED/SINGULAR "concurs" :PRESENT-PARTICIPLE "concurring" :PAST-TENSE "concurred")
 :s SUBJECT :in IN :with WITH))

(define-category condense :specializes comlex-verb
     :binds
      ((INTO top)
       (TO top))
     :realization (:verb  "condense" :s SUBJECT :o OBJECT :into INTO :to TO))

(define-category condition :specializes comlex-verb
     :realization (:verb  "condition" :s SUBJECT :o OBJECT))

(define-category conflict :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "conflict" :s SUBJECT :with WITH))

(define-category conform :specializes comlex-verb
     :binds
      ((WITH top)
       (TO top))
     :realization (:verb  "conform" :s SUBJECT :with WITH :to TO))

(define-category confront :specializes comlex-verb
     :binds
      ((ABOUT top)
       (WITH top))
     :realization (:verb  "confront" :s SUBJECT :o OBJECT :about ABOUT :with WITH))

(define-category confuse :specializes comlex-verb
     :binds
      ((FOR top)
       (WITH top))
     :realization (:verb  "confuse" :s SUBJECT :o OBJECT :for FOR :with WITH))

(define-category congregate :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "congregate" :s SUBJECT :o OBJECT :with WITH))

(define-category conjecture :specializes comlex-verb
     :realization (:verb  "conjecture" :s SUBJECT :o OBJECT))

(define-category connect :specializes comlex-verb
     :binds
      ((WITH top)
       (TO top))
     :realization (:verb  "connect" :s SUBJECT :o OBJECT :with WITH :to TO))

(define-category connote :specializes comlex-verb
     :realization (:verb  "connote" :s SUBJECT :o OBJECT))

(define-category conquer :specializes comlex-verb
     :realization (:verb  "conquer" :s SUBJECT :o OBJECT))

(define-category consent :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "consent" :s SUBJECT :to TO))

(define-category consist :specializes comlex-verb
     :binds
      ((OF top)
       (IN top))
     :realization (:verb  "consist" :s SUBJECT :of OF :in IN))

(define-category conspire :specializes comlex-verb
     :binds
      ((AGAINST top)
       (WITH top))
     :realization (:verb  "conspire" :s SUBJECT :against AGAINST :with WITH))

(define-category constrain :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "constrain" :s SUBJECT :o OBJECT :to TO))

(define-category constrict :specializes comlex-verb
     :realization (:verb  "constrict" :s SUBJECT :o OBJECT))

(define-category construe :specializes comlex-verb
     :realization (:verb  "construe" :s SUBJECT :o OBJECT))

(define-category consult :specializes comlex-verb
     :binds
      ((FOR top)
       (ABOUT top)
       (OVER top)
       (ON top)
       (WITH top))
     :realization (:verb  "consult" :s SUBJECT :o OBJECT :for FOR :about ABOUT :over OVER :on ON :with WITH))

(define-category consume :specializes comlex-verb
     :realization (:verb  "consume" :s SUBJECT :o OBJECT))

(define-category contact :specializes comlex-verb
     :binds
      ((ABOUT top)
       (FOR top))
     :realization (:verb  "contact" :s SUBJECT :o OBJECT :about ABOUT :for FOR))

(define-category contaminate :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "contaminate" :s SUBJECT :o OBJECT :with WITH))

(define-category contemplate :specializes comlex-verb
     :binds
      ((ABOUT top))
     :realization (:verb  "contemplate" :s SUBJECT :o OBJECT :about ABOUT))

(define-category contend :specializes comlex-verb
     :binds
      ((FOR top)
       (WITH top))
     :realization (:verb  "contend" :s SUBJECT :o OBJECT :for FOR :with WITH))

(define-category contour :specializes comlex-verb
     :realization (:verb  "contour" :s SUBJECT :o OBJECT))

(define-category contradict :specializes comlex-verb
     :realization (:verb  "contradict" :s SUBJECT :o OBJECT))

(define-category converge :specializes comlex-verb
     :binds
      ((ON top)
       (TOWARDS top)
       (TOWARD top)
       (UPON top)
       (WITH top))
     :realization (:verb  "converge" :s SUBJECT :on ON :towards TOWARDS :toward TOWARD :upon UPON :with WITH))

(define-category converse :specializes comlex-verb
     :binds
      ((ABOUT top)
       (ON top)
       (WITH top))
     :realization (:verb  "converse" :s SUBJECT :about ABOUT :on ON :with WITH))

(define-category convey :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((|OFF OF| top))
     :realization (:verb  "convey" :s SUBJECT :o OBJECT :|OFF OF| |OFF OF|))

(define-category coordinate :specializes comlex-verb
     :binds
      ((ON top)
       (WITH top))
     :realization (:verb  "coordinate" :s SUBJECT :o OBJECT :on ON :with WITH))

(define-category cop :specializes comlex-verb
     :realization (:verb ( "cop"  :TENSED/SINGULAR "cops" :PRESENT-PARTICIPLE "copping" :PAST-TENSE "copped")
 :s SUBJECT :o OBJECT))

(define-category copyright :specializes comlex-verb
     :realization (:verb  "copyright" :s SUBJECT :o OBJECT))

(define-category cord :specializes comlex-verb
     :realization (:verb  "cord" :s SUBJECT :o OBJECT))

(define-category core :specializes comlex-verb
     :realization (:verb  "core" :s SUBJECT :o OBJECT))

(define-category correct :specializes comlex-verb
     :binds
      ((TO top)
       (FOR top))
     :realization (:verb  "correct" :s SUBJECT :o OBJECT :to TO :for FOR))

(define-category corroborate :specializes comlex-verb
     :realization (:verb  "corroborate" :s SUBJECT :o OBJECT))

(define-category cough :specializes comlex-verb
     :realization (:verb  "cough" :s SUBJECT :o OBJECT))

(define-category counsel :specializes comlex-verb
     :binds
      ((ABOUT top))
     :realization (:verb ( "counsel"  :TENSED/SINGULAR "counsels" :PRESENT-PARTICIPLE ("counselling"
                                                                                       "counseling") :PAST-TENSE ("counselled"
                                                                                                                  "counseled"))
 :s SUBJECT :o OBJECT :about ABOUT))

(define-category count :specializes comlex-verb
     :binds
      ((FOR top)
       (TOWARD top)
       (AGAINST top)
       (AMONG top)
       (IN top)
       (OUT top)
       (UPON top)
       (ON top)
       (FROM top)
       (TO top))
     :realization (:verb  "count" :s SUBJECT :o OBJECT :for FOR :toward TOWARD :against AGAINST :among AMONG :in IN :out OUT :upon UPON :on ON :from FROM :to TO))

(define-category counter :specializes comlex-verb
     :binds
      ((BY top)
       (WITH top))
     :realization (:verb ("counter"  :past-tense "countered" :past-participle "countered" :present-participle "countering") :s SUBJECT :o OBJECT :by BY :with WITH))

(define-category counteract :specializes comlex-verb
     :realization (:verb  "counteract" :s SUBJECT :o OBJECT))

(define-category counterbalance :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "counterbalance" :s SUBJECT :o OBJECT :with WITH))

(define-category couple :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "couple" :s SUBJECT :o OBJECT :with WITH))

(define-category course :specializes comlex-verb
     :mixins (with-p-dir)
     :realization (:verb  "course" :s SUBJECT :o OBJECT))

(define-category cox :specializes comlex-verb
     :realization (:verb  "cox" :s SUBJECT :o OBJECT))

(define-category craft :specializes comlex-verb
     :binds
      ((FROM top)
       (|OUT OF| top))
     :realization (:verb  "craft" :s SUBJECT :o OBJECT :from FROM :|OUT OF| |OUT OF|))

(define-category crash :specializes comlex-verb
     :binds
      ((ONTO top)
       (AGAINST top)
       (INTO top)
       (THROUGH top))
     :realization (:verb  "crash" :s SUBJECT :o OBJECT :onto ONTO :against AGAINST :into INTO :through THROUGH))

(define-category crease :specializes comlex-verb
     :realization (:verb  "crease" :s SUBJECT :o OBJECT))

(define-category crew :specializes comlex-verb
     :realization (:verb  "crew" :s SUBJECT :o OBJECT))

(define-category cripple :specializes comlex-verb
     :realization (:verb  "cripple" :s SUBJECT :o OBJECT))

(define-category criticize :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "criticize" :s SUBJECT :o OBJECT :for FOR))

(define-category cross :specializes comlex-verb
     :binds
      ((AGAINST top)
       (OFF top)
       (WITH top)
       (AT top)
       (BY top)
       (FROM top)
       (INTO top)
       (THROUGH top)
       (TO top)
       (OVER top))
     :realization (:verb  "cross" :s SUBJECT :o OBJECT :against AGAINST :off OFF :with WITH :at AT :by BY :from FROM :into INTO :through THROUGH :to TO :over OVER))

(define-category cruise :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((AT top)
       (|OFF OF| top))
     :realization (:verb  "cruise" :s SUBJECT :o OBJECT :at AT :|OFF OF| |OFF OF|))

(define-category crush :specializes comlex-verb
     :binds
      ((BENEATH top)
       (INTO top))
     :realization (:verb  "crush" :s SUBJECT :o OBJECT :beneath BENEATH :into INTO))

(define-category crystallize :specializes comlex-verb
     :realization (:verb  "crystallize" :s SUBJECT :o OBJECT))

(define-category cultivate :specializes comlex-verb
     :realization (:verb  "cultivate" :s SUBJECT :o OBJECT))

(define-category curtail :specializes comlex-verb
     :realization (:verb  "curtail" :s SUBJECT :o OBJECT))

(define-category curve :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((|IN FAVOR OF| top)
       (|OFF OF| top))
     :realization (:verb  "curve" :s SUBJECT :o OBJECT :|IN FAVOR OF| |IN FAVOR OF| :|OFF OF| |OFF OF|))

(define-category cut :specializes comlex-verb
     :binds
      ((ON top)
       (ACROSS top)
       (AROUND top)
       (THROUGH top)
       (AT top)
       (FROM top)
       (INTO top)
       (OFF top)
       (IN top)
       (|OUT OF| top)
       (TO top))
     :realization (:verb ( "cut"  :TENSED/SINGULAR "cuts" :PRESENT-PARTICIPLE "cutting" :PAST-TENSE "cut")
 :s SUBJECT :o OBJECT :on ON :across ACROSS :around AROUND :through THROUGH :at AT :from FROM :into INTO :off OFF :in IN :|OUT OF| |OUT OF| :to TO))

(define-category dare :specializes comlex-verb
     :realization (:verb  "dare" :s SUBJECT :o OBJECT))

;;; found existing category DASH in #P"SPARSER:CONTEXT-RULES;MARKER-GLIFS.LISP"

(define-category dash-cl-verb :specializes comlex-verb
     :binds
      ((AGAINST top)
       (ON top))
     :realization (:verb  "dash" :s SUBJECT :o OBJECT :against AGAINST :on ON))

(define-category dawn :specializes comlex-verb
     :binds
      ((ON top)
       (UPON top))
     :realization (:verb  "dawn" :s SUBJECT :on ON :upon UPON))

(define-category daydream :specializes comlex-verb
     :binds
      ((ABOUT top))
     :realization (:verb  "daydream" :s SUBJECT :o OBJECT :about ABOUT))

(define-category deal :specializes comlex-verb
     :binds
      ((IN top)
       (WITH top)
       (TO top)
       (AMONG top)
       (AROUND top)
       (ACROSS top))
     :realization (:verb ( "deal"  :TENSED/SINGULAR "deals" :PAST-TENSE "dealt" :PAST-PARTICIPLE "dealt" :present-participle "dealing")
 :s SUBJECT :o OBJECT :in IN :with WITH :to TO :among AMONG :around AROUND :across ACROSS))

(define-category debate :specializes comlex-verb
     :binds
      ((ON top)
       (ABOUT top)
       (WITH top))
     :realization (:verb  "debate" :s SUBJECT :o OBJECT :on ON :about ABOUT :with WITH))

(define-category debug :specializes comlex-verb
     :realization (:verb ( "debug"  :TENSED/SINGULAR "debugs" :PRESENT-PARTICIPLE "debugging" :PAST-TENSE "debugged")
 :s SUBJECT :o OBJECT))

(define-category debunk :specializes comlex-verb
     :binds
      ((ABOUT top)
       (OF top))
     :realization (:verb  "debunk" :s SUBJECT :o OBJECT :about ABOUT :of OF))

(define-category decay :specializes comlex-verb
     :binds
      ((INTO top))
     :realization (:verb  "decay" :s SUBJECT :into INTO))

(define-category decelerate :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "decelerate" :s SUBJECT :to TO))

(define-category decide :specializes comlex-verb
     :realization (:verb  "decide" :s SUBJECT))

(define-category declare :specializes comlex-verb
     :realization (:verb  "declare" :s SUBJECT :o OBJECT))

(define-category decline :specializes comlex-verb
     :realization (:verb  "decline" :s SUBJECT :o OBJECT))

(define-category decompose :specializes comlex-verb
     :realization (:verb  "decompose" :s SUBJECT))

(define-category decree :specializes comlex-verb
     :realization (:verb ( "decree"  :TENSED/SINGULAR "decrees" :PRESENT-PARTICIPLE "decreeing")
 :s SUBJECT :o OBJECT))

(define-category decry :specializes comlex-verb
     :realization (:verb  "decry" :s SUBJECT :o OBJECT))

(define-category dedicate :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "dedicate" :s SUBJECT :o OBJECT :to TO))

(define-category deem :specializes comlex-verb
     :realization (:verb  "deem" :s SUBJECT :o OBJECT))

(define-category deepen :specializes comlex-verb
     :realization (:verb  "deepen" :s SUBJECT :o OBJECT))

(define-category default :specializes comlex-verb
     :binds
      ((ON top))
     :realization (:verb  "default" :s SUBJECT :o OBJECT :on ON))

;;; found existing category DEFECT in #P"SPARSER:BIO;TERMS.LISP"

(define-category defect-cl-verb :specializes comlex-verb
     :binds
      ((ACROSS top)
       (FROM top)
       (TO top))
     :realization (:verb  "defect" :s SUBJECT :across ACROSS :from FROM :to TO))

(define-category defend :specializes comlex-verb
     :binds
      ((FROM top)
       (TO top)
       (AGAINST top))
     :realization (:verb  "defend" :s SUBJECT :o OBJECT :from FROM :to TO :against AGAINST))

(define-category defer :specializes comlex-verb
     :binds
      ((BEFORE top)
       (PENDING top)
       (TILL top)
       (TO top))
     :realization (:verb ( "defer"  :TENSED/SINGULAR "defers" :PRESENT-PARTICIPLE "deferring" :PAST-TENSE "deferred")
 :s SUBJECT :o OBJECT :before BEFORE :pending PENDING :till TILL :to TO))

(define-category define :specializes comlex-verb
     :binds
      ((AGAINST top)
       (FOR top)
       (IN top)
       (INTO top)
       (ON top)
       (OVER top)
       (AROUND top)
       (BY top)
       (AS as))
  :realization (:verb  "define" :s SUBJECT :o OBJECT :against AGAINST :for FOR :in IN :into INTO :on ON :over OVER :around AROUND :by BY
                       :as as))

(define-category deflect :specializes comlex-verb
     :binds
      ((FROM top)
       (OFF top))
     :realization (:verb  "deflect" :s SUBJECT :o OBJECT :from FROM :off OFF))

(define-category defy :specializes comlex-verb
     :realization (:verb  "defy" :s SUBJECT :o OBJECT))

;;; found existing category DELAY in #P"SPARSER:BIO;GENERAL-VERBS.LISP"

(define-category delay-cl-verb :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "delay" :s SUBJECT :o OBJECT :from FROM))

(define-category deliberate :specializes comlex-verb
     :binds
      ((ABOUT top)
       (FOR top)
       (OVER top)
       (ON top))
     :realization (:verb  "deliberate" :s SUBJECT :about ABOUT :for FOR :over OVER :on ON))

(define-category delineate :specializes comlex-verb
     :binds
      ((AROUND top)
       (ACROSS top)
       (INSIDE top)
       (OF top))
     :realization (:verb  "delineate" :s SUBJECT :o OBJECT :around AROUND :across ACROSS :inside INSIDE :of OF))

(define-category deliver :specializes comlex-verb
     :binds
      ((FROM top)
       (OF top)
       (INTO top)
       (TO top))
     :realization (:verb  "deliver" :s SUBJECT :o OBJECT :from FROM :of OF :into INTO :to TO))

(define-category delude :specializes comlex-verb
     :binds
      ((INTO top))
     :realization (:verb  "delude" :s SUBJECT :o OBJECT :into INTO))

(define-category deluge :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "deluge" :s SUBJECT :o OBJECT :with WITH))

(define-category demand :specializes comlex-verb
     :binds
      ((FOR top)
       (FROM top)
       (OF top)
       (|OUT OF| top))
     :realization (:verb  "demand" :s SUBJECT :o OBJECT :for FOR :from FROM :of OF :|OUT OF| |OUT OF|))

(define-category denote :specializes comlex-verb
     :realization (:verb  "denote" :s SUBJECT :o OBJECT))

(define-category deny :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "deny" :s SUBJECT :o OBJECT :to TO))

(define-category depart :specializes comlex-verb
     :binds
      ((AT top)
       (FROM top)
       (FOR top))
     :realization (:verb  "depart" :s SUBJECT :at AT :from FROM :for FOR))

(define-category depict :specializes comlex-verb
     :realization (:verb  "depict" :s SUBJECT :o OBJECT))

(define-category deploy :specializes comlex-verb
     :binds
      ((ACROSS top)
       (AROUND top)
       (FROM top)
       (ON top)
       (TO top))
     :realization (:verb  "deploy" :s SUBJECT :o OBJECT :across ACROSS :around AROUND :from FROM :on ON :to TO))

(define-category depress :specializes comlex-verb
     :realization (:verb  "depress" :s SUBJECT :o OBJECT))

(define-category deprive :specializes comlex-verb
     :binds
      ((OF top))
     :realization (:verb  "deprive" :s SUBJECT :o OBJECT :of OF))

(define-category deserve :specializes comlex-verb
     :realization (:verb  "deserve" :s SUBJECT :o OBJECT))

(define-category design :specializes comlex-verb
     :binds
      ((AROUND top)
       (FOR top))
     :realization (:verb  "design" :s SUBJECT :o OBJECT :around AROUND :for FOR))

(define-category designate :specializes comlex-verb
     :binds
      ((BY top)
       (FOR top))
     :realization (:verb  "designate" :s SUBJECT :o OBJECT :by BY :for FOR))

(define-category desire :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "desire" :s SUBJECT :o OBJECT :for FOR))

(define-category despair :specializes comlex-verb
     :binds
      ((OF top))
     :realization (:verb  "despair" :s SUBJECT :of OF))

(define-category destine :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  ("destine"   :past-tense "destined" :past-participle "destined") :s SUBJECT :o OBJECT :for FOR))

(define-category destroy :specializes comlex-verb
     :realization (:verb  "destroy" :s SUBJECT :o OBJECT))

(define-category devalue :specializes comlex-verb
     :realization (:verb  "devalue" :s SUBJECT :o OBJECT))

(define-category devastate :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "devastate" :s SUBJECT :o OBJECT :with WITH))

(define-category deviate :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "deviate" :s SUBJECT :o OBJECT :from FROM))

(define-category devise :specializes comlex-verb
     :binds
      ((FOR top)
       (OF top))
     :realization (:verb  "devise" :s SUBJECT :o OBJECT :for FOR :of OF))

(define-category devote :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "devote" :s SUBJECT :o OBJECT :to TO))

(define-category diagnose :specializes comlex-verb
     :realization (:verb  "diagnose" :s SUBJECT :o OBJECT))

(define-category dial :specializes comlex-verb
     :binds
      ((AT top))
     :realization (:verb ( "dial"  :TENSED/SINGULAR "dials" :PRESENT-PARTICIPLE ("dialling"
                                                                                 "dialing") :PAST-TENSE ("dialled"
                                                                                                         "dialed"))
 :s SUBJECT :o OBJECT :at AT))

(define-category differ :specializes comlex-verb
     :binds
      ((TO top)
       (BY top)
       (WITH top)
       (FROM top)
       (IN top)
       (ON top)
       (ABOUT top))
     :realization (:verb  ("differ"  :past-tense "differed" :past-participle "differed" :present-participle "differing") :s SUBJECT :to TO :by BY :with WITH :from FROM :in IN :on ON :about ABOUT))

(define-category differentiate :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "differentiate" :s SUBJECT :o OBJECT :from FROM))

(define-category dilute :specializes comlex-verb
     :binds
      ((TO top)
       (WITH top))
     :realization (:verb  "dilute" :s SUBJECT :o OBJECT :to TO :with WITH))

(define-category dip :specializes comlex-verb
     :binds
      ((INTO top)
       (IN top))
     :realization (:verb ( "dip"  :TENSED/SINGULAR "dips" :PRESENT-PARTICIPLE "dipping" :PAST-TENSE "dipped")
 :s SUBJECT :o OBJECT :into INTO :in IN))

(define-category disable :specializes comlex-verb
     :realization (:verb  "disable" :s SUBJECT :o OBJECT))

(define-category disagree :specializes comlex-verb
     :binds
      ((UPON top)
       (OVER top)
       (ABOUT top)
       (ON top)
       (WITH top))
     :realization (:verb ( "disagree"  :TENSED/SINGULAR "disagrees" :PRESENT-PARTICIPLE "disagreeing")
 :s SUBJECT :o OBJECT :upon UPON :over OVER :about ABOUT :on ON :with WITH))

(define-category disappear :specializes comlex-verb
     :binds
      ((DOWN top)
       (INTO top)
       (OFF top)
       (OVER top)
       (THROUGH top)
       (FROM top)
       (|OUT OF| top))
     :realization (:verb  "disappear" :s SUBJECT :o OBJECT :down DOWN :into INTO :off OFF :over OVER :through THROUGH :from FROM :|OUT OF| |OUT OF|))

(define-category disapprove :specializes comlex-verb
     :binds
      ((OF top))
     :realization (:verb  "disapprove" :s SUBJECT :of OF))

(define-category discard :specializes comlex-verb
     :realization (:verb  "discard" :s SUBJECT :o OBJECT))

(define-category discern :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "discern" :s SUBJECT :o OBJECT :from FROM))

(define-category discharge :specializes comlex-verb
     :binds
      ((FROM top)
       (TO top))
     :realization (:verb  "discharge" :s SUBJECT :o OBJECT :from FROM :to TO))

(define-category discipline :specializes comlex-verb
     :realization (:verb  "discipline" :s SUBJECT :o OBJECT))

(define-category disclose :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "disclose" :s SUBJECT :o OBJECT :to TO))

(define-category disconnect :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "disconnect" :s SUBJECT :o OBJECT :from FROM))

(define-category discontent :specializes comlex-verb
     :realization (:verb  "discontent" :s SUBJECT :o OBJECT))

(define-category discount :specializes comlex-verb
     :binds
      ((FROM top)
       (BY top)
       (TO top))
     :realization (:verb  "discount" :s SUBJECT :o OBJECT :from FROM :by BY :to TO))

(define-category discourage :specializes comlex-verb
     :binds
      ((BY top)
       (FROM top))
     :realization (:verb  "discourage" :s SUBJECT :o OBJECT :by BY :from FROM))

(define-category discourse :specializes comlex-verb
     :binds
      ((ABOUT top)
       (ON top)
       (WITH top))
     :realization (:verb  "discourse" :s SUBJECT :about ABOUT :on ON :with WITH))

(define-category discover :specializes comlex-verb
     :binds
      ((IN top))
     :realization (:verb  "discover" :s SUBJECT :o OBJECT :in IN))

(define-category discredit :specializes comlex-verb
     :binds
      ((BY top)
       (WITH top))
     :realization (:verb  "discredit" :s SUBJECT :o OBJECT :by BY :with WITH))

(define-category discriminate :specializes comlex-verb
     :binds
      ((BETWEEN top)
       (AMONG top)
       (AGAINST top))
     :realization (:verb  "discriminate" :s SUBJECT :between BETWEEN :among AMONG :against AGAINST))

(define-category disengage :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "disengage" :s SUBJECT :o OBJECT :from FROM))

(define-category disentangle :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "disentangle" :s SUBJECT :o OBJECT :from FROM))

(define-category disgust :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "disgust" :s SUBJECT :o OBJECT :with WITH))

(define-category disinfect :specializes comlex-verb
     :realization (:verb  "disinfect" :s SUBJECT :o OBJECT))

(define-category dislike :specializes comlex-verb
     :realization (:verb  "dislike" :s SUBJECT :o OBJECT))

(define-category dislocate :specializes comlex-verb
     :realization (:verb  "dislocate" :s SUBJECT :o OBJECT))

(define-category dismiss :specializes comlex-verb
     :binds
      ((ON top)
       (AT top)
       (FROM top))
     :realization (:verb  "dismiss" :s SUBJECT :o OBJECT :on ON :at AT :from FROM))

(define-category dispense :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "dispense" :s SUBJECT :o OBJECT :with WITH))

;;; found existing category DISPLAY in #P"SPARSER:BIO;GENERAL-VERBS.LISP"

(define-category display-cl-verb :specializes comlex-verb
     :binds
      ((ATOP top)
       (ALONG top)
       (AT top)
       (BEHIND top)
       (IN top)
       (|OUT OF| top)
       (TO top)
       (TOWARD top)
       (ON top))
     :realization (:verb  "display" :s SUBJECT :o OBJECT :atop ATOP :along ALONG :at AT :behind BEHIND :in IN :|OUT OF| |OUT OF| :to TO :toward TOWARD :on ON))

(define-category dispose :specializes comlex-verb
     :binds
      ((FOR top)
       (TOWARD top)
       (WITH top)
       (OF top))
     :realization (:verb  "dispose" :s SUBJECT :o OBJECT :for FOR :toward TOWARD :with WITH :of OF))

(define-category disprove :specializes comlex-verb
     :realization (:verb  "disprove" :s SUBJECT :o OBJECT))

(define-category dispute :specializes comlex-verb
     :binds
      ((ABOUT top)
       (ON top)
       (WITH top))
     :realization (:verb  "dispute" :s SUBJECT :o OBJECT :about ABOUT :on ON :with WITH))

(define-category disregard :specializes comlex-verb
     :realization (:verb  "disregard" :s SUBJECT :o OBJECT))

(define-category dissatisfy :specializes comlex-verb
     :realization (:verb  "dissatisfy" :s SUBJECT :o OBJECT))

(define-category disseminate :specializes comlex-verb
     :binds
      ((AROUND top)
       (AMONGST top)
       (ABOUT top)
       (THROUGHOUT top))
     :realization (:verb  "disseminate" :s SUBJECT :o OBJECT :around AROUND :amongst AMONGST :about ABOUT :throughout THROUGHOUT))

(define-category dissent :specializes comlex-verb
     :realization (:verb  "dissent" :s SUBJECT))

(define-category distance :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "distance" :s SUBJECT :o OBJECT :from FROM))

(define-category distort :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "distort" :s SUBJECT :o OBJECT :with WITH))

(define-category distract :specializes comlex-verb
     :binds
      ((FROM top)
       (WITH top))
     :realization (:verb  "distract" :s SUBJECT :o OBJECT :from FROM :with WITH))

(define-category distress :specializes comlex-verb
     :realization (:verb  "distress" :s SUBJECT :o OBJECT))

(define-category distribute :specializes comlex-verb
     :binds
      ((ON top)
       (BETWEEN top)
       (AMONG top)
       (IN top)
       (THROUGH top)
       (AROUND top)
       (AMONGST top)
       (TO top)
       (THROUGHOUT top)
       (OVER top))
     :realization (:verb  "distribute" :s SUBJECT :o OBJECT :on ON :between BETWEEN :among AMONG :in IN :through THROUGH :around AROUND :amongst AMONGST :to TO :throughout THROUGHOUT :over OVER))

(define-category distrust :specializes comlex-verb
     :realization (:verb  "distrust" :s SUBJECT :o OBJECT))

(define-category disturb :specializes comlex-verb
     :realization (:verb  "disturb" :s SUBJECT :o OBJECT))

(define-category diverge :specializes comlex-verb
     :binds
      ((FROM top)
       (ON top))
     :realization (:verb  "diverge" :s SUBJECT :o OBJECT :from FROM :on ON))

(define-category diversify :specializes comlex-verb
     :binds
      ((INTO top))
     :realization (:verb  "diversify" :s SUBJECT :o OBJECT :into INTO))

(define-category divine :specializes comlex-verb
     :realization (:verb  "divine" :s SUBJECT :o OBJECT))

(define-category divorce :specializes comlex-verb
     :binds
      ((FROM top)
       (FOR top))
     :realization (:verb  "divorce" :s SUBJECT :o OBJECT :from FROM :for FOR))

(define-category document :specializes comlex-verb
     :realization (:verb  "document" :s SUBJECT :o OBJECT))

(define-category dodge :specializes comlex-verb
     :realization (:verb  "dodge" :s SUBJECT :o OBJECT))

(define-category donate :specializes comlex-verb
     :binds
      ((FOR top)
       (TO top))
     :realization (:verb  "donate" :s SUBJECT :o OBJECT :for FOR :to TO))

(define-category dose :specializes comlex-verb
     :realization (:verb  "dose" :s SUBJECT :o OBJECT))

(define-category doubt :specializes comlex-verb
     :realization (:verb  "doubt" :s SUBJECT :o OBJECT))

(define-category dovetail :specializes comlex-verb
     :binds
      ((INTO top))
     :realization (:verb  "dovetail" :s SUBJECT :o OBJECT :into INTO))

;;; found existing category DOWN in #P"SPARSER:DOSSIERS;DIRECTIONS.LISP"

(define-category down-cl-verb :specializes comlex-verb
     :realization (:verb  "down" :s SUBJECT :o OBJECT))

(define-category downplay :specializes comlex-verb
     :realization (:verb  "downplay" :s SUBJECT :o OBJECT))

(define-category draft :specializes comlex-verb
     :binds
      ((BEHIND top)
       (FOR top)
       (TO top))
     :realization (:verb  "draft" :s SUBJECT :o OBJECT :behind BEHIND :for FOR :to TO))

(define-category draw :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((INTO top)
       (AGAINST top)
       (FOR top)
       (WITH top)
       (NEAR top)
       (ON top)
       (UPON top)
       (FROM top)
       (TO top)
       (AT top))
     :realization (:verb ( "draw"  :TENSED/SINGULAR "draws" :PAST-TENSE "drew")
 :s SUBJECT :o OBJECT :into INTO :against AGAINST :for FOR :with WITH :near NEAR :on ON :upon UPON :from FROM :to TO :at AT))

(define-category dread :specializes comlex-verb
     :realization (:verb  "dread" :s SUBJECT :o OBJECT))

(define-category dream :specializes comlex-verb
     :binds
      ((OF top)
       (ABOUT top))
     :realization (:verb  "dream" :s SUBJECT :o OBJECT :of OF :about ABOUT))

(define-category drink :specializes comlex-verb
     :binds
      ((FROM top)
       (|OUT OF| top)
       (TO top))
     :realization (:verb ( "drink"  :TENSED/SINGULAR "drinks" :PAST-TENSE "drank")
 :s SUBJECT :o OBJECT :from FROM :|OUT OF| |OUT OF| :to TO))

(define-category dry :specializes comlex-verb
     :binds
      ((IN top)
       (UNDER top))
     :realization (:verb  "dry" :s SUBJECT :o OBJECT :in IN :under UNDER))

(define-category dun :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb ( "dun"  :TENSED/SINGULAR "duns" :PRESENT-PARTICIPLE "dunning" :PAST-TENSE "dunned")
 :s SUBJECT :o OBJECT :for FOR))

(define-category dupe :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "dupe" :s SUBJECT :o OBJECT :for FOR))

(define-category dwarf :specializes comlex-verb
     :realization (:verb  "dwarf" :s SUBJECT :o OBJECT))

(define-category dye :specializes comlex-verb
     :realization (:verb  "dye" :s SUBJECT :o OBJECT))

(define-category earth :specializes comlex-verb
     :realization (:verb  "earth" :s SUBJECT :o OBJECT))

(define-category ease :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((FROM top)
       (TO top)
       (UP top)
       (OF top)
       (ON top)
       (|OFF OF| top))
     :realization (:verb  "ease" :s SUBJECT :o OBJECT :from FROM :to TO :up UP :of OF :on ON :|OFF OF| |OFF OF|))

(define-category eat :specializes comlex-verb
     :binds
      ((OFF top)
       (|OUT OF| top)
       (FROM top)
       (AT top))
     :realization (:verb ( "eat"  :TENSED/SINGULAR "eats" :PAST-TENSE "ate")
 :s SUBJECT :o OBJECT :off OFF :|OUT OF| |OUT OF| :from FROM :at AT))

(define-category echo :specializes comlex-verb
     :binds
      ((WITH top)
       (ACROSS top)
       (INTO top)
       (FROM top)
       (AT top)
       (TO top))
     :realization (:verb  "echo" :s SUBJECT :o OBJECT :with WITH :across ACROSS :into INTO :from FROM :at AT :to TO))

(define-category educate :specializes comlex-verb
     :binds
      ((FOR top)
       (IN top)
       (ON top)
       (ABOUT top))
     :realization (:verb  "educate" :s SUBJECT :o OBJECT :for FOR :in IN :on ON :about ABOUT))

(define-category egg :specializes comlex-verb
     :realization (:verb  "egg" :s SUBJECT :o OBJECT))

(define-category elapse :specializes comlex-verb
     :realization (:verb  "elapse" :s SUBJECT))

(define-category elbow :specializes comlex-verb
     :binds
      ((AROUND top)
       (ACROSS top)
       (INTO top)
       (BETWEEN top)
       (THROUGH top)
       (|OUT OF| top)
       (|NEXT TO| top)
       (TOWARDS top)
       (TOWARD top))
     :realization (:verb  "elbow" :s SUBJECT :o OBJECT :around AROUND :across ACROSS :into INTO :between BETWEEN :through THROUGH :|OUT OF| |OUT OF| :|NEXT TO| |NEXT TO| :towards TOWARDS :toward TOWARD))

(define-category elect :specializes comlex-verb
     :binds
      ((BY top)
       (ON top)
       (FOR top)
       (TO top))
     :realization (:verb  "elect" :s SUBJECT :o OBJECT :by BY :on ON :for FOR :to TO))

;;; found existing category ELICIT in #P"SPARSER:BIO;GENERAL-VERBS.LISP"

(define-category elicit-cl-verb :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "elicit" :s SUBJECT :o OBJECT :from FROM))

(define-category elope :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "elope" :s SUBJECT :with WITH))

(define-category emanate :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "emanate" :s SUBJECT :o OBJECT :from FROM))

(define-category embed :specializes comlex-verb
     :binds
      ((INTO top)
       (IN top))
     :realization (:verb ( "embed"  :TENSED/SINGULAR "embeds" :PRESENT-PARTICIPLE "embedding" :PAST-TENSE "embedded")
 :s SUBJECT :o OBJECT :into INTO :in IN))

(define-category embrace :specializes comlex-verb
     :realization (:verb  "embrace" :s SUBJECT :o OBJECT))

(define-category emerge :specializes comlex-verb
     :binds
      ((FROM top)
       (INTO top)
       (|OUT OF| top)
       (WITH top))
     :realization (:verb  "emerge" :s SUBJECT :o OBJECT :from FROM :into INTO :|OUT OF| |OUT OF| :with WITH))

(define-category emphasize :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "emphasize" :s SUBJECT :o OBJECT :to TO))

(define-category employ :specializes comlex-verb
     :binds
      ((AT top)
       (IN top)
       (FOR top))
     :realization (:verb  "employ" :s SUBJECT :o OBJECT :at AT :in IN :for FOR))

(define-category empty :specializes comlex-verb
     :binds
      ((OF top)
       (FROM top)
       (INTO top)
       (TO top)
       (ONTO top))
     :realization (:verb  "empty" :s SUBJECT :o OBJECT :of OF :from FROM :into INTO :to TO :onto ONTO))

(define-category enact :specializes comlex-verb
     :binds
      ((FOR top)
       (INTO top))
     :realization (:verb  "enact" :s SUBJECT :o OBJECT :for FOR :into INTO))

(define-category encompass :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "encompass" :s SUBJECT :o OBJECT :with WITH))

(define-category encounter :specializes comlex-verb
     :realization (:verb  "encounter" :s SUBJECT :o OBJECT))

(define-category encourage :specializes comlex-verb
     :binds
      ((AT top)
       (IN top)
       (WITH top))
     :realization (:verb  "encourage" :s SUBJECT :o OBJECT :at AT :in IN :with WITH))

;;; found existing category END in #P"SPARSER:KINDS;PROCESSES.LISP"

(define-category end-cl-verb :specializes comlex-verb
     :binds
      ((BY top)
       (AT top)
       (WITHOUT top)
       (IN top)
       (ON top)
       (WITH top))
     :realization (:verb  "end" :s SUBJECT :o OBJECT :by BY :at AT :without WITHOUT :in IN :on ON :with WITH))

(define-category endanger :specializes comlex-verb
     :realization (:verb  "endanger" :s SUBJECT :o OBJECT))

(define-category endeavor :specializes comlex-verb
     :realization (:verb  "endeavor" :s SUBJECT))

(define-category endorse :specializes comlex-verb
     :binds
      ((IN top)
       (FOR top)
       (ON top))
     :realization (:verb  "endorse" :s SUBJECT :o OBJECT :in IN :for FOR :on ON))

(define-category endure :specializes comlex-verb
     :realization (:verb  "endure" :s SUBJECT :o OBJECT))

(define-category enforce :specializes comlex-verb
     :realization (:verb  "enforce" :s SUBJECT :o OBJECT))

(define-category engage :specializes comlex-verb
     :binds
      ((IN top)
       (TO top)
       (WITH top))
     :realization (:verb  "engage" :noun "engagement" :s SUBJECT :o OBJECT :in IN :to TO :with WITH))

(define-category engineer :specializes comlex-verb
     :binds
      ((IN top)
       (THROUGH top))
     :realization (:verb  "engineer" :s SUBJECT :o OBJECT :in IN :through THROUGH))

(define-category enjoy :specializes comlex-verb
     :realization (:verb  "enjoy" :s SUBJECT :o OBJECT))

(define-category enlighten :specializes comlex-verb
     :binds
      ((ABOUT top))
     :realization (:verb  "enlighten" :s SUBJECT :o OBJECT :about ABOUT))

(define-category enrich :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "enrich" :s SUBJECT :o OBJECT :with WITH))

(define-category enrol :specializes comlex-verb
     :binds
      ((IN top)
       (FOR top)
       (WITH top))
     :realization (:verb ( "enrol"  :TENSED/SINGULAR "enrols" :PRESENT-PARTICIPLE "enrolling" :PAST-TENSE "enrolled")
 :s SUBJECT :o OBJECT :in IN :for FOR :with WITH))

(define-category ensure :specializes comlex-verb
     :realization (:verb  "ensure" :s SUBJECT :o OBJECT))

(define-category entail :specializes comlex-verb
     :binds
      ((ON top)
       (UPON top))
     :realization (:verb  "entail" :s SUBJECT :o OBJECT :on ON :upon UPON))

(define-category entertain :specializes comlex-verb
     :binds
      ((AGAINST top)
       (TOWARDS top)
       (TOWARD top)
       (TO top)
       (WITH top))
     :realization (:verb  "entertain" :s SUBJECT :o OBJECT :against AGAINST :towards TOWARDS :toward TOWARD :to TO :with WITH))

(define-category entitle :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "entitle" :s SUBJECT :o OBJECT :to TO))

(define-category entrance :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "entrance" :s SUBJECT :with WITH))

(define-category envision :specializes comlex-verb
     :realization (:verb  "envision" :s SUBJECT :o OBJECT))

(define-category equal :specializes comlex-verb
     :binds
      ((IN top))
     :realization (:verb ( "equal"  :TENSED/SINGULAR "equals" :PRESENT-PARTICIPLE ("equalling"
                                                                                   "equaling") :PAST-TENSE ("equalled"
                                                                                                            "equaled"))
 :s SUBJECT :o OBJECT :in IN))

(define-category equalize :specializes comlex-verb
     :realization (:verb  "equalize" :s SUBJECT :o OBJECT))

(define-category equip :specializes comlex-verb
     :binds
      ((FOR top)
       (WITH top))
     :realization (:verb ( "equip"  :TENSED/SINGULAR "equips" :PRESENT-PARTICIPLE "equipping" :PAST-TENSE "equipped")
 :s SUBJECT :o OBJECT :for FOR :with WITH))

(define-category erase :specializes comlex-verb
     :binds
      ((ABOUT top)
       (FROM top))
     :realization (:verb  "erase" :s SUBJECT :o OBJECT :about ABOUT :from FROM))

(define-category err :specializes comlex-verb
     :binds
      ((BY top)
       (IN top)
       (ON top))
     :realization (:verb  "err" :s SUBJECT :by BY :in IN :on ON))

(define-category escalate :specializes comlex-verb
     :realization (:verb  "escalate" :s SUBJECT :o OBJECT))

(define-category esteem :specializes comlex-verb
     :realization (:verb  "esteem" :s SUBJECT :o OBJECT))

(define-category estimate :specializes comlex-verb
     :binds
      ((FROM top)
       (AT top))
     :realization (:verb  "estimate" :s SUBJECT :o OBJECT :from FROM :at AT))

(define-category evacuate :specializes comlex-verb
     :binds
      ((FROM top)
       (OF top)
       (TO top))
     :realization (:verb  "evacuate" :s SUBJECT :o OBJECT :from FROM :of OF :to TO))

(define-category evade :specializes comlex-verb
     :realization (:verb  "evade" :s SUBJECT :o OBJECT))

(define-category evaluate :specializes comlex-verb
     :binds
      ((IN top)
       (ON top)
       (TO top)
       (AT top)
       (AGAINST top))
     :realization (:verb  "evaluate" :s SUBJECT :o OBJECT :in IN :on ON :to TO :at AT :against AGAINST))

;;; found existing category EVIDENCE in #P"SPARSER:SCORE-STATS;EXPERIMENT-LANGUAGE.LISP"

(define-category evoke :specializes comlex-verb
     :binds
      ((FROM top)
       (IN top))
     :realization (:verb  "evoke" :s SUBJECT :o OBJECT :from FROM :in IN))

(define-category evolve :specializes comlex-verb
     :binds
      ((|OUT OF| top)
       (INTO top)
       (FROM top)
       (TO top))
     :realization (:verb  "evolve" :s SUBJECT :o OBJECT :|OUT OF| |OUT OF| :into INTO :from FROM :to TO))

(define-category exacerbate :specializes comlex-verb
     :realization (:verb  "exacerbate" :s SUBJECT :o OBJECT))

(define-category exact :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "exact" :s SUBJECT :o OBJECT :from FROM))

(define-category exaggerate :specializes comlex-verb
     :binds
      ((ABOUT top)
       (INTO top))
     :realization (:verb  "exaggerate" :s SUBJECT :o OBJECT :about ABOUT :into INTO))

(define-category exasperate :specializes comlex-verb
     :realization (:verb  "exasperate" :s SUBJECT :o OBJECT))

(define-category exceed :specializes comlex-verb
     :binds
      ((BY top)
       (IN top))
     :realization (:verb  "exceed" :s SUBJECT :o OBJECT :by BY :in IN))

(define-category excel :specializes comlex-verb
     :binds
      ((BEYOND top)
       (OVER top)
       (AT top)
       (IN top))
     :realization (:verb ( "excel"  :TENSED/SINGULAR "excels" :PRESENT-PARTICIPLE "excelling" :PAST-TENSE "excelled")
 :s SUBJECT :o OBJECT :beyond BEYOND :over OVER :at AT :in IN))

(define-category excite :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "excite" :s SUBJECT :o OBJECT :with WITH))

(define-category exclude :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "exclude" :s SUBJECT :o OBJECT :from FROM))

(define-category excuse :specializes comlex-verb
     :binds
      ((FOR top)
       (FROM top))
     :realization (:verb  "excuse" :s SUBJECT :o OBJECT :for FOR :from FROM))

(define-category execute :specializes comlex-verb
     :binds
      ((FOR top)
       (AT top))
     :realization (:verb  "execute" :s SUBJECT :o OBJECT :for FOR :at AT))

(define-category exempt :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "exempt" :s SUBJECT :o OBJECT :from FROM))

(define-category exercise :specializes comlex-verb
     :binds
      ((THROUGHOUT top))
     :realization (:verb  "exercise" :s SUBJECT :o OBJECT :throughout THROUGHOUT))

(define-category exert :specializes comlex-verb
     :binds
      ((OVER top)
       (ON top)
       (UPON top))
     :realization (:verb  "exert" :s SUBJECT :o OBJECT :over OVER :on ON :upon UPON))

(define-category exhaust :specializes comlex-verb
     :binds
      ((INTO top)
       (FROM top)
       (TO top)
       (WITH top))
     :realization (:verb  "exhaust" :s SUBJECT :o OBJECT :into INTO :from FROM :to TO :with WITH))

;;; found existing category EXHIBIT in #P"SPARSER:BIO;GENERAL-VERBS.LISP"

(define-category exhibit-cl-verb :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "exhibit" :s SUBJECT :o OBJECT :to TO))

(define-category expand :specializes comlex-verb
     :binds
      ((UPON top)
       (FROM top)
       (BEYOND top)
       (ON top)
       (BY top)
       (TO top)
       (INTO top))
     :realization (:verb  "expand" :s SUBJECT :o OBJECT :upon UPON :from FROM :beyond BEYOND :on ON :by BY :to TO :into INTO))

(define-category expedite :specializes comlex-verb
     :realization (:verb  "expedite" :s SUBJECT :o OBJECT))

(define-category experience :specializes comlex-verb
     :realization (:verb  "experience" :s SUBJECT :o OBJECT))

(define-category expire :specializes comlex-verb
     :realization (:verb  "expire" :s SUBJECT :o OBJECT))

(define-category exploit :specializes comlex-verb
     :realization (:verb  "exploit" :s SUBJECT :o OBJECT))

(define-category explore :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "explore" :s SUBJECT :o OBJECT :for FOR))

(define-category expose :specializes comlex-verb
     :binds
      ((TO top))
  :realization (:verb  "expose"
                :noun "exposure"
                :s SUBJECT :o OBJECT :to TO :toward TO))

(define-category extend :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((ACROSS top)
       (BETWEEN top)
       (OVER top)
       (THROUGH top)
       (BEYOND top)
       (DOWN top)
       (INTO top)
       (FROM top)
       (TO top)
       (FOR top)
       (|OFF OF| top))
     :realization (:verb  "extend" :s SUBJECT :o OBJECT :across ACROSS :between BETWEEN :over OVER :through THROUGH :beyond BEYOND :down DOWN :into INTO :from FROM :to TO :for FOR :|OFF OF| |OFF OF|))

(define-category externalize :specializes comlex-verb
     :realization (:verb  "externalize" :s SUBJECT :o OBJECT))

(define-category extract :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "extract" :s SUBJECT :o OBJECT :from FROM))

(define-category extrapolate :specializes comlex-verb
     :binds
      ((INTO top)
       (FROM top)
       (TO top))
     :realization (:verb  "extrapolate" :s SUBJECT :o OBJECT :into INTO :from FROM :to TO))

(define-category fabricate :specializes comlex-verb
     :realization (:verb  "fabricate" :s SUBJECT :o OBJECT))

(define-category face :specializes comlex-verb
     :binds
      ((WITH top)
       (ONTO top)
       (TOWARD top)
       (AT top)
       (TO top))
     :realization (:verb  "face" :s SUBJECT :o OBJECT :with WITH :onto ONTO :toward TOWARD :at AT :to TO))

(define-category factor :specializes comlex-verb
     :binds
      ((INTO top))
     :realization (:verb  ("factor"  :past-tense "factored" :past-participle "factored" :present-participle "factoring") :s SUBJECT :o OBJECT :into INTO))

;;; found existing category FAIL in #P"SPARSER:DOSSIERS;VERBS.LISP"

(define-category fail-cl-verb :specializes comlex-verb
     :realization (:verb  "fail" :s SUBJECT :o OBJECT))

(define-category fake :specializes comlex-verb
     :realization (:verb  "fake" :s SUBJECT :o OBJECT))

;;; found existing category FALL in #P"SPARSER:BIO;GENERAL-VERBS.LISP"

(define-category fall-cl-verb :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((TO top)
       (WITH top)
       (ON top)
       (IN top)
       (AT top)
       (BEFORE top)
       (UNDER top)
       (FOR top)
       (AMONG top)
       (UPON top)
       (|OFF OF| top))
     :realization (:verb ( "fall"  :TENSED/SINGULAR "falls" :PAST-TENSE "fell")
 :s SUBJECT :o OBJECT :to TO :with WITH :on ON :in IN :at AT :before BEFORE :under UNDER :for FOR :among AMONG :upon UPON :|OFF OF| |OFF OF|))

(define-category fashion :specializes comlex-verb
     :binds
      ((FROM top)
       (IN top)
       (OF top)
       (UPON top))
     :realization (:verb  "fashion" :s SUBJECT :o OBJECT :from FROM :in IN :of OF :upon UPON))

(define-category fatigue :specializes comlex-verb
     :realization (:verb  "fatigue" :s SUBJECT :o OBJECT))

(define-category fault :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "fault" :s SUBJECT :o OBJECT :for FOR))

;;; found existing category FAVOR in #P"SPARSER:BIO;VERBS.LISP"

(define-category favor-cl-verb :specializes comlex-verb
     :binds
      ((AGAINST top)
       (OVER top))
     :realization (:verb  "favor" :s SUBJECT :o OBJECT :against AGAINST :over OVER))

(define-category fee :specializes comlex-verb
     :realization (:verb ( "fee"  :TENSED/SINGULAR "fees" :PRESENT-PARTICIPLE "feeing")
 :s SUBJECT :o OBJECT))

(define-category fence :specializes comlex-verb
     :binds
      ((IN top)
       (OFF top))
     :realization (:verb  "fence" :s SUBJECT :o OBJECT :in IN :off OFF))

(define-category field :specializes comlex-verb
     :realization (:verb  "field" :s SUBJECT :o OBJECT))

(define-category fight :specializes comlex-verb
     :binds
      ((IN top)
       (INTO top)
       (THROUGH top)
       (TO top)
       (WITH top)
       (AGAINST top)
       (FOR top)
       (ON top))
     :realization (:verb ( "fight"  :TENSED/SINGULAR "fights" :PAST-TENSE "fought")
 :s SUBJECT :o OBJECT :in IN :into INTO :through THROUGH :to TO :with WITH :against AGAINST :for FOR :on ON))

(define-category file :specializes comlex-verb
     :binds
      ((AGAINST top)
       (WITH top)
       (INTO top)
       (|OUT OF| top)
       (THROUGH top)
       (DOWN top)
       (FOR top)
       (OFF top))
     :realization (:verb  "file" :s SUBJECT :o OBJECT :against AGAINST :with WITH :into INTO :|OUT OF| |OUT OF| :through THROUGH :down DOWN :for FOR :off OFF))

(define-category filter :specializes comlex-verb
     :binds
      ((TO top)
       (ACROSS top)
       (INTO top)
       (|OUT OF| top)
       (THROUGH top))
     :realization (:verb  "filter" :s SUBJECT :o OBJECT :to TO :across ACROSS :into INTO :|OUT OF| |OUT OF| :through THROUGH))

(define-category finance :specializes comlex-verb
     :binds
      ((AT top)
       (WITH top)
       (THROUGH top))
     :realization (:verb  "finance" :s SUBJECT :o OBJECT :at AT :with WITH :through THROUGH))

;;; found existing category FIND in #P"SPARSER:DOSSIERS;VERBS.LISP"

(define-category find-cl-verb :specializes comlex-verb
     :binds
      ((ABOUT top)
       (INTO top)
       (ABOVE top)
       (ACROSS top)
       (AGAINST top)
       (ALONG top)
       (AMONG top)
       (AMONGST top)
       (AROUND top)
       (BEHIND top)
       (BELOW top)
       (BENEATH top)
       (BESIDE top)
       (BETWEEN top)
       (BEYOND top)
       (BY top)
       (IN top)
       (INSIDE top)
       (NEAR top)
       (|NEXT TO| top)
       (|OFF OF| top)
       (ON top)
       (|OUT OF| top)
       (OUTSIDE top)
       (THROUGHOUT top)
       (UNDER top)
       (UP top))
     :realization (:verb ( "find"  :TENSED/SINGULAR "finds" :PAST-TENSE "found")
 :s SUBJECT :o OBJECT :about ABOUT :into INTO :above ABOVE :across ACROSS :against AGAINST :along ALONG :among AMONG :amongst AMONGST :around AROUND :behind BEHIND :below BELOW :beneath BENEATH :beside BESIDE :between BETWEEN :beyond BEYOND :by BY :in IN :inside INSIDE :near NEAR :|NEXT TO| |NEXT TO| :|OFF OF| |OFF OF| :on ON :|OUT OF| |OUT OF| :outside OUTSIDE :throughout THROUGHOUT :under UNDER :up UP))

(define-category finger :specializes comlex-verb
     :realization (:verb  "finger" :s SUBJECT :o OBJECT))

(define-category finish :specializes comlex-verb
     :binds
      ((|AHEAD OF| top)
       (AT top)
       (BEFORE top)
       (BELOW top)
       (IN top)
       (WITH top))
     :realization (:verb  "finish" :s SUBJECT :o OBJECT :|AHEAD OF| |AHEAD OF| :at AT :before BEFORE :below BELOW :in IN :with WITH))

(define-category fix :specializes comlex-verb
     :binds
      ((AT top)
       (IN top)
       (TO top)
       (ON top)
       (WITH top))
     :realization (:verb  "fix" :s SUBJECT :o OBJECT :at AT :in IN :to TO :on ON :with WITH))

(define-category flag :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb ( "flag"  :TENSED/SINGULAR "flags" :PRESENT-PARTICIPLE "flagging" :PAST-TENSE "flagged")
 :s SUBJECT :o OBJECT :for FOR))

(define-category flame :specializes comlex-verb
     :binds
      ((IN top)
       (UP top))
     :realization (:verb  "flame" :s SUBJECT :o OBJECT :in IN :up UP))

(define-category flash :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((AT top)
       (WITH top)
       (AGAINST top))
     :realization (:verb  "flash" :s SUBJECT :o OBJECT :at AT :with WITH :against AGAINST))

(define-category flatten :specializes comlex-verb
     :binds
      ((ON top)
       (AGAINST top)
       (INTO top)
       (TO top))
     :realization (:verb  "flatten" :s SUBJECT :o OBJECT :on ON :against AGAINST :into INTO :to TO))

(define-category flavour :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "flavour" :s SUBJECT :o OBJECT :with WITH))

(define-category flee :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((ACROSS top)
       (TO top)
       (FOR top))
     :realization (:verb ( "flee"  :TENSED/SINGULAR "flees" :PRESENT-PARTICIPLE "fleeing" :PAST-TENSE "fled")
 :s SUBJECT :o OBJECT :across ACROSS :to TO :for FOR))

(define-category flock :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "flock" :s SUBJECT :o OBJECT :to TO))

(define-category flood :specializes comlex-verb
     :binds
      ((WITH top)
       (INTO top)
       (IN top)
       (THROUGH top))
     :realization (:verb  "flood" :s SUBJECT :o OBJECT :with WITH :into INTO :in IN :through THROUGH))

(define-category floor :specializes comlex-verb
     :realization (:verb  "floor" :s SUBJECT :o OBJECT))

(define-category flour :specializes comlex-verb
     :realization (:verb  "flour" :s SUBJECT :o OBJECT))

(define-category flourish :specializes comlex-verb
     :realization (:verb  "flourish" :s SUBJECT))

(define-category flow :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((FROM top)
       (INTO top)
       (THROUGH top)
       (TO top)
       (TOWARDS top)
       (WITH top))
     :realization (:verb  "flow" :s SUBJECT :from FROM :into INTO :through THROUGH :to TO :towards TOWARDS :with WITH))

(define-category fly :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((BEHIND top)
       (FROM top)
       (TO top)
       (IN top)
       (|CLOSE TO| top)
       (ABOVE top)
       (AT top)
       (UNDER top))
     :realization (:verb ( "fly"  :TENSED/SINGULAR "flies" :PAST-TENSE "flew")
 :s SUBJECT :o OBJECT :behind BEHIND :from FROM :to TO :in IN :|CLOSE TO| |CLOSE TO| :above ABOVE :at AT :under UNDER))

(define-category fold :specializes comlex-verb
     :binds
      ((IN top)
       (INTO top)
       (ON top))
     :realization (:verb  "fold" :s SUBJECT :o OBJECT :in IN :into INTO :on ON))

(define-category follow :specializes comlex-verb
     :binds
      ((THROUGH top)
       (TO top)
       (WITH top)
       (ON top))
     :realization (:verb  "follow" :s SUBJECT :o OBJECT :through THROUGH :to TO :with WITH :on ON))

(define-category foot :specializes comlex-verb
     :realization (:verb  "foot" :s SUBJECT :o OBJECT))

(define-category force :specializes comlex-verb
     :binds
      ((FROM top)
       (BEHIND top)
       (BEYOND top)
       (IN top)
       (INTO top)
       (THROUGH top)
       (TO top)
       (TOWARD top)
       (|OUT OF| top)
       (ONTO top)
       (ON top)
       (UPON top))
     :realization (:verb  "force" :s SUBJECT :o OBJECT :from FROM :behind BEHIND :beyond BEYOND :in IN :into INTO :through THROUGH :to TO :toward TOWARD :|OUT OF| |OUT OF| :onto ONTO :on ON :upon UPON))


(define-category forego :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb ( "forego"  :TENSED/SINGULAR "foregos" :PRESENT-PARTICIPLE "forgoing" :PAST-TENSE "forwent")
 :s SUBJECT :o OBJECT :for FOR))

(define-category forgo :specializes comlex-verb
     :realization (:verb ( "forgo"  :TENSED/SINGULAR "forgos" :PAST-TENSE "forwent")
 :s SUBJECT :o OBJECT))

(define-category formalize :specializes comlex-verb
     :realization (:verb  "formalize" :s SUBJECT :o OBJECT))

(define-category format :specializes comlex-verb
     :realization (:verb  "format" :s SUBJECT))

(define-category formulate :specializes comlex-verb
     :realization (:verb  "formulate" :s SUBJECT :o OBJECT))

(define-category foster :specializes comlex-verb
     :realization (:verb  "foster" :s SUBJECT :o OBJECT))

(define-category fox :specializes comlex-verb
     :binds
      ((INTO top))
     :realization (:verb  "fox" :s SUBJECT :o OBJECT :into INTO))

(define-category fracture :specializes comlex-verb
     :realization (:verb  "fracture" :s SUBJECT :o OBJECT))

;;; found existing category FRAME in #P"SPARSER:BIO;TERMS.LISP"

(define-category frame-cl-verb :specializes comlex-verb
     :realization (:verb  "frame" :s SUBJECT :o OBJECT))

(define-category frank :specializes comlex-verb
     :realization (:verb  "frank" :s SUBJECT :o OBJECT))

(define-category freelance :specializes comlex-verb
     :realization (:verb  "freelance" :s SUBJECT :o OBJECT))

(define-category freeze :specializes comlex-verb
     :binds
      ((AROUND top)
       (INTO top)
       (ON top)
       (AT top)
       (|OUT OF| top)
       (TO top))
     :realization (:verb ( "freeze"  :TENSED/SINGULAR "freezes" :PAST-TENSE "froze")
 :s SUBJECT :o OBJECT :around AROUND :into INTO :on ON :at AT :|OUT OF| |OUT OF| :to TO))

;;; found existing category FRONT in #P"SPARSER:DOSSIERS;DIRECTIONS.LISP"

(define-category front-cl-verb :specializes comlex-verb
     :binds
      ((FOR top)
       (ON top)
       (TOWARDS top)
       (TOWARD top))
     :realization (:verb  "front" :s SUBJECT :o OBJECT :for FOR :on ON :towards TOWARDS :toward TOWARD))


(define-category fry :specializes comlex-verb
     :binds
      ((IN top)
       (FOR top)
       (WITH top))
     :realization (:verb  "fry" :s SUBJECT :o OBJECT :in IN :for FOR :with WITH))

(define-category fuck :specializes comlex-verb
     :binds
      ((BEHIND top)
       (IN top)
       (ON top)
       (WITH top))
     :realization (:verb  "fuck" :s SUBJECT :o OBJECT :behind BEHIND :in IN :on ON :with WITH))

(define-category fuel :specializes comlex-verb
     :realization (:verb ( "fuel"  :TENSED/SINGULAR "fuels" :PRESENT-PARTICIPLE ("fuelling"
                                                                                 "fueling") :PAST-TENSE ("fuelled"
                                                                                                         "fueled"))
 :s SUBJECT :o OBJECT))

(define-category fulfil :specializes comlex-verb
     :realization (:verb ( "fulfil"  :TENSED/SINGULAR "fulfils" :PRESENT-PARTICIPLE "fulfilling" :PAST-TENSE "fulfilled")
 :s SUBJECT :o OBJECT))

(define-category fund :specializes comlex-verb
     :binds
      ((THROUGH top)
       (UNDER top))
     :realization (:verb  "fund" :s SUBJECT :o OBJECT :through THROUGH :under UNDER))

(define-category gad :specializes comlex-verb
     :realization (:verb ( "gad"  :TENSED/SINGULAR "gads" :PRESENT-PARTICIPLE "gadding" :PAST-TENSE "gadded")
 :s SUBJECT))

;;; found existing category GAIN in #P"SPARSER:BIO;BIO-METHODS.LISP"

(define-category gain-cl-verb :specializes comlex-verb
     :binds
      ((BY top)
       (TO top)
       (IN top)
       (FOR top)
       (FROM top)
       (ON top))
     :realization (:verb  "gain" :s SUBJECT :o OBJECT :by BY :to TO :in IN :for FOR :from FROM :on ON))

(define-category gamble :specializes comlex-verb
     :binds
      ((ON top)
       (WITH top))
     :realization (:verb  "gamble" :s SUBJECT :o OBJECT :on ON :with WITH))

(define-category game :specializes comlex-verb
     :realization (:verb  "game" :s SUBJECT))

(define-category garden :specializes comlex-verb
     :realization (:verb  "garden" :s SUBJECT))

(define-category gargle :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "gargle" :s SUBJECT :with WITH))

(define-category garland :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "garland" :s SUBJECT :o OBJECT :with WITH))

(define-category gather :specializes comlex-verb
     :binds
      ((AROUND top)
       (INSIDE top)
       (WITH top)
       (INTO top)
       (IN top))
  :realization
  (:verb  ("gather"  :past-tense "gathered" :past-participle "gathered" :present-participle "gathering")
   :noun ("gathering" :plural "gatherings")
   :s SUBJECT :o OBJECT :around AROUND :inside INSIDE :with WITH :into INTO :in IN))

(define-category gauge :specializes comlex-verb
     :binds
      ((BY top))
     :realization (:verb  "gauge" :s SUBJECT :o OBJECT :by BY))

(define-category gaze :specializes comlex-verb
     :binds
      ((UPON top)
       (TOWARDS top)
       (OVER top)
       (ACROSS top)
       (AT top)
       (THROUGH top)
       (OUT top)
       (ON top)
       (TOWARD top))
  :realization (:verb  "gaze" :noun "gaze"
                :s SUBJECT :upon UPON :towards TOWARDS :over OVER :across ACROSS :at AT :through THROUGH :out OUT :on ON :toward TOWARD))

(define-category gear :specializes comlex-verb
     :binds
      ((FOR top)
       (TO top)
       (TOWARDS top))
     :realization (:verb  "gear" :s SUBJECT :o OBJECT :for FOR :to TO :towards TOWARDS))

(define-category generalize :specializes comlex-verb
     :binds
      ((ABOUT top)
       (FROM top)
       (TO top))
     :realization (:verb  "generalize" :s SUBJECT :o OBJECT :about ABOUT :from FROM :to TO))

(define-category gesture :specializes comlex-verb
     :binds
      ((AT top))
     :realization (:verb  "gesture" :s SUBJECT :at AT))

(define-category gift :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "gift" :s SUBJECT :o OBJECT :with WITH))

(define-category ginger :specializes comlex-verb
     :realization (:verb  "ginger" :s SUBJECT :o OBJECT))

(define-category glance :specializes comlex-verb
     :binds
      ((OVER top)
       (AT top)
       (ACROSS top)
       (|OFF OF| top)
       (OFF top))
     :realization (:verb  "glance" :s SUBJECT :over OVER :at AT :across ACROSS :|OFF OF| |OFF OF| :off OFF))

(define-category glimmer :specializes comlex-verb
     :realization (:verb  "glimmer" :s SUBJECT))

(define-category glimpse :specializes comlex-verb
     :binds
      ((FROM top)
       (IN top)
       (|OUT OF| top))
     :realization (:verb  "glimpse" :s SUBJECT :o OBJECT :from FROM :in IN :|OUT OF| |OUT OF|))

(define-category go :specializes comlex-verb
     :realization (:verb ( "go"  :TENSED/SINGULAR "going" :PAST-TENSE "went")
 :s SUBJECT))

(define-category gong :specializes comlex-verb
     :realization (:verb  "gong" :s SUBJECT :o OBJECT))

(define-category govern :specializes comlex-verb
     :realization (:verb  "govern" :s SUBJECT :o OBJECT))

(define-category grab :specializes comlex-verb
     :binds
      ((FOR top)
       (FROM top)
       (|OUT OF| top)
       (AT top)
       (BY top))
     :realization (:verb ( "grab"  :TENSED/SINGULAR "grabs" :PRESENT-PARTICIPLE "grabbing" :PAST-TENSE "grabbed")
 :s SUBJECT :o OBJECT :for FOR :from FROM :|OUT OF| |OUT OF| :at AT :by BY))

(define-category grade :specializes comlex-verb
     :realization (:verb  "grade" :s SUBJECT :o OBJECT))

(define-category graduate :specializes comlex-verb
     :binds
      ((IN top)
       (TO top)
       (FROM top)
       (INTO top)
       (AT top)
       (WITH top))
     :realization (:verb  "graduate" :s SUBJECT :o OBJECT :in IN :to TO :from FROM :into INTO :at AT :with WITH))

(define-category grant :specializes comlex-verb
     :realization (:verb  "grant" :s SUBJECT :o OBJECT))

(define-category grasp :specializes comlex-verb
     :binds
      ((ONTO top))
     :realization (:verb  "grasp" :s SUBJECT :o OBJECT :onto ONTO))

(define-category grave :specializes comlex-verb
     :realization (:verb  "grave" :s SUBJECT))

(define-category gravitate :specializes comlex-verb
     :binds
      ((TOWARD top))
     :realization (:verb  "gravitate" :s SUBJECT :toward TOWARD))

(define-category greet :specializes comlex-verb
     :binds
      ((AT top)
       (WITH top))
  :realization (:verb  "greet"
                :noun ("greeting" :plural "greetings")
                :s SUBJECT :o OBJECT :at AT :with WITH))

(define-category grey :specializes comlex-verb
     :realization (:verb  "grey" :s SUBJECT :o OBJECT))

(define-category grind :specializes comlex-verb
     :binds
      ((AGAINST top)
       (INTO top))
     :realization (:verb ( "grind"  :TENSED/SINGULAR "grinds" :PAST-TENSE "ground")
 :s SUBJECT :o OBJECT :against AGAINST :into INTO))

;;; found existing category GROUP in #P"SPARSER:MID-LEVEL;GROUPS.LISP"

(define-category group-cl-verb :specializes comlex-verb
     :binds
      ((WITH top)
       (UNDER top))
     :realization (:verb  "group" :s SUBJECT :o OBJECT :with WITH :under UNDER))

(define-category guarantee :specializes comlex-verb
     :realization (:verb ( "guarantee"  :TENSED/SINGULAR "guarantees" :PRESENT-PARTICIPLE "guaranteeing")
 :s SUBJECT :o OBJECT))

(define-category guess :specializes comlex-verb
     :binds
      ((FROM top)
       (ABOUT top)
       (AT top))
     :realization (:verb  "guess" :s SUBJECT :o OBJECT :from FROM :about ABOUT :at AT))

(define-category guide :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((ON top))
     :realization (:verb  "guide" :s SUBJECT :o OBJECT :on ON))

(define-category gun :specializes comlex-verb
     :realization (:verb ( "gun"  :TENSED/SINGULAR "guns" :PRESENT-PARTICIPLE "gunning" :PAST-TENSE "gunned")
 :s SUBJECT :o OBJECT))

(define-category gut :specializes comlex-verb
     :realization (:verb ( "gut"  :TENSED/SINGULAR "guts" :PRESENT-PARTICIPLE "gutting" :PAST-TENSE "gutted")
 :s SUBJECT :o OBJECT))

(define-category hail :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "hail" :s SUBJECT :o OBJECT :from FROM))

(define-category halt :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "halt" :s SUBJECT :o OBJECT :from FROM))

(define-category halve :specializes comlex-verb
     :realization (:verb  "halve" :s SUBJECT :o OBJECT))

(define-category ham :specializes comlex-verb
     :realization (:verb ( "ham"  :TENSED/SINGULAR "hams" :PRESENT-PARTICIPLE "hamming" :PAST-TENSE "hammed")
 :s SUBJECT :o OBJECT))

(define-category hamper :specializes comlex-verb
     :realization (:verb  "hamper" :s SUBJECT :o OBJECT))

(define-category hand :specializes comlex-verb
     :binds
      ((FROM top)
       (TO top))
     :realization (:verb  "hand" :s SUBJECT :o OBJECT :from FROM :to TO))

(define-category handle :specializes comlex-verb
     :realization (:verb  "handle" :s SUBJECT :o OBJECT))

(define-category handshake :specializes comlex-verb
     :realization (:verb  "handshake" :s SUBJECT))

(define-category hang :specializes comlex-verb
     :binds
      ((|OUT OF| top)
       (ABOVE top)
       (OFF top)
       (ON top)
       (ONTO top)
       (OVER top)
       (UNDER top)
       (BELOW top)
       (IN top)
       (OUT top)
       (AROUND top)
       (TO top)
       (FROM top)
       (WITH top)
       (FOR top))
     :realization (:verb ( "hang"  :TENSED/SINGULAR "hangs" :PAST-TENSE ("hanged" "hung"))
 :s SUBJECT :o OBJECT :|OUT OF| |OUT OF| :above ABOVE :off OFF :on ON :onto ONTO :over OVER :under UNDER :below BELOW :in IN :out OUT :around AROUND :to TO :from FROM :with WITH :for FOR))

(define-category happen :specializes comlex-verb
     :binds
      ((BETWEEN top)
       (IN top)
       (INSIDE top)
       (ACROSS top)
       (ON top)
       (TO top)
       (UPON top))
     :realization (:verb  "happen" :s SUBJECT :between BETWEEN :in IN :inside INSIDE :across ACROSS :on ON :to TO :upon UPON))

(define-category harden :specializes comlex-verb
     :binds
      ((AGAINST top))
     :realization (:verb  "harden" :s SUBJECT :o OBJECT :against AGAINST))

(define-category harm :specializes comlex-verb
     :binds
      ((BY top)
       (WITH top))
     :realization (:verb  "harm" :s SUBJECT :o OBJECT :by BY :with WITH))

(define-category harness :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "harness" :s SUBJECT :o OBJECT :for FOR))

(define-category harry :specializes comlex-verb
     :binds
      ((AROUND top)
       (ACROSS top)
       (THROUGH top))
     :realization (:verb  "harry" :s SUBJECT :o OBJECT :around AROUND :across ACROSS :through THROUGH))

(define-category hatch :specializes comlex-verb
     :realization (:verb  "hatch" :s SUBJECT :o OBJECT))

(define-category hazard :specializes comlex-verb
     :binds
      ((ABOUT top))
     :realization (:verb  "hazard" :s SUBJECT :o OBJECT :about ABOUT))

(define-category head :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((OVER top)
       (TOWARD top)
       (IN top)
       (DOWN top)
       (TO top)
       (UP top)
       (FOR top))
     :realization (:verb  "head" :s SUBJECT :o OBJECT :over OVER :toward TOWARD :in IN :down DOWN :to TO :up UP :for FOR))

(define-category headquarter :specializes comlex-verb
     :binds
      ((AT top)
       (IN top))
     :realization (:verb  "headquarter" :s SUBJECT :o OBJECT :at AT :in IN))

(define-category heal :specializes comlex-verb
     :binds
      ((BY top)
       (WITH top))
     :realization (:verb  "heal" :s SUBJECT :o OBJECT :by BY :with WITH))

(define-category hear :specializes comlex-verb
     :binds
      ((ABOUT top)
       (FROM top)
       (OF top))
     :realization (:verb ( "hear"  :TENSED/SINGULAR "hears" :PAST-TENSE "heard")
 :s SUBJECT :o OBJECT :about ABOUT :from FROM :of OF))

(define-category heat :specializes comlex-verb
     :binds
      ((INTO top)
       (ON top)
       (OVER top)
       (TO top)
       (WITH top))
     :realization (:verb  "heat" :s SUBJECT :o OBJECT :into INTO :on ON :over OVER :to TO :with WITH))

(define-category hedge :specializes comlex-verb
     :binds
      ((ABOUT top)
       (ON top))
     :realization (:verb  "hedge" :s SUBJECT :o OBJECT :about ABOUT :on ON))

(define-category heed :specializes comlex-verb
     :realization (:verb  "heed" :s SUBJECT :o OBJECT))

(define-category heighten :specializes comlex-verb
     :realization (:verb  "heighten" :s SUBJECT :o OBJECT))

(define-category help :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((BY top)
       (OFF top)
       (AROUND top)
       (IN top)
       (|OFF OF| top)
       (WITH top))
     :realization (:verb  "help" :s SUBJECT :o OBJECT :by BY :off OFF :around AROUND :in IN :|OFF OF| |OFF OF| :with WITH))

(define-category hide :specializes comlex-verb
     :binds
      ((|OUT OF| top)
       (AMONG top)
       (AMONGST top)
       (BEHIND top)
       (BELOW top)
       (BENEATH top)
       (BESIDE top)
       (BETWEEN top)
       (INSIDE top)
       (IN top)
       (FROM top)
       (UNDER top))
     :realization (:verb ( "hide"  :TENSED/SINGULAR "hides" :PAST-TENSE "hid")
 :s SUBJECT :o OBJECT :|OUT OF| |OUT OF| :among AMONG :amongst AMONGST :behind BEHIND :below BELOW :beneath BENEATH :beside BESIDE :between BETWEEN :inside INSIDE :in IN :from FROM :under UNDER))

(define-category hijack :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "hijack" :s SUBJECT :o OBJECT :to TO))

(define-category hinder :specializes comlex-verb
     :binds
      ((FROM top)
       (IN top))
     :realization (:verb  "hinder" :s SUBJECT :o OBJECT :from FROM :in IN))

(define-category hire :specializes comlex-verb
     :binds
      ((FROM top)
       (ON top)
       (FOR top))
     :realization (:verb  "hire" :s SUBJECT :o OBJECT :from FROM :on ON :for FOR))

(define-category hit :specializes comlex-verb
     :binds
      ((TO top)
       (TOWARD top)
       (FOR top)
       (UPON top)
       (UP top)
       (ON top)
       (IN top))
     :realization (:verb ( "hit"  :TENSED/SINGULAR "hits" :PRESENT-PARTICIPLE "hitting" :PAST-TENSE "hit")
 :s SUBJECT :o OBJECT :to TO :toward TOWARD :for FOR :upon UPON :up UP :on ON :in IN))

(define-category hoard :specializes comlex-verb
     :realization (:verb  "hoard" :s SUBJECT :o OBJECT))

(define-category hoax :specializes comlex-verb
     :binds
      ((INTO top))
     :realization (:verb  "hoax" :s SUBJECT :o OBJECT :into INTO))

(define-category hold :specializes comlex-verb
     :binds
      ((ABOUT top)
       (UPON top)
       (ONTO top)
       (AGAINST top)
       (IN top)
       (ON top)
       (OVER top)
       (UNDER top)
       (WITH top)
       (TO top))
     :realization (:verb ( "hold"  :TENSED/SINGULAR "holds" :PAST-TENSE "held")
 :s SUBJECT :o OBJECT :about ABOUT :upon UPON :onto ONTO :against AGAINST :in IN :on ON :over OVER :under UNDER :with WITH :to TO))

(define-category hole :specializes comlex-verb
     :binds
      ((INSIDE top)
       (IN top)
       (FOR top))
     :realization (:verb  "hole" :s SUBJECT :o OBJECT :inside INSIDE :in IN :for FOR))

(define-category holiday :specializes comlex-verb
     :binds
      ((IN top))
     :realization (:verb  "holiday" :s SUBJECT :in IN))

(define-category honor :specializes comlex-verb
     :binds
      ((WITH top)
       (BY top)
       (FOR top))
     :realization (:verb  "honor" :s SUBJECT :o OBJECT :with WITH :by BY :for FOR))

(define-category hospitalize :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "hospitalize" :s SUBJECT :o OBJECT :for FOR))

(define-category host :specializes comlex-verb
     :realization (:verb  "host" :s SUBJECT :o OBJECT))

(define-category house :specializes comlex-verb
     :binds
      ((AMONG top)
       (INSIDE top)
       (IN top))
     :realization (:verb  "house" :s SUBJECT :o OBJECT :among AMONG :inside INSIDE :in IN))

(define-category hug :specializes comlex-verb
     :realization (:verb ( "hug"  :TENSED/SINGULAR "hugs" :PRESENT-PARTICIPLE "hugging" :PAST-TENSE "hugged")
 :s SUBJECT :o OBJECT))

(define-category hum :specializes comlex-verb
     :realization (:verb ( "hum"  :TENSED/SINGULAR "hums" :PRESENT-PARTICIPLE "humming" :PAST-TENSE "hummed")
 :s SUBJECT :o OBJECT))

(define-category humor :specializes comlex-verb
     :realization (:verb  "humor" :s SUBJECT :o OBJECT))

(define-category humour :specializes comlex-verb
     :realization (:verb  "humour" :s SUBJECT :o OBJECT))

(define-category hunch :specializes comlex-verb
     :realization (:verb  "hunch" :s SUBJECT :o OBJECT))

(define-category hunt :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "hunt" :s SUBJECT :o OBJECT :for FOR))

(define-category hurdle :specializes comlex-verb
     :realization (:verb  "hurdle" :s SUBJECT :o OBJECT))

(define-category hurt :specializes comlex-verb
     :binds
      ((BY top)
       (WITH top))
     :realization (:verb ( "hurt"  :TENSED/SINGULAR "hurts" :PAST-TENSE "hurt")
 :s SUBJECT :o OBJECT :by BY :with WITH))

(define-category ignite :specializes comlex-verb
     :binds
      ((BY top)
       (WITH top))
     :realization (:verb  "ignite" :s SUBJECT :o OBJECT :by BY :with WITH))

(define-category ignore :specializes comlex-verb
     :realization (:verb  "ignore" :s SUBJECT :o OBJECT))

(define-category illuminate :specializes comlex-verb
     :binds
      ((ABOUT top)
       (ON top)
       (WITH top))
     :realization (:verb  "illuminate" :s SUBJECT :o OBJECT :about ABOUT :on ON :with WITH))

(define-category image :specializes comlex-verb
     :binds
      ((IN top)
       (ON top))
     :realization (:verb  "image" :s SUBJECT :o OBJECT :in IN :on ON))

(define-category imagine :specializes comlex-verb
     :realization (:verb  "imagine" :s SUBJECT :o OBJECT))

(define-category imbue :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "imbue" :s SUBJECT :o OBJECT :with WITH))

(define-category immerse :specializes comlex-verb
     :binds
      ((IN top))
     :realization (:verb  "immerse" :s SUBJECT :o OBJECT :in IN))

(define-category immunize :specializes comlex-verb
     :binds
      ((AGAINST top)
       (FOR top)
       (WITH top))
     :realization (:verb  "immunize" :s SUBJECT :o OBJECT :against AGAINST :for FOR :with WITH))

(define-category impend :specializes comlex-verb
     :realization (:verb  "impend" :s SUBJECT))

(define-category implement :specializes comlex-verb
     :realization (:verb  "implement" :s SUBJECT :o OBJECT))

(define-category implore :specializes comlex-verb
     :realization (:verb  "implore" :s SUBJECT :o OBJECT))

(define-category impose :specializes comlex-verb
     :binds
      ((AGAINST top)
       (ON top)
       (UPON top))
     :realization (:verb  "impose" :s SUBJECT :o OBJECT :against AGAINST :on ON :upon UPON))

(define-category incite :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "incite" :s SUBJECT :o OBJECT :to TO))

(define-category incline :specializes comlex-verb
     :binds
      ((TOWARDS top)
       (TO top)
       (TOWARD top))
     :realization (:verb  "incline" :s SUBJECT :o OBJECT :towards TOWARDS :to TO :toward TOWARD))

(define-category incur :specializes comlex-verb
     :binds
      ((BY top)
       (THROUGH top)
       (WITH top))
     :realization (:verb ( "incur"  :TENSED/SINGULAR "incurs" :PRESENT-PARTICIPLE "incurring" :PAST-TENSE "incurred")
 :s SUBJECT :o OBJECT :by BY :through THROUGH :with WITH))

;;; found existing category INDEX in #P"SPARSER:KINDS;UPPER-MODEL.LISP"

(define-category index-cl-verb :specializes comlex-verb
     :binds
      ((BY top)
       (WITH top))
     :realization (:verb  "index" :s SUBJECT :o OBJECT :by BY :with WITH))

(define-category individualize :specializes comlex-verb
     :realization (:verb  "individualize" :s SUBJECT :o OBJECT))

(define-category infect :specializes comlex-verb
     :binds
      ((infectious-agent (:or pathogen disease)))
     :realization (:verb  "infect" :s SUBJECT :o OBJECT :with infectious-agent :by infectious-agent ))

(define-category infer :specializes comlex-verb
     :realization (:verb ( "infer"  :TENSED/SINGULAR "infers" :PRESENT-PARTICIPLE "inferring" :PAST-TENSE "inferred")
 :s SUBJECT :o OBJECT))

(define-category inflate :specializes comlex-verb
     :binds
      ((BEYOND top)
       (PAST top)
       (|UP TO| top)
       (TO top)
       (WITH top))
     :realization (:verb  "inflate" :s SUBJECT :o OBJECT :beyond BEYOND :past PAST :|UP TO| |UP TO| :to TO :with WITH))

(define-category inhabit :specializes comlex-verb
     :realization (:verb  "inhabit" :s SUBJECT :o OBJECT))

(define-category inject :specializes comlex-verb
     :binds
      ((BETWEEN top)
       (IN top)
       (INTO top)
       (THROUGH top)
       (UNDER top)
       (WITH top))
     :realization (:verb  "inject" :s SUBJECT :o OBJECT :between BETWEEN :in IN :into INTO :through THROUGH :under UNDER :with WITH))

(define-category inoculate :specializes comlex-verb
     :binds
      ((AGAINST top)
       (FOR top)
       (WITH top))
     :realization (:verb  "inoculate" :s SUBJECT :o OBJECT :against AGAINST :for FOR :with WITH))

(define-category input :specializes comlex-verb
     :realization (:verb  "input" :s SUBJECT))

(define-category inquire :specializes comlex-verb
     :binds
      ((AFTER top)
       (INTO top)
       (OF top)
       (ABOUT top)
       (FROM top))
     :realization (:verb  "inquire" :s SUBJECT :o OBJECT :after AFTER :into INTO :of OF :about ABOUT :from FROM))

(define-category inspect :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "inspect" :s SUBJECT :o OBJECT :for FOR))

(define-category inspire :specializes comlex-verb
     :binds
      ((TO top)
       (WITH top))
     :realization (:verb  "inspire" :s SUBJECT :o OBJECT :to TO :with WITH))

(define-category instance :specializes comlex-verb
     :realization (:verb  "instance" :s SUBJECT :o OBJECT))

(define-category instil :specializes comlex-verb
     :binds
      ((IN top))
     :realization (:verb ( "instil"  :TENSED/SINGULAR "instils" :PRESENT-PARTICIPLE "instilling" :PAST-TENSE "instilled")
 :s SUBJECT :o OBJECT :in IN))

(define-category institute :specializes comlex-verb
     :realization (:verb  "institute" :s SUBJECT :o OBJECT))

(define-category institutionalize :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb ( "institutionalize"  :TENSED/SINGULAR "institutionalizes" :PRESENT-PARTICIPLE "institutionalizingg")
 :s SUBJECT :o OBJECT :for FOR))

(define-category instruct :specializes comlex-verb
     :binds
      ((IN top))
     :realization (:verb  "instruct" :s SUBJECT :o OBJECT :in IN))

(define-category insult :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "insult" :s SUBJECT :o OBJECT :with WITH))

(define-category integrate :specializes comlex-verb
     :binds
      ((AT top)
       (IN top)
       (OVER top)
       (INTO top)
       (WITH top))
     :realization (:verb  "integrate" :s SUBJECT :o OBJECT :at AT :in IN :over OVER :into INTO :with WITH))

(define-category intensify :specializes comlex-verb
     :realization (:verb  "intensify" :s SUBJECT :o OBJECT))

(define-category inter :specializes comlex-verb
     :binds
      ((BELOW top)
       (IN top)
       (INTO top)
       (UNDER top))
     :realization (:verb ( "inter"  :TENSED/SINGULAR "inters" :PRESENT-PARTICIPLE "interring" :PAST-TENSE "interred")
 :s SUBJECT :o OBJECT :below BELOW :in IN :into INTO :under UNDER))

(define-category intercept :specializes comlex-verb
     :binds
      ((AT top))
     :realization (:verb  "intercept" :s SUBJECT :o OBJECT :at AT))

(define-category interest :specializes comlex-verb
     :binds
      ((IN top)
       (WITH top))
     :realization (:verb  "interest" :s SUBJECT :o OBJECT :in IN :with WITH))

(define-category intermix :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "intermix" :s SUBJECT :with WITH))

(define-category interpret :specializes comlex-verb
     :binds
      ((FOR top)
       (IN top))
     :realization (:verb  "interpret" :s SUBJECT :o OBJECT :for FOR :in IN))

(define-category interrupt :specializes comlex-verb
     :realization (:verb  "interrupt" :s SUBJECT :o OBJECT))

(define-category intersect :specializes comlex-verb
     :binds
      ((WITH top)
       (AT top))
     :realization (:verb  "intersect" :s SUBJECT :o OBJECT :with WITH :at AT))

(define-category intertwine :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "intertwine" :s SUBJECT :with WITH))

(define-category intervene :specializes comlex-verb
     :binds
      ((ON top)
       (WITH top)
       (IN top))
     :realization (:verb  "intervene" :s SUBJECT :on ON :with WITH :in IN))

(define-category interview :specializes comlex-verb
     :binds
      ((ON top)
       (FOR top))
     :realization (:verb  "interview" :s SUBJECT :o OBJECT :on ON :for FOR))

(define-category introduce :specializes comlex-verb
     :binds
      ((IN top)
       (TO top)
       (INTO top))
     :realization (:verb  "introduce" :s SUBJECT :o OBJECT :in IN :to TO :into INTO))

(define-category introvert :specializes comlex-verb
     :realization (:verb  "introvert" :s SUBJECT :o OBJECT))

(define-category inundate :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "inundate" :s SUBJECT :o OBJECT :with WITH))

(define-category invalid :specializes comlex-verb
     :realization (:verb  "invalid" :s SUBJECT :o OBJECT))

(define-category invalidate :specializes comlex-verb
     :realization (:verb  "invalidate" :s SUBJECT :o OBJECT))

(define-category invent :specializes comlex-verb
     :realization (:verb  "invent" :s SUBJECT :o OBJECT))

(define-category inverse :specializes comlex-verb
     :realization (:verb  "inverse" :s SUBJECT))

(define-category invest :specializes comlex-verb
     :binds
      ((ON top)
       (FOR top)
       (OUTSIDE top)
       (AT top)
       (WITH top)
       (IN top)
       (INTO top))
     :realization (:verb  "invest" :s SUBJECT :o OBJECT :on ON :for FOR :outside OUTSIDE :at AT :with WITH :in IN :into INTO))

(define-category invite :specializes comlex-verb
     :binds
      ((FOR top)
       (INTO top)
       (TO top))
     :realization (:verb  "invite" :s SUBJECT :o OBJECT :for FOR :into INTO :to TO))

(define-category invoke :specializes comlex-verb
     :binds
      ((AGAINST top)
       (FROM top))
     :realization (:verb  "invoke" :s SUBJECT :o OBJECT :against AGAINST :from FROM))

(define-category irrigate :specializes comlex-verb
     :realization (:verb  "irrigate" :s SUBJECT :o OBJECT))

;;; found existing category ISSUE in #P"SPARSER:BIO;TERMS-TO-MOVE.LISP"

(define-category issue-cl-verb :specializes comlex-verb
     :binds
      ((THROUGH top)
       (FROM top)
       (|OUT OF| top))
     :realization (:verb  "issue" :s SUBJECT :o OBJECT :through THROUGH :from FROM :|OUT OF| |OUT OF|))

(define-category jail :specializes comlex-verb
     :binds
      ((IN top)
       (ON top)
       (FOR top))
     :realization (:verb  "jail" :s SUBJECT :o OBJECT :in IN :on ON :for FOR))

(define-category jaw :specializes comlex-verb
     :binds
      ((ABOUT top)
       (AT top)
       (FOR top))
     :realization (:verb  "jaw" :s SUBJECT :o OBJECT :about ABOUT :at AT :for FOR))

(define-category jeopardize :specializes comlex-verb
     :binds
      ((WITH top)
       (FOR top))
     :realization (:verb  "jeopardize" :s SUBJECT :o OBJECT :with WITH :for FOR))

(define-category job :specializes comlex-verb
     :realization (:verb ( "job"  :TENSED/SINGULAR "jobs" :PRESENT-PARTICIPLE "jobbing" :PAST-TENSE "jobbed")
 :s SUBJECT :o OBJECT))

(define-category jog :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((UNTO top)
       (WITH top)
       (AFTER top)
       (BESIDE top))
     :realization (:verb ( "jog"  :TENSED/SINGULAR "jogs" :PRESENT-PARTICIPLE "jogging" :PAST-TENSE "jogged")
 :s SUBJECT :o OBJECT :unto UNTO :with WITH :after AFTER :beside BESIDE))

(define-category join :specializes comlex-verb
     :binds
      ((AT top)
       (BEHIND top)
       (ON top)
       (THROUGH top)
       (UNDER top)
       (BY top)
       (FOR top)
       (IN top)
       (WITH top)
       (TO top))
     :realization (:verb  "join" :s SUBJECT :o OBJECT :at AT :behind BEHIND :on ON :through THROUGH :under UNDER :by BY :for FOR :in IN :with WITH :to TO))

(define-category joke :specializes comlex-verb
     :binds
      ((ABOUT top)
       (TO top)
       (WITH top))
     :realization (:verb  "joke" :s SUBJECT :o OBJECT :about ABOUT :to TO :with WITH))

(define-category jot :specializes comlex-verb
     :binds
      ((INTO top)
       (IN top)
       (ON top))
     :realization (:verb ( "jot"  :TENSED/SINGULAR "jots" :PRESENT-PARTICIPLE "jotting" :PAST-TENSE "jotted")
 :s SUBJECT :o OBJECT :into INTO :in IN :on ON))

(define-category journey :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((FROM top)
       (TO top))
     :realization (:verb  "journey" :s SUBJECT :from FROM :to TO))

(define-category judge :specializes comlex-verb
     :binds
      ((AGAINST top)
       (FROM top)
       (|IN FAVOR OF| top)
       (BY top)
       (FOR top)
       (ON top)
       (IN top))
     :realization (:verb  "judge" :s SUBJECT :o OBJECT :against AGAINST :from FROM :|IN FAVOR OF| |IN FAVOR OF| :by BY :for FOR :on ON :in IN))

(define-category justify :specializes comlex-verb
     :binds
      ((IN top)
       (BY top)
       (ON top)
       (TO top)
       (WITH top))
     :realization (:verb  "justify" :s SUBJECT :o OBJECT :in IN :by BY :on ON :to TO :with WITH))

(define-category keen :specializes comlex-verb
     :binds
      ((ABOUT top))
     :realization (:verb  "keen" :s SUBJECT :about ABOUT))

;;; found existing category KEY in #P"SPARSER:DOSSIERS;MODIFIERS.LISP"

(define-category key-cl-verb :specializes comlex-verb
     :binds
      ((FOR top)
       (OVER top)
       (TO top))
     :realization (:verb  "key" :s SUBJECT :o OBJECT :for FOR :over OVER :to TO))

(define-category kid :specializes comlex-verb
     :binds
      ((ABOUT top)
       (FOR top))
     :realization (:verb ( "kid"  :TENSED/SINGULAR "kids" :PRESENT-PARTICIPLE "kidding" :PAST-TENSE "kidded")
 :s SUBJECT :o OBJECT :about ABOUT :for FOR))

(define-category kiss :specializes comlex-verb
     :binds
      ((ON top))
     :realization (:verb  "kiss" :s SUBJECT :o OBJECT :on ON))

(define-category kit :specializes comlex-verb
     :realization (:verb ( "kit"  :TENSED/SINGULAR "kits" :PRESENT-PARTICIPLE "kitting" :PAST-TENSE "kitted")
 :s SUBJECT :o OBJECT))

(define-category knight :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "knight" :s SUBJECT :o OBJECT :for FOR))

(define-category knit :specializes comlex-verb
     :realization (:verb ( "knit"  :TENSED/SINGULAR "knits" :PRESENT-PARTICIPLE "knitting" :PAST-TENSE "knitted")
 :s SUBJECT :o OBJECT))

;;; found existing category KNOW in #P"SPARSER:DOSSIERS;VERBS.LISP"

(define-category know-cl-verb :specializes comlex-verb
     :binds
      ((OF top)
       (ABOUT top))
     :realization (:verb ( "know"  :TENSED/SINGULAR "knows" :PAST-TENSE "knew")
 :s SUBJECT :o OBJECT :of OF :about ABOUT))

(define-category labor :specializes comlex-verb
     :binds
      ((WITH top)
       (AT top)
       (OVER top)
       (ON top)
       (UNDER top))
     :realization (:verb  "labor" :s SUBJECT :o OBJECT :with WITH :at AT :over OVER :on ON :under UNDER))

(define-category labour :specializes comlex-verb
     :binds
      ((WITH top)
       (AT top)
       (OVER top)
       (ON top)
       (UNDER top))
     :realization (:verb  "labour" :s SUBJECT :o OBJECT :with WITH :at AT :over OVER :on ON :under UNDER))

(define-category ladder :specializes comlex-verb
     :realization (:verb  "ladder" :s SUBJECT :o OBJECT))

(define-category lag :specializes comlex-verb
     :binds
      ((BEHIND top))
     :realization (:verb ( "lag"  :TENSED/SINGULAR "lags" :PRESENT-PARTICIPLE "lagging" :PAST-TENSE "lagged")
 :s SUBJECT :o OBJECT :behind BEHIND))

(define-category lament :specializes comlex-verb
     :binds
      ((ABOUT top)
       (FOR top)
       (OVER top))
     :realization (:verb  "lament" :s SUBJECT :o OBJECT :about ABOUT :for FOR :over OVER))

(define-category land :specializes comlex-verb
     :binds
      ((TO top)
       (ON top)
       (IN top)
       (AT top))
     :realization (:verb  "land" :s SUBJECT :o OBJECT :to TO :on ON :in IN :at AT))

(define-category landscape :specializes comlex-verb
     :realization (:verb  "landscape" :s SUBJECT :o OBJECT))

(define-category last :specializes comlex-verb
     :binds
      ((AROUND top)
       (ABOUT top)
       (FROM top)
       (BETWEEN top)
       (FOR top)
       (TILL top)
       (THROUGHOUT top)
       (THROUGH top)
       (OVER top)
       (|UP TO| top)
       (TO top)
       (UNDER top))
     :realization (:verb  "last" :s SUBJECT :o OBJECT :around AROUND :about ABOUT :from FROM :between BETWEEN :for FOR :till TILL :throughout THROUGHOUT :through THROUGH :over OVER :|UP TO| |UP TO| :to TO :under UNDER))

(define-category laugh :specializes comlex-verb
     :binds
      ((ABOUT top)
       (AT top)
       (|OUT OF| top)
       (|OFF OF| top)
       (OFF top))
     :realization (:verb  "laugh" :s SUBJECT :o OBJECT :about ABOUT :at AT :|OUT OF| |OUT OF| :|OFF OF| |OFF OF| :off OFF))

(define-category launch :specializes comlex-verb
     :binds
      ((AGAINST top)
       (INTO top)
       (ON top))
     :realization (:verb  "launch" :s SUBJECT :o OBJECT :against AGAINST :into INTO :on ON))

(define-category layer :specializes comlex-verb
     :binds
      ((IN top)
       (INTO top)
       (ONTO top)
       (OVER top)
       (ON top)
       (UPON top)
       (WITH top))
     :realization (:verb  "layer" :s SUBJECT :o OBJECT :in IN :into INTO :onto ONTO :over OVER :on ON :upon UPON :with WITH))

(define-category lean :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((OVER top)
       (FROM top)
       (UPON top)
       (AGAINST top)
       (AT top))
     :realization (:verb  "lean" :s SUBJECT :o OBJECT :over OVER :from FROM :upon UPON :against AGAINST :at AT))

;;; found existing category LEAVE in #P"SPARSER:BIO;GENERAL-VERBS.LISP"

(define-category leave-cl-verb :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((FROM top)
       (WITH top)
       (WITHOUT top)
       (AT top)
       (NEAR top)
       (BESIDE top)
       (FOR top)
       (|NEXT TO| top)
       (UNDER top))
     :realization (:verb ( "leave"  :TENSED/SINGULAR "leaves" :PAST-TENSE "left")
 :s SUBJECT :o OBJECT :from FROM :with WITH :without WITHOUT :at AT :near NEAR :beside BESIDE :for FOR :|NEXT TO| |NEXT TO| :under UNDER))

(define-category lend :specializes comlex-verb
     :binds
      ((INTO top)
       (TO top))
     :realization (:verb ( "lend"  :TENSED/SINGULAR "lends" :PAST-TENSE "lent")
 :s SUBJECT :o OBJECT :into INTO :to TO))

(define-category lessen :specializes comlex-verb
     :realization (:verb  "lessen" :s SUBJECT :o OBJECT))

(define-category liberate :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "liberate" :s SUBJECT :o OBJECT :from FROM))

(define-category license :specializes comlex-verb
     :realization (:verb  "license" :s SUBJECT :o OBJECT))

(define-category lie :specializes comlex-verb
     :binds
      ((BENEATH top)
       (BELOW top)
       (BEHIND top)
       (AROUND top)
       (BEFORE top)
       (AT top)
       (AMONGST top)
       (AMONG top)
       (ALONG top)
       (AGAINST top)
       (ACROSS top)
       (ABOVE top)
       (BESIDE top)
       (NEAR top)
       (INTO top)
       (INSIDE top)
       (BY top)
       (BEYOND top)
       (BETWEEN top)
       (|NEXT TO| top)
       (OUTSIDE top)
       (THROUGH top)
       (PAST top)
       (OVER top)
       (|OFF OF| top)
       (OFF top)
       (TOWARDS top)
       (TOWARD top)
       (WITH top)
       (UPON top)
       (UNDER top)
       (WITHIN top)
       (|OUT OF| top)
       (ABOUT top)
       (TO top)
       (IN top)
       (ON top))
     :realization (:verb ( "lie"  :TENSED/SINGULAR "lies" :PRESENT-PARTICIPLE "lying")
 :s SUBJECT :o OBJECT :beneath BENEATH :below BELOW :behind BEHIND :around AROUND :before BEFORE :at AT :amongst AMONGST :among AMONG :along ALONG :against AGAINST :across ACROSS :above ABOVE :beside BESIDE :near NEAR :into INTO :inside INSIDE :by BY :beyond BEYOND :between BETWEEN :|NEXT TO| |NEXT TO| :outside OUTSIDE :through THROUGH :past PAST :over OVER :|OFF OF| |OFF OF| :off OFF :towards TOWARDS :toward TOWARD :with WITH :upon UPON :under UNDER :within WITHIN :|OUT OF| |OUT OF| :about ABOUT :to TO :in IN :on ON))

(define-category lift :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((|OUT OF| top)
       (FROM top)
       (OVER top)
       (TOWARDS top)
       (TOWARD top)
       (TO top)
       (|OFF OF| top))
     :realization (:verb  "lift" :s SUBJECT :o OBJECT :|OUT OF| |OUT OF| :from FROM :over OVER :towards TOWARDS :toward TOWARD :to TO :|OFF OF| |OFF OF|))

(define-category light :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb ( "light"  :TENSED/SINGULAR "lights" :PAST-TENSE ("lighted" "lit"))
 :s SUBJECT :o OBJECT :with WITH))

(define-category listen :specializes comlex-verb
     :binds
      ((FOR top)
       (TO top))
     :realization (:verb  ("listen"  :past-tense "listened" :past-participle "listened"  :present-participle "listening") :s SUBJECT :for FOR :to TO))

(define-category litter :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "litter" :s SUBJECT :o OBJECT :with WITH))

(define-category live :specializes comlex-verb
     :binds
      ((FROM top)
       (WITHIN top)
       (AMONGST top)
       (AMONG top)
       (BY top)
       (BENEATH top)
       (BELOW top)
       (BEHIND top)
       (AT top)
       (ACROSS top)
       (ABOVE top)
       (FOR top)
       (NEAR top)
       (INSIDE top)
       (DOWN top)
       (BEYOND top)
       (BETWEEN top)
       (BESIDE top)
       (TILL top)
       (THROUGH top)
       (|OFF OF| top)
       (OVER top)
       (OUTSIDE top)
       (ON top)
       (OFF top)
       (|NEXT TO| top)
       (TO top)
       (WITH top)
       (|UP TO| top)
       (UPON top)
       (UNDER top)
       (IN top))
     :realization (:verb  "live" :s SUBJECT :o OBJECT :from FROM :within WITHIN :amongst AMONGST :among AMONG :by BY :beneath BENEATH :below BELOW :behind BEHIND :at AT :across ACROSS :above ABOVE :for FOR :near NEAR :inside INSIDE :down DOWN :beyond BEYOND :between BETWEEN :beside BESIDE :till TILL :through THROUGH :|OFF OF| |OFF OF| :over OVER :outside OUTSIDE :on ON :off OFF :|NEXT TO| |NEXT TO| :to TO :with WITH :|UP TO| |UP TO| :upon UPON :under UNDER :in IN))

(define-category load :specializes comlex-verb
     :binds
      ((ABOARD top)
       (IN top)
       (INTO top)
       (ON top)
       (ONTO top)
       (WITH top))
     :realization (:verb  "load" :s SUBJECT :o OBJECT :aboard ABOARD :in IN :into INTO :on ON :onto ONTO :with WITH))

(define-category locate :specializes comlex-verb
     :binds
      ((ALONG top)
       (AMID top)
       (THROUGHOUT top)
       (BENEATH top)
       (BELOW top)
       (BEHIND top)
       (AT top)
       (AROUND top)
       (AMONGST top)
       (AMONG top)
       (ACROSS top)
       (ABOVE top)
       (BEYOND top)
       (NEAR top)
       (INSIDE top)
       (IN top)
       (DOWN top)
       (BETWEEN top)
       (BESIDE top)
       (OVER top)
       (OUTSIDE top)
       (ON top)
       (|NEXT TO| top)
       (TO top)
       (WITHIN top)
       (UPON top)
       (UNDER top))
     :realization (:verb  "locate" :s SUBJECT :o OBJECT :along ALONG :amid AMID :throughout THROUGHOUT :beneath BENEATH :below BELOW :behind BEHIND :at AT :around AROUND :amongst AMONGST :among AMONG :across ACROSS :above ABOVE :beyond BEYOND :near NEAR :inside INSIDE :in IN :down DOWN :between BETWEEN :beside BESIDE :over OVER :outside OUTSIDE :on ON :|NEXT TO| |NEXT TO| :to TO :within WITHIN :upon UPON :under UNDER))

(define-category lock :specializes comlex-verb
     :binds
      ((AGAINST top)
       (AROUND top)
       (AT top)
       (IN top)
       (INTO top)
       (|OUT OF| top))
     :realization (:verb  "lock" :s SUBJECT :o OBJECT :against AGAINST :around AROUND :at AT :in IN :into INTO :|OUT OF| |OUT OF|))

(define-category lodge :specializes comlex-verb
     :binds
      ((AT top)
       (AGAINST top)
       (INSIDE top)
       (NEAR top)
       (BETWEEN top)
       (IN top)
       (UNDER top)
       (WITH top))
     :realization (:verb  "lodge" :s SUBJECT :o OBJECT :at AT :against AGAINST :inside INSIDE :near NEAR :between BETWEEN :in IN :under UNDER :with WITH))

(define-category log :specializes comlex-verb
     :binds
      ((ONTO top)
       (|OFF OF| top))
     :realization (:verb ( "log"  :TENSED/SINGULAR "logs" :PRESENT-PARTICIPLE "logging" :PAST-TENSE "logged")
 :s SUBJECT :o OBJECT :onto ONTO :|OFF OF| |OFF OF|))

(define-category loosen :specializes comlex-verb
     :binds
      ((FROM top)
       (ON top))
     :realization (:verb  "loosen" :s SUBJECT :o OBJECT :from FROM :on ON))

(define-category lord :specializes comlex-verb
     :binds
      ((OVER top))
     :realization (:verb  "lord" :s SUBJECT :o OBJECT :over OVER))

(define-category love :specializes comlex-verb
     :realization (:verb  "love" :s SUBJECT :o OBJECT))

(define-category lull :specializes comlex-verb
     :binds
      ((INTO top)
       (TO top))
     :realization (:verb  "lull" :s SUBJECT :o OBJECT :into INTO :to TO))

(define-category lure :specializes comlex-verb
     :mixins (with-p-dir)
     :realization (:verb  "lure" :s SUBJECT :o OBJECT))

(define-category machine :specializes comlex-verb
     :realization (:verb  "machine" :s SUBJECT :o OBJECT))

(define-category madden :specializes comlex-verb
     :realization (:verb  "madden" :s SUBJECT :o OBJECT))

(define-category magnify :specializes comlex-verb
     :realization (:verb  "magnify" :s SUBJECT :o OBJECT))

(define-category mail :specializes comlex-verb
     :realization (:verb  "mail" :s SUBJECT :o OBJECT))

;;; found existing category MAJOR in #P"SPARSER:DOSSIERS;MODIFIERS.LISP"

(define-category major-cl-verb :specializes comlex-verb
     :binds
      ((IN top))
     :realization (:verb  "major" :s SUBJECT :in IN))

(define-category manage :specializes comlex-verb
     :realization (:verb  "manage" :s SUBJECT :o OBJECT))

(define-category mandate :specializes comlex-verb
     :realization (:verb  "mandate" :s SUBJECT :o OBJECT))

(define-category manifest :specializes comlex-verb
     :binds
      ((IN top)
       (THROUGH top))
     :realization (:verb  "manifest" :s SUBJECT :o OBJECT :in IN :through THROUGH))

(define-category manifold :specializes comlex-verb
     :realization (:verb  "manifold" :s SUBJECT :o OBJECT))

(define-category manipulate :specializes comlex-verb
     :binds
      ((INTO top))
     :realization (:verb  "manipulate" :s SUBJECT :o OBJECT :into INTO))

(define-category manufacture :specializes comlex-verb
     :binds
      ((FOR top)
       (FROM top))
     :realization (:verb  "manufacture" :s SUBJECT :o OBJECT :for FOR :from FROM))

(define-category march :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((WITH top)
       (FOR top)
       (AGAINST top))
     :realization (:verb  "march" :s SUBJECT :o OBJECT :with WITH :for FOR :against AGAINST))

(define-category mark :specializes comlex-verb
     :binds
      ((AT top)
       (ON top)
       (FOR top)
       (WITH top))
     :realization (:verb  "mark" :s SUBJECT :o OBJECT :at AT :on ON :for FOR :with WITH))

(define-category market :specializes comlex-verb
     :binds
      ((TO top)
       (FOR top))
     :realization (:verb  "market" :s SUBJECT :o OBJECT :to TO :for FOR))

(define-category marry :specializes comlex-verb
     :binds
      ((TO top)
       (FOR top))
     :realization (:verb  "marry" :s SUBJECT :o OBJECT :to TO :for FOR))

(define-category mask :specializes comlex-verb
     :realization (:verb  "mask" :s SUBJECT :o OBJECT))

(define-category master :specializes comlex-verb
     :realization (:verb  "master" :s SUBJECT :o OBJECT))

(define-category matt :specializes comlex-verb
     :realization (:verb  "matt" :s SUBJECT))

(define-category maunder :specializes comlex-verb
     :realization (:verb  "maunder" :s SUBJECT))

(define-category maximise :specializes comlex-verb
     :realization (:verb  "maximise" :s SUBJECT :o OBJECT))

(define-category maximize :specializes comlex-verb
     :realization (:verb  "maximize" :s SUBJECT :o OBJECT))

;;; found existing category MEAN in #P"SPARSER:BIO;GENERAL-VERBS.LISP"

(define-category mean-cl-verb :specializes comlex-verb
     :binds
      ((FOR top)
       (TO top)
       (BY top)
       (WITH top))
     :realization (:verb ( "mean"  :TENSED/SINGULAR "means" :PAST-TENSE "meant")
                   :s SUBJECT :o OBJECT :for FOR :to TO :by BY :with WITH))

(define-category meet :specializes comlex-verb
     :binds
      ((AT top)
       (WITH top))
     :realization (:verb ( "meet"  :TENSED/SINGULAR "meets" :PAST-TENSE "met")
 :s SUBJECT :o OBJECT :at AT :with WITH))

(define-category memorize :specializes comlex-verb
     :realization (:verb  "memorize" :s SUBJECT :o OBJECT))

(define-category merge :specializes comlex-verb
     :binds
      ((ONTO top)
       (INTO top)
       (WITH top))
     :realization (:verb  "merge" :s SUBJECT :o OBJECT :onto ONTO :into INTO :with WITH))

(define-category merit :specializes comlex-verb
     :realization (:verb  "merit" :s SUBJECT :o OBJECT))

(define-category message :specializes comlex-verb
     :realization (:verb  "message" :s SUBJECT))

(define-category mill :specializes comlex-verb
     :binds
      ((IN top)
       (INTO top))
     :realization (:verb  "mill" :s SUBJECT :o OBJECT :in IN :into INTO))

(define-category mind :specializes comlex-verb
     :realization (:verb  "mind" :s SUBJECT :o OBJECT))

(define-category mine :specializes comlex-verb
     :binds
      ((FOR top)
       (FROM top)
       (|OUT OF| top))
     :realization (:verb  "mine" :s SUBJECT :o OBJECT :for FOR :from FROM :|OUT OF| |OUT OF|))

(define-category minimize :specializes comlex-verb
     :binds
      ((BY top)
       (WITH top))
     :realization (:verb  "minimize" :s SUBJECT :o OBJECT :by BY :with WITH))

(define-category mirror :specializes comlex-verb
     :realization (:verb  "mirror" :s SUBJECT :o OBJECT))

(define-category misbehave :specializes comlex-verb
     :realization (:verb  "misbehave" :s SUBJECT))

(define-category misconduct :specializes comlex-verb
     :realization (:verb  "misconduct" :s SUBJECT :o OBJECT))

(define-category misguide :specializes comlex-verb
     :realization (:verb  "misguide" :s SUBJECT :o OBJECT))

(define-category mislead :specializes comlex-verb
     :binds
      ((INTO top))
     :realization (:verb ( "mislead"  :TENSED/SINGULAR "misleads" :PAST-TENSE "misled")
 :s SUBJECT :o OBJECT :into INTO))

(define-category misread :specializes comlex-verb
     :realization (:verb ( "misread"  :TENSED/SINGULAR "misreads" :PAST-TENSE "misread")
 :s SUBJECT :o OBJECT))

(define-category misrepresent :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "misrepresent" :s SUBJECT :o OBJECT :to TO))

(define-category miss :specializes comlex-verb
     :binds
      ((BY top)
       (ON top)
       (FROM top))
     :realization (:verb  "miss" :s SUBJECT :o OBJECT :by BY :on ON :from FROM))

(define-category mistake :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb ( "mistake"  :TENSED/SINGULAR "mistakes" :PAST-TENSE "mistook")
 :s SUBJECT :o OBJECT :for FOR))

(define-category mistrust :specializes comlex-verb
     :realization (:verb  "mistrust" :s SUBJECT :o OBJECT))

(define-category misunderstand :specializes comlex-verb
     :realization (:verb ( "misunderstand"  :TENSED/SINGULAR "misunderstands" :PAST-TENSE "misunderstood")
 :s SUBJECT :o OBJECT))

(define-category mitigate :specializes comlex-verb
     :realization (:verb  "mitigate" :s SUBJECT :o OBJECT))

(define-category mix :specializes comlex-verb
     :binds
      ((INTO top)
       (WITH top))
     :realization (:verb  "mix" :s SUBJECT :o OBJECT :into INTO :with WITH))

;;; found existing category MODEL in #P"SPARSER:MID-LEVEL;THINGS.LISP"

(define-category moderate :specializes comlex-verb
     :binds
      ((FOR top)
       (BY top))
     :realization (:verb  "moderate" :s SUBJECT :o OBJECT :for FOR :by BY))

(define-category monitor :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  ("monitor"  :past-tense "monitored" :past-participle "monitored" :present-participle "monitoring") :s SUBJECT :o OBJECT :for FOR))

(define-category motivate :specializes comlex-verb
     :binds
      ((FOR top)
       (BY top)
       (WITH top))
     :realization (:verb  "motivate" :s SUBJECT :o OBJECT :for FOR :by BY :with WITH))

(define-category mount :specializes comlex-verb
     :binds
      ((ABOVE top)
       (AGAINST top)
       (AT top)
       (TO top)
       (IN top)
       (OVER top)
       (ONTO top)
       (ON top)
       (WITH top)
       (FOR top))
     :realization (:verb  "mount" :s SUBJECT :o OBJECT :above ABOVE :against AGAINST :at AT :to TO :in IN :over OVER :onto ONTO :on ON :with WITH :for FOR))

(define-category mouth :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "mouth" :s SUBJECT :o OBJECT :to TO))

(define-category multiply :specializes comlex-verb
     :binds
      ((BY top))
     :realization (:verb  "multiply" :s SUBJECT :o OBJECT :by BY))

(define-category mute :specializes comlex-verb
     :realization (:verb  "mute" :s SUBJECT :o OBJECT))

(define-category navigate :specializes comlex-verb
     :mixins (with-p-dir)
     :realization (:verb  "navigate" :s SUBJECT :o OBJECT))

(define-category necessitate :specializes comlex-verb
     :realization (:verb  "necessitate" :s SUBJECT :o OBJECT))

(define-category neglect :specializes comlex-verb
     :realization (:verb  "neglect" :s SUBJECT :o OBJECT))

(define-category neighbor :specializes comlex-verb
     :realization (:verb  "neighbor" :s SUBJECT :o OBJECT))

(define-category neighbour :specializes comlex-verb
     :realization (:verb  "neighbour" :s SUBJECT :o OBJECT))

(define-category nest :specializes comlex-verb
     :binds
      ((BY top)
       (IN top)
       (UNDER top))
     :realization (:verb  "nest" :s SUBJECT :o OBJECT :by BY :in IN :under UNDER))

(define-category net :specializes comlex-verb
     :realization (:verb ( "net"  :TENSED/SINGULAR "nets" :PRESENT-PARTICIPLE "netting" :PAST-TENSE "netted")
 :s SUBJECT :o OBJECT))

(define-category nettle :specializes comlex-verb
     :binds
      ((INTO top))
     :realization (:verb  "nettle" :s SUBJECT :o OBJECT :into INTO))

(define-category nominate :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "nominate" :s SUBJECT :o OBJECT :for FOR))

(define-category normalize :specializes comlex-verb
     :realization (:verb  "normalize" :s SUBJECT :o OBJECT))

(define-category nose :specializes comlex-verb
     :realization (:verb  "nose" :s SUBJECT :o OBJECT))

(define-category notice :specializes comlex-verb
     :binds
      ((ABOUT top))
     :realization (:verb  "notice" :s SUBJECT :o OBJECT :about ABOUT))

(define-category notify :specializes comlex-verb
     :binds
      ((ABOUT top)
       (OF top))
     :realization (:verb  "notify" :s SUBJECT :o OBJECT :about ABOUT :of OF))

(define-category nuance :specializes comlex-verb
     :realization (:verb  "nuance" :s SUBJECT))

(define-category nudge :specializes comlex-verb
     :mixins (with-p-dir)
     :realization (:verb  "nudge" :s SUBJECT :o OBJECT))

(define-category nullify :specializes comlex-verb
     :realization (:verb  "nullify" :s SUBJECT :o OBJECT))

(define-category nurse :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "nurse" :s SUBJECT :o OBJECT :to TO))

(define-category nurture :specializes comlex-verb
     :binds
      ((INTO top)
       (TO top))
     :realization (:verb  "nurture" :s SUBJECT :o OBJECT :into INTO :to TO))

(define-category obey :specializes comlex-verb
     :realization (:verb  "obey" :s SUBJECT :o OBJECT))

(define-category oblige :specializes comlex-verb
     :binds
      ((BY top))
     :realization (:verb  "oblige" :s SUBJECT :o OBJECT :by BY))

;;; found existing category OBSCURE in #P"SPARSER:DOSSIERS;MODIFIERS.LISP"

(define-category obscure-cl-verb :specializes comlex-verb
     :realization (:verb  "obscure" :s SUBJECT :o OBJECT))

(define-category occasion :specializes comlex-verb
     :realization (:verb  "occasion" :s SUBJECT :o OBJECT))

(define-category occupy :specializes comlex-verb
     :realization (:verb  "occupy" :s SUBJECT :o OBJECT))

(define-category offer :specializes comlex-verb
     :realization (:verb  "offer" :s SUBJECT :o OBJECT))

(define-category offset :specializes comlex-verb
     :realization (:verb ( "offset"  :TENSED/SINGULAR "offsets" :PRESENT-PARTICIPLE "offsetting" :PAST-TENSE "offset")
 :s SUBJECT :o OBJECT))

(define-category omit :specializes comlex-verb
     :realization (:verb ( "omit"  :TENSED/SINGULAR "omits" :PRESENT-PARTICIPLE "omitting" :PAST-TENSE "omitted")
 :s SUBJECT :o OBJECT))

;;; found existing category OPEN in #P"SPARSER:BIO;TERMS.LISP"

(define-category open-cl-verb :specializes comlex-verb
     :binds
      ((UNTO top)
       (TO top)
       (ON top))
     :realization (:verb  "open" :s SUBJECT :o OBJECT :unto UNTO :to TO :on ON))

(define-category oppose :specializes comlex-verb
     :binds
      ((FOR top)
       (TO top))
     :realization (:verb  "oppose" :s SUBJECT :o OBJECT :for FOR :to TO))

(define-category opt :specializes comlex-verb
     :binds
      ((FOR top)
       (|OUT OF| top))
     :realization (:verb  "opt" :s SUBJECT :for FOR :|OUT OF| |OUT OF|))

(define-category order :specializes comlex-verb
     :binds
      ((FOR top)
       (ACROSS top)
       (FROM top)
       (IN top)
       (|ACCORDING TO| top)
       (BY top))
     :realization (:verb  "order" :s SUBJECT :o OBJECT :for FOR :across ACROSS :from FROM :in IN :|ACCORDING TO| |ACCORDING TO| :by BY))

(define-category organize :specializes comlex-verb
     :binds
      ((AROUND top)
       (BETWEEN top)
       (UNDER top)
       (|ACCORDING TO| top)
       (IN top)
       (INTO top)
       (BY top))
     :realization (:verb  "organize" :s SUBJECT :o OBJECT :around AROUND :between BETWEEN :under UNDER :|ACCORDING TO| |ACCORDING TO| :in IN :into INTO :by BY))

(define-category orient :specializes comlex-verb
     :binds
      ((AGAINST top)
       (TOWARD top)
       (TOWARDS top)
       (WITH top)
       (TO top))
     :realization (:verb  "orient" :s SUBJECT :o OBJECT :against AGAINST :toward TOWARD :towards TOWARDS :with WITH :to TO))

(define-category outline :specializes comlex-verb
     :realization (:verb  "outline" :s SUBJECT :o OBJECT))

(define-category outweigh :specializes comlex-verb
     :binds
      ((BY top))
     :realization (:verb  "outweigh" :s SUBJECT :o OBJECT :by BY))

(define-category overarch :specializes comlex-verb
     :realization (:verb  "overarch" :s SUBJECT :o OBJECT))

(define-category overburden :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "overburden" :s SUBJECT :o OBJECT :with WITH))

(define-category overcome :specializes comlex-verb
     :realization (:verb ( "overcome"  :TENSED/SINGULAR "overcomes" :PAST-TENSE "overcame")
 :s SUBJECT :o OBJECT))

(define-category overcrowd :specializes comlex-verb
     :realization (:verb  "overcrowd" :s SUBJECT :o OBJECT))

(define-category overestimate :specializes comlex-verb
     :realization (:verb  "overestimate" :s SUBJECT :o OBJECT))

(define-category overflow :specializes comlex-verb
     :binds
      ((ONTO top)
       (WITH top))
     :realization (:verb  "overflow" :s SUBJECT :o OBJECT :onto ONTO :with WITH))

(define-category overlay :specializes comlex-verb
     :realization (:verb ( "overlay"  :TENSED/SINGULAR "overlays" :PRESENT-PARTICIPLE "overlaying" :PAST-TENSE "overlaid")
 :s SUBJECT :o OBJECT))

(define-category overlie :specializes comlex-verb
     :realization (:verb ( "overlie"  :TENSED/SINGULAR "overlies" :PRESENT-PARTICIPLE "overlying" :PAST-TENSE "overlay" :PAST-PARTICIPLE "overlain")
 :s SUBJECT :o OBJECT))

(define-category overload :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "overload" :s SUBJECT :o OBJECT :with WITH))

(define-category overlook :specializes comlex-verb
     :realization (:verb  "overlook" :s SUBJECT :o OBJECT))

(define-category overreact :specializes comlex-verb
     :binds
      ((AT top)
       (ABOUT top)
       (TO top)
       (ON top))
     :realization (:verb  "overreact" :s SUBJECT :at AT :about ABOUT :to TO :on ON))

(define-category override :specializes comlex-verb
     :realization (:verb ( "override"  :TENSED/SINGULAR "overrides" :PAST-TENSE "overrode")
 :s SUBJECT :o OBJECT))

(define-category overshadow :specializes comlex-verb
     :realization (:verb  "overshadow" :s SUBJECT :o OBJECT))

(define-category overtax :specializes comlex-verb
     :realization (:verb  "overtax" :s SUBJECT :o OBJECT))

(define-category overwhelm :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "overwhelm" :s SUBJECT :o OBJECT :with WITH))

;;; found existing category OWN in #P"SPARSER:DOSSIERS;MODIFIERS.LISP"

(define-category own-cl-verb :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "own" :s SUBJECT :o OBJECT :to TO))

(define-category pacify :specializes comlex-verb
     :realization (:verb  "pacify" :s SUBJECT :o OBJECT))

(define-category pack :specializes comlex-verb
     :binds
      ((TO top)
       (ON top)
       (ONTO top)
       (WITH top)
       (INTO top)
       (IN top))
     :realization (:verb  "pack" :s SUBJECT :o OBJECT :to TO :on ON :onto ONTO :with WITH :into INTO :in IN))

(define-category package :specializes comlex-verb
     :realization (:verb  "package" :s SUBJECT :o OBJECT))

(define-category page :specializes comlex-verb
     :realization (:verb  "page" :s SUBJECT :o OBJECT))

(define-category paint :specializes comlex-verb
     :binds
      ((IN top)
       (OVER top)
       (INTO top)
       (ACROSS top)
       (ON top)
       (TO top))
     :realization (:verb  "paint" :s SUBJECT :o OBJECT :in IN :over OVER :into INTO :across ACROSS :on ON :to TO))

(define-category pair :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "pair" :s SUBJECT :o OBJECT :with WITH))

(define-category panic :specializes comlex-verb
     :binds
      ((INTO top)
       (|OUT OF| top))
     :realization (:verb ( "panic"  :TENSED/SINGULAR "panics" :PRESENT-PARTICIPLE "panicking" :PAST-TENSE "panicked")
 :s SUBJECT :o OBJECT :into INTO :|OUT OF| |OUT OF|))

(define-category paper :specializes comlex-verb
     :realization (:verb  "paper" :s SUBJECT :o OBJECT))

;;; found existing category PARALLEL in #P"SPARSER:BIO;BIO-PREDICATIONS.LISP"

(define-category parallel-cl-verb :specializes comlex-verb
     :realization (:verb ( "parallel"  :TENSED/SINGULAR "parallels" :PRESENT-PARTICIPLE "parallelling" :PAST-PARTICIPLE "parallelled" :PAST-TENSE "parallelled")
 :s SUBJECT :o OBJECT))

(define-category parcel :specializes comlex-verb
     :binds
      ((IN top)
       (TO top))
     :realization (:verb ( "parcel"  :TENSED/SINGULAR "parcels" :PRESENT-PARTICIPLE ("parcelling"
                                                                                     "parceling") :PAST-TENSE ("parcelled"
                                                                                                               "parceled"))
 :s SUBJECT :o OBJECT :in IN :to TO))

(define-category partake :specializes comlex-verb
     :binds
      ((IN top)
       (OF top))
     :realization (:verb ( "partake"  :TENSED/SINGULAR "partakes" :PAST-TENSE "partook")
 :s SUBJECT :in IN :of OF))

(define-category pass :specializes comlex-verb
     :binds
      ((BETWEEN top)
       (FROM top)
       (INTO top)
       (OVER top)
       (UNDER top)
       (FOR top)
       (WITH top)
       (WITHOUT top)
       (THROUGH top)
       (ON top)
       (TO top))
     :realization (:verb  "pass" :s SUBJECT :o OBJECT :between BETWEEN :from FROM :into INTO :over OVER :under UNDER :for FOR :with WITH :without WITHOUT :through THROUGH :on ON :to TO))

(define-category patent :specializes comlex-verb
     :realization (:verb  "patent" :s SUBJECT :o OBJECT))

(define-category patronize :specializes comlex-verb
     :realization (:verb  "patronize" :s SUBJECT :o OBJECT))

(define-category pause :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "pause" :s SUBJECT :for FOR))

(define-category pave :specializes comlex-verb
     :realization (:verb  "pave" :s SUBJECT :o OBJECT))

(define-category pay :specializes comlex-verb
     :binds
      ((INTO top)
       (IN top)
       (|OUT OF| top)
       (WITH top)
       (FOR top))
     :realization (:verb ( "pay"  :TENSED/SINGULAR "pays" :PAST-TENSE "paid")
 :s SUBJECT :o OBJECT :into INTO :in IN :|OUT OF| |OUT OF| :with WITH :for FOR))

(define-category pension :specializes comlex-verb
     :realization (:verb  "pension" :s SUBJECT :o OBJECT))

;;; found existing category PEOPLE in #P"SPARSER:PEOPLE;KINDS.LISP"

(define-category people-cl-verb :specializes comlex-verb
     :realization (:verb  "people" :s SUBJECT :o OBJECT))

(define-category perceive :specializes comlex-verb
     :binds
      ((IN top))
     :realization (:verb  "perceive" :s SUBJECT :o OBJECT :in IN))

;;; found existing category PERFECT in #P"SPARSER:KINDS;TENSE-ASPECT.LISP"

(define-category perfect-cl-verb :specializes comlex-verb
     :realization (:verb  "perfect" :s SUBJECT :o OBJECT))

(define-category perish :specializes comlex-verb
     :realization (:verb  "perish" :s SUBJECT :o OBJECT))

(define-category permit :specializes comlex-verb
     :realization (:verb ( "permit"  :TENSED/SINGULAR "permits" :PRESENT-PARTICIPLE "permitting" :PAST-TENSE "permitted")
 :s SUBJECT :o OBJECT))

(define-category perpetrate :specializes comlex-verb
     :binds
      ((ON top)
       (UPON top))
     :realization (:verb  "perpetrate" :s SUBJECT :o OBJECT :on ON :upon UPON))

(define-category personalize :specializes comlex-verb
     :realization (:verb  "personalize" :s SUBJECT :o OBJECT))

(define-category persuade :specializes comlex-verb
     :binds
      ((OF top)
       (TO top))
     :realization (:verb  "persuade" :s SUBJECT :o OBJECT :of OF :to TO))

(define-category pertain :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "pertain" :s SUBJECT :to TO))

(define-category pet :specializes comlex-verb
     :realization (:verb ( "pet"  :TENSED/SINGULAR "pets" :PRESENT-PARTICIPLE "petting" :PAST-TENSE "petted")
 :s SUBJECT :o OBJECT))

(define-category peter :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "peter" :s SUBJECT :to TO))

(define-category phase :specializes comlex-verb
     :binds
      ((INTO top))
     :realization (:verb  "phase" :s SUBJECT :o OBJECT :into INTO))

(define-category phone :specializes comlex-verb
     :realization (:verb  "phone" :s SUBJECT :o OBJECT))

;;; found existing category PHRASE in #P"SPARSER:REQUIRED-BRACKETS;REQUIRED.LISP"

(define-category phrase-cl-verb :specializes comlex-verb
     :realization (:verb  "phrase" :s SUBJECT :o OBJECT))

(define-category pick :specializes comlex-verb
     :binds
      ((ALONG top)
       (FOR top)
       (INTO top)
       (|OUT OF| top)
       (OVER top)
       (FROM top)
       (OFF top)
       (THROUGH top)
       (ON top))
     :realization (:verb  "pick" :s SUBJECT :o OBJECT :along ALONG :for FOR :into INTO :|OUT OF| |OUT OF| :over OVER :from FROM :off OFF :through THROUGH :on ON))

(define-category pickle :specializes comlex-verb
     :realization (:verb  "pickle" :s SUBJECT :o OBJECT))

(define-category picture :specializes comlex-verb
     :binds
      ((IN top)
       (FROM top)
       (ON top))
     :realization (:verb  "picture" :s SUBJECT :o OBJECT :in IN :from FROM :on ON))

(define-category piece :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "piece" :s SUBJECT :o OBJECT :from FROM))

(define-category plague :specializes comlex-verb
     :realization (:verb  "plague" :s SUBJECT :o OBJECT))

(define-category plan :specializes comlex-verb
     :binds
      ((ON top)
       (FOR top))
     :realization (:verb ( "plan"  :TENSED/SINGULAR "plans" :PRESENT-PARTICIPLE "planning" :PAST-TENSE "planned")
 :s SUBJECT :o OBJECT :on ON :for FOR))

;;; found existing category PLAY in #P"SPARSER:DOSSIERS;VERBS.LISP"

(define-category play-cl-verb :specializes comlex-verb
     :binds
      ((FOR top)
       (ON top)
       (UPON top)
       (AGAINST top)
       (WITH top))
     :realization (:verb  "play" :s SUBJECT :o OBJECT :for FOR :on ON :upon UPON :against AGAINST :with WITH))

(define-category plot :specializes comlex-verb
     :realization (:verb ( "plot"  :TENSED/SINGULAR "plots" :PRESENT-PARTICIPLE "plotting" :PAST-TENSE "plotted")
 :s SUBJECT :o OBJECT))

(define-category point :specializes comlex-verb
     :binds
      ((ON top)
       (|OUT OF| top)
       (TO top)
       (DOWN top)
       (AT top)
       (IN top)
       (TOWARD top))
     :realization (:verb  "point" :s SUBJECT :o OBJECT :on ON :|OUT OF| |OUT OF| :to TO :down DOWN :at AT :in IN :toward TOWARD))

(define-category poison :specializes comlex-verb
     :binds
      ((AGAINST top)
       (WITH top))
     :realization (:verb  "poison" :s SUBJECT :o OBJECT :against AGAINST :with WITH))

(define-category polarize :specializes comlex-verb
     :binds
      ((INTO top)
       (ON top)
       (TOWARDS top)
       (TOWARD top))
     :realization (:verb  "polarize" :s SUBJECT :o OBJECT :into INTO :on ON :towards TOWARDS :toward TOWARD))

(define-category police :specializes comlex-verb
     :binds
      ((AGAINST top)
       (FOR top))
     :realization (:verb  "police" :s SUBJECT :o OBJECT :against AGAINST :for FOR))

(define-category polish :specializes comlex-verb
     :binds
      ((ON top))
     :realization (:verb  "polish" :s SUBJECT :o OBJECT :on ON))

(define-category politicize :specializes comlex-verb
     :realization (:verb  "politicize" :s SUBJECT :o OBJECT))

(define-category poll :specializes comlex-verb
     :binds
      ((ON top)
       (ABOUT top))
     :realization (:verb  "poll" :s SUBJECT :o OBJECT :on ON :about ABOUT))

(define-category pollute :specializes comlex-verb
     :realization (:verb  "pollute" :s SUBJECT :o OBJECT))

(define-category ponder :specializes comlex-verb
     :binds
      ((ABOUT top)
       (ON top)
       (OVER top))
     :realization (:verb  "ponder" :s SUBJECT :o OBJECT :about ABOUT :on ON :over OVER))

(define-category pool :specializes comlex-verb
     :realization (:verb  "pool" :s SUBJECT :o OBJECT))

(define-category populate :specializes comlex-verb
     :realization (:verb  "populate" :s SUBJECT :o OBJECT))

(define-category port :specializes comlex-verb
     :realization (:verb  "port" :s SUBJECT :o OBJECT))

(define-category portion :specializes comlex-verb
     :binds
      ((AMONG top)
       (BETWEEN top)
       (TO top))
     :realization (:verb  "portion" :s SUBJECT :o OBJECT :among AMONG :between BETWEEN :to TO))

(define-category portray :specializes comlex-verb
     :realization (:verb  "portray" :s SUBJECT :o OBJECT))

(define-category pose :specializes comlex-verb
     :binds
      ((LIKE top)
       (WITH top)
       (FOR top)
       (TO top))
     :realization (:verb  "pose" :s SUBJECT :o OBJECT :like LIKE :with WITH :for FOR :to TO))

;;; found existing category POSITION in #P"SPARSER:BIO;TERMS-TO-MOVE.LISP"

(define-category position-cl-verb :specializes comlex-verb
     :mixins (with-p-dir)
     :realization (:verb  "position" :s SUBJECT :o OBJECT))

(define-category post :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((BEFORE top)
       (AROUND top)
       (AT top)
       (FOR top)
       (BY top)
       (IN top)
       (THROUGHOUT top)
       (ON top))
     :realization (:verb  "post" :s SUBJECT :o OBJECT :before BEFORE :around AROUND :at AT :for FOR :by BY :in IN :throughout THROUGHOUT :on ON))

(define-category postpone :specializes comlex-verb
     :binds
      ((UNTIL top)
       (BY top)
       (FOR top)
       (TO top))
     :realization (:verb  "postpone" :s SUBJECT :o OBJECT :until UNTIL :by BY :for FOR :to TO))

(define-category posture :specializes comlex-verb
     :binds
      ((IN top)
       (TOWARD top))
     :realization (:verb  "posture" :s SUBJECT :o OBJECT :in IN :toward TOWARD))

(define-category potter :specializes comlex-verb
     :binds
      ((IN top)
       (THROUGH top)
       (WITH top))
     :realization (:verb  "potter" :s SUBJECT :o OBJECT :in IN :through THROUGH :with WITH))

(define-category pound :specializes comlex-verb
     :binds
      ((THROUGH top)
       (ON top)
       (AGAINST top)
       (INTO top)
       (TO top))
     :realization (:verb  "pound" :s SUBJECT :o OBJECT :through THROUGH :on ON :against AGAINST :into INTO :to TO))

(define-category pout :specializes comlex-verb
     :realization (:verb  "pout" :s SUBJECT :o OBJECT))

(define-category power :specializes comlex-verb
     :realization (:verb  "power" :s SUBJECT :o OBJECT))

(define-category practice :specializes comlex-verb
     :binds
      ((FOR top)
       (ON top)
       (UPON top))
     :realization (:verb  "practice" :s SUBJECT :o OBJECT :for FOR :on ON :upon UPON))

(define-category practise :specializes comlex-verb
     :realization (:verb  "practise" :s SUBJECT :o OBJECT))

(define-category praise :specializes comlex-verb
     :binds
      ((ABOUT top)
       (FOR top)
       (TO top))
     :realization (:verb  "praise" :s SUBJECT :o OBJECT :about ABOUT :for FOR :to TO))

(define-category preclude :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "preclude" :s SUBJECT :o OBJECT :from FROM))

(define-category predispose :specializes comlex-verb
     :binds
      ((IN top)
       (TOWARD top)
       (TO top))
     :realization (:verb  "predispose" :s SUBJECT :o OBJECT :in IN :toward TOWARD :to TO))

(define-category prefer :specializes comlex-verb
     :binds
      ((FOR top)
       (OVER top)
       (TO top))
     :realization (:verb ( "prefer"  :TENSED/SINGULAR "prefers" :PRESENT-PARTICIPLE "preferring" :PAST-TENSE "preferred")
 :s SUBJECT :o OBJECT :for FOR :over OVER :to TO))

(define-category prejudice :specializes comlex-verb
     :binds
      ((AGAINST top)
       (|IN FAVOR OF| top))
     :realization (:verb  "prejudice" :s SUBJECT :o OBJECT :against AGAINST :|IN FAVOR OF| |IN FAVOR OF|))

(define-category premise :specializes comlex-verb
     :binds
      ((BY top)
       (WITH top))
     :realization (:verb  "premise" :s SUBJECT :o OBJECT :by BY :with WITH))

(define-category preoccupy :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "preoccupy" :s SUBJECT :o OBJECT :with WITH))

(define-category prep :specializes comlex-verb
     :realization (:verb  "prep" :s SUBJECT))

(define-category prescribe :specializes comlex-verb
     :binds
      ((TO top)
       (FROM top)
       (ON top)
       (BETWEEN top)
       (FOR top)
       (AFTER top)
       (BEFORE top))
     :realization (:verb  "prescribe" :s SUBJECT :o OBJECT :to TO :from FROM :on ON :between BETWEEN :for FOR :after AFTER :before BEFORE))

(define-category press :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((INTO top)
       (WITH top)
       (ALONG top)
       (DOWN top)
       (IN top)
       (|OUT OF| top)
       (UPON top)
       (ON top)
       (AGAINST top)
       (FOR top))
     :realization (:verb  "press" :s SUBJECT :o OBJECT :into INTO :with WITH :along ALONG :down DOWN :in IN :|OUT OF| |OUT OF| :upon UPON :on ON :against AGAINST :for FOR))

(define-category pressure :specializes comlex-verb
     :binds
      ((WITH top)
       (|IN FAVOR OF| top)
       (INTO top)
       (ABOUT top)
       (OVER top))
     :realization (:verb  "pressure" :s SUBJECT :o OBJECT :with WITH :|IN FAVOR OF| |IN FAVOR OF| :into INTO :about ABOUT :over OVER))

(define-category presume :specializes comlex-verb
     :realization (:verb  "presume" :s SUBJECT :o OBJECT))

(define-category pretend :specializes comlex-verb
     :realization (:verb  "pretend" :s SUBJECT :o OBJECT))

(define-category prevail :specializes comlex-verb
     :binds
      ((AT top)
       (IN top)
       (ON top)
       (OVER top)
       (UPON top))
     :realization (:verb  "prevail" :s SUBJECT :at AT :in IN :on ON :over OVER :upon UPON))

(define-category prey :specializes comlex-verb
     :binds
      ((ON top)
       (UPON top))
     :realization (:verb  "prey" :s SUBJECT :on ON :upon UPON))

(define-category price :specializes comlex-verb
     :realization (:verb  "price" :s SUBJECT :o OBJECT))

(define-category print :specializes comlex-verb
     :binds
      ((IN top)
       (ON top))
     :realization (:verb  "print" :s SUBJECT :o OBJECT :in IN :on ON))

(define-category prize :specializes comlex-verb
     :binds
      ((FOR top)
       (|OUT OF| top))
     :realization (:verb  "prize" :s SUBJECT :o OBJECT :for FOR :|OUT OF| |OUT OF|))

(define-category proceed :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((ALONG top)
       (FROM top)
       (TO top)
       (WITH top))
     :realization (:verb  "proceed" :s SUBJECT :o OBJECT :along ALONG :from FROM :to TO :with WITH))

;;; found existing category PROCESS in #P"SPARSER:KINDS;PROCESSES.LISP"

(define-category process-cl-verb :specializes comlex-verb
     :binds
      ((INTO top)
       (FOR top))
     :realization (:verb  "process" :s SUBJECT :o OBJECT :into INTO :for FOR))

(define-category profile :specializes comlex-verb
     :realization (:verb  "profile" :s SUBJECT :o OBJECT))

(define-category profit :specializes comlex-verb
     :binds
      ((FROM top)
       (ON top))
     :realization (:verb  "profit" :s SUBJECT :o OBJECT :from FROM :on ON))

(define-category program :specializes comlex-verb
     :realization (:verb ( "program"  :TENSED/SINGULAR "programs" :PRESENT-PARTICIPLE "programming" :PAST-TENSE "programmed")
 :s SUBJECT :o OBJECT))

(define-category progress :specializes comlex-verb
     :mixins (with-p-dir)
     :realization (:verb  "progress" :s SUBJECT))

(define-category prohibit :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  ("prohibit"  :past-tense "prohibited" :past-participle "prohibited" :present-participle "prohibiting") :s SUBJECT :o OBJECT :from FROM))

(define-category project :specializes comlex-verb
     :binds
      ((FROM top)
       (THROUGH top)
       (INTO top)
       (TO top)
       (ON top)
       (ONTO top)
       (TOWARDS top)
       (TOWARD top))
     :realization (:verb  "project" :s SUBJECT :o OBJECT :from FROM :through THROUGH :into INTO :to TO :on ON :onto ONTO :towards TOWARDS :toward TOWARD))

(define-category promise :specializes comlex-verb
     :realization (:verb  "promise" :s SUBJECT :o OBJECT))

(define-category prompt :specializes comlex-verb
     :binds
      ((INTO top))
     :realization (:verb  "prompt" :s SUBJECT :o OBJECT :into INTO))

(define-category pronounce :specializes comlex-verb
     :binds
      ((|IN FAVOR OF| top)
       (ON top))
     :realization (:verb  "pronounce" :s SUBJECT :o OBJECT :|IN FAVOR OF| |IN FAVOR OF| :on ON))

(define-category proposition :specializes comlex-verb
     :realization (:verb  "proposition" :s SUBJECT :o OBJECT))

(define-category prospect :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "prospect" :s SUBJECT :o OBJECT :for FOR))

(define-category protest :specializes comlex-verb
     :binds
      ((TO top)
       (OVER top)
       (AGAINST top)
       (FOR top))
     :realization (:verb  "protest" :s SUBJECT :o OBJECT :to TO :over OVER :against AGAINST :for FOR))

(define-category provoke :specializes comlex-verb
     :binds
      ((AMONG top)
       (INTO top)
       (TO top))
     :realization (:verb  "provoke" :s SUBJECT :o OBJECT :among AMONG :into INTO :to TO))

(define-category publicize :specializes comlex-verb
     :realization (:verb  "publicize" :s SUBJECT :o OBJECT))

(define-category publish :specializes comlex-verb
     :binds
      ((IN top))
     :realization (:verb  "publish" :s SUBJECT :o OBJECT :in IN))

(define-category punch :specializes comlex-verb
     :binds
      ((IN top)
       (|OUT OF| top))
     :realization (:verb  "punch" :s SUBJECT :o OBJECT :in IN :|OUT OF| |OUT OF|))

(define-category punish :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "punish" :s SUBJECT :o OBJECT :for FOR))

(define-category purchase :specializes comlex-verb
     :binds
      ((AT top)
       (FROM top)
       (FOR top))
     :realization (:verb  "purchase" :s SUBJECT :o OBJECT :at AT :from FROM :for FOR))

(define-category pursue :specializes comlex-verb
     :mixins (with-p-dir)
     :realization (:verb  "pursue" :s SUBJECT :o OBJECT))

(define-category puzzle :specializes comlex-verb
     :binds
      ((OVER top))
     :realization (:verb  "puzzle" :s SUBJECT :o OBJECT :over OVER))

(define-category qualify :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "qualify" :s SUBJECT :o OBJECT :for FOR))

(define-category quantify :specializes comlex-verb
     :realization (:verb  "quantify" :s SUBJECT :o OBJECT))


(define-category quarantine :specializes state ;;????
  :mixins (comlex-verb)
                 :binds ((location location))
                 :realization (:verb "quarantine"
                                     :noun "quarantine"
                                     :of object
                                     :in location
                                     :s SUBJECT :o OBJECT))


(define-category queen :specializes comlex-verb
     :realization (:verb  "queen" :s SUBJECT :o OBJECT))

(define-category quest :specializes comlex-verb
     :binds
      ((AFTER top)
       (FOR top))
     :realization (:verb  "quest" :s SUBJECT :after AFTER :for FOR))

(define-category quiet :specializes comlex-verb
     :realization (:verb  "quiet" :s SUBJECT :o OBJECT))

(define-category quit :specializes comlex-verb
     :binds
      ((OVER top))
     :realization (:verb ( "quit"  :TENSED/SINGULAR "quits" :PRESENT-PARTICIPLE "quitting" :PAST-TENSE "quitted")
 :s SUBJECT :o OBJECT :over OVER))

(define-category quiz :specializes comlex-verb
     :binds
      ((ABOUT top)
       (ON top))
     :realization (:verb ( "quiz"  :TENSED/SINGULAR "quizes" :PRESENT-PARTICIPLE "quizzing" :PAST-TENSE "quizzed")
 :s SUBJECT :o OBJECT :about ABOUT :on ON))

(define-category quote :specializes comlex-verb
     :binds
      ((IN top)
       (FROM top)
       (AT top))
     :realization (:verb  "quote" :s SUBJECT :o OBJECT :in IN :from FROM :at AT))

(define-category race :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((AGAINST top)
       (FOR top)
       (WITH top))
     :realization (:verb  "race" :s SUBJECT :o OBJECT :against AGAINST :for FOR :with WITH))

(define-category racket :specializes comlex-verb
     :realization (:verb  "racket" :s SUBJECT))

(define-category raffle :specializes comlex-verb
     :realization (:verb  "raffle" :s SUBJECT :o OBJECT))

(define-category raft :specializes comlex-verb
     :realization (:verb  "raft" :s SUBJECT :o OBJECT))

(define-category rag :specializes comlex-verb
     :binds
      ((FOR top)
       (ON top))
     :realization (:verb ( "rag"  :TENSED/SINGULAR "rags" :PRESENT-PARTICIPLE "ragging" :PAST-TENSE "ragged")
 :s SUBJECT :for FOR :on ON))

(define-category rail :specializes comlex-verb
     :binds
      ((ABOUT top)
       (AGAINST top)
       (FOR top))
     :realization (:verb  "rail" :s SUBJECT :o OBJECT :about ABOUT :against AGAINST :for FOR))

(define-category rally :specializes comlex-verb
     :binds
      ((INTO top)
       (PAST top)
       (FROM top)
       (BEHIND top)
       (FOR top)
       (ON top)
       (BEFORE top)
       (AROUND top)
       (AGAINST top)
       (TO top))
     :realization (:verb  "rally" :s SUBJECT :o OBJECT :into INTO :past PAST :from FROM :behind BEHIND :for FOR :on ON :before BEFORE :around AROUND :against AGAINST :to TO))

(define-category rap :specializes comlex-verb
     :binds
      ((AGAINST top)
       (ON top)
       (INTO top)
       (FOR top)
       (TO top))
     :realization (:verb ( "rap"  :TENSED/SINGULAR "raps" :PRESENT-PARTICIPLE "rapping" :PAST-TENSE "rapped")
 :s SUBJECT :o OBJECT :against AGAINST :on ON :into INTO :for FOR :to TO))

(define-category ration :specializes comlex-verb
     :realization (:verb  "ration" :s SUBJECT :o OBJECT))

(define-category rationalize :specializes comlex-verb
     :binds
      ((BY top)
       (WITH top)
       (FOR top)
       (TO top))
     :realization (:verb  "rationalize" :s SUBJECT :o OBJECT :by BY :with WITH :for FOR :to TO))

(define-category realize :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "realize" :s SUBJECT :o OBJECT :to TO))

(define-category reap :specializes comlex-verb
     :realization (:verb  "reap" :s SUBJECT :o OBJECT))


(define-category reassess :specializes comlex-verb
     :binds
      ((AT top))
     :realization (:verb  "reassess" :s SUBJECT :o OBJECT :at AT))

(define-category reassure :specializes comlex-verb
     :binds
      ((ABOUT top))
     :realization (:verb  "reassure" :s SUBJECT :o OBJECT :about ABOUT))

(define-category rebel :specializes comlex-verb
     :binds
      ((AGAINST top))
     :realization (:verb ( "rebel"  :TENSED/SINGULAR "rebels" :PRESENT-PARTICIPLE "rebelling" :PAST-TENSE "rebelled")
 :s SUBJECT :against AGAINST))

(define-category rebuke :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "rebuke" :s SUBJECT :o OBJECT :for FOR))

(define-category rebut :specializes comlex-verb
     :binds
      ((ON top)
       (WITH top))
     :realization (:verb ( "rebut"  :TENSED/SINGULAR "rebuts" :PRESENT-PARTICIPLE "rebutting" :PAST-TENSE "rebutted")
 :s SUBJECT :o OBJECT :on ON :with WITH))

(define-category recall :specializes comlex-verb
     :binds
      ((FOR top)
       (TO top))
     :realization (:verb  "recall" :s SUBJECT :o OBJECT :for FOR :to TO))

(define-category receipt :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "receipt" :s SUBJECT :o OBJECT :for FOR))

(define-category receive :specializes comlex-verb
  :binds
  ((FROM top)
   (INTO top))
  :realization
  (:verb  "receive"
   :noun "receipt"
   :s SUBJECT :o OBJECT :from FROM :into INTO
   :of :object))

(define-category recommend :specializes comlex-verb
     :binds
      ((AGAINST top)
       (FOR top)
       (TO top))
     :realization (:verb  "recommend" :s SUBJECT :o OBJECT :against AGAINST :for FOR :to TO))

(define-category reconcile :specializes comlex-verb
     :binds
      ((TO top)
       (WITH top))
     :realization (:verb  "reconcile" :s SUBJECT :o OBJECT :to TO :with WITH))

(define-category reconstruct :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "reconstruct" :s SUBJECT :o OBJECT :with WITH))

(define-category record :specializes comlex-verb
     :binds
      ((AT top)
       (IN top)
       (FOR top)
       (ON top))
     :realization (:verb  "record" :s SUBJECT :o OBJECT :at AT :in IN :for FOR :on ON))

(define-category recount :specializes comlex-verb
     :realization (:verb  "recount" :s SUBJECT :o OBJECT))

(define-category recover :specializes comlex-verb
     :binds
      ((THROUGH top)
       (IN top)
       (FROM top)
       (|OUT OF| top))
     :realization (:verb  "recover" :s SUBJECT :o OBJECT :through THROUGH :in IN :from FROM :|OUT OF| |OUT OF|))

(define-category rectify :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "rectify" :s SUBJECT :o OBJECT :with WITH))

(define-category recycle :specializes comlex-verb
     :binds
      ((IN top)
       (FOR top)
       (WITH top))
     :realization (:verb  "recycle" :s SUBJECT :o OBJECT :in IN :for FOR :with WITH))

(define-category redact :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "redact" :s SUBJECT :o OBJECT :for FOR))

(define-category redefine :specializes comlex-verb
     :binds
      ((IN top)
       (ON top)
       (THROUGH top)
       (WITH top))
     :realization (:verb  "redefine" :s SUBJECT :o OBJECT :in IN :on ON :through THROUGH :with WITH))

(define-category refer :specializes comlex-verb
     :binds
      ((LIKE top)
       (FOR top)
       (TO top))
     :realization (:verb ( "refer"  :TENSED/SINGULAR "refers" :PRESENT-PARTICIPLE "referring" :PAST-TENSE "referred")
 :s SUBJECT :o OBJECT :like LIKE :for FOR :to TO))

(define-category refine :specializes comlex-verb
     :binds
      ((FROM top)
       (WITH top))
     :realization (:verb  "refine" :s SUBJECT :o OBJECT :from FROM :with WITH))

(define-category reflect :specializes comlex-verb
     :binds
      ((TO top)
       (ABOUT top)
       (FROM top)
       (OFF top)
       (|OFF OF| top)
       (ON top)
       (UPON top))
     :realization (:verb  "reflect" :s SUBJECT :o OBJECT :to TO :about ABOUT :from FROM :off OFF :|OFF OF| |OFF OF| :on ON :upon UPON))

(define-category reform :specializes comlex-verb
     :binds
      ((FROM top)
       (INTO top))
     :realization (:verb  "reform" :s SUBJECT :o OBJECT :from FROM :into INTO))

(define-category refrain :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "refrain" :s SUBJECT :from FROM))

(define-category refund :specializes comlex-verb
     :binds
      ((FOR top)
       (TO top))
     :realization (:verb  "refund" :s SUBJECT :o OBJECT :for FOR :to TO))

(define-category refuse :specializes comlex-verb
     :realization (:verb  "refuse" :s SUBJECT :o OBJECT))

(define-category regain :specializes comlex-verb
     :binds
      ((AGAINST top)
       (FROM top))
     :realization (:verb  "regain" :s SUBJECT :o OBJECT :against AGAINST :from FROM))

(define-category regard :specializes comlex-verb
     :binds
      ((|IN TERMS OF| top)
       (IN top)
       (WITH top))
     :realization (:verb  "regard" :s SUBJECT :o OBJECT :|IN TERMS OF| |IN TERMS OF| :in IN :with WITH))

(define-category register :specializes comlex-verb
     :binds
      ((AT top)
       (ON top)
       (UNDER top)
       (IN top)
       (INTO top)
       (FOR top)
       (WITH top))
     :realization (:verb  "register" :s SUBJECT :o OBJECT :at AT :on ON :under UNDER :in IN :into INTO :for FOR :with WITH))

(define-category regress :specializes comlex-verb
     :binds
      ((INTO top)
       (TO top)
       (AGAINST top)
       (WITH top))
     :realization (:verb  "regress" :s SUBJECT :o OBJECT :into INTO :to TO :against AGAINST :with WITH))

(define-category reign :specializes comlex-verb
     :binds
      ((FOR top)
       (OVER top))
     :realization (:verb  "reign" :s SUBJECT :for FOR :over OVER))

(define-category reinforce :specializes comlex-verb
     :binds
      ((AGAINST top)
       (WITH top))
     :realization (:verb  "reinforce" :s SUBJECT :o OBJECT :against AGAINST :with WITH))

(define-category reinstate :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "reinstate" :s SUBJECT :o OBJECT :for FOR))

(define-category reject :specializes comlex-verb
     :binds
      ((IN top)
       (ON top)
       (FOR top)
       (FROM top))
     :realization (:verb  "reject" :s SUBJECT :o OBJECT :in IN :on ON :for FOR :from FROM))

(define-category relate :specializes comlex-verb
     :binds
      ((WITH top)
       (TO top))
     :realization (:verb  "relate" :s SUBJECT :o OBJECT :with WITH :to TO))

(define-category relax :specializes comlex-verb
     :binds
      ((ABOUT top))
     :realization (:verb  "relax" :s SUBJECT :o OBJECT :about ABOUT))

(define-category relay :specializes comlex-verb
     :binds
      ((IN top)
       (ONTO top)
       (ON top)
       (TO top))
     :realization (:verb ( "relay"  :TENSED/SINGULAR "relays" :PAST-TENSE ("relaid" "relayed"))
 :s SUBJECT :o OBJECT :in IN :onto ONTO :on ON :to TO))

(define-category remark :specializes comlex-verb
     :binds
      ((ON top)
       (ABOUT top))
     :realization (:verb  "remark" :s SUBJECT :o OBJECT :on ON :about ABOUT))

(define-category remedy :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "remedy" :s SUBJECT :o OBJECT :with WITH))

(define-category remember :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "remember" :s SUBJECT :o OBJECT :to TO))

(define-category remind :specializes comlex-verb
     :binds
      ((OF top))
     :realization (:verb  "remind" :s SUBJECT :o OBJECT :of OF))

(define-category remit :specializes comlex-verb
     :binds
      ((WITH top)
       (TO top))
     :realization (:verb ( "remit"  :TENSED/SINGULAR "remits" :PRESENT-PARTICIPLE "remitting" :PAST-TENSE "remitted")
 :s SUBJECT :o OBJECT :with WITH :to TO))

(define-category rename :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "rename" :s SUBJECT :o OBJECT :for FOR))

(define-category render :specializes comlex-verb
     :binds
      ((FROM top)
       (|OUT OF| top))
     :realization (:verb  "render" :s SUBJECT :o OBJECT :from FROM :|OUT OF| |OUT OF|))

(define-category renew :specializes comlex-verb
     :binds
      ((FOR top)
       (THROUGH top))
     :realization (:verb  "renew" :s SUBJECT :o OBJECT :for FOR :through THROUGH))

(define-category reopen :specializes comlex-verb
     :realization (:verb  "reopen" :s SUBJECT :o OBJECT))

(define-category repeat :specializes comlex-verb
     :binds
      ((BEFORE top)
       (FOR top)
       (TO top))
     :realization (:verb  "repeat" :s SUBJECT :o OBJECT :before BEFORE :for FOR :to TO))

(define-category replace :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "replace" :s SUBJECT :o OBJECT :with WITH))

(define-category reply :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "reply" :s SUBJECT :o OBJECT :to TO))

(define-category reproduce :specializes comlex-verb
     :binds
      ((IN top))
     :realization (:verb  "reproduce" :s SUBJECT :o OBJECT :in IN))

(define-category reprogram :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "reprogram" :s SUBJECT :o OBJECT :for FOR))

(define-category repute :specializes comlex-verb
     :realization (:verb  "repute" :s SUBJECT :o OBJECT))

(define-category request :specializes comlex-verb
     :binds
      ((FOR top)
       (FROM top))
     :realization (:verb  "request" :s SUBJECT :o OBJECT :for FOR :from FROM))

(define-category rerun :specializes comlex-verb
     :binds
      ((FOR top)
       (ON top))
     :realization (:verb ( "rerun"  :TENSED/SINGULAR "reruns" :PRESENT-PARTICIPLE "rerunning" :PAST-TENSE "reran")
 :s SUBJECT :o OBJECT :for FOR :on ON))

(define-category rescue :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "rescue" :s SUBJECT :o OBJECT :from FROM))

(define-category research :specializes comlex-verb
     :realization (:verb  "research" :s SUBJECT :o OBJECT))

(define-category resemble :specializes comlex-verb
     :realization (:verb  "resemble" :s SUBJECT :o OBJECT))

(define-category reserve :specializes comlex-verb
     :binds
      ((TO top)
       (UNDER top)
       (FOR top)
       (THROUGH top)
       (TILL top))
     :realization (:verb  "reserve" :s SUBJECT :o OBJECT :to TO :under UNDER :for FOR :through THROUGH :till TILL))

(define-category reset :specializes comlex-verb
     :binds
      ((AT top)
       (FOR top)
       (PAST top)
       (ON top)
       (TO top))
     :realization (:verb ( "reset"  :TENSED/SINGULAR "resets" :PRESENT-PARTICIPLE "resetting" :PAST-TENSE "reset")
 :s SUBJECT :o OBJECT :at AT :for FOR :past PAST :on ON :to TO))

(define-category reshape :specializes comlex-verb
     :binds
      ((INTO top)
       (FROM top))
     :realization (:verb  "reshape" :s SUBJECT :o OBJECT :into INTO :from FROM))

(define-category resolve :specializes comlex-verb
     :binds
      ((BY top)
       (IN top)
       (WITH top)
       (INTO top))
     :realization (:verb  "resolve" :s SUBJECT :o OBJECT :by BY :in IN :with WITH :into INTO))

(define-category resonate :specializes comlex-verb
     :binds
      ((IN top)
       (INSIDE top)
       (THROUGH top)
       (THROUGHOUT top))
     :realization (:verb  "resonate" :s SUBJECT :in IN :inside INSIDE :through THROUGH :throughout THROUGHOUT))

(define-category respect :specializes comlex-verb
     :realization (:verb  "respect" :s SUBJECT :o OBJECT))

(define-category rest :specializes comlex-verb
     :binds
      ((FOR top)
       (ATOP top)
       (AGAINST top)
       (AT top)
       (FROM top)
       (IN top)
       (INSIDE top)
       (UPON top)
       (WITH top)
       (ACROSS top)
       (ON top))
     :realization (:verb  "rest" :s SUBJECT :o OBJECT :for FOR :atop ATOP :against AGAINST :at AT :from FROM :in IN :inside INSIDE :upon UPON :with WITH :across ACROSS :on ON))

(define-category restart :specializes comlex-verb
     :binds
      ((AT top)
       (FROM top))
     :realization (:verb  "restart" :s SUBJECT :o OBJECT :at AT :from FROM))

(define-category restore :specializes comlex-verb
     :binds
      ((FOR top)
       (TO top))
     :realization (:verb  "restore" :s SUBJECT :o OBJECT :for FOR :to TO))

(define-category restrain :specializes comlex-verb
     :binds
      ((FROM top)
       (WITH top))
     :realization (:verb  "restrain" :s SUBJECT :o OBJECT :from FROM :with WITH))

(define-category restrict :specializes comlex-verb
     :binds
      ((FROM top)
       (UNDER top)
       (IN top)
       (TO top))
     :realization (:verb  "restrict" :s SUBJECT :o OBJECT :from FROM :under UNDER :in IN :to TO))

(define-category retail :specializes comlex-verb
     :binds
      ((AT top)
       (IN top)
       (THROUGH top)
       (UNDER top)
       (FOR top))
     :realization (:verb  "retail" :s SUBJECT :o OBJECT :at AT :in IN :through THROUGH :under UNDER :for FOR))

(define-category rethink :specializes comlex-verb
     :realization (:verb ( "rethink"  :TENSED/SINGULAR "rethinks" :PAST-TENSE "rethought")
 :s SUBJECT :o OBJECT))

(define-category retire :specializes comlex-verb
     :binds
      ((IN top)
       (INTO top)
       (TO top)
       (FROM top))
     :realization (:verb  "retire" :s SUBJECT :o OBJECT :in IN :into INTO :to TO :from FROM))

(define-category retract :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "retract" :s SUBJECT :o OBJECT :from FROM))

(define-category retrieve :specializes comlex-verb
     :binds
      ((FROM top)
       (|OUT OF| top))
     :realization (:verb  "retrieve" :s SUBJECT :o OBJECT :from FROM :|OUT OF| |OUT OF|))

(define-category review :specializes comlex-verb
     :binds
      ((FROM top)
       (FOR top))
     :realization (:verb  "review" :s SUBJECT :o OBJECT :from FROM :for FOR))

(define-category revise :specializes comlex-verb
     :binds
      ((FROM top)
       (INTO top)
       (TO top))
     :realization (:verb  "revise" :s SUBJECT :o OBJECT :from FROM :into INTO :to TO))

(define-category revolt :specializes comlex-verb
     :binds
      ((AGAINST top))
     :realization (:verb  "revolt" :s SUBJECT :o OBJECT :against AGAINST))

(define-category revolve :specializes comlex-verb
     :binds
      ((AROUND top))
     :realization (:verb  "revolve" :s SUBJECT :around AROUND))

(define-category reward :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "reward" :s SUBJECT :o OBJECT :for FOR))

(define-category reword :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "reword" :s SUBJECT :o OBJECT :for FOR))

(define-category rid :specializes comlex-verb
     :binds
      ((OF top))
     :realization (:verb ( "rid"  :TENSED/SINGULAR "rids" :PRESENT-PARTICIPLE "ridding" :PAST-TENSE "rid")
 :s SUBJECT :o OBJECT :of OF))

(define-category ridge :specializes comlex-verb
     :realization (:verb  "ridge" :s SUBJECT :o OBJECT))

;;; found existing category RIGHT in #P"SPARSER:DOSSIERS;DIRECTIONS.LISP"

(define-category right-cl-verb :specializes comlex-verb
     :realization (:verb  "right" :s SUBJECT :o OBJECT))

(define-category rim :specializes comlex-verb
     :realization (:verb ( "rim"  :TENSED/SINGULAR "rims" :PRESENT-PARTICIPLE "rimming" :PAST-TENSE "rimmed")
 :s SUBJECT :o OBJECT))

(define-category rinse :specializes comlex-verb
     :binds
      ((IN top)
       (WITH top))
     :realization (:verb  "rinse" :s SUBJECT :o OBJECT :in IN :with WITH))

(define-category ripple :specializes comlex-verb
     :binds
      ((WITH top)
       (ACROSS top)
       (THROUGH top))
     :realization (:verb  "ripple" :s SUBJECT :o OBJECT :with WITH :across ACROSS :through THROUGH))

(define-category rise :specializes comlex-verb
     :binds
      ((ON top)
       (OVER top)
       (ABOVE top)
       (AGAINST top)
       (|OUT OF| top)
       (TOWARD top)
       (FROM top)
       (TO top))
     :realization (:verb ( "rise"  :TENSED/SINGULAR "rises" :PAST-TENSE "rose")
 :s SUBJECT :o OBJECT :on ON :over OVER :above ABOVE :against AGAINST :|OUT OF| |OUT OF| :toward TOWARD :from FROM :to TO))

(define-category take-a-risk :specializes comlex-verb
     :binds
      ((FOR top)
       (ON top))
  :realization (:verb  "risk" :s SUBJECT :o OBJECT :for FOR :on ON))

(define-category risk :specializes related-thing
  :binds ((at-risk top)
          (risk-to top))
  :realization (:noun  "risk"
                :for at-risk
                :to risk-to))

(define-category rival :specializes comlex-verb
     :binds
      ((WITH top)
       (IN top)
       (FOR top))
     :realization (:verb ( "rival"  :TENSED/SINGULAR "rivals" :PRESENT-PARTICIPLE "rivalling" :PAST-TENSE "rivalled")
 :s SUBJECT :o OBJECT :with WITH :in IN :for FOR))

(define-category rivet :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "rivet" :s SUBJECT :o OBJECT :with WITH))

(define-category room :specializes comlex-verb
     :binds
      ((WITH top)
       (BELOW top)
       (AT top)
       (INSIDE top)
       (IN top)
       (OVER top)
       (UNDER top))
     :realization (:verb  "room" :s SUBJECT :o OBJECT :with WITH :below BELOW :at AT :inside INSIDE :in IN :over OVER :under UNDER))

(define-category root :specializes comlex-verb
     :binds
      ((IN top)
       (INTO top)
       (FOR top))
     :realization (:verb  "root" :s SUBJECT :o OBJECT :in IN :into INTO :for FOR))

(define-category rough :specializes comlex-verb
     :realization (:verb  "rough" :s SUBJECT :o OBJECT))

(define-category round :specializes comlex-verb
     :binds
      ((WITHIN top)
       (TO top))
     :realization (:verb  "round" :s SUBJECT :o OBJECT :within WITHIN :to TO))

(define-category row :specializes comlex-verb
     :mixins (with-p-dir)
     :realization (:verb  "row" :s SUBJECT :o OBJECT))

(define-category rub :specializes comlex-verb
     :binds
      ((ACROSS top)
       (|OFF OF| top)
       (OVER top)
       (ONTO top)
       (ON top)
       (AGAINST top)
       (FOR top)
       (WITH top))
     :realization (:verb ( "rub"  :TENSED/SINGULAR "rubs" :PRESENT-PARTICIPLE "rubbing" :PAST-TENSE "rubbed")
 :s SUBJECT :o OBJECT :across ACROSS :|OFF OF| |OFF OF| :over OVER :onto ONTO :on ON :against AGAINST :for FOR :with WITH))

(define-category rule :specializes comlex-verb
     :binds
      ((|IN FAVOR OF| top)
       (IN top)
       (ON top)
       (FOR top)
       (OVER top)
       (THROUGH top))
     :realization (:verb  "rule" :s SUBJECT :o OBJECT :|IN FAVOR OF| |IN FAVOR OF| :in IN :on ON :for FOR :over OVER :through THROUGH))

(define-category ruminate :specializes comlex-verb
     :binds
      ((ABOUT top)
       (ON top))
     :realization (:verb  "ruminate" :s SUBJECT :about ABOUT :on ON))

(define-category rumor :specializes comlex-verb
     :realization (:verb  "rumor" :s SUBJECT :o OBJECT))

(define-category rush :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((FROM top)
       (ON top)
       (TO top)
       (AT top)
       (UPON top))
     :realization (:verb  "rush" :s SUBJECT :o OBJECT :from FROM :on ON :to TO :at AT :upon UPON))

(define-category sacrifice :specializes comlex-verb
     :binds
      ((FOR top)
       (TO top))
     :realization (:verb  "sacrifice" :s SUBJECT :o OBJECT :for FOR :to TO))

(define-category saddle :specializes comlex-verb
     :binds
      ((IN top)
       (ON top)
       (WITH top))
     :realization (:verb  "saddle" :s SUBJECT :o OBJECT :in IN :on ON :with WITH))

(define-category safeguard :specializes comlex-verb
     :binds
      ((AGAINST top))
     :realization (:verb  "safeguard" :s SUBJECT :o OBJECT :against AGAINST))

(define-category salute :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "salute" :s SUBJECT :o OBJECT :for FOR))

(define-category sanction :specializes comlex-verb
     :realization (:verb  "sanction" :s SUBJECT :o OBJECT))

(define-category sandwich :specializes comlex-verb
     :binds
      ((IN top)
       (BETWEEN top))
     :realization (:verb  "sandwich" :s SUBJECT :o OBJECT :in IN :between BETWEEN))

(define-category satisfy :specializes comlex-verb
     :realization (:verb  "satisfy" :s SUBJECT :o OBJECT))

(define-category saturate :specializes comlex-verb
     :realization (:verb  "saturate" :s SUBJECT :o OBJECT))

(define-category save :specializes comlex-verb
     :binds
      ((FOR top)
       (FROM top)
       (ON top))
     :realization (:verb  "save" :s SUBJECT :o OBJECT :for FOR :from FROM :on ON))

(define-category savvy :specializes comlex-verb
     :realization (:verb  "savvy" :s SUBJECT :o OBJECT))

;;; found existing category SCALE in #P"SPARSER:BIO;ATTRIBUTES.LISP"

(define-category scale-cl-verb :specializes comlex-verb
     :binds
      ((OFF top))
     :realization (:verb  "scale" :s SUBJECT :o OBJECT :off OFF))

(define-category scan :specializes comlex-verb
     :mixins (with-p-dir)
     :realization (:verb ( "scan"  :TENSED/SINGULAR "scans" :PRESENT-PARTICIPLE "scanning" :PAST-TENSE "scanned")
 :s SUBJECT :o OBJECT))

(define-category scare :specializes comlex-verb
     :binds
      ((INTO top)
       (|OUT OF| top))
     :realization (:verb  "scare" :s SUBJECT :o OBJECT :into INTO :|OUT OF| |OUT OF|))

(define-category scatter :specializes comlex-verb
     :mixins (with-p-dir)
     :realization (:verb  "scatter" :s SUBJECT :o OBJECT))

(define-category scent :specializes comlex-verb
     :binds
      ((AFTER top)
       (OF top))
     :realization (:verb  "scent" :s SUBJECT :o OBJECT :after AFTER :of OF))

(define-category schedule :specializes comlex-verb
     :binds
      ((DURING top)
       (AT top)
       (FOR top))
     :realization (:verb  "schedule" :s SUBJECT :o OBJECT :during DURING :at AT :for FOR))

(define-category scheme :specializes comlex-verb
     :binds
      ((AGAINST top)
       (FOR top))
     :realization (:verb  "scheme" :s SUBJECT :o OBJECT :against AGAINST :for FOR))

(define-category school :specializes comlex-verb
     :binds
      ((ABOUT top)
       (IN top)
       (ON top))
     :realization (:verb  "school" :s SUBJECT :o OBJECT :about ABOUT :in IN :on ON))

(define-category score :specializes comlex-verb
     :binds
      ((AGAINST top)
       (OVER top)
       (OFF top)
       (THROUGH top)
       (IN top))
     :realization (:verb  "score" :s SUBJECT :o OBJECT :against AGAINST :over OVER :off OFF :through THROUGH :in IN))

(define-category scrap :specializes comlex-verb
     :realization (:verb ( "scrap"  :TENSED/SINGULAR "scraps" :PRESENT-PARTICIPLE "scrapping" :PAST-TENSE "scrapped")
 :s SUBJECT :o OBJECT))

(define-category screech :specializes comlex-verb
     :binds
      ((AT top)
       (TO top))
     :realization (:verb  "screech" :s SUBJECT :o OBJECT :at AT :to TO))

(define-category scrutinize :specializes comlex-verb
     :realization (:verb  "scrutinize" :s SUBJECT :o OBJECT))

(define-category search :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((AROUND top)
       (THROUGH top)
       (FOR top))
     :realization (:verb  "search" :s SUBJECT :o OBJECT :around AROUND :through THROUGH :for FOR))

;;; found existing category SEASON in #P"SPARSER:TIME;SEASONS.LISP"

(define-category season-cl-verb :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb  "season" :s SUBJECT :o OBJECT :with WITH))

(define-category secure :specializes comlex-verb
     :binds
      ((TO top)
       (FROM top)
       (AGAINST top))
     :realization (:verb  "secure" :s SUBJECT :o OBJECT :to TO :from FROM :against AGAINST))

;;; found existing category SEE in #P"SPARSER:BIO;GENERAL-VERBS.LISP"

(define-category see-cl-verb :specializes comlex-verb
     :binds
      ((BEFORE top)
       (IN top)
       (ABOUT top)
       (THROUGH top))
     :realization (:verb ( "see"  :TENSED/SINGULAR "sees" :PRESENT-PARTICIPLE "seeing" :PAST-TENSE "saw")
 :s SUBJECT :o OBJECT :before BEFORE :in IN :about ABOUT :through THROUGH))

(define-category seek :specializes comlex-verb
     :binds
      ((FOR top)
       (AFTER top))
     :realization (:verb ( "seek"  :TENSED/SINGULAR "seeks" :PAST-TENSE "sought")
 :s SUBJECT :o OBJECT :for FOR :after AFTER))

;;; found existing category SEGMENT in #P"SPARSER:DO-HA;SEGMENT.FASL"

(define-category segment-cl-verb :specializes comlex-verb
     :binds
      ((IN top)
       (INTO top))
     :realization (:verb  "segment" :s SUBJECT :o OBJECT :in IN :into INTO))

;;; found existing category SELL in #P"SPARSER:DOSSIERS;VERBS.LISP"

(define-category sell-cl-verb :specializes comlex-verb
     :binds
      ((IN top)
       (TO top)
       (AT top)
       (FOR top)
       (ON top))
     :realization (:verb ( "sell"  :TENSED/SINGULAR "sells" :PAST-TENSE "sold")
 :s SUBJECT :o OBJECT :in IN :to TO :at AT :for FOR :on ON))

(define-category send :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((INTO top)
       (TO top)
       (FOR top))
     :realization (:verb ( "send"  :TENSED/SINGULAR "sends" :PAST-TENSE "sent")
 :s SUBJECT :o OBJECT :into INTO :to TO :for FOR))

(define-category sense :specializes comlex-verb
     :realization (:verb  "sense" :s SUBJECT :o OBJECT))

(define-category separate :specializes comlex-verb
     :binds
      ((INTO top)
       (BY top)
       (FROM top))
     :realization (:verb  "separate" :s SUBJECT :o OBJECT :into INTO :by BY :from FROM))

(define-category service :specializes comlex-verb
     :realization (:verb  "service" :s SUBJECT :o OBJECT))

(define-category settle :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((TO top)
       (IN top)
       (INTO top)
       (ON top)
       (AT top)
       (UPON top)
       (FOR top)
       (WITH top))
     :realization (:verb  "settle" :s SUBJECT :o OBJECT :to TO :in IN :into INTO :on ON :at AT :upon UPON :for FOR :with WITH))

(define-category sever :specializes comlex-verb
     :binds
      ((BETWEEN top)
       (FROM top)
       (WITH top))
     :realization (:verb  "sever" :s SUBJECT :o OBJECT :between BETWEEN :from FROM :with WITH))

(define-category sex :specializes comlex-verb
     :realization (:verb  "sex" :s SUBJECT :o OBJECT))

(define-category shade :specializes comlex-verb
     :binds
      ((FROM top)
       (INTO top))
     :realization (:verb  "shade" :s SUBJECT :o OBJECT :from FROM :into INTO))

(define-category shadow :specializes comlex-verb
     :binds
      ((OVER top))
     :realization (:verb  "shadow" :s SUBJECT :o OBJECT :over OVER))

(define-category shake :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((IN top)
       (OVER top)
       (AT top)
       (WITH top))
     :realization (:verb ( "shake"  :TENSED/SINGULAR "shakes" :PAST-TENSE "shook")
 :s SUBJECT :o OBJECT :in IN :over OVER :at AT :with WITH))

(define-category shallow :specializes comlex-verb
     :realization (:verb  "shallow" :s SUBJECT :o OBJECT))

(define-category shape :specializes comlex-verb
     :binds
      ((AFTER top)
       (FOR top)
       (INTO top)
       (TO top))
     :realization (:verb  "shape" :s SUBJECT :o OBJECT :after AFTER :for FOR :into INTO :to TO))

(define-category share :specializes comlex-verb
     :binds
      ((BETWEEN top)
       (IN top)
       (WITH top))
     :realization (:verb  "share" :s SUBJECT :o OBJECT :between BETWEEN :in IN :with WITH))

(define-category shave :specializes comlex-verb
     :binds
      ((THROUGH top))
     :realization (:verb  "shave" :s SUBJECT :o OBJECT :through THROUGH))

(define-category shelter :specializes comlex-verb
     :binds
      ((BENEATH top)
       (FROM top)
       (UNDER top))
     :realization (:verb  "shelter" :s SUBJECT :o OBJECT :beneath BENEATH :from FROM :under UNDER))

(define-category shelve :specializes comlex-verb
     :binds
      ((INTO top))
     :realization (:verb  "shelve" :s SUBJECT :o OBJECT :into INTO))

(define-category shield :specializes comlex-verb
     :binds
      ((AGAINST top)
       (FROM top))
     :realization (:verb  "shield" :s SUBJECT :o OBJECT :against AGAINST :from FROM))

(define-category shift :specializes comlex-verb
     :binds
      ((|OUT OF| top)
       (AMONG top)
       (INTO top)
       (ON top)
       (ONTO top)
       (WITHIN top)
       (BETWEEN top)
       (TOWARDS top)
       (TOWARD top)
       (TO top)
       (FROM top))
     :realization (:verb  "shift" :s SUBJECT :o OBJECT :|OUT OF| |OUT OF| :among AMONG :into INTO :on ON :onto ONTO :within WITHIN :between BETWEEN :towards TOWARDS :toward TOWARD :to TO :from FROM))

(define-category shin :specializes comlex-verb
     :binds
      ((DOWN top))
     :realization (:verb ( "shin"  :TENSED/SINGULAR "shins" :PRESENT-PARTICIPLE "shinning" :PAST-TENSE "shinned")
 :s SUBJECT :o OBJECT :down DOWN))

(define-category ship :specializes comlex-verb
     :binds
      ((INTO top)
       (THROUGH top)
       (ACROSS top)
       (OVER top)
       (FROM top)
       (TO top))
     :realization (:verb ( "ship"  :TENSED/SINGULAR "ships" :PRESENT-PARTICIPLE "shipping" :PAST-TENSE "shipped")
 :s SUBJECT :o OBJECT :into INTO :through THROUGH :across ACROSS :over OVER :from FROM :to TO))

(define-category shock :specializes comlex-verb
     :binds
      ((INTO top)
       (|OUT OF| top))
     :realization (:verb  "shock" :s SUBJECT :o OBJECT :into INTO :|OUT OF| |OUT OF|))

(define-category shoe :specializes comlex-verb
     :realization (:verb ( "shoe"  :TENSED/SINGULAR "shoes" :PRESENT-PARTICIPLE "shoeing" :PAST-TENSE "shod")
 :s SUBJECT :o OBJECT))

(define-category shoot :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((THROUGH top)
       (INTO top)
       (PAST top)
       (BEYOND top)
       (AMONG top)
       (FROM top)
       (TO top)
       (NEAR top)
       (|AWAY FROM| top)
       (AT top)
       (FOR top))
     :realization (:verb ( "shoot"  :TENSED/SINGULAR "shoots" :PAST-TENSE "shot")
 :s SUBJECT :o OBJECT :through THROUGH :into INTO :past PAST :beyond BEYOND :among AMONG :from FROM :to TO :near NEAR :|AWAY FROM| |AWAY FROM| :at AT :for FOR))

(define-category shop :specializes comlex-verb
     :binds
      ((TO top)
       (FOR top))
     :realization (:verb ( "shop"  :TENSED/SINGULAR "shops" :PRESENT-PARTICIPLE "shopping" :PAST-TENSE "shopped")
 :s SUBJECT :o OBJECT :to TO :for FOR))

(define-category shore :specializes comlex-verb
     :realization (:verb  "shore" :s SUBJECT :o OBJECT))

(define-category shorten :specializes comlex-verb
     :binds
      ((FROM top)
       (TO top))
     :realization (:verb  "shorten" :s SUBJECT :o OBJECT :from FROM :to TO))

(define-category shout :specializes comlex-verb
     :binds
      ((ABOVE top)
       (FROM top)
       (ABOUT top)
       (UP top)
       (AT top)
       (INTO top)
       (TO top))
     :realization (:verb  "shout" :s SUBJECT :o OBJECT :above ABOVE :from FROM :about ABOUT :up UP :at AT :into INTO :to TO))

(define-category shower :specializes comlex-verb
     :binds
      ((AROUND top)
       (ON top)
       (WITH top))
     :realization (:verb  "shower" :s SUBJECT :o OBJECT :around AROUND :on ON :with WITH))

(define-category shrink :specializes comlex-verb
     :binds
      ((INTO top)
       (|OUT OF| top)
       (TO top)
       (FROM top))
     :realization (:verb ( "shrink"  :TENSED/SINGULAR "shrinks" :PAST-TENSE ("shrank" "shrunk"))
 :s SUBJECT :o OBJECT :into INTO :|OUT OF| |OUT OF| :to TO :from FROM))

(define-category shun :specializes comlex-verb
     :binds
      ((|IN FAVOR OF| top))
     :realization (:verb ( "shun"  :TENSED/SINGULAR "shuns" :PRESENT-PARTICIPLE "shunning" :PAST-TENSE "shunned")
 :s SUBJECT :o OBJECT :|IN FAVOR OF| |IN FAVOR OF|))

(define-category shut :specializes comlex-verb
     :binds
      ((INSIDE top)
       (IN top))
     :realization (:verb ( "shut"  :TENSED/SINGULAR "shuts" :PRESENT-PARTICIPLE "shutting" :PAST-TENSE "shut")
 :s SUBJECT :o OBJECT :inside INSIDE :in IN))

;;; found existing category SIDE in #P"SPARSER:DOSSIERS;DEPENDENT-LOCATIONS.LISP"

(define-category side-cl-verb :specializes comlex-verb
     :binds
      ((AGAINST top)
       (WITH top))
     :realization (:verb  "side" :s SUBJECT :o OBJECT :against AGAINST :with WITH))

(define-category sift :specializes comlex-verb
     :binds
      ((THROUGH top)
       (IN top)
       (INTO top)
       (FROM top))
     :realization (:verb  "sift" :s SUBJECT :o OBJECT :through THROUGH :in IN :into INTO :from FROM))

(define-category sign :specializes comlex-verb
     :realization (:verb  "sign" :s SUBJECT))

;;; found existing category SIGNAL in #P"SPARSER:BIO;CELLULAR-PROCESSES.LISP"

(define-category signal-cl-verb :specializes comlex-verb
     :binds
      ((TO top)
       (FOR top))
     :realization (:verb ( "signal"  :TENSED/SINGULAR "signals" :PRESENT-PARTICIPLE ("signalling"
                                                                                     "signaling") :PAST-TENSE ("signalled"
                                                                                                               "signaled"))
 :s SUBJECT :o OBJECT :to TO :for FOR))

(define-category signify :specializes comlex-verb
     :realization (:verb  "signify" :s SUBJECT :o OBJECT))

(define-category simplify :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "simplify" :s SUBJECT :o OBJECT :to TO))

(define-category simulate :specializes comlex-verb
     :realization (:verb  "simulate" :s SUBJECT :o OBJECT))

(define-category sin :specializes comlex-verb
     :binds
      ((AGAINST top))
     :realization (:verb ( "sin"  :TENSED/SINGULAR "sins" :PRESENT-PARTICIPLE "sinning" :PAST-TENSE "sinned")
 :s SUBJECT :against AGAINST))

(define-category sink :specializes comlex-verb
     :binds
      ((FROM top)
       (AT top)
       (THROUGH top)
       (IN top)
       (INTO top)
       (ON top)
       (TO top))
     :realization (:verb ( "sink"  :TENSED/SINGULAR "sinks" :PAST-TENSE "sank")
 :s SUBJECT :o OBJECT :from FROM :at AT :through THROUGH :in IN :into INTO :on ON :to TO))

(define-category sip :specializes comlex-verb
     :binds
      ((FROM top)
       (|OUT OF| top)
       (THROUGH top))
     :realization (:verb ( "sip"  :TENSED/SINGULAR "sips" :PRESENT-PARTICIPLE "sipping" :PAST-TENSE "sipped")
 :s SUBJECT :o OBJECT :from FROM :|OUT OF| |OUT OF| :through THROUGH))

(define-category sit :specializes comlex-verb
     :binds
      ((BEFORE top)
       (BESIDE top)
       (BY top)
       (NEAR top)
       (OVER top)
       (AROUND top)
       (ALONG top)
       (BEHIND top)
       (AT top)
       (THROUGH top)
       (TO top)
       (IN top)
       (ON top))
     :realization (:verb ( "sit"  :TENSED/SINGULAR "sits" :PRESENT-PARTICIPLE "sitting" :PAST-TENSE "sat")
 :s SUBJECT :o OBJECT :before BEFORE :beside BESIDE :by BY :near NEAR :over OVER :around AROUND :along ALONG :behind BEHIND :at AT :through THROUGH :to TO :in IN :on ON))

(define-category situate :specializes comlex-verb
     :realization (:verb  "situate" :s SUBJECT :o OBJECT))

;;; found existing category SIZE in #P"SPARSER:MID-LEVEL;ATTRIBUTES.LISP"

(define-category size-cl-verb :specializes comlex-verb
     :binds
      ((|ACCORDING TO| top)
       (TO top))
     :realization (:verb  "size" :s SUBJECT :o OBJECT :|ACCORDING TO| |ACCORDING TO| :to TO))

(define-category skew :specializes comlex-verb
     :binds
      ((AT top)
       (INTO top)
       (|IN FAVOR OF| top)
       (FROM top)
       (TO top)
       (TOWARDS top)
       (TOWARD top))
     :realization (:verb  "skew" :s SUBJECT :o OBJECT :at AT :into INTO :|IN FAVOR OF| |IN FAVOR OF| :from FROM :to TO :towards TOWARDS :toward TOWARD))

(define-category ski :specializes comlex-verb
     :mixins (with-p-dir)
     :realization (:verb  "ski" :s SUBJECT :o OBJECT))

(define-category skyrocket :specializes comlex-verb
     :binds ((FROM top)
             (TO top))
     :realization (:verb ("skyrocket" :past-tense "skyrocketed"
                                      :present-participle "skyrocketing")
                   :s SUBJECT :o OBJECT :from FROM :to TO))

(define-category sleep :specializes comlex-verb
     :binds
      ((AT top)
       (IN top)
       (ON top)
       (THROUGH top)
       (UNDER top)
       (WITH top))
     :realization (:verb ( "sleep"  :TENSED/SINGULAR "sleeps" :PAST-TENSE "slept")
 :s SUBJECT :o OBJECT :at AT :in IN :on ON :through THROUGH :under UNDER :with WITH))

(define-category slide :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((BESIDE top)
       (ONTO top)
       (DOWN top)
       (FROM top)
       (INTO top)
       (OVER top)
       (TO top)
       (AGAINST top)
       (UNDER top))
     :realization (:verb ( "slide"  :TENSED/SINGULAR "slides" :PAST-TENSE "slid")
 :s SUBJECT :o OBJECT :beside BESIDE :onto ONTO :down DOWN :from FROM :into INTO :over OVER :to TO :against AGAINST :under UNDER))

(define-category slight :specializes comlex-verb
     :realization (:verb  "slight" :s SUBJECT :o OBJECT))

(define-category slur :specializes comlex-verb
     :binds
      ((ON top)
       (THROUGH top)
       (OVER top))
     :realization (:verb ( "slur"  :TENSED/SINGULAR "slurs" :PRESENT-PARTICIPLE "slurring" :PAST-TENSE "slurred")
 :s SUBJECT :o OBJECT :on ON :through THROUGH :over OVER))

(define-category smart :specializes comlex-verb
     :binds
      ((AT top)
       (FOR top)
       (FROM top)
       (OVER top)
       (UNDER top))
     :realization (:verb  "smart" :s SUBJECT :o OBJECT :at AT :for FOR :from FROM :over OVER :under UNDER))

(define-category smell :specializes comlex-verb
     :binds
      ((AT top)
       (LIKE top)
       (OF top)
       (ON top))
     :realization (:verb ( "smell"  :TENSED/SINGULAR "smells" :PAST-TENSE ("smelled" "smelt"))
 :s SUBJECT :o OBJECT :at AT :like LIKE :of OF :on ON))

(define-category smoke :specializes comlex-verb
     :realization (:verb  "smoke" :s SUBJECT :o OBJECT))

(define-category smolder :specializes comlex-verb
     :realization (:verb  "smolder" :s SUBJECT :o OBJECT))

(define-category smooth :specializes comlex-verb
     :realization (:verb  "smooth" :s SUBJECT :o OBJECT))

(define-category snack :specializes comlex-verb
     :realization (:verb  "snack" :s SUBJECT))

(define-category snap :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((OF top)
       (IN top)
       (PAST top)
       (TO top)
       (AT top)
       (OFF top)
       (|OUT OF| top))
     :realization (:verb ( "snap"  :TENSED/SINGULAR "snaps" :PRESENT-PARTICIPLE "snapping" :PAST-TENSE "snapped")
 :s SUBJECT :o OBJECT :of OF :in IN :past PAST :to TO :at AT :off OFF :|OUT OF| |OUT OF|))

(define-category sneeze :specializes comlex-verb
     :binds
      ((INTO top)
       (THROUGH top)
       (OVER top))
     :realization (:verb  "sneeze" :s SUBJECT :o OBJECT :into INTO :through THROUGH :over OVER))

(define-category snow :specializes comlex-verb
     :realization (:verb  "snow" :s SUBJECT :o OBJECT))

(define-category snowball :specializes comlex-verb
     :mixins (with-p-dir)
     :realization (:verb  "snowball" :s SUBJECT :o OBJECT))

(define-category soak :specializes comlex-verb
     :binds
      ((IN top)
       (INTO top)
       (THROUGH top))
     :realization (:verb  "soak" :s SUBJECT :o OBJECT :in IN :into INTO :through THROUGH))

(define-category soap :specializes comlex-verb
     :realization (:verb  "soap" :s SUBJECT :o OBJECT))

(define-category socialize :specializes comlex-verb
     :binds
      ((WITH top)
       (INTO top))
     :realization (:verb  "socialize" :s SUBJECT :o OBJECT :with WITH :into INTO))

(define-category sole :specializes comlex-verb
     :realization (:verb  "sole" :s SUBJECT :o OBJECT))

(define-category solicit :specializes comlex-verb
     :binds
      ((FOR top)
       (FROM top))
     :realization (:verb  "solicit" :s SUBJECT :o OBJECT :for FOR :from FROM))

(define-category solve :specializes comlex-verb
  :realization (:verb  "solve"
                :noun "solution" ;; conflicts with biology solution
                :s SUBJECT :o OBJECT))

(define-category sort :specializes comlex-verb
     :binds
      ((THROUGH top)
       (WITH top))
     :realization (:verb  "sort" :s SUBJECT :o OBJECT :through THROUGH :with WITH))

(define-category sound :specializes comlex-verb
     :binds
      ((AGAINST top)
       (BEHIND top)
       (LIKE top)
       (THROUGH top))
     :realization (:verb  "sound" :s SUBJECT :o OBJECT :against AGAINST :behind BEHIND :like LIKE :through THROUGH))

(define-category source :specializes comlex-verb
     :realization (:verb  "source" :s SUBJECT))

(define-category spare :specializes comlex-verb
     :binds
      ((FOR top)
       (FROM top))
     :realization (:verb  "spare" :s SUBJECT :o OBJECT :for FOR :from FROM))

(define-category speak :specializes comlex-verb
     :binds
      ((THROUGH top)
       (AT top)
       (WITH top)
       (AGAINST top)
       (FOR top)
       (TO top)
       (ABOUT top)
       (ON top)
       (OF top))
     :realization (:verb ( "speak"  :TENSED/SINGULAR "speaks" :PAST-TENSE "spoke")
 :s SUBJECT :o OBJECT :through THROUGH :at AT :with WITH :against AGAINST :for FOR :to TO :about ABOUT :on ON :of OF))

(define-category specialize :specializes comlex-verb
     :binds
      ((FOR top)
       (IN top))
     :realization (:verb  "specialize" :s SUBJECT :o OBJECT :for FOR :in IN))

(define-category specify :specializes comlex-verb
     :realization (:verb  "specify" :s SUBJECT :o OBJECT))

(define-category speculate :specializes comlex-verb
     :binds
      ((|AS TO| top)
       (ABOUT top)
       (IN top)
       (ON top)
       (UPON top))
     :realization (:verb  "speculate" :s SUBJECT :o OBJECT :|AS TO| |AS TO| :about ABOUT :in IN :on ON :upon UPON))

(define-category speed :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((AFTER top)
       (AT top))
     :realization (:verb ( "speed"  :TENSED/SINGULAR "speeds" :PAST-TENSE ("speeded" "sped"))
 :s SUBJECT :o OBJECT :after AFTER :at AT))

(define-category spend :specializes comlex-verb
     :binds
      ((AT top)
       (ON top)
       (FOR top))
     :realization (:verb ( "spend"  :TENSED/SINGULAR "spends" :PAST-TENSE "spent")
 :s SUBJECT :o OBJECT :at AT :on ON :for FOR))

(define-category spike :specializes comlex-verb
     :realization (:verb  "spike" :s SUBJECT :o OBJECT))

(define-category spill :specializes comlex-verb
     :mixins (with-p-dir)
     :realization (:verb  "spill" :s SUBJECT :o OBJECT))

(define-category spin :specializes comlex-verb
     :binds
      ((TO top)
       (THROUGH top)
       (AROUND top)
       (|OUT OF| top)
       (TOWARD top)
       (FROM top)
       (INTO top))
     :realization (:verb ( "spin"  :TENSED/SINGULAR "spins" :PRESENT-PARTICIPLE "spinning" :PAST-TENSE ("spun"
                                                                                                        "span"))
 :s SUBJECT :o OBJECT :to TO :through THROUGH :around AROUND :|OUT OF| |OUT OF| :toward TOWARD :from FROM :into INTO))

(define-category split :specializes comlex-verb
     :binds
      ((AMONG top)
       (ON top)
       (DOWN top)
       (TO top)
       (ALONG top)
       (IN top)
       (OVER top)
       (WITH top)
       (BETWEEN top)
       (FROM top)
       (INTO top))
     :realization (:verb ( "split"  :TENSED/SINGULAR "splits" :PRESENT-PARTICIPLE "splitting" :PAST-TENSE "split")
 :s SUBJECT :o OBJECT :among AMONG :on ON :down DOWN :to TO :along ALONG :in IN :over OVER :with WITH :between BETWEEN :from FROM :into INTO))


(define-category sport :specializes process
  :mixins (comlex-verb)
     :realization (:verb "sport" :s SUBJECT :o OBJECT))


(define-category spot :specializes comlex-verb
     :realization (:verb ( "spot"  :TENSED/SINGULAR "spots" :PRESENT-PARTICIPLE "spotting" :PAST-TENSE "spotted")
 :s SUBJECT :o OBJECT))

(define-category spray :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((AT top)
       (WITH top))
     :realization (:verb  "spray" :s SUBJECT :o OBJECT :at AT :with WITH))

(define-category spread :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((THROUGH top)
       (ABOVE top)
       (WITH top)
       (AMONG top)
       (AGAINST top)
       (NEAR top)
       (BESIDE top)
       (|NEXT TO| top)
       (UPON top)
       (UNDER top))
     :realization (:verb ( "spread"  :TENSED/SINGULAR "spreads" :PAST-TENSE "spread")
 :s SUBJECT :o OBJECT :through THROUGH :above ABOVE :with WITH :among AMONG :against AGAINST :near NEAR :beside BESIDE :|NEXT TO| |NEXT TO| :upon UPON :under UNDER))

(define-category sprinkle :specializes comlex-verb
     :binds
      ((THROUGH top)
       (WITH top)
       (OVER top)
       (ONTO top)
       (ON top)
       (UPON top))
     :realization (:verb  "sprinkle" :s SUBJECT :o OBJECT :through THROUGH :with WITH :over OVER :onto ONTO :on ON :upon UPON))

(define-category square :specializes comlex-verb
     :binds
      ((TO top)
       (WITH top))
     :realization (:verb  "square" :s SUBJECT :o OBJECT :to TO :with WITH))

(define-category squire :specializes comlex-verb
     :realization (:verb  "squire" :s SUBJECT :o OBJECT))

(define-category stagger :specializes comlex-verb
     :realization (:verb  "stagger" :s SUBJECT :o OBJECT))

(define-category stake :specializes comlex-verb
     :binds
      ((ON top)
       (TO top))
     :realization (:verb  "stake" :s SUBJECT :o OBJECT :on ON :to TO))

(define-category stall :specializes comlex-verb
     :binds
      ((OVER top)
       (ON top))
     :realization (:verb  "stall" :s SUBJECT :o OBJECT :over OVER :on ON))

(define-category stand :specializes comlex-verb
     :binds
      ((BENEATH top)
       (NEAR top)
       (|NEXT TO| top)
       (ABOVE top)
       (AT top)
       (|OUT OF| top)
       (BEHIND top)
       (BEFORE top)
       (BY top)
       (BETWEEN top)
       (BESIDE top)
       (UPON top)
       (|UP TO| top)
       (AMONG top)
       (OVER top)
       (AGAINST top)
       (TO top)
       (IN top)
       (FROM top)
       (FOR top)
       (ON top))
     :realization (:verb ( "stand"  :TENSED/SINGULAR "stands" :PAST-TENSE "stood")
 :s SUBJECT :o OBJECT :beneath BENEATH :near NEAR :|NEXT TO| |NEXT TO| :above ABOVE :at AT :|OUT OF| |OUT OF| :behind BEHIND :before BEFORE :by BY :between BETWEEN :beside BESIDE :upon UPON :|UP TO| |UP TO| :among AMONG :over OVER :against AGAINST :to TO :in IN :from FROM :for FOR :on ON))

(define-category standardize :specializes comlex-verb
     :realization (:verb  "standardize" :s SUBJECT :o OBJECT))

(define-category staple :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "staple" :s SUBJECT :o OBJECT :to TO))

;;; found existing category STAR in #P"SPARSER:BIO;TERMS.LISP"

(define-category star-cl-verb :specializes comlex-verb
     :binds
      ((IN top))
     :realization (:verb ( "star"  :TENSED/SINGULAR "stars" :PRESENT-PARTICIPLE "starring" :PAST-TENSE "starred")
 :s SUBJECT :o OBJECT :in IN))

(define-category station :specializes comlex-verb
     :binds
      ((ACROSS top)
       (ALONG top)
       (AMONG top)
       (AROUND top)
       (AT top)
       (INSIDE top)
       (BESIDE top)
       (BETWEEN top)
       (BEYOND top)
       (NEAR top)
       (IN top)
       (OVER top)
       (OUTSIDE top)
       (|NEXT TO| top)
       (ON top)
       (UPON top)
       (UNDER top)
       (WITHIN top))
     :realization (:verb  "station" :s SUBJECT :o OBJECT :across ACROSS :along ALONG :among AMONG :around AROUND :at AT :inside INSIDE :beside BESIDE :between BETWEEN :beyond BEYOND :near NEAR :in IN :over OVER :outside OUTSIDE :|NEXT TO| |NEXT TO| :on ON :upon UPON :under UNDER :within WITHIN))

;;; found existing category STAY in #P"SPARSER:BIO;GENERAL-VERBS.LISP"

(define-category stay-cl-verb :specializes comlex-verb
     :binds
      ((OFF top)
       (OUT top)
       (FROM top)
       (BEHIND top)
       (BELOW top)
       (BENEATH top)
       (AT top)
       (AROUND top)
       (AMONGST top)
       (AMONG top)
       (ALONG top)
       (AGAINST top)
       (ACROSS top)
       (ABOVE top)
       (BESIDE top)
       (BETWEEN top)
       (BEYOND top)
       (BY top)
       (DOWN top)
       (IN top)
       (INSIDE top)
       (NEAR top)
       (OVER top)
       (OUTSIDE top)
       (|OUT OF| top)
       (ON top)
       (|OFF OF| top)
       (|NEXT TO| top)
       (UNDER top)
       (WITHIN top)
       (WITH top))
     :realization (:verb  "stay" :s SUBJECT :o OBJECT :off OFF :out OUT :from FROM :behind BEHIND :below BELOW :beneath BENEATH :at AT :around AROUND :amongst AMONGST :among AMONG :along ALONG :against AGAINST :across ACROSS :above ABOVE :beside BESIDE :between BETWEEN :beyond BEYOND :by BY :down DOWN :in IN :inside INSIDE :near NEAR :over OVER :outside OUTSIDE :|OUT OF| |OUT OF| :on ON :|OFF OF| |OFF OF| :|NEXT TO| |NEXT TO| :under UNDER :within WITHIN :with WITH))

(define-category steel :specializes comlex-verb
     :binds
      ((AGAINST top)
       (FOR top))
     :realization (:verb  "steel" :s SUBJECT :o OBJECT :against AGAINST :for FOR))

(define-category steep :specializes comlex-verb
     :binds
      ((IN top))
     :realization (:verb  "steep" :s SUBJECT :o OBJECT :in IN))

(define-category steer :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((FROM top)
       (TO top))
     :realization (:verb  "steer" :s SUBJECT :o OBJECT :from FROM :to TO))

(define-category stem :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb ( "stem"  :TENSED/SINGULAR "stems" :PRESENT-PARTICIPLE "stemming" :PAST-TENSE "stemmed")
 :s SUBJECT :o OBJECT :from FROM))

(define-category step :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((FROM top)
       (ON top)
       (TO top)
       (INTO top)
       (|INSIDE OF| top))
     :realization (:verb ( "step"  :TENSED/SINGULAR "steps" :PRESENT-PARTICIPLE "stepping" :PAST-TENSE "stepped")
 :s SUBJECT :o OBJECT :from FROM :on ON :to TO :into INTO :|INSIDE OF| |INSIDE OF|))

(define-category stereotype :specializes comlex-verb
     :realization (:verb  "stereotype" :s SUBJECT :o OBJECT))

(define-category stick :specializes comlex-verb
     :binds
      ((FOR top)
       (FROM top)
       (BEYOND top)
       (INTO top)
       (|OUT OF| top)
       (THROUGH top)
       (TO top)
       (UP top)
       (BENEATH top)
       (BEFORE top)
       (BELOW top)
       (BEHIND top)
       (AT top)
       (AROUND top)
       (AMONGST top)
       (AMONG top)
       (AGAINST top)
       (AFTER top)
       (ACROSS top)
       (ABOVE top)
       (NEAR top)
       (INSIDE top)
       (IN top)
       (DOWN top)
       (BY top)
       (BETWEEN top)
       (BESIDE top)
       (OVER top)
       (OUTSIDE top)
       (ONTO top)
       (|NEXT TO| top)
       (ON top)
       (WITH top)
       (WITHIN top)
       (UPON top)
       (UNDER top))
     :realization (:verb ( "stick"  :TENSED/SINGULAR "sticks" :PAST-TENSE ("sticked" "stuck"))
 :s SUBJECT :o OBJECT :for FOR :from FROM :beyond BEYOND :into INTO :|OUT OF| |OUT OF| :through THROUGH :to TO :up UP :beneath BENEATH :before BEFORE :below BELOW :behind BEHIND :at AT :around AROUND :amongst AMONGST :among AMONG :against AGAINST :after AFTER :across ACROSS :above ABOVE :near NEAR :inside INSIDE :in IN :down DOWN :by BY :between BETWEEN :beside BESIDE :over OVER :outside OUTSIDE :onto ONTO :|NEXT TO| |NEXT TO| :on ON :with WITH :within WITHIN :upon UPON :under UNDER))

(define-category stock :specializes comlex-verb
     :binds
      ((ON top)
       (WITH top))
     :realization (:verb  "stock" :s SUBJECT :o OBJECT :on ON :with WITH))

(define-category stone :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "stone" :s SUBJECT :o OBJECT :to TO))

(define-category stop :specializes comlex-verb
     :binds
      ((FROM top)
       (OFF top)
       (AT top)
       (BEFORE top)
       (IN top)
       (INSIDE top)
       (ON top)
       (OVER top)
       (FOR top))
     :realization (:verb ( "stop"  :TENSED/SINGULAR "stops" :PRESENT-PARTICIPLE "stopping" :PAST-TENSE "stopped")
 :s SUBJECT :o OBJECT :from FROM :off OFF :at AT :before BEFORE :in IN :inside INSIDE :on ON :over OVER :for FOR))

(define-category store :specializes comlex-verb
     :binds
      ((FROM top)
       (WITH top)
       (AT top)
       (BENEATH top)
       (BELOW top)
       (BEHIND top)
       (ABOVE top)
       (NEAR top)
       (INSIDE top)
       (BY top)
       (BETWEEN top)
       (IN top)
       (OVER top)
       (ON top))
     :realization (:verb  "store" :s SUBJECT :o OBJECT :from FROM :with WITH :at AT :beneath BENEATH :below BELOW :behind BEHIND :above ABOVE :near NEAR :inside INSIDE :by BY :between BETWEEN :in IN :over OVER :on ON))

;;; found existing category STRAIN in #P"SPARSER:MID-LEVEL;ORGANISMS.LISP"

(define-category strain-cl-verb :specializes comlex-verb
     :mixins (with-p-dir)
     :realization (:verb  "strain" :s SUBJECT :o OBJECT))

(define-category strand :specializes comlex-verb
     :realization (:verb  "strand" :s SUBJECT :o OBJECT))

(define-category strap :specializes comlex-verb
     :binds
      ((AROUND top)
       (INTO top)
       (ONTO top)
       (TO top))
     :realization (:verb ( "strap"  :TENSED/SINGULAR "straps" :PRESENT-PARTICIPLE "strapping" :PAST-TENSE "strapped")
 :s SUBJECT :o OBJECT :around AROUND :into INTO :onto ONTO :to TO))

(define-category stratify :specializes comlex-verb
     :binds
      ((INTO top))
     :realization (:verb  "stratify" :s SUBJECT :o OBJECT :into INTO))

;;; found existing category STREAM in #P"SPARSER:DOSSIERS;PATH-TYPES.LISP"

(define-category stream-cl-verb :specializes comlex-verb
     :mixins (with-p-dir)
     :realization (:verb  "stream" :s SUBJECT))

(define-category streamline :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "streamline" :s SUBJECT :o OBJECT :to TO))

;;; found existing category STRENGTHEN in #P"SPARSER:BIO;GENERAL-VERBS.LISP"

(define-category strengthen-cl-verb :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  ("strengthen"  :past-tense "strengthened" :past-participle "strengthened" :present-participle "strengthening") :s SUBJECT :o OBJECT :to TO))

(define-category stress :specializes comlex-verb
     :binds
      ((OVER top)
       (TO top))
     :realization (:verb  "stress" :s SUBJECT :o OBJECT :over OVER :to TO))

(define-category strike :specializes comlex-verb
     :binds
      ((IN top)
       (ON top)
       (BELOW top)
       (FOR top)
       (TO top)
       (WITH top)
       (AT top))
     :realization (:verb ( "strike"  :TENSED/SINGULAR "strikes" :PAST-TENSE "struck")
 :s SUBJECT :o OBJECT :in IN :on ON :below BELOW :for FOR :to TO :with WITH :at AT))

(define-category strip :specializes comlex-verb
     :binds
      ((FROM top)
       (OFF top)
       (|OUT OF| top)
       (TO top)
       (|OFF OF| top)
       (OF top))
     :realization (:verb ( "strip"  :TENSED/SINGULAR "strips" :PRESENT-PARTICIPLE "stripping" :PAST-TENSE "stripped")
 :s SUBJECT :o OBJECT :from FROM :off OFF :|OUT OF| |OUT OF| :to TO :|OFF OF| |OFF OF| :of OF))

(define-category strive :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb ( "strive"  :TENSED/SINGULAR "strives" :PAST-TENSE "strove")
 :s SUBJECT :for FOR))

;;; found existing category STRUCTURE in #P"SPARSER:MID-LEVEL;ONTOLOGY.LISP"

(define-category structure-cl-verb :specializes comlex-verb
     :binds
      ((ALONG top)
       (AFTER top)
       (|ACCORDING TO| top)
       (IN top)
       (LIKE top)
       (ON top))
     :realization (:verb  "structure" :s SUBJECT :o OBJECT :along ALONG :after AFTER :|ACCORDING TO| |ACCORDING TO| :in IN :like LIKE :on ON))

(define-category struggle :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((IN top)
       (AGAINST top)
       (WITH top)
       (FOR top))
     :realization (:verb  "struggle" :s SUBJECT :in IN :against AGAINST :with WITH :for FOR))

(define-category stud :specializes comlex-verb
     :binds
      ((WITH top))
     :realization (:verb ( "stud"  :TENSED/SINGULAR "studs" :PRESENT-PARTICIPLE "studding" :PAST-TENSE "studded")
 :s SUBJECT :o OBJECT :with WITH))

(define-category stump :specializes comlex-verb
     :realization (:verb  "stump" :s SUBJECT :o OBJECT))

(define-category stun :specializes comlex-verb
     :realization (:verb ( "stun"  :TENSED/SINGULAR "stuns" :PRESENT-PARTICIPLE "stunning" :PAST-TENSE "stunned")
 :s SUBJECT :o OBJECT))

(define-category style :specializes comlex-verb
     :realization (:verb  "style" :s SUBJECT :o OBJECT))

(define-category stymie :specializes comlex-verb
     :realization (:verb ( "stymie"  :TENSED/SINGULAR "stymies" :PRESENT-PARTICIPLE "stymieing")
 :s SUBJECT :o OBJECT))

(define-category sub :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb ( "sub"  :TENSED/SINGULAR "subs" :PRESENT-PARTICIPLE "subbing" :PAST-TENSE "subbed")
 :s SUBJECT :o OBJECT :for FOR))

(define-category submit :specializes comlex-verb
     :binds
      ((FOR top)
       (TO top))
     :realization (:verb ( "submit"  :TENSED/SINGULAR "submits" :PRESENT-PARTICIPLE "submitting" :PAST-TENSE "submitted")
 :s SUBJECT :o OBJECT :for FOR :to TO))

(define-category subscribe :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "subscribe" :s SUBJECT :o OBJECT :to TO))

(define-category subside :specializes comlex-verb
     :realization (:verb  "subside" :s SUBJECT))

(define-category subtract :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "subtract" :s SUBJECT :o OBJECT :from FROM))

(define-category succumb :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "succumb" :s SUBJECT :to TO))

(define-category suffer :specializes comlex-verb
     :binds
      ((IN top)
       (THROUGH top)
       (FOR top)
       (FROM top)
       (OVER top)
       (WITH top))
     :realization (:verb  ("suffer"  :past-tense "suffered" :past-participle "suffered" :present-participle "suffering") :s SUBJECT :o OBJECT :in IN :through THROUGH :for FOR :from FROM :over OVER :with WITH))

(define-category suffice :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "suffice" :s SUBJECT :o OBJECT :for FOR))

(define-category suit :specializes comlex-verb
     :binds
      ((IN top)
       (WITH top))
     :realization (:verb  "suit" :s SUBJECT :o OBJECT :in IN :with WITH))

(define-category sum :specializes comlex-verb
     :realization (:verb ( "sum"  :TENSED/SINGULAR "sums" :PRESENT-PARTICIPLE "summing" :PAST-TENSE "summed")
 :s SUBJECT :o OBJECT))

(define-category sun :specializes comlex-verb
     :binds
      ((AT top)
       (ON top))
     :realization (:verb ( "sun"  :TENSED/SINGULAR "suns" :PRESENT-PARTICIPLE "sunning" :PAST-TENSE "sunned")
 :s SUBJECT :o OBJECT :at AT :on ON))

(define-category sup :specializes comlex-verb
     :binds
      ((AT top)
       (OFF top)
       (ON top)
       (UPON top))
     :realization (:verb ( "sup"  :TENSED/SINGULAR "sups" :PRESENT-PARTICIPLE "supping" :PAST-TENSE "supped")
 :s SUBJECT :at AT :off OFF :on ON :upon UPON))

(define-category supervise :specializes comlex-verb
     :realization (:verb  "supervise" :s SUBJECT :o OBJECT))

(define-category supplement :specializes comlex-verb
     :binds
      ((BY top)
       (WITH top))
     :realization (:verb  "supplement" :s SUBJECT :o OBJECT :by BY :with WITH))

(define-category supply :specializes comlex-verb
     :binds
      ((FOR top)
       (TO top)
       (WITH top))
     :realization (:verb  "supply" :s SUBJECT :o OBJECT :for FOR :to TO :with WITH))

(define-category suppose :specializes comlex-verb
     :realization (:verb  "suppose" :s SUBJECT :o OBJECT))

;;; found existing category SURFACE in #P"SPARSER:DOSSIERS;DEPENDENT-LOCATIONS.LISP"

(define-category surface-cl-verb :specializes comlex-verb
     :binds
      ((WITH top)
       (FROM top))
     :realization (:verb  "surface" :s SUBJECT :o OBJECT :with WITH :from FROM))

(define-category surge :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((BY top)
       (TO top)
       (IN top)
       (|AHEAD OF| top)
       (ABOVE top))
     :realization (:verb  "surge" :s SUBJECT :o OBJECT :by BY :to TO :in IN :|AHEAD OF| |AHEAD OF| :above ABOVE))

(define-category surround :specializes comlex-verb
     :binds
      ((WITH top)
       (IN top)
       (WITHIN top))
     :realization (:verb  "surround" :s SUBJECT :o OBJECT :with WITH :in IN :within WITHIN))

(define-category survey :specializes comlex-verb
     :binds
      ((ACROSS top)
       (ABOUT top)
       (FOR top)
       (THROUGHOUT top))
     :realization (:verb  "survey" :s SUBJECT :o OBJECT :across ACROSS :about ABOUT :for FOR :throughout THROUGHOUT))

(define-category survive :specializes comlex-verb
     :binds
      ((FOR top)
       (ON top))
     :realization (:verb  "survive" :s SUBJECT :o OBJECT :for FOR :on ON))

(define-category suspect :specializes comlex-verb
     :binds
      ((ABOUT top)
       (FOR top)
       (OF top))
     :realization (:verb  "suspect" :s SUBJECT :o OBJECT :about ABOUT :for FOR :of OF))

(define-category suspend :specializes comlex-verb
     :binds
      ((AT top)
       (IN top)
       (TO top)
       (ALONG top)
       (ACROSS top)
       (ABOVE top)
       (BY top)
       (BETWEEN top)
       (WITHOUT top)
       (FROM top)
       (FOR top))
     :realization (:verb  "suspend" :s SUBJECT :o OBJECT :at AT :in IN :to TO :along ALONG :across ACROSS :above ABOVE :by BY :between BETWEEN :without WITHOUT :from FROM :for FOR))

(define-category swab :specializes comlex-verb
     :realization (:verb ( "swab"  :TENSED/SINGULAR "swabs" :PRESENT-PARTICIPLE "swabbing" :PAST-TENSE "swabbed")
 :s SUBJECT :o OBJECT))

(define-category swear :specializes comlex-verb
     :binds
      ((BEFORE top)
       (AT top)
       (BY top)
       (ON top)
       (UNTO top)
       (TO top))
     :realization (:verb ( "swear"  :TENSED/SINGULAR "swears" :PAST-TENSE "swore")
 :s SUBJECT :o OBJECT :before BEFORE :at AT :by BY :on ON :unto UNTO :to TO))

(define-category sweep :specializes comlex-verb
     :binds
      ((ACROSS top)
       (THROUGH top)
       (PAST top)
       (DOWN top)
       (FROM top)
       (INTO top)
       (|OUT OF| top)
       (OVER top)
       (TO top)
       (|OFF OF| top)
       (OFF top)
       (UNDER top))
     :realization (:verb ( "sweep"  :TENSED/SINGULAR "sweeps" :PAST-TENSE "swept")
 :s SUBJECT :o OBJECT :across ACROSS :through THROUGH :past PAST :down DOWN :from FROM :into INTO :|OUT OF| |OUT OF| :over OVER :to TO :|OFF OF| |OFF OF| :off OFF :under UNDER))

(define-category swing :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((THROUGH top)
       (OVER top)
       (ONTO top)
       (|OUT OF| top)
       (BY top)
       (PAST top)
       (|CLOSE TO| top)
       (ACROSS top)
       (ON top)
       (IN top)
       (OFF top)
       (BEHIND top)
       (TO top)
       (INTO top)
       (TOWARD top)
       (TOWARDS top)
       (FROM top)
       (WITHIN top)
       (BEFORE top)
       (AGAINST top)
       (AT top)
       (WITH top))
     :realization (:verb ( "swing"  :TENSED/SINGULAR "swings" :PAST-TENSE "swung")
 :s SUBJECT :o OBJECT :through THROUGH :over OVER :onto ONTO :|OUT OF| |OUT OF| :by BY :past PAST :|CLOSE TO| |CLOSE TO| :across ACROSS :on ON :in IN :off OFF :behind BEHIND :to TO :into INTO :toward TOWARD :towards TOWARDS :from FROM :within WITHIN :before BEFORE :against AGAINST :at AT :with WITH))

(define-category tackle :specializes comlex-verb
     :realization (:verb  "tackle" :s SUBJECT :o OBJECT))

(define-category tail :specializes comlex-verb
     :mixins (with-p-dir)
     :realization (:verb  "tail" :s SUBJECT :o OBJECT))

(define-category tailor :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "tailor" :s SUBJECT :o OBJECT :to TO))

(define-category take :specializes comlex-verb
     :realization (:verb ( "take"  :TENSED/SINGULAR "takes" :PAST-TENSE "took")
 :s SUBJECT))

(define-category talk :specializes comlex-verb
     :binds
      ((INTO top)
       (ON top)
       (ABOUT top)
       (OF top)
       (WITH top)
       (TO top))
     :realization (:verb  "talk" :s SUBJECT :o OBJECT :into INTO :on ON :about ABOUT :of OF :with WITH :to TO))

(define-category tally :specializes comlex-verb
     :binds
      ((AMONG top)
       (WITH top)
       (TO top))
     :realization (:verb  "tally" :s SUBJECT :o OBJECT :among AMONG :with WITH :to TO))

(define-category tan :specializes comlex-verb
     :realization (:verb ( "tan"  :TENSED/SINGULAR "tans" :PRESENT-PARTICIPLE "tanning" :PAST-TENSE "tanned")
 :s SUBJECT :o OBJECT))

(define-category tap :specializes comlex-verb
     :binds
      ((AGAINST top)
       (THROUGH top)
       (INTO top)
       (FOR top)
       (ON top))
     :realization (:verb ( "tap"  :TENSED/SINGULAR "taps" :PRESENT-PARTICIPLE "tapping" :PAST-TENSE "tapped")
 :s SUBJECT :o OBJECT :against AGAINST :through THROUGH :into INTO :for FOR :on ON))

(define-category taste :specializes comlex-verb
     :realization (:verb  "taste" :s SUBJECT :o OBJECT))

(define-category teach :specializes comlex-verb
     :realization (:verb ( "teach"  :TENSED/SINGULAR "teaches" :PAST-TENSE "taught")
 :s SUBJECT :o OBJECT))

(define-category telephone :specializes comlex-verb
     :realization (:verb  "telephone" :s SUBJECT :o OBJECT))

(define-category terrify :specializes comlex-verb
     :binds
      ((INTO top))
     :realization (:verb  "terrify" :s SUBJECT :o OBJECT :into INTO))

(define-category theorize :specializes comlex-verb
     :binds
      ((ABOUT top))
     :realization (:verb  "theorize" :s SUBJECT :o OBJECT :about ABOUT))

(define-category thread :specializes comlex-verb
     :binds
      ((THROUGH top)
       (WITH top))
     :realization (:verb  "thread" :s SUBJECT :o OBJECT :through THROUGH :with WITH))

(define-category threaten :specializes comlex-verb
     :binds
      ((AGAINST top)
       (TO top)
       (WITH top))
     :realization (:verb  ("threaten"  :past-tense "threatened" :past-participle "threatened" :present-participle "threatening") :s SUBJECT :o OBJECT :against AGAINST :to TO :with WITH))

(define-category thrill :specializes comlex-verb
     :realization (:verb  "thrill" :s SUBJECT :o OBJECT))

(define-category thrive :specializes comlex-verb
     :binds
      ((ON top))
     :realization (:verb  "thrive" :s SUBJECT :on ON))

(define-category throw :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((ACROSS top)
       (FROM top)
       (OVER top)
       (TO top)
       (ONTO top)
       (ON top)
       (AT top)
       (UPON top)
       (WITH top)
       (AGAINST top)
       (ABOVE top)
       (NEAR top)
       (|OFF OF| top)
       (|NEXT TO| top)
       (UNTO top)
       (UNDER top))
     :realization (:verb ( "throw"  :TENSED/SINGULAR "throws" :PAST-TENSE "threw")
 :s SUBJECT :o OBJECT :across ACROSS :from FROM :over OVER :to TO :onto ONTO :on ON :at AT :upon UPON :with WITH :against AGAINST :above ABOVE :near NEAR :|OFF OF| |OFF OF| :|NEXT TO| |NEXT TO| :unto UNTO :under UNDER))

(define-category thumb :specializes comlex-verb
     :binds
      ((IN top)
       (THROUGH top))
     :realization (:verb  "thumb" :s SUBJECT :o OBJECT :in IN :through THROUGH))

(define-category tickle :specializes comlex-verb
     :realization (:verb  "tickle" :s SUBJECT :o OBJECT))

(define-category tide :specializes comlex-verb
     :realization (:verb  "tide" :s SUBJECT :o OBJECT))

(define-category tie :specializes comlex-verb
     :binds
      ((ABOUT top)
       (AROUND top)
       (BEHIND top)
       (ON top)
       (OVER top)
       (WITH top)
       (INTO top)
       (IN top)
       (TO top))
     :realization (:verb ( "tie"  :TENSED/SINGULAR "ties" :PRESENT-PARTICIPLE "tying")
 :s SUBJECT :o OBJECT :about ABOUT :around AROUND :behind BEHIND :on ON :over OVER :with WITH :into INTO :in IN :to TO))

(define-category tighten :specializes comlex-verb
     :binds
      ((ON top)
       (AROUND top))
     :realization (:verb  "tighten" :s SUBJECT :o OBJECT :on ON :around AROUND))

;;; found existing category TIME in #P"SPARSER:KINDS;PROCESSES.LISP"

#+ignore
(define-category time-cl-verb :specializes comlex-verb
     :binds
      ((AT top)
       (TO top))
     :realization (:verb  "time" :s SUBJECT :o OBJECT :at AT :to TO))

(define-category tingle :specializes comlex-verb
     :realization (:verb  "tingle" :s SUBJECT :o OBJECT))

(define-category tint :specializes comlex-verb
     :realization (:verb  "tint" :s SUBJECT :o OBJECT))

(define-category tire :specializes comlex-verb
     :binds
      ((OF top))
     :realization (:verb  "tire" :s SUBJECT :o OBJECT :of OF))

(define-category tolerate :specializes comlex-verb
     :realization (:verb  "tolerate" :s SUBJECT :o OBJECT))

(define-category toll :specializes comlex-verb
     :realization (:verb  "toll" :s SUBJECT :o OBJECT))

(define-category total :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb ( "total"  :TENSED/SINGULAR "totals" :PRESENT-PARTICIPLE ("totalling"
                                                                                   "totaling") :PAST-TENSE ("totalled"
                                                                                                            "totaled"))
 :s SUBJECT :o OBJECT :to TO))

(define-category touch :specializes comlex-verb
     :binds
      ((ON top)
       (UPON top)
       (FOR top)
       (TO top))
     :realization (:verb  "touch" :s SUBJECT :o OBJECT :on ON :upon UPON :for FOR :to TO))

(define-category towel :specializes comlex-verb
     :realization (:verb ( "towel"  :TENSED/SINGULAR "towels" :PRESENT-PARTICIPLE ("towelling"
                                                                                   "toweling") :PAST-TENSE ("towelled"
                                                                                                            "toweled"))
 :s SUBJECT :o OBJECT))

(define-category tower :specializes comlex-verb
     :binds
      ((ABOVE top)
       (OVER top))
     :realization (:verb  "tower" :s SUBJECT :above ABOVE :over OVER))

(define-category trace :specializes comlex-verb
     :binds
      ((ONTO top)
       (TO top))
     :realization (:verb  "trace" :s SUBJECT :o OBJECT :onto ONTO :to TO))

(define-category track :specializes comlex-verb
     :binds
      ((WITH top)
       (ON top)
       (TO top))
     :realization (:verb  "track" :s SUBJECT :o OBJECT :with WITH :on ON :to TO))

(define-category traffic :specializes comlex-verb
     :binds
      ((IN top)
       (WITH top))
     :realization (:verb ( "traffic"  :TENSED/SINGULAR "traffics" :PRESENT-PARTICIPLE "trafficking" :PAST-TENSE "trafficked")
 :s SUBJECT :o OBJECT :in IN :with WITH))

(define-category train :specializes comlex-verb
     :binds
      ((ON top)
       (TO top)
       (FOR top)
       (IN top))
     :realization (:verb  "train" :s SUBJECT :o OBJECT :on ON :to TO :for FOR :in IN))

(define-category travel :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((FROM top)
       (TO top)
       (AT top)
       (WITH top))
     :realization (:verb ( "travel"  :TENSED/SINGULAR "travels" :PRESENT-PARTICIPLE ("travelling"
                                                                                     "traveling") :PAST-TENSE ("travelled"
                                                                                                               "traveled"))
 :s SUBJECT :o OBJECT :from FROM :to TO :at AT :with WITH))

(define-category trend :specializes comlex-verb
     :realization (:verb  "trend" :s SUBJECT))

(define-category trim :specializes comlex-verb
     :binds
      ((BY top)
       (TO top)
       (FROM top)
       (|OFF OF| top)
       (OFF top)
       (WITH top))
     :realization (:verb ( "trim"  :TENSED/SINGULAR "trims" :PRESENT-PARTICIPLE "trimming" :PAST-TENSE "trimmed")
 :s SUBJECT :o OBJECT :by BY :to TO :from FROM :|OFF OF| |OFF OF| :off OFF :with WITH))

(define-category trip :specializes comlex-verb
     :binds
      ((ON top)
       (OVER top))
     :realization (:verb ( "trip"  :TENSED/SINGULAR "trips" :PRESENT-PARTICIPLE "tripping" :PAST-TENSE "tripped")
 :s SUBJECT :o OBJECT :on ON :over OVER))

(define-category troll :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "troll" :s SUBJECT :o OBJECT :for FOR))

(define-category troop :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((TO top))
     :realization (:verb  "troop" :s SUBJECT :to TO))

(define-category trouble :specializes comlex-verb
     :binds
      ((ABOUT top)
       (OVER top)
       (WITH top))
     :realization (:verb  "trouble" :s SUBJECT :o OBJECT :about ABOUT :over OVER :with WITH))

(define-category trump :specializes comlex-verb
     :realization (:verb  "trump" :s SUBJECT :o OBJECT))

(define-category trust :specializes comlex-verb
     :binds
      ((IN top)
       (TO top)
       (ON top)
       (WITH top))
     :realization (:verb  "trust" :s SUBJECT :o OBJECT :in IN :to TO :on ON :with WITH))

(define-category try :specializes comlex-verb
     :binds
      ((ON top)
       (FOR top))
     :realization (:verb  "try" :s SUBJECT :o OBJECT :on ON :for FOR))

(define-category turn :specializes comlex-verb
     :binds
      ((ALONG top)
       (IN top)
       (PAST top)
       (UPON top)
       (OFF top)
       (AGAINST top)
       (ONTO top)
       (INTO top)
       (TOWARD top)
       (TOWARDS top)
       (AT top)
       (ON top)
       (FROM top)
       (WITH top)
       (TO top))
     :realization (:verb  "turn" :s SUBJECT :o OBJECT :along ALONG :in IN :past PAST :upon UPON :off OFF :against AGAINST :onto ONTO :into INTO :toward TOWARD :towards TOWARDS :at AT :on ON :from FROM :with WITH :to TO))

(define-category twitter :specializes comlex-verb
     :realization (:verb  "twitter" :s SUBJECT :o OBJECT))

(define-category type-cl-verb :specializes comlex-verb
     :binds
      ((INTO top)
       (ONTO top)
       (ON top))
     :realization (:verb  "type" :s SUBJECT :o OBJECT :into INTO :onto ONTO :on ON))

(define-category uncover :specializes comlex-verb
     :realization (:verb  "uncover" :s SUBJECT :o OBJECT))

(define-category underestimate :specializes comlex-verb
     :realization (:verb  "underestimate" :s SUBJECT :o OBJECT))

;;; found existing category UNDERGO in #P"SPARSER:BIO;VERBS.LISP"

(define-category undergo-cl-verb :specializes comlex-verb
     :realization (:verb ( "undergo"  :TENSED/SINGULAR "undergos" :PAST-TENSE "underwent")
 :s SUBJECT :o OBJECT))

(define-category undermine :specializes comlex-verb
     :realization (:verb  "undermine" :s SUBJECT :o OBJECT))

(define-category underpin :specializes comlex-verb
     :binds
      ((AGAINST top))
     :realization (:verb ( "underpin"  :TENSED/SINGULAR "underpins" :PRESENT-PARTICIPLE "underpinning" :PAST-TENSE "underpinned")
 :s SUBJECT :o OBJECT :against AGAINST))

(define-category underrate :specializes comlex-verb
     :realization (:verb  "underrate" :s SUBJECT :o OBJECT))

(define-category underscore :specializes comlex-verb
     :realization (:verb  "underscore" :s SUBJECT :o OBJECT))

(define-category undertake :specializes comlex-verb
     :realization (:verb ( "undertake"  :TENSED/SINGULAR "undertakes" :PAST-TENSE "undertook")
 :s SUBJECT :o OBJECT))

(define-category undervalue :specializes comlex-verb
     :realization (:verb  "undervalue" :s SUBJECT :o OBJECT))

(define-category unearth :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "unearth" :s SUBJECT :o OBJECT :from FROM))

(define-category unfold :specializes comlex-verb
     :binds
      ((TO top))
     :realization (:verb  "unfold" :s SUBJECT :o OBJECT :to TO))

(define-category uniform :specializes comlex-verb
     :realization (:verb  "uniform" :s SUBJECT))

(define-category unify :specializes comlex-verb
     :realization (:verb  "unify" :s SUBJECT :o OBJECT))

(define-category unite :specializes comlex-verb
     :binds
      ((INTO top)
       (AGAINST top)
       (IN top)
       (ON top)
       (WITH top))
     :realization (:verb  "unite" :s SUBJECT :o OBJECT :into INTO :against AGAINST :in IN :on ON :with WITH))

(define-category unleash :specializes comlex-verb
     :binds
      ((AGAINST top)
       (ON top))
     :realization (:verb  "unleash" :s SUBJECT :o OBJECT :against AGAINST :on ON))

(define-category unpack :specializes comlex-verb
     :binds
      ((FROM top))
     :realization (:verb  "unpack" :s SUBJECT :o OBJECT :from FROM))

(define-category unravel :specializes comlex-verb
     :realization (:verb ( "unravel"  :TENSED/SINGULAR "unravels" :PRESENT-PARTICIPLE ("unravelling"
                                                                                       "unraveling") :PAST-TENSE ("unravelled"
                                                                                                                  "unraveled"))
 :s SUBJECT :o OBJECT))

(define-category update :specializes comlex-verb
     :binds
      ((ON top))
     :realization (:verb  "update" :s SUBJECT :o OBJECT :on ON))

(define-category uphold :specializes comlex-verb
     :binds
      ((AGAINST top))
     :realization (:verb ( "uphold"  :TENSED/SINGULAR "upholds" :PAST-TENSE "upheld")
 :s SUBJECT :o OBJECT :against AGAINST))

(define-category upset :specializes comlex-verb
     :realization (:verb ( "upset"  :TENSED/SINGULAR "upsets" :PRESENT-PARTICIPLE "upsetting" :PAST-TENSE "upset")
 :s SUBJECT :o OBJECT))

(define-category urge :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((TO top)
       (AGAINST top)
       (FOR top)
       (UPON top))
     :realization (:verb  "urge" :s SUBJECT :o OBJECT :to TO :against AGAINST :for FOR :upon UPON))

(define-category usher :specializes comlex-verb
     :mixins (with-p-dir)
     :realization (:verb  "usher" :s SUBJECT :o OBJECT))

(define-category vacation :specializes comlex-verb
     :binds
      ((IN top))
     :realization (:verb  "vacation" :s SUBJECT :in IN))

(define-category vaccinate :specializes comlex-verb
     :binds
      ((AGAINST top)
       (FOR top))
     :realization (:verb  "vaccinate" :s SUBJECT :o OBJECT :against AGAINST :for FOR))

(define-category vacillate :specializes comlex-verb
     :binds
      ((ABOUT top)
       (BETWEEN top)
       (OVER top)
       (ON top))
     :realization (:verb  "vacillate" :s SUBJECT :about ABOUT :between BETWEEN :over OVER :on ON))

;;; found existing category VALUE in #P"SPARSER:AMOUNTS;MEASUREMENTS.LISP"

(define-category value-cl-verb :specializes comlex-verb
     :binds
      ((IN top)
       (IN-EXCESS-OF top)
       (ABOVE top))
     :realization (:verb  "value" :s SUBJECT :o OBJECT :in IN :in-excess-of IN-EXCESS-OF :above ABOVE))

(define-category vary :specializes comlex-verb
     :binds
      ((FOR top)
       (IN top)
       (|ACCORDING TO| top)
       (TO top)
       (OVER top)
       (BETWEEN top)
       (FROM top)
       (WITH top))
     :realization (:verb  "vary" :s SUBJECT :o OBJECT :for FOR :in IN :|ACCORDING TO| |ACCORDING TO| :to TO :over OVER :between BETWEEN :from FROM :with WITH))

(define-category ventilate :specializes comlex-verb
     :realization (:verb  "ventilate" :s SUBJECT :o OBJECT))

(define-category vest :specializes comlex-verb
     :binds
      ((IN top)
       (WITH top))
     :realization (:verb  "vest" :s SUBJECT :o OBJECT :in IN :with WITH))

(define-category violate :specializes comlex-verb
     :realization (:verb  "violate" :s SUBJECT :o OBJECT))

(define-category visit :specializes comlex-verb
     :binds
      ((WITH top)
       (ON top)
       (UPON top))
     :realization (:verb  "visit" :s SUBJECT :o OBJECT :with WITH :on ON :upon UPON))

(define-category visualize :specializes comlex-verb
     :binds
      ((AT top))
     :realization (:verb  "visualize" :s SUBJECT :o OBJECT :at AT))

(define-category voice :specializes comlex-verb
     :binds
      ((BEFORE top)
       (TO top))
     :realization (:verb  "voice" :s SUBJECT :o OBJECT :before BEFORE :to TO))

(define-category volunteer :specializes comlex-verb
     :binds
      ((FOR top))
     :realization (:verb  "volunteer" :s SUBJECT :o OBJECT :for FOR))

(define-category vote :specializes comlex-verb
     :binds
      ((INTO top)
       (FROM top)
       (|OUT OF| top)
       (TO top)
       (AGAINST top)
       (ON top)
       (WITH top)
       (FOR top))
     :realization (:verb  "vote" :s SUBJECT :o OBJECT :into INTO :from FROM :|OUT OF| |OUT OF| :to TO :against AGAINST :on ON :with WITH :for FOR))

(define-category wait :specializes comlex-verb
     :binds
      ((FOR top)
       (ON top)
       (UPON top))
     :realization (:verb  "wait" :s SUBJECT :o OBJECT :for FOR :on ON :upon UPON))

(define-category waive :specializes comlex-verb
     :realization (:verb  "waive" :s SUBJECT :o OBJECT))

(define-category wake :specializes comlex-verb
     :binds
      ((FROM top)
       (TO top))
     :realization (:verb ( "wake"  :TENSED/SINGULAR "wakes" :PAST-TENSE ("woke" "waked"))
 :s SUBJECT :o OBJECT :from FROM :to TO))

(define-category walk :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((UP top)
       (FROM top)
       (INTO top)
       (TOWARDS top)
       (TOWARD top)
       (TO top)
       (ON top))
     :realization (:verb  "walk" :s SUBJECT :o OBJECT :up UP :from FROM :into INTO :towards TOWARDS :toward TOWARD :to TO :on ON))

(define-category wall :specializes comlex-verb
     :realization (:verb  "wall" :s SUBJECT :o OBJECT))

(define-category wander :specializes comlex-verb
     :mixins (with-p-dir)
     :realization (:verb  "wander" :s SUBJECT))

(define-category war :specializes comlex-verb
     :binds
      ((AGAINST top)
       (OVER top)
       (WITH top))
     :realization (:verb ( "war"  :TENSED/SINGULAR "wars" :PRESENT-PARTICIPLE "warring" :PAST-TENSE "warred")
 :s SUBJECT :against AGAINST :over OVER :with WITH))

(define-category warrant :specializes comlex-verb
     :realization (:verb  "warrant" :s SUBJECT :o OBJECT))

(define-category wash :specializes comlex-verb
     :binds
      ((THROUGH top)
       (INTO top)
       (OVER top)
       (AMONG top)
       (OF top)
       (OFF top)
       (WITH top)
       (IN top)
       (|OUT OF| top))
     :realization (:verb  "wash" :s SUBJECT :o OBJECT :through THROUGH :into INTO :over OVER :among AMONG :of OF :off OFF :with WITH :in IN :|OUT OF| |OUT OF|))

(define-category watch :specializes comlex-verb
     :binds
      ((ACROSS top)
       (FOR top)
       (OVER top))
     :realization (:verb  "watch" :s SUBJECT :o OBJECT :across ACROSS :for FOR :over OVER))

(define-category wave :specializes comlex-verb
     :binds
      ((AT top)
       (TO top))
     :realization (:verb  "wave" :s SUBJECT :o OBJECT :at AT :to TO))

(define-category weaken :specializes comlex-verb
     :realization (:verb  "weaken" :s SUBJECT :o OBJECT))

(define-category wear :specializes comlex-verb
     :binds
      ((IN top)
       (THROUGH top)
       (TO top))
     :realization (:verb ( "wear"  :TENSED/SINGULAR "wears" :PAST-TENSE "wore")
 :s SUBJECT :o OBJECT :in IN :through THROUGH :to TO))

(define-category weather :specializes comlex-verb
     :realization (:verb  "weather" :s SUBJECT :o OBJECT))

(define-category weekend :specializes comlex-verb
     :binds
      ((IN top)
       (AT top))
     :realization (:verb  "weekend" :s SUBJECT :in IN :at AT))

(define-category weigh :specializes comlex-verb
     :binds
      ((WITH top)
       (AT top)
       (AGAINST top)
       (IN top)
       (ON top)
       (UPON top))
     :realization (:verb  "weigh" :s SUBJECT :o OBJECT :with WITH :at AT :against AGAINST :in IN :on ON :upon UPON))

(define-category weight :specializes comlex-verb
     :binds
      ((AGAINST top)
       (WITH top))
     :realization (:verb  "weight" :s SUBJECT :o OBJECT :against AGAINST :with WITH))

(define-category welcome :specializes comlex-verb
     :binds
      ((IN top)
       (INTO top)
       (TO top))
     :realization (:verb  "welcome" :s SUBJECT :o OBJECT :in IN :into INTO :to TO))

(define-category wheel :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((TO top))
     :realization (:verb  "wheel" :s SUBJECT :o OBJECT :to TO))

(define-category whip :specializes comlex-verb
     :mixins (with-p-dir)
     :binds
      ((AT top)
       (INTO top))
     :realization (:verb ( "whip"  :TENSED/SINGULAR "whips" :PRESENT-PARTICIPLE "whipping" :PAST-TENSE "whipped")
 :s SUBJECT :o OBJECT :at AT :into INTO))

(define-category wild :specializes comlex-verb
     :realization (:verb  "wild" :s SUBJECT))

(define-category win :specializes comlex-verb
     :binds
      ((FROM top)
       (TO top)
       (AGAINST top))
     :realization (:verb ( "win"  :TENSED/SINGULAR "wins" :PRESENT-PARTICIPLE "winning" :PAST-TENSE "won")
 :s SUBJECT :o OBJECT :from FROM :to TO :against AGAINST))

(define-category wipe :specializes comlex-verb
     :binds
      ((AT top)
       (FROM top)
       (OFF top)
       (ON top)
       (|OUT OF| top)
       (ACROSS top)
       (DOWN top)
       (THROUGH top)
       (OVER top)
       (UP top))
     :realization (:verb  "wipe" :s SUBJECT :o OBJECT :at AT :from FROM :off OFF :on ON :|OUT OF| |OUT OF| :across ACROSS :down DOWN :through THROUGH :over OVER :up UP))

(define-category wire :specializes comlex-verb
     :realization (:verb  "wire" :s SUBJECT :o OBJECT))

(define-category wish :specializes comlex-verb
     :binds
      ((FOR top)
       (ON top)
       (UPON top))
     :realization (:verb  "wish" :s SUBJECT :o OBJECT :for FOR :on ON :upon UPON))

(define-category withdraw :specializes comlex-verb
     :binds
      ((TO top)
       (INTO top)
       (FROM top))
     :realization (:verb ( "withdraw"  :TENSED/SINGULAR "withdraws" :PAST-TENSE "withdrew")
 :s SUBJECT :o OBJECT :to TO :into INTO :from FROM))

(define-category witness :specializes comlex-verb
     :realization (:verb  "witness" :s SUBJECT :o OBJECT))

(define-category wonder :specializes comlex-verb
     :binds
      ((AT top)
       (ABOUT top))
     :realization (:verb  "wonder" :s SUBJECT :o OBJECT :at AT :about ABOUT))

(define-category woo :specializes comlex-verb
     :binds
      ((WITH top)
       (FROM top)
       (TO top))
     :realization (:verb  "woo" :s SUBJECT :o OBJECT :with WITH :from FROM :to TO))

;;; found existing category WORD in #P"SPARSER:THE-CATEGORIES;CATEGORIES.LISP"

(define-category word-cl-verb :specializes comlex-verb
     :realization (:verb  "word" :s SUBJECT :o OBJECT))

(define-category worry :specializes comlex-verb
     :binds
      ((ABOUT top)
       (OVER top))
     :realization (:verb  "worry" :s SUBJECT :o OBJECT :about ABOUT :over OVER))

(define-category worship :specializes comlex-verb
     :realization (:verb ( "worship"  :TENSED/SINGULAR "worships" :PRESENT-PARTICIPLE "worshipping" :PAST-TENSE "worshipped")
 :s SUBJECT :o OBJECT))

(define-category wrap :specializes comlex-verb
     :binds
      ((IN top)
       (ABOUT top)
       (AROUND top))
     :realization (:verb ( "wrap"  :TENSED/SINGULAR "wraps" :PRESENT-PARTICIPLE "wrapping" :PAST-TENSE "wrapped")
 :s SUBJECT :o OBJECT :in IN :about ABOUT :around AROUND))

(define-category write :specializes comlex-verb
     :binds
      ((FOR top)
       (OF top)
       (ON top)
       (ABOUT top)
       (TO top))
     :realization (:verb ( "write"  :TENSED/SINGULAR "writes" :PAST-TENSE "wrote")
 :s SUBJECT :o OBJECT :for FOR :of OF :on ON :about ABOUT :to TO))

(define-category yawn :specializes comlex-verb
     :binds
      ((AT top))
     :realization (:verb  "yawn" :s SUBJECT :at AT))

(define-category yell :specializes comlex-verb
     :binds
      ((ABOUT top)
       (AT top)
       (FOR top)
       (TO top))
     :realization (:verb  "yell" :s SUBJECT :o OBJECT :about ABOUT :at AT :for FOR :to TO))

(define-category zone :specializes comlex-verb
     :binds
      ((ON top)
       (FOR top))
     :realization (:verb  "zone" :s SUBJECT :o OBJECT :on ON :for FOR))
