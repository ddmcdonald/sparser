;;; copyright (c) 2017 sift llc. all rights reserved
;;;
;;;    file: "score-verbs"
;;;  module: "grammar/model/sl/biology/
;;; version: december 2020
;;; contains generated verb definitions from comlex for verbs not yet defined for score

(in-package :sparser)

(define-category abuse-cl-noun :specializes comlex-noun
     :realization (:noun  "abuse"))

(define-category access-cl-noun :specializes comlex-noun
     :realization (:noun ( "access" )))

(define-category accord-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "accord" :with WITH))

(define-category account-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (TO top))
     :realization (:noun  "account" :for FOR :to TO))

(define-category ache-cl-noun :specializes comlex-noun
     :realization (:noun  "ache"))

(define-category addict-cl-noun :specializes comlex-noun
     :binds
      ((TO top))
     :realization (:noun  "addict" :to TO))

(define-category address-cl-noun :specializes comlex-noun
     :binds
      ((TO top))
     :realization (:noun  "address" :to TO))

(define-category advocate-cl-noun :specializes comlex-noun
     :realization (:noun  "advocate"))

(define-category age-cl-noun :specializes comlex-noun
     :realization (:noun  "age"))

(define-category aggregate-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (WITH top))
     :realization (:noun  "aggregate" :to TO :with WITH))

(define-category aid-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (WITH top))
     :realization (:noun  "aid" :in IN :with WITH))

(define-category aim-cl-noun :specializes comlex-noun
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
     :realization (:noun  "aim" :over OVER :for FOR :before BEFORE :at AT :above ABOVE :near NEAR :beside BESIDE :|NEXT TO| |NEXT TO| :under UNDER))

(define-category alarm-cl-noun :specializes comlex-noun
     :realization (:noun  "alarm"))

(define-category alert-cl-noun :specializes comlex-noun
     :binds
      ((OF top)
       (TO top))
     :realization (:noun  "alert" :of OF :to TO))

(define-category anger-cl-noun :specializes comlex-noun
     :realization (:noun ( "anger" )))

(define-category angle-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (FOR top)
       (TO top)
       (TOWARDS top)
       (TOWARD top))
     :realization (:noun  "angle" :at AT :for FOR :to TO :towards TOWARDS :toward TOWARD))

(define-category ape-cl-noun :specializes comlex-noun
     :realization (:noun  "ape"))

(define-category appeal-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (FOR top)
       (TO top))
     :realization (:noun  "appeal" :on ON :for FOR :to TO))

(define-category approach-cl-noun :specializes comlex-noun
     :binds
      ((|CLOSE TO| top)
       (FROM top)
       (WITH top)
       (THROUGH top)
       (ALONG top)
       (FOR top)
       (ABOUT top)
       (ON top))
     :realization (:noun  "approach" :|CLOSE TO| |CLOSE TO| :from FROM :with WITH :through THROUGH :along ALONG :for FOR :about ABOUT :on ON))

(define-category arm-cl-noun :specializes comlex-noun
     :realization (:noun  "arm"))

(define-category assault-cl-noun :specializes comlex-noun
     :realization (:noun  "assault"))

(define-category attack-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "attack" :for FOR))

(define-category attempt-cl-noun :specializes comlex-noun
     :realization (:noun  "attempt"))

(define-category author-cl-noun :specializes comlex-noun
     :realization (:noun  "author"))

(define-category average-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (AT top))
     :realization (:noun  "average" :to TO :at AT))

(define-category award-cl-noun :specializes comlex-noun
     :realization (:noun  "award"))

(define-category back-cl-noun :specializes comlex-noun
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
     :realization (:noun  "back" :toward TOWARD :of OF :from FROM :against AGAINST :to TO :on ON :off OFF :into INTO :onto ONTO :down DOWN :up UP :with WITH :over OVER :|UP TO| |UP TO| :|OFF OF| |OFF OF| :|OUT OF| |OUT OF|))

(define-category backfire-cl-noun :specializes comlex-noun
     :realization (:noun  "backfire"))

(define-category balance-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (WITH top)
       (ON top))
     :realization (:noun  "balance" :against AGAINST :with WITH :on ON))

(define-category ball-cl-noun :specializes comlex-noun
     :binds
      ((INTO top))
     :realization (:noun  "ball" :into INTO))

(define-category battle-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (FOR top)
       (WITH top))
     :realization (:noun  "battle" :against AGAINST :for FOR :with WITH))

(define-category bay-cl-noun :specializes comlex-noun
     :realization (:noun  "bay"))

(define-category beach-cl-noun :specializes comlex-noun
     :realization (:noun  "beach"))

(define-category being-cl-noun :specializes comlex-noun
     :realization (:noun  "being"))

(define-category bell-cl-noun :specializes comlex-noun
     :realization (:noun  "bell"))

(define-category benefit-cl-noun :specializes comlex-noun
     :binds
      ((THROUGH top)
       (BY top)
       (FROM top))
     :realization (:noun  "benefit" :through THROUGH :by BY :from FROM))

(define-category bias-cl-noun :specializes comlex-noun
     :realization (:noun  "bias"))

(define-category bike-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((TO top)
       (FROM top)
       (FOR top))
     :realization (:noun  "bike" :to TO :from FROM :for FOR))

(define-category bill-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (BY top))
     :realization (:noun  "bill" :for FOR :by BY))

(define-category bin-cl-noun :specializes comlex-noun
     :realization (:noun  "bin"))

(define-category blame-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (ON top))
     :realization (:noun ( "blame" )
 :for FOR :on ON))

(define-category bleach-cl-noun :specializes comlex-noun
     :realization (:noun  "bleach"))

(define-category blend-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "blend" :with WITH))

(define-category blind-cl-noun :specializes comlex-noun
     :binds
      ((BY top)
       (WITH top))
     :realization (:noun  "blind" :by BY :with WITH))

(define-category bolster-cl-noun :specializes comlex-noun
     :binds
      ((IN top))
     :realization (:noun  "bolster" :in IN))

(define-category bomb-cl-noun :specializes comlex-noun
     :realization (:noun  "bomb"))

(define-category boost-cl-noun :specializes comlex-noun
     :binds
      ((ABOVE top)
       (INTO top))
     :realization (:noun  "boost" :above ABOVE :into INTO))

(define-category bottle-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (WITH top))
     :realization (:noun  "bottle" :for FOR :with WITH))

(define-category bow-cl-noun :specializes comlex-noun
     :binds
      ((BEFORE top)
       (TO top)
       (IN top)
       (WITH top))
     :realization (:noun ( "bow"  :PLURAL "bow")
 :before BEFORE :to TO :in IN :with WITH))

(define-category bowl-cl-noun :specializes comlex-noun
     :realization (:noun  "bowl"))

(define-category box-cl-noun :specializes comlex-noun
     :realization (:noun  "box"))

(define-category brace-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (WITH top)
       (FOR top))
     :realization (:noun  "brace" :against AGAINST :with WITH :for FOR))

(define-category bracket-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (IN top)
       (WITH top))
     :realization (:noun  "bracket" :into INTO :in IN :with WITH))

(define-category brake-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "brake" :for FOR))

(define-category branch-cl-noun :specializes comlex-noun
     :binds
      ((INTO top))
     :realization (:noun  "branch" :into INTO))

(define-category bridge-cl-noun :specializes comlex-noun
     :binds
      ((THROUGH top)
       (WITH top))
     :realization (:noun  "bridge" :through THROUGH :with WITH))

(define-category brief-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (ON top))
     :realization (:noun  "brief" :about ABOUT :on ON))

(define-category broadcast-cl-noun :specializes comlex-noun
     :binds
      ((ACROSS top)
       (AMONG top)
       (THROUGHOUT top)
       (TO top))
     :realization (:noun  "broadcast" :across ACROSS :among AMONG :throughout THROUGHOUT :to TO))

(define-category brook-cl-noun :specializes comlex-noun
     :realization (:noun  "brook"))

(define-category browse-cl-noun :specializes comlex-noun
     :binds
      ((AROUND top)
       (THROUGH top))
     :realization (:noun  "browse" :around AROUND :through THROUGH))

(define-category bubble-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (WITH top))
     :realization (:noun  "bubble" :from FROM :with WITH))

(define-category burden-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "burden" :with WITH))

(define-category burn-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (TO top)
       (ABOUT top)
       (FROM top)
       (FOR top)
       (WITH top))
     :realization (:noun  "burn" :into INTO :to TO :about ABOUT :from FROM :for FOR :with WITH))

(define-category bus-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (|OUT OF| top)
       (FOR top))
     :realization (:noun ( "bus"  :PLURAL "bus")
 :from FROM :|OUT OF| |OUT OF| :for FOR))

(define-category butter-cl-noun :specializes comlex-noun
     :realization (:noun  "butter"))

(define-category button-cl-noun :specializes comlex-noun
     :realization (:noun  "button"))

(define-category bypass-cl-noun :specializes comlex-noun
     :binds
      ((|IN FAVOR OF| top)
       (BY top)
       (THROUGH top)
       (VIA top))
     :realization (:noun  "bypass" :|IN FAVOR OF| |IN FAVOR OF| :by BY :through THROUGH :via VIA))

(define-category cable-cl-noun :specializes comlex-noun
     :realization (:noun  "cable"))

(define-category call-cl-noun :specializes comlex-noun
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
     :realization (:noun  "call" :at AT :via VIA :upon UPON :by BY :into INTO :for FOR :|UP TO| |UP TO| :on ON :from FROM :to TO :in IN :about ABOUT))

(define-category calm-cl-noun :specializes comlex-noun
     :realization (:noun  "calm"))

(define-category campaign-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (FOR top))
     :realization (:noun  "campaign" :against AGAINST :for FOR))

(define-category capture-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (ON top))
     :realization (:noun  "capture" :from FROM :on ON))

(define-category career-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((BESIDE top))
     :realization (:noun  "career" :beside BESIDE))

(define-category cartoon-cl-noun :specializes comlex-noun
     :realization (:noun  "cartoon"))

(define-category cash-cl-noun :specializes comlex-noun
     :binds
      ((ON top))
     :realization (:noun ( "cash" )
 :on ON))

(define-category caution-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (AGAINST top))
     :realization (:noun  "caution" :about ABOUT :against AGAINST))

(define-category cease-cl-noun :specializes comlex-noun
     :binds
      ((FROM top))
     :realization (:noun  "cease" :from FROM))

(define-category censor-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "censor" :for FOR))

(define-category center-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (AROUND top)
       (ON top))
     :realization (:noun  "center" :to TO :around AROUND :on ON))

(define-category centre-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (AROUND top)
       (ON top))
     :realization (:noun  "centre" :to TO :around AROUND :on ON))

(define-category certificate-cl-noun :specializes comlex-noun
     :realization (:noun  "certificate"))

(define-category chain-cl-noun :specializes comlex-noun
     :binds
      ((WITH top)
       (TO top))
     :realization (:noun  "chain" :with WITH :to TO))

(define-category chair-cl-noun :specializes comlex-noun
     :binds
      ((THROUGH top))
     :realization (:noun  "chair" :through THROUGH))

(define-category charge-cl-noun :specializes comlex-noun
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
     :realization (:noun  "charge" :to TO :along ALONG :up UP :with WITH :against AGAINST :on ON :for FOR :at AT))

(define-category chase-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((AFTER top)
       (FOR top)
       (UNDER top))
     :realization (:noun  "chase" :after AFTER :for FOR :under UNDER))

(define-category check-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (FOR top)
       (THROUGH top)
       (WITH top)
       (INTO top)
       (|OUT OF| top)
       (ON top))
     :realization (:noun  "check" :against AGAINST :for FOR :through THROUGH :with WITH :into INTO :|OUT OF| |OUT OF| :on ON))

(define-category checker-cl-noun :specializes comlex-noun
     :realization (:noun  "checker"))

(define-category cheer-cl-noun :specializes comlex-noun
     :realization (:noun  "cheer"))

(define-category chew-cl-noun :specializes comlex-noun
     :binds
      ((ON top))
     :realization (:noun  "chew" :on ON))

(define-category circle-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (OVER top))
     :realization (:noun  "circle" :to TO :over OVER))

(define-category claim-cl-noun :specializes comlex-noun
     :realization (:noun  "claim"))

(define-category class-cl-noun :specializes comlex-noun
     :binds
      ((BY top))
     :realization (:noun  "class" :by BY))

(define-category clean-cl-noun :specializes comlex-noun
     :binds
      ((OF top)
       (AFTER top))
     :realization (:noun  "clean" :of OF :after AFTER))

(define-category clear-cl-noun :specializes comlex-noun
     :binds
      ((OFF top)
       (|OUT OF| top)
       (|OFF OF| top)
       (ABOUT top)
       (FOR top)
       (FROM top)
       (OF top))
     :realization (:noun  "clear" :off OFF :|OUT OF| |OUT OF| :|OFF OF| |OFF OF| :about ABOUT :for FOR :from FROM :of OF))

(define-category click-cl-noun :specializes comlex-noun
     :realization (:noun  "click"))

(define-category close-cl-noun :specializes comlex-noun
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
     :realization (:noun  "close" :by BY :against AGAINST :behind BEHIND :in IN :to TO :at AT :over OVER :with WITH :on ON))

(define-category cloud-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (WITH top))
     :realization (:noun  "cloud" :in IN :with WITH))

(define-category coach-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (UNDER top))
     :realization (:noun  "coach" :to TO :under UNDER))

(define-category coat-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "coat" :with WITH))

(define-category coin-cl-noun :specializes comlex-noun
     :binds
      ((INTO top))
     :realization (:noun  "coin" :into INTO))

(define-category coke-cl-noun :specializes comlex-noun
     :realization (:noun  "coke"))

(define-category collapse-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (AGAINST top)
       (IN top)
       (INTO top))
     :realization (:noun  "collapse" :to TO :against AGAINST :in IN :into INTO))

(define-category collar-cl-noun :specializes comlex-noun
     :realization (:noun  "collar"))

(define-category collect-cl-noun :specializes comlex-noun
     :binds
      ((TOWARD top)
       (FOR top)
       (THROUGH top)
       (INTO top)
       (IN top)
       (AROUND top)
       (FROM top)
       (ON top))
     :realization (:noun  "collect" :toward TOWARD :for FOR :through THROUGH :into INTO :in IN :around AROUND :from FROM :on ON))

(define-category comb-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (THROUGH top))
     :realization (:noun  "comb" :to TO :through THROUGH))

(define-category combat-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "combat" :with WITH))

(define-category combine-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (INTO top)
       (WITH top))
     :realization (:noun  "combine" :in IN :into INTO :with WITH))

(define-category comfort-cl-noun :specializes comlex-noun
     :realization (:noun  "comfort"))

(define-category comment-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (ABOUT top)
       (ON top)
       (UPON top))
     :realization (:noun  "comment" :to TO :about ABOUT :on ON :upon UPON))

(define-category commission-cl-noun :specializes comlex-noun
     :realization (:noun  "commission"))

(define-category compass-cl-noun :specializes comlex-noun
     :realization (:noun  "compass"))

(define-category complement-cl-noun :specializes comlex-noun
     :realization (:noun  "complement"))

(define-category compound-cl-noun :specializes comlex-noun
     :binds
      ((WITH top)
       (INTO top))
     :realization (:noun  "compound" :with WITH :into INTO))

(define-category concentrate-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (TO top)
       (IN top)
       (ON top))
     :realization (:noun  "concentrate" :from FROM :to TO :in IN :on ON))

(define-category concert-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "concert" :with WITH))

(define-category condition-cl-noun :specializes comlex-noun
     :realization (:noun  "condition"))

(define-category conflict-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "conflict" :with WITH))

(define-category conjecture-cl-noun :specializes comlex-noun
     :realization (:noun  "conjecture"))

(define-category consent-cl-noun :specializes comlex-noun
     :binds
      ((TO top))
     :realization (:noun ( "consent" )
 :to TO))

(define-category contact-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (FOR top))
     :realization (:noun  "contact" :about ABOUT :for FOR))

(define-category contour-cl-noun :specializes comlex-noun
     :realization (:noun  "contour"))

(define-category converse-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (ON top)
       (WITH top))
     :realization (:noun ( "converse" )
 :about ABOUT :on ON :with WITH))

(define-category coordinate-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (WITH top))
     :realization (:noun  "coordinate" :on ON :with WITH))

(define-category copyright-cl-noun :specializes comlex-noun
     :realization (:noun  "copyright"))

(define-category cord-cl-noun :specializes comlex-noun
     :realization (:noun  "cord"))

(define-category core-cl-noun :specializes comlex-noun
     :realization (:noun  "core"))

(define-category cough-cl-noun :specializes comlex-noun
     :realization (:noun  "cough"))

(define-category count-cl-noun :specializes comlex-noun
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
     :realization (:noun  "count" :for FOR :toward TOWARD :against AGAINST :among AMONG :in IN :out OUT :upon UPON :on ON :from FROM :to TO))

(define-category counterbalance-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "counterbalance" :with WITH))

(define-category couple-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "couple" :with WITH))

(define-category course-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :realization (:noun  "course"))

(define-category cox-cl-noun :specializes comlex-noun
     :realization (:noun  "cox"))

(define-category craft-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (|OUT OF| top))
     :realization (:noun  "craft" :from FROM :|OUT OF| |OUT OF|))

(define-category crash-cl-noun :specializes comlex-noun
     :binds
      ((ONTO top)
       (AGAINST top)
       (INTO top)
       (THROUGH top))
     :realization (:noun  "crash" :onto ONTO :against AGAINST :into INTO :through THROUGH))

(define-category crease-cl-noun :specializes comlex-noun
     :realization (:noun  "crease"))

(define-category crew-cl-noun :specializes comlex-noun
     :realization (:noun  "crew"))

(define-category cripple-cl-noun :specializes comlex-noun
     :realization (:noun  "cripple"))

(define-category cross-cl-noun :specializes comlex-noun
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
     :realization (:noun  "cross" :against AGAINST :off OFF :with WITH :at AT :by BY :from FROM :into INTO :through THROUGH :to TO :over OVER))

(define-category cruise-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((AT top)
       (|OFF OF| top))
     :realization (:noun  "cruise" :at AT :|OFF OF| |OFF OF|))

(define-category crush-cl-noun :specializes comlex-noun
     :binds
      ((BENEATH top)
       (INTO top))
     :realization (:noun  "crush" :beneath BENEATH :into INTO))

(define-category cue-cl-noun :specializes comlex-noun
     :realization (:noun  "cue"))

(define-category cure-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (OF top))
     :realization (:noun  "cure" :from FROM :of OF))

(define-category curve-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((|IN FAVOR OF| top)
       (|OFF OF| top))
     :realization (:noun  "curve" :|IN FAVOR OF| |IN FAVOR OF| :|OFF OF| |OFF OF|))

(define-category dare-cl-noun :specializes comlex-noun
     :realization (:noun  "dare"))

(define-category dash-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (ON top))
     :realization (:noun  "dash" :against AGAINST :on ON))

(define-category dawn-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (UPON top))
     :realization (:noun  "dawn" :on ON :upon UPON))

(define-category daydream-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top))
     :realization (:noun  "daydream" :about ABOUT))

(define-category debate-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (ABOUT top)
       (WITH top))
     :realization (:noun  "debate" :on ON :about ABOUT :with WITH))

(define-category decay-cl-noun :specializes comlex-noun
     :binds
      ((INTO top))
     :realization (:noun ( "decay" )
 :into INTO))

(define-category decline-cl-noun :specializes comlex-noun
     :realization (:noun  "decline"))

(define-category default-cl-noun :specializes comlex-noun
     :binds
      ((ON top))
     :realization (:noun ( "default" )
 :on ON))

(define-category defect-cl-noun :specializes comlex-noun
     :binds
      ((ACROSS top)
       (FROM top)
       (TO top))
     :realization (:noun  "defect" :across ACROSS :from FROM :to TO))

(define-category delay-cl-noun :specializes comlex-noun
     :binds
      ((FROM top))
     :realization (:noun  "delay" :from FROM))

(define-category deluge-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "deluge" :with WITH))

(define-category demand-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (FROM top)
       (OF top)
       (|OUT OF| top))
     :realization (:noun  "demand" :for FOR :from FROM :of OF :|OUT OF| |OUT OF|))

(define-category design-cl-noun :specializes comlex-noun
     :binds
      ((AROUND top)
       (FOR top))
     :realization (:noun  "design" :around AROUND :for FOR))

(define-category desire-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "desire" :for FOR))

(define-category despair-cl-noun :specializes comlex-noun
     :binds
      ((OF top))
     :realization (:noun ( "despair" )
 :of OF))

(define-category discard-cl-noun :specializes comlex-noun
     :realization (:noun  "discard"))

(define-category discharge-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (TO top))
     :realization (:noun  "discharge" :from FROM :to TO))

(define-category discipline-cl-noun :specializes comlex-noun
     :realization (:noun  "discipline"))

(define-category discontent-cl-noun :specializes comlex-noun
     :realization (:noun  "discontent"))

(define-category discount-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (BY top)
       (TO top))
     :realization (:noun  "discount" :from FROM :by BY :to TO))

(define-category discourse-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (ON top)
       (WITH top))
     :realization (:noun  "discourse" :about ABOUT :on ON :with WITH))

(define-category discredit-cl-noun :specializes comlex-noun
     :binds
      ((BY top)
       (WITH top))
     :realization (:noun ( "discredit" )
 :by BY :with WITH))

(define-category disgust-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun ( "disgust" )
 :with WITH))

(define-category dislike-cl-noun :specializes comlex-noun
     :realization (:noun  "dislike"))

(define-category display-cl-noun :specializes comlex-noun
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
     :realization (:noun  "display" :atop ATOP :along ALONG :at AT :behind BEHIND :in IN :|OUT OF| |OUT OF| :to TO :toward TOWARD :on ON))

(define-category dispute-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (ON top)
       (WITH top))
     :realization (:noun  "dispute" :about ABOUT :on ON :with WITH))

(define-category disregard-cl-noun :specializes comlex-noun
     :realization (:noun ( "disregard" )))

(define-category dissent-cl-noun :specializes comlex-noun
     :realization (:noun ( "dissent" )))

(define-category distance-cl-noun :specializes comlex-noun
     :binds
      ((FROM top))
     :realization (:noun  "distance" :from FROM))

(define-category distress-cl-noun :specializes comlex-noun
     :realization (:noun ( "distress" )))

(define-category distrust-cl-noun :specializes comlex-noun
     :realization (:noun ( "distrust" )))

(define-category divine-cl-noun :specializes comlex-noun
     :realization (:noun  "divine"))

(define-category divorce-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (FOR top))
     :realization (:noun  "divorce" :from FROM :for FOR))

(define-category document-cl-noun :specializes comlex-noun
     :realization (:noun  "document"))

(define-category dodge-cl-noun :specializes comlex-noun
     :realization (:noun  "dodge"))

(define-category dose-cl-noun :specializes comlex-noun
     :realization (:noun  "dose"))

(define-category doubt-cl-noun :specializes comlex-noun
     :realization (:noun  "doubt"))

(define-category dovetail-cl-noun :specializes comlex-noun
     :binds
      ((INTO top))
     :realization (:noun  "dovetail" :into INTO))

(define-category down-cl-noun :specializes comlex-noun
     :realization (:noun  "down"))

(define-category draft-cl-noun :specializes comlex-noun
     :binds
      ((BEHIND top)
       (FOR top)
       (TO top))
     :realization (:noun  "draft" :behind BEHIND :for FOR :to TO))

(define-category dread-cl-noun :specializes comlex-noun
     :realization (:noun ( "dread" )))

(define-category dream-cl-noun :specializes comlex-noun
     :binds
      ((OF top)
       (ABOUT top))
     :realization (:noun  "dream" :of OF :about ABOUT))

(define-category dupe-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "dupe" :for FOR))

(define-category dwarf-cl-noun :specializes comlex-noun
     :realization (:noun  "dwarf"))

(define-category dye-cl-noun :specializes comlex-noun
     :realization (:noun  "dye"))

(define-category earth-cl-noun :specializes comlex-noun
     :realization (:noun ( "earth" )))

(define-category ease-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((FROM top)
       (TO top)
       (UP top)
       (OF top)
       (ON top)
       (|OFF OF| top))
     :realization (:noun ( "ease" )
 :from FROM :to TO :up UP :of OF :on ON :|OFF OF| |OFF OF|))

(define-category echo-cl-noun :specializes comlex-noun
     :binds
      ((WITH top)
       (ACROSS top)
       (INTO top)
       (FROM top)
       (AT top)
       (TO top))
     :realization (:noun ( "echo"  :PLURAL "echoes")
 :with WITH :across ACROSS :into INTO :from FROM :at AT :to TO))

(define-category egg-cl-noun :specializes comlex-noun
     :realization (:noun  "egg"))

(define-category elbow-cl-noun :specializes comlex-noun
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
     :realization (:noun  "elbow" :around AROUND :across ACROSS :into INTO :between BETWEEN :through THROUGH :|OUT OF| |OUT OF| :|NEXT TO| |NEXT TO| :towards TOWARDS :toward TOWARD))

(define-category embrace-cl-noun :specializes comlex-noun
     :realization (:noun  "embrace"))

(define-category employ-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (IN top)
       (FOR top))
     :realization (:noun  "employ" :at AT :in IN :for FOR))

(define-category empty-cl-noun :specializes comlex-noun
     :binds
      ((OF top)
       (FROM top)
       (INTO top)
       (TO top)
       (ONTO top))
     :realization (:noun  "empty" :of OF :from FROM :into INTO :to TO :onto ONTO))

(define-category encounter-cl-noun :specializes comlex-noun
     :realization (:noun  "encounter"))

(define-category end-cl-noun :specializes comlex-noun
     :binds
      ((BY top)
       (AT top)
       (WITHOUT top)
       (IN top)
       (ON top)
       (WITH top))
     :realization (:noun  "end" :by BY :at AT :without WITHOUT :in IN :on ON :with WITH))

(define-category endeavor-cl-noun :specializes comlex-noun
     :realization (:noun  "endeavor"))

(define-category engineer-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (THROUGH top))
     :realization (:noun  "engineer" :in IN :through THROUGH))

(define-category entail-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (UPON top))
     :realization (:noun  "entail" :on ON :upon UPON))

(define-category entrance-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "entrance" :with WITH))

(define-category esteem-cl-noun :specializes comlex-noun
     :realization (:noun ( "esteem" )))

(define-category estimate-cl-noun :specializes comlex-noun
    :mixins (attribute)
     :binds
      ((FROM top)
       (AT top))
     :realization (:noun  "estimate" :from FROM :at AT))

(define-category evidence-cl-noun :specializes comlex-noun
     :realization (:noun ( "evidence" )))

(define-category excuse-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (FROM top))
     :realization (:noun  "excuse" :for FOR :from FROM))

(define-category exercise-cl-noun :specializes comlex-noun
     :binds
      ((THROUGHOUT top))
     :realization (:noun  "exercise" :throughout THROUGHOUT))

(define-category exhaust-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (FROM top)
       (TO top)
       (WITH top))
     :realization (:noun  "exhaust" :into INTO :from FROM :to TO :with WITH))

(define-category exhibit-cl-noun :specializes comlex-noun
     :binds
      ((TO top))
     :realization (:noun  "exhibit" :to TO))

(define-category experience-cl-noun :specializes comlex-noun
     :realization (:noun  "experience"))

(define-category exploit-cl-noun :specializes comlex-noun
     :realization (:noun  "exploit"))

(define-category extract-cl-noun :specializes comlex-noun
     :binds
      ((FROM top))
     :realization (:noun  "extract" :from FROM))

(define-category face-cl-noun :specializes comlex-noun
     :binds
      ((WITH top)
       (ONTO top)
       (TOWARD top)
       (AT top)
       (TO top))
     :realization (:noun  "face" :with WITH :onto ONTO :toward TOWARD :at AT :to TO))

(define-category fail-cl-noun :specializes comlex-noun
     :realization (:noun ( "fail" )))

(define-category fake-cl-noun :specializes comlex-noun
     :realization (:noun  "fake"))

(define-category fashion-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (IN top)
       (OF top)
       (UPON top))
     :realization (:noun  "fashion" :from FROM :in IN :of OF :upon UPON))

(define-category fatigue-cl-noun :specializes comlex-noun
     :realization (:noun  "fatigue"))

(define-category fault-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "fault" :for FOR))

(define-category favor-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (OVER top))
     :realization (:noun  "favor" :against AGAINST :over OVER))

(define-category fear-cl-noun :specializes comlex-noun
     :binds
  ((FOR top)
   (cause top))
     :realization (:noun  "fear" :for FOR :of cause))

(define-category fence-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (OFF top))
     :realization (:noun  "fence" :in IN :off OFF))

(define-category field-cl-noun :specializes comlex-noun
     :realization (:noun  "field"))

(define-category file-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (WITH top)
       (INTO top)
       (|OUT OF| top)
       (THROUGH top)
       (DOWN top)
       (FOR top)
       (OFF top))
     :realization (:noun  "file" :against AGAINST :with WITH :into INTO :|OUT OF| |OUT OF| :through THROUGH :down DOWN :for FOR :off OFF))

(define-category filter-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (ACROSS top)
       (INTO top)
       (|OUT OF| top)
       (THROUGH top))
     :realization (:noun  "filter" :to TO :across ACROSS :into INTO :|OUT OF| |OUT OF| :through THROUGH))

(define-category finance-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (WITH top)
       (THROUGH top))
     :realization (:noun  "finance" :at AT :with WITH :through THROUGH))

(define-category finger-cl-noun :specializes comlex-noun
     :realization (:noun  "finger"))

(define-category finish-cl-noun :specializes comlex-noun
     :binds
      ((|AHEAD OF| top)
       (AT top)
       (BEFORE top)
       (BELOW top)
       (IN top)
       (WITH top))
     :realization (:noun  "finish" :|AHEAD OF| |AHEAD OF| :at AT :before BEFORE :below BELOW :in IN :with WITH))

(define-category fix-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (IN top)
       (TO top)
       (ON top)
       (WITH top))
     :realization (:noun  "fix" :at AT :in IN :to TO :on ON :with WITH))

(define-category flame-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (UP top))
     :realization (:noun  "flame" :in IN :up UP))

(define-category flash-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((AT top)
       (WITH top)
       (AGAINST top))
     :realization (:noun  "flash" :at AT :with WITH :against AGAINST))

(define-category flavour-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "flavour" :with WITH))

(define-category flock-cl-noun :specializes comlex-noun
     :binds
      ((TO top))
     :realization (:noun  "flock" :to TO))

(define-category flood-cl-noun :specializes comlex-noun
     :binds
      ((WITH top)
       (INTO top)
       (IN top)
       (THROUGH top))
     :realization (:noun  "flood" :with WITH :into INTO :in IN :through THROUGH))

(define-category floor-cl-noun :specializes comlex-noun
     :realization (:noun  "floor"))

(define-category flour-cl-noun :specializes comlex-noun
     :realization (:noun ( "flour" )))

(define-category flourish-cl-noun :specializes comlex-noun
     :realization (:noun  "flourish"))

(define-category flow-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((FROM top)
       (INTO top)
       (THROUGH top)
       (TO top)
       (TOWARDS top)
       (WITH top))
     :realization (:noun  "flow" :from FROM :into INTO :through THROUGH :to TO :towards TOWARDS :with WITH))

(define-category fold-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (INTO top)
       (ON top))
     :realization (:noun  "fold" :in IN :into INTO :on ON))

(define-category foot-cl-noun :specializes comlex-noun
     :realization (:noun ( "foot"  :PLURAL "feet")))

(define-category force-cl-noun :specializes comlex-noun
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
     :realization (:noun  "force" :from FROM :behind BEHIND :beyond BEYOND :in IN :into INTO :through THROUGH :to TO :toward TOWARD :|OUT OF| |OUT OF| :onto ONTO :on ON :upon UPON))

(define-category forecast-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (TO top)
       (ABOUT top))
     :realization (:noun  "forecast" :at AT :to TO :about ABOUT))

(define-category format-cl-noun :specializes comlex-noun
     :realization (:noun  "format"))

(define-category fox-cl-noun :specializes comlex-noun
     :binds
      ((INTO top))
     :realization (:noun  "fox" :into INTO))

(define-category fracture-cl-noun :specializes comlex-noun
     :realization (:noun  "fracture"))

(define-category frame-cl-noun :specializes comlex-noun
     :realization (:noun  "frame"))

(define-category freelance-cl-noun :specializes comlex-noun
     :realization (:noun  "freelance"))

(define-category front-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (ON top)
       (TOWARDS top)
       (TOWARD top))
     :realization (:noun  "front" :for FOR :on ON :towards TOWARDS :toward TOWARD))

(define-category fry-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (FOR top)
       (WITH top))
     :realization (:noun ( "fry"  :PLURAL "fry")
 :in IN :for FOR :with WITH))

(define-category fund-cl-noun :specializes comlex-noun
     :binds
      ((THROUGH top)
       (UNDER top))
     :realization (:noun  "fund" :through THROUGH :under UNDER))

(define-category gain-cl-noun :specializes comlex-noun
     :binds
      ((BY top)
       (TO top)
       (IN top)
       (FOR top)
       (FROM top)
       (ON top))
     :realization (:noun  "gain" :by BY :to TO :in IN :for FOR :from FROM :on ON))

(define-category gamble-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (WITH top))
     :realization (:noun  "gamble" :on ON :with WITH))

(define-category game-cl-noun :specializes comlex-noun
     :realization (:noun  "game"))

(define-category garden-cl-noun :specializes comlex-noun
     :realization (:noun  "garden"))

(define-category gargle-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "gargle" :with WITH))

(define-category garland-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "garland" :with WITH))

(define-category gauge-cl-noun :specializes comlex-noun
     :binds
      ((BY top))
     :realization (:noun  "gauge" :by BY))

(define-category gaze-cl-noun :specializes comlex-noun
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
     :realization (:noun  "gaze" :upon UPON :towards TOWARDS :over OVER :across ACROSS :at AT :through THROUGH :out OUT :on ON :toward TOWARD))

(define-category gear-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (TO top)
       (TOWARDS top))
     :realization (:noun  "gear" :for FOR :to TO :towards TOWARDS))

(define-category gesture-cl-noun :specializes comlex-noun
     :binds
      ((AT top))
     :realization (:noun  "gesture" :at AT))

(define-category gift-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "gift" :with WITH))

(define-category ginger-cl-noun :specializes comlex-noun
     :realization (:noun ( "ginger" )))

(define-category glance-cl-noun :specializes comlex-noun
     :binds
      ((OVER top)
       (AT top)
       (ACROSS top)
       (|OFF OF| top)
       (OFF top))
     :realization (:noun  "glance" :over OVER :at AT :across ACROSS :|OFF OF| |OFF OF| :off OFF))

(define-category glimmer-cl-noun :specializes comlex-noun
     :realization (:noun  "glimmer"))

(define-category glimpse-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (IN top)
       (|OUT OF| top))
     :realization (:noun  "glimpse" :from FROM :in IN :|OUT OF| |OUT OF|))

(define-category gong-cl-noun :specializes comlex-noun
     :realization (:noun  "gong"))

(define-category grade-cl-noun :specializes comlex-noun
     :realization (:noun  "grade"))

(define-category graduate-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (TO top)
       (FROM top)
       (INTO top)
       (AT top)
       (WITH top))
     :realization (:noun  "graduate" :in IN :to TO :from FROM :into INTO :at AT :with WITH))

(define-category grant-cl-noun :specializes comlex-noun
     :realization (:noun  "grant"))

(define-category grasp-cl-noun :specializes comlex-noun
     :binds
      ((ONTO top))
     :realization (:noun  "grasp" :onto ONTO))

(define-category grave-cl-noun :specializes comlex-noun
     :realization (:noun  "grave"))

(define-category grey-cl-noun :specializes comlex-noun
     :realization (:noun  "grey"))

(define-category group-cl-noun :specializes comlex-noun
     :binds
      ((WITH top)
       (UNDER top))
     :realization (:noun  "group" :with WITH :under UNDER))

(define-category guess-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (ABOUT top)
       (AT top))
     :realization (:noun  "guess" :from FROM :about ABOUT :at AT))

(define-category guide-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((ON top))
     :realization (:noun  "guide" :on ON))

(define-category hail-cl-noun :specializes comlex-noun
     :binds
      ((FROM top))
     :realization (:noun  "hail" :from FROM))

(define-category halt-cl-noun :specializes comlex-noun
     :binds
      ((FROM top))
     :realization (:noun  "halt" :from FROM))

(define-category hamper-cl-noun :specializes comlex-noun
     :realization (:noun  "hamper"))

(define-category hand-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (TO top))
     :realization (:noun  "hand" :from FROM :to TO))

(define-category handle-cl-noun :specializes comlex-noun
     :realization (:noun  "handle"))

(define-category handshake-cl-noun :specializes comlex-noun
     :realization (:noun  "handshake"))

(define-category harm-cl-noun :specializes comlex-noun
     :binds
      ((BY top)
       (WITH top))
     :realization (:noun ( "harm" )
 :by BY :with WITH))

(define-category harness-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "harness" :for FOR))

(define-category hatch-cl-noun :specializes comlex-noun
     :realization (:noun  "hatch"))

(define-category hazard-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top))
     :realization (:noun  "hazard" :about ABOUT))

(define-category head-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((OVER top)
       (TOWARD top)
       (IN top)
       (DOWN top)
       (TO top)
       (UP top)
       (FOR top))
     :realization (:noun  "head" :over OVER :toward TOWARD :in IN :down DOWN :to TO :up UP :for FOR))

(define-category heat-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (ON top)
       (OVER top)
       (TO top)
       (WITH top))
     :realization (:noun  "heat" :into INTO :on ON :over OVER :to TO :with WITH))

(define-category hedge-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (ON top))
     :realization (:noun  "hedge" :about ABOUT :on ON))

(define-category heed-cl-noun :specializes comlex-noun
     :realization (:noun ( "heed" )))

(define-category help-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((BY top)
       (OFF top)
       (AROUND top)
       (IN top)
       (|OFF OF| top)
       (WITH top))
     :realization (:noun  "help" :by BY :off OFF :around AROUND :in IN :|OFF OF| |OFF OF| :with WITH))

(define-category hijack-cl-noun :specializes comlex-noun
     :binds
      ((TO top))
     :realization (:noun  "hijack" :to TO))

(define-category hire-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (ON top)
       (FOR top))
     :realization (:noun ( "hire" )
 :from FROM :on ON :for FOR))

(define-category hoard-cl-noun :specializes comlex-noun
     :realization (:noun  "hoard"))

(define-category hoax-cl-noun :specializes comlex-noun
     :binds
      ((INTO top))
     :realization (:noun  "hoax" :into INTO))

(define-category hole-cl-noun :specializes comlex-noun
     :binds
      ((INSIDE top)
       (IN top)
       (FOR top))
     :realization (:noun  "hole" :inside INSIDE :in IN :for FOR))

(define-category holiday-cl-noun :specializes comlex-noun
     :binds
      ((IN top))
     :realization (:noun  "holiday" :in IN))

(define-category honor-cl-noun :specializes comlex-noun
     :binds
      ((WITH top)
       (BY top)
       (FOR top))
     :realization (:noun  "honor" :with WITH :by BY :for FOR))

(define-category host-cl-noun :specializes comlex-noun
     :realization (:noun  "host"))

(define-category house-cl-noun :specializes comlex-noun
     :binds
      ((AMONG top)
       (INSIDE top)
       (IN top))
     :realization (:noun  "house" :among AMONG :inside INSIDE :in IN))

(define-category humor-cl-noun :specializes comlex-noun
     :realization (:noun  "humor"))

(define-category humour-cl-noun :specializes comlex-noun
     :realization (:noun  "humour"))

(define-category hunch-cl-noun :specializes comlex-noun
     :realization (:noun  "hunch"))

(define-category hunt-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "hunt" :for FOR))

(define-category hurdle-cl-noun :specializes comlex-noun
     :realization (:noun  "hurdle"))

(define-category image-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (ON top))
     :realization (:noun  "image" :in IN :on ON))

(define-category implement-cl-noun :specializes comlex-noun
     :realization (:noun  "implement"))

(define-category incline-cl-noun :specializes comlex-noun
     :binds
      ((TOWARDS top)
       (TO top)
       (TOWARD top))
     :realization (:noun  "incline" :towards TOWARDS :to TO :toward TOWARD))

(define-category index-cl-noun :specializes comlex-noun
     :binds
      ((BY top)
       (WITH top))
     :realization (:noun ( "index"  :PLURAL ("indexes" "indices"))
 :by BY :with WITH))

(define-category input-cl-noun :specializes comlex-noun
     :realization (:noun  "input"))

(define-category instance-cl-noun :specializes comlex-noun
     :realization (:noun  "instance"))

(define-category institute-cl-noun :specializes comlex-noun
     :realization (:noun  "institute"))

(define-category insult-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "insult" :with WITH))

(define-category interest-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (WITH top))
     :realization (:noun  "interest" :in IN :with WITH))

(define-category interview-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (FOR top))
     :realization (:noun  "interview" :on ON :for FOR))

(define-category introvert-cl-noun :specializes comlex-noun
     :realization (:noun  "introvert"))

(define-category invalid-cl-noun :specializes comlex-noun
     :realization (:noun  "invalid"))

(define-category inverse-cl-noun :specializes comlex-noun
     :realization (:noun  "inverse"))

(define-category invite-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (INTO top)
       (TO top))
     :realization (:noun  "invite" :for FOR :into INTO :to TO))

(define-category issue-cl-noun :specializes comlex-noun
     :binds
      ((THROUGH top)
       (FROM top)
       (|OUT OF| top))
     :realization (:noun  "issue" :through THROUGH :from FROM :|OUT OF| |OUT OF|))

(define-category jail-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (ON top)
       (FOR top))
     :realization (:noun  "jail" :in IN :on ON :for FOR))

(define-category jaw-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (AT top)
       (FOR top))
     :realization (:noun  "jaw" :about ABOUT :at AT :for FOR))

(define-category join-cl-noun :specializes comlex-noun
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
     :realization (:noun  "join" :at AT :behind BEHIND :on ON :through THROUGH :under UNDER :by BY :for FOR :in IN :with WITH :to TO))

(define-category joke-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (TO top)
       (WITH top))
     :realization (:noun  "joke" :about ABOUT :to TO :with WITH))

(define-category journey-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((FROM top)
       (TO top))
     :realization (:noun  "journey" :from FROM :to TO))

(define-category judge-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (FROM top)
       (|IN FAVOR OF| top)
       (BY top)
       (FOR top)
       (ON top)
       (IN top))
     :realization (:noun  "judge" :against AGAINST :from FROM :|IN FAVOR OF| |IN FAVOR OF| :by BY :for FOR :on ON :in IN))

(define-category keen-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top))
     :realization (:noun  "keen" :about ABOUT))

(define-category key-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (OVER top)
       (TO top))
     :realization (:noun  "key" :for FOR :over OVER :to TO))

(define-category kiss-cl-noun :specializes comlex-noun
     :binds
      ((ON top))
     :realization (:noun  "kiss" :on ON))

(define-category knight-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "knight" :for FOR))

(define-category labor-cl-noun :specializes comlex-noun
     :binds
      ((WITH top)
       (AT top)
       (OVER top)
       (ON top)
       (UNDER top))
     :realization (:noun  "labor" :with WITH :at AT :over OVER :on ON :under UNDER))

(define-category labour-cl-noun :specializes comlex-noun
     :binds
      ((WITH top)
       (AT top)
       (OVER top)
       (ON top)
       (UNDER top))
     :realization (:noun  "labour" :with WITH :at AT :over OVER :on ON :under UNDER))

(define-category ladder-cl-noun :specializes comlex-noun
     :realization (:noun  "ladder"))

(define-category lament-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (FOR top)
       (OVER top))
     :realization (:noun  "lament" :about ABOUT :for FOR :over OVER))

(define-category land-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (ON top)
       (IN top)
       (AT top))
     :realization (:noun  "land" :to TO :on ON :in IN :at AT))

(define-category landscape-cl-noun :specializes comlex-noun
     :realization (:noun  "landscape"))

(define-category last-cl-noun :specializes comlex-noun
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
     :realization (:noun  "last" :around AROUND :about ABOUT :from FROM :between BETWEEN :for FOR :till TILL :throughout THROUGHOUT :through THROUGH :over OVER :|UP TO| |UP TO| :to TO :under UNDER))

(define-category laugh-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (AT top)
       (|OUT OF| top)
       (|OFF OF| top)
       (OFF top))
     :realization (:noun  "laugh" :about ABOUT :at AT :|OUT OF| |OUT OF| :|OFF OF| |OFF OF| :off OFF))

(define-category launch-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (INTO top)
       (ON top))
     :realization (:noun  "launch" :against AGAINST :into INTO :on ON))

(define-category layer-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (INTO top)
       (ONTO top)
       (OVER top)
       (ON top)
       (UPON top)
       (WITH top))
     :realization (:noun  "layer" :in IN :into INTO :onto ONTO :over OVER :on ON :upon UPON :with WITH))

(define-category lean-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((OVER top)
       (FROM top)
       (UPON top)
       (AGAINST top)
       (AT top))
     :realization (:noun ( "lean" )
 :over OVER :from FROM :upon UPON :against AGAINST :at AT))

(define-category license-cl-noun :specializes comlex-noun
     :realization (:noun  "license"))

(define-category lift-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((|OUT OF| top)
       (FROM top)
       (OVER top)
       (TOWARDS top)
       (TOWARD top)
       (TO top)
       (|OFF OF| top))
     :realization (:noun  "lift" :|OUT OF| |OUT OF| :from FROM :over OVER :towards TOWARDS :toward TOWARD :to TO :|OFF OF| |OFF OF|))

(define-category litter-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "litter" :with WITH))

(define-category load-cl-noun :specializes comlex-noun
     :binds
      ((ABOARD top)
       (IN top)
       (INTO top)
       (ON top)
       (ONTO top)
       (WITH top))
     :realization (:noun  "load" :aboard ABOARD :in IN :into INTO :on ON :onto ONTO :with WITH))

(define-category lock-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (AROUND top)
       (AT top)
       (IN top)
       (INTO top)
       (|OUT OF| top))
     :realization (:noun  "lock" :against AGAINST :around AROUND :at AT :in IN :into INTO :|OUT OF| |OUT OF|))

(define-category lodge-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (AGAINST top)
       (INSIDE top)
       (NEAR top)
       (BETWEEN top)
       (IN top)
       (UNDER top)
       (WITH top))
     :realization (:noun  "lodge" :at AT :against AGAINST :inside INSIDE :near NEAR :between BETWEEN :in IN :under UNDER :with WITH))

(define-category lord-cl-noun :specializes comlex-noun
     :binds
      ((OVER top))
     :realization (:noun  "lord" :over OVER))

(define-category love-cl-noun :specializes comlex-noun
     :realization (:noun  "love"))

(define-category lull-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (TO top))
     :realization (:noun  "lull" :into INTO :to TO))

(define-category lure-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :realization (:noun  "lure"))

(define-category machine-cl-noun :specializes comlex-noun
     :realization (:noun  "machine"))

(define-category mail-cl-noun :specializes comlex-noun
     :realization (:noun  "mail"))

(define-category major-cl-noun :specializes comlex-noun
     :binds
      ((IN top))
     :realization (:noun  "major" :in IN))

(define-category mandate-cl-noun :specializes comlex-noun
     :realization (:noun  "mandate"))

(define-category manifest-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (THROUGH top))
     :realization (:noun  "manifest" :in IN :through THROUGH))

(define-category manifold-cl-noun :specializes comlex-noun
     :realization (:noun  "manifold"))

(define-category manufacture-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (FROM top))
     :realization (:noun  "manufacture" :for FOR :from FROM))

(define-category march-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((WITH top)
       (FOR top)
       (AGAINST top))
     :realization (:noun  "march" :with WITH :for FOR :against AGAINST))

(define-category mark-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (ON top)
       (FOR top)
       (WITH top))
     :realization (:noun  "mark" :at AT :on ON :for FOR :with WITH))

(define-category market-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (FOR top))
     :realization (:noun  "market" :to TO :for FOR))

(define-category mask-cl-noun :specializes comlex-noun
     :realization (:noun  "mask"))

(define-category master-cl-noun :specializes comlex-noun
     :realization (:noun  "master"))

(define-category merit-cl-noun :specializes comlex-noun
     :realization (:noun  "merit"))

(define-category message-cl-noun :specializes comlex-noun
     :realization (:noun  "message"))

(define-category mill-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (INTO top))
     :realization (:noun  "mill" :in IN :into INTO))

(define-category mind-cl-noun :specializes comlex-noun
     :realization (:noun  "mind"))

(define-category mine-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (FROM top)
       (|OUT OF| top))
     :realization (:noun  "mine" :for FOR :from FROM :|OUT OF| |OUT OF|))

(define-category mirror-cl-noun :specializes comlex-noun
     :realization (:noun  "mirror"))

(define-category misconduct-cl-noun :specializes comlex-noun
     :realization (:noun ( "misconduct" )))

(define-category miss-cl-noun :specializes comlex-noun
     :binds
      ((BY top)
       (ON top)
       (FROM top))
     :realization (:noun  "miss" :by BY :on ON :from FROM))

(define-category mistrust-cl-noun :specializes comlex-noun
     :realization (:noun ( "mistrust" )))

(define-category mix-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (WITH top))
     :realization (:noun  "mix" :into INTO :with WITH))

(define-category moderate-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (BY top))
     :realization (:noun  "moderate" :for FOR :by BY))

(define-category mount-cl-noun :specializes comlex-noun
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
     :realization (:noun  "mount" :above ABOVE :against AGAINST :at AT :to TO :in IN :over OVER :onto ONTO :on ON :with WITH :for FOR))

(define-category mouth-cl-noun :specializes comlex-noun
     :binds
      ((TO top))
     :realization (:noun  "mouth" :to TO))

(define-category mute-cl-noun :specializes comlex-noun
     :realization (:noun  "mute"))

(define-category neglect-cl-noun :specializes comlex-noun
     :realization (:noun ( "neglect" )))

(define-category neighbor-cl-noun :specializes comlex-noun
     :realization (:noun  "neighbor"))

(define-category neighbour-cl-noun :specializes comlex-noun
     :realization (:noun  "neighbour"))

(define-category nest-cl-noun :specializes comlex-noun
     :binds
      ((BY top)
       (IN top)
       (UNDER top))
     :realization (:noun  "nest" :by BY :in IN :under UNDER))

(define-category nettle-cl-noun :specializes comlex-noun
     :binds
      ((INTO top))
     :realization (:noun  "nettle" :into INTO))

(define-category nose-cl-noun :specializes comlex-noun
     :realization (:noun  "nose"))

(define-category notice-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top))
     :realization (:noun  "notice" :about ABOUT))

(define-category nuance-cl-noun :specializes comlex-noun
     :realization (:noun  "nuance"))

(define-category nudge-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :realization (:noun  "nudge"))

(define-category nurse-cl-noun :specializes comlex-noun
     :binds
      ((TO top))
     :realization (:noun  "nurse" :to TO))

(define-category nurture-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (TO top))
     :realization (:noun ( "nurture" )
 :into INTO :to TO))

(define-category occasion-cl-noun :specializes comlex-noun
     :realization (:noun  "occasion"))

(define-category offer-cl-noun :specializes comlex-noun
     :realization (:noun  "offer"))

(define-category open-cl-noun :specializes comlex-noun
     :binds
      ((UNTO top)
       (TO top)
       (ON top))
     :realization (:noun  "open" :unto UNTO :to TO :on ON))

(define-category order-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (ACROSS top)
       (FROM top)
       (IN top)
       (|ACCORDING TO| top)
       (BY top))
     :realization (:noun  "order" :for FOR :across ACROSS :from FROM :in IN :|ACCORDING TO| |ACCORDING TO| :by BY))

(define-category orient-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (TOWARD top)
       (TOWARDS top)
       (WITH top)
       (TO top))
     :realization (:noun ( "orient" )
 :against AGAINST :toward TOWARD :towards TOWARDS :with WITH :to TO))

(define-category outline-cl-noun :specializes comlex-noun
     :realization (:noun  "outline"))

(define-category overburden-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun ( "overburden" )
 :with WITH))

(define-category overflow-cl-noun :specializes comlex-noun
     :binds
      ((ONTO top)
       (WITH top))
     :realization (:noun  "overflow" :onto ONTO :with WITH))

(define-category pack-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (ON top)
       (ONTO top)
       (WITH top)
       (INTO top)
       (IN top))
     :realization (:noun  "pack" :to TO :on ON :onto ONTO :with WITH :into INTO :in IN))

(define-category package-cl-noun :specializes comlex-noun
     :realization (:noun  "package"))

(define-category page-cl-noun :specializes comlex-noun
     :realization (:noun  "page"))

(define-category paint-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (OVER top)
       (INTO top)
       (ACROSS top)
       (ON top)
       (TO top))
     :realization (:noun  "paint" :in IN :over OVER :into INTO :across ACROSS :on ON :to TO))

(define-category pair-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "pair" :with WITH))

(define-category paper-cl-noun :specializes comlex-noun
     :realization (:noun  "paper"))

(define-category pass-cl-noun :specializes comlex-noun
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
     :realization (:noun  "pass" :between BETWEEN :from FROM :into INTO :over OVER :under UNDER :for FOR :with WITH :without WITHOUT :through THROUGH :on ON :to TO))

(define-category patent-cl-noun :specializes comlex-noun
     :realization (:noun  "patent"))

(define-category pause-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "pause" :for FOR))

(define-category pension-cl-noun :specializes comlex-noun
     :realization (:noun  "pension"))

(define-category people-cl-noun :specializes comlex-noun
     :realization (:noun  "people"))

(define-category phase-cl-noun :specializes comlex-noun
     :binds
      ((INTO top))
     :realization (:noun  "phase" :into INTO))

(define-category phone-cl-noun :specializes comlex-noun
     :realization (:noun  "phone"))

(define-category phrase-cl-noun :specializes comlex-noun
     :realization (:noun  "phrase"))

(define-category pick-cl-noun :specializes comlex-noun
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
     :realization (:noun  "pick" :along ALONG :for FOR :into INTO :|OUT OF| |OUT OF| :over OVER :from FROM :off OFF :through THROUGH :on ON))

(define-category pickle-cl-noun :specializes comlex-noun
     :realization (:noun  "pickle"))

(define-category picture-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (FROM top)
       (ON top))
     :realization (:noun  "picture" :in IN :from FROM :on ON))

(define-category piece-cl-noun :specializes comlex-noun
     :binds
      ((FROM top))
     :realization (:noun  "piece" :from FROM))

(define-category plague-cl-noun :specializes comlex-noun
     :realization (:noun  "plague"))

(define-category play-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (ON top)
       (UPON top)
       (AGAINST top)
       (WITH top))
     :realization (:noun  "play" :for FOR :on ON :upon UPON :against AGAINST :with WITH))

(define-category point-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (|OUT OF| top)
       (TO top)
       (DOWN top)
       (AT top)
       (IN top)
       (TOWARD top))
     :realization (:noun  "point" :on ON :|OUT OF| |OUT OF| :to TO :down DOWN :at AT :in IN :toward TOWARD))

(define-category poison-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (WITH top))
     :realization (:noun  "poison" :against AGAINST :with WITH))

(define-category police-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (FOR top))
     :realization (:noun ( "police"  :PLURAL "police")
 :against AGAINST :for FOR))

(define-category polish-cl-noun :specializes comlex-noun
     :binds
      ((ON top))
     :realization (:noun  "polish" :on ON))

(define-category poll-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (ABOUT top))
     :realization (:noun  "poll" :on ON :about ABOUT))

(define-category pool-cl-noun :specializes comlex-noun
     :realization (:noun  "pool"))

(define-category port-cl-noun :specializes comlex-noun
     :realization (:noun  "port"))

(define-category portion-cl-noun :specializes comlex-noun
     :binds
      ((AMONG top)
       (BETWEEN top)
       (TO top))
     :realization (:noun  "portion" :among AMONG :between BETWEEN :to TO))

(define-category pose-cl-noun :specializes comlex-noun
     :binds
      ((LIKE top)
       (WITH top)
       (FOR top)
       (TO top))
     :realization (:noun  "pose" :like LIKE :with WITH :for FOR :to TO))

(define-category position-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :realization (:noun  "position"))

(define-category post-cl-noun :specializes comlex-noun
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
     :realization (:noun  "post" :before BEFORE :around AROUND :at AT :for FOR :by BY :in IN :throughout THROUGHOUT :on ON))

(define-category posture-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (TOWARD top))
     :realization (:noun  "posture" :in IN :toward TOWARD))

(define-category potter-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (THROUGH top)
       (WITH top))
     :realization (:noun  "potter" :in IN :through THROUGH :with WITH))

(define-category pound-cl-noun :specializes comlex-noun
     :binds
      ((THROUGH top)
       (ON top)
       (AGAINST top)
       (INTO top)
       (TO top))
     :realization (:noun  "pound" :through THROUGH :on ON :against AGAINST :into INTO :to TO))

(define-category pout-cl-noun :specializes comlex-noun
     :realization (:noun  "pout"))

(define-category power-cl-noun :specializes comlex-noun
     :realization (:noun  "power"))

(define-category practice-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (ON top)
       (UPON top))
     :realization (:noun  "practice" :for FOR :on ON :upon UPON))

(define-category praise-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (FOR top)
       (TO top))
     :realization (:noun  "praise" :about ABOUT :for FOR :to TO))

(define-category prejudice-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (|IN FAVOR OF| top))
     :realization (:noun  "prejudice" :against AGAINST :|IN FAVOR OF| |IN FAVOR OF|))

(define-category premise-cl-noun :specializes comlex-noun
     :binds
      ((BY top)
       (WITH top))
     :realization (:noun  "premise" :by BY :with WITH))

(define-category prep-cl-noun :specializes comlex-noun
     :realization (:noun  "prep"))

(define-category press-cl-noun :specializes comlex-noun
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
     :realization (:noun  "press" :into INTO :with WITH :along ALONG :down DOWN :in IN :|OUT OF| |OUT OF| :upon UPON :on ON :against AGAINST :for FOR))

(define-category pressure-cl-noun :specializes comlex-noun
     :binds
      ((WITH top)
       (|IN FAVOR OF| top)
       (INTO top)
       (ABOUT top)
       (OVER top))
     :realization (:noun  "pressure" :with WITH :|IN FAVOR OF| |IN FAVOR OF| :into INTO :about ABOUT :over OVER))

(define-category prey-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (UPON top))
     :realization (:noun ( "prey" )
 :on ON :upon UPON))

(define-category price-cl-noun :specializes comlex-noun
     :realization (:noun  "price"))

(define-category print-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (ON top))
     :realization (:noun  "print" :in IN :on ON))

(define-category prize-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (|OUT OF| top))
     :realization (:noun  "prize" :for FOR :|OUT OF| |OUT OF|))

(define-category process-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (FOR top))
     :realization (:noun  "process" :into INTO :for FOR))

(define-category profile-cl-noun :specializes comlex-noun
     :realization (:noun  "profile"))

(define-category profit-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (ON top))
     :realization (:noun  "profit" :from FROM :on ON))

(define-category progress-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :realization (:noun  "progress"))

(define-category project-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (THROUGH top)
       (INTO top)
       (TO top)
       (ON top)
       (ONTO top)
       (TOWARDS top)
       (TOWARD top))
     :realization (:noun  "project" :from FROM :through THROUGH :into INTO :to TO :on ON :onto ONTO :towards TOWARDS :toward TOWARD))

(define-category promise-cl-noun :specializes comlex-noun
     :realization (:noun  "promise"))

(define-category prompt-cl-noun :specializes comlex-noun
     :binds
      ((INTO top))
     :realization (:noun  "prompt" :into INTO))

(define-category proposition-cl-noun :specializes comlex-noun
     :realization (:noun  "proposition"))

(define-category prospect-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "prospect" :for FOR))

(define-category protest-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (OVER top)
       (AGAINST top)
       (FOR top))
     :realization (:noun  "protest" :to TO :over OVER :against AGAINST :for FOR))

(define-category punch-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (|OUT OF| top))
     :realization (:noun  "punch" :in IN :|OUT OF| |OUT OF|))

(define-category purchase-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (FROM top)
       (FOR top))
     :realization (:noun  "purchase" :at AT :from FROM :for FOR))

(define-category puzzle-cl-noun :specializes comlex-noun
     :binds
      ((OVER top))
     :realization (:noun  "puzzle" :over OVER))

(define-category queen-cl-noun :specializes comlex-noun
     :realization (:noun  "queen"))

(define-category quest-cl-noun :specializes comlex-noun
     :binds
      ((AFTER top)
       (FOR top))
     :realization (:noun  "quest" :after AFTER :for FOR))

(define-category quiet-cl-noun :specializes comlex-noun
     :realization (:noun ( "quiet" )))

(define-category quote-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (FROM top)
       (AT top))
     :realization (:noun  "quote" :in IN :from FROM :at AT))

(define-category race-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((AGAINST top)
       (FOR top)
       (WITH top))
     :realization (:noun  "race" :against AGAINST :for FOR :with WITH))

(define-category racket-cl-noun :specializes comlex-noun
     :realization (:noun  "racket"))

(define-category raffle-cl-noun :specializes comlex-noun
     :realization (:noun  "raffle"))

(define-category raft-cl-noun :specializes comlex-noun
     :realization (:noun  "raft"))

(define-category rail-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (AGAINST top)
       (FOR top))
     :realization (:noun  "rail" :about ABOUT :against AGAINST :for FOR))

(define-category rally-cl-noun :specializes comlex-noun
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
     :realization (:noun  "rally" :into INTO :past PAST :from FROM :behind BEHIND :for FOR :on ON :before BEFORE :around AROUND :against AGAINST :to TO))

(define-category ration-cl-noun :specializes comlex-noun
     :realization (:noun  "ration"))


(define-category rebuke-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "rebuke" :for FOR))

(define-category recall-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (TO top))
     :realization (:noun  "recall" :for FOR :to TO))

(define-category receipt-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "receipt" :for FOR))

(define-category record-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (IN top)
       (FOR top)
       (ON top))
     :realization (:noun  "record" :at AT :in IN :for FOR :on ON))

(define-category reform-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (INTO top))
     :realization (:noun  "reform" :from FROM :into INTO))

(define-category refrain-cl-noun :specializes comlex-noun
     :binds
      ((FROM top))
     :realization (:noun  "refrain" :from FROM))

(define-category refund-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (TO top))
     :realization (:noun  "refund" :for FOR :to TO))

(define-category refuse-cl-noun :specializes comlex-noun
     :realization (:noun ( "refuse" )))

(define-category regard-cl-noun :specializes comlex-noun
     :binds
      ((|IN TERMS OF| top)
       (IN top)
       (WITH top))
     :realization (:noun  "regard" :|IN TERMS OF| |IN TERMS OF| :in IN :with WITH))

(define-category register-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (ON top)
       (UNDER top)
       (IN top)
       (INTO top)
       (FOR top)
       (WITH top))
     :realization (:noun  "register" :at AT :on ON :under UNDER :in IN :into INTO :for FOR :with WITH))

(define-category reign-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (OVER top))
     :realization (:noun  "reign" :for FOR :over OVER))

(define-category reject-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (ON top)
       (FOR top)
       (FROM top))
     :realization (:noun  "reject" :in IN :on ON :for FOR :from FROM))

(define-category remark-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (ABOUT top))
     :realization (:noun  "remark" :on ON :about ABOUT))

(define-category remedy-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "remedy" :with WITH))

(define-category repeat-cl-noun :specializes comlex-noun
     :binds
      ((BEFORE top)
       (FOR top)
       (TO top))
     :realization (:noun  "repeat" :before BEFORE :for FOR :to TO))

(define-category reply-cl-noun :specializes comlex-noun
     :binds
      ((TO top))
     :realization (:noun  "reply" :to TO))

(define-category repute-cl-noun :specializes comlex-noun
     :realization (:noun ( "repute" )))

(define-category request-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (FROM top))
     :realization (:noun  "request" :for FOR :from FROM))

(define-category rescue-cl-noun :specializes comlex-noun
     :binds
      ((FROM top))
     :realization (:noun  "rescue" :from FROM))

(define-category research-cl-noun :specializes comlex-noun
     :realization (:noun  "research"))

(define-category reserve-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (UNDER top)
       (FOR top)
       (THROUGH top)
       (TILL top))
     :realization (:noun  "reserve" :to TO :under UNDER :for FOR :through THROUGH :till TILL))

(define-category resolve-cl-noun :specializes comlex-noun
     :binds
      ((BY top)
       (IN top)
       (WITH top)
       (INTO top))
     :realization (:noun  "resolve" :by BY :in IN :with WITH :into INTO))

(define-category respect-cl-noun :specializes comlex-noun
     :realization (:noun  "respect"))

(define-category rest-cl-noun :specializes comlex-noun
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
     :realization (:noun  "rest" :for FOR :atop ATOP :against AGAINST :at AT :from FROM :in IN :inside INSIDE :upon UPON :with WITH :across ACROSS :on ON))

(define-category retail-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (IN top)
       (THROUGH top)
       (UNDER top)
       (FOR top))
     :realization (:noun  "retail" :at AT :in IN :through THROUGH :under UNDER :for FOR))

(define-category retire-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (INTO top)
       (TO top)
       (FROM top))
     :realization (:noun ( "retire" )
 :in IN :into INTO :to TO :from FROM))

(define-category review-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (FOR top))
     :realization (:noun  "review" :from FROM :for FOR))

(define-category revise-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (INTO top)
       (TO top))
     :realization (:noun  "revise" :from FROM :into INTO :to TO))

(define-category revolt-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top))
     :realization (:noun  "revolt" :against AGAINST))

(define-category reward-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "reward" :for FOR))

(define-category ridge-cl-noun :specializes comlex-noun
     :realization (:noun  "ridge"))

(define-category right-cl-noun :specializes comlex-noun
     :realization (:noun  "right"))

(define-category rinse-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (WITH top))
     :realization (:noun  "rinse" :in IN :with WITH))

(define-category ripple-cl-noun :specializes comlex-noun
     :binds
      ((WITH top)
       (ACROSS top)
       (THROUGH top))
     :realization (:noun  "ripple" :with WITH :across ACROSS :through THROUGH))

(define-category risk-cl-noun :specializes comlex-noun
  :mixins (attribute)
  :binds
  ((FOR top)
   (ON top))
  :realization (:noun  "risk" :for FOR :on ON))

(define-category rivet-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "rivet" :with WITH))

(define-category room-cl-noun :specializes comlex-noun
     :binds
      ((WITH top)
       (BELOW top)
       (AT top)
       (INSIDE top)
       (IN top)
       (OVER top)
       (UNDER top))
     :realization (:noun  "room" :with WITH :below BELOW :at AT :inside INSIDE :in IN :over OVER :under UNDER))

(define-category root-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (INTO top)
       (FOR top))
     :realization (:noun  "root" :in IN :into INTO :for FOR))

(define-category rough-cl-noun :specializes comlex-noun
     :realization (:noun  "rough"))

(define-category round-cl-noun :specializes comlex-noun
     :binds
      ((WITHIN top)
       (TO top))
     :realization (:noun  "round" :within WITHIN :to TO))

(define-category row-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :realization (:noun  "row"))

(define-category rule-cl-noun :specializes comlex-noun
     :binds
      ((|IN FAVOR OF| top)
       (IN top)
       (ON top)
       (FOR top)
       (OVER top)
       (THROUGH top))
     :realization (:noun  "rule" :|IN FAVOR OF| |IN FAVOR OF| :in IN :on ON :for FOR :over OVER :through THROUGH))

(define-category rumor-cl-noun :specializes comlex-noun
     :realization (:noun  "rumor"))

(define-category rush-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((FROM top)
       (ON top)
       (TO top)
       (AT top)
       (UPON top))
     :realization (:noun  "rush" :from FROM :on ON :to TO :at AT :upon UPON))

(define-category sacrifice-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (TO top))
     :realization (:noun  "sacrifice" :for FOR :to TO))

(define-category saddle-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (ON top)
       (WITH top))
     :realization (:noun  "saddle" :in IN :on ON :with WITH))

(define-category safeguard-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top))
     :realization (:noun  "safeguard" :against AGAINST))

(define-category salute-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "salute" :for FOR))

(define-category sanction-cl-noun :specializes comlex-noun
     :realization (:noun  "sanction"))

(define-category sandwich-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (BETWEEN top))
     :realization (:noun  "sandwich" :in IN :between BETWEEN))

(define-category save-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (FROM top)
       (ON top))
     :realization (:noun  "save" :for FOR :from FROM :on ON))

(define-category savvy-cl-noun :specializes comlex-noun
     :realization (:noun ( "savvy" )))

(define-category scale-cl-noun :specializes comlex-noun
     :binds
      ((OFF top))
     :realization (:noun  "scale" :off OFF))

(define-category scare-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (|OUT OF| top))
     :realization (:noun  "scare" :into INTO :|OUT OF| |OUT OF|))

(define-category scatter-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :realization (:noun  "scatter"))

(define-category scent-cl-noun :specializes comlex-noun
     :binds
      ((AFTER top)
       (OF top))
     :realization (:noun  "scent" :after AFTER :of OF))

(define-category schedule-cl-noun :specializes comlex-noun
     :binds
      ((DURING top)
       (AT top)
       (FOR top))
     :realization (:noun  "schedule" :during DURING :at AT :for FOR))

(define-category scheme-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (FOR top))
     :realization (:noun  "scheme" :against AGAINST :for FOR))

(define-category school-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (IN top)
       (ON top))
     :realization (:noun  "school" :about ABOUT :in IN :on ON))

(define-category score-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (OVER top)
       (OFF top)
       (THROUGH top)
       (IN top))
     :realization (:noun  "score" :against AGAINST :over OVER :off OFF :through THROUGH :in IN))

(define-category screech-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (TO top))
     :realization (:noun  "screech" :at AT :to TO))

(define-category search-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((AROUND top)
       (THROUGH top)
       (FOR top))
     :realization (:noun  "search" :around AROUND :through THROUGH :for FOR))

(define-category season-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "season" :with WITH))

(define-category segment-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (INTO top))
     :realization (:noun  "segment" :in IN :into INTO))

(define-category sense-cl-noun :specializes comlex-noun
     :realization (:noun  "sense"))

(define-category service-cl-noun :specializes comlex-noun
     :realization (:noun  "service"))

(define-category settle-cl-noun :specializes comlex-noun
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
     :realization (:noun  "settle" :to TO :in IN :into INTO :on ON :at AT :upon UPON :for FOR :with WITH))

(define-category sex-cl-noun :specializes comlex-noun
     :realization (:noun  "sex"))

(define-category shade-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (INTO top))
     :realization (:noun  "shade" :from FROM :into INTO))

(define-category shadow-cl-noun :specializes comlex-noun
     :binds
      ((OVER top))
     :realization (:noun  "shadow" :over OVER))

(define-category shallow-cl-noun :specializes comlex-noun
     :realization (:noun  "shallow"))

(define-category shape-cl-noun :specializes comlex-noun
     :binds
      ((AFTER top)
       (FOR top)
       (INTO top)
       (TO top))
     :realization (:noun  "shape" :after AFTER :for FOR :into INTO :to TO))

(define-category share-cl-noun :specializes comlex-noun
     :binds
      ((BETWEEN top)
       (IN top)
       (WITH top))
     :realization (:noun  "share" :between BETWEEN :in IN :with WITH))

(define-category shave-cl-noun :specializes comlex-noun
     :binds
      ((THROUGH top))
     :realization (:noun  "shave" :through THROUGH))

(define-category shelter-cl-noun :specializes comlex-noun
     :binds
      ((BENEATH top)
       (FROM top)
       (UNDER top))
     :realization (:noun  "shelter" :beneath BENEATH :from FROM :under UNDER))

(define-category shield-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (FROM top))
     :realization (:noun  "shield" :against AGAINST :from FROM))

(define-category shift-cl-noun :specializes comlex-noun
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
       (FROM top)
       (OF top))
     :realization (:noun  "shift" :|OUT OF| |OUT OF| :among AMONG :into INTO :on ON :onto ONTO :within WITHIN :between BETWEEN :towards TOWARDS :toward TOWARD :to TO :from FROM :of of))

(define-category shock-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (|OUT OF| top))
     :realization (:noun  "shock" :into INTO :|OUT OF| |OUT OF|))

(define-category shore-cl-noun :specializes comlex-noun
     :realization (:noun  "shore"))

(define-category shout-cl-noun :specializes comlex-noun
     :binds
      ((ABOVE top)
       (FROM top)
       (ABOUT top)
       (UP top)
       (AT top)
       (INTO top)
       (TO top))
     :realization (:noun  "shout" :above ABOVE :from FROM :about ABOUT :up UP :at AT :into INTO :to TO))

(define-category shower-cl-noun :specializes comlex-noun
     :binds
      ((AROUND top)
       (ON top)
       (WITH top))
     :realization (:noun  "shower" :around AROUND :on ON :with WITH))

(define-category side-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (WITH top))
     :realization (:noun  "side" :against AGAINST :with WITH))

(define-category sign-cl-noun :specializes comlex-noun
     :realization (:noun  "sign"))

(define-category size-cl-noun :specializes comlex-noun
     :binds
      ((|ACCORDING TO| top)
       (TO top))
     :realization (:noun  "size" :|ACCORDING TO| |ACCORDING TO| :to TO))

(define-category ski-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :realization (:noun  "ski"))

(define-category slight-cl-noun :specializes comlex-noun
     :realization (:noun  "slight"))

(define-category smart-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (FOR top)
       (FROM top)
       (OVER top)
       (UNDER top))
     :realization (:noun ( "smart" )
 :at AT :for FOR :from FROM :over OVER :under UNDER))

(define-category smoke-cl-noun :specializes comlex-noun
     :realization (:noun  "smoke"))

(define-category smooth-cl-noun :specializes comlex-noun
     :realization (:noun ( "smooth" )))

(define-category snack-cl-noun :specializes comlex-noun
     :realization (:noun  "snack"))

(define-category sneeze-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (THROUGH top)
       (OVER top))
     :realization (:noun  "sneeze" :into INTO :through THROUGH :over OVER))

(define-category snow-cl-noun :specializes comlex-noun
     :realization (:noun  "snow"))

(define-category snowball-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :realization (:noun  "snowball"))

(define-category soak-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (INTO top)
       (THROUGH top))
     :realization (:noun  "soak" :in IN :into INTO :through THROUGH))

(define-category soap-cl-noun :specializes comlex-noun
     :realization (:noun  "soap"))

(define-category sole-cl-noun :specializes comlex-noun
     :realization (:noun ( "sole"  :PLURAL ("soles" "sole"))))

(define-category sort-cl-noun :specializes comlex-noun
     :binds
      ((THROUGH top)
       (WITH top))
     :realization (:noun  "sort" :through THROUGH :with WITH))

(define-category sound-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (BEHIND top)
       (LIKE top)
       (THROUGH top))
     :realization (:noun  "sound" :against AGAINST :behind BEHIND :like LIKE :through THROUGH))

(define-category source-cl-noun :specializes comlex-noun
  :mixins (attribute)
  :realization (:noun  "source"))

(define-category spare-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (FROM top))
     :realization (:noun  "spare" :for FOR :from FROM))

(define-category spike-cl-noun :specializes comlex-noun
     :realization (:noun  "spike"))

(define-category spill-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :realization (:noun  "spill"))

(define-category spray-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((AT top)
       (WITH top))
     :realization (:noun  "spray" :at AT :with WITH))

(define-category square-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (WITH top))
     :realization (:noun  "square" :to TO :with WITH))

(define-category squire-cl-noun :specializes comlex-noun
     :realization (:noun  "squire"))

(define-category stagger-cl-noun :specializes comlex-noun
     :realization (:noun  "stagger"))

(define-category stake-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (TO top))
     :realization (:noun  "stake" :on ON :to TO))

(define-category stall-cl-noun :specializes comlex-noun
     :binds
      ((OVER top)
       (ON top))
     :realization (:noun  "stall" :over OVER :on ON))

(define-category staple-cl-noun :specializes comlex-noun
     :binds
      ((TO top))
     :realization (:noun  "staple" :to TO))

(define-category station-cl-noun :specializes comlex-noun
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
     :realization (:noun  "station" :across ACROSS :along ALONG :among AMONG :around AROUND :at AT :inside INSIDE :beside BESIDE :between BETWEEN :beyond BEYOND :near NEAR :in IN :over OVER :outside OUTSIDE :|NEXT TO| |NEXT TO| :on ON :upon UPON :under UNDER :within WITHIN))

(define-category stay-cl-noun :specializes comlex-noun
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
     :realization (:noun  "stay" :off OFF :out OUT :from FROM :behind BEHIND :below BELOW :beneath BENEATH :at AT :around AROUND :amongst AMONGST :among AMONG :along ALONG :against AGAINST :across ACROSS :above ABOVE :beside BESIDE :between BETWEEN :beyond BEYOND :by BY :down DOWN :in IN :inside INSIDE :near NEAR :over OVER :outside OUTSIDE :|OUT OF| |OUT OF| :on ON :|OFF OF| |OFF OF| :|NEXT TO| |NEXT TO| :under UNDER :within WITHIN :with WITH))

(define-category steel-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (FOR top))
     :realization (:noun  "steel" :against AGAINST :for FOR))

(define-category steer-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((FROM top)
       (TO top))
     :realization (:noun  "steer" :from FROM :to TO))

(define-category stereotype-cl-noun :specializes comlex-noun
     :realization (:noun  "stereotype"))

(define-category stock-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (WITH top))
     :realization (:noun  "stock" :on ON :with WITH))

(define-category stone-cl-noun :specializes comlex-noun
     :binds
      ((TO top))
     :realization (:noun  "stone" :to TO))

(define-category store-cl-noun :specializes comlex-noun
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
     :realization (:noun  "store" :from FROM :with WITH :at AT :beneath BENEATH :below BELOW :behind BEHIND :above ABOVE :near NEAR :inside INSIDE :by BY :between BETWEEN :in IN :over OVER :on ON))

(define-category strain-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :realization (:noun  "strain"))

(define-category strand-cl-noun :specializes comlex-noun
     :realization (:noun  "strand"))

(define-category stream-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :realization (:noun  "stream"))

(define-category stress-cl-noun :specializes comlex-noun
     :binds
      ((OVER top)
       (TO top))
     :realization (:noun  "stress" :over OVER :to TO))

(define-category structure-cl-noun :specializes comlex-noun
     :binds
      ((ALONG top)
       (AFTER top)
       (|ACCORDING TO| top)
       (IN top)
       (LIKE top)
       (ON top))
     :realization (:noun  "structure" :along ALONG :after AFTER :|ACCORDING TO| |ACCORDING TO| :in IN :like LIKE :on ON))

(define-category struggle-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((IN top)
       (AGAINST top)
       (WITH top)
       (FOR top))
     :realization (:noun  "struggle" :in IN :against AGAINST :with WITH :for FOR))

(define-category stump-cl-noun :specializes comlex-noun
     :realization (:noun  "stump"))

(define-category style-cl-noun :specializes comlex-noun
     :realization (:noun  "style"))

(define-category suit-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (WITH top))
     :realization (:noun  "suit" :in IN :with WITH))

(define-category supplement-cl-noun :specializes comlex-noun
     :binds
      ((BY top)
       (WITH top))
     :realization (:noun  "supplement" :by BY :with WITH))

(define-category supply-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (TO top)
       (WITH top))
     :realization (:noun  "supply" :for FOR :to TO :with WITH))

(define-category surface-cl-noun :specializes comlex-noun
     :binds
      ((WITH top)
       (FROM top))
     :realization (:noun  "surface" :with WITH :from FROM))

(define-category surge-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((BY top)
       (TO top)
       (IN top)
       (|AHEAD OF| top)
       (ABOVE top))
     :realization (:noun  "surge" :by BY :to TO :in IN :|AHEAD OF| |AHEAD OF| :above ABOVE))

(define-category surprise-cl-noun :specializes comlex-noun
     :binds
      ((BY top)
       (WITH top))
     :realization (:noun  "surprise" :by BY :with WITH))

(define-category surround-cl-noun :specializes comlex-noun
     :binds
      ((WITH top)
       (IN top)
       (WITHIN top))
     :realization (:noun  "surround" :with WITH :in IN :within WITHIN))

(define-category suspect-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (FOR top)
       (OF top))
     :realization (:noun  "suspect" :about ABOUT :for FOR :of OF))

(define-category tackle-cl-noun :specializes comlex-noun
     :realization (:noun  "tackle"))

(define-category tail-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :realization (:noun  "tail"))

(define-category tailor-cl-noun :specializes comlex-noun
     :binds
      ((TO top))
     :realization (:noun  "tailor" :to TO))

(define-category talk-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (ON top)
       (ABOUT top)
       (OF top)
       (WITH top)
       (TO top))
     :realization (:noun  "talk" :into INTO :on ON :about ABOUT :of OF :with WITH :to TO))

(define-category tally-cl-noun :specializes comlex-noun
     :binds
      ((AMONG top)
       (WITH top)
       (TO top))
     :realization (:noun  "tally" :among AMONG :with WITH :to TO))

(define-category taste-cl-noun :specializes comlex-noun
     :realization (:noun  "taste"))

(define-category telephone-cl-noun :specializes comlex-noun
     :realization (:noun  "telephone"))

(define-category thread-cl-noun :specializes comlex-noun
     :binds
      ((THROUGH top)
       (WITH top))
     :realization (:noun  "thread" :through THROUGH :with WITH))

(define-category threat-cl-noun :specializes comlex-noun
  :binds ((cause top))
  :realization (:noun  "threat" :of cause))

(define-category thrill-cl-noun :specializes comlex-noun
     :realization (:noun  "thrill"))

(define-category thumb-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (THROUGH top))
     :realization (:noun  "thumb" :in IN :through THROUGH))

(define-category tide-cl-noun :specializes comlex-noun
     :realization (:noun  "tide"))

(define-category time-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (TO top))
     :realization (:noun  "time" :at AT :to TO))

(define-category tingle-cl-noun :specializes comlex-noun
     :realization (:noun  "tingle"))

(define-category tint-cl-noun :specializes comlex-noun
     :realization (:noun  "tint"))

(define-category tire-cl-noun :specializes comlex-noun
     :binds
      ((OF top))
     :realization (:noun  "tire" :of OF))

(define-category toll-cl-noun :specializes comlex-noun
     :realization (:noun  "toll"))

(define-category touch-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (UPON top)
       (FOR top)
       (TO top))
     :realization (:noun  "touch" :on ON :upon UPON :for FOR :to TO))

(define-category tower-cl-noun :specializes comlex-noun
     :binds
      ((ABOVE top)
       (OVER top))
     :realization (:noun  "tower" :above ABOVE :over OVER))

(define-category trace-cl-noun :specializes comlex-noun
     :binds
      ((ONTO top)
       (TO top))
     :realization (:noun  "trace" :onto ONTO :to TO))

(define-category track-cl-noun :specializes comlex-noun
     :binds
      ((WITH top)
       (ON top)
       (TO top))
     :realization (:noun  "track" :with WITH :on ON :to TO))

(define-category train-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (TO top)
       (FOR top)
       (IN top))
     :realization (:noun  "train" :on ON :to TO :for FOR :in IN))

(define-category trend-cl-noun :specializes comlex-noun
     :realization (:noun  "trend"))

(define-category troll-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "troll" :for FOR))

(define-category troop-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((TO top))
     :realization (:noun  "troop" :to TO))

(define-category trouble-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (OVER top)
       (WITH top))
     :realization (:noun  "trouble" :about ABOUT :over OVER :with WITH))

(define-category trump-cl-noun :specializes comlex-noun
     :realization (:noun  "trump"))

(define-category trust-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (TO top)
       (ON top)
       (WITH top))
     :realization (:noun  "trust" :in IN :to TO :on ON :with WITH))

(define-category try-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (FOR top))
     :realization (:noun  "try" :on ON :for FOR))

(define-category turn-cl-noun :specializes comlex-noun
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
     :realization (:noun  "turn" :along ALONG :in IN :past PAST :upon UPON :off OFF :against AGAINST :onto ONTO :into INTO :toward TOWARD :towards TOWARDS :at AT :on ON :from FROM :with WITH :to TO))

(define-category twitter-cl-noun :specializes comlex-noun
     :realization (:noun  "twitter"))

(define-category type-cl-noun :specializes comlex-noun
  :mixins (attribute)
  :binds
  ((INTO top)
   (ONTO top)
   (ON top))
  :realization (:noun  "type" :into INTO :onto ONTO :on ON))

(define-category underestimate-cl-noun :specializes comlex-noun
  :realization (:noun  "underestimate"))

(define-category uniform-cl-noun :specializes comlex-noun
     :realization (:noun  "uniform"))

(define-category urge-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((TO top)
       (AGAINST top)
       (FOR top)
       (UPON top))
     :realization (:noun  "urge" :to TO :against AGAINST :for FOR :upon UPON))

(define-category usher-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :realization (:noun  "usher"))

(define-category vacation-cl-noun :specializes comlex-noun
     :binds
      ((IN top))
     :realization (:noun  "vacation" :in IN))

(define-category value-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (IN-EXCESS-OF top)
       (ABOVE top))
     :realization (:noun  "value" :in IN :in-excess-of IN-EXCESS-OF :above ABOVE))

(define-category vest-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (WITH top))
     :realization (:noun  "vest" :in IN :with WITH))

(define-category visit-cl-noun :specializes comlex-noun
     :binds
      ((WITH top)
       (ON top)
       (UPON top))
     :realization (:noun  "visit" :with WITH :on ON :upon UPON))

(define-category voice-cl-noun :specializes comlex-noun
     :binds
      ((BEFORE top)
       (TO top))
     :realization (:noun  "voice" :before BEFORE :to TO))

(define-category volunteer-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "volunteer" :for FOR))

(define-category vote-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (FROM top)
       (|OUT OF| top)
       (TO top)
       (AGAINST top)
       (ON top)
       (WITH top)
       (FOR top))
     :realization (:noun  "vote" :into INTO :from FROM :|OUT OF| |OUT OF| :to TO :against AGAINST :on ON :with WITH :for FOR))

(define-category wait-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (ON top)
       (UPON top))
     :realization (:noun  "wait" :for FOR :on ON :upon UPON))

(define-category walk-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((UP top)
       (FROM top)
       (INTO top)
       (TOWARDS top)
       (TOWARD top)
       (TO top)
       (ON top))
     :realization (:noun  "walk" :up UP :from FROM :into INTO :towards TOWARDS :toward TOWARD :to TO :on ON))

(define-category wall-cl-noun :specializes comlex-noun
     :realization (:noun  "wall"))

(define-category warrant-cl-noun :specializes comlex-noun
     :realization (:noun  "warrant"))

(define-category wash-cl-noun :specializes comlex-noun
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
     :realization (:noun  "wash" :through THROUGH :into INTO :over OVER :among AMONG :of OF :off OFF :with WITH :in IN :|OUT OF| |OUT OF|))

(define-category watch-cl-noun :specializes comlex-noun
     :binds
      ((ACROSS top)
       (FOR top)
       (OVER top))
     :realization (:noun  "watch" :across ACROSS :for FOR :over OVER))

(define-category wave-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (TO top))
     :realization (:noun  "wave" :at AT :to TO))

(define-category weather-cl-noun :specializes comlex-noun
     :realization (:noun  "weather"))

(define-category weekend-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (AT top))
     :realization (:noun  "weekend" :in IN :at AT))

(define-category weight-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (WITH top))
     :realization (:noun  "weight" :against AGAINST :with WITH))

(define-category welcome-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (INTO top)
       (TO top))
     :realization (:noun  "welcome" :in IN :into INTO :to TO))

(define-category wheel-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((TO top))
     :realization (:noun  "wheel" :to TO))

(define-category wipe-cl-noun :specializes comlex-noun
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
     :realization (:noun  "wipe" :at AT :from FROM :off OFF :on ON :|OUT OF| |OUT OF| :across ACROSS :down DOWN :through THROUGH :over OVER :up UP))

(define-category wire-cl-noun :specializes comlex-noun
     :realization (:noun  "wire"))

(define-category wish-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (ON top)
       (UPON top))
     :realization (:noun  "wish" :for FOR :on ON :upon UPON))

(define-category witness-cl-noun :specializes comlex-noun
     :realization (:noun  "witness"))

(define-category wonder-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (ABOUT top))
     :realization (:noun  "wonder" :at AT :about ABOUT))

(define-category word-cl-noun :specializes comlex-noun
     :realization (:noun  "word"))

(define-category worry-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (OVER top))
     :realization (:noun  "worry" :about ABOUT :over OVER))

(define-category yawn-cl-noun :specializes comlex-noun
     :binds
      ((AT top))
     :realization (:noun  "yawn" :at AT))

(define-category yell-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (AT top)
       (FOR top)
       (TO top))
     :realization (:noun  "yell" :about ABOUT :at AT :for FOR :to TO))

(define-category zone-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (FOR top))
     :realization (:noun  "zone" :on ON :for FOR))

(define-category bag-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "bag" :with WITH))

(define-category ban-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (FROM top))
     :realization (:noun  "ban" :to TO :from FROM))

(define-category bear-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (UPON top)
       (ON top))
     :realization (:noun  "bear" :to TO :upon UPON :on ON))

(define-category bind-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (WITH top))
     :realization (:noun  "bind" :to TO :with WITH))

(define-category blur-cl-noun :specializes comlex-noun
     :realization (:noun  "blur"))

(define-category break-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (FROM top)
       (|OUT OF| top)
       (OVER top)
       (IN top)
       (WITH top)
       (INTO top)
       (TO top))
     :realization (:noun  "break" :for FOR :from FROM :|OUT OF| |OUT OF| :over OVER :in IN :with WITH :into INTO :to TO))

(define-category bud-cl-noun :specializes comlex-noun
     :realization (:noun  "bud"))

(define-category build-cl-noun :specializes comlex-noun
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
     :realization (:noun  "build" :for FOR :around AROUND :from FROM :of OF :|OUT OF| |OUT OF| :into INTO :up UP :along ALONG :over OVER :onto ONTO :to TO :on ON :upon UPON))

(define-category bullshit-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (ON top)
       (WITH top))
     :realization (:noun ( "bullshit" )
 :about ABOUT :on ON :with WITH))

(define-category buy-cl-noun :specializes comlex-noun
     :binds
      ((INTO top))
     :realization (:noun  "buy" :into INTO))

(define-category cap-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (WITH top))
     :realization (:noun  "cap" :at AT :with WITH))

(define-category cast-cl-noun :specializes comlex-noun
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
     :realization (:noun  "cast" :through THROUGH :at AT :for FOR :in IN :into INTO :|OUT OF| |OUT OF| :to TO :toward TOWARD :upon UPON :with WITH :from FROM :over OVER :on ON))

(define-category catch-cl-noun :specializes comlex-noun
     :binds
      ((BEHIND top)
       (IN top)
       (INTO top)
       (ON top)
       (WITH top)
       (TO top))
     :realization (:noun  "catch" :behind BEHIND :in IN :into INTO :on ON :with WITH :to TO))

(define-category channel-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (THROUGH top))
     :realization (:noun  "channel" :into INTO :through THROUGH))

(define-category chat-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (WITH top))
     :realization (:noun  "chat" :about ABOUT :with WITH))

(define-category clam-cl-noun :specializes comlex-noun
     :realization (:noun  "clam"))

(define-category clip-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (FROM top)
       (|OUT OF| top)
       (ON top)
       (TO top)
       (OFF top))
     :realization (:noun  "clip" :in IN :from FROM :|OUT OF| |OUT OF| :on ON :to TO :off OFF))

(define-category clot-cl-noun :specializes comlex-noun
     :binds
      ((AROUND top))
     :realization (:noun  "clot" :around AROUND))

(define-category club-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (ON top))
     :realization (:noun  "club" :to TO :on ON))

(define-category con-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (FROM top)
       (|OUT OF| top))
     :realization (:noun  "con" :into INTO :from FROM :|OUT OF| |OUT OF|))

(define-category cop-cl-noun :specializes comlex-noun
     :realization (:noun  "cop"))

(define-category counsel-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top))
     :realization (:noun ( "counsel" )
 :about ABOUT))

(define-category cut-cl-noun :specializes comlex-noun
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
     :realization (:noun  "cut" :on ON :across ACROSS :around AROUND :through THROUGH :at AT :from FROM :into INTO :off OFF :in IN :|OUT OF| |OUT OF| :to TO))

(define-category deal-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (WITH top)
       (TO top)
       (AMONG top)
       (AROUND top)
       (ACROSS top))
     :realization (:noun  "deal" :in IN :with WITH :to TO :among AMONG :around AROUND :across ACROSS))

(define-category decree-cl-noun :specializes comlex-noun
     :realization (:noun  "decree"))

(define-category dial-cl-noun :specializes comlex-noun
     :binds
      ((AT top))
     :realization (:noun  "dial" :at AT))

(define-category dip-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (IN top))
     :realization (:noun  "dip" :into INTO :in IN))

(define-category draw-cl-noun :specializes comlex-noun
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
     :realization (:noun  "draw" :into INTO :against AGAINST :for FOR :with WITH :near NEAR :on ON :upon UPON :from FROM :to TO :at AT))

(define-category drink-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (|OUT OF| top)
       (TO top))
     :realization (:noun  "drink" :from FROM :|OUT OF| |OUT OF| :to TO))

(define-category dun-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "dun" :for FOR))

(define-category equal-cl-noun :specializes comlex-noun
     :binds
      ((IN top))
     :realization (:noun  "equal" :in IN))

(define-category fall-cl-noun :specializes comlex-noun
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
     :realization (:noun  "fall" :to TO :with WITH :on ON :in IN :at AT :before BEFORE :under UNDER :for FOR :among AMONG :upon UPON :|OFF OF| |OFF OF|))

(define-category fee-cl-noun :specializes comlex-noun
     :realization (:noun  "fee"))

(define-category fight-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (INTO top)
       (THROUGH top)
       (TO top)
       (WITH top)
       (AGAINST top)
       (FOR top)
       (ON top))
     :realization (:noun  "fight" :in IN :into INTO :through THROUGH :to TO :with WITH :against AGAINST :for FOR :on ON))

(define-category find-cl-noun :specializes comlex-noun
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
     :realization (:noun  "find" :about ABOUT :into INTO :above ABOVE :across ACROSS :against AGAINST :along ALONG :among AMONG :amongst AMONGST :around AROUND :behind BEHIND :below BELOW :beneath BENEATH :beside BESIDE :between BETWEEN :beyond BEYOND :by BY :in IN :inside INSIDE :near NEAR :|NEXT TO| |NEXT TO| :|OFF OF| |OFF OF| :on ON :|OUT OF| |OUT OF| :outside OUTSIDE :throughout THROUGHOUT :under UNDER :up UP))

(define-category flag-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "flag" :for FOR))

(define-category fly-cl-noun :specializes comlex-noun
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
     :realization (:noun  "fly" :behind BEHIND :from FROM :to TO :in IN :|CLOSE TO| |CLOSE TO| :above ABOVE :at AT :under UNDER))

(define-category freeze-cl-noun :specializes comlex-noun
     :binds
      ((AROUND top)
       (INTO top)
       (ON top)
       (AT top)
       (|OUT OF| top)
       (TO top))
     :realization (:noun  "freeze" :around AROUND :into INTO :on ON :at AT :|OUT OF| |OUT OF| :to TO))

(define-category fuel-cl-noun :specializes comlex-noun
     :realization (:noun  "fuel"))

(define-category go-cl-noun :specializes comlex-noun
     :realization (:noun ( "go" )))

(define-category grab-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (FROM top)
       (|OUT OF| top)
       (AT top)
       (BY top))
     :realization (:noun  "grab" :for FOR :from FROM :|OUT OF| |OUT OF| :at AT :by BY))

(define-category grind-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (INTO top))
     :realization (:noun  "grind" :against AGAINST :into INTO))

(define-category guarantee-cl-noun :specializes comlex-noun
     :realization (:noun  "guarantee"))

(define-category gun-cl-noun :specializes comlex-noun
     :realization (:noun  "gun"))

(define-category gut-cl-noun :specializes comlex-noun
     :realization (:noun  "gut"))

(define-category ham-cl-noun :specializes comlex-noun
     :realization (:noun  "ham"))

(define-category hang-cl-noun :specializes comlex-noun
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
     :realization (:noun ( "hang" )
 :|OUT OF| |OUT OF| :above ABOVE :off OFF :on ON :onto ONTO :over OVER :under UNDER :below BELOW :in IN :out OUT :around AROUND :to TO :from FROM :with WITH :for FOR))

(define-category hide-cl-noun :specializes comlex-noun
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
     :realization (:noun  "hide" :|OUT OF| |OUT OF| :among AMONG :amongst AMONGST :behind BEHIND :below BELOW :beneath BENEATH :beside BESIDE :between BETWEEN :inside INSIDE :in IN :from FROM :under UNDER))

(define-category hit-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (TOWARD top)
       (FOR top)
       (UPON top)
       (UP top)
       (ON top)
       (IN top))
     :realization (:noun  "hit" :to TO :toward TOWARD :for FOR :upon UPON :up UP :on ON :in IN))

(define-category hold-cl-noun :specializes comlex-noun
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
     :realization (:noun  "hold" :about ABOUT :upon UPON :onto ONTO :against AGAINST :in IN :on ON :over OVER :under UNDER :with WITH :to TO))

(define-category hug-cl-noun :specializes comlex-noun
     :realization (:noun  "hug"))

(define-category hum-cl-noun :specializes comlex-noun
     :realization (:noun  "hum"))

(define-category hurt-cl-noun :specializes comlex-noun
     :binds
      ((BY top)
       (WITH top))
     :realization (:noun ( "hurt" )
 :by BY :with WITH))

(define-category job-cl-noun :specializes comlex-noun
     :realization (:noun  "job"))

(define-category jog-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((UNTO top)
       (WITH top)
       (AFTER top)
       (BESIDE top))
     :realization (:noun  "jog" :unto UNTO :with WITH :after AFTER :beside BESIDE))

(define-category jot-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (IN top)
       (ON top))
     :realization (:noun  "jot" :into INTO :in IN :on ON))

(define-category kid-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (FOR top))
     :realization (:noun  "kid" :about ABOUT :for FOR))

(define-category kit-cl-noun :specializes comlex-noun
     :realization (:noun  "kit"))

(define-category know-cl-noun :specializes comlex-noun
     :binds
      ((OF top)
       (ABOUT top))
     :realization (:noun ( "know" )
 :of OF :about ABOUT))

(define-category lag-cl-noun :specializes comlex-noun
     :binds
      ((BEHIND top))
     :realization (:noun  "lag" :behind BEHIND))

(define-category leave-cl-noun :specializes comlex-noun
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
     :realization (:noun  "leave" :from FROM :with WITH :without WITHOUT :at AT :near NEAR :beside BESIDE :for FOR :|NEXT TO| |NEXT TO| :under UNDER))

(define-category lie-cl-noun :specializes comlex-noun
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
     :realization (:noun  "lie" :beneath BENEATH :below BELOW :behind BEHIND :around AROUND :before BEFORE :at AT :amongst AMONGST :among AMONG :along ALONG :against AGAINST :across ACROSS :above ABOVE :beside BESIDE :near NEAR :into INTO :inside INSIDE :by BY :beyond BEYOND :between BETWEEN :|NEXT TO| |NEXT TO| :outside OUTSIDE :through THROUGH :past PAST :over OVER :|OFF OF| |OFF OF| :off OFF :towards TOWARDS :toward TOWARD :with WITH :upon UPON :under UNDER :within WITHIN :|OUT OF| |OUT OF| :about ABOUT :to TO :in IN :on ON))

(define-category light-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "light" :with WITH))

(define-category log-cl-noun :specializes comlex-noun
     :binds
      ((ONTO top)
       (|OFF OF| top))
     :realization (:noun  "log" :onto ONTO :|OFF OF| |OFF OF|))

(define-category mean-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (TO top)
       (BY top)
       (WITH top))
     :realization (:noun  "mean" :for FOR :to TO :by BY :with WITH))

(define-category meet-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (WITH top))
     :realization (:noun  "meet" :at AT :with WITH))

(define-category mistake-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "mistake" :for FOR))

(define-category model-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (IN top)
       (FOR top)
       (ON top))
     :realization (:noun  "model" :into INTO :in IN :for FOR :on ON))

(define-category net-cl-noun :specializes comlex-noun
     :realization (:noun  "net"))

(define-category offset-cl-noun :specializes comlex-noun
     :realization (:noun ( "offset" )))

(define-category panic-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (|OUT OF| top))
     :realization (:noun  "panic" :into INTO :|OUT OF| |OUT OF|))

(define-category parallel-cl-noun :specializes comlex-noun
     :realization (:noun  "parallel"))

(define-category parcel-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (TO top))
     :realization (:noun  "parcel" :in IN :to TO))

(define-category pay-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (IN top)
       (|OUT OF| top)
       (WITH top)
       (FOR top))
     :realization (:noun ( "pay" )
 :into INTO :in IN :|OUT OF| |OUT OF| :with WITH :for FOR))

(define-category permit-cl-noun :specializes comlex-noun
     :realization (:noun  "permit"))

(define-category pet-cl-noun :specializes comlex-noun
     :realization (:noun  "pet"))

(define-category plan-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (FOR top))
     :realization (:noun  "plan" :on ON :for FOR))

(define-category plot-cl-noun :specializes comlex-noun
     :realization (:noun  "plot"))

(define-category program-cl-noun :specializes comlex-noun
     :realization (:noun  "program"))

(define-category quarantine-cl-noun :specializes comlex-noun
     :realization (:noun ( "quarantine" )))

(define-category quiz-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (ON top))
     :realization (:noun ( "quiz"  :PLURAL "quizzes")
 :about ABOUT :on ON))

(define-category rag-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (ON top))
     :realization (:noun  "rag" :for FOR :on ON))

(define-category rap-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (ON top)
       (INTO top)
       (FOR top)
       (TO top))
     :realization (:noun ( "rap"  :PLURAL "rap")
 :against AGAINST :on ON :into INTO :for FOR :to TO))

(define-category rebel-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top))
     :realization (:noun  "rebel" :against AGAINST))

(define-category relay-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (ONTO top)
       (ON top)
       (TO top))
     :realization (:noun  "relay" :in IN :onto ONTO :on ON :to TO))

(define-category rerun-cl-noun :specializes comlex-noun
     :binds
      ((FOR top)
       (ON top))
     :realization (:noun  "rerun" :for FOR :on ON))

(define-category rethink-cl-noun :specializes comlex-noun
     :realization (:noun  "rethink"))

(define-category rim-cl-noun :specializes comlex-noun
     :realization (:noun  "rim"))

(define-category rise-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (OVER top)
       (ABOVE top)
       (AGAINST top)
       (|OUT OF| top)
       (TOWARD top)
       (FROM top)
       (TO top))
     :realization (:noun  "rise" :on ON :over OVER :above ABOVE :against AGAINST :|OUT OF| |OUT OF| :toward TOWARD :from FROM :to TO))

(define-category rival-cl-noun :specializes comlex-noun
     :binds
      ((WITH top)
       (IN top)
       (FOR top))
     :realization (:noun  "rival" :with WITH :in IN :for FOR))

(define-category rub-cl-noun :specializes comlex-noun
     :binds
      ((ACROSS top)
       (|OFF OF| top)
       (OVER top)
       (ONTO top)
       (ON top)
       (AGAINST top)
       (FOR top)
       (WITH top))
     :realization (:noun  "rub" :across ACROSS :|OFF OF| |OFF OF| :over OVER :onto ONTO :on ON :against AGAINST :for FOR :with WITH))

(define-category scrap-cl-noun :specializes comlex-noun
     :realization (:noun  "scrap"))

(define-category see-cl-noun :specializes comlex-noun
     :binds
      ((BEFORE top)
       (IN top)
       (ABOUT top)
       (THROUGH top))
     :realization (:noun  "see" :before BEFORE :in IN :about ABOUT :through THROUGH))

(define-category sell-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (TO top)
       (AT top)
       (FOR top)
       (ON top))
     :realization (:noun ( "sell" )
 :in IN :to TO :at AT :for FOR :on ON))

(define-category shake-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((IN top)
       (OVER top)
       (AT top)
       (WITH top))
     :realization (:noun  "shake" :in IN :over OVER :at AT :with WITH))

(define-category shin-cl-noun :specializes comlex-noun
     :binds
      ((DOWN top))
     :realization (:noun  "shin" :down DOWN))

(define-category ship-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (THROUGH top)
       (ACROSS top)
       (OVER top)
       (FROM top)
       (TO top))
     :realization (:noun  "ship" :into INTO :through THROUGH :across ACROSS :over OVER :from FROM :to TO))

(define-category shoe-cl-noun :specializes comlex-noun
     :realization (:noun  "shoe"))

(define-category shoot-cl-noun :specializes comlex-noun
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
     :realization (:noun  "shoot" :through THROUGH :into INTO :past PAST :beyond BEYOND :among AMONG :from FROM :to TO :near NEAR :|AWAY FROM| |AWAY FROM| :at AT :for FOR))

(define-category shop-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (FOR top))
     :realization (:noun  "shop" :to TO :for FOR))

(define-category shrink-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (|OUT OF| top)
       (TO top)
       (FROM top))
     :realization (:noun  "shrink" :into INTO :|OUT OF| |OUT OF| :to TO :from FROM))

(define-category signal-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (FOR top))
     :realization (:noun  "signal" :to TO :for FOR))

(define-category sin-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top))
     :realization (:noun  "sin" :against AGAINST))

(define-category sink-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (AT top)
       (THROUGH top)
       (IN top)
       (INTO top)
       (ON top)
       (TO top))
     :realization (:noun  "sink" :from FROM :at AT :through THROUGH :in IN :into INTO :on ON :to TO))

(define-category sip-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (|OUT OF| top)
       (THROUGH top))
     :realization (:noun  "sip" :from FROM :|OUT OF| |OUT OF| :through THROUGH))

(define-category sleep-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (IN top)
       (ON top)
       (THROUGH top)
       (UNDER top)
       (WITH top))
     :realization (:noun ( "sleep" )
 :at AT :in IN :on ON :through THROUGH :under UNDER :with WITH))

(define-category slide-cl-noun :specializes comlex-noun
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
     :realization (:noun  "slide" :beside BESIDE :onto ONTO :down DOWN :from FROM :into INTO :over OVER :to TO :against AGAINST :under UNDER))

(define-category slur-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (THROUGH top)
       (OVER top))
     :realization (:noun  "slur" :on ON :through THROUGH :over OVER))

(define-category smell-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (LIKE top)
       (OF top)
       (ON top))
     :realization (:noun  "smell" :at AT :like LIKE :of OF :on ON))

(define-category snap-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((OF top)
       (IN top)
       (PAST top)
       (TO top)
       (AT top)
       (OFF top)
       (|OUT OF| top))
     :realization (:noun  "snap" :of OF :in IN :past PAST :to TO :at AT :off OFF :|OUT OF| |OUT OF|))

(define-category speed-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((AFTER top)
       (AT top))
     :realization (:noun  "speed" :after AFTER :at AT))

(define-category spin-cl-noun :specializes comlex-noun
     :binds
      ((TO top)
       (THROUGH top)
       (AROUND top)
       (|OUT OF| top)
       (TOWARD top)
       (FROM top)
       (INTO top))
     :realization (:noun  "spin" :to TO :through THROUGH :around AROUND :|OUT OF| |OUT OF| :toward TOWARD :from FROM :into INTO))

(define-category split-cl-noun :specializes comlex-noun
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
     :realization (:noun  "split" :among AMONG :on ON :down DOWN :to TO :along ALONG :in IN :over OVER :with WITH :between BETWEEN :from FROM :into INTO))

(define-category sport-cl-noun :specializes comlex-noun
     :realization (:noun  "sport"))

(define-category spot-cl-noun :specializes comlex-noun
     :realization (:noun  "spot"))

(define-category spread-cl-noun :specializes comlex-noun
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
     :realization (:noun  "spread" :through THROUGH :above ABOVE :with WITH :among AMONG :against AGAINST :near NEAR :beside BESIDE :|NEXT TO| |NEXT TO| :upon UPON :under UNDER))

(define-category stand-cl-noun :specializes comlex-noun
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
     :realization (:noun  "stand" :beneath BENEATH :near NEAR :|NEXT TO| |NEXT TO| :above ABOVE :at AT :|OUT OF| |OUT OF| :behind BEHIND :before BEFORE :by BY :between BETWEEN :beside BESIDE :upon UPON :|UP TO| |UP TO| :among AMONG :over OVER :against AGAINST :to TO :in IN :from FROM :for FOR :on ON))

(define-category star-cl-noun :specializes comlex-noun
     :binds
      ((IN top))
     :realization (:noun  "star" :in IN))

(define-category stem-cl-noun :specializes comlex-noun
     :binds
      ((FROM top))
     :realization (:noun  "stem" :from FROM))

(define-category step-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((FROM top)
       (ON top)
       (TO top)
       (INTO top)
       (|INSIDE OF| top))
     :realization (:noun  "step" :from FROM :on ON :to TO :into INTO :|INSIDE OF| |INSIDE OF|))

(define-category stick-cl-noun :specializes comlex-noun
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
     :realization (:noun  "stick" :for FOR :from FROM :beyond BEYOND :into INTO :|OUT OF| |OUT OF| :through THROUGH :to TO :up UP :beneath BENEATH :before BEFORE :below BELOW :behind BEHIND :at AT :around AROUND :amongst AMONGST :among AMONG :against AGAINST :after AFTER :across ACROSS :above ABOVE :near NEAR :inside INSIDE :in IN :down DOWN :by BY :between BETWEEN :beside BESIDE :over OVER :outside OUTSIDE :onto ONTO :|NEXT TO| |NEXT TO| :on ON :with WITH :within WITHIN :upon UPON :under UNDER))

(define-category stop-cl-noun :specializes comlex-noun
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
     :realization (:noun  "stop" :from FROM :off OFF :at AT :before BEFORE :in IN :inside INSIDE :on ON :over OVER :for FOR))

(define-category strap-cl-noun :specializes comlex-noun
     :binds
      ((AROUND top)
       (INTO top)
       (ONTO top)
       (TO top))
     :realization (:noun  "strap" :around AROUND :into INTO :onto ONTO :to TO))

(define-category strike-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (ON top)
       (BELOW top)
       (FOR top)
       (TO top)
       (WITH top)
       (AT top))
     :realization (:noun  "strike" :in IN :on ON :below BELOW :for FOR :to TO :with WITH :at AT))

(define-category strip-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (OFF top)
       (|OUT OF| top)
       (TO top)
       (|OFF OF| top)
       (OF top))
     :realization (:noun  "strip" :from FROM :off OFF :|OUT OF| |OUT OF| :to TO :|OFF OF| |OFF OF| :of OF))

(define-category stud-cl-noun :specializes comlex-noun
     :binds
      ((WITH top))
     :realization (:noun  "stud" :with WITH))

(define-category stymie-cl-noun :specializes comlex-noun
     :realization (:noun  "stymie"))

(define-category sub-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "sub" :for FOR))

(define-category sum-cl-noun :specializes comlex-noun
     :realization (:noun  "sum"))

(define-category sun-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (ON top))
     :realization (:noun ( "sun"  :PLURAL "sun")
 :at AT :on ON))

(define-category sup-cl-noun :specializes comlex-noun
     :binds
      ((AT top)
       (OFF top)
       (ON top)
       (UPON top))
     :realization (:noun  "sup" :at AT :off OFF :on ON :upon UPON))

(define-category swab-cl-noun :specializes comlex-noun
     :realization (:noun  "swab"))

(define-category sweep-cl-noun :specializes comlex-noun
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
     :realization (:noun  "sweep" :across ACROSS :through THROUGH :past PAST :down DOWN :from FROM :into INTO :|OUT OF| |OUT OF| :over OVER :to TO :|OFF OF| |OFF OF| :off OFF :under UNDER))

(define-category swing-cl-noun :specializes comlex-noun
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
     :realization (:noun  "swing" :through THROUGH :over OVER :onto ONTO :|OUT OF| |OUT OF| :by BY :past PAST :|CLOSE TO| |CLOSE TO| :across ACROSS :on ON :in IN :off OFF :behind BEHIND :to TO :into INTO :toward TOWARD :towards TOWARDS :from FROM :within WITHIN :before BEFORE :against AGAINST :at AT :with WITH))

(define-category take-cl-noun :specializes comlex-noun
     :realization (:noun  "take"))

(define-category tan-cl-noun :specializes comlex-noun
     :realization (:noun  "tan"))

(define-category tap-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (THROUGH top)
       (INTO top)
       (FOR top)
       (ON top))
     :realization (:noun  "tap" :against AGAINST :through THROUGH :into INTO :for FOR :on ON))

(define-category throw-cl-noun :specializes comlex-noun
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
     :realization (:noun  "throw" :across ACROSS :from FROM :over OVER :to TO :onto ONTO :on ON :at AT :upon UPON :with WITH :against AGAINST :above ABOVE :near NEAR :|OFF OF| |OFF OF| :|NEXT TO| |NEXT TO| :unto UNTO :under UNDER))

(define-category tie-cl-noun :specializes comlex-noun
     :binds
      ((ABOUT top)
       (AROUND top)
       (BEHIND top)
       (ON top)
       (OVER top)
       (WITH top)
       (INTO top)
       (IN top)
       (TO top)
       (BETWEEN top))
  :realization (:noun  "tie" :about ABOUT :around AROUND :behind BEHIND :on ON :over OVER :with WITH :into INTO :in IN :to TO
                       :between between))

(define-category total-cl-noun :specializes comlex-noun
     :binds
      ((TO top))
     :realization (:noun  "total" :to TO))

(define-category towel-cl-noun :specializes comlex-noun
     :realization (:noun  "towel"))

(define-category traffic-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (WITH top))
     :realization (:noun ( "traffic" )
 :in IN :with WITH))

(define-category travel-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((FROM top)
       (TO top)
       (AT top)
       (WITH top))
     :realization (:noun  "travel" :from FROM :to TO :at AT :with WITH))

(define-category trim-cl-noun :specializes comlex-noun
     :binds
      ((BY top)
       (TO top)
       (FROM top)
       (|OFF OF| top)
       (OFF top)
       (WITH top))
     :realization (:noun ( "trim" )
 :by BY :to TO :from FROM :|OFF OF| |OFF OF| :off OFF :with WITH))

(define-category trip-cl-noun :specializes comlex-noun
     :binds
      ((ON top)
       (OVER top))
     :realization (:noun  "trip" :on ON :over OVER))

(define-category upset-cl-noun :specializes comlex-noun
     :realization (:noun  "upset"))

(define-category wake-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (TO top))
     :realization (:noun  "wake" :from FROM :to TO))

(define-category war-cl-noun :specializes comlex-noun
     :binds
      ((AGAINST top)
       (OVER top)
       (WITH top))
     :realization (:noun  "war" :against AGAINST :over OVER :with WITH))

(define-category wear-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (THROUGH top)
       (TO top))
     :realization (:noun ( "wear" )
 :in IN :through THROUGH :to TO))

(define-category whip-cl-noun :specializes comlex-noun
     :mixins (with-p-dir)
     :binds
      ((AT top)
       (INTO top))
     :realization (:noun  "whip" :at AT :into INTO))

(define-category win-cl-noun :specializes comlex-noun
     :binds
      ((FROM top)
       (TO top)
       (AGAINST top))
     :realization (:noun  "win" :from FROM :to TO :against AGAINST))

(define-category worship-cl-noun :specializes comlex-noun
     :realization (:noun ( "worship" )))

(define-category wrap-cl-noun :specializes comlex-noun
     :binds
      ((IN top)
       (ABOUT top)
       (AROUND top))
     :realization (:noun  "wrap" :in IN :about ABOUT :around AROUND))

(define-category counter-cl-noun :specializes comlex-noun
     :binds
      ((BY top)
       (WITH top))
     :realization (:noun  "counter" :by BY :with WITH))

(define-category factor-cl-noun :specializes comlex-noun
     :binds
      ((INTO top))
     :realization (:noun  "factor" :into INTO))

(define-category focus-cl-noun :specializes comlex-noun
     :binds
      ((AMONG top)
       (IN top)
       (UPON top)
       (ON top))
     :realization (:noun  "focus" :among AMONG :in IN :upon UPON :on ON))

(define-category monitor-cl-noun :specializes comlex-noun
     :binds
      ((FOR top))
     :realization (:noun  "monitor" :for FOR))
